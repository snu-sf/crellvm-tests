; ModuleID = './listobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
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
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_atomic_address = type { i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.s_MergeState = type { i64, %struct.sortslice, i64, i32, [85 x %struct.s_slice], [256 x %struct._object*] }
%struct.sortslice = type { %struct._object**, %struct._object** }
%struct.s_slice = type { %struct.sortslice, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.listiterobject = type { %struct._object, i64, %struct.PyListObject* }
%struct.listreviterobject = type { %struct._object, i64, %struct.PyListObject* }

@numfree = internal global i32 0, align 4
@free_list = internal global [80 x %struct.PyListObject*] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"free PyListObject\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Objects/listobject.c\00", align 1
@PyList_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.PyListObject*)* @list_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyListObject*)* @list_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @list_as_sequence, %struct.PyMappingMethods* @list_as_mapping, i64 (%struct._object*)* @PyObject_HashNotImplemented, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 33833984, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @list_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyListObject*, i32 (%struct._object*, i8*)*, i8*)* @list_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyListObject*)* @list_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @list_richcompare, i64 0, %struct._object* (%struct._object*)* @list_iter, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([15 x %struct.PyMethodDef], [15 x %struct.PyMethodDef]* @list_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyListObject*, %struct._object*, %struct._object*)* @list_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@indexerr = internal global %struct._object* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"list index out of range\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"list assignment index out of range\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@list_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyListObject*)* @list_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @list_concat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyListObject*, i64)* @list_repeat to %struct._object* (%struct._object*, i64)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyListObject*, i64)* @list_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* bitcast (i32 (%struct.PyListObject*, i64, %struct._object*)* @list_ass_item to i32 (%struct._object*, i64, %struct._object*)*), i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.PyListObject*, %struct._object*)* @list_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @list_inplace_concat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyListObject*, i64)* @list_inplace_repeat to %struct._object* (%struct._object*, i64)*) }, align 8
@list_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyListObject*)* @list_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @list_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyListObject*, %struct._object*, %struct._object*)* @list_ass_subscript to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@list_doc = internal global [86 x i8] c"list() -> new empty list\0Alist(iterable) -> new list initialized from iterable's items\00", align 16
@list_methods = internal global [15 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @list_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @getitem_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @list_reversed to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @reversed_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*)* @list_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*)* @listclear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @clear_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*)* @listcopy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listappend to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @append_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listinsert to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @insert_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listextend to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @extend_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listpop to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @pop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listremove to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @remove_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listindex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @index_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*)* @listcount to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @count_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*)* @listreverse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @reverse_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyListObject*, %struct._object*, %struct._object*)* @listsort to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @sort_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [14 x i8] c"list_iterator\00", align 1
@listiter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.listiterobject*)* @listiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.listiterobject*)* @listiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.listiterobject*, %struct._object*)* @listiter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyListIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.listiterobject*)* @listiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.listiterobject*, i32 (%struct._object*, i8*)*, i8*)* @listiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.listiterobject*)* @listiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @listiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"list_reverseiterator\00", align 1
@listreviter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.listreviterobject*)* @listreviter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.listreviterobject*)* @listreviter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.listreviterobject*, %struct._object*)* @listreviter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyListRevIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.listreviterobject*)* @listreviter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.listreviterobject*, i32 (%struct._object*, i8*)*, i8*)* @listreviter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.listreviterobject*)* @listreviter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @listreviter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot add more objects to list\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"can only assign an iterable\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"argument must be iterable\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_StopIteration = external global %struct._object*, align 8
@listsort.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"|Oi:sort\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [43 x i8] c"must use keyword argument for key function\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"list modified during sort\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"[...]\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_Py_CheckRecursionLimit = external global i32, align 4
@.str.19 = private unnamed_addr constant [34 x i8] c" while getting the repr of a list\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"can only concatenate list (not \22%.200s\22) to list\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.21 = private unnamed_addr constant [42 x i8] c"list indices must be integers, not %.200s\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"must assign iterable to extended slice\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"attempt to assign sequence of size %zd to extended slice of size %zd\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"__getitem__\00", align 1
@getitem_doc = internal global [27 x i8] c"x.__getitem__(y) <==> x[y]\00", align 16
@.str.25 = private unnamed_addr constant [13 x i8] c"__reversed__\00", align 1
@reversed_doc = internal global [60 x i8] c"L.__reversed__() -- return a reverse iterator over the list\00", align 16
@.str.26 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [48 x i8] c"L.__sizeof__() -- size of L in memory, in bytes\00", align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear_doc = internal global [45 x i8] c"L.clear() -> None -- remove all items from L\00", align 16
@.str.28 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@copy_doc = internal global [40 x i8] c"L.copy() -> list -- a shallow copy of L\00", align 16
@.str.29 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@append_doc = internal global [49 x i8] c"L.append(object) -> None -- append object to end\00", align 16
@.str.30 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@insert_doc = internal global [54 x i8] c"L.insert(index, object) -- insert object before index\00", align 16
@.str.31 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@extend_doc = internal global [82 x i8] c"L.extend(iterable) -> None -- extend list by appending elements from the iterable\00", align 16
@.str.32 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop_doc = internal global [135 x i8] c"L.pop([index]) -> item -- remove and return item at index (default last).\0ARaises IndexError if list is empty or index is out of range.\00", align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@remove_doc = internal global [108 x i8] c"L.remove(value) -> None -- remove first occurrence of value.\0ARaises ValueError if the value is not present.\00", align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index_doc = internal global [122 x i8] c"L.index(value, [start, [stop]]) -> integer -- return first index of value.\0ARaises ValueError if the value is not present.\00", align 16
@.str.35 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count_doc = internal global [67 x i8] c"L.count(value) -> integer -- return number of occurrences of value\00", align 16
@reverse_doc = internal global [34 x i8] c"L.reverse() -- reverse *IN PLACE*\00", align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@sort_doc = internal global [66 x i8] c"L.sort(key=None, reverse=False) -> None -- stable sort *IN PLACE*\00", align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"nO:insert\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"|n:pop\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"pop from empty list\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"pop index out of range\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"list.remove(x): x not in list\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"O|O&O&:index\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"%R is not in list\00", align 1
@list_init.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* null], align 16
@.str.44 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"|O:list\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.47 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.48 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"reversed\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"N(N)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyList_ClearFreeList() #0 {
entry:
  %op = alloca %struct.PyListObject*, align 8
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
  %arrayidx = getelementptr [80 x %struct.PyListObject*], [80 x %struct.PyListObject*]* @free_list, i32 0, i64 %idxprom
  %3 = load %struct.PyListObject*, %struct.PyListObject** %arrayidx, align 8
  store %struct.PyListObject* %3, %struct.PyListObject** %op, align 8
  %4 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %5 = bitcast %struct.PyListObject* %4 to i8*
  call void @PyObject_GC_Del(i8* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyList_Fini() #0 {
entry:
  %call = call i32 @PyList_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyList_DebugMallocStats(%struct._IO_FILE* %out) #0 {
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
define %struct._object* @PyList_New(i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %op = alloca %struct.PyListObject*, align 8
  %nbytes = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 143)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ugt i64 %1, 2305843009213693951
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %2, 8
  store i64 %mul, i64* %nbytes, align 8
  %3 = load i32, i32* @numfree, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.3
  %4 = load i32, i32* @numfree, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* @numfree, align 4
  %5 = load i32, i32* @numfree, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr [80 x %struct.PyListObject*], [80 x %struct.PyListObject*]* @free_list, i32 0, i64 %idxprom
  %6 = load %struct.PyListObject*, %struct.PyListObject** %arrayidx, align 8
  store %struct.PyListObject* %6, %struct.PyListObject** %op, align 8
  %7 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end.3
  %call5 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyList_Type)
  %9 = bitcast %struct._object* %call5 to %struct.PyListObject*
  store %struct.PyListObject* %9, %struct.PyListObject** %op, align 8
  %10 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %cmp6 = icmp eq %struct.PyListObject* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.4
  %11 = load i64, i64* %size.addr, align 8
  %cmp10 = icmp sle i64 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %12 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %12, i32 0, i32 1
  store %struct._object** null, %struct._object*** %ob_item, align 8
  br label %if.end.27

if.else.12:                                       ; preds = %if.end.9
  %13 = load i64, i64* %nbytes, align 8
  %call13 = call i8* @PyMem_Malloc(i64 %13)
  %14 = bitcast i8* %call13 to %struct._object**
  %15 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %ob_item14 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %15, i32 0, i32 1
  store %struct._object** %14, %struct._object*** %ob_item14, align 8
  %16 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %ob_item15 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %16, i32 0, i32 1
  %17 = load %struct._object**, %struct._object*** %ob_item15, align 8
  %cmp16 = icmp eq %struct._object** %17, null
  br i1 %cmp16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.else.12
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %18 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %19 = bitcast %struct.PyListObject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %21, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else.22:                                       ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %call24 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call24, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.else.12
  %26 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %ob_item26 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  %27 = load %struct._object**, %struct._object*** %ob_item26, align 8
  %28 = bitcast %struct._object** %27 to i8*
  %29 = load i64, i64* %nbytes, align 8
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %29, i32 8, i1 false)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %if.then.11
  %30 = load i64, i64* %size.addr, align 8
  %31 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %32 = bitcast %struct.PyListObject* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  store i64 %30, i64* %ob_size, align 8
  %33 = load i64, i64* %size.addr, align 8
  %34 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %allocated = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %34, i32 0, i32 2
  store i64 %33, i64* %allocated, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %35 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %36 = bitcast %struct.PyListObject* %35 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %36, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %37 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %38 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %38, 1
  %cmp29 = icmp ne i64 %shr, -2
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.body.28
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end.31:                                        ; preds = %do.body.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.end.31
  %39 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc33 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_refs34 = getelementptr inbounds %struct.anon, %struct.anon* %gc33, i32 0, i32 2
  %40 = load i64, i64* %gc_refs34, align 8
  %and = and i64 %40, 1
  %or = or i64 %and, -6
  %41 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc35 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_refs36 = getelementptr inbounds %struct.anon, %struct.anon* %gc35, i32 0, i32 2
  store i64 %or, i64* %gc_refs36, align 8
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.32
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

do.end.48:                                        ; preds = %do.end.37
  %52 = load %struct.PyListObject*, %struct.PyListObject** %op, align 8
  %53 = bitcast %struct.PyListObject* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.48, %do.end, %if.then.7, %if.then.2, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @PyList_Size(%struct._object* %op) #0 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 186)
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
define %struct._object* @PyList_GetItem(%struct._object* %op, i64 %i) #0 {
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
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 199)
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
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @indexerr, align 8
  %cmp4 = icmp eq %struct._object* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then.3
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @indexerr, align 8
  %9 = load %struct._object*, %struct._object** @indexerr, align 8
  %cmp6 = icmp eq %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.3
  %10 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %11 = load %struct._object*, %struct._object** @indexerr, align 8
  call void @PyErr_SetObject(%struct._object* %10, %struct._object* %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %12 = load i64, i64* %i.addr, align 8
  %13 = load %struct._object*, %struct._object** %op.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 %12
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end.9, %if.then.7, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PyList_SetItem(%struct._object* %op, i64 %i, %struct._object* %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %newitem.addr = alloca %struct._object*, align 8
  %olditem = alloca %struct._object*, align 8
  %p = alloca %struct._object**, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_xdecref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %newitem, %struct._object** %newitem.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %newitem.addr, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 223)
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  %12 = load i64, i64* %i.addr, align 8
  %cmp10 = icmp slt i64 %12, 0
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %struct._object*, %struct._object** %op.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size, align 8
  %cmp11 = icmp sge i64 %13, %16
  br i1 %cmp11, label %if.then.12, label %if.end.30

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %newitem.addr, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp14, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp14, align 8
  %cmp15 = icmp ne %struct._object* %18, null
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %do.body.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp14, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %21, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %24(%struct._object* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %do.body.13
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %26 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %op.addr, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %28, i32 0, i32 1
  %29 = load %struct._object**, %struct._object*** %ob_item, align 8
  %30 = load i64, i64* %i.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %29, i64 %30
  store %struct._object** %add.ptr, %struct._object*** %p, align 8
  %31 = load %struct._object**, %struct._object*** %p, align 8
  %32 = load %struct._object*, %struct._object** %31, align 8
  store %struct._object* %32, %struct._object** %olditem, align 8
  %33 = load %struct._object*, %struct._object** %newitem.addr, align 8
  %34 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %33, %struct._object** %34, align 8
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.30
  %35 = load %struct._object*, %struct._object** %olditem, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp32, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8
  %cmp33 = icmp ne %struct._object* %36, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp36, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %39, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %42(%struct._object* %43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.body.31
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.47, %do.end.29, %do.end.8
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyList_Insert(%struct._object* %op, i64 %where, %struct._object* %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %where.addr = alloca i64, align 8
  %newitem.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  store %struct._object* %newitem, %struct._object** %newitem.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 276)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyListObject*
  %5 = load i64, i64* %where.addr, align 8
  %6 = load %struct._object*, %struct._object** %newitem.addr, align 8
  %call = call i32 @ins1(%struct.PyListObject* %4, i64 %5, %struct._object* %6)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @ins1(%struct.PyListObject* %self, i64 %where, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyListObject*, align 8
  %where.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %items = alloca %struct._object**, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 245)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8
  %cmp1 = icmp eq i64 %4, 9223372036854775807
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %7 = load i64, i64* %n, align 8
  %add = add i64 %7, 1
  %call = call i32 @list_resize(%struct.PyListObject* %6, i64 %add)
  %cmp4 = icmp eq i32 %call, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %8 = load i64, i64* %where.addr, align 8
  %cmp7 = icmp slt i64 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %9 = load i64, i64* %n, align 8
  %10 = load i64, i64* %where.addr, align 8
  %add9 = add i64 %10, %9
  store i64 %add9, i64* %where.addr, align 8
  %11 = load i64, i64* %where.addr, align 8
  %cmp10 = icmp slt i64 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i64 0, i64* %where.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %12 = load i64, i64* %where.addr, align 8
  %13 = load i64, i64* %n, align 8
  %cmp14 = icmp sgt i64 %12, %13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %14 = load i64, i64* %n, align 8
  store i64 %14, i64* %where.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %15 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %15, i32 0, i32 1
  %16 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %16, %struct._object*** %items, align 8
  %17 = load i64, i64* %n, align 8
  store i64 %17, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end.16
  %18 = load i64, i64* %i, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %i, align 8
  %19 = load i64, i64* %where.addr, align 8
  %cmp17 = icmp sge i64 %dec, %19
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %i, align 8
  %21 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %21, i64 %20
  %22 = load %struct._object*, %struct._object** %arrayidx, align 8
  %23 = load i64, i64* %i, align 8
  %add18 = add i64 %23, 1
  %24 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx19 = getelementptr %struct._object*, %struct._object** %24, i64 %add18
  store %struct._object* %22, %struct._object** %arrayidx19, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %27 = load %struct._object*, %struct._object** %v.addr, align 8
  %28 = load i64, i64* %where.addr, align 8
  %29 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx20 = getelementptr %struct._object*, %struct._object** %29, i64 %28
  store %struct._object* %27, %struct._object** %arrayidx20, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then.2, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @PyList_Append(%struct._object* %op, %struct._object* %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %newitem.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %newitem, %struct._object** %newitem.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %newitem.addr, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyListObject*
  %6 = load %struct._object*, %struct._object** %newitem.addr, align 8
  %call = call i32 @app1(%struct.PyListObject* %5, %struct._object* %6)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 307)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @app1(%struct.PyListObject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyListObject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %3, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %6 = load i64, i64* %n, align 8
  %add = add i64 %6, 1
  %call = call i32 @list_resize(%struct.PyListObject* %5, i64 %add)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %10 = load i64, i64* %n, align 8
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %11, i32 0, i32 1
  %12 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %12, i64 %10
  store %struct._object* %9, %struct._object** %arrayidx, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyList_GetSlice(%struct._object* %a, i64 %ilow, i64 %ihigh) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 464)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyListObject*
  %5 = load i64, i64* %ilow.addr, align 8
  %6 = load i64, i64* %ihigh.addr, align 8
  %call = call %struct._object* @list_slice(%struct.PyListObject* %4, i64 %5, i64 %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_slice(%struct.PyListObject* %a, i64 %ilow, i64 %ihigh) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyListObject*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  %np = alloca %struct.PyListObject*, align 8
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  %0 = load i64, i64* %ilow.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %ilow.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %ilow.addr, align 8
  %2 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %3 = bitcast %struct.PyListObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sgt i64 %1, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %6 = bitcast %struct.PyListObject* %5 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size3, align 8
  store i64 %7, i64* %ilow.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %8 = load i64, i64* %ihigh.addr, align 8
  %9 = load i64, i64* %ilow.addr, align 8
  %cmp5 = icmp slt i64 %8, %9
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  %10 = load i64, i64* %ilow.addr, align 8
  store i64 %10, i64* %ihigh.addr, align 8
  br label %if.end.13

if.else.7:                                        ; preds = %if.end.4
  %11 = load i64, i64* %ihigh.addr, align 8
  %12 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %13 = bitcast %struct.PyListObject* %12 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size8, align 8
  %cmp9 = icmp sgt i64 %11, %14
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.else.7
  %15 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %16 = bitcast %struct.PyListObject* %15 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size11, align 8
  store i64 %17, i64* %ihigh.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.else.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  %18 = load i64, i64* %ihigh.addr, align 8
  %19 = load i64, i64* %ilow.addr, align 8
  %sub = sub i64 %18, %19
  store i64 %sub, i64* %len, align 8
  %20 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyList_New(i64 %20)
  %21 = bitcast %struct._object* %call to %struct.PyListObject*
  store %struct.PyListObject* %21, %struct.PyListObject** %np, align 8
  %22 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %cmp14 = icmp eq %struct.PyListObject* %22, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %23 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %23, i32 0, i32 1
  %24 = load %struct._object**, %struct._object*** %ob_item, align 8
  %25 = load i64, i64* %ilow.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %24, i64 %25
  store %struct._object** %add.ptr, %struct._object*** %src, align 8
  %26 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %ob_item17 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  %27 = load %struct._object**, %struct._object*** %ob_item17, align 8
  store %struct._object** %27, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %len, align 8
  %cmp18 = icmp slt i64 %28, %29
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %31, i64 %30
  %32 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %32, %struct._object** %v, align 8
  %33 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %35 = load %struct._object*, %struct._object** %v, align 8
  %36 = load i64, i64* %i, align 8
  %37 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx19 = getelementptr %struct._object*, %struct._object** %37, i64 %36
  store %struct._object* %35, %struct._object** %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i64, i64* %i, align 8
  %inc20 = add i64 %38, 1
  store i64 %inc20, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %40 = bitcast %struct.PyListObject* %39 to %struct._object*
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define i32 @PyList_SetSlice(%struct._object* %a, i64 %ilow, i64 %ihigh, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._object*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 685)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyListObject*
  %5 = load i64, i64* %ilow.addr, align 8
  %6 = load i64, i64* %ihigh.addr, align 8
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @list_ass_slice(%struct.PyListObject* %4, i64 %5, i64 %6, %struct._object* %7)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @list_ass_slice(%struct.PyListObject* %a, i64 %ilow, i64 %ihigh, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.PyListObject*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %recycle_on_stack = alloca [8 x %struct._object*], align 16
  %recycle = alloca %struct._object**, align 8
  %item = alloca %struct._object**, align 8
  %vitem = alloca %struct._object**, align 8
  %v_as_SF = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %norig = alloca i64, align 8
  %d = alloca i64, align 8
  %k = alloca i64, align 8
  %s = alloca i64, align 8
  %result = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %tail = alloca i64, align 8
  %w = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp131 = alloca %struct._object*, align 8
  %_py_decref_tmp136 = alloca %struct._object*, align 8
  %_py_xdecref_tmp156 = alloca %struct._object*, align 8
  %_py_decref_tmp160 = alloca %struct._object*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %arraydecay = getelementptr inbounds [8 x %struct._object*], [8 x %struct._object*]* %recycle_on_stack, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %recycle, align 8
  store %struct._object** null, %struct._object*** %vitem, align 8
  store %struct._object* null, %struct._object** %v_as_SF, align 8
  store i32 -1, i32* %result, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8
  br label %if.end.29

if.else:                                          ; preds = %entry
  %1 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyListObject*
  %cmp1 = icmp eq %struct.PyListObject* %1, %3
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyListObject*
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyListObject*
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @list_slice(%struct.PyListObject* %5, i64 0, i64 %9)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp3 = icmp eq %struct._object* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %11 = load i32, i32* %result, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %12 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %13 = load i64, i64* %ilow.addr, align 8
  %14 = load i64, i64* %ihigh.addr, align 8
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %call5 = call i32 @list_ass_slice(%struct.PyListObject* %12, i64 %13, i64 %14, %struct._object* %15)
  store i32 %call5, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %23 = load i32, i32* %result, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.else
  %24 = load %struct._object*, %struct._object** %v.addr, align 8
  %call11 = call %struct._object* @PySequence_Fast(%struct._object* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %v_as_SF, align 8
  %25 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %cmp12 = icmp eq %struct._object* %25, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %Error

if.end.14:                                        ; preds = %if.end.10
  %26 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19
  %28 = load i64, i64* %tp_flags, align 8
  %and = and i64 %28, 33554432
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %29 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %32 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %31, %cond.true ], [ %34, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %35 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19
  %37 = load i64, i64* %tp_flags20, align 8
  %and21 = and i64 %37, 33554432
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end
  %38 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %39, i32 0, i32 1
  %40 = load %struct._object**, %struct._object*** %ob_item, align 8
  br label %cond.end.27

cond.false.24:                                    ; preds = %cond.end
  %41 = load %struct._object*, %struct._object** %v_as_SF, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %42, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i32 0
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.23
  %cond28 = phi %struct._object** [ %40, %cond.true.23 ], [ %arraydecay26, %cond.false.24 ]
  store %struct._object** %cond28, %struct._object*** %vitem, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end.27, %if.then
  %43 = load i64, i64* %ilow.addr, align 8
  %cmp30 = icmp slt i64 %43, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.29
  store i64 0, i64* %ilow.addr, align 8
  br label %if.end.38

if.else.32:                                       ; preds = %if.end.29
  %44 = load i64, i64* %ilow.addr, align 8
  %45 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %46 = bitcast %struct.PyListObject* %45 to %struct.PyVarObject*
  %ob_size33 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %46, i32 0, i32 1
  %47 = load i64, i64* %ob_size33, align 8
  %cmp34 = icmp sgt i64 %44, %47
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else.32
  %48 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %49 = bitcast %struct.PyListObject* %48 to %struct.PyVarObject*
  %ob_size36 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1
  %50 = load i64, i64* %ob_size36, align 8
  store i64 %50, i64* %ilow.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.31
  %51 = load i64, i64* %ihigh.addr, align 8
  %52 = load i64, i64* %ilow.addr, align 8
  %cmp39 = icmp slt i64 %51, %52
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.38
  %53 = load i64, i64* %ilow.addr, align 8
  store i64 %53, i64* %ihigh.addr, align 8
  br label %if.end.47

if.else.41:                                       ; preds = %if.end.38
  %54 = load i64, i64* %ihigh.addr, align 8
  %55 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %56 = bitcast %struct.PyListObject* %55 to %struct.PyVarObject*
  %ob_size42 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %56, i32 0, i32 1
  %57 = load i64, i64* %ob_size42, align 8
  %cmp43 = icmp sgt i64 %54, %57
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.else.41
  %58 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %59 = bitcast %struct.PyListObject* %58 to %struct.PyVarObject*
  %ob_size45 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %59, i32 0, i32 1
  %60 = load i64, i64* %ob_size45, align 8
  store i64 %60, i64* %ihigh.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.40
  %61 = load i64, i64* %ihigh.addr, align 8
  %62 = load i64, i64* %ilow.addr, align 8
  %sub = sub i64 %61, %62
  store i64 %sub, i64* %norig, align 8
  %63 = load i64, i64* %n, align 8
  %64 = load i64, i64* %norig, align 8
  %sub48 = sub i64 %63, %64
  store i64 %sub48, i64* %d, align 8
  %65 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %66 = bitcast %struct.PyListObject* %65 to %struct.PyVarObject*
  %ob_size49 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %66, i32 0, i32 1
  %67 = load i64, i64* %ob_size49, align 8
  %68 = load i64, i64* %d, align 8
  %add = add i64 %67, %68
  %cmp50 = icmp eq i64 %add, 0
  br i1 %cmp50, label %if.then.51, label %if.end.69

if.then.51:                                       ; preds = %if.end.47
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %69 = load %struct._object*, %struct._object** %v_as_SF, align 8
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp, align 8
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp53 = icmp ne %struct._object* %70, null
  br i1 %cmp53, label %if.then.54, label %if.end.66

if.then.54:                                       ; preds = %do.body.52
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp56, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %73, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %76(%struct._object* %77)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %do.body.52
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %78 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %call68 = call i32 @list_clear(%struct.PyListObject* %78)
  store i32 %call68, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.47
  %79 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item70 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %79, i32 0, i32 1
  %80 = load %struct._object**, %struct._object*** %ob_item70, align 8
  store %struct._object** %80, %struct._object*** %item, align 8
  %81 = load i64, i64* %norig, align 8
  %mul = mul i64 %81, 8
  store i64 %mul, i64* %s, align 8
  %82 = load i64, i64* %s, align 8
  %cmp71 = icmp ugt i64 %82, 64
  br i1 %cmp71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.end.69
  %83 = load i64, i64* %s, align 8
  %call73 = call i8* @PyMem_Malloc(i64 %83)
  %84 = bitcast i8* %call73 to %struct._object**
  store %struct._object** %84, %struct._object*** %recycle, align 8
  %85 = load %struct._object**, %struct._object*** %recycle, align 8
  %cmp74 = icmp eq %struct._object** %85, null
  br i1 %cmp74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.72
  %call76 = call %struct._object* @PyErr_NoMemory()
  br label %Error

if.end.77:                                        ; preds = %if.then.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.69
  %86 = load %struct._object**, %struct._object*** %recycle, align 8
  %87 = bitcast %struct._object** %86 to i8*
  %88 = load i64, i64* %ilow.addr, align 8
  %89 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %89, i64 %88
  %90 = bitcast %struct._object** %arrayidx to i8*
  %91 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %90, i64 %91, i32 8, i1 false)
  %92 = load i64, i64* %d, align 8
  %cmp79 = icmp slt i64 %92, 0
  br i1 %cmp79, label %if.then.80, label %if.else.98

if.then.80:                                       ; preds = %if.end.78
  %93 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %94 = bitcast %struct.PyListObject* %93 to %struct.PyVarObject*
  %ob_size81 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %94, i32 0, i32 1
  %95 = load i64, i64* %ob_size81, align 8
  %96 = load i64, i64* %ihigh.addr, align 8
  %sub82 = sub i64 %95, %96
  %mul83 = mul i64 %sub82, 8
  store i64 %mul83, i64* %tail, align 8
  %97 = load i64, i64* %ihigh.addr, align 8
  %98 = load i64, i64* %d, align 8
  %add84 = add i64 %97, %98
  %99 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx85 = getelementptr %struct._object*, %struct._object** %99, i64 %add84
  %100 = bitcast %struct._object** %arrayidx85 to i8*
  %101 = load i64, i64* %ihigh.addr, align 8
  %102 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx86 = getelementptr %struct._object*, %struct._object** %102, i64 %101
  %103 = bitcast %struct._object** %arrayidx86 to i8*
  %104 = load i64, i64* %tail, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %100, i8* %103, i64 %104, i32 8, i1 false)
  %105 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %106 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %107 = bitcast %struct.PyListObject* %106 to %struct.PyVarObject*
  %ob_size87 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %107, i32 0, i32 1
  %108 = load i64, i64* %ob_size87, align 8
  %109 = load i64, i64* %d, align 8
  %add88 = add i64 %108, %109
  %call89 = call i32 @list_resize(%struct.PyListObject* %105, i64 %add88)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then.91, label %if.end.96

if.then.91:                                       ; preds = %if.then.80
  %110 = load i64, i64* %ihigh.addr, align 8
  %111 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx92 = getelementptr %struct._object*, %struct._object** %111, i64 %110
  %112 = bitcast %struct._object** %arrayidx92 to i8*
  %113 = load i64, i64* %ihigh.addr, align 8
  %114 = load i64, i64* %d, align 8
  %add93 = add i64 %113, %114
  %115 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx94 = getelementptr %struct._object*, %struct._object** %115, i64 %add93
  %116 = bitcast %struct._object** %arrayidx94 to i8*
  %117 = load i64, i64* %tail, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %112, i8* %116, i64 %117, i32 8, i1 false)
  %118 = load i64, i64* %ilow.addr, align 8
  %119 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx95 = getelementptr %struct._object*, %struct._object** %119, i64 %118
  %120 = bitcast %struct._object** %arrayidx95 to i8*
  %121 = load %struct._object**, %struct._object*** %recycle, align 8
  %122 = bitcast %struct._object** %121 to i8*
  %123 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %122, i64 %123, i32 8, i1 false)
  br label %Error

if.end.96:                                        ; preds = %if.then.80
  %124 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item97 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %124, i32 0, i32 1
  %125 = load %struct._object**, %struct._object*** %ob_item97, align 8
  store %struct._object** %125, %struct._object*** %item, align 8
  br label %if.end.114

if.else.98:                                       ; preds = %if.end.78
  %126 = load i64, i64* %d, align 8
  %cmp99 = icmp sgt i64 %126, 0
  br i1 %cmp99, label %if.then.100, label %if.end.113

if.then.100:                                      ; preds = %if.else.98
  %127 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %128 = bitcast %struct.PyListObject* %127 to %struct.PyVarObject*
  %ob_size101 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %128, i32 0, i32 1
  %129 = load i64, i64* %ob_size101, align 8
  store i64 %129, i64* %k, align 8
  %130 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %131 = load i64, i64* %k, align 8
  %132 = load i64, i64* %d, align 8
  %add102 = add i64 %131, %132
  %call103 = call i32 @list_resize(%struct.PyListObject* %130, i64 %add102)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.100
  br label %Error

if.end.106:                                       ; preds = %if.then.100
  %133 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item107 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %133, i32 0, i32 1
  %134 = load %struct._object**, %struct._object*** %ob_item107, align 8
  store %struct._object** %134, %struct._object*** %item, align 8
  %135 = load i64, i64* %ihigh.addr, align 8
  %136 = load i64, i64* %d, align 8
  %add108 = add i64 %135, %136
  %137 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx109 = getelementptr %struct._object*, %struct._object** %137, i64 %add108
  %138 = bitcast %struct._object** %arrayidx109 to i8*
  %139 = load i64, i64* %ihigh.addr, align 8
  %140 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx110 = getelementptr %struct._object*, %struct._object** %140, i64 %139
  %141 = bitcast %struct._object** %arrayidx110 to i8*
  %142 = load i64, i64* %k, align 8
  %143 = load i64, i64* %ihigh.addr, align 8
  %sub111 = sub i64 %142, %143
  %mul112 = mul i64 %sub111, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %138, i8* %141, i64 %mul112, i32 8, i1 false)
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.106, %if.else.98
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.96
  store i64 0, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.114
  %144 = load i64, i64* %k, align 8
  %145 = load i64, i64* %n, align 8
  %cmp115 = icmp slt i64 %144, %145
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %146 = load i64, i64* %k, align 8
  %147 = load %struct._object**, %struct._object*** %vitem, align 8
  %arrayidx116 = getelementptr %struct._object*, %struct._object** %147, i64 %146
  %148 = load %struct._object*, %struct._object** %arrayidx116, align 8
  store %struct._object* %148, %struct._object** %w, align 8
  br label %do.body.117

do.body.117:                                      ; preds = %for.body
  %149 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %149, %struct._object** %_py_xincref_tmp, align 8
  %150 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp118 = icmp ne %struct._object* %150, null
  br i1 %cmp118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %do.body.117
  %151 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt120, align 8
  %inc = add i64 %152, 1
  store i64 %inc, i64* %ob_refcnt120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %do.body.117
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  %153 = load %struct._object*, %struct._object** %w, align 8
  %154 = load i64, i64* %ilow.addr, align 8
  %155 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx123 = getelementptr %struct._object*, %struct._object** %155, i64 %154
  store %struct._object* %153, %struct._object** %arrayidx123, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.122
  %156 = load i64, i64* %k, align 8
  %inc124 = add i64 %156, 1
  store i64 %inc124, i64* %k, align 8
  %157 = load i64, i64* %ilow.addr, align 8
  %inc125 = add i64 %157, 1
  store i64 %inc125, i64* %ilow.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %158 = load i64, i64* %norig, align 8
  %sub126 = sub i64 %158, 1
  store i64 %sub126, i64* %k, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.148, %for.end
  %159 = load i64, i64* %k, align 8
  %cmp128 = icmp sge i64 %159, 0
  br i1 %cmp128, label %for.body.129, label %for.end.150

for.body.129:                                     ; preds = %for.cond.127
  br label %do.body.130

do.body.130:                                      ; preds = %for.body.129
  %160 = load i64, i64* %k, align 8
  %161 = load %struct._object**, %struct._object*** %recycle, align 8
  %arrayidx132 = getelementptr %struct._object*, %struct._object** %161, i64 %160
  %162 = load %struct._object*, %struct._object** %arrayidx132, align 8
  store %struct._object* %162, %struct._object** %_py_xdecref_tmp131, align 8
  %163 = load %struct._object*, %struct._object** %_py_xdecref_tmp131, align 8
  %cmp133 = icmp ne %struct._object* %163, null
  br i1 %cmp133, label %if.then.134, label %if.end.146

if.then.134:                                      ; preds = %do.body.130
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.134
  %164 = load %struct._object*, %struct._object** %_py_xdecref_tmp131, align 8
  store %struct._object* %164, %struct._object** %_py_decref_tmp136, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_refcnt137 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0
  %166 = load i64, i64* %ob_refcnt137, align 8
  %dec138 = add i64 %166, -1
  store i64 %dec138, i64* %ob_refcnt137, align 8
  %cmp139 = icmp ne i64 %dec138, 0
  br i1 %cmp139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %do.body.135
  br label %if.end.144

if.else.141:                                      ; preds = %do.body.135
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_type142 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type142, align 8
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  call void %169(%struct._object* %170)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.141, %if.then.140
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.145, %do.body.130
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  br label %for.inc.148

for.inc.148:                                      ; preds = %do.end.147
  %171 = load i64, i64* %k, align 8
  %dec149 = add i64 %171, -1
  store i64 %dec149, i64* %k, align 8
  br label %for.cond.127

for.end.150:                                      ; preds = %for.cond.127
  store i32 0, i32* %result, align 4
  br label %Error

Error:                                            ; preds = %for.end.150, %if.then.105, %if.then.91, %if.then.75, %if.then.13
  %172 = load %struct._object**, %struct._object*** %recycle, align 8
  %arraydecay151 = getelementptr inbounds [8 x %struct._object*], [8 x %struct._object*]* %recycle_on_stack, i32 0, i32 0
  %cmp152 = icmp ne %struct._object** %172, %arraydecay151
  br i1 %cmp152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %Error
  %173 = load %struct._object**, %struct._object*** %recycle, align 8
  %174 = bitcast %struct._object** %173 to i8*
  call void @PyMem_Free(i8* %174)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %Error
  br label %do.body.155

do.body.155:                                      ; preds = %if.end.154
  %175 = load %struct._object*, %struct._object** %v_as_SF, align 8
  store %struct._object* %175, %struct._object** %_py_xdecref_tmp156, align 8
  %176 = load %struct._object*, %struct._object** %_py_xdecref_tmp156, align 8
  %cmp157 = icmp ne %struct._object* %176, null
  br i1 %cmp157, label %if.then.158, label %if.end.170

if.then.158:                                      ; preds = %do.body.155
  br label %do.body.159

do.body.159:                                      ; preds = %if.then.158
  %177 = load %struct._object*, %struct._object** %_py_xdecref_tmp156, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp160, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt161, align 8
  %dec162 = add i64 %179, -1
  store i64 %dec162, i64* %ob_refcnt161, align 8
  %cmp163 = icmp ne i64 %dec162, 0
  br i1 %cmp163, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.159
  br label %if.end.168

if.else.165:                                      ; preds = %do.body.159
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_type166 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type166, align 8
  %tp_dealloc167 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc167, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  call void %182(%struct._object* %183)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.164
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %if.end.170

if.end.170:                                       ; preds = %do.end.169, %do.body.155
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  %184 = load i32, i32* %result, align 4
  store i32 %184, i32* %retval
  br label %return

return:                                           ; preds = %do.end.171, %do.end.67, %do.end, %if.then.4
  %185 = load i32, i32* %retval
  ret i32 %185
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyList_Extend(%struct.PyListObject* %self, %struct._object* %b) #0 {
entry:
  %self.addr = alloca %struct.PyListObject*, align 8
  %b.addr = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %b.addr, align 8
  %call = call %struct._object* @listextend(%struct.PyListObject* %0, %struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listextend(%struct.PyListObject* %self, %struct._object* %b) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %b.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %mn = alloca i64, align 8
  %i = alloca i64, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  %_py_decref_tmp153 = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  %0 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyList_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyTuple_Type
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %5 = bitcast %struct.PyListObject* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** %b.addr, align 8
  %cmp4 = icmp eq %struct._object* %5, %6
  br i1 %cmp4, label %if.then, label %if.end.59

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %b.addr, align 8
  %call = call %struct._object* @PySequence_Fast(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %b.addr, align 8
  %8 = load %struct._object*, %struct._object** %b.addr, align 8
  %tobool = icmp ne %struct._object* %8, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 33554432
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %b.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %b.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %17, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %18 = load i64, i64* %n, align 8
  %cmp9 = icmp eq i64 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %19 = load %struct._object*, %struct._object** %b.addr, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %cond.end
  %27 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %28 = bitcast %struct.PyListObject* %27 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size16, align 8
  store i64 %29, i64* %m, align 8
  %30 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %31 = load i64, i64* %m, align 8
  %32 = load i64, i64* %n, align 8
  %add = add i64 %31, %32
  %call17 = call i32 @list_resize(%struct.PyListObject* %30, i64 %add)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %if.end.15
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %33 = load %struct._object*, %struct._object** %b.addr, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp21, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %35, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %38(%struct._object* %39)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.15
  %40 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_flags33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 19
  %42 = load i64, i64* %tp_flags33, align 8
  %and34 = and i64 %42, 33554432
  %cmp35 = icmp ne i64 %and34, 0
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %if.end.31
  %43 = load %struct._object*, %struct._object** %b.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %44, i32 0, i32 1
  %45 = load %struct._object**, %struct._object*** %ob_item, align 8
  br label %cond.end.39

cond.false.37:                                    ; preds = %if.end.31
  %46 = load %struct._object*, %struct._object** %b.addr, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyTupleObject*
  %ob_item38 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item38, i32 0, i32 0
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.36
  %cond40 = phi %struct._object** [ %45, %cond.true.36 ], [ %arraydecay, %cond.false.37 ]
  store %struct._object** %cond40, %struct._object*** %src, align 8
  %48 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item41 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %48, i32 0, i32 1
  %49 = load %struct._object**, %struct._object*** %ob_item41, align 8
  %50 = load i64, i64* %m, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %49, i64 %50
  store %struct._object** %add.ptr, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.39
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %n, align 8
  %cmp42 = icmp slt i64 %51, %52
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i64, i64* %i, align 8
  %54 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %54, i64 %53
  %55 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %55, %struct._object** %o, align 8
  %56 = load %struct._object*, %struct._object** %o, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt43, align 8
  %inc44 = add i64 %57, 1
  store i64 %inc44, i64* %ob_refcnt43, align 8
  %58 = load %struct._object*, %struct._object** %o, align 8
  %59 = load i64, i64* %i, align 8
  %60 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx45 = getelementptr %struct._object*, %struct._object** %60, i64 %59
  store %struct._object* %58, %struct._object** %arrayidx45, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i64, i64* %i, align 8
  %inc46 = add i64 %61, 1
  store i64 %inc46, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.47

do.body.47:                                       ; preds = %for.end
  %62 = load %struct._object*, %struct._object** %b.addr, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp48, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %64, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %67(%struct._object* %68)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %69 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc58 = add i64 %69, 1
  store i64 %inc58, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false.3
  %70 = load %struct._object*, %struct._object** %b.addr, align 8
  %call60 = call %struct._object* @PyObject_GetIter(%struct._object* %70)
  store %struct._object* %call60, %struct._object** %it, align 8
  %71 = load %struct._object*, %struct._object** %it, align 8
  %cmp61 = icmp eq %struct._object* %71, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %72 = load %struct._object*, %struct._object** %it, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 26
  %74 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %74, %struct._object* (%struct._object*)** %iternext, align 8
  %75 = load %struct._object*, %struct._object** %b.addr, align 8
  %call65 = call i64 @PyObject_LengthHint(%struct._object* %75, i64 8)
  store i64 %call65, i64* %n, align 8
  %76 = load i64, i64* %n, align 8
  %cmp66 = icmp eq i64 %76, -1
  br i1 %cmp66, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %if.end.63
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %77 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp69, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %79, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %82(%struct._object* %83)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %if.end.63
  %84 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %85 = bitcast %struct.PyListObject* %84 to %struct.PyVarObject*
  %ob_size80 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %85, i32 0, i32 1
  %86 = load i64, i64* %ob_size80, align 8
  store i64 %86, i64* %m, align 8
  %87 = load i64, i64* %m, align 8
  %88 = load i64, i64* %n, align 8
  %add81 = add i64 %87, %88
  store i64 %add81, i64* %mn, align 8
  %89 = load i64, i64* %mn, align 8
  %90 = load i64, i64* %m, align 8
  %cmp82 = icmp sge i64 %89, %90
  br i1 %cmp82, label %if.then.83, label %if.end.89

if.then.83:                                       ; preds = %if.end.79
  %91 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %92 = load i64, i64* %mn, align 8
  %call84 = call i32 @list_resize(%struct.PyListObject* %91, i64 %92)
  %cmp85 = icmp eq i32 %call84, -1
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  br label %error

if.end.87:                                        ; preds = %if.then.83
  %93 = load i64, i64* %m, align 8
  %94 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %95 = bitcast %struct.PyListObject* %94 to %struct.PyVarObject*
  %ob_size88 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %95, i32 0, i32 1
  store i64 %93, i64* %ob_size88, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.87, %if.end.79
  br label %for.cond.90

for.cond.90:                                      ; preds = %if.end.128, %if.end.89
  %96 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %97 = load %struct._object*, %struct._object** %it, align 8
  %call91 = call %struct._object* %96(%struct._object* %97)
  store %struct._object* %call91, %struct._object** %item, align 8
  %98 = load %struct._object*, %struct._object** %item, align 8
  %cmp92 = icmp eq %struct._object* %98, null
  br i1 %cmp92, label %if.then.93, label %if.end.103

if.then.93:                                       ; preds = %for.cond.90
  %call94 = call %struct._object* @PyErr_Occurred()
  %tobool95 = icmp ne %struct._object* %call94, null
  br i1 %tobool95, label %if.then.96, label %if.end.102

if.then.96:                                       ; preds = %if.then.93
  %99 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call97 = call i32 @PyErr_ExceptionMatches(%struct._object* %99)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.then.96
  call void @PyErr_Clear()
  br label %if.end.101

if.else.100:                                      ; preds = %if.then.96
  br label %error

if.end.101:                                       ; preds = %if.then.99
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.93
  br label %for.end.129

if.end.103:                                       ; preds = %for.cond.90
  %100 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %101 = bitcast %struct.PyListObject* %100 to %struct.PyVarObject*
  %ob_size104 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %101, i32 0, i32 1
  %102 = load i64, i64* %ob_size104, align 8
  %103 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %103, i32 0, i32 2
  %104 = load i64, i64* %allocated, align 8
  %cmp105 = icmp slt i64 %102, %104
  br i1 %cmp105, label %if.then.106, label %if.else.112

if.then.106:                                      ; preds = %if.end.103
  %105 = load %struct._object*, %struct._object** %item, align 8
  %106 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %107 = bitcast %struct.PyListObject* %106 to %struct.PyVarObject*
  %ob_size107 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %107, i32 0, i32 1
  %108 = load i64, i64* %ob_size107, align 8
  %109 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item108 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %109, i32 0, i32 1
  %110 = load %struct._object**, %struct._object*** %ob_item108, align 8
  %arrayidx109 = getelementptr %struct._object*, %struct._object** %110, i64 %108
  store %struct._object* %105, %struct._object** %arrayidx109, align 8
  %111 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %112 = bitcast %struct.PyListObject* %111 to %struct.PyVarObject*
  %ob_size110 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %112, i32 0, i32 1
  %113 = load i64, i64* %ob_size110, align 8
  %inc111 = add i64 %113, 1
  store i64 %inc111, i64* %ob_size110, align 8
  br label %if.end.128

if.else.112:                                      ; preds = %if.end.103
  %114 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %115 = load %struct._object*, %struct._object** %item, align 8
  %call113 = call i32 @app1(%struct.PyListObject* %114, %struct._object* %115)
  store i32 %call113, i32* %status, align 4
  br label %do.body.114

do.body.114:                                      ; preds = %if.else.112
  %116 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp115, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %118, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.114
  br label %if.end.123

if.else.120:                                      ; preds = %do.body.114
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %121(%struct._object* %122)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  %123 = load i32, i32* %status, align 4
  %cmp125 = icmp slt i32 %123, 0
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %do.end.124
  br label %error

if.end.127:                                       ; preds = %do.end.124
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.106
  br label %for.cond.90

for.end.129:                                      ; preds = %if.end.102
  %124 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %125 = bitcast %struct.PyListObject* %124 to %struct.PyVarObject*
  %ob_size130 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %125, i32 0, i32 1
  %126 = load i64, i64* %ob_size130, align 8
  %127 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated131 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %127, i32 0, i32 2
  %128 = load i64, i64* %allocated131, align 8
  %cmp132 = icmp slt i64 %126, %128
  br i1 %cmp132, label %if.then.133, label %if.end.139

if.then.133:                                      ; preds = %for.end.129
  %129 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %130 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %131 = bitcast %struct.PyListObject* %130 to %struct.PyVarObject*
  %ob_size134 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %131, i32 0, i32 1
  %132 = load i64, i64* %ob_size134, align 8
  %call135 = call i32 @list_resize(%struct.PyListObject* %129, i64 %132)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.133
  br label %error

if.end.138:                                       ; preds = %if.then.133
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %for.end.129
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.139
  %133 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %133, %struct._object** %_py_decref_tmp141, align 8
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 0
  %135 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %135, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.140
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.140
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 1
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i32 0, i32 4
  %138 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %138(%struct._object* %139)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  %140 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc151 = add i64 %140, 1
  store i64 %inc151, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.137, %if.then.126, %if.else.100, %if.then.86
  br label %do.body.152

do.body.152:                                      ; preds = %error
  %141 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %141, %struct._object** %_py_decref_tmp153, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  %ob_refcnt154 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 0
  %143 = load i64, i64* %ob_refcnt154, align 8
  %dec155 = add i64 %143, -1
  store i64 %dec155, i64* %ob_refcnt154, align 8
  %cmp156 = icmp ne i64 %dec155, 0
  br i1 %cmp156, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %do.body.152
  br label %if.end.161

if.else.158:                                      ; preds = %do.body.152
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 1
  %145 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8
  %tp_dealloc160 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %145, i32 0, i32 4
  %146 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc160, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  call void %146(%struct._object* %147)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.157
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.162, %do.end.150, %do.end.78, %if.then.62, %do.end.57, %do.end.30, %do.end, %if.then.5
  %148 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %148
}

; Function Attrs: nounwind uwtable
define i32 @PyList_Sort(%struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2087)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyListObject*
  %call = call %struct._object* @listsort(%struct.PyListObject* %5, %struct._object* null, %struct._object* null)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp2 = icmp eq %struct._object* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listsort(%struct.PyListObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ms = alloca %struct.s_MergeState, align 8
  %nremaining = alloca i64, align 8
  %minrun = alloca i64, align 8
  %lo = alloca %struct.sortslice, align 8
  %saved_ob_size = alloca i64, align 8
  %saved_allocated = alloca i64, align 8
  %saved_ob_item = alloca %struct._object**, align 8
  %final_ob_item = alloca %struct._object**, align 8
  %result = alloca %struct._object*, align 8
  %reverse = alloca i32, align 4
  %keyfunc = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %keys = alloca %struct._object**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %descending = alloca i32, align 4
  %n = alloca i64, align 8
  %force = alloca i64, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store i32 0, i32* %reverse, align 4
  store %struct._object* null, %struct._object** %keyfunc, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @listsort.kwlist, i32 0, i32 0), %struct._object** %keyfunc, i32* %reverse)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp sgt i64 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %entry
  %7 = load %struct._object*, %struct._object** %keyfunc, align 8
  %cmp6 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %keyfunc, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %8 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %9 = bitcast %struct.PyListObject* %8 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size9, align 8
  store i64 %10, i64* %saved_ob_size, align 8
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %11, i32 0, i32 1
  %12 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %12, %struct._object*** %saved_ob_item, align 8
  %13 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %13, i32 0, i32 2
  %14 = load i64, i64* %allocated, align 8
  store i64 %14, i64* %saved_allocated, align 8
  %15 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %16 = bitcast %struct.PyListObject* %15 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  store i64 0, i64* %ob_size10, align 8
  %17 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item11 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1
  store %struct._object** null, %struct._object*** %ob_item11, align 8
  %18 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated12 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %18, i32 0, i32 2
  store i64 -1, i64* %allocated12, align 8
  %19 = load %struct._object*, %struct._object** %keyfunc, align 8
  %cmp13 = icmp eq %struct._object* %19, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.8
  store %struct._object** null, %struct._object*** %keys, align 8
  %20 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %keys15 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  store %struct._object** %20, %struct._object*** %keys15, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 1
  store %struct._object** null, %struct._object*** %values, align 8
  br label %if.end.48

if.else:                                          ; preds = %if.end.8
  %21 = load i64, i64* %saved_ob_size, align 8
  %cmp16 = icmp slt i64 %21, 128
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else
  %22 = load i64, i64* %saved_ob_size, align 8
  %add = add i64 %22, 1
  %temparray = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 5
  %arrayidx = getelementptr [256 x %struct._object*], [256 x %struct._object*]* %temparray, i32 0, i64 %add
  store %struct._object** %arrayidx, %struct._object*** %keys, align 8
  br label %if.end.23

if.else.18:                                       ; preds = %if.else
  %23 = load i64, i64* %saved_ob_size, align 8
  %mul = mul i64 8, %23
  %call19 = call i8* @PyMem_Malloc(i64 %mul)
  %24 = bitcast i8* %call19 to %struct._object**
  store %struct._object** %24, %struct._object*** %keys, align 8
  %25 = load %struct._object**, %struct._object*** %keys, align 8
  %cmp20 = icmp eq %struct._object** %25, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.else.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.end.23
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %saved_ob_size, align 8
  %cmp24 = icmp slt i64 %26, %27
  br i1 %cmp24, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %28 = load %struct._object*, %struct._object** %keyfunc, align 8
  %29 = load i64, i64* %i, align 8
  %30 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %arrayidx25 = getelementptr %struct._object*, %struct._object** %30, i64 %29
  %31 = load %struct._object*, %struct._object** %arrayidx25, align 8
  %call26 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %28, %struct._object* %31, i8* null)
  %32 = load i64, i64* %i, align 8
  %33 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx27 = getelementptr %struct._object*, %struct._object** %33, i64 %32
  store %struct._object* %call26, %struct._object** %arrayidx27, align 8
  %34 = load i64, i64* %i, align 8
  %35 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx28 = getelementptr %struct._object*, %struct._object** %35, i64 %34
  %36 = load %struct._object*, %struct._object** %arrayidx28, align 8
  %cmp29 = icmp eq %struct._object* %36, null
  br i1 %cmp29, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %for.body
  %37 = load i64, i64* %i, align 8
  %sub = sub i64 %37, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.then.30
  %38 = load i64, i64* %i, align 8
  %cmp32 = icmp sge i64 %38, 0
  br i1 %cmp32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.31
  br label %do.body

do.body:                                          ; preds = %for.body.33
  %39 = load i64, i64* %i, align 8
  %40 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx34 = getelementptr %struct._object*, %struct._object** %40, i64 %39
  %41 = load %struct._object*, %struct._object** %arrayidx34, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %43, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body
  br label %if.end.38

if.else.37:                                       ; preds = %do.body
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %46(%struct._object* %47)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %48 = load i64, i64* %i, align 8
  %dec39 = add i64 %48, -1
  store i64 %dec39, i64* %i, align 8
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  %49 = load i64, i64* %saved_ob_size, align 8
  %cmp40 = icmp sge i64 %49, 128
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  %50 = load %struct._object**, %struct._object*** %keys, align 8
  %51 = bitcast %struct._object** %50 to i8*
  call void @PyMem_Free(i8* %51)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.end
  br label %keyfunc_fail

if.end.43:                                        ; preds = %for.body
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %52 = load i64, i64* %i, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %53 = load %struct._object**, %struct._object*** %keys, align 8
  %keys46 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  store %struct._object** %53, %struct._object*** %keys46, align 8
  %54 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %values47 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 1
  store %struct._object** %54, %struct._object*** %values47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.45, %if.then.14
  %55 = load i64, i64* %saved_ob_size, align 8
  %56 = load %struct._object**, %struct._object*** %keys, align 8
  %cmp49 = icmp ne %struct._object** %56, null
  %conv = zext i1 %cmp49 to i32
  call void @merge_init(%struct.s_MergeState* %ms, i64 %55, i32 %conv)
  %57 = load i64, i64* %saved_ob_size, align 8
  store i64 %57, i64* %nremaining, align 8
  %58 = load i64, i64* %nremaining, align 8
  %cmp50 = icmp slt i64 %58, 2
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.48
  br label %succeed

if.end.53:                                        ; preds = %if.end.48
  %59 = load i32, i32* %reverse, align 4
  %tobool54 = icmp ne i32 %59, 0
  br i1 %tobool54, label %if.then.55, label %if.end.64

if.then.55:                                       ; preds = %if.end.53
  %60 = load %struct._object**, %struct._object*** %keys, align 8
  %cmp56 = icmp ne %struct._object** %60, null
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.then.55
  %61 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx59 = getelementptr %struct._object*, %struct._object** %61, i64 0
  %62 = load i64, i64* %saved_ob_size, align 8
  %63 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx60 = getelementptr %struct._object*, %struct._object** %63, i64 %62
  call void @reverse_slice(%struct._object** %arrayidx59, %struct._object** %arrayidx60)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.then.55
  %64 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %arrayidx62 = getelementptr %struct._object*, %struct._object** %64, i64 0
  %65 = load i64, i64* %saved_ob_size, align 8
  %66 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %arrayidx63 = getelementptr %struct._object*, %struct._object** %66, i64 %65
  call void @reverse_slice(%struct._object** %arrayidx62, %struct._object** %arrayidx63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61, %if.end.53
  %67 = load i64, i64* %nremaining, align 8
  %call65 = call i64 @merge_compute_minrun(i64 %67)
  store i64 %call65, i64* %minrun, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %do.cond, %if.end.64
  %keys67 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %68 = load %struct._object**, %struct._object*** %keys67, align 8
  %keys68 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %69 = load %struct._object**, %struct._object*** %keys68, align 8
  %70 = load i64, i64* %nremaining, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %69, i64 %70
  %call69 = call i64 @count_run(%struct._object** %68, %struct._object** %add.ptr, i32* %descending)
  store i64 %call69, i64* %n, align 8
  %71 = load i64, i64* %n, align 8
  %cmp70 = icmp slt i64 %71, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body.66
  br label %fail

if.end.73:                                        ; preds = %do.body.66
  %72 = load i32, i32* %descending, align 4
  %tobool74 = icmp ne i32 %72, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %73 = load i64, i64* %n, align 8
  call void @reverse_sortslice(%struct.sortslice* %lo, i64 %73)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  %74 = load i64, i64* %n, align 8
  %75 = load i64, i64* %minrun, align 8
  %cmp77 = icmp slt i64 %74, %75
  br i1 %cmp77, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %if.end.76
  %76 = load i64, i64* %nremaining, align 8
  %77 = load i64, i64* %minrun, align 8
  %cmp80 = icmp sle i64 %76, %77
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.79
  %78 = load i64, i64* %nremaining, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.79
  %79 = load i64, i64* %minrun, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %78, %cond.true ], [ %79, %cond.false ]
  store i64 %cond, i64* %force, align 8
  %keys82 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %80 = load %struct._object**, %struct._object*** %keys82, align 8
  %81 = load i64, i64* %force, align 8
  %add.ptr83 = getelementptr %struct._object*, %struct._object** %80, i64 %81
  %keys84 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %82 = load %struct._object**, %struct._object*** %keys84, align 8
  %83 = load i64, i64* %n, align 8
  %add.ptr85 = getelementptr %struct._object*, %struct._object** %82, i64 %83
  %84 = bitcast %struct.sortslice* %lo to { %struct._object**, %struct._object** }*
  %85 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %84, i32 0, i32 0
  %86 = load %struct._object**, %struct._object*** %85, align 1
  %87 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %84, i32 0, i32 1
  %88 = load %struct._object**, %struct._object*** %87, align 1
  %call86 = call i32 @binarysort(%struct._object** %86, %struct._object** %88, %struct._object** %add.ptr83, %struct._object** %add.ptr85)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cond.end
  br label %fail

if.end.90:                                        ; preds = %cond.end
  %89 = load i64, i64* %force, align 8
  store i64 %89, i64* %n, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.76
  %n92 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 3
  %90 = load i32, i32* %n92, align 4
  %idxprom = sext i32 %90 to i64
  %pending = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 4
  %arrayidx93 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending, i32 0, i64 %idxprom
  %base = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx93, i32 0, i32 0
  %91 = bitcast %struct.sortslice* %base to i8*
  %92 = bitcast %struct.sortslice* %lo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 16, i32 8, i1 false)
  %93 = load i64, i64* %n, align 8
  %n94 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 3
  %94 = load i32, i32* %n94, align 4
  %idxprom95 = sext i32 %94 to i64
  %pending96 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 4
  %arrayidx97 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending96, i32 0, i64 %idxprom95
  %len = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx97, i32 0, i32 1
  store i64 %93, i64* %len, align 8
  %n98 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 3
  %95 = load i32, i32* %n98, align 4
  %inc99 = add i32 %95, 1
  store i32 %inc99, i32* %n98, align 4
  %call100 = call i32 @merge_collapse(%struct.s_MergeState* %ms)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.91
  br label %fail

if.end.104:                                       ; preds = %if.end.91
  %96 = load i64, i64* %n, align 8
  call void @sortslice_advance(%struct.sortslice* %lo, i64 %96)
  %97 = load i64, i64* %n, align 8
  %98 = load i64, i64* %nremaining, align 8
  %sub105 = sub i64 %98, %97
  store i64 %sub105, i64* %nremaining, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.104
  %99 = load i64, i64* %nremaining, align 8
  %tobool106 = icmp ne i64 %99, 0
  br i1 %tobool106, label %do.body.66, label %do.end.107

do.end.107:                                       ; preds = %do.cond
  %call108 = call i32 @merge_force_collapse(%struct.s_MergeState* %ms)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %do.end.107
  br label %fail

if.end.112:                                       ; preds = %do.end.107
  %pending113 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %ms, i32 0, i32 4
  %arrayidx114 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending113, i32 0, i64 0
  %base115 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx114, i32 0, i32 0
  %100 = bitcast %struct.sortslice* %lo to i8*
  %101 = bitcast %struct.sortslice* %base115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false)
  br label %succeed

succeed:                                          ; preds = %if.end.112, %if.then.52
  store %struct._object* @_Py_NoneStruct, %struct._object** %result, align 8
  br label %fail

fail:                                             ; preds = %succeed, %if.then.111, %if.then.103, %if.then.89, %if.then.72
  %102 = load %struct._object**, %struct._object*** %keys, align 8
  %cmp116 = icmp ne %struct._object** %102, null
  br i1 %cmp116, label %if.then.118, label %if.end.144

if.then.118:                                      ; preds = %fail
  store i64 0, i64* %i, align 8
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.137, %if.then.118
  %103 = load i64, i64* %i, align 8
  %104 = load i64, i64* %saved_ob_size, align 8
  %cmp120 = icmp slt i64 %103, %104
  br i1 %cmp120, label %for.body.122, label %for.end.139

for.body.122:                                     ; preds = %for.cond.119
  br label %do.body.123

do.body.123:                                      ; preds = %for.body.122
  %105 = load i64, i64* %i, align 8
  %106 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx125 = getelementptr %struct._object*, %struct._object** %106, i64 %105
  %107 = load %struct._object*, %struct._object** %arrayidx125, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp124, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %109, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.123
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.123
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  call void %112(%struct._object* %113)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.134
  br label %for.inc.137

for.inc.137:                                      ; preds = %do.end.136
  %114 = load i64, i64* %i, align 8
  %inc138 = add i64 %114, 1
  store i64 %inc138, i64* %i, align 8
  br label %for.cond.119

for.end.139:                                      ; preds = %for.cond.119
  %115 = load i64, i64* %saved_ob_size, align 8
  %cmp140 = icmp sge i64 %115, 128
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %for.end.139
  %116 = load %struct._object**, %struct._object*** %keys, align 8
  %117 = bitcast %struct._object** %116 to i8*
  call void @PyMem_Free(i8* %117)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %for.end.139
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %fail
  %118 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated145 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %118, i32 0, i32 2
  %119 = load i64, i64* %allocated145, align 8
  %cmp146 = icmp ne i64 %119, -1
  br i1 %cmp146, label %land.lhs.true, label %if.end.151

land.lhs.true:                                    ; preds = %if.end.144
  %120 = load %struct._object*, %struct._object** %result, align 8
  %cmp148 = icmp ne %struct._object* %120, null
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true
  %121 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true, %if.end.144
  %122 = load i32, i32* %reverse, align 4
  %tobool152 = icmp ne i32 %122, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.158

land.lhs.true.153:                                ; preds = %if.end.151
  %123 = load i64, i64* %saved_ob_size, align 8
  %cmp154 = icmp sgt i64 %123, 1
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %land.lhs.true.153
  %124 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %125 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %126 = load i64, i64* %saved_ob_size, align 8
  %add.ptr157 = getelementptr %struct._object*, %struct._object** %125, i64 %126
  call void @reverse_slice(%struct._object** %124, %struct._object** %add.ptr157)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %land.lhs.true.153, %if.end.151
  call void @merge_freemem(%struct.s_MergeState* %ms)
  br label %keyfunc_fail

keyfunc_fail:                                     ; preds = %if.end.158, %if.end.42
  %127 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item159 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %127, i32 0, i32 1
  %128 = load %struct._object**, %struct._object*** %ob_item159, align 8
  store %struct._object** %128, %struct._object*** %final_ob_item, align 8
  %129 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %130 = bitcast %struct.PyListObject* %129 to %struct.PyVarObject*
  %ob_size160 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %130, i32 0, i32 1
  %131 = load i64, i64* %ob_size160, align 8
  store i64 %131, i64* %i, align 8
  %132 = load i64, i64* %saved_ob_size, align 8
  %133 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %134 = bitcast %struct.PyListObject* %133 to %struct.PyVarObject*
  %ob_size161 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %134, i32 0, i32 1
  store i64 %132, i64* %ob_size161, align 8
  %135 = load %struct._object**, %struct._object*** %saved_ob_item, align 8
  %136 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item162 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %136, i32 0, i32 1
  store %struct._object** %135, %struct._object*** %ob_item162, align 8
  %137 = load i64, i64* %saved_allocated, align 8
  %138 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated163 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %138, i32 0, i32 2
  store i64 %137, i64* %allocated163, align 8
  %139 = load %struct._object**, %struct._object*** %final_ob_item, align 8
  %cmp164 = icmp ne %struct._object** %139, null
  br i1 %cmp164, label %if.then.166, label %if.end.191

if.then.166:                                      ; preds = %keyfunc_fail
  br label %while.cond

while.cond:                                       ; preds = %do.end.190, %if.then.166
  %140 = load i64, i64* %i, align 8
  %dec167 = add i64 %140, -1
  store i64 %dec167, i64* %i, align 8
  %cmp168 = icmp sge i64 %dec167, 0
  br i1 %cmp168, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.170

do.body.170:                                      ; preds = %while.body
  %141 = load i64, i64* %i, align 8
  %142 = load %struct._object**, %struct._object*** %final_ob_item, align 8
  %arrayidx171 = getelementptr %struct._object*, %struct._object** %142, i64 %141
  %143 = load %struct._object*, %struct._object** %arrayidx171, align 8
  store %struct._object* %143, %struct._object** %_py_xdecref_tmp, align 8
  %144 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp172 = icmp ne %struct._object* %144, null
  br i1 %cmp172, label %if.then.174, label %if.end.188

if.then.174:                                      ; preds = %do.body.170
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  %145 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp176, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %147, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %150(%struct._object* %151)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.185
  br label %if.end.188

if.end.188:                                       ; preds = %do.end.187, %do.body.170
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.188
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %152 = load %struct._object**, %struct._object*** %final_ob_item, align 8
  %153 = bitcast %struct._object** %152 to i8*
  call void @PyMem_Free(i8* %153)
  br label %if.end.191

if.end.191:                                       ; preds = %while.end, %keyfunc_fail
  br label %do.body.192

do.body.192:                                      ; preds = %if.end.191
  %154 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %154, %struct._object** %_py_xincref_tmp, align 8
  %155 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp193 = icmp ne %struct._object* %155, null
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %do.body.192
  %156 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt196 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 0
  %157 = load i64, i64* %ob_refcnt196, align 8
  %inc197 = add i64 %157, 1
  store i64 %inc197, i64* %ob_refcnt196, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %do.body.192
  br label %do.end.200

do.end.200:                                       ; preds = %if.end.198
  %158 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %158, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.200, %if.then.21, %if.then.3, %if.then.1
  %159 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %159
}

; Function Attrs: nounwind uwtable
define i32 @PyList_Reverse(%struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %self = alloca %struct.PyListObject*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyListObject*
  store %struct.PyListObject* %1, %struct.PyListObject** %self, align 8
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2111)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyListObject*, %struct.PyListObject** %self, align 8
  %7 = bitcast %struct.PyListObject* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp sgt i64 %8, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.PyListObject*, %struct.PyListObject** %self, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %9, i32 0, i32 1
  %10 = load %struct._object**, %struct._object*** %ob_item, align 8
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self, align 8
  %ob_item4 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %11, i32 0, i32 1
  %12 = load %struct._object**, %struct._object*** %ob_item4, align 8
  %13 = load %struct.PyListObject*, %struct.PyListObject** %self, align 8
  %14 = bitcast %struct.PyListObject* %13 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size5, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %12, i64 %15
  call void @reverse_slice(%struct._object** %10, %struct._object** %add.ptr)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @reverse_slice(%struct._object** %lo, %struct._object** %hi) #0 {
entry:
  %lo.addr = alloca %struct._object**, align 8
  %hi.addr = alloca %struct._object**, align 8
  %t = alloca %struct._object*, align 8
  store %struct._object** %lo, %struct._object*** %lo.addr, align 8
  store %struct._object** %hi, %struct._object*** %hi.addr, align 8
  %0 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %0, i32 -1
  store %struct._object** %incdec.ptr, %struct._object*** %hi.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %2 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %cmp = icmp ult %struct._object** %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %4 = load %struct._object*, %struct._object** %3, align 8
  store %struct._object* %4, %struct._object** %t, align 8
  %5 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %6 = load %struct._object*, %struct._object** %5, align 8
  %7 = load %struct._object**, %struct._object*** %lo.addr, align 8
  store %struct._object* %6, %struct._object** %7, align 8
  %8 = load %struct._object*, %struct._object** %t, align 8
  %9 = load %struct._object**, %struct._object*** %hi.addr, align 8
  store %struct._object* %8, %struct._object** %9, align 8
  %10 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %incdec.ptr1 = getelementptr %struct._object*, %struct._object** %10, i32 1
  store %struct._object** %incdec.ptr1, %struct._object*** %lo.addr, align 8
  %11 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %incdec.ptr2 = getelementptr %struct._object*, %struct._object** %11, i32 -1
  store %struct._object** %incdec.ptr2, %struct._object*** %hi.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyList_AsTuple(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %p = alloca %struct._object**, align 8
  %q = alloca %struct._object**, align 8
  %n = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2126)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyTuple_New(i64 %7)
  store %struct._object* %call, %struct._object** %w, align 8
  %8 = load %struct._object*, %struct._object** %w, align 8
  %cmp2 = icmp eq %struct._object* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %w, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %p, align 8
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyListObject*
  %ob_item5 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %ob_item5, align 8
  store %struct._object** %13, %struct._object*** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %14 = load i64, i64* %n, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %n, align 8
  %cmp6 = icmp sge i64 %dec, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._object**, %struct._object*** %q, align 8
  %16 = load %struct._object*, %struct._object** %15, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %18 = load %struct._object**, %struct._object*** %q, align 8
  %19 = load %struct._object*, %struct._object** %18, align 8
  %20 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %19, %struct._object** %20, align 8
  %21 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %21, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8
  %22 = load %struct._object**, %struct._object*** %q, align 8
  %incdec.ptr7 = getelementptr %struct._object*, %struct._object** %22, i32 1
  store %struct._object** %incdec.ptr7, %struct._object*** %q, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal void @list_dealloc(%struct.PyListObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyListObject*, align 8
  %i = alloca i64, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %op, %struct.PyListObject** %op.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %2, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = bitcast %struct._Py_atomic_address* %3 to i8*
  %5 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %4, i32 %5)
  %6 = load i32, i32* %order, align 4
  switch i32 %6, label %sw.default [
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
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.2 [
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
  %10 = load i8*, i8** %result, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  store %struct._ts* %12, %struct._ts** %_tstate, align 8
  %13 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 23
  %14 = load i32, i32* %trash_delete_nesting, align 4
  %cmp = icmp slt i32 %14, 50
  br i1 %cmp, label %if.then, label %if.else.38

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 23
  %16 = load i32, i32* %trash_delete_nesting4, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %trash_delete_nesting4, align 4
  %17 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1
  %18 = load %struct._object**, %struct._object*** %ob_item, align 8
  %cmp5 = icmp ne %struct._object** %18, null
  br i1 %cmp5, label %if.then.6, label %if.end.21

if.then.6:                                        ; preds = %if.then
  %19 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %20 = bitcast %struct.PyListObject* %19 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size, align 8
  store i64 %21, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.19, %if.then.6
  %22 = load i64, i64* %i, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %i, align 8
  %cmp7 = icmp sge i64 %dec, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.8

do.body.8:                                        ; preds = %while.body
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %ob_item10 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %24, i32 0, i32 1
  %25 = load %struct._object**, %struct._object*** %ob_item10, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %25, i64 %23
  %26 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %27, null
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.body.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %dec15 = add i64 %30, -1
  store i64 %dec15, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body.13
  br label %if.end

if.else:                                          ; preds = %do.body.13
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body.8
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %ob_item20 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %35, i32 0, i32 1
  %36 = load %struct._object**, %struct._object*** %ob_item20, align 8
  %37 = bitcast %struct._object** %36 to i8*
  call void @PyMem_Free(i8* %37)
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.then
  %38 = load i32, i32* @numfree, align 4
  %cmp22 = icmp slt i32 %38, 80
  br i1 %cmp22, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.end.21
  %39 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %40 = bitcast %struct.PyListObject* %39 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %41, @PyList_Type
  br i1 %cmp24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %land.lhs.true
  %42 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %43 = load i32, i32* @numfree, align 4
  %inc26 = add i32 %43, 1
  store i32 %inc26, i32* @numfree, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx27 = getelementptr [80 x %struct.PyListObject*], [80 x %struct.PyListObject*]* @free_list, i32 0, i64 %idxprom
  store %struct.PyListObject* %42, %struct.PyListObject** %arrayidx27, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true, %if.end.21
  %44 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %45 = bitcast %struct.PyListObject* %44 to %struct._object*
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 38
  %47 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %48 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %49 = bitcast %struct.PyListObject* %48 to %struct._object*
  %50 = bitcast %struct._object* %49 to i8*
  call void %47(i8* %50)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.25
  %51 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting31 = getelementptr inbounds %struct._ts, %struct._ts* %51, i32 0, i32 23
  %52 = load i32, i32* %trash_delete_nesting31, align 4
  %dec32 = add i32 %52, -1
  store i32 %dec32, i32* %trash_delete_nesting31, align 4
  %53 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %53, i32 0, i32 24
  %54 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %54, null
  br i1 %tobool, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %if.end.30
  %55 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting34 = getelementptr inbounds %struct._ts, %struct._ts* %55, i32 0, i32 23
  %56 = load i32, i32* %trash_delete_nesting34, align 4
  %cmp35 = icmp sle i32 %56, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.33, %if.end.30
  br label %if.end.39

if.else.38:                                       ; preds = %sw.epilog.3
  %57 = load %struct.PyListObject*, %struct.PyListObject** %op.addr, align 8
  %58 = bitcast %struct.PyListObject* %57 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %58)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.end.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_repr(%struct.PyListObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyListObject*, align 8
  %i = alloca i64, align 8
  %s = alloca %struct._object*, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val38 = alloca %struct._Py_atomic_address*, align 8
  %result40 = alloca i8*, align 8
  %volatile_data42 = alloca i8**, align 8
  %order45 = alloca i32, align 4
  %tmp52 = alloca i8*, align 8
  %atomic_val66 = alloca %struct._Py_atomic_address*, align 8
  %result68 = alloca i8*, align 8
  %volatile_data70 = alloca i8**, align 8
  %order73 = alloca i32, align 4
  %tmp80 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  store %struct.PyListObject* %v, %struct.PyListObject** %v.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %4 = bitcast %struct.PyListObject* %3 to %struct._object*
  %call1 = call i32 @Py_ReprEnter(%struct._object* %4)
  %conv = sext i32 %call1 to i64
  store i64 %conv, i64* %i, align 8
  %5 = load i64, i64* %i, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %cmp5 = icmp sgt i64 %6, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %call7 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
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
  %7 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size9, align 8
  %sub = sub i64 %9, 1
  %mul = mul i64 3, %sub
  %add = add i64 2, %mul
  %add10 = add i64 %add, 1
  %min_length = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6
  store i64 %add10, i64* %min_length, align 8
  %call11 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 91)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  br label %error

if.end.15:                                        ; preds = %if.end.8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size16, align 8
  %cmp17 = icmp slt i64 %10, %13
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %14, 0
  br i1 %cmp19, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %for.body
  %call22 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i64 2)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  br label %error

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %15 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %15, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %16 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %17 = bitcast %struct._Py_atomic_address* %16 to i8*
  %18 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %17, i32 %18)
  %19 = load i32, i32* %order, align 4
  switch i32 %19, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.27, %if.end.27, %if.end.27
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %20 = load i8**, i8*** %volatile_data, align 8
  %21 = load volatile i8*, i8** %20, align 8
  store i8* %21, i8** %result, align 8
  %22 = load i32, i32* %order, align 4
  switch i32 %22, label %sw.default.29 [
    i32 1, label %sw.bb.28
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.28
  ]

sw.bb.28:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.30

sw.default.29:                                    ; preds = %sw.epilog
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %sw.default.29, %sw.bb.28
  %23 = load i8*, i8** %result, align 8
  store i8* %23, i8** %tmp
  %24 = load i8*, i8** %tmp
  %25 = bitcast i8* %24 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 4
  %26 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %27 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp31 = icmp sgt i32 %inc, %27
  br i1 %cmp31, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %sw.epilog.30
  %call33 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0))
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true
  br label %error

if.end.35:                                        ; preds = %land.lhs.true, %sw.epilog.30
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %29, i32 0, i32 1
  %30 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %30, i64 %28
  %31 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call36 = call %struct._object* @PyObject_Repr(%struct._object* %31)
  store %struct._object* %call36, %struct._object** %s, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.35
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val38, align 8
  %32 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val38, align 8
  %_value43 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %32, i32 0, i32 0
  store i8** %_value43, i8*** %volatile_data42, align 8
  store i32 0, i32* %order45, align 4
  %33 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val38, align 8
  %34 = bitcast %struct._Py_atomic_address* %33 to i8*
  %35 = load i32, i32* %order45, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %34, i32 %35)
  %36 = load i32, i32* %order45, align 4
  switch i32 %36, label %sw.default.47 [
    i32 2, label %sw.bb.46
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.46
  ]

sw.bb.46:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.48

sw.default.47:                                    ; preds = %do.body
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.default.47, %sw.bb.46
  %37 = load i8**, i8*** %volatile_data42, align 8
  %38 = load volatile i8*, i8** %37, align 8
  store i8* %38, i8** %result40, align 8
  %39 = load i32, i32* %order45, align 4
  switch i32 %39, label %sw.default.50 [
    i32 1, label %sw.bb.49
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.49
  ]

sw.bb.49:                                         ; preds = %sw.epilog.48, %sw.epilog.48, %sw.epilog.48
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.51

sw.default.50:                                    ; preds = %sw.epilog.48
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.50, %sw.bb.49
  %40 = load i8*, i8** %result40, align 8
  store i8* %40, i8** %tmp52
  %41 = load i8*, i8** %tmp52
  %42 = bitcast i8* %41 to %struct._ts*
  %recursion_depth53 = getelementptr inbounds %struct._ts, %struct._ts* %42, i32 0, i32 4
  %43 = load i32, i32* %recursion_depth53, align 4
  %dec = add i32 %43, -1
  store i32 %dec, i32* %recursion_depth53, align 4
  %44 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp54 = icmp sgt i32 %44, 100
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %sw.epilog.51
  %45 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub57 = sub i32 %45, 50
  br label %cond.end.60

cond.false.58:                                    ; preds = %sw.epilog.51
  %46 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %46, 2
  %mul59 = mul i32 3, %shr
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.56
  %cond61 = phi i32 [ %sub57, %cond.true.56 ], [ %mul59, %cond.false.58 ]
  %cmp62 = icmp slt i32 %dec, %cond61
  br i1 %cmp62, label %if.then.64, label %if.end.81

if.then.64:                                       ; preds = %cond.end.60
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val66, align 8
  %47 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val66, align 8
  %_value71 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %47, i32 0, i32 0
  store i8** %_value71, i8*** %volatile_data70, align 8
  store i32 0, i32* %order73, align 4
  %48 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val66, align 8
  %49 = bitcast %struct._Py_atomic_address* %48 to i8*
  %50 = load i32, i32* %order73, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %49, i32 %50)
  %51 = load i32, i32* %order73, align 4
  switch i32 %51, label %sw.default.75 [
    i32 2, label %sw.bb.74
    i32 3, label %sw.bb.74
    i32 4, label %sw.bb.74
  ]

sw.bb.74:                                         ; preds = %if.then.64, %if.then.64, %if.then.64
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.76

sw.default.75:                                    ; preds = %if.then.64
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %sw.default.75, %sw.bb.74
  %52 = load i8**, i8*** %volatile_data70, align 8
  %53 = load volatile i8*, i8** %52, align 8
  store i8* %53, i8** %result68, align 8
  %54 = load i32, i32* %order73, align 4
  switch i32 %54, label %sw.default.78 [
    i32 1, label %sw.bb.77
    i32 3, label %sw.bb.77
    i32 4, label %sw.bb.77
  ]

sw.bb.77:                                         ; preds = %sw.epilog.76, %sw.epilog.76, %sw.epilog.76
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.79

sw.default.78:                                    ; preds = %sw.epilog.76
  br label %sw.epilog.79

sw.epilog.79:                                     ; preds = %sw.default.78, %sw.bb.77
  %55 = load i8*, i8** %result68, align 8
  store i8* %55, i8** %tmp80
  %56 = load i8*, i8** %tmp80
  %57 = bitcast i8* %56 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %57, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %sw.epilog.79, %cond.end.60
  br label %do.end

do.end:                                           ; preds = %if.end.81
  %58 = load %struct._object*, %struct._object** %s, align 8
  %cmp82 = icmp eq %struct._object* %58, null
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %do.end
  br label %error

if.end.85:                                        ; preds = %do.end
  %59 = load %struct._object*, %struct._object** %s, align 8
  %call86 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %59)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %if.end.85
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  %60 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt, align 8
  %dec92 = add i64 %62, -1
  store i64 %dec92, i64* %ob_refcnt, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.96

if.else:                                          ; preds = %do.body.90
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %65(%struct._object* %66)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.then.95
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %error

if.end.98:                                        ; preds = %if.end.85
  br label %do.body.99

do.body.99:                                       ; preds = %if.end.98
  %67 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp101, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt102, align 8
  %dec103 = add i64 %69, -1
  store i64 %dec103, i64* %ob_refcnt102, align 8
  %cmp104 = icmp ne i64 %dec103, 0
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.99
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.99
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  call void %72(%struct._object* %73)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %for.inc

for.inc:                                          ; preds = %do.end.111
  %74 = load i64, i64* %i, align 8
  %inc112 = add i64 %74, 1
  store i64 %inc112, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %overallocate113 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 8
  store i8 0, i8* %overallocate113, align 1
  %call114 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 93)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %for.end
  br label %error

if.end.118:                                       ; preds = %for.end
  %75 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %76 = bitcast %struct.PyListObject* %75 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %76)
  %call119 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer)
  store %struct._object* %call119, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.117, %do.end.97, %if.then.84, %if.then.34, %if.then.25, %if.then.14
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer)
  %77 = load %struct.PyListObject*, %struct.PyListObject** %v.addr, align 8
  %78 = bitcast %struct.PyListObject* %77 to %struct._object*
  call void @Py_ReprLeave(%struct._object* %78)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.end.118, %cond.end, %if.then
  %79 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %79
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @list_traverse(%struct.PyListObject* %o, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.PyListObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %vret = alloca i32, align 4
  store %struct.PyListObject* %o, %struct.PyListObject** %o.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %o.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
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
  %5 = load %struct.PyListObject*, %struct.PyListObject** %o.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %6, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  %tobool = icmp ne %struct._object* %7, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %8 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.PyListObject*, %struct.PyListObject** %o.addr, align 8
  %ob_item1 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %ob_item1, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %11, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx2, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %8(%struct._object* %12, i8* %13)
  store i32 %call, i32* %vret, align 4
  %14 = load i32, i32* %vret, align 4
  %tobool3 = icmp ne i32 %14, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %15 = load i32, i32* %vret, align 4
  store i32 %15, i32* %retval
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
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @list_clear(%struct.PyListObject* %a) #0 {
entry:
  %a.addr = alloca %struct.PyListObject*, align 8
  %i = alloca i64, align 8
  %item = alloca %struct._object**, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %0, i32 0, i32 1
  %1 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %1, %struct._object*** %item, align 8
  %2 = load %struct._object**, %struct._object*** %item, align 8
  %cmp = icmp ne %struct._object** %2, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %3 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %4 = bitcast %struct.PyListObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  store i64 %5, i64* %i, align 8
  %6 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %7 = bitcast %struct.PyListObject* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  store i64 0, i64* %ob_size1, align 8
  %8 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item2 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  store %struct._object** null, %struct._object*** %ob_item2, align 8
  %9 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %allocated = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %9, i32 0, i32 2
  store i64 0, i64* %allocated, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.11, %if.then
  %10 = load i64, i64* %i, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %i, align 8
  %cmp3 = icmp sge i64 %dec, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object**, %struct._object*** %item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %12, i64 %11
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec7 = add i64 %17, -1
  store i64 %dec7, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec7, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.6
  br label %if.end

if.else:                                          ; preds = %do.body.6
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct._object**, %struct._object*** %item, align 8
  %23 = bitcast %struct._object** %22 to i8*
  call void @PyMem_Free(i8* %23)
  br label %if.end.12

if.end.12:                                        ; preds = %while.end, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %vl = alloca %struct.PyListObject*, align 8
  %wl = alloca %struct.PyListObject*, align 8
  %i = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %k = alloca i32, align 4
  %vs = alloca i64, align 8
  %ws = alloca i64, align 8
  %cmp36 = alloca i32, align 4
  %res37 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %5, 33554432
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
  %8 = bitcast %struct._object* %7 to %struct.PyListObject*
  store %struct.PyListObject* %8, %struct.PyListObject** %vl, align 8
  %9 = load %struct._object*, %struct._object** %w.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyListObject*
  store %struct.PyListObject* %10, %struct.PyListObject** %wl, align 8
  %11 = load %struct.PyListObject*, %struct.PyListObject** %vl, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load %struct.PyListObject*, %struct.PyListObject** %wl, align 8
  %15 = bitcast %struct.PyListObject* %14 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size5, align 8
  %cmp6 = icmp ne i64 %13, %16
  br i1 %cmp6, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %op.addr, align 4
  %cmp7 = icmp eq i32 %17, 2
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %op.addr, align 4
  %cmp9 = icmp eq i32 %18, 3
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %lor.lhs.false.8, %land.lhs.true
  %19 = load i32, i32* %op.addr, align 4
  %cmp11 = icmp eq i32 %19, 2
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.then.10
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %20 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %inc14 = add i64 %21, 1
  store i64 %inc14, i64* %ob_refcnt, align 8
  %22 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.8, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.PyListObject*, %struct.PyListObject** %vl, align 8
  %25 = bitcast %struct.PyListObject* %24 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size16, align 8
  %cmp17 = icmp slt i64 %23, %26
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load i64, i64* %i, align 8
  %28 = load %struct.PyListObject*, %struct.PyListObject** %wl, align 8
  %29 = bitcast %struct.PyListObject* %28 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %29, i32 0, i32 1
  %30 = load i64, i64* %ob_size18, align 8
  %cmp19 = icmp slt i64 %27, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs ]
  br i1 %31, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.PyListObject*, %struct.PyListObject** %vl, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %33, i32 0, i32 1
  %34 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %34, i64 %32
  %35 = load %struct._object*, %struct._object** %arrayidx, align 8
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.PyListObject*, %struct.PyListObject** %wl, align 8
  %ob_item20 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %37, i32 0, i32 1
  %38 = load %struct._object**, %struct._object*** %ob_item20, align 8
  %arrayidx21 = getelementptr %struct._object*, %struct._object** %38, i64 %36
  %39 = load %struct._object*, %struct._object** %arrayidx21, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %35, %struct._object* %39, i32 2)
  store i32 %call, i32* %k, align 4
  %40 = load i32, i32* %k, align 4
  %cmp22 = icmp slt i32 %40, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  %41 = load i32, i32* %k, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.24
  br label %for.end

if.end.26:                                        ; preds = %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %42 = load i64, i64* %i, align 8
  %inc27 = add i64 %42, 1
  store i64 %inc27, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %land.end
  %43 = load i64, i64* %i, align 8
  %44 = load %struct.PyListObject*, %struct.PyListObject** %vl, align 8
  %45 = bitcast %struct.PyListObject* %44 to %struct.PyVarObject*
  %ob_size28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %45, i32 0, i32 1
  %46 = load i64, i64* %ob_size28, align 8
  %cmp29 = icmp sge i64 %43, %46
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %for.end
  %47 = load i64, i64* %i, align 8
  %48 = load %struct.PyListObject*, %struct.PyListObject** %wl, align 8
  %49 = bitcast %struct.PyListObject* %48 to %struct.PyVarObject*
  %ob_size31 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1
  %50 = load i64, i64* %ob_size31, align 8
  %cmp32 = icmp sge i64 %47, %50
  br i1 %cmp32, label %if.then.33, label %if.end.60

if.then.33:                                       ; preds = %lor.lhs.false.30, %for.end
  %51 = load %struct.PyListObject*, %struct.PyListObject** %vl, align 8
  %52 = bitcast %struct.PyListObject* %51 to %struct.PyVarObject*
  %ob_size34 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %52, i32 0, i32 1
  %53 = load i64, i64* %ob_size34, align 8
  store i64 %53, i64* %vs, align 8
  %54 = load %struct.PyListObject*, %struct.PyListObject** %wl, align 8
  %55 = bitcast %struct.PyListObject* %54 to %struct.PyVarObject*
  %ob_size35 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %55, i32 0, i32 1
  %56 = load i64, i64* %ob_size35, align 8
  store i64 %56, i64* %ws, align 8
  %57 = load i32, i32* %op.addr, align 4
  switch i32 %57, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.39
    i32 2, label %sw.bb.42
    i32 3, label %sw.bb.45
    i32 4, label %sw.bb.48
    i32 5, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %if.then.33
  %58 = load i64, i64* %vs, align 8
  %59 = load i64, i64* %ws, align 8
  %cmp38 = icmp slt i64 %58, %59
  %conv = zext i1 %cmp38 to i32
  store i32 %conv, i32* %cmp36, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.then.33
  %60 = load i64, i64* %vs, align 8
  %61 = load i64, i64* %ws, align 8
  %cmp40 = icmp sle i64 %60, %61
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, i32* %cmp36, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.then.33
  %62 = load i64, i64* %vs, align 8
  %63 = load i64, i64* %ws, align 8
  %cmp43 = icmp eq i64 %62, %63
  %conv44 = zext i1 %cmp43 to i32
  store i32 %conv44, i32* %cmp36, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.then.33
  %64 = load i64, i64* %vs, align 8
  %65 = load i64, i64* %ws, align 8
  %cmp46 = icmp ne i64 %64, %65
  %conv47 = zext i1 %cmp46 to i32
  store i32 %conv47, i32* %cmp36, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.then.33
  %66 = load i64, i64* %vs, align 8
  %67 = load i64, i64* %ws, align 8
  %cmp49 = icmp sgt i64 %66, %67
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* %cmp36, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.then.33
  %68 = load i64, i64* %vs, align 8
  %69 = load i64, i64* %ws, align 8
  %cmp52 = icmp sge i64 %68, %69
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %cmp36, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.51, %sw.bb.48, %sw.bb.45, %sw.bb.42, %sw.bb.39, %sw.bb
  %70 = load i32, i32* %cmp36, align 4
  %tobool54 = icmp ne i32 %70, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res37, align 8
  br label %if.end.57

if.else.56:                                       ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res37, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.55
  %71 = load %struct._object*, %struct._object** %res37, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt58, align 8
  %inc59 = add i64 %72, 1
  store i64 %inc59, i64* %ob_refcnt58, align 8
  %73 = load %struct._object*, %struct._object** %res37, align 8
  store %struct._object* %73, %struct._object** %retval
  br label %return

if.end.60:                                        ; preds = %lor.lhs.false.30
  %74 = load i32, i32* %op.addr, align 4
  %cmp61 = icmp eq i32 %74, 2
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %75 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc64 = add i64 %75, 1
  store i64 %inc64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %if.end.60
  %76 = load i32, i32* %op.addr, align 4
  %cmp66 = icmp eq i32 %76, 3
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %77 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc69 = add i64 %77, 1
  store i64 %inc69, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.65
  %78 = load i64, i64* %i, align 8
  %79 = load %struct.PyListObject*, %struct.PyListObject** %vl, align 8
  %ob_item71 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %79, i32 0, i32 1
  %80 = load %struct._object**, %struct._object*** %ob_item71, align 8
  %arrayidx72 = getelementptr %struct._object*, %struct._object** %80, i64 %78
  %81 = load %struct._object*, %struct._object** %arrayidx72, align 8
  %82 = load i64, i64* %i, align 8
  %83 = load %struct.PyListObject*, %struct.PyListObject** %wl, align 8
  %ob_item73 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %83, i32 0, i32 1
  %84 = load %struct._object**, %struct._object*** %ob_item73, align 8
  %arrayidx74 = getelementptr %struct._object*, %struct._object** %84, i64 %82
  %85 = load %struct._object*, %struct._object** %arrayidx74, align 8
  %86 = load i32, i32* %op.addr, align 4
  %call75 = call %struct._object* @PyObject_RichCompare(%struct._object* %81, %struct._object* %85, i32 %86)
  store %struct._object* %call75, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.68, %if.then.63, %if.end.57, %sw.default, %if.then.23, %if.end.13, %if.then
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_iter(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %it = alloca %struct.listiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 2735)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyListIter_Type)
  %3 = bitcast %struct._object* %call to %struct.listiterobject*
  store %struct.listiterobject* %3, %struct.listiterobject** %it, align 8
  %4 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %cmp1 = icmp eq %struct.listiterobject* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %5, i32 0, i32 1
  store i64 0, i64* %it_index, align 8
  %6 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %seq.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyListObject*
  %10 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %10, i32 0, i32 2
  store %struct.PyListObject* %9, %struct.PyListObject** %it_seq, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %11 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %12 = bitcast %struct.listiterobject* %11 to %union._gc_head*
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
  %28 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %29 = bitcast %struct.listiterobject* %28 to %struct._object*
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.2, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal i32 @list_init(%struct.PyListObject* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyListObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @list_init.kwlist, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %2, i32 0, i32 1
  %3 = load %struct._object**, %struct._object*** %ob_item, align 8
  %cmp = icmp ne %struct._object** %3, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %call2 = call i32 @list_clear(%struct.PyListObject* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct._object*, %struct._object** %arg, align 8
  %cmp4 = icmp ne %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call6 = call %struct._object* @listextend(%struct.PyListObject* %6, %struct._object* %7)
  store %struct._object* %call6, %struct._object** %rv, align 8
  %8 = load %struct._object*, %struct._object** %rv, align 8
  %cmp7 = icmp eq %struct._object* %8, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %9 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.8, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @listiter_dealloc(%struct.listiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.listiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.listiterobject* %it, %struct.listiterobject** %it.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %1 = bitcast %struct.listiterobject* %0 to %union._gc_head*
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
  %14 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %14, i32 0, i32 2
  %15 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %16 = bitcast %struct.PyListObject* %15 to %struct._object*
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
  %25 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %26 = bitcast %struct.listiterobject* %25 to i8*
  call void @PyObject_GC_Del(i8* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @listiter_traverse(%struct.listiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.listiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.listiterobject* %it, %struct.listiterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyListObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %3, i32 0, i32 2
  %4 = load %struct.PyListObject*, %struct.PyListObject** %it_seq1, align 8
  %5 = bitcast %struct.PyListObject* %4 to %struct._object*
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
define internal %struct._object* @listiter_next(%struct.listiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.listiterobject*, align 8
  %seq = alloca %struct.PyListObject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.listiterobject* %it, %struct.listiterobject** %it.addr, align 8
  %0 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  store %struct.PyListObject* %1, %struct.PyListObject** %seq, align 8
  %2 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %cmp = icmp eq %struct.PyListObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %3, i32 0, i32 1
  %4 = load i64, i64* %it_index, align 8
  %5 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %6 = bitcast %struct.PyListObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %4, %7
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_index3 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %8, i32 0, i32 1
  %9 = load i64, i64* %it_index3, align 8
  %10 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %item, align 8
  %13 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_index4 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %13, i32 0, i32 1
  %14 = load i64, i64* %it_index4, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %it_index4, align 8
  %15 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc5 = add i64 %16, 1
  store i64 %inc5, i64* %ob_refcnt, align 8
  %17 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %18 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %19 = bitcast %struct.PyListObject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %26 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq11 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %26, i32 0, i32 2
  store %struct.PyListObject* null, %struct.PyListObject** %it_seq11, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal void @listreviter_dealloc(%struct.listreviterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.listreviterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.listreviterobject* %it, %struct.listreviterobject** %it.addr, align 8
  %0 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %1 = bitcast %struct.listreviterobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %2, i32 0, i32 2
  %3 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %4 = bitcast %struct.PyListObject* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %13 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %14 = bitcast %struct.listreviterobject* %13 to i8*
  call void @PyObject_GC_Del(i8* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @listreviter_traverse(%struct.listreviterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.listreviterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.listreviterobject* %it, %struct.listreviterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %0, i32 0, i32 2
  %1 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyListObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %3, i32 0, i32 2
  %4 = load %struct.PyListObject*, %struct.PyListObject** %it_seq1, align 8
  %5 = bitcast %struct.PyListObject* %4 to %struct._object*
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
define internal %struct._object* @listreviter_next(%struct.listreviterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.listreviterobject*, align 8
  %item = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %seq = alloca %struct.PyListObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.listreviterobject* %it, %struct.listreviterobject** %it.addr, align 8
  %0 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %0, i32 0, i32 1
  %1 = load i64, i64* %it_index, align 8
  store i64 %1, i64* %index, align 8
  %2 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %2, i32 0, i32 2
  %3 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  store %struct.PyListObject* %3, %struct.PyListObject** %seq, align 8
  %4 = load i64, i64* %index, align 8
  %cmp = icmp sge i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %index, align 8
  %6 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %7 = bitcast %struct.PyListObject* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %5, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %index, align 8
  %10 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %item, align 8
  %13 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_index2 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %13, i32 0, i32 1
  %14 = load i64, i64* %it_index2, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %it_index2, align 8
  %15 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %17 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %18 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_index3 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %18, i32 0, i32 1
  store i64 -1, i64* %it_index3, align 8
  %19 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %cmp4 = icmp ne %struct.PyListObject* %19, null
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %20 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq6 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %20, i32 0, i32 2
  store %struct.PyListObject* null, %struct.PyListObject** %it_seq6, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %21 = load %struct.PyListObject*, %struct.PyListObject** %seq, align 8
  %22 = bitcast %struct.PyListObject* %21 to %struct._object*
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt7, align 8
  %dec8 = add i64 %24, -1
  store i64 %dec8, i64* %ob_refcnt7, align 8
  %cmp9 = icmp ne i64 %dec8, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal i32 @list_resize(%struct.PyListObject* %self, i64 %newsize) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyListObject*, align 8
  %newsize.addr = alloca i64, align 8
  %items = alloca %struct._object**, align 8
  %new_allocated = alloca i64, align 8
  %allocated = alloca i64, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store i64 %newsize, i64* %newsize.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated1 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %0, i32 0, i32 2
  %1 = load i64, i64* %allocated1, align 8
  store i64 %1, i64* %allocated, align 8
  %2 = load i64, i64* %allocated, align 8
  %3 = load i64, i64* %newsize.addr, align 8
  %cmp = icmp sge i64 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %newsize.addr, align 8
  %5 = load i64, i64* %allocated, align 8
  %shr = ashr i64 %5, 1
  %cmp2 = icmp sge i64 %4, %shr
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* %newsize.addr, align 8
  %7 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  store i64 %6, i64* %ob_size, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load i64, i64* %newsize.addr, align 8
  %shr3 = ashr i64 %9, 3
  %10 = load i64, i64* %newsize.addr, align 8
  %cmp4 = icmp slt i64 %10, 9
  %cond = select i1 %cmp4, i32 3, i32 6
  %conv = sext i32 %cond to i64
  %add = add i64 %shr3, %conv
  store i64 %add, i64* %new_allocated, align 8
  %11 = load i64, i64* %new_allocated, align 8
  %12 = load i64, i64* %newsize.addr, align 8
  %sub = sub i64 -1, %12
  %cmp5 = icmp ugt i64 %11, %sub
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %13 = load i64, i64* %newsize.addr, align 8
  %14 = load i64, i64* %new_allocated, align 8
  %add8 = add i64 %14, %13
  store i64 %add8, i64* %new_allocated, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else
  %15 = load i64, i64* %newsize.addr, align 8
  %cmp10 = icmp eq i64 %15, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i64 0, i64* %new_allocated, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %16 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %16, i32 0, i32 1
  %17 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %17, %struct._object*** %items, align 8
  %18 = load i64, i64* %new_allocated, align 8
  %cmp14 = icmp ule i64 %18, 2305843009213693951
  br i1 %cmp14, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.end.13
  %19 = load i64, i64* %new_allocated, align 8
  %cmp17 = icmp ugt i64 %19, 1152921504606846975
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %20 = load %struct._object**, %struct._object*** %items, align 8
  %21 = bitcast %struct._object** %20 to i8*
  %22 = load i64, i64* %new_allocated, align 8
  %mul = mul i64 %22, 8
  %call19 = call i8* @PyMem_Realloc(i8* %21, i64 %mul)
  %23 = bitcast i8* %call19 to %struct._object**
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi %struct._object** [ null, %cond.true ], [ %23, %cond.false ]
  store %struct._object** %cond20, %struct._object*** %items, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.13
  store %struct._object** null, %struct._object*** %items, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %cond.end
  %24 = load %struct._object**, %struct._object*** %items, align 8
  %cmp23 = icmp eq %struct._object** %24, null
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %call26 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.22
  %25 = load %struct._object**, %struct._object*** %items, align 8
  %26 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item28 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  store %struct._object** %25, %struct._object*** %ob_item28, align 8
  %27 = load i64, i64* %newsize.addr, align 8
  %28 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %29 = bitcast %struct.PyListObject* %28 to %struct.PyVarObject*
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %29, i32 0, i32 1
  store i64 %27, i64* %ob_size29, align 8
  %30 = load i64, i64* %new_allocated, align 8
  %31 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated30 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %31, i32 0, i32 2
  store i64 %30, i64* %allocated30, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.then.7, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i8* @PyMem_Realloc(i8*, i64) #1

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare i64 @PyObject_LengthHint(%struct._object*, i64) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @merge_init(%struct.s_MergeState* %ms, i64 %list_size, i32 %has_keyfunc) #0 {
entry:
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %list_size.addr = alloca i64, align 8
  %has_keyfunc.addr = alloca i32, align 4
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  store i64 %list_size, i64* %list_size.addr, align 8
  store i32 %has_keyfunc, i32* %has_keyfunc.addr, align 4
  %0 = load i32, i32* %has_keyfunc.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %list_size.addr, align 8
  %add = add i64 %1, 1
  %div = sdiv i64 %add, 2
  %2 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %2, i32 0, i32 2
  store i64 %div, i64* %alloced, align 8
  %3 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced1 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %3, i32 0, i32 2
  %4 = load i64, i64* %alloced1, align 8
  %cmp = icmp slt i64 128, %4
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced3 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %5, i32 0, i32 2
  store i64 128, i64* %alloced3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced4 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %6, i32 0, i32 2
  %7 = load i64, i64* %alloced4, align 8
  %8 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %temparray = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %8, i32 0, i32 5
  %arrayidx = getelementptr [256 x %struct._object*], [256 x %struct._object*]* %temparray, i32 0, i64 %7
  %9 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %9, i32 0, i32 1
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a, i32 0, i32 1
  store %struct._object** %arrayidx, %struct._object*** %values, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %10 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced5 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %10, i32 0, i32 2
  store i64 256, i64* %alloced5, align 8
  %11 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a6 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %11, i32 0, i32 1
  %values7 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a6, i32 0, i32 1
  store %struct._object** null, %struct._object*** %values7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %12 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %temparray9 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %12, i32 0, i32 5
  %arraydecay = getelementptr inbounds [256 x %struct._object*], [256 x %struct._object*]* %temparray9, i32 0, i32 0
  %13 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a10 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %13, i32 0, i32 1
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a10, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %keys, align 8
  %14 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %14, i32 0, i32 3
  store i32 0, i32* %n, align 4
  %15 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %15, i32 0, i32 0
  store i64 7, i64* %min_gallop, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @merge_compute_minrun(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp sge i64 %0, 64
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %n.addr, align 8
  %and = and i64 %1, 1
  %2 = load i64, i64* %r, align 8
  %or = or i64 %2, %and
  store i64 %or, i64* %r, align 8
  %3 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %3, 1
  store i64 %shr, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %n.addr, align 8
  %5 = load i64, i64* %r, align 8
  %add = add i64 %4, %5
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal i64 @count_run(%struct._object** %lo, %struct._object** %hi, i32* %descending) #0 {
entry:
  %retval = alloca i64, align 8
  %lo.addr = alloca %struct._object**, align 8
  %hi.addr = alloca %struct._object**, align 8
  %descending.addr = alloca i32*, align 8
  %k = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct._object** %lo, %struct._object*** %lo.addr, align 8
  store %struct._object** %hi, %struct._object*** %hi.addr, align 8
  store i32* %descending, i32** %descending.addr, align 8
  %0 = load i32*, i32** %descending.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %1, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %lo.addr, align 8
  %2 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %3 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %cmp = icmp eq %struct._object** %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 2, i64* %n, align 8
  %4 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %5 = load %struct._object*, %struct._object** %4, align 8
  %6 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %6, i64 -1
  %7 = load %struct._object*, %struct._object** %add.ptr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %7, i32 0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %k, align 8
  %cmp1 = icmp slt i64 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %fail

if.end.4:                                         ; preds = %if.end
  %8 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then.5, label %if.else.20

if.then.5:                                        ; preds = %if.end.4
  %9 = load i32*, i32** %descending.addr, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %add.ptr6 = getelementptr %struct._object*, %struct._object** %10, i64 1
  store %struct._object** %add.ptr6, %struct._object*** %lo.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %11 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %12 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %cmp7 = icmp ult %struct._object** %11, %12
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %14 = load %struct._object*, %struct._object** %13, align 8
  %15 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %add.ptr9 = getelementptr %struct._object*, %struct._object** %15, i64 -1
  %16 = load %struct._object*, %struct._object** %add.ptr9, align 8
  %call10 = call i32 @PyObject_RichCompareBool(%struct._object* %14, %struct._object* %16, i32 0)
  %conv11 = sext i32 %call10 to i64
  store i64 %conv11, i64* %k, align 8
  %cmp12 = icmp slt i64 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %fail

if.end.15:                                        ; preds = %for.body
  %17 = load i64, i64* %k, align 8
  %tobool16 = icmp ne i64 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  br label %if.end.18

if.else:                                          ; preds = %if.end.15
  br label %for.end

if.end.18:                                        ; preds = %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %18 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %incdec.ptr19 = getelementptr %struct._object*, %struct._object** %18, i32 1
  store %struct._object** %incdec.ptr19, %struct._object*** %lo.addr, align 8
  %19 = load i64, i64* %n, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  br label %if.end.40

if.else.20:                                       ; preds = %if.end.4
  %20 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %add.ptr21 = getelementptr %struct._object*, %struct._object** %20, i64 1
  store %struct._object** %add.ptr21, %struct._object*** %lo.addr, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %if.else.20
  %21 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %22 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %cmp23 = icmp ult %struct._object** %21, %22
  br i1 %cmp23, label %for.body.25, label %for.end.39

for.body.25:                                      ; preds = %for.cond.22
  %23 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %24 = load %struct._object*, %struct._object** %23, align 8
  %25 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %add.ptr26 = getelementptr %struct._object*, %struct._object** %25, i64 -1
  %26 = load %struct._object*, %struct._object** %add.ptr26, align 8
  %call27 = call i32 @PyObject_RichCompareBool(%struct._object* %24, %struct._object* %26, i32 0)
  %conv28 = sext i32 %call27 to i64
  store i64 %conv28, i64* %k, align 8
  %cmp29 = icmp slt i64 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.25
  br label %fail

if.end.32:                                        ; preds = %for.body.25
  %27 = load i64, i64* %k, align 8
  %tobool33 = icmp ne i64 %27, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  br label %for.end.39

if.end.35:                                        ; preds = %if.end.32
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %28 = load %struct._object**, %struct._object*** %lo.addr, align 8
  %incdec.ptr37 = getelementptr %struct._object*, %struct._object** %28, i32 1
  store %struct._object** %incdec.ptr37, %struct._object*** %lo.addr, align 8
  %29 = load i64, i64* %n, align 8
  %inc38 = add i64 %29, 1
  store i64 %inc38, i64* %n, align 8
  br label %for.cond.22

for.end.39:                                       ; preds = %if.then.34, %for.cond.22
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %for.end
  %30 = load i64, i64* %n, align 8
  store i64 %30, i64* %retval
  br label %return

fail:                                             ; preds = %if.then.31, %if.then.14, %if.then.3
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %fail, %if.end.40, %if.then
  %31 = load i64, i64* %retval
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal void @reverse_sortslice(%struct.sortslice* %s, i64 %n) #0 {
entry:
  %s.addr = alloca %struct.sortslice*, align 8
  %n.addr = alloca i64, align 8
  store %struct.sortslice* %s, %struct.sortslice** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.sortslice*, %struct.sortslice** %s.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %0, i32 0, i32 0
  %1 = load %struct._object**, %struct._object*** %keys, align 8
  %2 = load i64, i64* %n.addr, align 8
  %3 = load %struct.sortslice*, %struct.sortslice** %s.addr, align 8
  %keys1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %3, i32 0, i32 0
  %4 = load %struct._object**, %struct._object*** %keys1, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %4, i64 %2
  call void @reverse_slice(%struct._object** %1, %struct._object** %arrayidx)
  %5 = load %struct.sortslice*, %struct.sortslice** %s.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sortslice*, %struct.sortslice** %s.addr, align 8
  %values2 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %7, i32 0, i32 1
  %8 = load %struct._object**, %struct._object*** %values2, align 8
  %9 = load i64, i64* %n.addr, align 8
  %10 = load %struct.sortslice*, %struct.sortslice** %s.addr, align 8
  %values3 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %values3, align 8
  %arrayidx4 = getelementptr %struct._object*, %struct._object** %11, i64 %9
  call void @reverse_slice(%struct._object** %8, %struct._object** %arrayidx4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @binarysort(%struct._object** %lo.coerce0, %struct._object** %lo.coerce1, %struct._object** %hi, %struct._object** %start) #0 {
entry:
  %retval = alloca i32, align 4
  %lo = alloca %struct.sortslice, align 8
  %hi.addr = alloca %struct._object**, align 8
  %start.addr = alloca %struct._object**, align 8
  %k = alloca i64, align 8
  %l = alloca %struct._object**, align 8
  %p = alloca %struct._object**, align 8
  %r = alloca %struct._object**, align 8
  %pivot = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %0 = bitcast %struct.sortslice* %lo to { %struct._object**, %struct._object** }*
  %1 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %0, i32 0, i32 0
  store %struct._object** %lo.coerce0, %struct._object*** %1
  %2 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %0, i32 0, i32 1
  store %struct._object** %lo.coerce1, %struct._object*** %2
  store %struct._object** %hi, %struct._object*** %hi.addr, align 8
  store %struct._object** %start, %struct._object*** %start.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %3 = load %struct._object**, %struct._object*** %keys, align 8
  %4 = load %struct._object**, %struct._object*** %start.addr, align 8
  %cmp = icmp eq %struct._object** %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object**, %struct._object*** %start.addr, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %5, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %start.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %if.end
  %6 = load %struct._object**, %struct._object*** %start.addr, align 8
  %7 = load %struct._object**, %struct._object*** %hi.addr, align 8
  %cmp1 = icmp ult %struct._object** %6, %7
  br i1 %cmp1, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %keys2 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %8 = load %struct._object**, %struct._object*** %keys2, align 8
  store %struct._object** %8, %struct._object*** %l, align 8
  %9 = load %struct._object**, %struct._object*** %start.addr, align 8
  store %struct._object** %9, %struct._object*** %r, align 8
  %10 = load %struct._object**, %struct._object*** %r, align 8
  %11 = load %struct._object*, %struct._object** %10, align 8
  store %struct._object* %11, %struct._object** %pivot, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %12 = load %struct._object**, %struct._object*** %l, align 8
  %13 = load %struct._object**, %struct._object*** %r, align 8
  %14 = load %struct._object**, %struct._object*** %l, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct._object** %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct._object** %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %shr = ashr i64 %sub.ptr.div, 1
  %add.ptr = getelementptr %struct._object*, %struct._object** %12, i64 %shr
  store %struct._object** %add.ptr, %struct._object*** %p, align 8
  %15 = load %struct._object*, %struct._object** %pivot, align 8
  %16 = load %struct._object**, %struct._object*** %p, align 8
  %17 = load %struct._object*, %struct._object** %16, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %15, %struct._object* %17, i32 0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %k, align 8
  %cmp3 = icmp slt i64 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  br label %fail

if.end.6:                                         ; preds = %do.body
  %18 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %19 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object** %19, %struct._object*** %r, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end.6
  %20 = load %struct._object**, %struct._object*** %p, align 8
  %add.ptr8 = getelementptr %struct._object*, %struct._object** %20, i64 1
  store %struct._object** %add.ptr8, %struct._object*** %l, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %21 = load %struct._object**, %struct._object*** %l, align 8
  %22 = load %struct._object**, %struct._object*** %r, align 8
  %cmp10 = icmp ult %struct._object** %21, %22
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct._object**, %struct._object*** %start.addr, align 8
  store %struct._object** %23, %struct._object*** %p, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %do.end
  %24 = load %struct._object**, %struct._object*** %p, align 8
  %25 = load %struct._object**, %struct._object*** %l, align 8
  %cmp13 = icmp ugt %struct._object** %24, %25
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %26 = load %struct._object**, %struct._object*** %p, align 8
  %add.ptr16 = getelementptr %struct._object*, %struct._object** %26, i64 -1
  %27 = load %struct._object*, %struct._object** %add.ptr16, align 8
  %28 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %27, %struct._object** %28, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %29 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr17 = getelementptr %struct._object*, %struct._object** %29, i32 -1
  store %struct._object** %incdec.ptr17, %struct._object*** %p, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %30 = load %struct._object*, %struct._object** %pivot, align 8
  %31 = load %struct._object**, %struct._object*** %l, align 8
  store %struct._object* %30, %struct._object** %31, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 1
  %32 = load %struct._object**, %struct._object*** %values, align 8
  %cmp18 = icmp ne %struct._object** %32, null
  br i1 %cmp18, label %if.then.20, label %if.end.38

if.then.20:                                       ; preds = %for.end
  %values21 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 1
  %33 = load %struct._object**, %struct._object*** %values21, align 8
  %keys22 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %lo, i32 0, i32 0
  %34 = load %struct._object**, %struct._object*** %keys22, align 8
  %sub.ptr.lhs.cast23 = ptrtoint %struct._object** %33 to i64
  %sub.ptr.rhs.cast24 = ptrtoint %struct._object** %34 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = sdiv exact i64 %sub.ptr.sub25, 8
  store i64 %sub.ptr.div26, i64* %offset, align 8
  %35 = load %struct._object**, %struct._object*** %start.addr, align 8
  %36 = load i64, i64* %offset, align 8
  %add.ptr27 = getelementptr %struct._object*, %struct._object** %35, i64 %36
  store %struct._object** %add.ptr27, %struct._object*** %p, align 8
  %37 = load %struct._object**, %struct._object*** %p, align 8
  %38 = load %struct._object*, %struct._object** %37, align 8
  store %struct._object* %38, %struct._object** %pivot, align 8
  %39 = load i64, i64* %offset, align 8
  %40 = load %struct._object**, %struct._object*** %l, align 8
  %add.ptr28 = getelementptr %struct._object*, %struct._object** %40, i64 %39
  store %struct._object** %add.ptr28, %struct._object*** %l, align 8
  %41 = load %struct._object**, %struct._object*** %start.addr, align 8
  %42 = load i64, i64* %offset, align 8
  %add.ptr29 = getelementptr %struct._object*, %struct._object** %41, i64 %42
  store %struct._object** %add.ptr29, %struct._object*** %p, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.35, %if.then.20
  %43 = load %struct._object**, %struct._object*** %p, align 8
  %44 = load %struct._object**, %struct._object*** %l, align 8
  %cmp31 = icmp ugt %struct._object** %43, %44
  br i1 %cmp31, label %for.body.33, label %for.end.37

for.body.33:                                      ; preds = %for.cond.30
  %45 = load %struct._object**, %struct._object*** %p, align 8
  %add.ptr34 = getelementptr %struct._object*, %struct._object** %45, i64 -1
  %46 = load %struct._object*, %struct._object** %add.ptr34, align 8
  %47 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %46, %struct._object** %47, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.33
  %48 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr36 = getelementptr %struct._object*, %struct._object** %48, i32 -1
  store %struct._object** %incdec.ptr36, %struct._object*** %p, align 8
  br label %for.cond.30

for.end.37:                                       ; preds = %for.cond.30
  %49 = load %struct._object*, %struct._object** %pivot, align 8
  %50 = load %struct._object**, %struct._object*** %l, align 8
  store %struct._object* %49, %struct._object** %50, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %for.end
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %51 = load %struct._object**, %struct._object*** %start.addr, align 8
  %incdec.ptr40 = getelementptr %struct._object*, %struct._object** %51, i32 1
  store %struct._object** %incdec.ptr40, %struct._object*** %start.addr, align 8
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

fail:                                             ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %fail, %for.end.41
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_collapse(%struct.s_MergeState* %ms) #0 {
entry:
  %retval = alloca i32, align 4
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %p = alloca %struct.s_slice*, align 8
  %n1 = alloca i64, align 8
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  %0 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending, i32 0, i32 0
  store %struct.s_slice* %arraydecay, %struct.s_slice** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %entry
  %1 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %1, i32 0, i32 3
  %2 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n2 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %3, i32 0, i32 3
  %4 = load i32, i32* %n2, align 4
  %sub = sub i32 %4, 2
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %n1, align 8
  %5 = load i64, i64* %n1, align 8
  %cmp3 = icmp sgt i64 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load i64, i64* %n1, align 8
  %sub5 = sub i64 %6, 1
  %7 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx = getelementptr %struct.s_slice, %struct.s_slice* %7, i64 %sub5
  %len = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %len, align 8
  %9 = load i64, i64* %n1, align 8
  %10 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx6 = getelementptr %struct.s_slice, %struct.s_slice* %10, i64 %9
  %len7 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx6, i32 0, i32 1
  %11 = load i64, i64* %len7, align 8
  %12 = load i64, i64* %n1, align 8
  %add = add i64 %12, 1
  %13 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx8 = getelementptr %struct.s_slice, %struct.s_slice* %13, i64 %add
  %len9 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx8, i32 0, i32 1
  %14 = load i64, i64* %len9, align 8
  %add10 = add i64 %11, %14
  %cmp11 = icmp sle i64 %8, %add10
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load i64, i64* %n1, align 8
  %sub13 = sub i64 %15, 1
  %16 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx14 = getelementptr %struct.s_slice, %struct.s_slice* %16, i64 %sub13
  %len15 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx14, i32 0, i32 1
  %17 = load i64, i64* %len15, align 8
  %18 = load i64, i64* %n1, align 8
  %add16 = add i64 %18, 1
  %19 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx17 = getelementptr %struct.s_slice, %struct.s_slice* %19, i64 %add16
  %len18 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx17, i32 0, i32 1
  %20 = load i64, i64* %len18, align 8
  %cmp19 = icmp slt i64 %17, %20
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %21 = load i64, i64* %n1, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %n1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  %22 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %23 = load i64, i64* %n1, align 8
  %call = call i64 @merge_at(%struct.s_MergeState* %22, i64 %23)
  %cmp22 = icmp slt i64 %call, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %while.body
  %24 = load i64, i64* %n1, align 8
  %25 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx26 = getelementptr %struct.s_slice, %struct.s_slice* %25, i64 %24
  %len27 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx26, i32 0, i32 1
  %26 = load i64, i64* %len27, align 8
  %27 = load i64, i64* %n1, align 8
  %add28 = add i64 %27, 1
  %28 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx29 = getelementptr %struct.s_slice, %struct.s_slice* %28, i64 %add28
  %len30 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx29, i32 0, i32 1
  %29 = load i64, i64* %len30, align 8
  %cmp31 = icmp sle i64 %26, %29
  br i1 %cmp31, label %if.then.33, label %if.else.39

if.then.33:                                       ; preds = %if.else
  %30 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %31 = load i64, i64* %n1, align 8
  %call34 = call i64 @merge_at(%struct.s_MergeState* %30, i64 %31)
  %cmp35 = icmp slt i64 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.33
  br label %if.end.40

if.else.39:                                       ; preds = %if.else
  br label %while.end

if.end.40:                                        ; preds = %if.end.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.25
  br label %while.cond

while.end:                                        ; preds = %if.else.39, %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.37, %if.then.24
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sortslice_advance(%struct.sortslice* %slice, i64 %n) #4 {
entry:
  %slice.addr = alloca %struct.sortslice*, align 8
  %n.addr = alloca i64, align 8
  store %struct.sortslice* %slice, %struct.sortslice** %slice.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.sortslice*, %struct.sortslice** %slice.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %1, i32 0, i32 0
  %2 = load %struct._object**, %struct._object*** %keys, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %2, i64 %0
  store %struct._object** %add.ptr, %struct._object*** %keys, align 8
  %3 = load %struct.sortslice*, %struct.sortslice** %slice.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %3, i32 0, i32 1
  %4 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %n.addr, align 8
  %6 = load %struct.sortslice*, %struct.sortslice** %slice.addr, align 8
  %values1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %6, i32 0, i32 1
  %7 = load %struct._object**, %struct._object*** %values1, align 8
  %add.ptr2 = getelementptr %struct._object*, %struct._object** %7, i64 %5
  store %struct._object** %add.ptr2, %struct._object*** %values1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_force_collapse(%struct.s_MergeState* %ms) #0 {
entry:
  %retval = alloca i32, align 4
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %p = alloca %struct.s_slice*, align 8
  %n1 = alloca i64, align 8
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  %0 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending, i32 0, i32 0
  store %struct.s_slice* %arraydecay, %struct.s_slice** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %1 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %1, i32 0, i32 3
  %2 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n2 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %3, i32 0, i32 3
  %4 = load i32, i32* %n2, align 4
  %sub = sub i32 %4, 2
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %n1, align 8
  %5 = load i64, i64* %n1, align 8
  %cmp3 = icmp sgt i64 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load i64, i64* %n1, align 8
  %sub5 = sub i64 %6, 1
  %7 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx = getelementptr %struct.s_slice, %struct.s_slice* %7, i64 %sub5
  %len = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %len, align 8
  %9 = load i64, i64* %n1, align 8
  %add = add i64 %9, 1
  %10 = load %struct.s_slice*, %struct.s_slice** %p, align 8
  %arrayidx6 = getelementptr %struct.s_slice, %struct.s_slice* %10, i64 %add
  %len7 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx6, i32 0, i32 1
  %11 = load i64, i64* %len7, align 8
  %cmp8 = icmp slt i64 %8, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i64, i64* %n1, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %n1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %13 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %14 = load i64, i64* %n1, align 8
  %call = call i64 @merge_at(%struct.s_MergeState* %13, i64 %14)
  %cmp10 = icmp slt i64 %call, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.12
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @merge_freemem(%struct.s_MergeState* %ms) #0 {
entry:
  %ms.addr = alloca %struct.s_MergeState*, align 8
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  %0 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %0, i32 0, i32 1
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a, i32 0, i32 0
  %1 = load %struct._object**, %struct._object*** %keys, align 8
  %2 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %temparray = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %2, i32 0, i32 5
  %arraydecay = getelementptr inbounds [256 x %struct._object*], [256 x %struct._object*]* %temparray, i32 0, i32 0
  %cmp = icmp ne %struct._object** %1, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a1 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %3, i32 0, i32 1
  %keys2 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a1, i32 0, i32 0
  %4 = load %struct._object**, %struct._object*** %keys2, align 8
  %5 = bitcast %struct._object** %4 to i8*
  call void @PyMem_Free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @merge_at(%struct.s_MergeState* %ms, i64 %i) #0 {
entry:
  %retval = alloca i64, align 8
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %i.addr = alloca i64, align 8
  %ssa = alloca %struct.sortslice, align 8
  %ssb = alloca %struct.sortslice, align 8
  %na = alloca i64, align 8
  %nb = alloca i64, align 8
  %k = alloca i64, align 8
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %1, i32 0, i32 4
  %arrayidx = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending, i32 0, i64 %0
  %base = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx, i32 0, i32 0
  %2 = bitcast %struct.sortslice* %ssa to i8*
  %3 = bitcast %struct.sortslice* %base to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending1 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %5, i32 0, i32 4
  %arrayidx2 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending1, i32 0, i64 %4
  %len = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx2, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  store i64 %6, i64* %na, align 8
  %7 = load i64, i64* %i.addr, align 8
  %add = add i64 %7, 1
  %8 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending3 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %8, i32 0, i32 4
  %arrayidx4 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending3, i32 0, i64 %add
  %base5 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx4, i32 0, i32 0
  %9 = bitcast %struct.sortslice* %ssb to i8*
  %10 = bitcast %struct.sortslice* %base5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = load i64, i64* %i.addr, align 8
  %add6 = add i64 %11, 1
  %12 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending7 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %12, i32 0, i32 4
  %arrayidx8 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending7, i32 0, i64 %add6
  %len9 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx8, i32 0, i32 1
  %13 = load i64, i64* %len9, align 8
  store i64 %13, i64* %nb, align 8
  %14 = load i64, i64* %na, align 8
  %15 = load i64, i64* %nb, align 8
  %add10 = add i64 %14, %15
  %16 = load i64, i64* %i.addr, align 8
  %17 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending11 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %17, i32 0, i32 4
  %arrayidx12 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending11, i32 0, i64 %16
  %len13 = getelementptr inbounds %struct.s_slice, %struct.s_slice* %arrayidx12, i32 0, i32 1
  store i64 %add10, i64* %len13, align 8
  %18 = load i64, i64* %i.addr, align 8
  %19 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %19, i32 0, i32 3
  %20 = load i32, i32* %n, align 4
  %sub = sub i32 %20, 3
  %conv = sext i32 %sub to i64
  %cmp = icmp eq i64 %18, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i64, i64* %i.addr, align 8
  %add15 = add i64 %21, 1
  %22 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending16 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %22, i32 0, i32 4
  %arrayidx17 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending16, i32 0, i64 %add15
  %23 = load i64, i64* %i.addr, align 8
  %add18 = add i64 %23, 2
  %24 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %pending19 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %24, i32 0, i32 4
  %arrayidx20 = getelementptr [85 x %struct.s_slice], [85 x %struct.s_slice]* %pending19, i32 0, i64 %add18
  %25 = bitcast %struct.s_slice* %arrayidx17 to i8*
  %26 = bitcast %struct.s_slice* %arrayidx20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %n21 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %27, i32 0, i32 3
  %28 = load i32, i32* %n21, align 4
  %dec = add i32 %28, -1
  store i32 %dec, i32* %n21, align 4
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %29 = load %struct._object**, %struct._object*** %keys, align 8
  %30 = load %struct._object*, %struct._object** %29, align 8
  %keys22 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %31 = load %struct._object**, %struct._object*** %keys22, align 8
  %32 = load i64, i64* %na, align 8
  %call = call i64 @gallop_right(%struct._object* %30, %struct._object** %31, i64 %32, i64 0)
  store i64 %call, i64* %k, align 8
  %33 = load i64, i64* %k, align 8
  %cmp23 = icmp slt i64 %33, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.26:                                        ; preds = %if.end
  %34 = load i64, i64* %k, align 8
  call void @sortslice_advance(%struct.sortslice* %ssa, i64 %34)
  %35 = load i64, i64* %k, align 8
  %36 = load i64, i64* %na, align 8
  %sub27 = sub i64 %36, %35
  store i64 %sub27, i64* %na, align 8
  %37 = load i64, i64* %na, align 8
  %cmp28 = icmp eq i64 %37, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  store i64 0, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  %38 = load i64, i64* %na, align 8
  %sub32 = sub i64 %38, 1
  %keys33 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %39 = load %struct._object**, %struct._object*** %keys33, align 8
  %arrayidx34 = getelementptr %struct._object*, %struct._object** %39, i64 %sub32
  %40 = load %struct._object*, %struct._object** %arrayidx34, align 8
  %keys35 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %41 = load %struct._object**, %struct._object*** %keys35, align 8
  %42 = load i64, i64* %nb, align 8
  %43 = load i64, i64* %nb, align 8
  %sub36 = sub i64 %43, 1
  %call37 = call i64 @gallop_left(%struct._object* %40, %struct._object** %41, i64 %42, i64 %sub36)
  store i64 %call37, i64* %nb, align 8
  %44 = load i64, i64* %nb, align 8
  %cmp38 = icmp sle i64 %44, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.31
  %45 = load i64, i64* %nb, align 8
  store i64 %45, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.31
  %46 = load i64, i64* %na, align 8
  %47 = load i64, i64* %nb, align 8
  %cmp42 = icmp sle i64 %46, %47
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.41
  %48 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %49 = load i64, i64* %na, align 8
  %50 = load i64, i64* %nb, align 8
  %51 = bitcast %struct.sortslice* %ssa to { %struct._object**, %struct._object** }*
  %52 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %51, i32 0, i32 0
  %53 = load %struct._object**, %struct._object*** %52, align 1
  %54 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %51, i32 0, i32 1
  %55 = load %struct._object**, %struct._object*** %54, align 1
  %56 = bitcast %struct.sortslice* %ssb to { %struct._object**, %struct._object** }*
  %57 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %56, i32 0, i32 0
  %58 = load %struct._object**, %struct._object*** %57, align 1
  %59 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %56, i32 0, i32 1
  %60 = load %struct._object**, %struct._object*** %59, align 1
  %call45 = call i64 @merge_lo(%struct.s_MergeState* %48, %struct._object** %53, %struct._object** %55, i64 %49, %struct._object** %58, %struct._object** %60, i64 %50)
  store i64 %call45, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end.41
  %61 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %62 = load i64, i64* %na, align 8
  %63 = load i64, i64* %nb, align 8
  %64 = bitcast %struct.sortslice* %ssa to { %struct._object**, %struct._object** }*
  %65 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %64, i32 0, i32 0
  %66 = load %struct._object**, %struct._object*** %65, align 1
  %67 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %64, i32 0, i32 1
  %68 = load %struct._object**, %struct._object*** %67, align 1
  %69 = bitcast %struct.sortslice* %ssb to { %struct._object**, %struct._object** }*
  %70 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %69, i32 0, i32 0
  %71 = load %struct._object**, %struct._object*** %70, align 1
  %72 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %69, i32 0, i32 1
  %73 = load %struct._object**, %struct._object*** %72, align 1
  %call46 = call i64 @merge_hi(%struct.s_MergeState* %61, %struct._object** %66, %struct._object** %68, i64 %62, %struct._object** %71, %struct._object** %73, i64 %63)
  store i64 %call46, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.44, %if.then.40, %if.then.30, %if.then.25
  %74 = load i64, i64* %retval
  ret i64 %74
}

; Function Attrs: nounwind uwtable
define internal i64 @gallop_right(%struct._object* %key, %struct._object** %a, i64 %n, i64 %hint) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object**, align 8
  %n.addr = alloca i64, align 8
  %hint.addr = alloca i64, align 8
  %ofs = alloca i64, align 8
  %lastofs = alloca i64, align 8
  %k = alloca i64, align 8
  %maxofs = alloca i64, align 8
  %maxofs26 = alloca i64, align 8
  %m = alloca i64, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object** %a, %struct._object*** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %hint, i64* %hint.addr, align 8
  %0 = load i64, i64* %hint.addr, align 8
  %1 = load %struct._object**, %struct._object*** %a.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %1, i64 %0
  store %struct._object** %add.ptr, %struct._object*** %a.addr, align 8
  store i64 0, i64* %lastofs, align 8
  store i64 1, i64* %ofs, align 8
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %3 = load %struct._object**, %struct._object*** %a.addr, align 8
  %4 = load %struct._object*, %struct._object** %3, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %2, %struct._object* %4, i32 0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %k, align 8
  %cmp = icmp slt i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then.2, label %if.else.25

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %hint.addr, align 8
  %add = add i64 %6, 1
  store i64 %add, i64* %maxofs, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.then.2
  %7 = load i64, i64* %ofs, align 8
  %8 = load i64, i64* %maxofs, align 8
  %cmp3 = icmp slt i64 %7, %8
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._object*, %struct._object** %key.addr, align 8
  %10 = load %struct._object**, %struct._object*** %a.addr, align 8
  %11 = load i64, i64* %ofs, align 8
  %idx.neg = sub i64 0, %11
  %add.ptr5 = getelementptr %struct._object*, %struct._object** %10, i64 %idx.neg
  %12 = load %struct._object*, %struct._object** %add.ptr5, align 8
  %call6 = call i32 @PyObject_RichCompareBool(%struct._object* %9, %struct._object* %12, i32 0)
  %conv7 = sext i32 %call6 to i64
  store i64 %conv7, i64* %k, align 8
  %cmp8 = icmp slt i64 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  br label %fail

if.end.11:                                        ; preds = %while.body
  %13 = load i64, i64* %k, align 8
  %tobool12 = icmp ne i64 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %14 = load i64, i64* %ofs, align 8
  store i64 %14, i64* %lastofs, align 8
  %15 = load i64, i64* %ofs, align 8
  %shl = shl i64 %15, 1
  %add14 = add i64 %shl, 1
  store i64 %add14, i64* %ofs, align 8
  %16 = load i64, i64* %ofs, align 8
  %cmp15 = icmp sle i64 %16, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  %17 = load i64, i64* %maxofs, align 8
  store i64 %17, i64* %ofs, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.13
  br label %if.end.19

if.else:                                          ; preds = %if.end.11
  br label %while.end

if.end.19:                                        ; preds = %if.end.18
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %18 = load i64, i64* %ofs, align 8
  %19 = load i64, i64* %maxofs, align 8
  %cmp20 = icmp sgt i64 %18, %19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  %20 = load i64, i64* %maxofs, align 8
  store i64 %20, i64* %ofs, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.end
  %21 = load i64, i64* %lastofs, align 8
  store i64 %21, i64* %k, align 8
  %22 = load i64, i64* %hint.addr, align 8
  %23 = load i64, i64* %ofs, align 8
  %sub = sub i64 %22, %23
  store i64 %sub, i64* %lastofs, align 8
  %24 = load i64, i64* %hint.addr, align 8
  %25 = load i64, i64* %k, align 8
  %sub24 = sub i64 %24, %25
  store i64 %sub24, i64* %ofs, align 8
  br label %if.end.54

if.else.25:                                       ; preds = %if.end
  %26 = load i64, i64* %n.addr, align 8
  %27 = load i64, i64* %hint.addr, align 8
  %sub27 = sub i64 %26, %27
  store i64 %sub27, i64* %maxofs26, align 8
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.46, %if.else.25
  %28 = load i64, i64* %ofs, align 8
  %29 = load i64, i64* %maxofs26, align 8
  %cmp29 = icmp slt i64 %28, %29
  br i1 %cmp29, label %while.body.31, label %while.end.47

while.body.31:                                    ; preds = %while.cond.28
  %30 = load %struct._object*, %struct._object** %key.addr, align 8
  %31 = load i64, i64* %ofs, align 8
  %32 = load %struct._object**, %struct._object*** %a.addr, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %32, i64 %31
  %33 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call32 = call i32 @PyObject_RichCompareBool(%struct._object* %30, %struct._object* %33, i32 0)
  %conv33 = sext i32 %call32 to i64
  store i64 %conv33, i64* %k, align 8
  %cmp34 = icmp slt i64 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.body.31
  br label %fail

if.end.37:                                        ; preds = %while.body.31
  %34 = load i64, i64* %k, align 8
  %tobool38 = icmp ne i64 %34, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  br label %while.end.47

if.end.40:                                        ; preds = %if.end.37
  %35 = load i64, i64* %ofs, align 8
  store i64 %35, i64* %lastofs, align 8
  %36 = load i64, i64* %ofs, align 8
  %shl41 = shl i64 %36, 1
  %add42 = add i64 %shl41, 1
  store i64 %add42, i64* %ofs, align 8
  %37 = load i64, i64* %ofs, align 8
  %cmp43 = icmp sle i64 %37, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  %38 = load i64, i64* %maxofs26, align 8
  store i64 %38, i64* %ofs, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.40
  br label %while.cond.28

while.end.47:                                     ; preds = %if.then.39, %while.cond.28
  %39 = load i64, i64* %ofs, align 8
  %40 = load i64, i64* %maxofs26, align 8
  %cmp48 = icmp sgt i64 %39, %40
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end.47
  %41 = load i64, i64* %maxofs26, align 8
  store i64 %41, i64* %ofs, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %while.end.47
  %42 = load i64, i64* %hint.addr, align 8
  %43 = load i64, i64* %lastofs, align 8
  %add52 = add i64 %43, %42
  store i64 %add52, i64* %lastofs, align 8
  %44 = load i64, i64* %hint.addr, align 8
  %45 = load i64, i64* %ofs, align 8
  %add53 = add i64 %45, %44
  store i64 %add53, i64* %ofs, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.51, %if.end.23
  %46 = load i64, i64* %hint.addr, align 8
  %47 = load %struct._object**, %struct._object*** %a.addr, align 8
  %idx.neg55 = sub i64 0, %46
  %add.ptr56 = getelementptr %struct._object*, %struct._object** %47, i64 %idx.neg55
  store %struct._object** %add.ptr56, %struct._object*** %a.addr, align 8
  %48 = load i64, i64* %lastofs, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %lastofs, align 8
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.74, %if.end.54
  %49 = load i64, i64* %lastofs, align 8
  %50 = load i64, i64* %ofs, align 8
  %cmp58 = icmp slt i64 %49, %50
  br i1 %cmp58, label %while.body.60, label %while.end.75

while.body.60:                                    ; preds = %while.cond.57
  %51 = load i64, i64* %lastofs, align 8
  %52 = load i64, i64* %ofs, align 8
  %53 = load i64, i64* %lastofs, align 8
  %sub61 = sub i64 %52, %53
  %shr = ashr i64 %sub61, 1
  %add62 = add i64 %51, %shr
  store i64 %add62, i64* %m, align 8
  %54 = load %struct._object*, %struct._object** %key.addr, align 8
  %55 = load i64, i64* %m, align 8
  %56 = load %struct._object**, %struct._object*** %a.addr, align 8
  %arrayidx63 = getelementptr %struct._object*, %struct._object** %56, i64 %55
  %57 = load %struct._object*, %struct._object** %arrayidx63, align 8
  %call64 = call i32 @PyObject_RichCompareBool(%struct._object* %54, %struct._object* %57, i32 0)
  %conv65 = sext i32 %call64 to i64
  store i64 %conv65, i64* %k, align 8
  %cmp66 = icmp slt i64 %conv65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.body.60
  br label %fail

if.end.69:                                        ; preds = %while.body.60
  %58 = load i64, i64* %k, align 8
  %tobool70 = icmp ne i64 %58, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.69
  %59 = load i64, i64* %m, align 8
  store i64 %59, i64* %ofs, align 8
  br label %if.end.74

if.else.72:                                       ; preds = %if.end.69
  %60 = load i64, i64* %m, align 8
  %add73 = add i64 %60, 1
  store i64 %add73, i64* %lastofs, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %while.cond.57

while.end.75:                                     ; preds = %while.cond.57
  %61 = load i64, i64* %ofs, align 8
  store i64 %61, i64* %retval
  br label %return

fail:                                             ; preds = %if.then.68, %if.then.36, %if.then.10, %if.then
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %fail, %while.end.75
  %62 = load i64, i64* %retval
  ret i64 %62
}

; Function Attrs: nounwind uwtable
define internal i64 @gallop_left(%struct._object* %key, %struct._object** %a, i64 %n, i64 %hint) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object**, align 8
  %n.addr = alloca i64, align 8
  %hint.addr = alloca i64, align 8
  %ofs = alloca i64, align 8
  %lastofs = alloca i64, align 8
  %k = alloca i64, align 8
  %maxofs = alloca i64, align 8
  %maxofs25 = alloca i64, align 8
  %m = alloca i64, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object** %a, %struct._object*** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %hint, i64* %hint.addr, align 8
  %0 = load i64, i64* %hint.addr, align 8
  %1 = load %struct._object**, %struct._object*** %a.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %1, i64 %0
  store %struct._object** %add.ptr, %struct._object*** %a.addr, align 8
  store i64 0, i64* %lastofs, align 8
  store i64 1, i64* %ofs, align 8
  %2 = load %struct._object**, %struct._object*** %a.addr, align 8
  %3 = load %struct._object*, %struct._object** %2, align 8
  %4 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %3, %struct._object* %4, i32 0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %k, align 8
  %cmp = icmp slt i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then.2, label %if.else.24

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8
  %7 = load i64, i64* %hint.addr, align 8
  %sub = sub i64 %6, %7
  store i64 %sub, i64* %maxofs, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.2
  %8 = load i64, i64* %ofs, align 8
  %9 = load i64, i64* %maxofs, align 8
  %cmp3 = icmp slt i64 %8, %9
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %ofs, align 8
  %11 = load %struct._object**, %struct._object*** %a.addr, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %10
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load %struct._object*, %struct._object** %key.addr, align 8
  %call5 = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %13, i32 0)
  %conv6 = sext i32 %call5 to i64
  store i64 %conv6, i64* %k, align 8
  %cmp7 = icmp slt i64 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  br label %fail

if.end.10:                                        ; preds = %while.body
  %14 = load i64, i64* %k, align 8
  %tobool11 = icmp ne i64 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  %15 = load i64, i64* %ofs, align 8
  store i64 %15, i64* %lastofs, align 8
  %16 = load i64, i64* %ofs, align 8
  %shl = shl i64 %16, 1
  %add = add i64 %shl, 1
  store i64 %add, i64* %ofs, align 8
  %17 = load i64, i64* %ofs, align 8
  %cmp13 = icmp sle i64 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %18 = load i64, i64* %maxofs, align 8
  store i64 %18, i64* %ofs, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  br label %if.end.17

if.else:                                          ; preds = %if.end.10
  br label %while.end

if.end.17:                                        ; preds = %if.end.16
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %19 = load i64, i64* %ofs, align 8
  %20 = load i64, i64* %maxofs, align 8
  %cmp18 = icmp sgt i64 %19, %20
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end
  %21 = load i64, i64* %maxofs, align 8
  store i64 %21, i64* %ofs, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %while.end
  %22 = load i64, i64* %hint.addr, align 8
  %23 = load i64, i64* %lastofs, align 8
  %add22 = add i64 %23, %22
  store i64 %add22, i64* %lastofs, align 8
  %24 = load i64, i64* %hint.addr, align 8
  %25 = load i64, i64* %ofs, align 8
  %add23 = add i64 %25, %24
  store i64 %add23, i64* %ofs, align 8
  br label %if.end.54

if.else.24:                                       ; preds = %if.end
  %26 = load i64, i64* %hint.addr, align 8
  %add26 = add i64 %26, 1
  store i64 %add26, i64* %maxofs25, align 8
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.46, %if.else.24
  %27 = load i64, i64* %ofs, align 8
  %28 = load i64, i64* %maxofs25, align 8
  %cmp28 = icmp slt i64 %27, %28
  br i1 %cmp28, label %while.body.30, label %while.end.47

while.body.30:                                    ; preds = %while.cond.27
  %29 = load %struct._object**, %struct._object*** %a.addr, align 8
  %30 = load i64, i64* %ofs, align 8
  %idx.neg = sub i64 0, %30
  %add.ptr31 = getelementptr %struct._object*, %struct._object** %29, i64 %idx.neg
  %31 = load %struct._object*, %struct._object** %add.ptr31, align 8
  %32 = load %struct._object*, %struct._object** %key.addr, align 8
  %call32 = call i32 @PyObject_RichCompareBool(%struct._object* %31, %struct._object* %32, i32 0)
  %conv33 = sext i32 %call32 to i64
  store i64 %conv33, i64* %k, align 8
  %cmp34 = icmp slt i64 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.body.30
  br label %fail

if.end.37:                                        ; preds = %while.body.30
  %33 = load i64, i64* %k, align 8
  %tobool38 = icmp ne i64 %33, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  br label %while.end.47

if.end.40:                                        ; preds = %if.end.37
  %34 = load i64, i64* %ofs, align 8
  store i64 %34, i64* %lastofs, align 8
  %35 = load i64, i64* %ofs, align 8
  %shl41 = shl i64 %35, 1
  %add42 = add i64 %shl41, 1
  store i64 %add42, i64* %ofs, align 8
  %36 = load i64, i64* %ofs, align 8
  %cmp43 = icmp sle i64 %36, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  %37 = load i64, i64* %maxofs25, align 8
  store i64 %37, i64* %ofs, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.40
  br label %while.cond.27

while.end.47:                                     ; preds = %if.then.39, %while.cond.27
  %38 = load i64, i64* %ofs, align 8
  %39 = load i64, i64* %maxofs25, align 8
  %cmp48 = icmp sgt i64 %38, %39
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end.47
  %40 = load i64, i64* %maxofs25, align 8
  store i64 %40, i64* %ofs, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %while.end.47
  %41 = load i64, i64* %lastofs, align 8
  store i64 %41, i64* %k, align 8
  %42 = load i64, i64* %hint.addr, align 8
  %43 = load i64, i64* %ofs, align 8
  %sub52 = sub i64 %42, %43
  store i64 %sub52, i64* %lastofs, align 8
  %44 = load i64, i64* %hint.addr, align 8
  %45 = load i64, i64* %k, align 8
  %sub53 = sub i64 %44, %45
  store i64 %sub53, i64* %ofs, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.51, %if.end.21
  %46 = load i64, i64* %hint.addr, align 8
  %47 = load %struct._object**, %struct._object*** %a.addr, align 8
  %idx.neg55 = sub i64 0, %46
  %add.ptr56 = getelementptr %struct._object*, %struct._object** %47, i64 %idx.neg55
  store %struct._object** %add.ptr56, %struct._object*** %a.addr, align 8
  %48 = load i64, i64* %lastofs, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %lastofs, align 8
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.74, %if.end.54
  %49 = load i64, i64* %lastofs, align 8
  %50 = load i64, i64* %ofs, align 8
  %cmp58 = icmp slt i64 %49, %50
  br i1 %cmp58, label %while.body.60, label %while.end.75

while.body.60:                                    ; preds = %while.cond.57
  %51 = load i64, i64* %lastofs, align 8
  %52 = load i64, i64* %ofs, align 8
  %53 = load i64, i64* %lastofs, align 8
  %sub61 = sub i64 %52, %53
  %shr = ashr i64 %sub61, 1
  %add62 = add i64 %51, %shr
  store i64 %add62, i64* %m, align 8
  %54 = load i64, i64* %m, align 8
  %55 = load %struct._object**, %struct._object*** %a.addr, align 8
  %arrayidx63 = getelementptr %struct._object*, %struct._object** %55, i64 %54
  %56 = load %struct._object*, %struct._object** %arrayidx63, align 8
  %57 = load %struct._object*, %struct._object** %key.addr, align 8
  %call64 = call i32 @PyObject_RichCompareBool(%struct._object* %56, %struct._object* %57, i32 0)
  %conv65 = sext i32 %call64 to i64
  store i64 %conv65, i64* %k, align 8
  %cmp66 = icmp slt i64 %conv65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.body.60
  br label %fail

if.end.69:                                        ; preds = %while.body.60
  %58 = load i64, i64* %k, align 8
  %tobool70 = icmp ne i64 %58, 0
  br i1 %tobool70, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.end.69
  %59 = load i64, i64* %m, align 8
  %add72 = add i64 %59, 1
  store i64 %add72, i64* %lastofs, align 8
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  %60 = load i64, i64* %m, align 8
  store i64 %60, i64* %ofs, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.then.71
  br label %while.cond.57

while.end.75:                                     ; preds = %while.cond.57
  %61 = load i64, i64* %ofs, align 8
  store i64 %61, i64* %retval
  br label %return

fail:                                             ; preds = %if.then.68, %if.then.36, %if.then.9, %if.then
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %fail, %while.end.75
  %62 = load i64, i64* %retval
  ret i64 %62
}

; Function Attrs: nounwind uwtable
define internal i64 @merge_lo(%struct.s_MergeState* %ms, %struct._object** %ssa.coerce0, %struct._object** %ssa.coerce1, i64 %na, %struct._object** %ssb.coerce0, %struct._object** %ssb.coerce1, i64 %nb) #0 {
entry:
  %retval = alloca i64, align 8
  %ssa = alloca %struct.sortslice, align 8
  %ssb = alloca %struct.sortslice, align 8
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %na.addr = alloca i64, align 8
  %nb.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %dest = alloca %struct.sortslice, align 8
  %result = alloca i32, align 4
  %min_gallop = alloca i64, align 8
  %acount = alloca i64, align 8
  %bcount = alloca i64, align 8
  %0 = bitcast %struct.sortslice* %ssa to { %struct._object**, %struct._object** }*
  %1 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %0, i32 0, i32 0
  store %struct._object** %ssa.coerce0, %struct._object*** %1
  %2 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %0, i32 0, i32 1
  store %struct._object** %ssa.coerce1, %struct._object*** %2
  %3 = bitcast %struct.sortslice* %ssb to { %struct._object**, %struct._object** }*
  %4 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %3, i32 0, i32 0
  store %struct._object** %ssb.coerce0, %struct._object*** %4
  %5 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %3, i32 0, i32 1
  store %struct._object** %ssb.coerce1, %struct._object*** %5
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  store i64 %na, i64* %na.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  store i32 -1, i32* %result, align 4
  %6 = load i64, i64* %na.addr, align 8
  %7 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %7, i32 0, i32 2
  %8 = load i64, i64* %alloced, align 8
  %cmp = icmp sle i64 %6, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %10 = load i64, i64* %na.addr, align 8
  %call = call i32 @merge_getmem(%struct.s_MergeState* %9, i64 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp1 = icmp slt i32 %cond, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %11, i32 0, i32 1
  %12 = load i64, i64* %na.addr, align 8
  call void @sortslice_memcpy(%struct.sortslice* %a, i64 0, %struct.sortslice* %ssa, i64 0, i64 %12)
  %13 = bitcast %struct.sortslice* %dest to i8*
  %14 = bitcast %struct.sortslice* %ssa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a2 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %15, i32 0, i32 1
  %16 = bitcast %struct.sortslice* %ssa to i8*
  %17 = bitcast %struct.sortslice* %a2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  call void @sortslice_copy_incr(%struct.sortslice* %dest, %struct.sortslice* %ssb)
  %18 = load i64, i64* %nb.addr, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %nb.addr, align 8
  %19 = load i64, i64* %nb.addr, align 8
  %cmp3 = icmp eq i64 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %Succeed

if.end.5:                                         ; preds = %if.end
  %20 = load i64, i64* %na.addr, align 8
  %cmp6 = icmp eq i64 %20, 1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %CopyB

if.end.8:                                         ; preds = %if.end.5
  %21 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop9 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %21, i32 0, i32 0
  %22 = load i64, i64* %min_gallop9, align 8
  store i64 %22, i64* %min_gallop, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %if.end.8
  store i64 0, i64* %acount, align 8
  store i64 0, i64* %bcount, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %if.end.38, %for.cond
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %23 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %23, i64 0
  %24 = load %struct._object*, %struct._object** %arrayidx, align 8
  %keys11 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %25 = load %struct._object**, %struct._object*** %keys11, align 8
  %arrayidx12 = getelementptr %struct._object*, %struct._object** %25, i64 0
  %26 = load %struct._object*, %struct._object** %arrayidx12, align 8
  %call13 = call i32 @PyObject_RichCompareBool(%struct._object* %24, %struct._object* %26, i32 0)
  %conv = sext i32 %call13 to i64
  store i64 %conv, i64* %k, align 8
  %27 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %27, 0
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.cond.10
  %28 = load i64, i64* %k, align 8
  %cmp15 = icmp slt i64 %28, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  br label %Fail

if.end.18:                                        ; preds = %if.then.14
  call void @sortslice_copy_incr(%struct.sortslice* %dest, %struct.sortslice* %ssb)
  %29 = load i64, i64* %bcount, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %bcount, align 8
  store i64 0, i64* %acount, align 8
  %30 = load i64, i64* %nb.addr, align 8
  %dec19 = add i64 %30, -1
  store i64 %dec19, i64* %nb.addr, align 8
  %31 = load i64, i64* %nb.addr, align 8
  %cmp20 = icmp eq i64 %31, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  br label %Succeed

if.end.23:                                        ; preds = %if.end.18
  %32 = load i64, i64* %bcount, align 8
  %33 = load i64, i64* %min_gallop, align 8
  %cmp24 = icmp sge i64 %32, %33
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %for.end

if.end.27:                                        ; preds = %if.end.23
  br label %if.end.38

if.else:                                          ; preds = %for.cond.10
  call void @sortslice_copy_incr(%struct.sortslice* %dest, %struct.sortslice* %ssa)
  %34 = load i64, i64* %acount, align 8
  %inc28 = add i64 %34, 1
  store i64 %inc28, i64* %acount, align 8
  store i64 0, i64* %bcount, align 8
  %35 = load i64, i64* %na.addr, align 8
  %dec29 = add i64 %35, -1
  store i64 %dec29, i64* %na.addr, align 8
  %36 = load i64, i64* %na.addr, align 8
  %cmp30 = icmp eq i64 %36, 1
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  br label %CopyB

if.end.33:                                        ; preds = %if.else
  %37 = load i64, i64* %acount, align 8
  %38 = load i64, i64* %min_gallop, align 8
  %cmp34 = icmp sge i64 %37, %38
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  br label %for.end

if.end.37:                                        ; preds = %if.end.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.27
  br label %for.cond.10

for.end:                                          ; preds = %if.then.36, %if.then.26
  %39 = load i64, i64* %min_gallop, align 8
  %inc39 = add i64 %39, 1
  store i64 %inc39, i64* %min_gallop, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %for.end
  %40 = load i64, i64* %min_gallop, align 8
  %cmp40 = icmp sgt i64 %40, 1
  %conv41 = zext i1 %cmp40 to i32
  %conv42 = sext i32 %conv41 to i64
  %41 = load i64, i64* %min_gallop, align 8
  %sub = sub i64 %41, %conv42
  store i64 %sub, i64* %min_gallop, align 8
  %42 = load i64, i64* %min_gallop, align 8
  %43 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop43 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %43, i32 0, i32 0
  store i64 %42, i64* %min_gallop43, align 8
  %keys44 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %44 = load %struct._object**, %struct._object*** %keys44, align 8
  %arrayidx45 = getelementptr %struct._object*, %struct._object** %44, i64 0
  %45 = load %struct._object*, %struct._object** %arrayidx45, align 8
  %keys46 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %46 = load %struct._object**, %struct._object*** %keys46, align 8
  %47 = load i64, i64* %na.addr, align 8
  %call47 = call i64 @gallop_right(%struct._object* %45, %struct._object** %46, i64 %47, i64 0)
  store i64 %call47, i64* %k, align 8
  %48 = load i64, i64* %k, align 8
  store i64 %48, i64* %acount, align 8
  %49 = load i64, i64* %k, align 8
  %tobool48 = icmp ne i64 %49, 0
  br i1 %tobool48, label %if.then.49, label %if.end.63

if.then.49:                                       ; preds = %do.body
  %50 = load i64, i64* %k, align 8
  %cmp50 = icmp slt i64 %50, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  br label %Fail

if.end.53:                                        ; preds = %if.then.49
  %51 = load i64, i64* %k, align 8
  call void @sortslice_memcpy(%struct.sortslice* %dest, i64 0, %struct.sortslice* %ssa, i64 0, i64 %51)
  %52 = load i64, i64* %k, align 8
  call void @sortslice_advance(%struct.sortslice* %dest, i64 %52)
  %53 = load i64, i64* %k, align 8
  call void @sortslice_advance(%struct.sortslice* %ssa, i64 %53)
  %54 = load i64, i64* %k, align 8
  %55 = load i64, i64* %na.addr, align 8
  %sub54 = sub i64 %55, %54
  store i64 %sub54, i64* %na.addr, align 8
  %56 = load i64, i64* %na.addr, align 8
  %cmp55 = icmp eq i64 %56, 1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  br label %CopyB

if.end.58:                                        ; preds = %if.end.53
  %57 = load i64, i64* %na.addr, align 8
  %cmp59 = icmp eq i64 %57, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  br label %Succeed

if.end.62:                                        ; preds = %if.end.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %do.body
  call void @sortslice_copy_incr(%struct.sortslice* %dest, %struct.sortslice* %ssb)
  %58 = load i64, i64* %nb.addr, align 8
  %dec64 = add i64 %58, -1
  store i64 %dec64, i64* %nb.addr, align 8
  %59 = load i64, i64* %nb.addr, align 8
  %cmp65 = icmp eq i64 %59, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  br label %Succeed

if.end.68:                                        ; preds = %if.end.63
  %keys69 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %60 = load %struct._object**, %struct._object*** %keys69, align 8
  %arrayidx70 = getelementptr %struct._object*, %struct._object** %60, i64 0
  %61 = load %struct._object*, %struct._object** %arrayidx70, align 8
  %keys71 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %62 = load %struct._object**, %struct._object*** %keys71, align 8
  %63 = load i64, i64* %nb.addr, align 8
  %call72 = call i64 @gallop_left(%struct._object* %61, %struct._object** %62, i64 %63, i64 0)
  store i64 %call72, i64* %k, align 8
  %64 = load i64, i64* %k, align 8
  store i64 %64, i64* %bcount, align 8
  %65 = load i64, i64* %k, align 8
  %tobool73 = icmp ne i64 %65, 0
  br i1 %tobool73, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.68
  %66 = load i64, i64* %k, align 8
  %cmp75 = icmp slt i64 %66, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.74
  br label %Fail

if.end.78:                                        ; preds = %if.then.74
  %67 = load i64, i64* %k, align 8
  call void @sortslice_memmove(%struct.sortslice* %dest, i64 0, %struct.sortslice* %ssb, i64 0, i64 %67)
  %68 = load i64, i64* %k, align 8
  call void @sortslice_advance(%struct.sortslice* %dest, i64 %68)
  %69 = load i64, i64* %k, align 8
  call void @sortslice_advance(%struct.sortslice* %ssb, i64 %69)
  %70 = load i64, i64* %k, align 8
  %71 = load i64, i64* %nb.addr, align 8
  %sub79 = sub i64 %71, %70
  store i64 %sub79, i64* %nb.addr, align 8
  %72 = load i64, i64* %nb.addr, align 8
  %cmp80 = icmp eq i64 %72, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  br label %Succeed

if.end.83:                                        ; preds = %if.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.68
  call void @sortslice_copy_incr(%struct.sortslice* %dest, %struct.sortslice* %ssa)
  %73 = load i64, i64* %na.addr, align 8
  %dec85 = add i64 %73, -1
  store i64 %dec85, i64* %na.addr, align 8
  %74 = load i64, i64* %na.addr, align 8
  %cmp86 = icmp eq i64 %74, 1
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.84
  br label %CopyB

if.end.89:                                        ; preds = %if.end.84
  br label %do.cond

do.cond:                                          ; preds = %if.end.89
  %75 = load i64, i64* %acount, align 8
  %cmp90 = icmp sge i64 %75, 7
  br i1 %cmp90, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %76 = load i64, i64* %bcount, align 8
  %cmp92 = icmp sge i64 %76, 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %77 = phi i1 [ true, %do.cond ], [ %cmp92, %lor.rhs ]
  br i1 %77, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %78 = load i64, i64* %min_gallop, align 8
  %inc94 = add i64 %78, 1
  store i64 %inc94, i64* %min_gallop, align 8
  %79 = load i64, i64* %min_gallop, align 8
  %80 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop95 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %80, i32 0, i32 0
  store i64 %79, i64* %min_gallop95, align 8
  br label %for.cond

Succeed:                                          ; preds = %if.then.82, %if.then.67, %if.then.61, %if.then.22, %if.then.4
  store i32 0, i32* %result, align 4
  br label %Fail

Fail:                                             ; preds = %Succeed, %if.then.77, %if.then.52, %if.then.17
  %81 = load i64, i64* %na.addr, align 8
  %tobool96 = icmp ne i64 %81, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %Fail
  %82 = load i64, i64* %na.addr, align 8
  call void @sortslice_memcpy(%struct.sortslice* %dest, i64 0, %struct.sortslice* %ssa, i64 0, i64 %82)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %Fail
  %83 = load i32, i32* %result, align 4
  %conv99 = sext i32 %83 to i64
  store i64 %conv99, i64* %retval
  br label %return

CopyB:                                            ; preds = %if.then.88, %if.then.57, %if.then.32, %if.then.7
  %84 = load i64, i64* %nb.addr, align 8
  call void @sortslice_memmove(%struct.sortslice* %dest, i64 0, %struct.sortslice* %ssb, i64 0, i64 %84)
  %85 = load i64, i64* %nb.addr, align 8
  call void @sortslice_copy(%struct.sortslice* %dest, i64 %85, %struct.sortslice* %ssa, i64 0)
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %CopyB, %if.end.98, %if.then
  %86 = load i64, i64* %retval
  ret i64 %86
}

; Function Attrs: nounwind uwtable
define internal i64 @merge_hi(%struct.s_MergeState* %ms, %struct._object** %ssa.coerce0, %struct._object** %ssa.coerce1, i64 %na, %struct._object** %ssb.coerce0, %struct._object** %ssb.coerce1, i64 %nb) #0 {
entry:
  %retval = alloca i64, align 8
  %ssa = alloca %struct.sortslice, align 8
  %ssb = alloca %struct.sortslice, align 8
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %na.addr = alloca i64, align 8
  %nb.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %dest = alloca %struct.sortslice, align 8
  %basea = alloca %struct.sortslice, align 8
  %baseb = alloca %struct.sortslice, align 8
  %result = alloca i32, align 4
  %min_gallop = alloca i64, align 8
  %acount = alloca i64, align 8
  %bcount = alloca i64, align 8
  %0 = bitcast %struct.sortslice* %ssa to { %struct._object**, %struct._object** }*
  %1 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %0, i32 0, i32 0
  store %struct._object** %ssa.coerce0, %struct._object*** %1
  %2 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %0, i32 0, i32 1
  store %struct._object** %ssa.coerce1, %struct._object*** %2
  %3 = bitcast %struct.sortslice* %ssb to { %struct._object**, %struct._object** }*
  %4 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %3, i32 0, i32 0
  store %struct._object** %ssb.coerce0, %struct._object*** %4
  %5 = getelementptr { %struct._object**, %struct._object** }, { %struct._object**, %struct._object** }* %3, i32 0, i32 1
  store %struct._object** %ssb.coerce1, %struct._object*** %5
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  store i64 %na, i64* %na.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  store i32 -1, i32* %result, align 4
  %6 = load i64, i64* %nb.addr, align 8
  %7 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %7, i32 0, i32 2
  %8 = load i64, i64* %alloced, align 8
  %cmp = icmp sle i64 %6, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %10 = load i64, i64* %nb.addr, align 8
  %call = call i32 @merge_getmem(%struct.s_MergeState* %9, i64 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp1 = icmp slt i32 %cond, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = bitcast %struct.sortslice* %dest to i8*
  %12 = bitcast %struct.sortslice* %ssb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = load i64, i64* %nb.addr, align 8
  %sub = sub i64 %13, 1
  call void @sortslice_advance(%struct.sortslice* %dest, i64 %sub)
  %14 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %14, i32 0, i32 1
  %15 = load i64, i64* %nb.addr, align 8
  call void @sortslice_memcpy(%struct.sortslice* %a, i64 0, %struct.sortslice* %ssb, i64 0, i64 %15)
  %16 = bitcast %struct.sortslice* %basea to i8*
  %17 = bitcast %struct.sortslice* %ssa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a2 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %18, i32 0, i32 1
  %19 = bitcast %struct.sortslice* %baseb to i8*
  %20 = bitcast %struct.sortslice* %a2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a3 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %21, i32 0, i32 1
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a3, i32 0, i32 0
  %22 = load %struct._object**, %struct._object*** %keys, align 8
  %23 = load i64, i64* %nb.addr, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %22, i64 %23
  %add.ptr4 = getelementptr %struct._object*, %struct._object** %add.ptr, i64 -1
  %keys5 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  store %struct._object** %add.ptr4, %struct._object*** %keys5, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 1
  %24 = load %struct._object**, %struct._object*** %values, align 8
  %cmp6 = icmp ne %struct._object** %24, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end
  %25 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a8 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %25, i32 0, i32 1
  %values9 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a8, i32 0, i32 1
  %26 = load %struct._object**, %struct._object*** %values9, align 8
  %27 = load i64, i64* %nb.addr, align 8
  %add.ptr10 = getelementptr %struct._object*, %struct._object** %26, i64 %27
  %add.ptr11 = getelementptr %struct._object*, %struct._object** %add.ptr10, i64 -1
  %values12 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 1
  store %struct._object** %add.ptr11, %struct._object*** %values12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.7, %if.end
  %28 = load i64, i64* %na.addr, align 8
  %sub14 = sub i64 %28, 1
  call void @sortslice_advance(%struct.sortslice* %ssa, i64 %sub14)
  call void @sortslice_copy_decr(%struct.sortslice* %dest, %struct.sortslice* %ssa)
  %29 = load i64, i64* %na.addr, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %na.addr, align 8
  %30 = load i64, i64* %na.addr, align 8
  %cmp15 = icmp eq i64 %30, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %Succeed

if.end.17:                                        ; preds = %if.end.13
  %31 = load i64, i64* %nb.addr, align 8
  %cmp18 = icmp eq i64 %31, 1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  br label %CopyA

if.end.20:                                        ; preds = %if.end.17
  %32 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop21 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %32, i32 0, i32 0
  %33 = load i64, i64* %min_gallop21, align 8
  store i64 %33, i64* %min_gallop, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %if.end.20
  store i64 0, i64* %acount, align 8
  store i64 0, i64* %bcount, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %if.end.51, %for.cond
  %keys23 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %34 = load %struct._object**, %struct._object*** %keys23, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %34, i64 0
  %35 = load %struct._object*, %struct._object** %arrayidx, align 8
  %keys24 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %36 = load %struct._object**, %struct._object*** %keys24, align 8
  %arrayidx25 = getelementptr %struct._object*, %struct._object** %36, i64 0
  %37 = load %struct._object*, %struct._object** %arrayidx25, align 8
  %call26 = call i32 @PyObject_RichCompareBool(%struct._object* %35, %struct._object* %37, i32 0)
  %conv = sext i32 %call26 to i64
  store i64 %conv, i64* %k, align 8
  %38 = load i64, i64* %k, align 8
  %tobool = icmp ne i64 %38, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.cond.22
  %39 = load i64, i64* %k, align 8
  %cmp28 = icmp slt i64 %39, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  br label %Fail

if.end.31:                                        ; preds = %if.then.27
  call void @sortslice_copy_decr(%struct.sortslice* %dest, %struct.sortslice* %ssa)
  %40 = load i64, i64* %acount, align 8
  %inc = add i64 %40, 1
  store i64 %inc, i64* %acount, align 8
  store i64 0, i64* %bcount, align 8
  %41 = load i64, i64* %na.addr, align 8
  %dec32 = add i64 %41, -1
  store i64 %dec32, i64* %na.addr, align 8
  %42 = load i64, i64* %na.addr, align 8
  %cmp33 = icmp eq i64 %42, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  br label %Succeed

if.end.36:                                        ; preds = %if.end.31
  %43 = load i64, i64* %acount, align 8
  %44 = load i64, i64* %min_gallop, align 8
  %cmp37 = icmp sge i64 %43, %44
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  br label %for.end

if.end.40:                                        ; preds = %if.end.36
  br label %if.end.51

if.else:                                          ; preds = %for.cond.22
  call void @sortslice_copy_decr(%struct.sortslice* %dest, %struct.sortslice* %ssb)
  %45 = load i64, i64* %bcount, align 8
  %inc41 = add i64 %45, 1
  store i64 %inc41, i64* %bcount, align 8
  store i64 0, i64* %acount, align 8
  %46 = load i64, i64* %nb.addr, align 8
  %dec42 = add i64 %46, -1
  store i64 %dec42, i64* %nb.addr, align 8
  %47 = load i64, i64* %nb.addr, align 8
  %cmp43 = icmp eq i64 %47, 1
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else
  br label %CopyA

if.end.46:                                        ; preds = %if.else
  %48 = load i64, i64* %bcount, align 8
  %49 = load i64, i64* %min_gallop, align 8
  %cmp47 = icmp sge i64 %48, %49
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  br label %for.end

if.end.50:                                        ; preds = %if.end.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.40
  br label %for.cond.22

for.end:                                          ; preds = %if.then.49, %if.then.39
  %50 = load i64, i64* %min_gallop, align 8
  %inc52 = add i64 %50, 1
  store i64 %inc52, i64* %min_gallop, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %for.end
  %51 = load i64, i64* %min_gallop, align 8
  %cmp53 = icmp sgt i64 %51, 1
  %conv54 = zext i1 %cmp53 to i32
  %conv55 = sext i32 %conv54 to i64
  %52 = load i64, i64* %min_gallop, align 8
  %sub56 = sub i64 %52, %conv55
  store i64 %sub56, i64* %min_gallop, align 8
  %53 = load i64, i64* %min_gallop, align 8
  %54 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop57 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %54, i32 0, i32 0
  store i64 %53, i64* %min_gallop57, align 8
  %keys58 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssb, i32 0, i32 0
  %55 = load %struct._object**, %struct._object*** %keys58, align 8
  %arrayidx59 = getelementptr %struct._object*, %struct._object** %55, i64 0
  %56 = load %struct._object*, %struct._object** %arrayidx59, align 8
  %keys60 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %basea, i32 0, i32 0
  %57 = load %struct._object**, %struct._object*** %keys60, align 8
  %58 = load i64, i64* %na.addr, align 8
  %59 = load i64, i64* %na.addr, align 8
  %sub61 = sub i64 %59, 1
  %call62 = call i64 @gallop_right(%struct._object* %56, %struct._object** %57, i64 %58, i64 %sub61)
  store i64 %call62, i64* %k, align 8
  %60 = load i64, i64* %k, align 8
  %cmp63 = icmp slt i64 %60, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %do.body
  br label %Fail

if.end.66:                                        ; preds = %do.body
  %61 = load i64, i64* %na.addr, align 8
  %62 = load i64, i64* %k, align 8
  %sub67 = sub i64 %61, %62
  store i64 %sub67, i64* %k, align 8
  %63 = load i64, i64* %k, align 8
  store i64 %63, i64* %acount, align 8
  %64 = load i64, i64* %k, align 8
  %tobool68 = icmp ne i64 %64, 0
  br i1 %tobool68, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %if.end.66
  %65 = load i64, i64* %k, align 8
  %sub70 = sub i64 0, %65
  call void @sortslice_advance(%struct.sortslice* %dest, i64 %sub70)
  %66 = load i64, i64* %k, align 8
  %sub71 = sub i64 0, %66
  call void @sortslice_advance(%struct.sortslice* %ssa, i64 %sub71)
  %67 = load i64, i64* %k, align 8
  call void @sortslice_memmove(%struct.sortslice* %dest, i64 1, %struct.sortslice* %ssa, i64 1, i64 %67)
  %68 = load i64, i64* %k, align 8
  %69 = load i64, i64* %na.addr, align 8
  %sub72 = sub i64 %69, %68
  store i64 %sub72, i64* %na.addr, align 8
  %70 = load i64, i64* %na.addr, align 8
  %cmp73 = icmp eq i64 %70, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.69
  br label %Succeed

if.end.76:                                        ; preds = %if.then.69
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.66
  call void @sortslice_copy_decr(%struct.sortslice* %dest, %struct.sortslice* %ssb)
  %71 = load i64, i64* %nb.addr, align 8
  %dec78 = add i64 %71, -1
  store i64 %dec78, i64* %nb.addr, align 8
  %72 = load i64, i64* %nb.addr, align 8
  %cmp79 = icmp eq i64 %72, 1
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.77
  br label %CopyA

if.end.82:                                        ; preds = %if.end.77
  %keys83 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %ssa, i32 0, i32 0
  %73 = load %struct._object**, %struct._object*** %keys83, align 8
  %arrayidx84 = getelementptr %struct._object*, %struct._object** %73, i64 0
  %74 = load %struct._object*, %struct._object** %arrayidx84, align 8
  %keys85 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %baseb, i32 0, i32 0
  %75 = load %struct._object**, %struct._object*** %keys85, align 8
  %76 = load i64, i64* %nb.addr, align 8
  %77 = load i64, i64* %nb.addr, align 8
  %sub86 = sub i64 %77, 1
  %call87 = call i64 @gallop_left(%struct._object* %74, %struct._object** %75, i64 %76, i64 %sub86)
  store i64 %call87, i64* %k, align 8
  %78 = load i64, i64* %k, align 8
  %cmp88 = icmp slt i64 %78, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.82
  br label %Fail

if.end.91:                                        ; preds = %if.end.82
  %79 = load i64, i64* %nb.addr, align 8
  %80 = load i64, i64* %k, align 8
  %sub92 = sub i64 %79, %80
  store i64 %sub92, i64* %k, align 8
  %81 = load i64, i64* %k, align 8
  store i64 %81, i64* %bcount, align 8
  %82 = load i64, i64* %k, align 8
  %tobool93 = icmp ne i64 %82, 0
  br i1 %tobool93, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %if.end.91
  %83 = load i64, i64* %k, align 8
  %sub95 = sub i64 0, %83
  call void @sortslice_advance(%struct.sortslice* %dest, i64 %sub95)
  %84 = load i64, i64* %k, align 8
  %sub96 = sub i64 0, %84
  call void @sortslice_advance(%struct.sortslice* %ssb, i64 %sub96)
  %85 = load i64, i64* %k, align 8
  call void @sortslice_memcpy(%struct.sortslice* %dest, i64 1, %struct.sortslice* %ssb, i64 1, i64 %85)
  %86 = load i64, i64* %k, align 8
  %87 = load i64, i64* %nb.addr, align 8
  %sub97 = sub i64 %87, %86
  store i64 %sub97, i64* %nb.addr, align 8
  %88 = load i64, i64* %nb.addr, align 8
  %cmp98 = icmp eq i64 %88, 1
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.94
  br label %CopyA

if.end.101:                                       ; preds = %if.then.94
  %89 = load i64, i64* %nb.addr, align 8
  %cmp102 = icmp eq i64 %89, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  br label %Succeed

if.end.105:                                       ; preds = %if.end.101
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.91
  call void @sortslice_copy_decr(%struct.sortslice* %dest, %struct.sortslice* %ssa)
  %90 = load i64, i64* %na.addr, align 8
  %dec107 = add i64 %90, -1
  store i64 %dec107, i64* %na.addr, align 8
  %91 = load i64, i64* %na.addr, align 8
  %cmp108 = icmp eq i64 %91, 0
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.106
  br label %Succeed

if.end.111:                                       ; preds = %if.end.106
  br label %do.cond

do.cond:                                          ; preds = %if.end.111
  %92 = load i64, i64* %acount, align 8
  %cmp112 = icmp sge i64 %92, 7
  br i1 %cmp112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %93 = load i64, i64* %bcount, align 8
  %cmp114 = icmp sge i64 %93, 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %94 = phi i1 [ true, %do.cond ], [ %cmp114, %lor.rhs ]
  br i1 %94, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %95 = load i64, i64* %min_gallop, align 8
  %inc116 = add i64 %95, 1
  store i64 %inc116, i64* %min_gallop, align 8
  %96 = load i64, i64* %min_gallop, align 8
  %97 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %min_gallop117 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %97, i32 0, i32 0
  store i64 %96, i64* %min_gallop117, align 8
  br label %for.cond

Succeed:                                          ; preds = %if.then.110, %if.then.104, %if.then.75, %if.then.35, %if.then.16
  store i32 0, i32* %result, align 4
  br label %Fail

Fail:                                             ; preds = %Succeed, %if.then.90, %if.then.65, %if.then.30
  %98 = load i64, i64* %nb.addr, align 8
  %tobool118 = icmp ne i64 %98, 0
  br i1 %tobool118, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %Fail
  %99 = load i64, i64* %nb.addr, align 8
  %sub120 = sub i64 %99, 1
  %sub121 = sub i64 0, %sub120
  %100 = load i64, i64* %nb.addr, align 8
  call void @sortslice_memcpy(%struct.sortslice* %dest, i64 %sub121, %struct.sortslice* %baseb, i64 0, i64 %100)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %Fail
  %101 = load i32, i32* %result, align 4
  %conv123 = sext i32 %101 to i64
  store i64 %conv123, i64* %retval
  br label %return

CopyA:                                            ; preds = %if.then.100, %if.then.81, %if.then.45, %if.then.19
  %102 = load i64, i64* %na.addr, align 8
  %sub124 = sub i64 1, %102
  %103 = load i64, i64* %na.addr, align 8
  %sub125 = sub i64 1, %103
  %104 = load i64, i64* %na.addr, align 8
  call void @sortslice_memmove(%struct.sortslice* %dest, i64 %sub124, %struct.sortslice* %ssa, i64 %sub125, i64 %104)
  %105 = load i64, i64* %na.addr, align 8
  %sub126 = sub i64 0, %105
  call void @sortslice_advance(%struct.sortslice* %dest, i64 %sub126)
  %106 = load i64, i64* %na.addr, align 8
  %sub127 = sub i64 0, %106
  call void @sortslice_advance(%struct.sortslice* %ssa, i64 %sub127)
  call void @sortslice_copy(%struct.sortslice* %dest, i64 0, %struct.sortslice* %ssb, i64 0)
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %CopyA, %if.end.122, %if.then
  %107 = load i64, i64* %retval
  ret i64 %107
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_getmem(%struct.s_MergeState* %ms, i64 %need) #0 {
entry:
  %retval = alloca i32, align 4
  %ms.addr = alloca %struct.s_MergeState*, align 8
  %need.addr = alloca i64, align 8
  %multiplier = alloca i32, align 4
  store %struct.s_MergeState* %ms, %struct.s_MergeState** %ms.addr, align 8
  store i64 %need, i64* %need.addr, align 8
  %0 = load i64, i64* %need.addr, align 8
  %1 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %1, i32 0, i32 2
  %2 = load i64, i64* %alloced, align 8
  %cmp = icmp sle i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %3, i32 0, i32 1
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a, i32 0, i32 1
  %4 = load %struct._object**, %struct._object*** %values, align 8
  %cmp1 = icmp ne %struct._object** %4, null
  %cond = select i1 %cmp1, i32 2, i32 1
  store i32 %cond, i32* %multiplier, align 4
  %5 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  call void @merge_freemem(%struct.s_MergeState* %5)
  %6 = load i64, i64* %need.addr, align 8
  %7 = load i32, i32* %multiplier, align 4
  %conv = sext i32 %7 to i64
  %div = udiv i64 1152921504606846975, %conv
  %cmp2 = icmp ugt i64 %6, %div
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i32, i32* %multiplier, align 4
  %conv6 = sext i32 %8 to i64
  %9 = load i64, i64* %need.addr, align 8
  %mul = mul i64 %conv6, %9
  %mul7 = mul i64 %mul, 8
  %call8 = call i8* @PyMem_Malloc(i64 %mul7)
  %10 = bitcast i8* %call8 to %struct._object**
  %11 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a9 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %11, i32 0, i32 1
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a9, i32 0, i32 0
  store %struct._object** %10, %struct._object*** %keys, align 8
  %12 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a10 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %12, i32 0, i32 1
  %keys11 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a10, i32 0, i32 0
  %13 = load %struct._object**, %struct._object*** %keys11, align 8
  %cmp12 = icmp ne %struct._object** %13, null
  br i1 %cmp12, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.5
  %14 = load i64, i64* %need.addr, align 8
  %15 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %alloced15 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %15, i32 0, i32 2
  store i64 %14, i64* %alloced15, align 8
  %16 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a16 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %16, i32 0, i32 1
  %values17 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a16, i32 0, i32 1
  %17 = load %struct._object**, %struct._object*** %values17, align 8
  %cmp18 = icmp ne %struct._object** %17, null
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.then.14
  %18 = load i64, i64* %need.addr, align 8
  %19 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a21 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %19, i32 0, i32 1
  %keys22 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a21, i32 0, i32 0
  %20 = load %struct._object**, %struct._object*** %keys22, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %20, i64 %18
  %21 = load %struct.s_MergeState*, %struct.s_MergeState** %ms.addr, align 8
  %a23 = getelementptr inbounds %struct.s_MergeState, %struct.s_MergeState* %21, i32 0, i32 1
  %values24 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %a23, i32 0, i32 1
  store %struct._object** %arrayidx, %struct._object*** %values24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.5
  %call27 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.end.25, %if.then.4, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sortslice_memcpy(%struct.sortslice* %s1, i64 %i, %struct.sortslice* %s2, i64 %j, i64 %n) #4 {
entry:
  %s1.addr = alloca %struct.sortslice*, align 8
  %i.addr = alloca i64, align 8
  %s2.addr = alloca %struct.sortslice*, align 8
  %j.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store %struct.sortslice* %s1, %struct.sortslice** %s1.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct.sortslice* %s2, %struct.sortslice** %s2.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %1, i32 0, i32 0
  %2 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %2, i64 %0
  %3 = bitcast %struct._object** %arrayidx to i8*
  %4 = load i64, i64* %j.addr, align 8
  %5 = load %struct.sortslice*, %struct.sortslice** %s2.addr, align 8
  %keys1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %5, i32 0, i32 0
  %6 = load %struct._object**, %struct._object*** %keys1, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %6, i64 %4
  %7 = bitcast %struct._object** %arrayidx2 to i8*
  %8 = load i64, i64* %n.addr, align 8
  %mul = mul i64 8, %8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %7, i64 %mul, i32 8, i1 false)
  %9 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %9, i32 0, i32 1
  %10 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %i.addr, align 8
  %12 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %values3 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %values3, align 8
  %arrayidx4 = getelementptr %struct._object*, %struct._object** %13, i64 %11
  %14 = bitcast %struct._object** %arrayidx4 to i8*
  %15 = load i64, i64* %j.addr, align 8
  %16 = load %struct.sortslice*, %struct.sortslice** %s2.addr, align 8
  %values5 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %16, i32 0, i32 1
  %17 = load %struct._object**, %struct._object*** %values5, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %17, i64 %15
  %18 = bitcast %struct._object** %arrayidx6 to i8*
  %19 = load i64, i64* %n.addr, align 8
  %mul7 = mul i64 8, %19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %18, i64 %mul7, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sortslice_copy_incr(%struct.sortslice* %dst, %struct.sortslice* %src) #4 {
entry:
  %dst.addr = alloca %struct.sortslice*, align 8
  %src.addr = alloca %struct.sortslice*, align 8
  store %struct.sortslice* %dst, %struct.sortslice** %dst.addr, align 8
  store %struct.sortslice* %src, %struct.sortslice** %src.addr, align 8
  %0 = load %struct.sortslice*, %struct.sortslice** %src.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %0, i32 0, i32 0
  %1 = load %struct._object**, %struct._object*** %keys, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %1, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %keys, align 8
  %2 = load %struct._object*, %struct._object** %1, align 8
  %3 = load %struct.sortslice*, %struct.sortslice** %dst.addr, align 8
  %keys1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %3, i32 0, i32 0
  %4 = load %struct._object**, %struct._object*** %keys1, align 8
  %incdec.ptr2 = getelementptr %struct._object*, %struct._object** %4, i32 1
  store %struct._object** %incdec.ptr2, %struct._object*** %keys1, align 8
  store %struct._object* %2, %struct._object** %4, align 8
  %5 = load %struct.sortslice*, %struct.sortslice** %dst.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sortslice*, %struct.sortslice** %src.addr, align 8
  %values3 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %7, i32 0, i32 1
  %8 = load %struct._object**, %struct._object*** %values3, align 8
  %incdec.ptr4 = getelementptr %struct._object*, %struct._object** %8, i32 1
  store %struct._object** %incdec.ptr4, %struct._object*** %values3, align 8
  %9 = load %struct._object*, %struct._object** %8, align 8
  %10 = load %struct.sortslice*, %struct.sortslice** %dst.addr, align 8
  %values5 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %values5, align 8
  %incdec.ptr6 = getelementptr %struct._object*, %struct._object** %11, i32 1
  store %struct._object** %incdec.ptr6, %struct._object*** %values5, align 8
  store %struct._object* %9, %struct._object** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sortslice_memmove(%struct.sortslice* %s1, i64 %i, %struct.sortslice* %s2, i64 %j, i64 %n) #4 {
entry:
  %s1.addr = alloca %struct.sortslice*, align 8
  %i.addr = alloca i64, align 8
  %s2.addr = alloca %struct.sortslice*, align 8
  %j.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store %struct.sortslice* %s1, %struct.sortslice** %s1.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct.sortslice* %s2, %struct.sortslice** %s2.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %1, i32 0, i32 0
  %2 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %2, i64 %0
  %3 = bitcast %struct._object** %arrayidx to i8*
  %4 = load i64, i64* %j.addr, align 8
  %5 = load %struct.sortslice*, %struct.sortslice** %s2.addr, align 8
  %keys1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %5, i32 0, i32 0
  %6 = load %struct._object**, %struct._object*** %keys1, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %6, i64 %4
  %7 = bitcast %struct._object** %arrayidx2 to i8*
  %8 = load i64, i64* %n.addr, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %3, i8* %7, i64 %mul, i32 8, i1 false)
  %9 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %9, i32 0, i32 1
  %10 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %i.addr, align 8
  %12 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %values3 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %values3, align 8
  %arrayidx4 = getelementptr %struct._object*, %struct._object** %13, i64 %11
  %14 = bitcast %struct._object** %arrayidx4 to i8*
  %15 = load i64, i64* %j.addr, align 8
  %16 = load %struct.sortslice*, %struct.sortslice** %s2.addr, align 8
  %values5 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %16, i32 0, i32 1
  %17 = load %struct._object**, %struct._object*** %values5, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %17, i64 %15
  %18 = bitcast %struct._object** %arrayidx6 to i8*
  %19 = load i64, i64* %n.addr, align 8
  %mul7 = mul i64 8, %19
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %18, i64 %mul7, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sortslice_copy(%struct.sortslice* %s1, i64 %i, %struct.sortslice* %s2, i64 %j) #4 {
entry:
  %s1.addr = alloca %struct.sortslice*, align 8
  %i.addr = alloca i64, align 8
  %s2.addr = alloca %struct.sortslice*, align 8
  %j.addr = alloca i64, align 8
  store %struct.sortslice* %s1, %struct.sortslice** %s1.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct.sortslice* %s2, %struct.sortslice** %s2.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  %0 = load i64, i64* %j.addr, align 8
  %1 = load %struct.sortslice*, %struct.sortslice** %s2.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %1, i32 0, i32 0
  %2 = load %struct._object**, %struct._object*** %keys, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %2, i64 %0
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %keys1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %5, i32 0, i32 0
  %6 = load %struct._object**, %struct._object*** %keys1, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %6, i64 %4
  store %struct._object* %3, %struct._object** %arrayidx2, align 8
  %7 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %7, i32 0, i32 1
  %8 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %j.addr, align 8
  %10 = load %struct.sortslice*, %struct.sortslice** %s2.addr, align 8
  %values3 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %values3, align 8
  %arrayidx4 = getelementptr %struct._object*, %struct._object** %11, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx4, align 8
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %struct.sortslice*, %struct.sortslice** %s1.addr, align 8
  %values5 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %values5, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %15, i64 %13
  store %struct._object* %12, %struct._object** %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sortslice_copy_decr(%struct.sortslice* %dst, %struct.sortslice* %src) #4 {
entry:
  %dst.addr = alloca %struct.sortslice*, align 8
  %src.addr = alloca %struct.sortslice*, align 8
  store %struct.sortslice* %dst, %struct.sortslice** %dst.addr, align 8
  store %struct.sortslice* %src, %struct.sortslice** %src.addr, align 8
  %0 = load %struct.sortslice*, %struct.sortslice** %src.addr, align 8
  %keys = getelementptr inbounds %struct.sortslice, %struct.sortslice* %0, i32 0, i32 0
  %1 = load %struct._object**, %struct._object*** %keys, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %1, i32 -1
  store %struct._object** %incdec.ptr, %struct._object*** %keys, align 8
  %2 = load %struct._object*, %struct._object** %1, align 8
  %3 = load %struct.sortslice*, %struct.sortslice** %dst.addr, align 8
  %keys1 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %3, i32 0, i32 0
  %4 = load %struct._object**, %struct._object*** %keys1, align 8
  %incdec.ptr2 = getelementptr %struct._object*, %struct._object** %4, i32 -1
  store %struct._object** %incdec.ptr2, %struct._object*** %keys1, align 8
  store %struct._object* %2, %struct._object** %4, align 8
  %5 = load %struct.sortslice*, %struct.sortslice** %dst.addr, align 8
  %values = getelementptr inbounds %struct.sortslice, %struct.sortslice* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %values, align 8
  %cmp = icmp ne %struct._object** %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sortslice*, %struct.sortslice** %src.addr, align 8
  %values3 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %7, i32 0, i32 1
  %8 = load %struct._object**, %struct._object*** %values3, align 8
  %incdec.ptr4 = getelementptr %struct._object*, %struct._object** %8, i32 -1
  store %struct._object** %incdec.ptr4, %struct._object*** %values3, align 8
  %9 = load %struct._object*, %struct._object** %8, align 8
  %10 = load %struct.sortslice*, %struct.sortslice** %dst.addr, align 8
  %values5 = getelementptr inbounds %struct.sortslice, %struct.sortslice* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %values5, align 8
  %incdec.ptr6 = getelementptr %struct._object*, %struct._object** %11, i32 -1
  store %struct._object** %incdec.ptr6, %struct._object*** %values5, align 8
  store %struct._object* %9, %struct._object** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !1
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

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
define internal i64 @list_length(%struct.PyListObject* %a) #0 {
entry:
  %a.addr = alloca %struct.PyListObject*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_concat(%struct.PyListObject* %a, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyListObject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %src = alloca %struct._object**, align 8
  %dest = alloca %struct._object**, align 8
  %np = alloca %struct.PyListObject*, align 8
  %v = alloca %struct._object*, align 8
  %v23 = alloca %struct._object*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0), i8* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %10 = load %struct._object*, %struct._object** %bb.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyListObject*
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
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
  %call7 = call %struct._object* @PyList_New(i64 %15)
  %16 = bitcast %struct._object* %call7 to %struct.PyListObject*
  store %struct.PyListObject* %16, %struct.PyListObject** %np, align 8
  %17 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %cmp8 = icmp eq %struct.PyListObject* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %18, i32 0, i32 1
  %19 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %19, %struct._object*** %src, align 8
  %20 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %ob_item11 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %20, i32 0, i32 1
  %21 = load %struct._object**, %struct._object*** %ob_item11, align 8
  store %struct._object** %21, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %24 = bitcast %struct.PyListObject* %23 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size12, align 8
  %cmp13 = icmp slt i64 %22, %25
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i64, i64* %i, align 8
  %27 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %27, i64 %26
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %28, %struct._object** %v, align 8
  %29 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %31 = load %struct._object*, %struct._object** %v, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx14 = getelementptr %struct._object*, %struct._object** %33, i64 %32
  store %struct._object* %31, %struct._object** %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, i64* %i, align 8
  %inc15 = add i64 %34, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._object*, %struct._object** %bb.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyListObject*
  %ob_item16 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %36, i32 0, i32 1
  %37 = load %struct._object**, %struct._object*** %ob_item16, align 8
  store %struct._object** %37, %struct._object*** %src, align 8
  %38 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %ob_item17 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %38, i32 0, i32 1
  %39 = load %struct._object**, %struct._object*** %ob_item17, align 8
  %40 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %41 = bitcast %struct.PyListObject* %40 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size18, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %39, i64 %42
  store %struct._object** %add.ptr, %struct._object*** %dest, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.28, %for.end
  %43 = load i64, i64* %i, align 8
  %44 = load %struct._object*, %struct._object** %bb.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyListObject*
  %46 = bitcast %struct.PyListObject* %45 to %struct.PyVarObject*
  %ob_size20 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %46, i32 0, i32 1
  %47 = load i64, i64* %ob_size20, align 8
  %cmp21 = icmp slt i64 %43, %47
  br i1 %cmp21, label %for.body.22, label %for.end.30

for.body.22:                                      ; preds = %for.cond.19
  %48 = load i64, i64* %i, align 8
  %49 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx24 = getelementptr %struct._object*, %struct._object** %49, i64 %48
  %50 = load %struct._object*, %struct._object** %arrayidx24, align 8
  store %struct._object* %50, %struct._object** %v23, align 8
  %51 = load %struct._object*, %struct._object** %v23, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt25, align 8
  %inc26 = add i64 %52, 1
  store i64 %inc26, i64* %ob_refcnt25, align 8
  %53 = load %struct._object*, %struct._object** %v23, align 8
  %54 = load i64, i64* %i, align 8
  %55 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx27 = getelementptr %struct._object*, %struct._object** %55, i64 %54
  store %struct._object* %53, %struct._object** %arrayidx27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.22
  %56 = load i64, i64* %i, align 8
  %inc29 = add i64 %56, 1
  store i64 %inc29, i64* %i, align 8
  br label %for.cond.19

for.end.30:                                       ; preds = %for.cond.19
  %57 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %58 = bitcast %struct.PyListObject* %57 to %struct._object*
  store %struct._object* %58, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.30, %if.then.9, %if.then.4, %if.then
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_repeat(%struct.PyListObject* %a, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyListObject*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %size = alloca i64, align 8
  %np = alloca %struct.PyListObject*, align 8
  %p = alloca %struct._object**, align 8
  %items = alloca %struct._object**, align 8
  %elem = alloca %struct._object*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp sgt i64 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %3 = bitcast %struct.PyListObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %5 = load i64, i64* %n.addr, align 8
  %div = sdiv i64 9223372036854775807, %5
  %cmp2 = icmp sgt i64 %4, %div
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %7 = bitcast %struct.PyListObject* %6 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size5, align 8
  %9 = load i64, i64* %n.addr, align 8
  %mul = mul i64 %8, %9
  store i64 %mul, i64* %size, align 8
  %10 = load i64, i64* %size, align 8
  %cmp6 = icmp eq i64 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %11 = load i64, i64* %size, align 8
  %call10 = call %struct._object* @PyList_New(i64 %11)
  %12 = bitcast %struct._object* %call10 to %struct.PyListObject*
  store %struct.PyListObject* %12, %struct.PyListObject** %np, align 8
  %13 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %cmp11 = icmp eq %struct.PyListObject* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %14 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %15, %struct._object*** %items, align 8
  %16 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %17 = bitcast %struct.PyListObject* %16 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size14, align 8
  %cmp15 = icmp eq i64 %18, 1
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %19 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item17 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %19, i32 0, i32 1
  %20 = load %struct._object**, %struct._object*** %ob_item17, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %20, i64 0
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %21, %struct._object** %elem, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %n.addr, align 8
  %cmp18 = icmp slt i64 %22, %23
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._object*, %struct._object** %elem, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx19 = getelementptr %struct._object*, %struct._object** %26, i64 %25
  store %struct._object* %24, %struct._object** %arrayidx19, align 8
  %27 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %inc20 = add i64 %29, 1
  store i64 %inc20, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %31 = bitcast %struct.PyListObject* %30 to %struct._object*
  store %struct._object* %31, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.13
  %32 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %ob_item22 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %32, i32 0, i32 1
  %33 = load %struct._object**, %struct._object*** %ob_item22, align 8
  store %struct._object** %33, %struct._object*** %p, align 8
  %34 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item23 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %34, i32 0, i32 1
  %35 = load %struct._object**, %struct._object*** %ob_item23, align 8
  store %struct._object** %35, %struct._object*** %items, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.37, %if.end.21
  %36 = load i64, i64* %i, align 8
  %37 = load i64, i64* %n.addr, align 8
  %cmp25 = icmp slt i64 %36, %37
  br i1 %cmp25, label %for.body.26, label %for.end.39

for.body.26:                                      ; preds = %for.cond.24
  store i64 0, i64* %j, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.34, %for.body.26
  %38 = load i64, i64* %j, align 8
  %39 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %40 = bitcast %struct.PyListObject* %39 to %struct.PyVarObject*
  %ob_size28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %40, i32 0, i32 1
  %41 = load i64, i64* %ob_size28, align 8
  %cmp29 = icmp slt i64 %38, %41
  br i1 %cmp29, label %for.body.30, label %for.end.36

for.body.30:                                      ; preds = %for.cond.27
  %42 = load i64, i64* %j, align 8
  %43 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx31 = getelementptr %struct._object*, %struct._object** %43, i64 %42
  %44 = load %struct._object*, %struct._object** %arrayidx31, align 8
  %45 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* %44, %struct._object** %45, align 8
  %46 = load %struct._object**, %struct._object*** %p, align 8
  %47 = load %struct._object*, %struct._object** %46, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %48, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  %49 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %49, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.30
  %50 = load i64, i64* %j, align 8
  %inc35 = add i64 %50, 1
  store i64 %inc35, i64* %j, align 8
  br label %for.cond.27

for.end.36:                                       ; preds = %for.cond.27
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %51 = load i64, i64* %i, align 8
  %inc38 = add i64 %51, 1
  store i64 %inc38, i64* %i, align 8
  br label %for.cond.24

for.end.39:                                       ; preds = %for.cond.24
  %52 = load %struct.PyListObject*, %struct.PyListObject** %np, align 8
  %53 = bitcast %struct.PyListObject* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.39, %for.end, %if.then.12, %if.then.7, %if.then.3
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_item(%struct.PyListObject* %a, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyListObject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %3 = bitcast %struct.PyListObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %1, %4
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @indexerr, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @indexerr, align 8
  %6 = load %struct._object*, %struct._object** @indexerr, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %8 = load %struct._object*, %struct._object** @indexerr, align 8
  call void @PyErr_SetObject(%struct._object* %7, %struct._object* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load i64, i64* %i.addr, align 8
  %10 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load i64, i64* %i.addr, align 8
  %15 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item8 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %15, i32 0, i32 1
  %16 = load %struct._object**, %struct._object*** %ob_item8, align 8
  %arrayidx9 = getelementptr %struct._object*, %struct._object** %16, i64 %14
  %17 = load %struct._object*, %struct._object** %arrayidx9, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.end.6, %if.then.5
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @list_ass_item(%struct.PyListObject* %a, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.PyListObject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %old_value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %3 = bitcast %struct.PyListObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %1, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp2 = icmp eq %struct._object* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %8 = load i64, i64* %i.addr, align 8
  %9 = load i64, i64* %i.addr, align 8
  %add = add i64 %9, 1
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @list_ass_slice(%struct.PyListObject* %7, i64 %8, i64 %add, %struct._object* %10)
  store i32 %call, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 %13
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %old_value, align 8
  %17 = load %struct._object*, %struct._object** %v.addr, align 8
  %18 = load i64, i64* %i.addr, align 8
  %19 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item5 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %19, i32 0, i32 1
  %20 = load %struct._object**, %struct._object*** %ob_item5, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %20, i64 %18
  store %struct._object* %17, %struct._object** %arrayidx6, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %21 = load %struct._object*, %struct._object** %old_value, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @list_contains(%struct.PyListObject* %a, %struct._object* %el) #0 {
entry:
  %a.addr = alloca %struct.PyListObject*, align 8
  %el.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cmp = alloca i32, align 4
  store %struct.PyListObject* %a, %struct.PyListObject** %a.addr, align 8
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
  %2 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %3 = bitcast %struct.PyListObject* %2 to %struct.PyVarObject*
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
  %8 = load %struct.PyListObject*, %struct.PyListObject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  %9 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 %7
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %6, %struct._object* %10, i32 2)
  store i32 %call, i32* %cmp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i32, i32* %cmp, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_inplace_concat(%struct.PyListObject* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %other.addr, align 8
  %call = call %struct._object* @listextend(%struct.PyListObject* %0, %struct._object* %1)
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
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct._object*
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt4, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt4, align 8
  %14 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %15 = bitcast %struct.PyListObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_inplace_repeat(%struct.PyListObject* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %n.addr = alloca i64, align 8
  %items = alloca %struct._object**, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %p = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp eq i64 %4, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %6 = bitcast %struct.PyListObject* %5 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %9 = bitcast %struct.PyListObject* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp slt i64 %10, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %call = call i32 @list_clear(%struct.PyListObject* %11)
  %12 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %13 = bitcast %struct.PyListObject* %12 to %struct._object*
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt4, align 8
  %inc5 = add i64 %14, 1
  store i64 %inc5, i64* %ob_refcnt4, align 8
  %15 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %16 = bitcast %struct.PyListObject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %17 = load i64, i64* %size, align 8
  %18 = load i64, i64* %n.addr, align 8
  %div = sdiv i64 9223372036854775807, %18
  %cmp7 = icmp sgt i64 %17, %div
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %call9 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %19 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %20 = load i64, i64* %size, align 8
  %21 = load i64, i64* %n.addr, align 8
  %mul = mul i64 %20, %21
  %call11 = call i32 @list_resize(%struct.PyListObject* %19, i64 %mul)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %22 = load i64, i64* %size, align 8
  store i64 %22, i64* %p, align 8
  %23 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %23, i32 0, i32 1
  %24 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %24, %struct._object*** %items, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %if.end.14
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %n.addr, align 8
  %cmp15 = icmp slt i64 %25, %26
  br i1 %cmp15, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %27 = load i64, i64* %j, align 8
  %28 = load i64, i64* %size, align 8
  %cmp17 = icmp slt i64 %27, %28
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %29 = load i64, i64* %j, align 8
  %30 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %30, i64 %29
  %31 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %31, %struct._object** %o, align 8
  %32 = load %struct._object*, %struct._object** %o, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %33, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  %34 = load %struct._object*, %struct._object** %o, align 8
  %35 = load i64, i64* %p, align 8
  %inc21 = add i64 %35, 1
  store i64 %inc21, i64* %p, align 8
  %36 = load %struct._object**, %struct._object*** %items, align 8
  %arrayidx22 = getelementptr %struct._object*, %struct._object** %36, i64 %35
  store %struct._object* %34, %struct._object** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %37 = load i64, i64* %j, align 8
  %inc23 = add i64 %37, 1
  store i64 %inc23, i64* %j, align 8
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %38 = load i64, i64* %i, align 8
  %inc25 = add i64 %38, 1
  store i64 %inc25, i64* %i, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %39 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %40 = bitcast %struct.PyListObject* %39 to %struct._object*
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt27, align 8
  %inc28 = add i64 %41, 1
  store i64 %inc28, i64* %ob_refcnt27, align 8
  %42 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %43 = bitcast %struct.PyListObject* %42 to %struct._object*
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.13, %if.then.8, %if.then.3, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_subscript(%struct.PyListObject* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
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
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
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
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %i, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %15 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %16 = load i64, i64* %i, align 8
  %call11 = call %struct._object* @list_item(%struct.PyListObject* %15, i64 %16)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %18, @PySlice_Type
  br i1 %cmp13, label %if.then.14, label %if.else.38

if.then.14:                                       ; preds = %if.else
  %19 = load %struct._object*, %struct._object** %item.addr, align 8
  %20 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %21 = bitcast %struct.PyListObject* %20 to %struct.PyVarObject*
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
  %call23 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

if.else.24:                                       ; preds = %if.end.20
  %24 = load i64, i64* %step, align 8
  %cmp25 = icmp eq i64 %24, 1
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.24
  %25 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %26 = load i64, i64* %start, align 8
  %27 = load i64, i64* %stop, align 8
  %call27 = call %struct._object* @list_slice(%struct.PyListObject* %25, i64 %26, i64 %27)
  store %struct._object* %call27, %struct._object** %retval
  br label %return

if.else.28:                                       ; preds = %if.else.24
  %28 = load i64, i64* %slicelength, align 8
  %call29 = call %struct._object* @PyList_New(i64 %28)
  store %struct._object* %call29, %struct._object** %result, align 8
  %29 = load %struct._object*, %struct._object** %result, align 8
  %tobool30 = icmp ne %struct._object* %29, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.else.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.else.28
  %30 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %30, i32 0, i32 1
  %31 = load %struct._object**, %struct._object*** %ob_item, align 8
  store %struct._object** %31, %struct._object*** %src, align 8
  %32 = load %struct._object*, %struct._object** %result, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyListObject*
  %ob_item33 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %33, i32 0, i32 1
  %34 = load %struct._object**, %struct._object*** %ob_item33, align 8
  store %struct._object** %34, %struct._object*** %dest, align 8
  %35 = load i64, i64* %start, align 8
  store i64 %35, i64* %cur, align 8
  store i64 0, i64* %i15, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %36 = load i64, i64* %i15, align 8
  %37 = load i64, i64* %slicelength, align 8
  %cmp34 = icmp slt i64 %36, %37
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %cur, align 8
  %39 = load %struct._object**, %struct._object*** %src, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %39, i64 %38
  %40 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %40, %struct._object** %it, align 8
  %41 = load %struct._object*, %struct._object** %it, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %43 = load %struct._object*, %struct._object** %it, align 8
  %44 = load i64, i64* %i15, align 8
  %45 = load %struct._object**, %struct._object*** %dest, align 8
  %arrayidx35 = getelementptr %struct._object*, %struct._object** %45, i64 %44
  store %struct._object* %43, %struct._object** %arrayidx35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i64, i64* %step, align 8
  %47 = load i64, i64* %cur, align 8
  %add36 = add i64 %47, %46
  store i64 %add36, i64* %cur, align 8
  %48 = load i64, i64* %i15, align 8
  %inc37 = add i64 %48, 1
  store i64 %inc37, i64* %i15, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %49, %struct._object** %retval
  br label %return

if.else.38:                                       ; preds = %if.else
  %50 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %51 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 1
  %53 = load i8*, i8** %tp_name, align 8
  %call40 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i8* %53)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.38, %for.end, %if.then.31, %if.then.26, %if.then.22, %if.then.19, %if.end.10, %if.then.7
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

; Function Attrs: nounwind uwtable
define internal i32 @list_ass_subscript(%struct.PyListObject* %self, %struct._object* %item, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyListObject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %garbage = alloca %struct._object**, align 8
  %cur = alloca i64, align 8
  %i34 = alloca i64, align 8
  %res = alloca i32, align 4
  %lim = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ins = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %garbage101 = alloca %struct._object**, align 8
  %seqitems = alloca %struct._object**, align 8
  %selfitems = alloca %struct._object**, align 8
  %cur102 = alloca i64, align 8
  %i103 = alloca i64, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  %_py_decref_tmp217 = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
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
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %if.then
  %10 = load i64, i64* %i, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %i, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %15 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %16 = load i64, i64* %i, align 8
  %17 = load %struct._object*, %struct._object** %value.addr, align 8
  %call11 = call i32 @list_ass_item(%struct.PyListObject* %15, i64 %16, %struct._object* %17)
  store i32 %call11, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %19, @PySlice_Type
  br i1 %cmp13, label %if.then.14, label %if.else.227

if.then.14:                                       ; preds = %if.else
  %20 = load %struct._object*, %struct._object** %item.addr, align 8
  %21 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %22 = bitcast %struct.PyListObject* %21 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size15, align 8
  %call16 = call i32 @PySlice_GetIndicesEx(%struct._object* %20, i64 %23, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  %24 = load i64, i64* %step, align 8
  %cmp20 = icmp eq i64 %24, 1
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %25 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %26 = load i64, i64* %start, align 8
  %27 = load i64, i64* %stop, align 8
  %28 = load %struct._object*, %struct._object** %value.addr, align 8
  %call22 = call i32 @list_ass_slice(%struct.PyListObject* %25, i64 %26, i64 %27, %struct._object* %28)
  store i32 %call22, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %29 = load i64, i64* %step, align 8
  %cmp24 = icmp slt i64 %29, 0
  br i1 %cmp24, label %land.lhs.true.25, label %lor.lhs.false

land.lhs.true.25:                                 ; preds = %if.end.23
  %30 = load i64, i64* %start, align 8
  %31 = load i64, i64* %stop, align 8
  %cmp26 = icmp slt i64 %30, %31
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.25, %if.end.23
  %32 = load i64, i64* %step, align 8
  %cmp27 = icmp sgt i64 %32, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %33 = load i64, i64* %start, align 8
  %34 = load i64, i64* %stop, align 8
  %cmp29 = icmp sgt i64 %33, %34
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28, %land.lhs.true.25
  %35 = load i64, i64* %start, align 8
  store i64 %35, i64* %stop, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.28, %lor.lhs.false
  %36 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp32 = icmp eq %struct._object* %36, null
  br i1 %cmp32, label %if.then.33, label %if.else.100

if.then.33:                                       ; preds = %if.end.31
  %37 = load i64, i64* %slicelength, align 8
  %cmp35 = icmp sle i64 %37, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.33
  %38 = load i64, i64* %step, align 8
  %cmp38 = icmp slt i64 %38, 0
  br i1 %cmp38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.37
  %39 = load i64, i64* %start, align 8
  %add40 = add i64 %39, 1
  store i64 %add40, i64* %stop, align 8
  %40 = load i64, i64* %stop, align 8
  %41 = load i64, i64* %step, align 8
  %42 = load i64, i64* %slicelength, align 8
  %sub = sub i64 %42, 1
  %mul = mul i64 %41, %sub
  %add41 = add i64 %40, %mul
  %sub42 = sub i64 %add41, 1
  store i64 %sub42, i64* %start, align 8
  %43 = load i64, i64* %step, align 8
  %sub43 = sub i64 0, %43
  store i64 %sub43, i64* %step, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.end.37
  %44 = load i64, i64* %slicelength, align 8
  %mul45 = mul i64 %44, 8
  %call46 = call i8* @PyMem_Malloc(i64 %mul45)
  %45 = bitcast i8* %call46 to %struct._object**
  store %struct._object** %45, %struct._object*** %garbage, align 8
  %46 = load %struct._object**, %struct._object*** %garbage, align 8
  %tobool47 = icmp ne %struct._object** %46, null
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %if.end.44
  %call49 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  %47 = load i64, i64* %start, align 8
  store i64 %47, i64* %cur, align 8
  store i64 0, i64* %i34, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %48 = load i64, i64* %cur, align 8
  %49 = load i64, i64* %stop, align 8
  %cmp51 = icmp ult i64 %48, %49
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i64, i64* %step, align 8
  %sub52 = sub i64 %50, 1
  store i64 %sub52, i64* %lim, align 8
  %51 = load i64, i64* %cur, align 8
  %52 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %52, i32 0, i32 1
  %53 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %53, i64 %51
  %54 = load %struct._object*, %struct._object** %arrayidx, align 8
  %55 = load i64, i64* %i34, align 8
  %56 = load %struct._object**, %struct._object*** %garbage, align 8
  %arrayidx53 = getelementptr %struct._object*, %struct._object** %56, i64 %55
  store %struct._object* %54, %struct._object** %arrayidx53, align 8
  %57 = load i64, i64* %cur, align 8
  %58 = load i64, i64* %step, align 8
  %add54 = add i64 %57, %58
  %59 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %60 = bitcast %struct.PyListObject* %59 to %struct.PyVarObject*
  %ob_size55 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %60, i32 0, i32 1
  %61 = load i64, i64* %ob_size55, align 8
  %cmp56 = icmp uge i64 %add54, %61
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %for.body
  %62 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %63 = bitcast %struct.PyListObject* %62 to %struct.PyVarObject*
  %ob_size58 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %63, i32 0, i32 1
  %64 = load i64, i64* %ob_size58, align 8
  %65 = load i64, i64* %cur, align 8
  %sub59 = sub i64 %64, %65
  %sub60 = sub i64 %sub59, 1
  store i64 %sub60, i64* %lim, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %for.body
  %66 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item62 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %66, i32 0, i32 1
  %67 = load %struct._object**, %struct._object*** %ob_item62, align 8
  %68 = load i64, i64* %cur, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %67, i64 %68
  %69 = load i64, i64* %i34, align 8
  %idx.neg = sub i64 0, %69
  %add.ptr63 = getelementptr %struct._object*, %struct._object** %add.ptr, i64 %idx.neg
  %70 = bitcast %struct._object** %add.ptr63 to i8*
  %71 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item64 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %71, i32 0, i32 1
  %72 = load %struct._object**, %struct._object*** %ob_item64, align 8
  %73 = load i64, i64* %cur, align 8
  %add.ptr65 = getelementptr %struct._object*, %struct._object** %72, i64 %73
  %add.ptr66 = getelementptr %struct._object*, %struct._object** %add.ptr65, i64 1
  %74 = bitcast %struct._object** %add.ptr66 to i8*
  %75 = load i64, i64* %lim, align 8
  %mul67 = mul i64 %75, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %70, i8* %74, i64 %mul67, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %76 = load i64, i64* %step, align 8
  %77 = load i64, i64* %cur, align 8
  %add68 = add i64 %77, %76
  store i64 %add68, i64* %cur, align 8
  %78 = load i64, i64* %i34, align 8
  %inc = add i64 %78, 1
  store i64 %inc, i64* %i34, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i64, i64* %start, align 8
  %80 = load i64, i64* %slicelength, align 8
  %81 = load i64, i64* %step, align 8
  %mul69 = mul i64 %80, %81
  %add70 = add i64 %79, %mul69
  store i64 %add70, i64* %cur, align 8
  %82 = load i64, i64* %cur, align 8
  %83 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %84 = bitcast %struct.PyListObject* %83 to %struct.PyVarObject*
  %ob_size71 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %84, i32 0, i32 1
  %85 = load i64, i64* %ob_size71, align 8
  %cmp72 = icmp ult i64 %82, %85
  br i1 %cmp72, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %for.end
  %86 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item74 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %86, i32 0, i32 1
  %87 = load %struct._object**, %struct._object*** %ob_item74, align 8
  %88 = load i64, i64* %cur, align 8
  %add.ptr75 = getelementptr %struct._object*, %struct._object** %87, i64 %88
  %89 = load i64, i64* %slicelength, align 8
  %idx.neg76 = sub i64 0, %89
  %add.ptr77 = getelementptr %struct._object*, %struct._object** %add.ptr75, i64 %idx.neg76
  %90 = bitcast %struct._object** %add.ptr77 to i8*
  %91 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item78 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %91, i32 0, i32 1
  %92 = load %struct._object**, %struct._object*** %ob_item78, align 8
  %93 = load i64, i64* %cur, align 8
  %add.ptr79 = getelementptr %struct._object*, %struct._object** %92, i64 %93
  %94 = bitcast %struct._object** %add.ptr79 to i8*
  %95 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %96 = bitcast %struct.PyListObject* %95 to %struct.PyVarObject*
  %ob_size80 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %96, i32 0, i32 1
  %97 = load i64, i64* %ob_size80, align 8
  %98 = load i64, i64* %cur, align 8
  %sub81 = sub i64 %97, %98
  %mul82 = mul i64 %sub81, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %90, i8* %94, i64 %mul82, i32 8, i1 false)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.73, %for.end
  %99 = load i64, i64* %slicelength, align 8
  %100 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %101 = bitcast %struct.PyListObject* %100 to %struct.PyVarObject*
  %ob_size84 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %101, i32 0, i32 1
  %102 = load i64, i64* %ob_size84, align 8
  %sub85 = sub i64 %102, %99
  store i64 %sub85, i64* %ob_size84, align 8
  %103 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %104 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %105 = bitcast %struct.PyListObject* %104 to %struct.PyVarObject*
  %ob_size86 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %105, i32 0, i32 1
  %106 = load i64, i64* %ob_size86, align 8
  %call87 = call i32 @list_resize(%struct.PyListObject* %103, i64 %106)
  store i32 %call87, i32* %res, align 4
  store i64 0, i64* %i34, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %if.end.83
  %107 = load i64, i64* %i34, align 8
  %108 = load i64, i64* %slicelength, align 8
  %cmp89 = icmp slt i64 %107, %108
  br i1 %cmp89, label %for.body.90, label %for.end.99

for.body.90:                                      ; preds = %for.cond.88
  br label %do.body

do.body:                                          ; preds = %for.body.90
  %109 = load i64, i64* %i34, align 8
  %110 = load %struct._object**, %struct._object*** %garbage, align 8
  %arrayidx91 = getelementptr %struct._object*, %struct._object** %110, i64 %109
  %111 = load %struct._object*, %struct._object** %arrayidx91, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %113, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp92 = icmp ne i64 %dec, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body
  br label %if.end.96

if.else.94:                                       ; preds = %do.body
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %116(%struct._object* %117)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end

do.end:                                           ; preds = %if.end.96
  br label %for.inc.97

for.inc.97:                                       ; preds = %do.end
  %118 = load i64, i64* %i34, align 8
  %inc98 = add i64 %118, 1
  store i64 %inc98, i64* %i34, align 8
  br label %for.cond.88

for.end.99:                                       ; preds = %for.cond.88
  %119 = load %struct._object**, %struct._object*** %garbage, align 8
  %120 = bitcast %struct._object** %119 to i8*
  call void @PyMem_Free(i8* %120)
  %121 = load i32, i32* %res, align 4
  store i32 %121, i32* %retval
  br label %return

if.else.100:                                      ; preds = %if.end.31
  %122 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %123 = load %struct._object*, %struct._object** %value.addr, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyListObject*
  %cmp104 = icmp eq %struct.PyListObject* %122, %124
  br i1 %cmp104, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %if.else.100
  %125 = load %struct._object*, %struct._object** %value.addr, align 8
  %126 = bitcast %struct._object* %125 to %struct.PyListObject*
  %127 = load %struct._object*, %struct._object** %value.addr, align 8
  %128 = bitcast %struct._object* %127 to %struct.PyVarObject*
  %ob_size106 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %128, i32 0, i32 1
  %129 = load i64, i64* %ob_size106, align 8
  %call107 = call %struct._object* @list_slice(%struct.PyListObject* %126, i64 0, i64 %129)
  store %struct._object* %call107, %struct._object** %seq, align 8
  br label %if.end.110

if.else.108:                                      ; preds = %if.else.100
  %130 = load %struct._object*, %struct._object** %value.addr, align 8
  %call109 = call %struct._object* @PySequence_Fast(%struct._object* %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0))
  store %struct._object* %call109, %struct._object** %seq, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.105
  %131 = load %struct._object*, %struct._object** %seq, align 8
  %tobool111 = icmp ne %struct._object* %131, null
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.end.110
  store i32 -1, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.end.110
  %132 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 19
  %134 = load i64, i64* %tp_flags, align 8
  %and = and i64 %134, 33554432
  %cmp115 = icmp ne i64 %and, 0
  br i1 %cmp115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.113
  %135 = load %struct._object*, %struct._object** %seq, align 8
  %136 = bitcast %struct._object* %135 to %struct.PyVarObject*
  %ob_size116 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %136, i32 0, i32 1
  %137 = load i64, i64* %ob_size116, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.113
  %138 = load %struct._object*, %struct._object** %seq, align 8
  %139 = bitcast %struct._object* %138 to %struct.PyVarObject*
  %ob_size117 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %139, i32 0, i32 1
  %140 = load i64, i64* %ob_size117, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %137, %cond.true ], [ %140, %cond.false ]
  %141 = load i64, i64* %slicelength, align 8
  %cmp118 = icmp ne i64 %cond, %141
  br i1 %cmp118, label %if.then.119, label %if.end.142

if.then.119:                                      ; preds = %cond.end
  %142 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %143 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_flags121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 19
  %145 = load i64, i64* %tp_flags121, align 8
  %and122 = and i64 %145, 33554432
  %cmp123 = icmp ne i64 %and122, 0
  br i1 %cmp123, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %if.then.119
  %146 = load %struct._object*, %struct._object** %seq, align 8
  %147 = bitcast %struct._object* %146 to %struct.PyVarObject*
  %ob_size125 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %147, i32 0, i32 1
  %148 = load i64, i64* %ob_size125, align 8
  br label %cond.end.128

cond.false.126:                                   ; preds = %if.then.119
  %149 = load %struct._object*, %struct._object** %seq, align 8
  %150 = bitcast %struct._object* %149 to %struct.PyVarObject*
  %ob_size127 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %150, i32 0, i32 1
  %151 = load i64, i64* %ob_size127, align 8
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.124
  %cond129 = phi i64 [ %148, %cond.true.124 ], [ %151, %cond.false.126 ]
  %152 = load i64, i64* %slicelength, align 8
  %call130 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %142, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i32 0, i32 0), i64 %cond129, i64 %152)
  br label %do.body.131

do.body.131:                                      ; preds = %cond.end.128
  %153 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp132, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt133, align 8
  %dec134 = add i64 %155, -1
  store i64 %dec134, i64* %ob_refcnt133, align 8
  %cmp135 = icmp ne i64 %dec134, 0
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %do.body.131
  br label %if.end.140

if.else.137:                                      ; preds = %do.body.131
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  call void %158(%struct._object* %159)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  store i32 -1, i32* %retval
  br label %return

if.end.142:                                       ; preds = %cond.end
  %160 = load i64, i64* %slicelength, align 8
  %tobool143 = icmp ne i64 %160, 0
  br i1 %tobool143, label %if.end.156, label %if.then.144

if.then.144:                                      ; preds = %if.end.142
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.144
  %161 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %161, %struct._object** %_py_decref_tmp146, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt147, align 8
  %dec148 = add i64 %163, -1
  store i64 %dec148, i64* %ob_refcnt147, align 8
  %cmp149 = icmp ne i64 %dec148, 0
  br i1 %cmp149, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %do.body.145
  br label %if.end.154

if.else.151:                                      ; preds = %do.body.145
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  call void %166(%struct._object* %167)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  store i32 0, i32* %retval
  br label %return

if.end.156:                                       ; preds = %if.end.142
  %168 = load i64, i64* %slicelength, align 8
  %mul157 = mul i64 %168, 8
  %call158 = call i8* @PyMem_Malloc(i64 %mul157)
  %169 = bitcast i8* %call158 to %struct._object**
  store %struct._object** %169, %struct._object*** %garbage101, align 8
  %170 = load %struct._object**, %struct._object*** %garbage101, align 8
  %tobool159 = icmp ne %struct._object** %170, null
  br i1 %tobool159, label %if.end.173, label %if.then.160

if.then.160:                                      ; preds = %if.end.156
  br label %do.body.161

do.body.161:                                      ; preds = %if.then.160
  %171 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %171, %struct._object** %_py_decref_tmp162, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt163, align 8
  %dec164 = add i64 %173, -1
  store i64 %dec164, i64* %ob_refcnt163, align 8
  %cmp165 = icmp ne i64 %dec164, 0
  br i1 %cmp165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.161
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.161
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 1
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i32 0, i32 4
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  call void %176(%struct._object* %177)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  %call172 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.173:                                       ; preds = %if.end.156
  %178 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item174 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %178, i32 0, i32 1
  %179 = load %struct._object**, %struct._object*** %ob_item174, align 8
  store %struct._object** %179, %struct._object*** %selfitems, align 8
  %180 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_flags176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 19
  %182 = load i64, i64* %tp_flags176, align 8
  %and177 = and i64 %182, 33554432
  %cmp178 = icmp ne i64 %and177, 0
  br i1 %cmp178, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %if.end.173
  %183 = load %struct._object*, %struct._object** %seq, align 8
  %184 = bitcast %struct._object* %183 to %struct.PyListObject*
  %ob_item180 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %184, i32 0, i32 1
  %185 = load %struct._object**, %struct._object*** %ob_item180, align 8
  br label %cond.end.183

cond.false.181:                                   ; preds = %if.end.173
  %186 = load %struct._object*, %struct._object** %seq, align 8
  %187 = bitcast %struct._object* %186 to %struct.PyTupleObject*
  %ob_item182 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %187, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %ob_item182, i32 0, i32 0
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.179
  %cond184 = phi %struct._object** [ %185, %cond.true.179 ], [ %arraydecay, %cond.false.181 ]
  store %struct._object** %cond184, %struct._object*** %seqitems, align 8
  %188 = load i64, i64* %start, align 8
  store i64 %188, i64* %cur102, align 8
  store i64 0, i64* %i103, align 8
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.194, %cond.end.183
  %189 = load i64, i64* %i103, align 8
  %190 = load i64, i64* %slicelength, align 8
  %cmp186 = icmp slt i64 %189, %190
  br i1 %cmp186, label %for.body.187, label %for.end.197

for.body.187:                                     ; preds = %for.cond.185
  %191 = load i64, i64* %cur102, align 8
  %192 = load %struct._object**, %struct._object*** %selfitems, align 8
  %arrayidx188 = getelementptr %struct._object*, %struct._object** %192, i64 %191
  %193 = load %struct._object*, %struct._object** %arrayidx188, align 8
  %194 = load i64, i64* %i103, align 8
  %195 = load %struct._object**, %struct._object*** %garbage101, align 8
  %arrayidx189 = getelementptr %struct._object*, %struct._object** %195, i64 %194
  store %struct._object* %193, %struct._object** %arrayidx189, align 8
  %196 = load i64, i64* %i103, align 8
  %197 = load %struct._object**, %struct._object*** %seqitems, align 8
  %arrayidx190 = getelementptr %struct._object*, %struct._object** %197, i64 %196
  %198 = load %struct._object*, %struct._object** %arrayidx190, align 8
  store %struct._object* %198, %struct._object** %ins, align 8
  %199 = load %struct._object*, %struct._object** %ins, align 8
  %ob_refcnt191 = getelementptr inbounds %struct._object, %struct._object* %199, i32 0, i32 0
  %200 = load i64, i64* %ob_refcnt191, align 8
  %inc192 = add i64 %200, 1
  store i64 %inc192, i64* %ob_refcnt191, align 8
  %201 = load %struct._object*, %struct._object** %ins, align 8
  %202 = load i64, i64* %cur102, align 8
  %203 = load %struct._object**, %struct._object*** %selfitems, align 8
  %arrayidx193 = getelementptr %struct._object*, %struct._object** %203, i64 %202
  store %struct._object* %201, %struct._object** %arrayidx193, align 8
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.187
  %204 = load i64, i64* %step, align 8
  %205 = load i64, i64* %cur102, align 8
  %add195 = add i64 %205, %204
  store i64 %add195, i64* %cur102, align 8
  %206 = load i64, i64* %i103, align 8
  %inc196 = add i64 %206, 1
  store i64 %inc196, i64* %i103, align 8
  br label %for.cond.185

for.end.197:                                      ; preds = %for.cond.185
  store i64 0, i64* %i103, align 8
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.213, %for.end.197
  %207 = load i64, i64* %i103, align 8
  %208 = load i64, i64* %slicelength, align 8
  %cmp199 = icmp slt i64 %207, %208
  br i1 %cmp199, label %for.body.200, label %for.end.215

for.body.200:                                     ; preds = %for.cond.198
  br label %do.body.201

do.body.201:                                      ; preds = %for.body.200
  %209 = load i64, i64* %i103, align 8
  %210 = load %struct._object**, %struct._object*** %garbage101, align 8
  %arrayidx203 = getelementptr %struct._object*, %struct._object** %210, i64 %209
  %211 = load %struct._object*, %struct._object** %arrayidx203, align 8
  store %struct._object* %211, %struct._object** %_py_decref_tmp202, align 8
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_refcnt204 = getelementptr inbounds %struct._object, %struct._object* %212, i32 0, i32 0
  %213 = load i64, i64* %ob_refcnt204, align 8
  %dec205 = add i64 %213, -1
  store i64 %dec205, i64* %ob_refcnt204, align 8
  %cmp206 = icmp ne i64 %dec205, 0
  br i1 %cmp206, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %do.body.201
  br label %if.end.211

if.else.208:                                      ; preds = %do.body.201
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_type209 = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 1
  %215 = load %struct._typeobject*, %struct._typeobject** %ob_type209, align 8
  %tp_dealloc210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %215, i32 0, i32 4
  %216 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc210, align 8
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  call void %216(%struct._object* %217)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.208, %if.then.207
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  br label %for.inc.213

for.inc.213:                                      ; preds = %do.end.212
  %218 = load i64, i64* %i103, align 8
  %inc214 = add i64 %218, 1
  store i64 %inc214, i64* %i103, align 8
  br label %for.cond.198

for.end.215:                                      ; preds = %for.cond.198
  %219 = load %struct._object**, %struct._object*** %garbage101, align 8
  %220 = bitcast %struct._object** %219 to i8*
  call void @PyMem_Free(i8* %220)
  br label %do.body.216

do.body.216:                                      ; preds = %for.end.215
  %221 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %221, %struct._object** %_py_decref_tmp217, align 8
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  %ob_refcnt218 = getelementptr inbounds %struct._object, %struct._object* %222, i32 0, i32 0
  %223 = load i64, i64* %ob_refcnt218, align 8
  %dec219 = add i64 %223, -1
  store i64 %dec219, i64* %ob_refcnt218, align 8
  %cmp220 = icmp ne i64 %dec219, 0
  br i1 %cmp220, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %do.body.216
  br label %if.end.225

if.else.222:                                      ; preds = %do.body.216
  %224 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %224, i32 0, i32 1
  %225 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %225, i32 0, i32 4
  %226 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp217, align 8
  call void %226(%struct._object* %227)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  br label %do.end.226

do.end.226:                                       ; preds = %if.end.225
  store i32 0, i32* %retval
  br label %return

if.else.227:                                      ; preds = %if.else
  %228 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %229 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type228 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 1
  %230 = load %struct._typeobject*, %struct._typeobject** %ob_type228, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %230, i32 0, i32 1
  %231 = load i8*, i8** %tp_name, align 8
  %call229 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %228, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i8* %231)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.227, %do.end.226, %do.end.171, %do.end.155, %do.end.141, %if.then.112, %for.end.99, %if.then.48, %if.then.36, %if.then.21, %if.then.18, %if.end.10, %if.then.7
  %232 = load i32, i32* %retval
  ret i32 %232
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_reversed(%struct.PyListObject* %seq, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct.PyListObject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %it = alloca %struct.listreviterobject*, align 8
  store %struct.PyListObject* %seq, %struct.PyListObject** %seq.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyListRevIter_Type)
  %0 = bitcast %struct._object* %call to %struct.listreviterobject*
  store %struct.listreviterobject* %0, %struct.listreviterobject** %it, align 8
  %1 = load %struct.listreviterobject*, %struct.listreviterobject** %it, align 8
  %cmp = icmp eq %struct.listreviterobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyListObject*, %struct.PyListObject** %seq.addr, align 8
  %3 = bitcast %struct.PyListObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %sub = sub i64 %4, 1
  %5 = load %struct.listreviterobject*, %struct.listreviterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %5, i32 0, i32 1
  store i64 %sub, i64* %it_index, align 8
  %6 = load %struct.PyListObject*, %struct.PyListObject** %seq.addr, align 8
  %7 = bitcast %struct.PyListObject* %6 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct.PyListObject*, %struct.PyListObject** %seq.addr, align 8
  %10 = load %struct.listreviterobject*, %struct.listreviterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %10, i32 0, i32 2
  store %struct.PyListObject* %9, %struct.PyListObject** %it_seq, align 8
  %11 = load %struct.listreviterobject*, %struct.listreviterobject** %it, align 8
  %12 = bitcast %struct.listreviterobject* %11 to i8*
  call void @PyObject_GC_Track(i8* %12)
  %13 = load %struct.listreviterobject*, %struct.listreviterobject** %it, align 8
  %14 = bitcast %struct.listreviterobject* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_sizeof(%struct.PyListObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyListObject*, align 8
  %res = alloca i64, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %allocated = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %0, i32 0, i32 2
  %1 = load i64, i64* %allocated, align 8
  %mul = mul i64 %1, 8
  %add = add i64 40, %mul
  store i64 %add, i64* %res, align 8
  %2 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listclear(%struct.PyListObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyListObject*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %call = call i32 @list_clear(%struct.PyListObject* %0)
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listcopy(%struct.PyListObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyListObject*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %2 = bitcast %struct.PyListObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @list_slice(%struct.PyListObject* %0, i64 0, i64 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listappend(%struct.PyListObject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @app1(%struct.PyListObject* %0, %struct._object* %1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listinsert(%struct.PyListObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64* %i, %struct._object** %v)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %2 = load i64, i64* %i, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call i32 @ins1(%struct.PyListObject* %1, i64 %2, %struct._object* %3)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listpop(%struct.PyListObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %i, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i64* %i)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %2 = bitcast %struct.PyListObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %cmp3 = icmp slt i64 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %6 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %7 = bitcast %struct.PyListObject* %6 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size5, align 8
  %9 = load i64, i64* %i, align 8
  %add = add i64 %9, %8
  store i64 %add, i64* %i, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %10 = load i64, i64* %i, align 8
  %cmp7 = icmp slt i64 %10, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %13 = bitcast %struct.PyListObject* %12 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size8, align 8
  %cmp9 = icmp sge i64 %11, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.6
  %15 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1
  %18 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %18, i64 %16
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %19, %struct._object** %v, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %22 = bitcast %struct.PyListObject* %21 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size12, align 8
  %sub = sub i64 %23, 1
  %cmp13 = icmp eq i64 %20, %sub
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  %24 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %25 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %26 = bitcast %struct.PyListObject* %25 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %26, i32 0, i32 1
  %27 = load i64, i64* %ob_size15, align 8
  %sub16 = sub i64 %27, 1
  %call17 = call i32 @list_resize(%struct.PyListObject* %24, i64 %sub16)
  store i32 %call17, i32* %status, align 4
  %28 = load i32, i32* %status, align 4
  %cmp18 = icmp sge i32 %28, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.14
  %29 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.11
  %30 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %32 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %i, align 8
  %add21 = add i64 %34, 1
  %call22 = call i32 @list_ass_slice(%struct.PyListObject* %32, i64 %33, i64 %add21, %struct._object* null)
  store i32 %call22, i32* %status, align 4
  %35 = load i32, i32* %status, align 4
  %cmp23 = icmp slt i32 %35, 0
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.20
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %36 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt25, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt25, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else.28:                                       ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.20
  %43 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.30, %do.end, %if.else, %if.then.19, %if.then.10, %if.then.1, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listremove(%struct.PyListObject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cmp1 = alloca i32, align 4
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %2 = bitcast %struct.PyListObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %6, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %7, %struct._object* %8, i32 2)
  store i32 %call, i32* %cmp1, align 4
  %9 = load i32, i32* %cmp1, align 4
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %i, align 8
  %add = add i64 %12, 1
  %call3 = call i32 @list_ass_slice(%struct.PyListObject* %10, i64 %11, i64 %add, %struct._object* null)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %cmp1, align 4
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %15 = load i64, i64* %i, align 8
  %inc10 = add i64 %15, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.end, %if.then.5
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listindex(%struct.PyListObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %cmp18 = alloca i32, align 4
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %start, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %stop, align 8
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), %struct._object** %v, i32 (%struct._object*, i64*)* @_PyEval_SliceIndex, i64* %start, i32 (%struct._object*, i64*)* @_PyEval_SliceIndex, i64* %stop)
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
  %5 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %6 = bitcast %struct.PyListObject* %5 to %struct.PyVarObject*
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
  %11 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
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
  %20 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %21 = bitcast %struct.PyListObject* %20 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size16, align 8
  %cmp17 = icmp slt i64 %19, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %25, i32 0, i32 1
  %26 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %26, i64 %24
  %27 = load %struct._object*, %struct._object** %arrayidx, align 8
  %28 = load %struct._object*, %struct._object** %v, align 8
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %27, %struct._object* %28, i32 2)
  store i32 %call19, i32* %cmp18, align 4
  %29 = load i32, i32* %cmp18, align 4
  %cmp20 = icmp sgt i32 %29, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %30)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %31 = load i32, i32* %cmp18, align 4
  %cmp23 = icmp slt i32 %31, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %32 = load i64, i64* %i, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %33 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %34 = load %struct._object*, %struct._object** %v, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), %struct._object* %34)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.21, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listcount(%struct.PyListObject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyListObject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %cmp1 = alloca i32, align 4
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %2 = bitcast %struct.PyListObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %6, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %7, %struct._object* %8, i32 2)
  store i32 %call, i32* %cmp1, align 4
  %9 = load i32, i32* %cmp1, align 4
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %count, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %count, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %cmp1, align 4
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load i64, i64* %i, align 8
  %inc6 = add i64 %12, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64, i64* %count, align 8
  %call7 = call %struct._object* @PyLong_FromSsize_t(i64 %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listreverse(%struct.PyListObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyListObject*, align 8
  store %struct.PyListObject* %self, %struct.PyListObject** %self.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp sgt i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %3, i32 0, i32 1
  %4 = load %struct._object**, %struct._object*** %ob_item, align 8
  %5 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %ob_item1 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %ob_item1, align 8
  %7 = load %struct.PyListObject*, %struct.PyListObject** %self.addr, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size2, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %6, i64 %9
  call void @reverse_slice(%struct._object** %4, %struct._object** %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare void @PyObject_GC_Track(i8*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @listiter_len(%struct.listiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.listiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.listiterobject* %it, %struct.listiterobject** %it.addr, align 8
  %0 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyListObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyListObject*, %struct.PyListObject** %it_seq1, align 8
  %4 = bitcast %struct.PyListObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %6 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %6, i32 0, i32 1
  %7 = load i64, i64* %it_index, align 8
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %cmp = icmp sge i64 %8, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listiter_reduce(%struct.listiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.listiterobject*, align 8
  store %struct.listiterobject* %it, %struct.listiterobject** %it.addr, align 8
  %0 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %1 = bitcast %struct.listiterobject* %0 to i8*
  %call = call %struct._object* @listiter_reduce_general(i8* %1, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listiter_setstate(%struct.listiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.listiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.listiterobject* %it, %struct.listiterobject** %it.addr, align 8
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
  %2 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %cmp2 = icmp ne %struct.PyListObject* %3, null
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
  %6 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq6 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %6, i32 0, i32 2
  %7 = load %struct.PyListObject*, %struct.PyListObject** %it_seq6, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp7 = icmp sgt i64 %5, %9
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_seq9 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %10, i32 0, i32 2
  %11 = load %struct.PyListObject*, %struct.PyListObject** %it_seq9, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size10, align 8
  store i64 %13, i64* %index, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.listiterobject*, %struct.listiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %15, i32 0, i32 1
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

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @listiter_reduce_general(i8* %_it, i32 %forward) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %_it.addr = alloca i8*, align 8
  %forward.addr = alloca i32, align 4
  %list = alloca %struct._object*, align 8
  %it = alloca %struct.listiterobject*, align 8
  %it5 = alloca %struct.listreviterobject*, align 8
  store i8* %_it, i8** %_it.addr, align 8
  store i32 %forward, i32* %forward.addr, align 4
  %0 = load i32, i32* %forward.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_it.addr, align 8
  %2 = bitcast i8* %1 to %struct.listiterobject*
  store %struct.listiterobject* %2, %struct.listiterobject** %it, align 8
  %3 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %3, i32 0, i32 2
  %4 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %tobool1 = icmp ne %struct.PyListObject* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0))
  %5 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %it_seq3 = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %5, i32 0, i32 2
  %6 = load %struct.PyListObject*, %struct.PyListObject** %it_seq3, align 8
  %7 = load %struct.listiterobject*, %struct.listiterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.listiterobject, %struct.listiterobject* %7, i32 0, i32 1
  %8 = load i64, i64* %it_index, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), %struct._object* %call, %struct.PyListObject* %6, i64 %8)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.14

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %_it.addr, align 8
  %10 = bitcast i8* %9 to %struct.listreviterobject*
  store %struct.listreviterobject* %10, %struct.listreviterobject** %it5, align 8
  %11 = load %struct.listreviterobject*, %struct.listreviterobject** %it5, align 8
  %it_seq6 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %11, i32 0, i32 2
  %12 = load %struct.PyListObject*, %struct.PyListObject** %it_seq6, align 8
  %tobool7 = icmp ne %struct.PyListObject* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.else
  %call9 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0))
  %13 = load %struct.listreviterobject*, %struct.listreviterobject** %it5, align 8
  %it_seq10 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %13, i32 0, i32 2
  %14 = load %struct.PyListObject*, %struct.PyListObject** %it_seq10, align 8
  %15 = load %struct.listreviterobject*, %struct.listreviterobject** %it5, align 8
  %it_index11 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %15, i32 0, i32 1
  %16 = load i64, i64* %it_index11, align 8
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), %struct._object* %call9, %struct.PyListObject* %14, i64 %16)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %call15 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call15, %struct._object** %list, align 8
  %17 = load %struct._object*, %struct._object** %list, align 8
  %cmp = icmp eq %struct._object* %17, null
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %call18 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0))
  %18 = load %struct._object*, %struct._object** %list, align 8
  %call19 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), %struct._object* %call18, %struct._object* %18)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.8, %if.then.2
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @listreviter_len(%struct.listreviterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.listreviterobject*, align 8
  %len = alloca i64, align 8
  store %struct.listreviterobject* %it, %struct.listreviterobject** %it.addr, align 8
  %0 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %0, i32 0, i32 1
  %1 = load i64, i64* %it_index, align 8
  %add = add i64 %1, 1
  store i64 %add, i64* %len, align 8
  %2 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %2, i32 0, i32 2
  %3 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %cmp = icmp eq %struct.PyListObject* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %4, i32 0, i32 2
  %5 = load %struct.PyListObject*, %struct.PyListObject** %it_seq1, align 8
  %6 = bitcast %struct.PyListObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %8 = load i64, i64* %len, align 8
  %cmp2 = icmp slt i64 %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listreviter_reduce(%struct.listreviterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.listreviterobject*, align 8
  store %struct.listreviterobject* %it, %struct.listreviterobject** %it.addr, align 8
  %0 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %1 = bitcast %struct.listreviterobject* %0 to i8*
  %call = call %struct._object* @listiter_reduce_general(i8* %1, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @listreviter_setstate(%struct.listreviterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.listreviterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.listreviterobject* %it, %struct.listreviterobject** %it.addr, align 8
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
  %2 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %2, i32 0, i32 2
  %3 = load %struct.PyListObject*, %struct.PyListObject** %it_seq, align 8
  %cmp2 = icmp ne %struct.PyListObject* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp slt i64 %4, -1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i64 -1, i64* %index, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.then.3
  %5 = load i64, i64* %index, align 8
  %6 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq6 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %6, i32 0, i32 2
  %7 = load %struct.PyListObject*, %struct.PyListObject** %it_seq6, align 8
  %8 = bitcast %struct.PyListObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %sub = sub i64 %9, 1
  %cmp7 = icmp sgt i64 %5, %sub
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_seq9 = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %10, i32 0, i32 2
  %11 = load %struct.PyListObject*, %struct.PyListObject** %it_seq9, align 8
  %12 = bitcast %struct.PyListObject* %11 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size10, align 8
  %sub11 = sub i64 %13, 1
  store i64 %sub11, i64* %index, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.listreviterobject*, %struct.listreviterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.listreviterobject, %struct.listreviterobject* %15, i32 0, i32 1
  store i64 %14, i64* %it_index, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139700}
!2 = !{i32 139540}
