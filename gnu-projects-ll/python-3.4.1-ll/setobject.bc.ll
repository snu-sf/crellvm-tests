; ModuleID = './setobject.bc'
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
%struct._Py_atomic_address = type { i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%union._gc_head = type { %struct.anon.0 }
%struct.anon.0 = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.setiterobject = type { %struct._object, %struct._setobject*, i64, i64, i64 }
%struct._setobject = type { %struct._object, i64, i64, i64, %struct.setentry*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, i64, [8 x %struct.setentry], %struct._object* }
%struct.setentry = type { %struct._object*, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%union.anon = type { i8* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [13 x i8] c"set_iterator\00", align 1
@setiter_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.setiterobject*)* @setiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.setiterobject*)* @setiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PySetIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.setiterobject*)* @setiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.setiterobject*, i32 (%struct._object*, i8*)*, i8*)* @setiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.setiterobject*)* @setiter_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @setiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@emptyfrozenset = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@set_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_sub to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_and to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_xor to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_or to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_isub to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_iand to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_ixor to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_ior to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@set_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* @set_len, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct._setobject*, %struct._object*)* @set_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@set_doc = internal global [113 x i8] c"set() -> new empty set object\0Aset(iterable) -> new set object\0A\0ABuild an unordered collection of unique elements.\00", align 16
@set_methods = internal global [21 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_add to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @add_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_clear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @clear_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_direct_contains to %struct._object* (%struct._object*, %struct._object*)*), i32 72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @contains_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_discard to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @discard_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_difference_multi to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @difference_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_difference_update to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @difference_update_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_intersection_multi to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @intersection_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_intersection_update_multi to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @intersection_update_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_isdisjoint to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @isdisjoint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_issubset to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @issubset_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_issuperset to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @issuperset_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_pop to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @pop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_remove to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @remove_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_symmetric_difference to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @symmetric_difference_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_symmetric_difference_update to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @symmetric_difference_update_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_union to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @union_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_update to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @update_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PySet_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 200, i64 0, void (%struct._object*)* bitcast (void (%struct._setobject*)* @set_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @set_as_number, %struct.PySequenceMethods* @set_as_sequence, %struct.PyMappingMethods* null, i64 (%struct._object*)* @PyObject_HashNotImplemented, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @set_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._setobject*, i32 (%struct._object*, i8*)*, i8*)* @set_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._setobject*)* @set_clear_internal to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct._setobject*, %struct._object*, i32)* @set_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 192, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([21 x %struct.PyMethodDef], [21 x %struct.PyMethodDef]* @set_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._setobject*, %struct._object*, %struct._object*)* @set_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @set_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"frozenset\00", align 1
@frozenset_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_sub to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_and to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_xor to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_or to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@frozenset_doc = internal global [139 x i8] c"frozenset() -> empty frozenset object\0Afrozenset(iterable) -> frozenset object\0A\0ABuild an immutable unordered collection of unique elements.\00", align 16
@frozenset_methods = internal global [12 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_direct_contains to %struct._object* (%struct._object*, %struct._object*)*), i32 72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @contains_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @frozenset_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_difference_multi to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @difference_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_intersection_multi to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @intersection_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_isdisjoint to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @isdisjoint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_issubset to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @issubset_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_issuperset to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @issuperset_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_symmetric_difference to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @symmetric_difference_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._setobject*, %struct._object*)* @set_union to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @union_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyFrozenSet_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 200, i64 0, void (%struct._object*)* bitcast (void (%struct._setobject*)* @set_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @frozenset_as_number, %struct.PySequenceMethods* @set_as_sequence, %struct.PyMappingMethods* null, i64 (%struct._object*)* @frozenset_hash, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @frozenset_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._setobject*, i32 (%struct._object*, i8*)*, i8*)* @set_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._setobject*)* @set_clear_internal to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct._setobject*, %struct._object*, i32)* @set_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 192, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._setobject*)* @set_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @frozenset_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @frozenset_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Objects/setobject.c\00", align 1
@_dummy_struct = internal global %struct._object { i64 2, %struct._typeobject* @_PySetDummy_Type }, align 8
@_PySet_Dummy = global %struct._object* @_dummy_struct, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Set changed size during iteration\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"N(N)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"%s(...)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s()\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s({%U})\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"{%U}\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@PyDict_Type = external global %struct._typeobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@add_doc = internal global [80 x i8] c"Add an element to a set.\0A\0AThis has no effect if the element is already present.\00", align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear_doc = internal global [35 x i8] c"Remove all elements from this set.\00", align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"__contains__\00", align 1
@contains_doc = internal global [31 x i8] c"x.__contains__(y) <==> y in x.\00", align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@copy_doc = internal global [32 x i8] c"Return a shallow copy of a set.\00", align 16
@.str.18 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@discard_doc = internal global [93 x i8] c"Remove an element from a set if it is a member.\0A\0AIf the element is not a member, do nothing.\00", align 16
@.str.19 = private unnamed_addr constant [11 x i8] c"difference\00", align 1
@difference_doc = internal global [118 x i8] c"Return the difference of two or more sets as a new set.\0A\0A(i.e. all elements that are in this set but not the others.)\00", align 16
@.str.20 = private unnamed_addr constant [18 x i8] c"difference_update\00", align 1
@difference_update_doc = internal global [50 x i8] c"Remove all elements of another set from this set.\00", align 16
@.str.21 = private unnamed_addr constant [13 x i8] c"intersection\00", align 1
@intersection_doc = internal global [94 x i8] c"Return the intersection of two sets as a new set.\0A\0A(i.e. all elements that are in both sets.)\00", align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"intersection_update\00", align 1
@intersection_update_doc = internal global [58 x i8] c"Update a set with the intersection of itself and another.\00", align 16
@.str.23 = private unnamed_addr constant [11 x i8] c"isdisjoint\00", align 1
@isdisjoint_doc = internal global [50 x i8] c"Return True if two sets have a null intersection.\00", align 16
@.str.24 = private unnamed_addr constant [9 x i8] c"issubset\00", align 1
@issubset_doc = internal global [46 x i8] c"Report whether another set contains this set.\00", align 16
@.str.25 = private unnamed_addr constant [11 x i8] c"issuperset\00", align 1
@issuperset_doc = internal global [46 x i8] c"Report whether this set contains another set.\00", align 16
@.str.26 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop_doc = internal global [81 x i8] c"Remove and return an arbitrary set element.\0ARaises KeyError if the set is empty.\00", align 16
@.str.27 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@remove_doc = internal global [102 x i8] c"Remove an element from a set; it must be a member.\0A\0AIf the element is not a member, raise a KeyError.\00", align 16
@.str.28 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [48 x i8] c"S.__sizeof__() -> size of S in memory, in bytes\00", align 16
@.str.29 = private unnamed_addr constant [21 x i8] c"symmetric_difference\00", align 1
@symmetric_difference_doc = internal global [116 x i8] c"Return the symmetric difference of two sets as a new set.\0A\0A(i.e. all elements that are in exactly one of the sets.)\00", align 16
@.str.30 = private unnamed_addr constant [28 x i8] c"symmetric_difference_update\00", align 1
@symmetric_difference_update_doc = internal global [66 x i8] c"Update a set with the symmetric difference of itself and another.\00", align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@union_doc = internal global [84 x i8] c"Return the union of sets as a new set.\0A\0A(i.e. all elements that are in either set.)\00", align 16
@.str.32 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@update_doc = internal global [50 x i8] c"Update a set with the union of itself and others.\00", align 16
@set_reduce.PyId___dict__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %struct._object* null }, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"set()\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"frozenset()\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@PyExc_KeyError = external global %struct._object*, align 8
@.str.36 = private unnamed_addr constant [22 x i8] c"pop from an empty set\00", align 1
@_PySetDummy_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* @dummy_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @dummy_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.37 = private unnamed_addr constant [17 x i8] c"<dummy key> type\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"deallocating <dummy key>\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"<dummy key>\00", align 1

; Function Attrs: nounwind uwtable
define internal void @setiter_dealloc(%struct.setiterobject* %si) #0 {
entry:
  %si.addr = alloca %struct.setiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.setiterobject* %si, %struct.setiterobject** %si.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %0, i32 0, i32 1
  %1 = load %struct._setobject*, %struct._setobject** %si_set, align 8
  %2 = bitcast %struct._setobject* %1 to %struct._object*
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
  %11 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %12 = bitcast %struct.setiterobject* %11 to i8*
  call void @PyObject_GC_Del(i8* %12)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @setiter_traverse(%struct.setiterobject* %si, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca %struct.setiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.setiterobject* %si, %struct.setiterobject** %si.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %0, i32 0, i32 1
  %1 = load %struct._setobject*, %struct._setobject** %si_set, align 8
  %tobool = icmp ne %struct._setobject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set1 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %3, i32 0, i32 1
  %4 = load %struct._setobject*, %struct._setobject** %si_set1, align 8
  %5 = bitcast %struct._setobject* %4 to %struct._object*
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
define internal %struct._object* @setiter_iternext(%struct.setiterobject* %si) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %si.addr = alloca %struct.setiterobject*, align 8
  %key = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %mask = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %so = alloca %struct._setobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.setiterobject* %si, %struct.setiterobject** %si.addr, align 8
  %0 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %0, i32 0, i32 1
  %1 = load %struct._setobject*, %struct._setobject** %si_set, align 8
  store %struct._setobject* %1, %struct._setobject** %so, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so, align 8
  %cmp = icmp eq %struct._setobject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_used = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %3, i32 0, i32 2
  %4 = load i64, i64* %si_used, align 8
  %5 = load %struct._setobject*, %struct._setobject** %so, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %5, i32 0, i32 2
  %6 = load i64, i64* %used, align 8
  %cmp2 = icmp ne i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_used4 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %8, i32 0, i32 2
  store i64 -1, i64* %si_used4, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_pos = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %9, i32 0, i32 3
  %10 = load i64, i64* %si_pos, align 8
  store i64 %10, i64* %i, align 8
  %11 = load %struct._setobject*, %struct._setobject** %so, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %11, i32 0, i32 4
  %12 = load %struct.setentry*, %struct.setentry** %table, align 8
  store %struct.setentry* %12, %struct.setentry** %entry1, align 8
  %13 = load %struct._setobject*, %struct._setobject** %so, align 8
  %mask6 = getelementptr inbounds %struct._setobject, %struct._setobject* %13, i32 0, i32 3
  %14 = load i64, i64* %mask6, align 8
  store i64 %14, i64* %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %mask, align 8
  %cmp7 = icmp sle i64 %15, %16
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %18, i64 %17
  %key8 = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx, i32 0, i32 0
  %19 = load %struct._object*, %struct._object** %key8, align 8
  %cmp9 = icmp eq %struct._object* %19, null
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %arrayidx10 = getelementptr %struct.setentry, %struct.setentry* %21, i64 %20
  %key11 = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx10, i32 0, i32 0
  %22 = load %struct._object*, %struct._object** %key11, align 8
  %cmp12 = icmp eq %struct._object* %22, @_dummy_struct
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %cmp12, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %23, %lor.end ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load i64, i64* %i, align 8
  %add = add i64 %26, 1
  %27 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_pos13 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %27, i32 0, i32 3
  store i64 %add, i64* %si_pos13, align 8
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %mask, align 8
  %cmp14 = icmp sgt i64 %28, %29
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  br label %fail

if.end.16:                                        ; preds = %while.end
  %30 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %len = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %30, i32 0, i32 4
  %31 = load i64, i64* %len, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %len, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %arrayidx17 = getelementptr %struct.setentry, %struct.setentry* %33, i64 %32
  %key18 = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx17, i32 0, i32 0
  %34 = load %struct._object*, %struct._object** %key18, align 8
  store %struct._object* %34, %struct._object** %key, align 8
  %35 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %inc19 = add i64 %36, 1
  store i64 %inc19, i64* %ob_refcnt, align 8
  %37 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.15
  br label %do.body

do.body:                                          ; preds = %fail
  %38 = load %struct._setobject*, %struct._setobject** %so, align 8
  %39 = bitcast %struct._setobject* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %_py_decref_tmp, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %41, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %44(%struct._object* %45)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %46 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set25 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %46, i32 0, i32 1
  store %struct._setobject* null, %struct._setobject** %si_set25, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.16, %if.then.3, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define i32 @PySet_ClearFreeList() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @PySet_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @emptyfrozenset, align 8
  store %struct._object* %0, %struct._object** %_py_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @emptyfrozenset, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_dealloc(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %fill = alloca i64, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill2 = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 1
  %1 = load i64, i64* %fill2, align 8
  store i64 %1, i64* %fill, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %3 = bitcast %struct._setobject* %2 to i8*
  call void @PyObject_GC_UnTrack(i8* %3)
  br label %do.body

do.body:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %5 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %6 = bitcast %struct._Py_atomic_address* %5 to i8*
  %7 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %6, i32 %7)
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default [
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
  %9 = load i8**, i8*** %volatile_data, align 8
  %10 = load volatile i8*, i8** %9, align 8
  store i8* %10, i8** %result, align 8
  %11 = load i32, i32* %order, align 4
  switch i32 %11, label %sw.default.4 [
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.3
  ]

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.5

sw.default.4:                                     ; preds = %sw.epilog
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.default.4, %sw.bb.3
  %12 = load i8*, i8** %result, align 8
  store i8* %12, i8** %tmp
  %13 = load i8*, i8** %tmp
  %14 = bitcast i8* %13 to %struct._ts*
  store %struct._ts* %14, %struct._ts** %_tstate, align 8
  %15 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 23
  %16 = load i32, i32* %trash_delete_nesting, align 4
  %cmp = icmp slt i32 %16, 50
  br i1 %cmp, label %if.then, label %if.else.36

if.then:                                          ; preds = %sw.epilog.5
  %17 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting6 = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 23
  %18 = load i32, i32* %trash_delete_nesting6, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %trash_delete_nesting6, align 4
  %19 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %weakreflist = getelementptr inbounds %struct._setobject, %struct._setobject* %19, i32 0, i32 8
  %20 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp7 = icmp ne %struct._object* %20, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %22 = bitcast %struct._setobject* %21 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %23 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %23, i32 0, i32 4
  %24 = load %struct.setentry*, %struct.setentry** %table, align 8
  store %struct.setentry* %24, %struct.setentry** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i64, i64* %fill, align 8
  %cmp9 = icmp sgt i64 %25, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %26, i32 0, i32 0
  %27 = load %struct._object*, %struct._object** %key, align 8
  %tobool = icmp ne %struct._object* %27, null
  br i1 %tobool, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %for.body
  %28 = load i64, i64* %fill, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %fill, align 8
  %29 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key11 = getelementptr inbounds %struct.setentry, %struct.setentry* %29, i32 0, i32 0
  %30 = load %struct._object*, %struct._object** %key11, align 8
  %cmp12 = icmp ne %struct._object* %30, @_dummy_struct
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.then.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %31 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key16 = getelementptr inbounds %struct.setentry, %struct.setentry* %31, i32 0, i32 0
  %32 = load %struct._object*, %struct._object** %key16, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec17 = add i64 %34, -1
  store i64 %dec17, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.20

if.else:                                          ; preds = %do.body.14
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %if.then.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %39 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %incdec.ptr = getelementptr %struct.setentry, %struct.setentry* %39, i32 1
  store %struct.setentry* %incdec.ptr, %struct.setentry** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table23 = getelementptr inbounds %struct._setobject, %struct._setobject* %40, i32 0, i32 4
  %41 = load %struct.setentry*, %struct.setentry** %table23, align 8
  %42 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %42, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable, i32 0, i32 0
  %cmp24 = icmp ne %struct.setentry* %41, %arraydecay
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %for.end
  %43 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table26 = getelementptr inbounds %struct._setobject, %struct._setobject* %43, i32 0, i32 4
  %44 = load %struct.setentry*, %struct.setentry** %table26, align 8
  %45 = bitcast %struct.setentry* %44 to i8*
  call void @PyMem_Free(i8* %45)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %for.end
  %46 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %47 = bitcast %struct._setobject* %46 to %struct._object*
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 38
  %49 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %50 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %51 = bitcast %struct._setobject* %50 to i8*
  call void %49(i8* %51)
  %52 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting29 = getelementptr inbounds %struct._ts, %struct._ts* %52, i32 0, i32 23
  %53 = load i32, i32* %trash_delete_nesting29, align 4
  %dec30 = add i32 %53, -1
  store i32 %dec30, i32* %trash_delete_nesting29, align 4
  %54 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %54, i32 0, i32 24
  %55 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool31 = icmp ne %struct._object* %55, null
  br i1 %tobool31, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.27
  %56 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting32 = getelementptr inbounds %struct._ts, %struct._ts* %56, i32 0, i32 23
  %57 = load i32, i32* %trash_delete_nesting32, align 4
  %cmp33 = icmp sle i32 %57, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true, %if.end.27
  br label %if.end.37

if.else.36:                                       ; preds = %sw.epilog.5
  %58 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %59 = bitcast %struct._setobject* %58 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %59)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.end.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_repr(%struct._setobject* %so) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %result = alloca %struct._object*, align 8
  %keys = alloca %struct._object*, align 8
  %listrepr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %call = call i32 @Py_ReprEnter(%struct._object* %1)
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %5 = bitcast %struct._setobject* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call4 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %entry
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %8, i32 0, i32 2
  %9 = load i64, i64* %used, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = bitcast %struct._setobject* %10 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %11)
  %12 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %13 = bitcast %struct._setobject* %12 to %struct._object*
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %tp_name8, align 8
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %15)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %16 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %17 = bitcast %struct._setobject* %16 to %struct._object*
  %call11 = call %struct._object* @PySequence_List(%struct._object* %17)
  store %struct._object* %call11, %struct._object** %keys, align 8
  %18 = load %struct._object*, %struct._object** %keys, align 8
  %cmp12 = icmp eq %struct._object* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %done

if.end.14:                                        ; preds = %if.end.10
  %19 = load %struct._object*, %struct._object** %keys, align 8
  %call15 = call %struct._object* @PyObject_Repr(%struct._object* %19)
  store %struct._object* %call15, %struct._object** %listrepr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** %keys, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %27 = load %struct._object*, %struct._object** %listrepr, align 8
  %cmp21 = icmp eq %struct._object* %27, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.end
  br label %done

if.end.23:                                        ; preds = %do.end
  %28 = load %struct._object*, %struct._object** %listrepr, align 8
  %29 = load %struct._object*, %struct._object** %listrepr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 1
  %31 = load i64, i64* %length, align 8
  %sub = sub i64 %31, 1
  %call24 = call %struct._object* @PyUnicode_Substring(%struct._object* %28, i64 1, i64 %sub)
  store %struct._object* %call24, %struct._object** %tmp, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.23
  %32 = load %struct._object*, %struct._object** %listrepr, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp27, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %34, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.25
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.25
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %37(%struct._object* %38)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %39 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp37 = icmp eq %struct._object* %39, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end.36
  br label %done

if.end.39:                                        ; preds = %do.end.36
  %40 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %40, %struct._object** %listrepr, align 8
  %41 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %42 = bitcast %struct._setobject* %41 to %struct._object*
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %cmp41 = icmp ne %struct._typeobject* %43, @PySet_Type
  br i1 %cmp41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.end.39
  %44 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %45 = bitcast %struct._setobject* %44 to %struct._object*
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_name44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 1
  %47 = load i8*, i8** %tp_name44, align 8
  %48 = load %struct._object*, %struct._object** %listrepr, align 8
  %call45 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %47, %struct._object* %48)
  store %struct._object* %call45, %struct._object** %result, align 8
  br label %if.end.48

if.else.46:                                       ; preds = %if.end.39
  %49 = load %struct._object*, %struct._object** %listrepr, align 8
  %call47 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), %struct._object* %49)
  store %struct._object* %call47, %struct._object** %result, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.42
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %50 = load %struct._object*, %struct._object** %listrepr, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp51, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %52, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.49
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %55(%struct._object* %56)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %done

done:                                             ; preds = %do.end.60, %if.then.38, %if.then.22, %if.then.13
  %57 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %58 = bitcast %struct._setobject* %57 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %58)
  %59 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %59, %struct._object** %retval
  br label %return

return:                                           ; preds = %done, %if.then.6, %if.end, %if.then.3
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_traverse(%struct._setobject* %so, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %vret = alloca i32, align 4
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call i32 @set_next(%struct._setobject* %0, i64* %pos, %struct.setentry** %entry1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %key, align 8
  %tobool2 = icmp ne %struct._object* %2, null
  br i1 %tobool2, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key3 = getelementptr inbounds %struct.setentry, %struct.setentry* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %key3, align 8
  %6 = load i8*, i8** %arg.addr, align 8
  %call4 = call i32 %3(%struct._object* %5, i8* %6)
  store i32 %call4, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @set_clear_internal(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %table = alloca %struct.setentry*, align 8
  %table_is_malloced = alloca i32, align 4
  %fill = alloca i64, align 8
  %small_copy = alloca [8 x %struct.setentry], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table2 = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 4
  %1 = load %struct.setentry*, %struct.setentry** %table2, align 8
  store %struct.setentry* %1, %struct.setentry** %table, align 8
  %2 = load %struct.setentry*, %struct.setentry** %table, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable, i32 0, i32 0
  %cmp = icmp ne %struct.setentry* %2, %arraydecay
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %table_is_malloced, align 4
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill3 = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 1
  %5 = load i64, i64* %fill3, align 8
  store i64 %5, i64* %fill, align 8
  %6 = load i32, i32* %table_is_malloced, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  call void @set_empty_to_minsize(%struct._setobject* %7)
  br label %if.end.8

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %fill, align 8
  %cmp4 = icmp sgt i64 %8, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %9 = bitcast [8 x %struct.setentry]* %small_copy to i8*
  %10 = load %struct.setentry*, %struct.setentry** %table, align 8
  %11 = bitcast %struct.setentry* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 128, i32 8, i1 false)
  %arraydecay7 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %small_copy, i32 0, i32 0
  store %struct.setentry* %arraydecay7, %struct.setentry** %table, align 8
  %12 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  call void @set_empty_to_minsize(%struct._setobject* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load %struct.setentry*, %struct.setentry** %table, align 8
  store %struct.setentry* %13, %struct.setentry** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %14 = load i64, i64* %fill, align 8
  %cmp9 = icmp sgt i64 %14, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %15, i32 0, i32 0
  %16 = load %struct._object*, %struct._object** %key, align 8
  %tobool11 = icmp ne %struct._object* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %for.body
  %17 = load i64, i64* %fill, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %fill, align 8
  %18 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key13 = getelementptr inbounds %struct.setentry, %struct.setentry* %18, i32 0, i32 0
  %19 = load %struct._object*, %struct._object** %key13, align 8
  %cmp14 = icmp ne %struct._object* %19, @_dummy_struct
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.then.12
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %20 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key17 = getelementptr inbounds %struct.setentry, %struct.setentry* %20, i32 0, i32 0
  %21 = load %struct._object*, %struct._object** %key17, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec18 = add i64 %23, -1
  store i64 %dec18, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else.22:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %28 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %incdec.ptr = getelementptr %struct.setentry, %struct.setentry* %28, i32 1
  store %struct.setentry* %incdec.ptr, %struct.setentry** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %table_is_malloced, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.end
  %30 = load %struct.setentry*, %struct.setentry** %table, align 8
  %31 = bitcast %struct.setentry* %30 to i8*
  call void @PyMem_Free(i8* %31)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_richcompare(%struct._setobject* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._setobject*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %r1 = alloca %struct._object*, align 8
  %r2 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %v, %struct._setobject** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %9 = load i32, i32* %op.addr, align 4
  switch i32 %9, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.25
    i32 1, label %sw.bb.37
    i32 5, label %sw.bb.39
    i32 0, label %sw.bb.41
    i32 4, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %10, i32 0, i32 2
  %11 = load i64, i64* %used, align 8
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct._setobject*
  %used9 = getelementptr inbounds %struct._setobject, %struct._setobject* %13, i32 0, i32 2
  %14 = load i64, i64* %used9, align 8
  %cmp10 = icmp ne i64 %11, %14
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %sw.bb
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc12 = add i64 %15, 1
  store i64 %inc12, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %sw.bb
  %16 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %hash = getelementptr inbounds %struct._setobject, %struct._setobject* %16, i32 0, i32 6
  %17 = load i64, i64* %hash, align 8
  %cmp14 = icmp ne i64 %17, -1
  br i1 %cmp14, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.13
  %18 = load %struct._object*, %struct._object** %w.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct._setobject*
  %hash15 = getelementptr inbounds %struct._setobject, %struct._setobject* %19, i32 0, i32 6
  %20 = load i64, i64* %hash15, align 8
  %cmp16 = icmp ne i64 %20, -1
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %21 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %hash18 = getelementptr inbounds %struct._setobject, %struct._setobject* %21, i32 0, i32 6
  %22 = load i64, i64* %hash18, align 8
  %23 = load %struct._object*, %struct._object** %w.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._setobject*
  %hash19 = getelementptr inbounds %struct._setobject, %struct._setobject* %24, i32 0, i32 6
  %25 = load i64, i64* %hash19, align 8
  %cmp20 = icmp ne i64 %22, %25
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.17
  %26 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc22 = add i64 %26, 1
  store i64 %inc22, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.17, %land.lhs.true, %if.end.13
  %27 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %28 = load %struct._object*, %struct._object** %w.addr, align 8
  %call24 = call %struct._object* @set_issubset(%struct._setobject* %27, %struct._object* %28)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end
  %29 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %30 = load %struct._object*, %struct._object** %w.addr, align 8
  %call26 = call %struct._object* @set_richcompare(%struct._setobject* %29, %struct._object* %30, i32 2)
  store %struct._object* %call26, %struct._object** %r1, align 8
  %31 = load %struct._object*, %struct._object** %r1, align 8
  %cmp27 = icmp eq %struct._object* %31, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.25
  %32 = load %struct._object*, %struct._object** %r1, align 8
  %call30 = call i32 @PyObject_Not(%struct._object* %32)
  %conv = sext i32 %call30 to i64
  %call31 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call31, %struct._object** %r2, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %33 = load %struct._object*, %struct._object** %r1, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.body
  br label %if.end.36

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  %40 = load %struct._object*, %struct._object** %r2, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

sw.bb.37:                                         ; preds = %if.end
  %41 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  %call38 = call %struct._object* @set_issubset(%struct._setobject* %41, %struct._object* %42)
  store %struct._object* %call38, %struct._object** %retval
  br label %return

sw.bb.39:                                         ; preds = %if.end
  %43 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %44 = load %struct._object*, %struct._object** %w.addr, align 8
  %call40 = call %struct._object* @set_issuperset(%struct._setobject* %43, %struct._object* %44)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

sw.bb.41:                                         ; preds = %if.end
  %45 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %used42 = getelementptr inbounds %struct._setobject, %struct._setobject* %45, i32 0, i32 2
  %46 = load i64, i64* %used42, align 8
  %47 = load %struct._object*, %struct._object** %w.addr, align 8
  %48 = bitcast %struct._object* %47 to %struct._setobject*
  %used43 = getelementptr inbounds %struct._setobject, %struct._setobject* %48, i32 0, i32 2
  %49 = load i64, i64* %used43, align 8
  %cmp44 = icmp sge i64 %46, %49
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %sw.bb.41
  %50 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc47 = add i64 %50, 1
  store i64 %inc47, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %sw.bb.41
  %51 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %52 = load %struct._object*, %struct._object** %w.addr, align 8
  %call49 = call %struct._object* @set_issubset(%struct._setobject* %51, %struct._object* %52)
  store %struct._object* %call49, %struct._object** %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end
  %53 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %used51 = getelementptr inbounds %struct._setobject, %struct._setobject* %53, i32 0, i32 2
  %54 = load i64, i64* %used51, align 8
  %55 = load %struct._object*, %struct._object** %w.addr, align 8
  %56 = bitcast %struct._object* %55 to %struct._setobject*
  %used52 = getelementptr inbounds %struct._setobject, %struct._setobject* %56, i32 0, i32 2
  %57 = load i64, i64* %used52, align 8
  %cmp53 = icmp sle i64 %54, %57
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %sw.bb.50
  %58 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc56 = add i64 %58, 1
  store i64 %inc56, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %sw.bb.50
  %59 = load %struct._setobject*, %struct._setobject** %v.addr, align 8
  %60 = load %struct._object*, %struct._object** %w.addr, align 8
  %call58 = call %struct._object* @set_issuperset(%struct._setobject* %59, %struct._object* %60)
  store %struct._object* %call58, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  %61 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc59 = add i64 %61, 1
  store i64 %inc59, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.57, %if.then.55, %if.end.48, %if.then.46, %sw.bb.39, %sw.bb.37, %do.end, %if.then.28, %if.end.23, %if.then.21, %if.then.11, %if.then
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_iter(%struct._setobject* %so) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %si = alloca %struct.setiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PySetIter_Type)
  %0 = bitcast %struct._object* %call to %struct.setiterobject*
  store %struct.setiterobject* %0, %struct.setiterobject** %si, align 8
  %1 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %cmp = icmp eq %struct.setiterobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %3 = bitcast %struct._setobject* %2 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %6 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %si_set = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %6, i32 0, i32 1
  store %struct._setobject* %5, %struct._setobject** %si_set, align 8
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 2
  %8 = load i64, i64* %used, align 8
  %9 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %si_used = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %9, i32 0, i32 2
  store i64 %8, i64* %si_used, align 8
  %10 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %si_pos = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %10, i32 0, i32 3
  store i64 0, i64* %si_pos, align 8
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used1 = getelementptr inbounds %struct._setobject, %struct._setobject* %11, i32 0, i32 2
  %12 = load i64, i64* %used1, align 8
  %13 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %len = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %13, i32 0, i32 4
  store i64 %12, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %15 = bitcast %struct.setiterobject* %14 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %15, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %16 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %17 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %17, 1
  %cmp2 = icmp ne i64 %shr, -2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #6
  unreachable

if.end.4:                                         ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc6 = bitcast %union._gc_head* %18 to %struct.anon.0*
  %gc_refs7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 2
  %19 = load i64, i64* %gc_refs7, align 8
  %and = and i64 %19, 1
  %or = or i64 %and, -6
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %20 to %struct.anon.0*
  %gc_refs9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 2
  store i64 %or, i64* %gc_refs9, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.5
  %21 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %22 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  store %union._gc_head* %21, %union._gc_head** %gc_next, align 8
  %23 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc11 = bitcast %union._gc_head* %23 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc11, i32 0, i32 1
  %24 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %25 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %24, %union._gc_head** %gc_prev13, align 8
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %27 to %struct.anon.0*
  %gc_prev15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 1
  %28 = load %union._gc_head*, %union._gc_head** %gc_prev15, align 8
  %gc16 = bitcast %union._gc_head* %28 to %struct.anon.0*
  %gc_next17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc16, i32 0, i32 0
  store %union._gc_head* %26, %union._gc_head** %gc_next17, align 8
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %30 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc18 = bitcast %union._gc_head* %30 to %struct.anon.0*
  %gc_prev19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc18, i32 0, i32 1
  store %union._gc_head* %29, %union._gc_head** %gc_prev19, align 8
  br label %do.end.20

do.end.20:                                        ; preds = %do.end
  %31 = load %struct.setiterobject*, %struct.setiterobject** %si, align 8
  %32 = bitcast %struct.setiterobject* %31 to %struct._object*
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal i32 @set_init(%struct._setobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  store %struct._setobject* %self, %struct._setobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %iterable, align 8
  %0 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %10 = bitcast %struct._setobject* %9 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %13 = bitcast %struct._setobject* %12 to %struct._object*
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %14, @PySet_Type
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end
  %15 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %16 = bitcast %struct._setobject* %15 to %struct._object*
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %call13 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PySet_Type)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false.11, %if.end
  %18 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call15 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._object* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true, %lor.lhs.false.11
  %19 = load %struct._object*, %struct._object** %args.addr, align 8
  %20 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %21 = bitcast %struct._setobject* %20 to %struct._object*
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 1
  %23 = load i8*, i8** %tp_name, align 8
  %call20 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %19, i8* %23, i64 0, i64 1, %struct._object** %iterable)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %24 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %call24 = call i32 @set_clear_internal(%struct._setobject* %24)
  %25 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %hash = getelementptr inbounds %struct._setobject, %struct._setobject* %25, i32 0, i32 6
  store i64 -1, i64* %hash, align 8
  %26 = load %struct._object*, %struct._object** %iterable, align 8
  %cmp25 = icmp eq %struct._object* %26, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %27 = load %struct._setobject*, %struct._setobject** %self.addr, align 8
  %28 = load %struct._object*, %struct._object** %iterable, align 8
  %call28 = call i32 @set_update_internal(%struct._setobject* %27, %struct._object* %28)
  store i32 %call28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.22, %if.then.17, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @PySet_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* @make_new_set(%struct._typeobject* %2, %struct._object* null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @frozenset_hash(%struct._object* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct._object*, align 8
  %so = alloca %struct._setobject*, align 8
  %h = alloca i64, align 8
  %hash = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %pos = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._setobject*
  store %struct._setobject* %1, %struct._setobject** %so, align 8
  store i64 1927868237, i64* %hash, align 8
  store i64 0, i64* %pos, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so, align 8
  %hash2 = getelementptr inbounds %struct._setobject, %struct._setobject* %2, i32 0, i32 6
  %3 = load i64, i64* %hash2, align 8
  %cmp = icmp ne i64 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._setobject*, %struct._setobject** %so, align 8
  %hash3 = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 6
  %5 = load i64, i64* %hash3, align 8
  store i64 %5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._setobject*
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 2
  %8 = load i64, i64* %used, align 8
  %add = add i64 %8, 1
  %9 = load i64, i64* %hash, align 8
  %mul = mul i64 %9, %add
  store i64 %mul, i64* %hash, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct._setobject*, %struct._setobject** %so, align 8
  %call = call i32 @set_next(%struct._setobject* %10, i64* %pos, %struct.setentry** %entry1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash4 = getelementptr inbounds %struct.setentry, %struct.setentry* %11, i32 0, i32 1
  %12 = load i64, i64* %hash4, align 8
  store i64 %12, i64* %h, align 8
  %13 = load i64, i64* %h, align 8
  %xor = xor i64 %13, 89869747
  %14 = load i64, i64* %h, align 8
  %shl = shl i64 %14, 16
  %xor5 = xor i64 %xor, %shl
  %mul6 = mul i64 %xor5, 3644798167
  %15 = load i64, i64* %hash, align 8
  %xor7 = xor i64 %15, %mul6
  store i64 %xor7, i64* %hash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %hash, align 8
  %mul8 = mul i64 %16, 69069
  %add9 = add i64 %mul8, 907133923
  store i64 %add9, i64* %hash, align 8
  %17 = load i64, i64* %hash, align 8
  %cmp10 = icmp eq i64 %17, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end
  store i64 590923713, i64* %hash, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %while.end
  %18 = load i64, i64* %hash, align 8
  %19 = load %struct._setobject*, %struct._setobject** %so, align 8
  %hash13 = getelementptr inbounds %struct._setobject, %struct._setobject* %19, i32 0, i32 6
  store i64 %18, i64* %hash13, align 8
  %20 = load i64, i64* %hash, align 8
  store i64 %20, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %21 = load i64, i64* %retval
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @frozenset_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %iterable, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @PyFrozenSet_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* %4, i64 0, i64 1, %struct._object** %iterable)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp5 = icmp ne %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %7 = load %struct._object*, %struct._object** %iterable, align 8
  %call7 = call %struct._object* @make_new_set(%struct._typeobject* %6, %struct._object* %7)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %iterable, align 8
  %cmp9 = icmp ne %struct._object* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %iterable, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp11 = icmp eq %struct._typeobject* %10, @PyFrozenSet_Type
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %11 = load %struct._object*, %struct._object** %iterable, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load %struct._object*, %struct._object** %iterable, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  %14 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %15 = load %struct._object*, %struct._object** %iterable, align 8
  %call14 = call %struct._object* @make_new_set(%struct._typeobject* %14, %struct._object* %15)
  store %struct._object* %call14, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp15 = icmp eq %struct._object* %16, null
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %result, align 8
  %18 = bitcast %struct._object* %17 to %struct._setobject*
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %18, i32 0, i32 2
  %19 = load i64, i64* %used, align 8
  %tobool16 = icmp ne i64 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.13
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt19, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %if.end.8
  %28 = load %struct._object*, %struct._object** @emptyfrozenset, align 8
  %cmp25 = icmp eq %struct._object* %28, null
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %29 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call27 = call %struct._object* @make_new_set(%struct._typeobject* %29, %struct._object* null)
  store %struct._object* %call27, %struct._object** @emptyfrozenset, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.28
  %30 = load %struct._object*, %struct._object** @emptyfrozenset, align 8
  store %struct._object* %30, %struct._object** %_py_xincref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %31, null
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.body.29
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %33, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.body.29
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %34 = load %struct._object*, %struct._object** @emptyfrozenset, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.35, %if.then.17, %if.then.12, %if.then.6, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySet_New(%struct._object* %iterable) #0 {
entry:
  %iterable.addr = alloca %struct._object*, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @make_new_set(%struct._typeobject* @PySet_Type, %struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_new_set(%struct._typeobject* %type, %struct._object* %iterable) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  %so = alloca %struct._setobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  store %struct._setobject* null, %struct._setobject** %so, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct._setobject*
  store %struct._setobject* %3, %struct._setobject** %so, align 8
  %4 = load %struct._setobject*, %struct._setobject** %so, align 8
  %cmp = icmp eq %struct._setobject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._setobject*, %struct._setobject** %so, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %5, i32 0, i32 1
  store i64 0, i64* %fill, align 8
  %6 = load %struct._setobject*, %struct._setobject** %so, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %6, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %7 = load %struct._setobject*, %struct._setobject** %so, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 3
  store i64 7, i64* %mask, align 8
  %8 = load %struct._setobject*, %struct._setobject** %so, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %8, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable, i32 0, i32 0
  %9 = load %struct._setobject*, %struct._setobject** %so, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %9, i32 0, i32 4
  store %struct.setentry* %arraydecay, %struct.setentry** %table, align 8
  %10 = load %struct._setobject*, %struct._setobject** %so, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %10, i32 0, i32 5
  store %struct.setentry* (%struct._setobject*, %struct._object*, i64)* @set_lookkey_unicode, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %11 = load %struct._setobject*, %struct._setobject** %so, align 8
  %hash = getelementptr inbounds %struct._setobject, %struct._setobject* %11, i32 0, i32 6
  store i64 -1, i64* %hash, align 8
  %12 = load %struct._setobject*, %struct._setobject** %so, align 8
  %weakreflist = getelementptr inbounds %struct._setobject, %struct._setobject* %12, i32 0, i32 8
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %13 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %cmp1 = icmp ne %struct._object* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %14 = load %struct._setobject*, %struct._setobject** %so, align 8
  %15 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call3 = call i32 @set_update_internal(%struct._setobject* %14, %struct._object* %15)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %16 = load %struct._setobject*, %struct._setobject** %so, align 8
  %17 = bitcast %struct._setobject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %24 = load %struct._setobject*, %struct._setobject** %so, align 8
  %25 = bitcast %struct._setobject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %do.end, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFrozenSet_New(%struct._object* %iterable) #0 {
entry:
  %iterable.addr = alloca %struct._object*, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @make_new_set(%struct._typeobject* @PyFrozenSet_Type, %struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i64 @PySet_Size(%struct._object* %anyset) #0 {
entry:
  %retval = alloca i64, align 8
  %anyset.addr = alloca %struct._object*, align 8
  store %struct._object* %anyset, %struct._object** %anyset.addr, align 8
  %0 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2275)
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct._setobject*
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %9, i32 0, i32 2
  %10 = load i64, i64* %used, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PySet_Clear(%struct._object* %set) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca %struct._object*, align 8
  store %struct._object* %set, %struct._object** %set.addr, align 8
  %0 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2285)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %set.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._setobject*
  %call2 = call i32 @set_clear_internal(%struct._setobject* %5)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @PySet_Contains(%struct._object* %anyset, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %anyset.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct._object* %anyset, %struct._object** %anyset.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2295)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct._setobject*
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %call9 = call i32 @set_contains_key(%struct._setobject* %9, %struct._object* %10)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @set_contains_key(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyUnicode_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %hash2 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 2
  %4 = load i64, i64* %hash2, align 8
  store i64 %4, i64* %hash, align 8
  %cmp3 = icmp eq i64 %4, -1
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %5)
  store i64 %call, i64* %hash, align 8
  %6 = load i64, i64* %hash, align 8
  %cmp4 = icmp eq i64 %6, -1
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %lor.lhs.false
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 5
  %8 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load i64, i64* %hash, align 8
  %call7 = call %struct.setentry* %8(%struct._setobject* %9, %struct._object* %10, i64 %11)
  store %struct.setentry* %call7, %struct.setentry** %entry1, align 8
  %12 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %cmp8 = icmp eq %struct.setentry* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %13 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key11 = getelementptr inbounds %struct.setentry, %struct.setentry* %13, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %key11, align 8
  store %struct._object* %14, %struct._object** %key.addr, align 8
  %15 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp12 = icmp ne %struct._object* %15, null
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp13 = icmp ne %struct._object* %16, @_dummy_struct
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.10
  %17 = phi i1 [ false, %if.end.10 ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.9, %if.then.5
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @PySet_Discard(%struct._object* %set, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct._object* %set, %struct._object** %set.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2305)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %set.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._setobject*
  %6 = load %struct._object*, %struct._object** %key.addr, align 8
  %call2 = call i32 @set_discard_key(%struct._setobject* %5, %struct._object* %6)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @set_discard_key(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %old_key = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyUnicode_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %hash2 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 2
  %4 = load i64, i64* %hash2, align 8
  store i64 %4, i64* %hash, align 8
  %cmp3 = icmp eq i64 %4, -1
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %5)
  store i64 %call, i64* %hash, align 8
  %6 = load i64, i64* %hash, align 8
  %cmp4 = icmp eq i64 %6, -1
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %lor.lhs.false
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 5
  %8 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load i64, i64* %hash, align 8
  %call7 = call %struct.setentry* %8(%struct._setobject* %9, %struct._object* %10, i64 %11)
  store %struct.setentry* %call7, %struct.setentry** %entry1, align 8
  %12 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %cmp8 = icmp eq %struct.setentry* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %13 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key11 = getelementptr inbounds %struct.setentry, %struct.setentry* %13, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %key11, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.10
  %15 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key14 = getelementptr inbounds %struct.setentry, %struct.setentry* %15, i32 0, i32 0
  %16 = load %struct._object*, %struct._object** %key14, align 8
  %cmp15 = icmp eq %struct._object* %16, @_dummy_struct
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.13
  %17 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key18 = getelementptr inbounds %struct.setentry, %struct.setentry* %17, i32 0, i32 0
  %18 = load %struct._object*, %struct._object** %key18, align 8
  store %struct._object* %18, %struct._object** %old_key, align 8
  %19 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key19 = getelementptr inbounds %struct.setentry, %struct.setentry* %19, i32 0, i32 0
  store %struct._object* @_dummy_struct, %struct._object** %key19, align 8
  %20 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %20, i32 0, i32 2
  %21 = load i64, i64* %used, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %used, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %old_key, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec20 = add i64 %24, -1
  store i64 %dec20, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.16, %if.then.9, %if.then.5
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @PySet_Add(%struct._object* %anyset, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %anyset.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct._object* %anyset, %struct._object** %anyset.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp3, label %lor.lhs.false.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call6 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4, %land.lhs.true
  %8 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %9, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false.4
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2316)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8, %lor.lhs.false, %entry
  %10 = load %struct._object*, %struct._object** %anyset.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._setobject*
  %12 = load %struct._object*, %struct._object** %key.addr, align 8
  %call10 = call i32 @set_add_key(%struct._setobject* %11, %struct._object* %12)
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @set_add_key(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %n_used = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
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
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %lor.lhs.false
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 2
  %8 = load i64, i64* %used, align 8
  store i64 %8, i64* %n_used, align 8
  %9 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %12 = load %struct._object*, %struct._object** %key.addr, align 8
  %13 = load i64, i64* %hash, align 8
  %call6 = call i32 @set_insert_key(%struct._setobject* %11, %struct._object* %12, i64 %13)
  %cmp7 = icmp eq i32 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %14 = load %struct._object*, %struct._object** %key.addr, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used15 = getelementptr inbounds %struct._setobject, %struct._setobject* %21, i32 0, i32 2
  %22 = load i64, i64* %used15, align 8
  %23 = load i64, i64* %n_used, align 8
  %cmp16 = icmp sgt i64 %22, %23
  br i1 %cmp16, label %land.lhs.true, label %if.then.19

land.lhs.true:                                    ; preds = %if.end.14
  %24 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %24, i32 0, i32 1
  %25 = load i64, i64* %fill, align 8
  %mul = mul i64 %25, 3
  %26 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %26, i32 0, i32 3
  %27 = load i64, i64* %mask, align 8
  %add = add i64 %27, 1
  %mul17 = mul i64 %add, 2
  %cmp18 = icmp sge i64 %mul, %mul17
  br i1 %cmp18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true, %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true
  %28 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %29 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used21 = getelementptr inbounds %struct._setobject, %struct._setobject* %29, i32 0, i32 2
  %30 = load i64, i64* %used21, align 8
  %cmp22 = icmp sgt i64 %30, 50000
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %31 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used23 = getelementptr inbounds %struct._setobject, %struct._setobject* %31, i32 0, i32 2
  %32 = load i64, i64* %used23, align 8
  %mul24 = mul i64 %32, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %33 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used25 = getelementptr inbounds %struct._setobject, %struct._setobject* %33, i32 0, i32 2
  %34 = load i64, i64* %used25, align 8
  %mul26 = mul i64 %34, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul24, %cond.true ], [ %mul26, %cond.false ]
  %call27 = call i32 @set_table_resize(%struct._setobject* %28, i64 %cond)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.19, %do.end, %if.then.4
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @_PySet_NextEntry(%struct._object* %set, i64* %pos, %struct._object** %key, i64* %hash) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca %struct._object*, align 8
  %pos.addr = alloca i64*, align 8
  %key.addr = alloca %struct._object**, align 8
  %hash.addr = alloca i64*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  store %struct._object* %set, %struct._object** %set.addr, align 8
  store i64* %pos, i64** %pos.addr, align 8
  store %struct._object** %key, %struct._object*** %key.addr, align 8
  store i64* %hash, i64** %hash.addr, align 8
  %0 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp3, label %if.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %call8 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.6
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2328)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** %set.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct._setobject*
  %10 = load i64*, i64** %pos.addr, align 8
  %call10 = call i32 @set_next(%struct._setobject* %9, i64* %10, %struct.setentry** %entry1)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %11 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key14 = getelementptr inbounds %struct.setentry, %struct.setentry* %11, i32 0, i32 0
  %12 = load %struct._object*, %struct._object** %key14, align 8
  %13 = load %struct._object**, %struct._object*** %key.addr, align 8
  store %struct._object* %12, %struct._object** %13, align 8
  %14 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash15 = getelementptr inbounds %struct.setentry, %struct.setentry* %14, i32 0, i32 1
  %15 = load i64, i64* %hash15, align 8
  %16 = load i64*, i64** %hash.addr, align 8
  store i64 %15, i64* %16, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @set_next(%struct._setobject* %so, i64* %pos_ptr, %struct.setentry** %entry_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %pos_ptr.addr = alloca i64*, align 8
  %entry_ptr.addr = alloca %struct.setentry**, align 8
  %i = alloca i64, align 8
  %mask = alloca i64, align 8
  %table = alloca %struct.setentry*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store i64* %pos_ptr, i64** %pos_ptr.addr, align 8
  store %struct.setentry** %entry_ptr, %struct.setentry*** %entry_ptr.addr, align 8
  %0 = load i64*, i64** %pos_ptr.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %i, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table1 = getelementptr inbounds %struct._setobject, %struct._setobject* %2, i32 0, i32 4
  %3 = load %struct.setentry*, %struct.setentry** %table1, align 8
  store %struct.setentry* %3, %struct.setentry** %table, align 8
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask2 = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 3
  %5 = load i64, i64* %mask2, align 8
  store i64 %5, i64* %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %mask, align 8
  %cmp = icmp sle i64 %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %9, i64 %8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx, i32 0, i32 0
  %10 = load %struct._object*, %struct._object** %key, align 8
  %cmp3 = icmp eq %struct._object* %10, null
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx4 = getelementptr %struct.setentry, %struct.setentry* %12, i64 %11
  %key5 = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx4, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %key5, align 8
  %cmp6 = icmp eq %struct._object* %13, @_dummy_struct
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %14, %lor.end ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i64, i64* %i, align 8
  %add = add i64 %17, 1
  %18 = load i64*, i64** %pos_ptr.addr, align 8
  store i64 %add, i64* %18, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %mask, align 8
  %cmp7 = icmp sgt i64 %19, %20
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx8 = getelementptr %struct.setentry, %struct.setentry* %22, i64 %21
  %23 = load %struct.setentry**, %struct.setentry*** %entry_ptr.addr, align 8
  store %struct.setentry* %arrayidx8, %struct.setentry** %23, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define %struct._object* @PySet_Pop(%struct._object* %set) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %set.addr = alloca %struct._object*, align 8
  store %struct._object* %set, %struct._object** %set.addr, align 8
  %0 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2342)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %set.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._setobject*
  %call2 = call %struct._object* @set_pop(%struct._setobject* %5)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_pop(%struct._setobject* %so) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %i = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %key = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 2
  %1 = load i64, i64* %used, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 4
  %4 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %4, i64 0
  store %struct.setentry* %arrayidx, %struct.setentry** %entry1, align 8
  %5 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key2 = getelementptr inbounds %struct.setentry, %struct.setentry* %5, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %key2, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key4 = getelementptr inbounds %struct.setentry, %struct.setentry* %7, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %key4, align 8
  %cmp5 = icmp eq %struct._object* %8, @_dummy_struct
  br i1 %cmp5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash = getelementptr inbounds %struct.setentry, %struct.setentry* %9, i32 0, i32 1
  %10 = load i64, i64* %hash, align 8
  store i64 %10, i64* %i, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %12, i32 0, i32 3
  %13 = load i64, i64* %mask, align 8
  %cmp7 = icmp sgt i64 %11, %13
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.then.6
  %14 = load i64, i64* %i, align 8
  %cmp9 = icmp slt i64 %14, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.8, %if.then.6
  store i64 1, i64* %i, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %lor.lhs.false.8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.11
  %15 = load i64, i64* %i, align 8
  %16 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table12 = getelementptr inbounds %struct._setobject, %struct._setobject* %16, i32 0, i32 4
  %17 = load %struct.setentry*, %struct.setentry** %table12, align 8
  %arrayidx13 = getelementptr %struct.setentry, %struct.setentry* %17, i64 %15
  store %struct.setentry* %arrayidx13, %struct.setentry** %entry1, align 8
  %key14 = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx13, i32 0, i32 0
  %18 = load %struct._object*, %struct._object** %key14, align 8
  %cmp15 = icmp eq %struct._object* %18, null
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %19 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key16 = getelementptr inbounds %struct.setentry, %struct.setentry* %19, i32 0, i32 0
  %20 = load %struct._object*, %struct._object** %key16, align 8
  %cmp17 = icmp eq %struct._object* %20, @_dummy_struct
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %21 = phi i1 [ true, %while.cond ], [ %cmp17, %lor.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  %23 = load i64, i64* %i, align 8
  %24 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask18 = getelementptr inbounds %struct._setobject, %struct._setobject* %24, i32 0, i32 3
  %25 = load i64, i64* %mask18, align 8
  %cmp19 = icmp sgt i64 %23, %25
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  store i64 1, i64* %i, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %if.end.22

if.end.22:                                        ; preds = %while.end, %lor.lhs.false
  %26 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key23 = getelementptr inbounds %struct.setentry, %struct.setentry* %26, i32 0, i32 0
  %27 = load %struct._object*, %struct._object** %key23, align 8
  store %struct._object* %27, %struct._object** %key, align 8
  %28 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key24 = getelementptr inbounds %struct.setentry, %struct.setentry* %28, i32 0, i32 0
  store %struct._object* @_dummy_struct, %struct._object** %key24, align 8
  %29 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used25 = getelementptr inbounds %struct._setobject, %struct._setobject* %29, i32 0, i32 2
  %30 = load i64, i64* %used25, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %used25, align 8
  %31 = load i64, i64* %i, align 8
  %add = add i64 %31, 1
  %32 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table26 = getelementptr inbounds %struct._setobject, %struct._setobject* %32, i32 0, i32 4
  %33 = load %struct.setentry*, %struct.setentry** %table26, align 8
  %arrayidx27 = getelementptr %struct.setentry, %struct.setentry* %33, i64 0
  %hash28 = getelementptr inbounds %struct.setentry, %struct.setentry* %arrayidx27, i32 0, i32 1
  store i64 %add, i64* %hash28, align 8
  %34 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define i32 @_PySet_Update(%struct._object* %set, %struct._object* %iterable) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca %struct._object*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  store %struct._object* %set, %struct._object** %set.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %set.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 2352)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %set.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._setobject*
  %6 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call2 = call i32 @set_update_internal(%struct._setobject* %5, %struct._object* %6)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @set_update_internal(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %hash = alloca i64, align 8
  %dictsize = alloca i64, align 8
  %an_entry = alloca %struct.setentry, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %call9 = call i32 @set_merge(%struct._setobject* %8, %struct._object* %9)
  store i32 %call9, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %11, @PyDict_Type
  br i1 %cmp11, label %if.then.12, label %if.end.36

if.then.12:                                       ; preds = %if.end
  store i64 0, i64* %pos, align 8
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %call13 = call i64 @PyDict_Size(%struct._object* %12)
  store i64 %call13, i64* %dictsize, align 8
  %13 = load i64, i64* %dictsize, align 8
  %cmp14 = icmp eq i64 %13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %14, i32 0, i32 1
  %15 = load i64, i64* %fill, align 8
  %16 = load i64, i64* %dictsize, align 8
  %add = add i64 %15, %16
  %mul = mul i64 %add, 3
  %17 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %17, i32 0, i32 3
  %18 = load i64, i64* %mask, align 8
  %add17 = add i64 %18, 1
  %mul18 = mul i64 %add17, 2
  %cmp19 = icmp sge i64 %mul, %mul18
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.16
  %19 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %20 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %20, i32 0, i32 2
  %21 = load i64, i64* %used, align 8
  %22 = load i64, i64* %dictsize, align 8
  %add21 = add i64 %21, %22
  %mul22 = mul i64 %add21, 2
  %call23 = call i32 @set_table_resize(%struct._setobject* %19, i64 %mul22)
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.20
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end.27
  %23 = load %struct._object*, %struct._object** %other.addr, align 8
  %call28 = call i32 @_PyDict_Next(%struct._object* %23, i64* %pos, %struct._object** %key, %struct._object** %value, i64* %hash)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i64, i64* %hash, align 8
  %hash30 = getelementptr inbounds %struct.setentry, %struct.setentry* %an_entry, i32 0, i32 1
  store i64 %24, i64* %hash30, align 8
  %25 = load %struct._object*, %struct._object** %key, align 8
  %key31 = getelementptr inbounds %struct.setentry, %struct.setentry* %an_entry, i32 0, i32 0
  store %struct._object* %25, %struct._object** %key31, align 8
  %26 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call32 = call i32 @set_add_entry(%struct._setobject* %26, %struct.setentry* %an_entry)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end
  %27 = load %struct._object*, %struct._object** %other.addr, align 8
  %call37 = call %struct._object* @PyObject_GetIter(%struct._object* %27)
  store %struct._object* %call37, %struct._object** %it, align 8
  %28 = load %struct._object*, %struct._object** %it, align 8
  %cmp38 = icmp eq %struct._object* %28, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  br label %while.cond.41

while.cond.41:                                    ; preds = %do.end.74, %if.end.40
  %29 = load %struct._object*, %struct._object** %it, align 8
  %call42 = call %struct._object* @PyIter_Next(%struct._object* %29)
  store %struct._object* %call42, %struct._object** %key, align 8
  %cmp43 = icmp ne %struct._object* %call42, null
  br i1 %cmp43, label %while.body.44, label %while.end.75

while.body.44:                                    ; preds = %while.cond.41
  %30 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %31 = load %struct._object*, %struct._object** %key, align 8
  %call45 = call i32 @set_add_key(%struct._setobject* %30, %struct._object* %31)
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %if.then.47, label %if.end.63

if.then.47:                                       ; preds = %while.body.44
  br label %do.body

do.body:                                          ; preds = %if.then.47
  %32 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp48 = icmp ne i64 %dec, 0
  br i1 %cmp48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %do.body
  br label %if.end.51

if.else:                                          ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.49
  br label %do.end

do.end:                                           ; preds = %if.end.51
  br label %do.body.52

do.body.52:                                       ; preds = %do.end
  %39 = load %struct._object*, %struct._object** %key, align 8
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
  store i32 -1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %while.body.44
  br label %do.body.64

do.body.64:                                       ; preds = %if.end.63
  %46 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp65, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %48, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %51(%struct._object* %52)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %while.cond.41

while.end.75:                                     ; preds = %while.cond.41
  br label %do.body.76

do.body.76:                                       ; preds = %while.end.75
  %53 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp77, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %55, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %58(%struct._object* %59)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %call87 = call %struct._object* @PyErr_Occurred()
  %tobool88 = icmp ne %struct._object* %call87, null
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %do.end.86
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %do.end.86
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.89, %do.end.62, %if.then.39, %while.end, %if.then.34, %if.then.25, %if.then.15, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @setiter_len(%struct.setiterobject* %si) #0 {
entry:
  %si.addr = alloca %struct.setiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.setiterobject* %si, %struct.setiterobject** %si.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %0, i32 0, i32 1
  %1 = load %struct._setobject*, %struct._setobject** %si_set, align 8
  %cmp = icmp ne %struct._setobject* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_used = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %2, i32 0, i32 2
  %3 = load i64, i64* %si_used, align 8
  %4 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %si_set1 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %4, i32 0, i32 1
  %5 = load %struct._setobject*, %struct._setobject** %si_set1, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %5, i32 0, i32 2
  %6 = load i64, i64* %used, align 8
  %cmp2 = icmp eq i64 %3, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %len3 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %7, i32 0, i32 4
  %8 = load i64, i64* %len3, align 8
  store i64 %8, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @setiter_reduce(%struct.setiterobject* %si) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %si.addr = alloca %struct.setiterobject*, align 8
  %list = alloca %struct._object*, align 8
  %tmp = alloca %struct.setiterobject, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %element = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct.setiterobject* %si, %struct.setiterobject** %si.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.setiterobject*, %struct.setiterobject** %si.addr, align 8
  %2 = bitcast %struct.setiterobject* %tmp to i8*
  %3 = bitcast %struct.setiterobject* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 48, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end
  %si_set = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %tmp, i32 0, i32 1
  %4 = load %struct._setobject*, %struct._setobject** %si_set, align 8
  %5 = bitcast %struct._setobject* %4 to %struct._object*
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

for.cond:                                         ; preds = %if.end.63, %do.end
  %call5 = call %struct._object* @setiter_iternext(%struct.setiterobject* %tmp)
  store %struct._object* %call5, %struct._object** %element, align 8
  %9 = load %struct._object*, %struct._object** %element, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.else.62

if.then.7:                                        ; preds = %for.cond
  %10 = load %struct._object*, %struct._object** %list, align 8
  %11 = load %struct._object*, %struct._object** %element, align 8
  %call8 = call i32 @PyList_Append(%struct._object* %10, %struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.49

if.then.10:                                       ; preds = %if.then.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %12 = load %struct._object*, %struct._object** %element, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.16

if.else:                                          ; preds = %do.body.11
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %19 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp20, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %21, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.18
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.18
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
  %si_set32 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %tmp, i32 0, i32 1
  %26 = load %struct._setobject*, %struct._setobject** %si_set32, align 8
  %27 = bitcast %struct._setobject* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp33 = icmp ne %struct._object* %28, null
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %do.body.30
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp37, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %31, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.35
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.35
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %34(%struct._object* %35)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.30
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.7
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  %36 = load %struct._object*, %struct._object** %element, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp52, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %38, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.50
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.50
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %41(%struct._object* %42)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.63

if.else.62:                                       ; preds = %for.cond
  br label %for.end

if.end.63:                                        ; preds = %do.end.61
  br label %for.cond

for.end:                                          ; preds = %if.else.62
  br label %do.body.64

do.body.64:                                       ; preds = %for.end
  %si_set67 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %tmp, i32 0, i32 1
  %43 = load %struct._setobject*, %struct._setobject** %si_set67, align 8
  %44 = bitcast %struct._setobject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp66, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8
  %cmp68 = icmp ne %struct._object* %45, null
  br i1 %cmp68, label %if.then.69, label %if.end.82

if.then.69:                                       ; preds = %do.body.64
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp72, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %48, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.70
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.70
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %51(%struct._object* %52)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %do.body.64
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %si_set84 = getelementptr inbounds %struct.setiterobject, %struct.setiterobject* %tmp, i32 0, i32 1
  %53 = load %struct._setobject*, %struct._setobject** %si_set84, align 8
  %cmp85 = icmp ne %struct._setobject* %53, null
  br i1 %cmp85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %do.end.83
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  %54 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp89, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %56, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.87
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %59(%struct._object* %60)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.99:                                        ; preds = %do.end.83
  %call100 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %61 = load %struct._object*, %struct._object** %list, align 8
  %call101 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* %call100, %struct._object* %61)
  store %struct._object* %call101, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.99, %do.end.98, %do.end.48, %if.then
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyMem_Free(i8*) #1

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

declare i32 @Py_ReprEnter(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare void @Py_ReprLeave(%struct._object*) #1

declare %struct._object* @PySequence_List(%struct._object*) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_sub(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PySet_Type
  br i1 %cmp, label %lor.lhs.false.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp2, label %lor.lhs.false.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = bitcast %struct._setobject* %9 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %13, @PySet_Type
  br i1 %cmp11, label %if.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %14 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %cmp14 = icmp eq %struct._typeobject* %15, @PyFrozenSet_Type
  br i1 %cmp14, label %if.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %call17 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PySet_Type)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %18 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %call21 = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* @PyFrozenSet_Type)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false.5
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %22 = load %struct._object*, %struct._object** %other.addr, align 8
  %call23 = call %struct._object* @set_difference(%struct._setobject* %21, %struct._object* %22)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_and(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PySet_Type
  br i1 %cmp, label %lor.lhs.false.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp2, label %lor.lhs.false.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = bitcast %struct._setobject* %9 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %13, @PySet_Type
  br i1 %cmp11, label %if.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %14 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %cmp14 = icmp eq %struct._typeobject* %15, @PyFrozenSet_Type
  br i1 %cmp14, label %if.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %call17 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PySet_Type)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %18 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %call21 = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* @PyFrozenSet_Type)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false.5
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %22 = load %struct._object*, %struct._object** %other.addr, align 8
  %call23 = call %struct._object* @set_intersection(%struct._setobject* %21, %struct._object* %22)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_xor(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PySet_Type
  br i1 %cmp, label %lor.lhs.false.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp2, label %lor.lhs.false.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = bitcast %struct._setobject* %9 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %13, @PySet_Type
  br i1 %cmp11, label %if.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %14 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %cmp14 = icmp eq %struct._typeobject* %15, @PyFrozenSet_Type
  br i1 %cmp14, label %if.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %call17 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PySet_Type)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %18 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %call21 = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* @PyFrozenSet_Type)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false.5
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %22 = load %struct._object*, %struct._object** %other.addr, align 8
  %call23 = call %struct._object* @set_symmetric_difference(%struct._setobject* %21, %struct._object* %22)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_or(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._setobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PySet_Type
  br i1 %cmp, label %lor.lhs.false.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %5, @PyFrozenSet_Type
  br i1 %cmp2, label %lor.lhs.false.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = bitcast %struct._setobject* %9 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFrozenSet_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %13, @PySet_Type
  br i1 %cmp11, label %if.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %14 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %cmp14 = icmp eq %struct._typeobject* %15, @PyFrozenSet_Type
  br i1 %cmp14, label %if.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %call17 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PySet_Type)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %18 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %call21 = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* @PyFrozenSet_Type)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false.5
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call23 = call %struct._object* @set_copy(%struct._setobject* %21)
  %22 = bitcast %struct._object* %call23 to %struct._setobject*
  store %struct._setobject* %22, %struct._setobject** %result, align 8
  %23 = load %struct._setobject*, %struct._setobject** %result, align 8
  %cmp24 = icmp eq %struct._setobject* %23, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end
  %24 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %25 = bitcast %struct._setobject* %24 to %struct._object*
  %26 = load %struct._object*, %struct._object** %other.addr, align 8
  %cmp27 = icmp eq %struct._object* %25, %26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %27 = load %struct._setobject*, %struct._setobject** %result, align 8
  %28 = bitcast %struct._setobject* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %29 = load %struct._setobject*, %struct._setobject** %result, align 8
  %30 = load %struct._object*, %struct._object** %other.addr, align 8
  %call30 = call i32 @set_update_internal(%struct._setobject* %29, %struct._object* %30)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.29
  br label %do.body

do.body:                                          ; preds = %if.then.32
  %31 = load %struct._setobject*, %struct._setobject** %result, align 8
  %32 = bitcast %struct._setobject* %31 to %struct._object*
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.body
  br label %if.end.36

if.else:                                          ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.29
  %39 = load %struct._setobject*, %struct._setobject** %result, align 8
  %40 = bitcast %struct._setobject* %39 to %struct._object*
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %do.end, %if.then.28, %if.then.25, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_isub(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
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
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %call9 = call i32 @set_difference_update_internal(%struct._setobject* %9, %struct._object* %10)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %12 = bitcast %struct._setobject* %11 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc13 = add i64 %13, 1
  store i64 %inc13, i64* %ob_refcnt, align 8
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %15 = bitcast %struct._setobject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_iand(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
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
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %call9 = call %struct._object* @set_intersection_update(%struct._setobject* %9, %struct._object* %10)
  store %struct._object* %call9, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp10 = icmp eq %struct._object* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %12 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %19 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %20 = bitcast %struct._setobject* %19 to %struct._object*
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %21, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %22 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %23 = bitcast %struct._setobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_ixor(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
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
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %call9 = call %struct._object* @set_symmetric_difference_update(%struct._setobject* %9, %struct._object* %10)
  store %struct._object* %call9, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp10 = icmp eq %struct._object* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %12 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %19 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %20 = bitcast %struct._setobject* %19 to %struct._object*
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %21, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %22 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %23 = bitcast %struct._setobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_ior(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
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
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %call9 = call i32 @set_update_internal(%struct._setobject* %9, %struct._object* %10)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %12 = bitcast %struct._setobject* %11 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc13 = add i64 %13, 1
  store i64 %inc13, i64* %ob_refcnt, align 8
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %15 = bitcast %struct._setobject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_difference(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %pos = alloca i64, align 8
  %entrycopy = alloca %struct.setentry, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp3, label %if.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %call8 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.6
  %8 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %9, @PyDict_Type
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = load %struct._object*, %struct._object** %other.addr, align 8
  %call12 = call %struct._object* @set_copy_and_difference(%struct._setobject* %10, %struct._object* %11)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  %12 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %12, i32 0, i32 2
  %13 = load i64, i64* %used, align 8
  %shr = ashr i64 %13, 2
  %14 = load %struct._object*, %struct._object** %other.addr, align 8
  %call13 = call i64 @PyObject_Size(%struct._object* %14)
  %cmp14 = icmp sgt i64 %shr, %call13
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %15 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %call16 = call %struct._object* @set_copy_and_difference(%struct._setobject* %15, %struct._object* %16)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %17 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %18 = bitcast %struct._setobject* %17 to %struct._object*
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %call19 = call %struct._object* @make_new_set_basetype(%struct._typeobject* %19, %struct._object* null)
  store %struct._object* %call19, %struct._object** %result, align 8
  %20 = load %struct._object*, %struct._object** %result, align 8
  %cmp20 = icmp eq %struct._object* %20, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %21 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %22, @PyDict_Type
  br i1 %cmp24, label %if.then.25, label %if.end.44

if.then.25:                                       ; preds = %if.end.22
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %if.then.25
  %23 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call26 = call i32 @set_next(%struct._setobject* %23, i64* %pos, %struct.setentry** %entry1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash = getelementptr inbounds %struct.setentry, %struct.setentry* %24, i32 0, i32 1
  %25 = load i64, i64* %hash, align 8
  %hash28 = getelementptr inbounds %struct.setentry, %struct.setentry* %entrycopy, i32 0, i32 1
  store i64 %25, i64* %hash28, align 8
  %26 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %26, i32 0, i32 0
  %27 = load %struct._object*, %struct._object** %key, align 8
  %key29 = getelementptr inbounds %struct.setentry, %struct.setentry* %entrycopy, i32 0, i32 0
  store %struct._object* %27, %struct._object** %key29, align 8
  %28 = load %struct._object*, %struct._object** %other.addr, align 8
  %29 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key30 = getelementptr inbounds %struct.setentry, %struct.setentry* %29, i32 0, i32 0
  %30 = load %struct._object*, %struct._object** %key30, align 8
  %31 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash31 = getelementptr inbounds %struct.setentry, %struct.setentry* %31, i32 0, i32 1
  %32 = load i64, i64* %hash31, align 8
  %call32 = call i32 @_PyDict_Contains(%struct._object* %28, %struct._object* %30, i64 %32)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.43, label %if.then.34

if.then.34:                                       ; preds = %while.body
  %33 = load %struct._object*, %struct._object** %result, align 8
  %34 = bitcast %struct._object* %33 to %struct._setobject*
  %call35 = call i32 @set_add_entry(%struct._setobject* %34, %struct.setentry* %entrycopy)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.then.34
  br label %do.body

do.body:                                          ; preds = %if.then.37
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp38 = icmp ne i64 %dec, 0
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %do.body
  br label %if.end.41

if.else:                                          ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %42, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.22
  br label %while.cond.45

while.cond.45:                                    ; preds = %if.end.81, %if.end.44
  %43 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call46 = call i32 @set_next(%struct._setobject* %43, i64* %pos, %struct.setentry** %entry1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %while.body.48, label %while.end.82

while.body.48:                                    ; preds = %while.cond.45
  %44 = load %struct._object*, %struct._object** %other.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct._setobject*
  %46 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %call49 = call i32 @set_contains_entry(%struct._setobject* %45, %struct.setentry* %46)
  store i32 %call49, i32* %rv, align 4
  %47 = load i32, i32* %rv, align 4
  %cmp50 = icmp eq i32 %47, -1
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %while.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %48 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp53, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %50, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %53(%struct._object* %54)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %while.body.48
  %55 = load i32, i32* %rv, align 4
  %tobool64 = icmp ne i32 %55, 0
  br i1 %tobool64, label %if.end.81, label %if.then.65

if.then.65:                                       ; preds = %if.end.63
  %56 = load %struct._object*, %struct._object** %result, align 8
  %57 = bitcast %struct._object* %56 to %struct._setobject*
  %58 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %call66 = call i32 @set_add_entry(%struct._setobject* %57, %struct.setentry* %58)
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.68, label %if.end.80

if.then.68:                                       ; preds = %if.then.65
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %59 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp70, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %61, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.69
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %64(%struct._object* %65)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.65
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.63
  br label %while.cond.45

while.end.82:                                     ; preds = %while.cond.45
  %66 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %66, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end.82, %do.end.79, %do.end.62, %while.end, %do.end, %if.then.21, %if.then.15, %if.then
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_copy_and_difference(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_copy(%struct._setobject* %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  %3 = bitcast %struct._object* %2 to %struct._setobject*
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call i32 @set_difference_update_internal(%struct._setobject* %3, %struct._object* %4)
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_new_set_basetype(%struct._typeobject* %type, %struct._object* %iterable) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp ne %struct._typeobject* %0, @PySet_Type
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp1 = icmp ne %struct._typeobject* %1, @PyFrozenSet_Type
  br i1 %cmp1, label %if.then, label %if.end.3

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store %struct._typeobject* @PySet_Type, %struct._typeobject** %type.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct._typeobject* @PyFrozenSet_Type, %struct._typeobject** %type.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %land.lhs.true, %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %4 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call4 = call %struct._object* @make_new_set(%struct._typeobject* %3, %struct._object* %4)
  ret %struct._object* %call4
}

declare i32 @_PyDict_Contains(%struct._object*, %struct._object*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_add_entry(%struct._setobject* %so, %struct.setentry* %entry1) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %entry.addr = alloca %struct.setentry*, align 8
  %n_used = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct.setentry* %entry1, %struct.setentry** %entry.addr, align 8
  %0 = load %struct.setentry*, %struct.setentry** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct.setentry, %struct.setentry* %0, i32 0, i32 0
  %1 = load %struct._object*, %struct._object** %key2, align 8
  store %struct._object* %1, %struct._object** %key, align 8
  %2 = load %struct.setentry*, %struct.setentry** %entry.addr, align 8
  %hash3 = getelementptr inbounds %struct.setentry, %struct.setentry* %2, i32 0, i32 1
  %3 = load i64, i64* %hash3, align 8
  store i64 %3, i64* %hash, align 8
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 2
  %5 = load i64, i64* %used, align 8
  store i64 %5, i64* %n_used, align 8
  %6 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %9 = load %struct._object*, %struct._object** %key, align 8
  %10 = load i64, i64* %hash, align 8
  %call = call i32 @set_insert_key(%struct._setobject* %8, %struct._object* %9, i64 %10)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %entry
  %18 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used8 = getelementptr inbounds %struct._setobject, %struct._setobject* %18, i32 0, i32 2
  %19 = load i64, i64* %used8, align 8
  %20 = load i64, i64* %n_used, align 8
  %cmp9 = icmp sgt i64 %19, %20
  br i1 %cmp9, label %land.lhs.true, label %if.then.12

land.lhs.true:                                    ; preds = %if.end.7
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %21, i32 0, i32 1
  %22 = load i64, i64* %fill, align 8
  %mul = mul i64 %22, 3
  %23 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %23, i32 0, i32 3
  %24 = load i64, i64* %mask, align 8
  %add = add i64 %24, 1
  %mul10 = mul i64 %add, 2
  %cmp11 = icmp sge i64 %mul, %mul10
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true, %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true
  %25 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %26 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used14 = getelementptr inbounds %struct._setobject, %struct._setobject* %26, i32 0, i32 2
  %27 = load i64, i64* %used14, align 8
  %cmp15 = icmp sgt i64 %27, 50000
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %28 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used16 = getelementptr inbounds %struct._setobject, %struct._setobject* %28, i32 0, i32 2
  %29 = load i64, i64* %used16, align 8
  %mul17 = mul i64 %29, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %30 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used18 = getelementptr inbounds %struct._setobject, %struct._setobject* %30, i32 0, i32 2
  %31 = load i64, i64* %used18, align 8
  %mul19 = mul i64 %31, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul17, %cond.true ], [ %mul19, %cond.false ]
  %call20 = call i32 @set_table_resize(%struct._setobject* %25, i64 %cond)
  store i32 %call20, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.12, %do.end
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @set_contains_entry(%struct._setobject* %so, %struct.setentry* %entry1) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %entry.addr = alloca %struct.setentry*, align 8
  %key = alloca %struct._object*, align 8
  %lu_entry = alloca %struct.setentry*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct.setentry* %entry1, %struct.setentry** %entry.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 5
  %1 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %3 = load %struct.setentry*, %struct.setentry** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct.setentry, %struct.setentry* %3, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %key2, align 8
  %5 = load %struct.setentry*, %struct.setentry** %entry.addr, align 8
  %hash = getelementptr inbounds %struct.setentry, %struct.setentry* %5, i32 0, i32 1
  %6 = load i64, i64* %hash, align 8
  %call = call %struct.setentry* %1(%struct._setobject* %2, %struct._object* %4, i64 %6)
  store %struct.setentry* %call, %struct.setentry** %lu_entry, align 8
  %7 = load %struct.setentry*, %struct.setentry** %lu_entry, align 8
  %cmp = icmp eq %struct.setentry* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.setentry*, %struct.setentry** %lu_entry, align 8
  %key3 = getelementptr inbounds %struct.setentry, %struct.setentry* %8, i32 0, i32 0
  %9 = load %struct._object*, %struct._object** %key3, align 8
  store %struct._object* %9, %struct._object** %key, align 8
  %10 = load %struct._object*, %struct._object** %key, align 8
  %cmp4 = icmp ne %struct._object* %10, null
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %key, align 8
  %cmp5 = icmp ne %struct._object* %11, @_dummy_struct
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %12 = phi i1 [ false, %if.end ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_copy(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %call = call %struct._object* @make_new_set_basetype(%struct._typeobject* %2, %struct._object* %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @set_difference_update_internal(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %entry12 = alloca %struct.setentry*, align 8
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %cmp = icmp eq %struct._object* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call i32 @set_clear_internal(%struct._setobject* %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %5, @PySet_Type
  br i1 %cmp1, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %7, @PyFrozenSet_Type
  br i1 %cmp3, label %if.then.11, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call6 = call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %call9 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFrozenSet_Type)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %if.end
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.then.11
  %12 = load %struct._object*, %struct._object** %other.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct._setobject*
  %call13 = call i32 @set_next(%struct._setobject* %13, i64* %pos, %struct.setentry** %entry12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %15 = load %struct.setentry*, %struct.setentry** %entry12, align 8
  %call15 = call i32 @set_discard_entry(%struct._setobject* %14, %struct.setentry* %15)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.74

if.else:                                          ; preds = %lor.lhs.false.7
  %16 = load %struct._object*, %struct._object** %other.addr, align 8
  %call19 = call %struct._object* @PyObject_GetIter(%struct._object* %16)
  store %struct._object* %call19, %struct._object** %it, align 8
  %17 = load %struct._object*, %struct._object** %it, align 8
  %cmp20 = icmp eq %struct._object* %17, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.else
  br label %while.cond.23

while.cond.23:                                    ; preds = %do.end.57, %if.end.22
  %18 = load %struct._object*, %struct._object** %it, align 8
  %call24 = call %struct._object* @PyIter_Next(%struct._object* %18)
  store %struct._object* %call24, %struct._object** %key, align 8
  %cmp25 = icmp ne %struct._object* %call24, null
  br i1 %cmp25, label %while.body.26, label %while.end.58

while.body.26:                                    ; preds = %while.cond.23
  %19 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %20 = load %struct._object*, %struct._object** %key, align 8
  %call27 = call i32 @set_discard_key(%struct._setobject* %19, %struct._object* %20)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then.29, label %if.end.46

if.then.29:                                       ; preds = %while.body.26
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %21 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body
  br label %if.end.34

if.else.32:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.34
  br label %do.body.35

do.body.35:                                       ; preds = %do.end
  %28 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp36, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %30, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %33(%struct._object* %34)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %while.body.26
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.46
  %35 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp48, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %37, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %40(%struct._object* %41)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %while.cond.23

while.end.58:                                     ; preds = %while.cond.23
  br label %do.body.59

do.body.59:                                       ; preds = %while.end.58
  %42 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp60, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %44, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.59
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %47(%struct._object* %48)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %call70 = call %struct._object* @PyErr_Occurred()
  %tobool71 = icmp ne %struct._object* %call70, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.end.69
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %do.end.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %while.end
  %49 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %49, i32 0, i32 1
  %50 = load i64, i64* %fill, align 8
  %51 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %51, i32 0, i32 2
  %52 = load i64, i64* %used, align 8
  %sub = sub i64 %50, %52
  %mul = mul i64 %sub, 5
  %53 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %53, i32 0, i32 3
  %54 = load i64, i64* %mask, align 8
  %cmp75 = icmp slt i64 %mul, %54
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.74
  %55 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %56 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used78 = getelementptr inbounds %struct._setobject, %struct._setobject* %56, i32 0, i32 2
  %57 = load i64, i64* %used78, align 8
  %cmp79 = icmp sgt i64 %57, 50000
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.77
  %58 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used80 = getelementptr inbounds %struct._setobject, %struct._setobject* %58, i32 0, i32 2
  %59 = load i64, i64* %used80, align 8
  %mul81 = mul i64 %59, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.77
  %60 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used82 = getelementptr inbounds %struct._setobject, %struct._setobject* %60, i32 0, i32 2
  %61 = load i64, i64* %used82, align 8
  %mul83 = mul i64 %61, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul81, %cond.true ], [ %mul83, %cond.false ]
  %call84 = call i32 @set_table_resize(%struct._setobject* %55, i64 %cond)
  store i32 %call84, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.76, %if.then.72, %do.end.45, %if.then.21, %if.then.17, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @set_discard_entry(%struct._setobject* %so, %struct.setentry* %oldentry) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %oldentry.addr = alloca %struct.setentry*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %old_key = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct.setentry* %oldentry, %struct.setentry** %oldentry.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 5
  %1 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %3 = load %struct.setentry*, %struct.setentry** %oldentry.addr, align 8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %3, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %key, align 8
  %5 = load %struct.setentry*, %struct.setentry** %oldentry.addr, align 8
  %hash = getelementptr inbounds %struct.setentry, %struct.setentry* %5, i32 0, i32 1
  %6 = load i64, i64* %hash, align 8
  %call = call %struct.setentry* %1(%struct._setobject* %2, %struct._object* %4, i64 %6)
  store %struct.setentry* %call, %struct.setentry** %entry1, align 8
  %7 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %cmp = icmp eq %struct.setentry* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key2 = getelementptr inbounds %struct.setentry, %struct.setentry* %8, i32 0, i32 0
  %9 = load %struct._object*, %struct._object** %key2, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key4 = getelementptr inbounds %struct.setentry, %struct.setentry* %10, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %key4, align 8
  %cmp5 = icmp eq %struct._object* %11, @_dummy_struct
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %12 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key8 = getelementptr inbounds %struct.setentry, %struct.setentry* %12, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %key8, align 8
  store %struct._object* %13, %struct._object** %old_key, align 8
  %14 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key9 = getelementptr inbounds %struct.setentry, %struct.setentry* %14, i32 0, i32 0
  store %struct._object* @_dummy_struct, %struct._object** %key9, align 8
  %15 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %15, i32 0, i32 2
  %16 = load i64, i64* %used, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %used, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %old_key, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec10 = add i64 %19, -1
  store i64 %dec10, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec10, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i32 @set_table_resize(%struct._setobject* %so, i64 %minused) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %minused.addr = alloca i64, align 8
  %newsize = alloca i64, align 8
  %oldtable = alloca %struct.setentry*, align 8
  %newtable = alloca %struct.setentry*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %i = alloca i64, align 8
  %is_oldtable_malloced = alloca i32, align 4
  %small_copy = alloca [8 x %struct.setentry], align 16
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
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
  %cmp2 = icmp sgt i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
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
  %cmp3 = icmp sle i64 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %6, i32 0, i32 4
  %7 = load %struct.setentry*, %struct.setentry** %table, align 8
  store %struct.setentry* %7, %struct.setentry** %oldtable, align 8
  %8 = load %struct.setentry*, %struct.setentry** %oldtable, align 8
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %9, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable, i32 0, i32 0
  %cmp4 = icmp ne %struct.setentry* %8, %arraydecay
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %is_oldtable_malloced, align 4
  %10 = load i64, i64* %newsize, align 8
  %cmp5 = icmp eq i64 %10, 8
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable8 = getelementptr inbounds %struct._setobject, %struct._setobject* %11, i32 0, i32 7
  %arraydecay9 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable8, i32 0, i32 0
  store %struct.setentry* %arraydecay9, %struct.setentry** %newtable, align 8
  %12 = load %struct.setentry*, %struct.setentry** %newtable, align 8
  %13 = load %struct.setentry*, %struct.setentry** %oldtable, align 8
  %cmp10 = icmp eq %struct.setentry* %12, %13
  br i1 %cmp10, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.then.7
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %14, i32 0, i32 1
  %15 = load i64, i64* %fill, align 8
  %16 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %16, i32 0, i32 2
  %17 = load i64, i64* %used, align 8
  %cmp13 = icmp eq i64 %15, %17
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %18 = bitcast [8 x %struct.setentry]* %small_copy to i8*
  %19 = load %struct.setentry*, %struct.setentry** %oldtable, align 8
  %20 = bitcast %struct.setentry* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 128, i32 8, i1 false)
  %arraydecay17 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %small_copy, i32 0, i32 0
  store %struct.setentry* %arraydecay17, %struct.setentry** %oldtable, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.then.7
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %21 = load i64, i64* %newsize, align 8
  %cmp19 = icmp ugt i64 %21, 576460752303423487
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %22 = load i64, i64* %newsize, align 8
  %mul = mul i64 %22, 16
  %call21 = call i8* @PyMem_Malloc(i64 %mul)
  %23 = bitcast i8* %call21 to %struct.setentry*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.setentry* [ null, %cond.true ], [ %23, %cond.false ]
  store %struct.setentry* %cond, %struct.setentry** %newtable, align 8
  %24 = load %struct.setentry*, %struct.setentry** %newtable, align 8
  %cmp22 = icmp eq %struct.setentry* %24, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %cond.end
  %call25 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %cond.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  %25 = load %struct.setentry*, %struct.setentry** %newtable, align 8
  %26 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table28 = getelementptr inbounds %struct._setobject, %struct._setobject* %26, i32 0, i32 4
  store %struct.setentry* %25, %struct.setentry** %table28, align 8
  %27 = load i64, i64* %newsize, align 8
  %sub = sub i64 %27, 1
  %28 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %28, i32 0, i32 3
  store i64 %sub, i64* %mask, align 8
  %29 = load %struct.setentry*, %struct.setentry** %newtable, align 8
  %30 = bitcast %struct.setentry* %29 to i8*
  %31 = load i64, i64* %newsize, align 8
  %mul29 = mul i64 16, %31
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %mul29, i32 8, i1 false)
  %32 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used30 = getelementptr inbounds %struct._setobject, %struct._setobject* %32, i32 0, i32 2
  %33 = load i64, i64* %used30, align 8
  store i64 %33, i64* %i, align 8
  %34 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used31 = getelementptr inbounds %struct._setobject, %struct._setobject* %34, i32 0, i32 2
  store i64 0, i64* %used31, align 8
  %35 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill32 = getelementptr inbounds %struct._setobject, %struct._setobject* %35, i32 0, i32 1
  store i64 0, i64* %fill32, align 8
  %36 = load %struct.setentry*, %struct.setentry** %oldtable, align 8
  store %struct.setentry* %36, %struct.setentry** %entry1, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.45, %if.end.27
  %37 = load i64, i64* %i, align 8
  %cmp34 = icmp sgt i64 %37, 0
  br i1 %cmp34, label %for.body.36, label %for.end.46

for.body.36:                                      ; preds = %for.cond.33
  %38 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key = getelementptr inbounds %struct.setentry, %struct.setentry* %38, i32 0, i32 0
  %39 = load %struct._object*, %struct._object** %key, align 8
  %cmp37 = icmp ne %struct._object* %39, null
  br i1 %cmp37, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %for.body.36
  %40 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key39 = getelementptr inbounds %struct.setentry, %struct.setentry* %40, i32 0, i32 0
  %41 = load %struct._object*, %struct._object** %key39, align 8
  %cmp40 = icmp ne %struct._object* %41, @_dummy_struct
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true
  %42 = load i64, i64* %i, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %i, align 8
  %43 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %44 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key43 = getelementptr inbounds %struct.setentry, %struct.setentry* %44, i32 0, i32 0
  %45 = load %struct._object*, %struct._object** %key43, align 8
  %46 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash = getelementptr inbounds %struct.setentry, %struct.setentry* %46, i32 0, i32 1
  %47 = load i64, i64* %hash, align 8
  call void @set_insert_clean(%struct._setobject* %43, %struct._object* %45, i64 %47)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true, %for.body.36
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %48 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %incdec.ptr = getelementptr %struct.setentry, %struct.setentry* %48, i32 1
  store %struct.setentry* %incdec.ptr, %struct.setentry** %entry1, align 8
  br label %for.cond.33

for.end.46:                                       ; preds = %for.cond.33
  %49 = load i32, i32* %is_oldtable_malloced, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end.46
  %50 = load %struct.setentry*, %struct.setentry** %oldtable, align 8
  %51 = bitcast %struct.setentry* %50 to i8*
  call void @PyMem_Free(i8* %51)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.end.46
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.24, %if.then.15, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @set_insert_clean(%struct._setobject* %so, %struct._object* %key, i64 %hash) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %table = alloca %struct.setentry*, align 8
  %entry2 = alloca %struct.setentry*, align 8
  %perturb = alloca i64, align 8
  %mask = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table1 = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 4
  %1 = load %struct.setentry*, %struct.setentry** %table1, align 8
  store %struct.setentry* %1, %struct.setentry** %table, align 8
  %2 = load i64, i64* %hash.addr, align 8
  store i64 %2, i64* %perturb, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask3 = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 3
  %4 = load i64, i64* %mask3, align 8
  store i64 %4, i64* %mask, align 8
  %5 = load i64, i64* %hash.addr, align 8
  store i64 %5, i64* %i, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %for.end
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %mask, align 8
  %and = and i64 %6, %7
  %8 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %8, i64 %and
  store %struct.setentry* %arrayidx, %struct.setentry** %entry2, align 8
  %9 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key4 = getelementptr inbounds %struct.setentry, %struct.setentry* %9, i32 0, i32 0
  %10 = load %struct._object*, %struct._object** %key4, align 8
  %cmp = icmp eq %struct._object* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %found_null

if.end:                                           ; preds = %while.body
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %j, align 8
  %cmp5 = icmp ule i64 %11, 9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %j, align 8
  %add = add i64 %12, %13
  %14 = load i64, i64* %mask, align 8
  %and6 = and i64 %add, %14
  %15 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx7 = getelementptr %struct.setentry, %struct.setentry* %15, i64 %and6
  store %struct.setentry* %arrayidx7, %struct.setentry** %entry2, align 8
  %16 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key8 = getelementptr inbounds %struct.setentry, %struct.setentry* %16, i32 0, i32 0
  %17 = load %struct._object*, %struct._object** %key8, align 8
  %cmp9 = icmp eq %struct._object* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %found_null

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %18 = load i64, i64* %j, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %19, 5
  store i64 %shr, i64* %perturb, align 8
  %20 = load i64, i64* %i, align 8
  %mul = mul i64 %20, 5
  %add12 = add i64 %mul, 1
  %21 = load i64, i64* %perturb, align 8
  %add13 = add i64 %add12, %21
  store i64 %add13, i64* %i, align 8
  br label %while.body

found_null:                                       ; preds = %if.then.10, %if.then
  %22 = load %struct._object*, %struct._object** %key.addr, align 8
  %23 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key14 = getelementptr inbounds %struct.setentry, %struct.setentry* %23, i32 0, i32 0
  store %struct._object* %22, %struct._object** %key14, align 8
  %24 = load i64, i64* %hash.addr, align 8
  %25 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %hash15 = getelementptr inbounds %struct.setentry, %struct.setentry* %25, i32 0, i32 1
  store i64 %24, i64* %hash15, align 8
  %26 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %26, i32 0, i32 1
  %27 = load i64, i64* %fill, align 8
  %inc16 = add i64 %27, 1
  store i64 %inc16, i64* %fill, align 8
  %28 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %28, i32 0, i32 2
  %29 = load i64, i64* %used, align 8
  %inc17 = add i64 %29, 1
  store i64 %inc17, i64* %used, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_insert_key(%struct._setobject* %so, %struct._object* %key, i64 %hash) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 5
  %1 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %4 = load i64, i64* %hash.addr, align 8
  %call = call %struct.setentry* %1(%struct._setobject* %2, %struct._object* %3, i64 %4)
  store %struct.setentry* %call, %struct.setentry** %entry1, align 8
  %5 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %cmp = icmp eq %struct.setentry* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key2 = getelementptr inbounds %struct.setentry, %struct.setentry* %6, i32 0, i32 0
  %7 = load %struct._object*, %struct._object** %key2, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %8, i32 0, i32 1
  %9 = load i64, i64* %fill, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %fill, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key5 = getelementptr inbounds %struct.setentry, %struct.setentry* %11, i32 0, i32 0
  store %struct._object* %10, %struct._object** %key5, align 8
  %12 = load i64, i64* %hash.addr, align 8
  %13 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash6 = getelementptr inbounds %struct.setentry, %struct.setentry* %13, i32 0, i32 1
  store i64 %12, i64* %hash6, align 8
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %14, i32 0, i32 2
  %15 = load i64, i64* %used, align 8
  %inc7 = add i64 %15, 1
  store i64 %inc7, i64* %used, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %16 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key8 = getelementptr inbounds %struct.setentry, %struct.setentry* %16, i32 0, i32 0
  %17 = load %struct._object*, %struct._object** %key8, align 8
  %cmp9 = icmp eq %struct._object* %17, @_dummy_struct
  br i1 %cmp9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %key.addr, align 8
  %19 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key11 = getelementptr inbounds %struct.setentry, %struct.setentry* %19, i32 0, i32 0
  store %struct._object* %18, %struct._object** %key11, align 8
  %20 = load i64, i64* %hash.addr, align 8
  %21 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash12 = getelementptr inbounds %struct.setentry, %struct.setentry* %21, i32 0, i32 1
  store i64 %20, i64* %hash12, align 8
  %22 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used13 = getelementptr inbounds %struct._setobject, %struct._setobject* %22, i32 0, i32 2
  %23 = load i64, i64* %used13, align 8
  %inc14 = add i64 %23, 1
  store i64 %inc14, i64* %used13, align 8
  br label %if.end.20

if.else.15:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else.15
  %24 = load %struct._object*, %struct._object** %key.addr, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else.18:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.then.10
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_intersection(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._setobject*, align 8
  %key = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %entry19 = alloca %struct.setentry*, align 8
  %rv = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %rv77 = alloca i32, align 4
  %entry79 = alloca %struct.setentry, align 8
  %hash = alloca i64, align 8
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp170 = alloca %struct._object*, align 8
  %_py_decref_tmp182 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_decref_tmp208 = alloca %struct._object*, align 8
  %_py_decref_tmp221 = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %cmp = icmp eq %struct._object* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_copy(%struct._setobject* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %5 = bitcast %struct._setobject* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call1 = call %struct._object* @make_new_set_basetype(%struct._typeobject* %6, %struct._object* null)
  %7 = bitcast %struct._object* %call1 to %struct._setobject*
  store %struct._setobject* %7, %struct._setobject** %result, align 8
  %8 = load %struct._setobject*, %struct._setobject** %result, align 8
  %cmp2 = icmp eq %struct._setobject* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %cmp6 = icmp eq %struct._typeobject* %10, @PySet_Type
  br i1 %cmp6, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %12, @PyFrozenSet_Type
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %call11 = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %15 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %call14 = call i32 @PyType_IsSubtype(%struct._typeobject* %16, %struct._typeobject* @PyFrozenSet_Type)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.55

if.then.16:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false, %if.end.4
  store i64 0, i64* %pos, align 8
  %17 = load %struct._object*, %struct._object** %other.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._setobject*
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %18, i32 0, i32 2
  %19 = load i64, i64* %used, align 8
  %20 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used20 = getelementptr inbounds %struct._setobject, %struct._setobject* %20, i32 0, i32 2
  %21 = load i64, i64* %used20, align 8
  %cmp21 = icmp sgt i64 %19, %21
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.16
  %22 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %23 = bitcast %struct._setobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %tmp, align 8
  %24 = load %struct._object*, %struct._object** %other.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct._setobject*
  store %struct._setobject* %25, %struct._setobject** %so.addr, align 8
  %26 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %26, %struct._object** %other.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.54, %if.end.23
  %27 = load %struct._object*, %struct._object** %other.addr, align 8
  %28 = bitcast %struct._object* %27 to %struct._setobject*
  %call24 = call i32 @set_next(%struct._setobject* %28, i64* %pos, %struct.setentry** %entry19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %30 = load %struct.setentry*, %struct.setentry** %entry19, align 8
  %call27 = call i32 @set_contains_entry(%struct._setobject* %29, %struct.setentry* %30)
  store i32 %call27, i32* %rv, align 4
  %31 = load i32, i32* %rv, align 4
  %cmp28 = icmp eq i32 %31, -1
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %32 = load %struct._setobject*, %struct._setobject** %result, align 8
  %33 = bitcast %struct._setobject* %32 to %struct._object*
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body
  br label %if.end.34

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %while.body
  %40 = load i32, i32* %rv, align 4
  %tobool36 = icmp ne i32 %40, 0
  br i1 %tobool36, label %if.then.37, label %if.end.54

if.then.37:                                       ; preds = %if.end.35
  %41 = load %struct._setobject*, %struct._setobject** %result, align 8
  %42 = load %struct.setentry*, %struct.setentry** %entry19, align 8
  %call38 = call i32 @set_add_entry(%struct._setobject* %41, %struct.setentry* %42)
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %if.then.37
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %43 = load %struct._setobject*, %struct._setobject** %result, align 8
  %44 = bitcast %struct._setobject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %_py_decref_tmp43, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %46, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.41
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %49(%struct._object* %50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.37
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.35
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct._setobject*, %struct._setobject** %result, align 8
  %52 = bitcast %struct._setobject* %51 to %struct._object*
  store %struct._object* %52, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.12
  %53 = load %struct._object*, %struct._object** %other.addr, align 8
  %call56 = call %struct._object* @PyObject_GetIter(%struct._object* %53)
  store %struct._object* %call56, %struct._object** %it, align 8
  %54 = load %struct._object*, %struct._object** %it, align 8
  %cmp57 = icmp eq %struct._object* %54, null
  br i1 %cmp57, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %if.end.55
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %55 = load %struct._setobject*, %struct._setobject** %result, align 8
  %56 = bitcast %struct._setobject* %55 to %struct._object*
  store %struct._object* %56, %struct._object** %_py_decref_tmp61, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %58, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.59
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %61(%struct._object* %62)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.71:                                        ; preds = %if.end.55
  br label %while.cond.72

while.cond.72:                                    ; preds = %do.end.217, %if.end.71
  %63 = load %struct._object*, %struct._object** %it, align 8
  %call73 = call %struct._object* @PyIter_Next(%struct._object* %63)
  store %struct._object* %call73, %struct._object** %key, align 8
  %cmp74 = icmp ne %struct._object* %call73, null
  br i1 %cmp74, label %while.body.75, label %while.end.218

while.body.75:                                    ; preds = %while.cond.72
  %64 = load %struct._object*, %struct._object** %key, align 8
  %call81 = call i64 @PyObject_Hash(%struct._object* %64)
  store i64 %call81, i64* %hash, align 8
  %65 = load i64, i64* %hash, align 8
  %cmp82 = icmp eq i64 %65, -1
  br i1 %cmp82, label %if.then.83, label %if.end.120

if.then.83:                                       ; preds = %while.body.75
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %66 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp86, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt87, align 8
  %dec88 = add i64 %68, -1
  store i64 %dec88, i64* %ob_refcnt87, align 8
  %cmp89 = icmp ne i64 %dec88, 0
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94

if.else.91:                                       ; preds = %do.body.84
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  call void %71(%struct._object* %72)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %73 = load %struct._setobject*, %struct._setobject** %result, align 8
  %74 = bitcast %struct._setobject* %73 to %struct._object*
  store %struct._object* %74, %struct._object** %_py_decref_tmp98, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %76, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106

if.else.103:                                      ; preds = %do.body.96
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %79(%struct._object* %80)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %81 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp110, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt111, align 8
  %dec112 = add i64 %83, -1
  store i64 %dec112, i64* %ob_refcnt111, align 8
  %cmp113 = icmp ne i64 %dec112, 0
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  call void %86(%struct._object* %87)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.120:                                       ; preds = %while.body.75
  %88 = load i64, i64* %hash, align 8
  %hash121 = getelementptr inbounds %struct.setentry, %struct.setentry* %entry79, i32 0, i32 1
  store i64 %88, i64* %hash121, align 8
  %89 = load %struct._object*, %struct._object** %key, align 8
  %key122 = getelementptr inbounds %struct.setentry, %struct.setentry* %entry79, i32 0, i32 0
  store %struct._object* %89, %struct._object** %key122, align 8
  %90 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call123 = call i32 @set_contains_entry(%struct._setobject* %90, %struct.setentry* %entry79)
  store i32 %call123, i32* %rv77, align 4
  %91 = load i32, i32* %rv77, align 4
  %cmp124 = icmp eq i32 %91, -1
  br i1 %cmp124, label %if.then.125, label %if.end.162

if.then.125:                                      ; preds = %if.end.120
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  %92 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp128, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %94, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.126
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.126
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %97(%struct._object* %98)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %do.body.138

do.body.138:                                      ; preds = %do.end.137
  %99 = load %struct._setobject*, %struct._setobject** %result, align 8
  %100 = bitcast %struct._setobject* %99 to %struct._object*
  store %struct._object* %100, %struct._object** %_py_decref_tmp140, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %102, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %105(%struct._object* %106)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %do.body.150

do.body.150:                                      ; preds = %do.end.149
  %107 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp152, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt153, align 8
  %dec154 = add i64 %109, -1
  store i64 %dec154, i64* %ob_refcnt153, align 8
  %cmp155 = icmp ne i64 %dec154, 0
  br i1 %cmp155, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %do.body.150
  br label %if.end.160

if.else.157:                                      ; preds = %do.body.150
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  call void %112(%struct._object* %113)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.162:                                       ; preds = %if.end.120
  %114 = load i32, i32* %rv77, align 4
  %tobool163 = icmp ne i32 %114, 0
  br i1 %tobool163, label %if.then.164, label %if.end.205

if.then.164:                                      ; preds = %if.end.162
  %115 = load %struct._setobject*, %struct._setobject** %result, align 8
  %call165 = call i32 @set_add_entry(%struct._setobject* %115, %struct.setentry* %entry79)
  %cmp166 = icmp eq i32 %call165, -1
  br i1 %cmp166, label %if.then.167, label %if.end.204

if.then.167:                                      ; preds = %if.then.164
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  %116 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp170, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt171, align 8
  %dec172 = add i64 %118, -1
  store i64 %dec172, i64* %ob_refcnt171, align 8
  %cmp173 = icmp ne i64 %dec172, 0
  br i1 %cmp173, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %do.body.168
  br label %if.end.178

if.else.175:                                      ; preds = %do.body.168
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_type176 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type176, align 8
  %tp_dealloc177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  call void %121(%struct._object* %122)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.174
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %do.body.180

do.body.180:                                      ; preds = %do.end.179
  %123 = load %struct._setobject*, %struct._setobject** %result, align 8
  %124 = bitcast %struct._setobject* %123 to %struct._object*
  store %struct._object* %124, %struct._object** %_py_decref_tmp182, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  %ob_refcnt183 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt183, align 8
  %dec184 = add i64 %126, -1
  store i64 %dec184, i64* %ob_refcnt183, align 8
  %cmp185 = icmp ne i64 %dec184, 0
  br i1 %cmp185, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %do.body.180
  br label %if.end.190

if.else.187:                                      ; preds = %do.body.180
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  %ob_type188 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type188, align 8
  %tp_dealloc189 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc189, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp182, align 8
  call void %129(%struct._object* %130)
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.186
  br label %do.end.191

do.end.191:                                       ; preds = %if.end.190
  br label %do.body.192

do.body.192:                                      ; preds = %do.end.191
  %131 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %131, %struct._object** %_py_decref_tmp194, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0
  %133 = load i64, i64* %ob_refcnt195, align 8
  %dec196 = add i64 %133, -1
  store i64 %dec196, i64* %ob_refcnt195, align 8
  %cmp197 = icmp ne i64 %dec196, 0
  br i1 %cmp197, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %do.body.192
  br label %if.end.202

if.else.199:                                      ; preds = %do.body.192
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_type200 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type200, align 8
  %tp_dealloc201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc201, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  call void %136(%struct._object* %137)
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.198
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.204:                                       ; preds = %if.then.164
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.162
  br label %do.body.206

do.body.206:                                      ; preds = %if.end.205
  %138 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp208, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp208, align 8
  %ob_refcnt209 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt209, align 8
  %dec210 = add i64 %140, -1
  store i64 %dec210, i64* %ob_refcnt209, align 8
  %cmp211 = icmp ne i64 %dec210, 0
  br i1 %cmp211, label %if.then.212, label %if.else.213

if.then.212:                                      ; preds = %do.body.206
  br label %if.end.216

if.else.213:                                      ; preds = %do.body.206
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp208, align 8
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp208, align 8
  call void %143(%struct._object* %144)
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.213, %if.then.212
  br label %do.end.217

do.end.217:                                       ; preds = %if.end.216
  br label %while.cond.72

while.end.218:                                    ; preds = %while.cond.72
  br label %do.body.219

do.body.219:                                      ; preds = %while.end.218
  %145 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp221, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  %ob_refcnt222 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt222, align 8
  %dec223 = add i64 %147, -1
  store i64 %dec223, i64* %ob_refcnt222, align 8
  %cmp224 = icmp ne i64 %dec223, 0
  br i1 %cmp224, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %do.body.219
  br label %if.end.229

if.else.226:                                      ; preds = %do.body.219
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  call void %150(%struct._object* %151)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  %call231 = call %struct._object* @PyErr_Occurred()
  %tobool232 = icmp ne %struct._object* %call231, null
  br i1 %tobool232, label %if.then.233, label %if.end.246

if.then.233:                                      ; preds = %do.end.230
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.233
  %152 = load %struct._setobject*, %struct._setobject** %result, align 8
  %153 = bitcast %struct._setobject* %152 to %struct._object*
  store %struct._object* %153, %struct._object** %_py_decref_tmp236, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt237, align 8
  %dec238 = add i64 %155, -1
  store i64 %dec238, i64* %ob_refcnt237, align 8
  %cmp239 = icmp ne i64 %dec238, 0
  br i1 %cmp239, label %if.then.240, label %if.else.241

if.then.240:                                      ; preds = %do.body.234
  br label %if.end.244

if.else.241:                                      ; preds = %do.body.234
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_type242 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type242, align 8
  %tp_dealloc243 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc243, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  call void %158(%struct._object* %159)
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.241, %if.then.240
  br label %do.end.245

do.end.245:                                       ; preds = %if.end.244
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.246:                                       ; preds = %do.end.230
  %160 = load %struct._setobject*, %struct._setobject** %result, align 8
  %161 = bitcast %struct._setobject* %160 to %struct._object*
  store %struct._object* %161, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.246, %do.end.245, %do.end.203, %do.end.161, %do.end.119, %do.end.70, %while.end, %do.end.52, %do.end, %if.then.3, %if.then
  %162 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %162
}

declare i64 @PyObject_Hash(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_symmetric_difference(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %otherset = alloca %struct._setobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct._object*, %struct._object** %other.addr, align 8
  %call = call %struct._object* @make_new_set_basetype(%struct._typeobject* %2, %struct._object* %3)
  %4 = bitcast %struct._object* %call to %struct._setobject*
  store %struct._setobject* %4, %struct._setobject** %otherset, align 8
  %5 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %cmp = icmp eq %struct._setobject* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %8 = bitcast %struct._setobject* %7 to %struct._object*
  %call1 = call %struct._object* @set_symmetric_difference_update(%struct._setobject* %6, %struct._object* %8)
  store %struct._object* %call1, %struct._object** %rv, align 8
  %9 = load %struct._object*, %struct._object** %rv, align 8
  %cmp2 = icmp eq %struct._object* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %17 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %18 = bitcast %struct._setobject* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_symmetric_difference_update(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %otherset = alloca %struct._setobject*, align 8
  %key = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %value = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %hash = alloca i64, align 8
  %an_entry = alloca %struct.setentry, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %rv73 = alloca i32, align 4
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %cmp = icmp eq %struct._object* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_clear(%struct._setobject* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %5, @PyDict_Type
  br i1 %cmp2, label %if.then.3, label %if.end.46

if.then.3:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end.44, %if.then.3
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %call4 = call i32 @_PyDict_Next(%struct._object* %6, i64* %pos, %struct._object** %key, %struct._object** %value, i64* %hash)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load i64, i64* %hash, align 8
  %hash5 = getelementptr inbounds %struct.setentry, %struct.setentry* %an_entry, i32 0, i32 1
  store i64 %9, i64* %hash5, align 8
  %10 = load %struct._object*, %struct._object** %key, align 8
  %key6 = getelementptr inbounds %struct.setentry, %struct.setentry* %an_entry, i32 0, i32 0
  store %struct._object* %10, %struct._object** %key6, align 8
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call7 = call i32 @set_discard_entry(%struct._setobject* %11, %struct.setentry* %an_entry)
  store i32 %call7, i32* %rv, align 4
  %12 = load i32, i32* %rv, align 4
  %cmp8 = icmp eq i32 %12, -1
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt10, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %while.body
  %20 = load i32, i32* %rv, align 4
  %cmp16 = icmp eq i32 %20, 0
  br i1 %cmp16, label %if.then.17, label %if.end.33

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call18 = call i32 @set_add_entry(%struct._setobject* %21, %struct.setentry* %an_entry)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.then.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %22 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp22, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %24, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %27(%struct._object* %28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.17
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.15
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %29 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp35, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %31, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %34(%struct._object* %35)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc45 = add i64 %36, 1
  store i64 %inc45, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end
  %37 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %cmp48 = icmp eq %struct._typeobject* %38, @PySet_Type
  br i1 %cmp48, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.46
  %39 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %cmp50 = icmp eq %struct._typeobject* %40, @PyFrozenSet_Type
  br i1 %cmp50, label %if.then.59, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false
  %41 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %call53 = call i32 @PyType_IsSubtype(%struct._typeobject* %42, %struct._typeobject* @PySet_Type)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.59, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.51
  %43 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %call57 = call i32 @PyType_IsSubtype(%struct._typeobject* %44, %struct._typeobject* @PyFrozenSet_Type)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false.51, %lor.lhs.false, %if.end.46
  %45 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt60, align 8
  %inc61 = add i64 %46, 1
  store i64 %inc61, i64* %ob_refcnt60, align 8
  %47 = load %struct._object*, %struct._object** %other.addr, align 8
  %48 = bitcast %struct._object* %47 to %struct._setobject*
  store %struct._setobject* %48, %struct._setobject** %otherset, align 8
  br label %if.end.68

if.else.62:                                       ; preds = %lor.lhs.false.55
  %49 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %50 = bitcast %struct._setobject* %49 to %struct._object*
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %52 = load %struct._object*, %struct._object** %other.addr, align 8
  %call64 = call %struct._object* @make_new_set_basetype(%struct._typeobject* %51, %struct._object* %52)
  %53 = bitcast %struct._object* %call64 to %struct._setobject*
  store %struct._setobject* %53, %struct._setobject** %otherset, align 8
  %54 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %cmp65 = icmp eq %struct._setobject* %54, null
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.else.62
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.else.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.59
  br label %while.cond.69

while.cond.69:                                    ; preds = %if.end.106, %if.end.68
  %55 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %call70 = call i32 @set_next(%struct._setobject* %55, i64* %pos, %struct.setentry** %entry1)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %while.body.72, label %while.end.107

while.body.72:                                    ; preds = %while.cond.69
  %56 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %57 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %call74 = call i32 @set_discard_entry(%struct._setobject* %56, %struct.setentry* %57)
  store i32 %call74, i32* %rv73, align 4
  %58 = load i32, i32* %rv73, align 4
  %cmp75 = icmp eq i32 %58, -1
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %while.body.72
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %59 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %60 = bitcast %struct._setobject* %59 to %struct._object*
  store %struct._object* %60, %struct._object** %_py_decref_tmp78, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %62, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %65(%struct._object* %66)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.88:                                        ; preds = %while.body.72
  %67 = load i32, i32* %rv73, align 4
  %cmp89 = icmp eq i32 %67, 0
  br i1 %cmp89, label %if.then.90, label %if.end.106

if.then.90:                                       ; preds = %if.end.88
  %68 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %69 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %call91 = call i32 @set_add_entry(%struct._setobject* %68, %struct.setentry* %69)
  %cmp92 = icmp eq i32 %call91, -1
  br i1 %cmp92, label %if.then.93, label %if.end.105

if.then.93:                                       ; preds = %if.then.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %70 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %71 = bitcast %struct._setobject* %70 to %struct._object*
  store %struct._object* %71, %struct._object** %_py_decref_tmp95, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %73, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.94
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.94
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %76(%struct._object* %77)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.105:                                       ; preds = %if.then.90
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.88
  br label %while.cond.69

while.end.107:                                    ; preds = %while.cond.69
  br label %do.body.108

do.body.108:                                      ; preds = %while.end.107
  %78 = load %struct._setobject*, %struct._setobject** %otherset, align 8
  %79 = bitcast %struct._setobject* %78 to %struct._object*
  store %struct._object* %79, %struct._object** %_py_decref_tmp109, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %81, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.108
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.108
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %84(%struct._object* %85)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  %86 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc119 = add i64 %86, 1
  store i64 %inc119, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.118, %do.end.104, %do.end.87, %if.then.66, %while.end, %do.end.31, %do.end, %if.then
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_clear(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call i32 @set_clear_internal(%struct._setobject* %0)
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare i32 @_PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**, i64*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_intersection_update(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %other.addr, align 8
  %call = call %struct._object* @set_intersection(%struct._setobject* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %5 = bitcast %struct._object* %4 to %struct._setobject*
  call void @set_swap_bodies(%struct._setobject* %3, %struct._setobject* %5)
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal void @set_swap_bodies(%struct._setobject* %a, %struct._setobject* %b) #0 {
entry:
  %a.addr = alloca %struct._setobject*, align 8
  %b.addr = alloca %struct._setobject*, align 8
  %t = alloca i64, align 8
  %u = alloca %struct.setentry*, align 8
  %f = alloca %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, align 8
  %tab = alloca [8 x %struct.setentry], align 16
  %h = alloca i64, align 8
  store %struct._setobject* %a, %struct._setobject** %a.addr, align 8
  store %struct._setobject* %b, %struct._setobject** %b.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 1
  %1 = load i64, i64* %fill, align 8
  store i64 %1, i64* %t, align 8
  %2 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %fill1 = getelementptr inbounds %struct._setobject, %struct._setobject* %2, i32 0, i32 1
  %3 = load i64, i64* %fill1, align 8
  %4 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %fill2 = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 1
  store i64 %3, i64* %fill2, align 8
  %5 = load i64, i64* %t, align 8
  %6 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %fill3 = getelementptr inbounds %struct._setobject, %struct._setobject* %6, i32 0, i32 1
  store i64 %5, i64* %fill3, align 8
  %7 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 2
  %8 = load i64, i64* %used, align 8
  store i64 %8, i64* %t, align 8
  %9 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %used4 = getelementptr inbounds %struct._setobject, %struct._setobject* %9, i32 0, i32 2
  %10 = load i64, i64* %used4, align 8
  %11 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %used5 = getelementptr inbounds %struct._setobject, %struct._setobject* %11, i32 0, i32 2
  store i64 %10, i64* %used5, align 8
  %12 = load i64, i64* %t, align 8
  %13 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %used6 = getelementptr inbounds %struct._setobject, %struct._setobject* %13, i32 0, i32 2
  store i64 %12, i64* %used6, align 8
  %14 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %14, i32 0, i32 3
  %15 = load i64, i64* %mask, align 8
  store i64 %15, i64* %t, align 8
  %16 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %mask7 = getelementptr inbounds %struct._setobject, %struct._setobject* %16, i32 0, i32 3
  %17 = load i64, i64* %mask7, align 8
  %18 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %mask8 = getelementptr inbounds %struct._setobject, %struct._setobject* %18, i32 0, i32 3
  store i64 %17, i64* %mask8, align 8
  %19 = load i64, i64* %t, align 8
  %20 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %mask9 = getelementptr inbounds %struct._setobject, %struct._setobject* %20, i32 0, i32 3
  store i64 %19, i64* %mask9, align 8
  %21 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %21, i32 0, i32 4
  %22 = load %struct.setentry*, %struct.setentry** %table, align 8
  store %struct.setentry* %22, %struct.setentry** %u, align 8
  %23 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %table10 = getelementptr inbounds %struct._setobject, %struct._setobject* %23, i32 0, i32 4
  %24 = load %struct.setentry*, %struct.setentry** %table10, align 8
  %25 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %25, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable, i32 0, i32 0
  %cmp = icmp eq %struct.setentry* %24, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %smalltable11 = getelementptr inbounds %struct._setobject, %struct._setobject* %26, i32 0, i32 7
  %arraydecay12 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable11, i32 0, i32 0
  store %struct.setentry* %arraydecay12, %struct.setentry** %u, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %table13 = getelementptr inbounds %struct._setobject, %struct._setobject* %27, i32 0, i32 4
  %28 = load %struct.setentry*, %struct.setentry** %table13, align 8
  %29 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %table14 = getelementptr inbounds %struct._setobject, %struct._setobject* %29, i32 0, i32 4
  store %struct.setentry* %28, %struct.setentry** %table14, align 8
  %30 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %table15 = getelementptr inbounds %struct._setobject, %struct._setobject* %30, i32 0, i32 4
  %31 = load %struct.setentry*, %struct.setentry** %table15, align 8
  %32 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %smalltable16 = getelementptr inbounds %struct._setobject, %struct._setobject* %32, i32 0, i32 7
  %arraydecay17 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable16, i32 0, i32 0
  %cmp18 = icmp eq %struct.setentry* %31, %arraydecay17
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end
  %33 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %smalltable20 = getelementptr inbounds %struct._setobject, %struct._setobject* %33, i32 0, i32 7
  %arraydecay21 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable20, i32 0, i32 0
  %34 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %table22 = getelementptr inbounds %struct._setobject, %struct._setobject* %34, i32 0, i32 4
  store %struct.setentry* %arraydecay21, %struct.setentry** %table22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end
  %35 = load %struct.setentry*, %struct.setentry** %u, align 8
  %36 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %table24 = getelementptr inbounds %struct._setobject, %struct._setobject* %36, i32 0, i32 4
  store %struct.setentry* %35, %struct.setentry** %table24, align 8
  %37 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %37, i32 0, i32 5
  %38 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  store %struct.setentry* (%struct._setobject*, %struct._object*, i64)* %38, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %f, align 8
  %39 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %lookup25 = getelementptr inbounds %struct._setobject, %struct._setobject* %39, i32 0, i32 5
  %40 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup25, align 8
  %41 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %lookup26 = getelementptr inbounds %struct._setobject, %struct._setobject* %41, i32 0, i32 5
  store %struct.setentry* (%struct._setobject*, %struct._object*, i64)* %40, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup26, align 8
  %42 = load %struct.setentry* (%struct._setobject*, %struct._object*, i64)*, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %f, align 8
  %43 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %lookup27 = getelementptr inbounds %struct._setobject, %struct._setobject* %43, i32 0, i32 5
  store %struct.setentry* (%struct._setobject*, %struct._object*, i64)* %42, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup27, align 8
  %44 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %table28 = getelementptr inbounds %struct._setobject, %struct._setobject* %44, i32 0, i32 4
  %45 = load %struct.setentry*, %struct.setentry** %table28, align 8
  %46 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %smalltable29 = getelementptr inbounds %struct._setobject, %struct._setobject* %46, i32 0, i32 7
  %arraydecay30 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable29, i32 0, i32 0
  %cmp31 = icmp eq %struct.setentry* %45, %arraydecay30
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %47 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %table32 = getelementptr inbounds %struct._setobject, %struct._setobject* %47, i32 0, i32 4
  %48 = load %struct.setentry*, %struct.setentry** %table32, align 8
  %49 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %smalltable33 = getelementptr inbounds %struct._setobject, %struct._setobject* %49, i32 0, i32 7
  %arraydecay34 = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable33, i32 0, i32 0
  %cmp35 = icmp eq %struct.setentry* %48, %arraydecay34
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %lor.lhs.false, %if.end.23
  %50 = bitcast [8 x %struct.setentry]* %tab to i8*
  %51 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %smalltable37 = getelementptr inbounds %struct._setobject, %struct._setobject* %51, i32 0, i32 7
  %52 = bitcast [8 x %struct.setentry]* %smalltable37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %52, i64 128, i32 8, i1 false)
  %53 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %smalltable38 = getelementptr inbounds %struct._setobject, %struct._setobject* %53, i32 0, i32 7
  %54 = bitcast [8 x %struct.setentry]* %smalltable38 to i8*
  %55 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %smalltable39 = getelementptr inbounds %struct._setobject, %struct._setobject* %55, i32 0, i32 7
  %56 = bitcast [8 x %struct.setentry]* %smalltable39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %56, i64 128, i32 8, i1 false)
  %57 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %smalltable40 = getelementptr inbounds %struct._setobject, %struct._setobject* %57, i32 0, i32 7
  %58 = bitcast [8 x %struct.setentry]* %smalltable40 to i8*
  %59 = bitcast [8 x %struct.setentry]* %tab to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 128, i32 8, i1 false)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %lor.lhs.false
  %60 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %61 = bitcast %struct._setobject* %60 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %62, %struct._typeobject* @PyFrozenSet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.41
  %63 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %64 = bitcast %struct._setobject* %63 to %struct._object*
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %call43 = call i32 @PyType_IsSubtype(%struct._typeobject* %65, %struct._typeobject* @PyFrozenSet_Type)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true
  %66 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %hash = getelementptr inbounds %struct._setobject, %struct._setobject* %66, i32 0, i32 6
  %67 = load i64, i64* %hash, align 8
  store i64 %67, i64* %h, align 8
  %68 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %hash46 = getelementptr inbounds %struct._setobject, %struct._setobject* %68, i32 0, i32 6
  %69 = load i64, i64* %hash46, align 8
  %70 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %hash47 = getelementptr inbounds %struct._setobject, %struct._setobject* %70, i32 0, i32 6
  store i64 %69, i64* %hash47, align 8
  %71 = load i64, i64* %h, align 8
  %72 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %hash48 = getelementptr inbounds %struct._setobject, %struct._setobject* %72, i32 0, i32 6
  store i64 %71, i64* %hash48, align 8
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true, %if.end.41
  %73 = load %struct._setobject*, %struct._setobject** %a.addr, align 8
  %hash49 = getelementptr inbounds %struct._setobject, %struct._setobject* %73, i32 0, i32 6
  store i64 -1, i64* %hash49, align 8
  %74 = load %struct._setobject*, %struct._setobject** %b.addr, align 8
  %hash50 = getelementptr inbounds %struct._setobject, %struct._setobject* %74, i32 0, i32 6
  store i64 -1, i64* %hash50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.45
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @set_len(%struct._object* %so) #0 {
entry:
  %so.addr = alloca %struct._object*, align 8
  store %struct._object* %so, %struct._object** %so.addr, align 8
  %0 = load %struct._object*, %struct._object** %so.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._setobject*
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %1, i32 0, i32 2
  %2 = load i64, i64* %used, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @set_contains(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %tmpkey = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @set_contains_key(%struct._setobject* %0, %struct._object* %1)
  store i32 %call, i32* %rv, align 4
  %2 = load i32, i32* %rv, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %4, @PySet_Type
  br i1 %cmp1, label %lor.lhs.false.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.lhs.false.4, label %if.then.7

lor.lhs.false.4:                                  ; preds = %lor.lhs.false, %if.then
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  call void @PyErr_Clear()
  %8 = load %struct._object*, %struct._object** %key.addr, align 8
  %call8 = call %struct._object* @make_new_set(%struct._typeobject* @PyFrozenSet_Type, %struct._object* %8)
  store %struct._object* %call8, %struct._object** %tmpkey, align 8
  %9 = load %struct._object*, %struct._object** %tmpkey, align 8
  %cmp9 = icmp eq %struct._object* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = load %struct._object*, %struct._object** %tmpkey, align 8
  %call12 = call i32 @set_contains_key(%struct._setobject* %10, %struct._object* %11)
  store i32 %call12, i32* %rv, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %12 = load %struct._object*, %struct._object** %tmpkey, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %entry
  %19 = load i32, i32* %rv, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.10, %if.then.7
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal void @set_empty_to_minsize(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 7
  %1 = bitcast [8 x %struct.setentry]* %smalltable to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 128, i32 8, i1 false)
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %2, i32 0, i32 1
  store i64 0, i64* %fill, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 3
  store i64 7, i64* %mask, align 8
  %5 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable1 = getelementptr inbounds %struct._setobject, %struct._setobject* %5, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable1, i32 0, i32 0
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %6, i32 0, i32 4
  store %struct.setentry* %arraydecay, %struct.setentry** %table, align 8
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %hash = getelementptr inbounds %struct._setobject, %struct._setobject* %7, i32 0, i32 6
  store i64 -1, i64* %hash, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_issubset(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %pos = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp3, label %if.end.20, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.20, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %call8 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.20, label %if.then

if.then:                                          ; preds = %lor.lhs.false.6
  %8 = load %struct._object*, %struct._object** %other.addr, align 8
  %call11 = call %struct._object* @make_new_set(%struct._typeobject* @PySet_Type, %struct._object* %8)
  store %struct._object* %call11, %struct._object** %tmp, align 8
  %9 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp12 = icmp eq %struct._object* %9, null
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  %call14 = call %struct._object* @set_issubset(%struct._setobject* %10, %struct._object* %11)
  store %struct._object* %call14, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  %20 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %20, i32 0, i32 2
  %21 = load i64, i64* %used, align 8
  %22 = load %struct._object*, %struct._object** %other.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct._setobject*
  %used21 = getelementptr inbounds %struct._setobject, %struct._setobject* %23, i32 0, i32 2
  %24 = load i64, i64* %used21, align 8
  %cmp22 = icmp sgt i64 %21, %24
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %25 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end.24
  %26 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call25 = call i32 @set_next(%struct._setobject* %26, i64* %pos, %struct.setentry** %entry1)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct._object*, %struct._object** %other.addr, align 8
  %28 = bitcast %struct._object* %27 to %struct._setobject*
  %29 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %call28 = call i32 @set_contains_entry(%struct._setobject* %28, %struct.setentry* %29)
  store i32 %call28, i32* %rv, align 4
  %30 = load i32, i32* %rv, align 4
  %cmp29 = icmp eq i32 %30, -1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %while.body
  %31 = load i32, i32* %rv, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %32 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc34 = add i64 %32, 1
  store i64 %inc34, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc36 = add i64 %33, 1
  store i64 %inc36, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.33, %if.then.30, %if.then.23, %do.end, %if.then.13
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @PyObject_Not(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_issuperset(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySet_Type
  br i1 %cmp, label %if.end.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %3, @PyFrozenSet_Type
  br i1 %cmp3, label %if.end.19, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.19, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %call8 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFrozenSet_Type)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.19, label %if.then

if.then:                                          ; preds = %lor.lhs.false.6
  %8 = load %struct._object*, %struct._object** %other.addr, align 8
  %call10 = call %struct._object* @make_new_set(%struct._typeobject* @PySet_Type, %struct._object* %8)
  store %struct._object* %call10, %struct._object** %tmp, align 8
  %9 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp11 = icmp eq %struct._object* %9, null
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  %call13 = call %struct._object* @set_issuperset(%struct._setobject* %10, %struct._object* %11)
  store %struct._object* %call13, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  %20 = load %struct._object*, %struct._object** %other.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct._setobject*
  %22 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %23 = bitcast %struct._setobject* %22 to %struct._object*
  %call20 = call %struct._object* @set_issubset(%struct._setobject* %21, %struct._object* %23)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %do.end, %if.then.12
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_add(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @set_add_key(%struct._setobject* %0, %struct._object* %1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_direct_contains(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @set_contains(%struct._setobject* %0, %struct._object* %1)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %result, align 8
  %2 = load i64, i64* %result, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %result, align 8
  %call2 = call %struct._object* @PyBool_FromLong(i64 %3)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_discard(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %tmpkey = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @set_discard_key(%struct._setobject* %0, %struct._object* %1)
  store i32 %call, i32* %rv, align 4
  %2 = load i32, i32* %rv, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %4, @PySet_Type
  br i1 %cmp1, label %lor.lhs.false.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.lhs.false.4, label %if.then.7

lor.lhs.false.4:                                  ; preds = %lor.lhs.false, %if.then
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  call void @PyErr_Clear()
  %8 = load %struct._object*, %struct._object** %key.addr, align 8
  %call8 = call %struct._object* @make_new_set(%struct._typeobject* @PyFrozenSet_Type, %struct._object* %8)
  store %struct._object* %call8, %struct._object** %tmpkey, align 8
  %9 = load %struct._object*, %struct._object** %tmpkey, align 8
  %cmp9 = icmp eq %struct._object* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = load %struct._object*, %struct._object** %tmpkey, align 8
  %call12 = call i32 @set_discard_key(%struct._setobject* %10, %struct._object* %11)
  store i32 %call12, i32* %rv, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %12 = load %struct._object*, %struct._object** %tmpkey, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %19 = load i32, i32* %rv, align 4
  %cmp17 = icmp eq i32 %19, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.10, %if.then.7
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_difference_multi(%struct._setobject* %so, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %other = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_copy(%struct._setobject* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %6, %struct._object** %other, align 8
  %7 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %8 = load %struct._object*, %struct._object** %other, align 8
  %call1 = call %struct._object* @set_difference(%struct._setobject* %7, %struct._object* %8)
  store %struct._object* %call1, %struct._object** %result, align 8
  %9 = load %struct._object*, %struct._object** %result, align 8
  %cmp2 = icmp eq %struct._object* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i64, i64* %i, align 8
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size5, align 8
  %cmp6 = icmp slt i64 %10, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 %14
  %17 = load %struct._object*, %struct._object** %arrayidx8, align 8
  store %struct._object* %17, %struct._object** %other, align 8
  %18 = load %struct._object*, %struct._object** %result, align 8
  %19 = bitcast %struct._object* %18 to %struct._setobject*
  %20 = load %struct._object*, %struct._object** %other, align 8
  %call9 = call i32 @set_difference_update_internal(%struct._setobject* %19, %struct._object* %20)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.3, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_difference_update(%struct._setobject* %so, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %other = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %other, align 8
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %9 = load %struct._object*, %struct._object** %other, align 8
  %call = call i32 @set_difference_update_internal(%struct._setobject* %8, %struct._object* %9)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc2 = add i64 %11, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_intersection_multi(%struct._setobject* %so, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %other = alloca %struct._object*, align 8
  %newresult = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_copy(%struct._setobject* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size1, align 8
  %cmp2 = icmp slt i64 %9, %12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load %struct._object*, %struct._object** %args.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %13
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %other, align 8
  %17 = load %struct._object*, %struct._object** %result, align 8
  %18 = bitcast %struct._object* %17 to %struct._setobject*
  %19 = load %struct._object*, %struct._object** %other, align 8
  %call3 = call %struct._object* @set_intersection(%struct._setobject* %18, %struct._object* %19)
  store %struct._object* %call3, %struct._object** %newresult, align 8
  %20 = load %struct._object*, %struct._object** %newresult, align 8
  %cmp4 = icmp eq %struct._object* %20, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt6, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt6, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.10
  %28 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp12, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %30, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %33(%struct._object* %34)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %35 = load %struct._object*, %struct._object** %newresult, align 8
  store %struct._object* %35, %struct._object** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.21
  %36 = load i64, i64* %i, align 8
  %inc22 = add i64 %36, 1
  store i64 %inc22, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_intersection_update_multi(%struct._setobject* %so, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @set_intersection_multi(%struct._setobject* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %5 = bitcast %struct._object* %4 to %struct._setobject*
  call void @set_swap_bodies(%struct._setobject* %3, %struct._setobject* %5)
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_isdisjoint(%struct._setobject* %so, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %entry10 = alloca %struct.setentry*, align 8
  %rv = alloca i32, align 4
  %rv36 = alloca i32, align 4
  %entry38 = alloca %struct.setentry, align 8
  %hash = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %cmp = icmp eq %struct._object* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc3 = add i64 %6, 1
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %8, @PySet_Type
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %cmp6 = icmp eq %struct._typeobject* %10, @PyFrozenSet_Type
  br i1 %cmp6, label %if.then.7, label %if.end.26

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store i64 0, i64* %pos, align 8
  %11 = load %struct._object*, %struct._object** %other.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct._setobject*
  %used11 = getelementptr inbounds %struct._setobject, %struct._setobject* %12, i32 0, i32 2
  %13 = load i64, i64* %used11, align 8
  %14 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used12 = getelementptr inbounds %struct._setobject, %struct._setobject* %14, i32 0, i32 2
  %15 = load i64, i64* %used12, align 8
  %cmp13 = icmp sgt i64 %13, %15
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.7
  %16 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %17 = bitcast %struct._setobject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %tmp, align 8
  %18 = load %struct._object*, %struct._object** %other.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct._setobject*
  store %struct._setobject* %19, %struct._setobject** %so.addr, align 8
  %20 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %20, %struct._object** %other.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.7
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.15
  %21 = load %struct._object*, %struct._object** %other.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct._setobject*
  %call = call i32 @set_next(%struct._setobject* %22, i64* %pos, %struct.setentry** %entry10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %24 = load %struct.setentry*, %struct.setentry** %entry10, align 8
  %call17 = call i32 @set_contains_entry(%struct._setobject* %23, %struct.setentry* %24)
  store i32 %call17, i32* %rv, align 4
  %25 = load i32, i32* %rv, align 4
  %cmp18 = icmp eq i32 %25, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %while.body
  %26 = load i32, i32* %rv, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %27 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc23 = add i64 %27, 1
  store i64 %inc23, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc25 = add i64 %28, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false
  %29 = load %struct._object*, %struct._object** %other.addr, align 8
  %call27 = call %struct._object* @PyObject_GetIter(%struct._object* %29)
  store %struct._object* %call27, %struct._object** %it, align 8
  %30 = load %struct._object*, %struct._object** %it, align 8
  %cmp28 = icmp eq %struct._object* %30, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  br label %while.cond.31

while.cond.31:                                    ; preds = %if.end.107, %if.end.30
  %31 = load %struct._object*, %struct._object** %it, align 8
  %call32 = call %struct._object* @PyIter_Next(%struct._object* %31)
  store %struct._object* %call32, %struct._object** %key, align 8
  %cmp33 = icmp ne %struct._object* %call32, null
  br i1 %cmp33, label %while.body.34, label %while.end.108

while.body.34:                                    ; preds = %while.cond.31
  %32 = load %struct._object*, %struct._object** %key, align 8
  %call40 = call i64 @PyObject_Hash(%struct._object* %32)
  store i64 %call40, i64* %hash, align 8
  %33 = load i64, i64* %hash, align 8
  %cmp41 = icmp eq i64 %33, -1
  br i1 %cmp41, label %if.then.42, label %if.end.61

if.then.42:                                       ; preds = %while.body.34
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %34 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp44 = icmp ne i64 %dec, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body
  br label %if.end.48

if.else.46:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end

do.end:                                           ; preds = %if.end.48
  br label %do.body.49

do.body.49:                                       ; preds = %do.end
  %41 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp51, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %43, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.49
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %46(%struct._object* %47)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %while.body.34
  %48 = load i64, i64* %hash, align 8
  %hash62 = getelementptr inbounds %struct.setentry, %struct.setentry* %entry38, i32 0, i32 1
  store i64 %48, i64* %hash62, align 8
  %49 = load %struct._object*, %struct._object** %key, align 8
  %key63 = getelementptr inbounds %struct.setentry, %struct.setentry* %entry38, i32 0, i32 0
  store %struct._object* %49, %struct._object** %key63, align 8
  %50 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call64 = call i32 @set_contains_entry(%struct._setobject* %50, %struct.setentry* %entry38)
  store i32 %call64, i32* %rv36, align 4
  br label %do.body.65

do.body.65:                                       ; preds = %if.end.61
  %51 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp67, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %53, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.65
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.65
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %56(%struct._object* %57)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %58 = load i32, i32* %rv36, align 4
  %cmp77 = icmp eq i32 %58, -1
  br i1 %cmp77, label %if.then.78, label %if.end.91

if.then.78:                                       ; preds = %do.end.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %59 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp81, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %61, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.79
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.79
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %64(%struct._object* %65)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %do.end.76
  %66 = load i32, i32* %rv36, align 4
  %tobool92 = icmp ne i32 %66, 0
  br i1 %tobool92, label %if.then.93, label %if.end.107

if.then.93:                                       ; preds = %if.end.91
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %67 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp96, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %69, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.94
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.94
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %72(%struct._object* %73)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  %74 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc106 = add i64 %74, 1
  store i64 %inc106, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.91
  br label %while.cond.31

while.end.108:                                    ; preds = %while.cond.31
  br label %do.body.109

do.body.109:                                      ; preds = %while.end.108
  %75 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp111, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %77, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %do.body.109
  br label %if.end.119

if.else.116:                                      ; preds = %do.body.109
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %80(%struct._object* %81)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  %call121 = call %struct._object* @PyErr_Occurred()
  %tobool122 = icmp ne %struct._object* %call121, null
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %do.end.120
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.124:                                       ; preds = %do.end.120
  %82 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc125 = add i64 %82, 1
  store i64 %inc125, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then.123, %do.end.105, %do.end.90, %do.end.60, %if.then.29, %while.end, %if.then.22, %if.then.19, %if.else, %if.then.2
  %83 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %83
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_reduce(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  %keys = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* null, %struct._object** %keys, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %dict, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %call = call %struct._object* @PySequence_List(%struct._object* %1)
  store %struct._object* %call, %struct._object** %keys, align 8
  %2 = load %struct._object*, %struct._object** %keys, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %keys, align 8
  %call1 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %done

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %6 = bitcast %struct._setobject* %5 to %struct._object*
  %call5 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %6, %struct._Py_Identifier* @set_reduce.PyId___dict__)
  store %struct._object* %call5, %struct._object** %dict, align 8
  %7 = load %struct._object*, %struct._object** %dict, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @PyErr_Clear()
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8
  %8 = load %struct._object*, %struct._object** %dict, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = bitcast %struct._setobject* %10 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %14 = load %struct._object*, %struct._object** %dict, align 8
  %call9 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._typeobject* %12, %struct._object* %13, %struct._object* %14)
  store %struct._object* %call9, %struct._object** %result, align 8
  br label %done

done:                                             ; preds = %if.end.8, %if.then.3, %if.then
  br label %do.body

do.body:                                          ; preds = %done
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %16, null
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.17

if.else:                                          ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %24 = load %struct._object*, %struct._object** %keys, align 8
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp21, align 8
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp21, align 8
  %cmp22 = icmp ne %struct._object* %25, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %do.body.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp21, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %28, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %31(%struct._object* %32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34, %do.body.20
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %33 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp38, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8
  %cmp39 = icmp ne %struct._object* %34, null
  br i1 %cmp39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %do.body.37
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp42, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %37, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %40(%struct._object* %41)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %do.body.37
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %42 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_remove(%struct._setobject* %so, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %tmpkey = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @set_discard_key(%struct._setobject* %0, %struct._object* %1)
  store i32 %call, i32* %rv, align 4
  %2 = load i32, i32* %rv, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %4, @PySet_Type
  br i1 %cmp1, label %lor.lhs.false.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PySet_Type)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.lhs.false.4, label %if.then.7

lor.lhs.false.4:                                  ; preds = %lor.lhs.false, %if.then
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  call void @PyErr_Clear()
  %8 = load %struct._object*, %struct._object** %key.addr, align 8
  %call8 = call %struct._object* @make_new_set(%struct._typeobject* @PyFrozenSet_Type, %struct._object* %8)
  store %struct._object* %call8, %struct._object** %tmpkey, align 8
  %9 = load %struct._object*, %struct._object** %tmpkey, align 8
  %cmp9 = icmp eq %struct._object* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %11 = load %struct._object*, %struct._object** %tmpkey, align 8
  %call12 = call i32 @set_discard_key(%struct._setobject* %10, %struct._object* %11)
  store i32 %call12, i32* %rv, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %12 = load %struct._object*, %struct._object** %tmpkey, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %19 = load i32, i32* %rv, align 4
  %cmp17 = icmp eq i32 %19, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %20 = load i32, i32* %rv, align 4
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %21 = load %struct._object*, %struct._object** %key.addr, align 8
  call void @_PyErr_SetKeyError(%struct._object* %21)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.18, %if.then.10, %if.then.7
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_sizeof(%struct._setobject* %so) #0 {
entry:
  %so.addr = alloca %struct._setobject*, align 8
  %res = alloca i64, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store i64 200, i64* %res, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 4
  %1 = load %struct.setentry*, %struct.setentry** %table, align 8
  %2 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %smalltable = getelementptr inbounds %struct._setobject, %struct._setobject* %2, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.setentry], [8 x %struct.setentry]* %smalltable, i32 0, i32 0
  %cmp = icmp ne %struct.setentry* %1, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %res, align 8
  %4 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 3
  %5 = load i64, i64* %mask, align 8
  %add = add i64 %5, 1
  %mul = mul i64 %add, 16
  %add1 = add i64 %3, %mul
  store i64 %add1, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_union(%struct._setobject* %so, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._setobject*, align 8
  %other = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_copy(%struct._setobject* %0)
  %1 = bitcast %struct._object* %call to %struct._setobject*
  store %struct._setobject* %1, %struct._setobject** %result, align 8
  %2 = load %struct._setobject*, %struct._setobject** %result, align 8
  %cmp = icmp eq %struct._setobject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %3, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %7
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %10, %struct._object** %other, align 8
  %11 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %12 = bitcast %struct._setobject* %11 to %struct._object*
  %13 = load %struct._object*, %struct._object** %other, align 8
  %cmp2 = icmp eq %struct._object* %12, %13
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.inc

if.end.4:                                         ; preds = %for.body
  %14 = load %struct._setobject*, %struct._setobject** %result, align 8
  %15 = load %struct._object*, %struct._object** %other, align 8
  %call5 = call i32 @set_update_internal(%struct._setobject* %14, %struct._object* %15)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %16 = load %struct._setobject*, %struct._setobject** %result, align 8
  %17 = bitcast %struct._setobject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.11, %if.then.3
  %24 = load i64, i64* %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._setobject*, %struct._setobject** %result, align 8
  %26 = bitcast %struct._setobject* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_update(%struct._setobject* %so, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %other = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %other, align 8
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %9 = load %struct._object*, %struct._object** %other, align 8
  %call = call i32 @set_update_internal(%struct._setobject* %8, %struct._object* %9)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc2 = add i64 %11, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare void @_PyErr_SetKeyError(%struct._object*) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @frozenset_copy(%struct._setobject* %so) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %1 = bitcast %struct._setobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyFrozenSet_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %4 = bitcast %struct._setobject* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %7 = bitcast %struct._setobject* %6 to %struct._object*
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %call = call %struct._object* @set_copy(%struct._setobject* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct.setentry* @set_lookkey_unicode(%struct._setobject* %so, %struct._object* %key, i64 %hash) #0 {
entry:
  %retval = alloca %struct.setentry*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %table = alloca %struct.setentry*, align 8
  %freeslot = alloca %struct.setentry*, align 8
  %entry2 = alloca %struct.setentry*, align 8
  %perturb = alloca i64, align 8
  %mask = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table1 = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 4
  %1 = load %struct.setentry*, %struct.setentry** %table1, align 8
  store %struct.setentry* %1, %struct.setentry** %table, align 8
  store %struct.setentry* null, %struct.setentry** %freeslot, align 8
  %2 = load i64, i64* %hash.addr, align 8
  store i64 %2, i64* %perturb, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask3 = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 3
  %4 = load i64, i64* %mask3, align 8
  store i64 %4, i64* %mask, align 8
  %5 = load i64, i64* %hash.addr, align 8
  store i64 %5, i64* %i, align 8
  %6 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %7, @PyUnicode_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %lookup = getelementptr inbounds %struct._setobject, %struct._setobject* %8, i32 0, i32 5
  store %struct.setentry* (%struct._setobject*, %struct._object*, i64)* @set_lookkey, %struct.setentry* (%struct._setobject*, %struct._object*, i64)** %lookup, align 8
  %9 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = load i64, i64* %hash.addr, align 8
  %call = call %struct.setentry* @set_lookkey(%struct._setobject* %9, %struct._object* %10, i64 %11)
  store %struct.setentry* %call, %struct.setentry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %mask, align 8
  %and = and i64 %12, %13
  %14 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %14, i64 %and
  store %struct.setentry* %arrayidx, %struct.setentry** %entry2, align 8
  %15 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key4 = getelementptr inbounds %struct.setentry, %struct.setentry* %15, i32 0, i32 0
  %16 = load %struct._object*, %struct._object** %key4, align 8
  %cmp5 = icmp eq %struct._object* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %17, %struct.setentry** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.7, %if.end.59
  %18 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key8 = getelementptr inbounds %struct.setentry, %struct.setentry* %18, i32 0, i32 0
  %19 = load %struct._object*, %struct._object** %key8, align 8
  %20 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp9 = icmp eq %struct._object* %19, %20
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %21 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %hash10 = getelementptr inbounds %struct.setentry, %struct.setentry* %21, i32 0, i32 1
  %22 = load i64, i64* %hash10, align 8
  %23 = load i64, i64* %hash.addr, align 8
  %cmp11 = icmp eq i64 %22, %23
  br i1 %cmp11, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false
  %24 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key12 = getelementptr inbounds %struct.setentry, %struct.setentry* %24, i32 0, i32 0
  %25 = load %struct._object*, %struct._object** %key12, align 8
  %cmp13 = icmp ne %struct._object* %25, @_dummy_struct
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %26 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key15 = getelementptr inbounds %struct.setentry, %struct.setentry* %26, i32 0, i32 0
  %27 = load %struct._object*, %struct._object** %key15, align 8
  %28 = load %struct._object*, %struct._object** %key.addr, align 8
  %call16 = call i32 @unicode_eq(%struct._object* %27, %struct._object* %28)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.14, %while.body
  %29 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %29, %struct.setentry** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.14, %land.lhs.true, %lor.lhs.false
  %30 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key19 = getelementptr inbounds %struct.setentry, %struct.setentry* %30, i32 0, i32 0
  %31 = load %struct._object*, %struct._object** %key19, align 8
  %cmp20 = icmp eq %struct._object* %31, @_dummy_struct
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.end.18
  %32 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  %cmp22 = icmp eq %struct.setentry* %32, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.21
  %33 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %33, %struct.setentry** %freeslot, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.18
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %34 = load i64, i64* %j, align 8
  %cmp25 = icmp ule i64 %34, 9
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %j, align 8
  %add = add i64 %35, %36
  %37 = load i64, i64* %mask, align 8
  %and26 = and i64 %add, %37
  %38 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx27 = getelementptr %struct.setentry, %struct.setentry* %38, i64 %and26
  store %struct.setentry* %arrayidx27, %struct.setentry** %entry2, align 8
  %39 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key28 = getelementptr inbounds %struct.setentry, %struct.setentry* %39, i32 0, i32 0
  %40 = load %struct._object*, %struct._object** %key28, align 8
  %cmp29 = icmp eq %struct._object* %40, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body
  br label %found_null

if.end.31:                                        ; preds = %for.body
  %41 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key32 = getelementptr inbounds %struct.setentry, %struct.setentry* %41, i32 0, i32 0
  %42 = load %struct._object*, %struct._object** %key32, align 8
  %43 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp33 = icmp eq %struct._object* %42, %43
  br i1 %cmp33, label %if.then.44, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.31
  %44 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %hash35 = getelementptr inbounds %struct.setentry, %struct.setentry* %44, i32 0, i32 1
  %45 = load i64, i64* %hash35, align 8
  %46 = load i64, i64* %hash.addr, align 8
  %cmp36 = icmp eq i64 %45, %46
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.45

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34
  %47 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key38 = getelementptr inbounds %struct.setentry, %struct.setentry* %47, i32 0, i32 0
  %48 = load %struct._object*, %struct._object** %key38, align 8
  %cmp39 = icmp ne %struct._object* %48, @_dummy_struct
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %49 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key41 = getelementptr inbounds %struct.setentry, %struct.setentry* %49, i32 0, i32 0
  %50 = load %struct._object*, %struct._object** %key41, align 8
  %51 = load %struct._object*, %struct._object** %key.addr, align 8
  %call42 = call i32 @unicode_eq(%struct._object* %50, %struct._object* %51)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.40, %if.end.31
  %52 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %52, %struct.setentry** %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.40, %land.lhs.true.37, %lor.lhs.false.34
  %53 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key46 = getelementptr inbounds %struct.setentry, %struct.setentry* %53, i32 0, i32 0
  %54 = load %struct._object*, %struct._object** %key46, align 8
  %cmp47 = icmp eq %struct._object* %54, @_dummy_struct
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.51

land.lhs.true.48:                                 ; preds = %if.end.45
  %55 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  %cmp49 = icmp eq %struct.setentry* %55, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.48
  %56 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %56, %struct.setentry** %freeslot, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.48, %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %57 = load i64, i64* %j, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %58, 5
  store i64 %shr, i64* %perturb, align 8
  %59 = load i64, i64* %i, align 8
  %mul = mul i64 %59, 5
  %add52 = add i64 %mul, 1
  %60 = load i64, i64* %perturb, align 8
  %add53 = add i64 %add52, %60
  store i64 %add53, i64* %i, align 8
  %61 = load i64, i64* %i, align 8
  %62 = load i64, i64* %mask, align 8
  %and54 = and i64 %61, %62
  %63 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx55 = getelementptr %struct.setentry, %struct.setentry* %63, i64 %and54
  store %struct.setentry* %arrayidx55, %struct.setentry** %entry2, align 8
  %64 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key56 = getelementptr inbounds %struct.setentry, %struct.setentry* %64, i32 0, i32 0
  %65 = load %struct._object*, %struct._object** %key56, align 8
  %cmp57 = icmp eq %struct._object* %65, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end
  br label %found_null

if.end.59:                                        ; preds = %for.end
  br label %while.body

found_null:                                       ; preds = %if.then.58, %if.then.30
  %66 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  %cmp60 = icmp eq %struct.setentry* %66, null
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %found_null
  %67 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  br label %cond.end

cond.false:                                       ; preds = %found_null
  %68 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.setentry* [ %67, %cond.true ], [ %68, %cond.false ]
  store %struct.setentry* %cond, %struct.setentry** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.44, %if.then.17, %if.then.6, %if.then
  %69 = load %struct.setentry*, %struct.setentry** %retval
  ret %struct.setentry* %69
}

; Function Attrs: nounwind uwtable
define internal %struct.setentry* @set_lookkey(%struct._setobject* %so, %struct._object* %key, i64 %hash) #0 {
entry:
  %retval = alloca %struct.setentry*, align 8
  %so.addr = alloca %struct._setobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %hash.addr = alloca i64, align 8
  %table = alloca %struct.setentry*, align 8
  %freeslot = alloca %struct.setentry*, align 8
  %entry2 = alloca %struct.setentry*, align 8
  %perturb = alloca i64, align 8
  %mask = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %cmp = alloca i32, align 4
  %startkey = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %startkey57 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  %0 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table1 = getelementptr inbounds %struct._setobject, %struct._setobject* %0, i32 0, i32 4
  %1 = load %struct.setentry*, %struct.setentry** %table1, align 8
  store %struct.setentry* %1, %struct.setentry** %table, align 8
  store %struct.setentry* null, %struct.setentry** %freeslot, align 8
  %2 = load i64, i64* %hash.addr, align 8
  store i64 %2, i64* %perturb, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask3 = getelementptr inbounds %struct._setobject, %struct._setobject* %3, i32 0, i32 3
  %4 = load i64, i64* %mask3, align 8
  store i64 %4, i64* %mask, align 8
  %5 = load i64, i64* %hash.addr, align 8
  store i64 %5, i64* %i, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %mask, align 8
  %and = and i64 %6, %7
  %8 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %8, i64 %and
  store %struct.setentry* %arrayidx, %struct.setentry** %entry2, align 8
  %9 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key4 = getelementptr inbounds %struct.setentry, %struct.setentry* %9, i32 0, i32 0
  %10 = load %struct._object*, %struct._object** %key4, align 8
  %cmp5 = icmp eq %struct._object* %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %11, %struct.setentry** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.102
  %12 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key6 = getelementptr inbounds %struct.setentry, %struct.setentry* %12, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %key6, align 8
  %14 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp7 = icmp eq %struct._object* %13, %14
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  %15 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %15, %struct.setentry** %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  %16 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %hash10 = getelementptr inbounds %struct.setentry, %struct.setentry* %16, i32 0, i32 1
  %17 = load i64, i64* %hash10, align 8
  %18 = load i64, i64* %hash.addr, align 8
  %cmp11 = icmp eq i64 %17, %18
  br i1 %cmp11, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.9
  %19 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key12 = getelementptr inbounds %struct.setentry, %struct.setentry* %19, i32 0, i32 0
  %20 = load %struct._object*, %struct._object** %key12, align 8
  %cmp13 = icmp ne %struct._object* %20, @_dummy_struct
  br i1 %cmp13, label %if.then.14, label %if.end.33

if.then.14:                                       ; preds = %land.lhs.true
  %21 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key15 = getelementptr inbounds %struct.setentry, %struct.setentry* %21, i32 0, i32 0
  %22 = load %struct._object*, %struct._object** %key15, align 8
  store %struct._object* %22, %struct._object** %startkey, align 8
  %23 = load %struct._object*, %struct._object** %startkey, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %25 = load %struct._object*, %struct._object** %startkey, align 8
  %26 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %25, %struct._object* %26, i32 2)
  store i32 %call, i32* %cmp, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %27 = load %struct._object*, %struct._object** %startkey, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %34 = load i32, i32* %cmp, align 4
  %cmp20 = icmp slt i32 %34, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  store %struct.setentry* null, %struct.setentry** %retval
  br label %return

if.end.22:                                        ; preds = %do.end
  %35 = load %struct.setentry*, %struct.setentry** %table, align 8
  %36 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table23 = getelementptr inbounds %struct._setobject, %struct._setobject* %36, i32 0, i32 4
  %37 = load %struct.setentry*, %struct.setentry** %table23, align 8
  %cmp24 = icmp ne %struct.setentry* %35, %37
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %38 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key25 = getelementptr inbounds %struct.setentry, %struct.setentry* %38, i32 0, i32 0
  %39 = load %struct._object*, %struct._object** %key25, align 8
  %40 = load %struct._object*, %struct._object** %startkey, align 8
  %cmp26 = icmp ne %struct._object* %39, %40
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.22
  %41 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %42 = load %struct._object*, %struct._object** %key.addr, align 8
  %43 = load i64, i64* %hash.addr, align 8
  %call28 = call %struct.setentry* @set_lookkey(%struct._setobject* %41, %struct._object* %42, i64 %43)
  store %struct.setentry* %call28, %struct.setentry** %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  %44 = load i32, i32* %cmp, align 4
  %cmp30 = icmp sgt i32 %44, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %45 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %45, %struct.setentry** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %if.end.9
  %46 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key34 = getelementptr inbounds %struct.setentry, %struct.setentry* %46, i32 0, i32 0
  %47 = load %struct._object*, %struct._object** %key34, align 8
  %cmp35 = icmp eq %struct._object* %47, @_dummy_struct
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.39

land.lhs.true.36:                                 ; preds = %if.end.33
  %48 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  %cmp37 = icmp eq %struct.setentry* %48, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.36
  %49 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %49, %struct.setentry** %freeslot, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.36, %if.end.33
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %50 = load i64, i64* %j, align 8
  %cmp40 = icmp ule i64 %50, 9
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %j, align 8
  %add = add i64 %51, %52
  %53 = load i64, i64* %mask, align 8
  %and41 = and i64 %add, %53
  %54 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx42 = getelementptr %struct.setentry, %struct.setentry* %54, i64 %and41
  store %struct.setentry* %arrayidx42, %struct.setentry** %entry2, align 8
  %55 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key43 = getelementptr inbounds %struct.setentry, %struct.setentry* %55, i32 0, i32 0
  %56 = load %struct._object*, %struct._object** %key43, align 8
  %cmp44 = icmp eq %struct._object* %56, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body
  br label %found_null

if.end.46:                                        ; preds = %for.body
  %57 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key47 = getelementptr inbounds %struct.setentry, %struct.setentry* %57, i32 0, i32 0
  %58 = load %struct._object*, %struct._object** %key47, align 8
  %59 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp48 = icmp eq %struct._object* %58, %59
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %60 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %60, %struct.setentry** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.46
  %61 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %hash51 = getelementptr inbounds %struct.setentry, %struct.setentry* %61, i32 0, i32 1
  %62 = load i64, i64* %hash51, align 8
  %63 = load i64, i64* %hash.addr, align 8
  %cmp52 = icmp eq i64 %62, %63
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.87

land.lhs.true.53:                                 ; preds = %if.end.50
  %64 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key54 = getelementptr inbounds %struct.setentry, %struct.setentry* %64, i32 0, i32 0
  %65 = load %struct._object*, %struct._object** %key54, align 8
  %cmp55 = icmp ne %struct._object* %65, @_dummy_struct
  br i1 %cmp55, label %if.then.56, label %if.end.87

if.then.56:                                       ; preds = %land.lhs.true.53
  %66 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key58 = getelementptr inbounds %struct.setentry, %struct.setentry* %66, i32 0, i32 0
  %67 = load %struct._object*, %struct._object** %key58, align 8
  store %struct._object* %67, %struct._object** %startkey57, align 8
  %68 = load %struct._object*, %struct._object** %startkey57, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %69, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  %70 = load %struct._object*, %struct._object** %startkey57, align 8
  %71 = load %struct._object*, %struct._object** %key.addr, align 8
  %call61 = call i32 @PyObject_RichCompareBool(%struct._object* %70, %struct._object* %71, i32 2)
  store i32 %call61, i32* %cmp, align 4
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.56
  %72 = load %struct._object*, %struct._object** %startkey57, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp63, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %74, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %77(%struct._object* %78)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %79 = load i32, i32* %cmp, align 4
  %cmp73 = icmp slt i32 %79, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %do.end.72
  store %struct.setentry* null, %struct.setentry** %retval
  br label %return

if.end.75:                                        ; preds = %do.end.72
  %80 = load %struct.setentry*, %struct.setentry** %table, align 8
  %81 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %table76 = getelementptr inbounds %struct._setobject, %struct._setobject* %81, i32 0, i32 4
  %82 = load %struct.setentry*, %struct.setentry** %table76, align 8
  %cmp77 = icmp ne %struct.setentry* %80, %82
  br i1 %cmp77, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.75
  %83 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key79 = getelementptr inbounds %struct.setentry, %struct.setentry* %83, i32 0, i32 0
  %84 = load %struct._object*, %struct._object** %key79, align 8
  %85 = load %struct._object*, %struct._object** %startkey57, align 8
  %cmp80 = icmp ne %struct._object* %84, %85
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %lor.lhs.false.78, %if.end.75
  %86 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %87 = load %struct._object*, %struct._object** %key.addr, align 8
  %88 = load i64, i64* %hash.addr, align 8
  %call82 = call %struct.setentry* @set_lookkey(%struct._setobject* %86, %struct._object* %87, i64 %88)
  store %struct.setentry* %call82, %struct.setentry** %retval
  br label %return

if.end.83:                                        ; preds = %lor.lhs.false.78
  %89 = load i32, i32* %cmp, align 4
  %cmp84 = icmp sgt i32 %89, 0
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.83
  %90 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %90, %struct.setentry** %retval
  br label %return

if.end.86:                                        ; preds = %if.end.83
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.53, %if.end.50
  %91 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key88 = getelementptr inbounds %struct.setentry, %struct.setentry* %91, i32 0, i32 0
  %92 = load %struct._object*, %struct._object** %key88, align 8
  %cmp89 = icmp eq %struct._object* %92, @_dummy_struct
  br i1 %cmp89, label %land.lhs.true.90, label %if.end.93

land.lhs.true.90:                                 ; preds = %if.end.87
  %93 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  %cmp91 = icmp eq %struct.setentry* %93, null
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true.90
  %94 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  store %struct.setentry* %94, %struct.setentry** %freeslot, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %land.lhs.true.90, %if.end.87
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %95 = load i64, i64* %j, align 8
  %inc94 = add i64 %95, 1
  store i64 %inc94, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load i64, i64* %perturb, align 8
  %shr = lshr i64 %96, 5
  store i64 %shr, i64* %perturb, align 8
  %97 = load i64, i64* %i, align 8
  %mul = mul i64 %97, 5
  %add95 = add i64 %mul, 1
  %98 = load i64, i64* %perturb, align 8
  %add96 = add i64 %add95, %98
  store i64 %add96, i64* %i, align 8
  %99 = load i64, i64* %i, align 8
  %100 = load i64, i64* %mask, align 8
  %and97 = and i64 %99, %100
  %101 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx98 = getelementptr %struct.setentry, %struct.setentry* %101, i64 %and97
  store %struct.setentry* %arrayidx98, %struct.setentry** %entry2, align 8
  %102 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  %key99 = getelementptr inbounds %struct.setentry, %struct.setentry* %102, i32 0, i32 0
  %103 = load %struct._object*, %struct._object** %key99, align 8
  %cmp100 = icmp eq %struct._object* %103, null
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %for.end
  br label %found_null

if.end.102:                                       ; preds = %for.end
  br label %while.body

found_null:                                       ; preds = %if.then.101, %if.then.45
  %104 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  %cmp103 = icmp eq %struct.setentry* %104, null
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %found_null
  %105 = load %struct.setentry*, %struct.setentry** %entry2, align 8
  br label %cond.end

cond.false:                                       ; preds = %found_null
  %106 = load %struct.setentry*, %struct.setentry** %freeslot, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.setentry* [ %105, %cond.true ], [ %106, %cond.false ]
  store %struct.setentry* %cond, %struct.setentry** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.85, %if.then.81, %if.then.74, %if.then.49, %if.then.31, %if.then.27, %if.then.21, %if.then.8, %if.then
  %107 = load %struct.setentry*, %struct.setentry** %retval
  ret %struct.setentry* %107
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @unicode_eq(%struct._object* %aa, %struct._object* %bb) #3 {
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
  %6 = bitcast %struct.anon* %state to i32*
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
  %11 = bitcast %struct.anon* %state1 to i32*
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
  %25 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %25, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  %26 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %27 = bitcast %struct.PyUnicodeObject* %26 to %struct.PyASCIIObject*
  %state24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 3
  %28 = bitcast %struct.anon* %state24 to i32*
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
  %31 = bitcast %struct.anon* %state31 to i32*
  %bf.load32 = load i32, i32* %31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 5
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.47

cond.true.36:                                     ; preds = %if.end.30
  %32 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %a, align 8
  %33 = bitcast %struct.PyUnicodeObject* %32 to %struct.PyASCIIObject*
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %33, i32 0, i32 3
  %34 = bitcast %struct.anon* %state37 to i32*
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
  %45 = bitcast %struct.anon* %state50 to i32*
  %bf.load51 = load i32, i32* %45, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 5
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.67

cond.true.55:                                     ; preds = %cond.end.48
  %46 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %b, align 8
  %47 = bitcast %struct.PyUnicodeObject* %46 to %struct.PyASCIIObject*
  %state56 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i32 0, i32 3
  %48 = bitcast %struct.anon* %state56 to i32*
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
  %62 = bitcast %struct.anon* %state73 to i32*
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

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @set_merge(%struct._setobject* %so, %struct._object* %otherset) #0 {
entry:
  %retval = alloca i32, align 4
  %so.addr = alloca %struct._setobject*, align 8
  %otherset.addr = alloca %struct._object*, align 8
  %other = alloca %struct._setobject*, align 8
  %key = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %i = alloca i64, align 8
  %entry1 = alloca %struct.setentry*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._setobject* %so, %struct._setobject** %so.addr, align 8
  store %struct._object* %otherset, %struct._object** %otherset.addr, align 8
  %0 = load %struct._object*, %struct._object** %otherset.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._setobject*
  store %struct._setobject* %1, %struct._setobject** %other, align 8
  %2 = load %struct._setobject*, %struct._setobject** %other, align 8
  %3 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %cmp = icmp eq %struct._setobject* %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._setobject*, %struct._setobject** %other, align 8
  %used = getelementptr inbounds %struct._setobject, %struct._setobject* %4, i32 0, i32 2
  %5 = load i64, i64* %used, align 8
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %fill = getelementptr inbounds %struct._setobject, %struct._setobject* %6, i32 0, i32 1
  %7 = load i64, i64* %fill, align 8
  %8 = load %struct._setobject*, %struct._setobject** %other, align 8
  %used3 = getelementptr inbounds %struct._setobject, %struct._setobject* %8, i32 0, i32 2
  %9 = load i64, i64* %used3, align 8
  %add = add i64 %7, %9
  %mul = mul i64 %add, 3
  %10 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %mask = getelementptr inbounds %struct._setobject, %struct._setobject* %10, i32 0, i32 3
  %11 = load i64, i64* %mask, align 8
  %add4 = add i64 %11, 1
  %mul5 = mul i64 %add4, 2
  %cmp6 = icmp sge i64 %mul, %mul5
  br i1 %cmp6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %13 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %used8 = getelementptr inbounds %struct._setobject, %struct._setobject* %13, i32 0, i32 2
  %14 = load i64, i64* %used8, align 8
  %15 = load %struct._setobject*, %struct._setobject** %other, align 8
  %used9 = getelementptr inbounds %struct._setobject, %struct._setobject* %15, i32 0, i32 2
  %16 = load i64, i64* %used9, align 8
  %add10 = add i64 %14, %16
  %mul11 = mul i64 %add10, 2
  %call = call i32 @set_table_resize(%struct._setobject* %12, i64 %mul11)
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %17 = load i64, i64* %i, align 8
  %18 = load %struct._setobject*, %struct._setobject** %other, align 8
  %mask16 = getelementptr inbounds %struct._setobject, %struct._setobject* %18, i32 0, i32 3
  %19 = load i64, i64* %mask16, align 8
  %cmp17 = icmp sle i64 %17, %19
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %i, align 8
  %21 = load %struct._setobject*, %struct._setobject** %other, align 8
  %table = getelementptr inbounds %struct._setobject, %struct._setobject* %21, i32 0, i32 4
  %22 = load %struct.setentry*, %struct.setentry** %table, align 8
  %arrayidx = getelementptr %struct.setentry, %struct.setentry* %22, i64 %20
  store %struct.setentry* %arrayidx, %struct.setentry** %entry1, align 8
  %23 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %key18 = getelementptr inbounds %struct.setentry, %struct.setentry* %23, i32 0, i32 0
  %24 = load %struct._object*, %struct._object** %key18, align 8
  store %struct._object* %24, %struct._object** %key, align 8
  %25 = load %struct.setentry*, %struct.setentry** %entry1, align 8
  %hash19 = getelementptr inbounds %struct.setentry, %struct.setentry* %25, i32 0, i32 1
  %26 = load i64, i64* %hash19, align 8
  store i64 %26, i64* %hash, align 8
  %27 = load %struct._object*, %struct._object** %key, align 8
  %cmp20 = icmp ne %struct._object* %27, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %for.body
  %28 = load %struct._object*, %struct._object** %key, align 8
  %cmp21 = icmp ne %struct._object* %28, @_dummy_struct
  br i1 %cmp21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %land.lhs.true
  %29 = load %struct._object*, %struct._object** %key, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %31 = load %struct._setobject*, %struct._setobject** %so.addr, align 8
  %32 = load %struct._object*, %struct._object** %key, align 8
  %33 = load i64, i64* %hash, align 8
  %call23 = call i32 @set_insert_key(%struct._setobject* %31, %struct._object* %32, i64 %33)
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.then.22
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %34 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt26, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt26, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.22
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %41 = load i64, i64* %i, align 8
  %inc32 = add i64 %41, 1
  store i64 %inc32, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.13, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i64 @PyDict_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @dummy_dealloc(%struct._object* %ignore) #0 {
entry:
  %ignore.addr = alloca %struct._object*, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  call void @Py_FatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0)) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dummy_repr(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0))
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139723}
!2 = !{i32 139563}
