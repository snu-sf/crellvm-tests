; ModuleID = 'classobject.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMethodObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, {}*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, {}*, {}*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, i32 (%struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, i8*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }

@.str = private unnamed_addr constant [22 x i8] c"Objects/classobject.c\00", align 1
@free_list = internal unnamed_addr global %struct.PyMethodObject* null, align 8
@numfree = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@method_doc = internal global [67 x i8] c"method(function, instance)\0A\0ACreate a bound instance method object.\00", align 16
@method_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMethodObject*)* @method_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@method_memberlist = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 6, i64 16, i32 7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 24, i32 7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@method_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMethodObject*, i8*)* @method_get_doc to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyMethod_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.PyMethodObject*)* @method_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyMethodObject*)* @method_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.PyMethodObject*)* @method_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @method_call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @method_getattro, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @method_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyMethodObject*, i32 (%struct._object*, i8*)*, i8*)* @method_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @method_richcompare, i64 32, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @method_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @method_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @method_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @method_descr_get, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @method_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"free PyMethodObject\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"instancemethod\00", align 1
@instancemethod_doc = internal global [54 x i8] c"instancemethod(function)\0A\0ABind a function to a class.\00", align 16
@instancemethod_memberlist = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 6, i64 16, i32 7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@instancemethod_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @instancemethod_get_doc, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyInstanceMethod_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* @instancemethod_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @instancemethod_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @instancemethod_call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @instancemethod_getattro, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @instancemethod_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @instancemethod_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @instancemethod_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @instancemethod_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @instancemethod_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @instancemethod_descr_get, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @instancemethod_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@PyId___name__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"<bound method %V.%V of %R>\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@method_reduce.PyId_getattr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* null }, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"O(ON)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"__func__\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"the function (or other callable) implementing a method\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"__self__\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"the instance to which a method is bound\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@method_get_doc.docstr = internal unnamed_addr global %struct._object* null, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"first argument must be callable\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"self must not be None\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"<instancemethod %V at %p>\00", align 1
@instancemethod_get_doc.docstr = internal unnamed_addr global %struct._object* null, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_Function(%struct._object* nocapture readonly %im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %im, i64 0, metadata !390, metadata !689), !dbg !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %im, i64 0, i32 1, !dbg !691
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !691, !tbaa !693
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !691
  br i1 %cmp, label %if.end, label %if.then, !dbg !699

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 23) #2, !dbg !700
  br label %return, !dbg !702

if.end:                                           ; preds = %entry
  %im_func = getelementptr inbounds %struct._object, %struct._object* %im, i64 1, !dbg !703
  %1 = bitcast %struct._object* %im_func to %struct._object**, !dbg !703
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !703, !tbaa !704
  br label %return, !dbg !706

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !707
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_Self(%struct._object* nocapture readonly %im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %im, i64 0, metadata !393, metadata !689), !dbg !708
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %im, i64 0, i32 1, !dbg !709
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !709, !tbaa !693
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !709
  br i1 %cmp, label %if.end, label %if.then, !dbg !711

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 33) #2, !dbg !712
  br label %return, !dbg !714

if.end:                                           ; preds = %entry
  %im_self = getelementptr inbounds %struct._object, %struct._object* %im, i64 1, i32 1, !dbg !715
  %1 = bitcast %struct._typeobject** %im_self to %struct._object**, !dbg !715
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !715, !tbaa !716
  br label %return, !dbg !717

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !718
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_New(%struct._object* %func, %struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !396, metadata !689), !dbg !719
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !397, metadata !689), !dbg !720
  %cmp = icmp eq %struct._object* %self, null, !dbg !721
  br i1 %cmp, label %if.then, label %if.end, !dbg !723

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 49) #2, !dbg !724
  br label %cleanup, !dbg !726

if.end:                                           ; preds = %entry
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !727, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %0, i64 0, metadata !398, metadata !689), !dbg !729
  %cmp1 = icmp eq %struct.PyMethodObject* %0, null, !dbg !730
  br i1 %cmp1, label %if.else, label %if.then.2, !dbg !732

if.then.2:                                        ; preds = %if.end
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i64 0, i32 2, !dbg !733
  %1 = bitcast %struct._object** %im_self to i64*, !dbg !733
  %2 = load i64, i64* %1, align 8, !dbg !733, !tbaa !716
  store i64 %2, i64* bitcast (%struct.PyMethodObject** @free_list to i64*), align 8, !dbg !735, !tbaa !728
  %ob_type = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i64 0, i32 0, i32 1, !dbg !736
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), %struct._typeobject** %ob_type, align 8, !dbg !736, !tbaa !693
  %ob_refcnt = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i64 0, i32 0, i32 0, !dbg !736
  store i64 1, i64* %ob_refcnt, align 8, !dbg !736, !tbaa !737
  %3 = load i32, i32* @numfree, align 4, !dbg !738, !tbaa !739
  %dec = add i32 %3, -1, !dbg !738
  store i32 %dec, i32* @numfree, align 4, !dbg !738, !tbaa !739
  br label %if.end.12, !dbg !741

if.else:                                          ; preds = %if.end
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*)) #2, !dbg !742
  %4 = bitcast %struct._object* %call to %struct.PyMethodObject*, !dbg !742
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %4, i64 0, metadata !398, metadata !689), !dbg !729
  %cmp3 = icmp eq %struct._object* %call, null, !dbg !744
  br i1 %cmp3, label %cleanup, label %if.end.12, !dbg !746

if.end.12:                                        ; preds = %if.else, %if.then.2
  %im.0 = phi %struct.PyMethodObject* [ %0, %if.then.2 ], [ %4, %if.else ]
  %im_weakreflist = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im.0, i64 0, i32 3, !dbg !747
  store %struct._object* null, %struct._object** %im_weakreflist, align 8, !dbg !748, !tbaa !749
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %func, i64 0, i32 0, !dbg !750
  %5 = load i64, i64* %ob_refcnt7, align 8, !dbg !750, !tbaa !737
  %inc = add i64 %5, 1, !dbg !750
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !750, !tbaa !737
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im.0, i64 0, i32 1, !dbg !751
  store %struct._object* %func, %struct._object** %im_func, align 8, !dbg !752, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !399, metadata !689), !dbg !753
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !755
  %6 = load i64, i64* %ob_refcnt10, align 8, !dbg !755, !tbaa !737
  %inc11 = add i64 %6, 1, !dbg !755
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !755, !tbaa !737
  %im_self13 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im.0, i64 0, i32 2, !dbg !758
  store %struct._object* %self, %struct._object** %im_self13, align 8, !dbg !759, !tbaa !716
  %add.ptr = getelementptr %struct.PyMethodObject, %struct.PyMethodObject* %im.0, i64 -1, i32 1, !dbg !760
  %gc_refs = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 2, !dbg !762
  %7 = bitcast %struct._object** %gc_refs to i64*, !dbg !762
  %8 = load i64, i64* %7, align 8, !dbg !762, !tbaa !764
  %shr.mask = and i64 %8, -2, !dbg !762
  %cmp15 = icmp eq i64 %shr.mask, -4, !dbg !762
  br i1 %cmp15, label %do.body.18, label %if.then.16, !dbg !766

if.then.16:                                       ; preds = %if.end.12
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !767
  unreachable, !dbg !767

do.body.18:                                       ; preds = %if.end.12
  %and = and i64 %8, 1, !dbg !769
  %or = or i64 %and, -6, !dbg !769
  store i64 %or, i64* %7, align 8, !dbg !769, !tbaa !764
  %9 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !772, !tbaa !728
  %10 = bitcast %struct._object** %add.ptr to i64*, !dbg !772
  store i64 %9, i64* %10, align 8, !dbg !772, !tbaa !774
  %11 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !772, !tbaa !728
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 0, i32 1, !dbg !772
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !772, !tbaa !775
  %gc_prev28 = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 1, !dbg !772
  %13 = bitcast %struct._object** %gc_prev28 to %union._gc_head**, !dbg !772
  store %union._gc_head* %12, %union._gc_head** %13, align 8, !dbg !772, !tbaa !775
  %14 = bitcast %union._gc_head* %12 to %struct._object***, !dbg !772
  store %struct._object** %add.ptr, %struct._object*** %14, align 8, !dbg !772, !tbaa !774
  %15 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !772, !tbaa !728
  %gc_prev34 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 0, i32 1, !dbg !772
  %16 = bitcast %union._gc_head** %gc_prev34 to %struct._object***, !dbg !772
  store %struct._object** %add.ptr, %struct._object*** %16, align 8, !dbg !772, !tbaa !775
  %17 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im.0, i64 0, i32 0, !dbg !776
  br label %cleanup, !dbg !777

cleanup:                                          ; preds = %if.else, %do.body.18, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %17, %do.body.18 ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !778
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @method_dealloc(%struct.PyMethodObject* %im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %im, i64 0, metadata !431, metadata !689), !dbg !779
  %add.ptr = getelementptr %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 -1, i32 1, !dbg !780
  %gc_refs = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 2, !dbg !782
  %0 = bitcast %struct._object** %gc_refs to i64*, !dbg !782
  %1 = load i64, i64* %0, align 8, !dbg !782, !tbaa !764
  %and = and i64 %1, 1, !dbg !782
  %or = or i64 %and, -4, !dbg !782
  store i64 %or, i64* %0, align 8, !dbg !782, !tbaa !764
  %gc_next = bitcast %struct._object** %add.ptr to %union._gc_head**, !dbg !785
  %2 = bitcast %struct._object** %add.ptr to i64*, !dbg !785
  %3 = load i64, i64* %2, align 8, !dbg !785, !tbaa !774
  %gc_prev = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 1, !dbg !785
  %4 = bitcast %struct._object** %gc_prev to i64**, !dbg !785
  %5 = load i64*, i64** %4, align 8, !dbg !785, !tbaa !775
  store i64 %3, i64* %5, align 8, !dbg !785, !tbaa !774
  %6 = ptrtoint i64* %5 to i64, !dbg !785
  %7 = bitcast %struct._object** %add.ptr to %struct.anon**, !dbg !785
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !785, !tbaa !774
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !785
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !785
  store i64 %6, i64* %9, align 8, !dbg !785, !tbaa !775
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !785, !tbaa !774
  %im_weakreflist = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 3, !dbg !787
  %10 = load %struct._object*, %struct._object** %im_weakreflist, align 8, !dbg !787, !tbaa !749
  %cmp = icmp eq %struct._object* %10, null, !dbg !789
  br i1 %cmp, label %do.body.18, label %if.then, !dbg !790

if.then:                                          ; preds = %entry
  %11 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 0, !dbg !791
  tail call void @PyObject_ClearWeakRefs(%struct._object* %11) #2, !dbg !792
  br label %do.body.18, !dbg !792

do.body.18:                                       ; preds = %entry, %if.then
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 1, !dbg !793
  %12 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !793, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !434, metadata !689), !dbg !793
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !795
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !795, !tbaa !737
  %dec = add i64 %13, -1, !dbg !795
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !795, !tbaa !737
  %cmp19 = icmp eq i64 %dec, 0, !dbg !795
  br i1 %cmp19, label %if.else, label %if.end.21, !dbg !797

if.else:                                          ; preds = %do.body.18
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !798
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !798, !tbaa !693
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !798
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !798, !tbaa !800
  tail call void %15(%struct._object* %12) #2, !dbg !798
  br label %if.end.21

if.end.21:                                        ; preds = %do.body.18, %if.else
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 2, !dbg !803
  %16 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !803, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !436, metadata !689), !dbg !803
  %cmp25 = icmp eq %struct._object* %16, null, !dbg !805
  br i1 %cmp25, label %if.end.39, label %do.body.27, !dbg !806

do.body.27:                                       ; preds = %if.end.21
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !438, metadata !689), !dbg !807
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !809
  %17 = load i64, i64* %ob_refcnt29, align 8, !dbg !809, !tbaa !737
  %dec30 = add i64 %17, -1, !dbg !809
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !809, !tbaa !737
  %cmp31 = icmp eq i64 %dec30, 0, !dbg !809
  br i1 %cmp31, label %if.else.33, label %if.end.39, !dbg !811

if.else.33:                                       ; preds = %do.body.27
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !812
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !812, !tbaa !693
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !812
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !812, !tbaa !800
  tail call void %19(%struct._object* %16) #2, !dbg !812
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.33, %do.body.27, %if.end.21
  %20 = load i32, i32* @numfree, align 4, !dbg !814, !tbaa !739
  %cmp42 = icmp slt i32 %20, 256, !dbg !817
  br i1 %cmp42, label %if.then.43, label %if.else.45, !dbg !818

if.then.43:                                       ; preds = %if.end.39
  %21 = load i64, i64* bitcast (%struct.PyMethodObject** @free_list to i64*), align 8, !dbg !819, !tbaa !728
  %22 = bitcast %struct._object** %im_self to i64*, !dbg !820
  store i64 %21, i64* %22, align 8, !dbg !820, !tbaa !716
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** @free_list, align 8, !dbg !821, !tbaa !728
  %inc = add i32 %20, 1, !dbg !814
  store i32 %inc, i32* @numfree, align 4, !dbg !814, !tbaa !739
  br label %if.end.46, !dbg !822

if.else.45:                                       ; preds = %if.end.39
  %23 = bitcast %struct.PyMethodObject* %im to i8*, !dbg !823
  tail call void @PyObject_GC_Del(i8* %23) #2, !dbg !825
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.43
  ret void, !dbg !826
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_repr(%struct.PyMethodObject* nocapture readonly %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %a, i64 0, metadata !445, metadata !689), !dbg !827
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %a, i64 0, i32 2, !dbg !828
  %0 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !828, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !446, metadata !689), !dbg !829
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !447, metadata !689), !dbg !830
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !449, metadata !689), !dbg !831
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !450, metadata !689), !dbg !832
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !451, metadata !689), !dbg !833
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !452, metadata !689), !dbg !834
  %cmp = icmp eq %struct._object* %0, null, !dbg !835
  br i1 %cmp, label %if.then, label %if.end, !dbg !837

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 251) #2, !dbg !838
  br label %cleanup, !dbg !840

if.end:                                           ; preds = %entry
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %a, i64 0, i32 1, !dbg !841
  %1 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !841, !tbaa !704
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !842
  %2 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !842
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !842, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !448, metadata !689), !dbg !843
  %call = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* nonnull @PyId___name__) #2, !dbg !844
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !449, metadata !689), !dbg !831
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !845
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !846

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !847, !tbaa !728
  %call3 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %4) #2, !dbg !850
  %tobool = icmp eq i32 %call3, 0, !dbg !850
  br i1 %tobool, label %cleanup, label %if.end.5, !dbg !851

if.end.5:                                         ; preds = %if.then.2
  tail call void @PyErr_Clear() #2, !dbg !852
  br label %if.end.15, !dbg !853

if.else:                                          ; preds = %if.end
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !854
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !855, !tbaa !693
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !854
  %6 = load i64, i64* %tp_flags, align 8, !dbg !854, !tbaa !858
  %and = and i64 %6, 268435456, !dbg !854
  %cmp7 = icmp eq i64 %and, 0, !dbg !854
  br i1 %cmp7, label %do.body, label %if.end.15, !dbg !859

do.body:                                          ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !453, metadata !689), !dbg !860
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !862
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !862, !tbaa !737
  %dec = add i64 %7, -1, !dbg !862
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !862, !tbaa !737
  %cmp9 = icmp eq i64 %dec, 0, !dbg !862
  br i1 %cmp9, label %if.else.11, label %if.end.15, !dbg !863

if.else.11:                                       ; preds = %do.body
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !855
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !855, !tbaa !800
  tail call void %8(%struct._object* %call) #2, !dbg !855
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.11, %do.body, %if.else, %if.end.5
  %funcname.0 = phi %struct._object* [ null, %if.end.5 ], [ %call, %if.else ], [ null, %do.body ], [ null, %if.else.11 ]
  %cmp16 = icmp eq %struct._object* %3, null, !dbg !864
  br i1 %cmp16, label %if.end.64, label %if.else.18, !dbg !865

if.else.18:                                       ; preds = %if.end.15
  %call19 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %3, %struct._Py_Identifier* nonnull @PyId___name__) #2, !dbg !866
  tail call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !450, metadata !689), !dbg !832
  %cmp20 = icmp eq %struct._object* %call19, null, !dbg !867
  br i1 %cmp20, label %if.then.21, label %if.else.44, !dbg !868

if.then.21:                                       ; preds = %if.else.18
  %9 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !869, !tbaa !728
  %call22 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %9) #2, !dbg !870
  %tobool23 = icmp eq i32 %call22, 0, !dbg !870
  br i1 %tobool23, label %do.body.25, label %if.end.43, !dbg !871

do.body.25:                                       ; preds = %if.then.21
  tail call void @llvm.dbg.value(metadata %struct._object* %funcname.0, i64 0, metadata !458, metadata !689), !dbg !872
  %cmp26 = icmp eq %struct._object* %funcname.0, null, !dbg !874
  br i1 %cmp26, label %cleanup, label %do.body.28, !dbg !875

do.body.28:                                       ; preds = %do.body.25
  tail call void @llvm.dbg.value(metadata %struct._object* %funcname.0, i64 0, metadata !466, metadata !689), !dbg !876
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %funcname.0, i64 0, i32 0, !dbg !878
  %10 = load i64, i64* %ob_refcnt30, align 8, !dbg !878, !tbaa !737
  %dec31 = add i64 %10, -1, !dbg !878
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !878, !tbaa !737
  %cmp32 = icmp eq i64 %dec31, 0, !dbg !878
  br i1 %cmp32, label %if.else.34, label %cleanup, !dbg !880

if.else.34:                                       ; preds = %do.body.28
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %funcname.0, i64 0, i32 1, !dbg !881
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !881, !tbaa !693
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !881
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !881, !tbaa !800
  tail call void %12(%struct._object* %funcname.0) #2, !dbg !881
  br label %cleanup

if.end.43:                                        ; preds = %if.then.21
  tail call void @PyErr_Clear() #2, !dbg !883
  br label %if.end.64, !dbg !884

if.else.44:                                       ; preds = %if.else.18
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 1, !dbg !885
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !886, !tbaa !693
  %tp_flags46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 19, !dbg !885
  %14 = load i64, i64* %tp_flags46, align 8, !dbg !885, !tbaa !858
  %and47 = and i64 %14, 268435456, !dbg !885
  %cmp48 = icmp eq i64 %and47, 0, !dbg !885
  br i1 %cmp48, label %do.body.50, label %if.end.64, !dbg !889

do.body.50:                                       ; preds = %if.else.44
  tail call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !469, metadata !689), !dbg !890
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 0, !dbg !892
  %15 = load i64, i64* %ob_refcnt52, align 8, !dbg !892, !tbaa !737
  %dec53 = add i64 %15, -1, !dbg !892
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !892, !tbaa !737
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !892
  br i1 %cmp54, label %if.else.56, label %if.end.64, !dbg !893

if.else.56:                                       ; preds = %do.body.50
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !886
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !886, !tbaa !800
  tail call void %16(%struct._object* %call19) #2, !dbg !886
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.56, %do.body.50, %if.end.15, %if.else.44, %if.end.43
  %klassname.0 = phi %struct._object* [ null, %if.end.43 ], [ %call19, %if.else.44 ], [ null, %if.end.15 ], [ null, %do.body.50 ], [ null, %if.else.56 ]
  %call65 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct._object* %klassname.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct._object* %funcname.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct._object* %0) #2, !dbg !894
  tail call void @llvm.dbg.value(metadata %struct._object* %call65, i64 0, metadata !451, metadata !689), !dbg !833
  tail call void @llvm.dbg.value(metadata %struct._object* %funcname.0, i64 0, metadata !473, metadata !689), !dbg !895
  %cmp68 = icmp eq %struct._object* %funcname.0, null, !dbg !897
  br i1 %cmp68, label %if.end.82, label %do.body.70, !dbg !898

do.body.70:                                       ; preds = %if.end.64
  tail call void @llvm.dbg.value(metadata %struct._object* %funcname.0, i64 0, metadata !475, metadata !689), !dbg !899
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %funcname.0, i64 0, i32 0, !dbg !901
  %17 = load i64, i64* %ob_refcnt72, align 8, !dbg !901, !tbaa !737
  %dec73 = add i64 %17, -1, !dbg !901
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !901, !tbaa !737
  %cmp74 = icmp eq i64 %dec73, 0, !dbg !901
  br i1 %cmp74, label %if.else.76, label %if.end.82, !dbg !903

if.else.76:                                       ; preds = %do.body.70
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %funcname.0, i64 0, i32 1, !dbg !904
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !904, !tbaa !693
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !904
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !904, !tbaa !800
  tail call void %19(%struct._object* %funcname.0) #2, !dbg !904
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.76, %do.body.70, %if.end.64
  tail call void @llvm.dbg.value(metadata %struct._object* %klassname.0, i64 0, metadata !478, metadata !689), !dbg !906
  %cmp87 = icmp eq %struct._object* %klassname.0, null, !dbg !908
  br i1 %cmp87, label %cleanup, label %do.body.89, !dbg !909

do.body.89:                                       ; preds = %if.end.82
  tail call void @llvm.dbg.value(metadata %struct._object* %klassname.0, i64 0, metadata !480, metadata !689), !dbg !910
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %klassname.0, i64 0, i32 0, !dbg !912
  %20 = load i64, i64* %ob_refcnt91, align 8, !dbg !912, !tbaa !737
  %dec92 = add i64 %20, -1, !dbg !912
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !912, !tbaa !737
  %cmp93 = icmp eq i64 %dec92, 0, !dbg !912
  br i1 %cmp93, label %if.else.95, label %cleanup, !dbg !914

if.else.95:                                       ; preds = %do.body.89
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %klassname.0, i64 0, i32 1, !dbg !915
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !915, !tbaa !693
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !915
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !915, !tbaa !800
  tail call void %22(%struct._object* %klassname.0) #2, !dbg !915
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %do.body.89, %if.else.95, %do.body.25, %do.body.28, %if.else.34, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ null, %if.else.34 ], [ null, %do.body.28 ], [ null, %do.body.25 ], [ %call65, %if.else.95 ], [ %call65, %do.body.89 ], [ %call65, %if.end.82 ]
  ret %struct._object* %retval.0, !dbg !917
}

; Function Attrs: nounwind uwtable
define internal i64 @method_hash(%struct.PyMethodObject* nocapture readonly %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %a, i64 0, metadata !487, metadata !689), !dbg !918
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %a, i64 0, i32 2, !dbg !919
  %0 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !919, !tbaa !716
  %cmp = icmp eq %struct._object* %0, null, !dbg !921
  br i1 %cmp, label %if.then, label %if.else, !dbg !922

if.then:                                          ; preds = %entry
  %call = tail call i64 @PyObject_Hash(%struct._object* nonnull @_Py_NoneStruct) #2, !dbg !923
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !488, metadata !689), !dbg !924
  br label %if.end, !dbg !925

if.else:                                          ; preds = %entry
  %call2 = tail call i64 @PyObject_Hash(%struct._object* %0) #2, !dbg !926
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !488, metadata !689), !dbg !924
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i64 [ %call, %if.then ], [ %call2, %if.else ]
  %cmp3 = icmp eq i64 %x.0, -1, !dbg !927
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !929

if.end.5:                                         ; preds = %if.end
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %a, i64 0, i32 1, !dbg !930
  %1 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !930, !tbaa !704
  %call6 = tail call i64 @PyObject_Hash(%struct._object* %1) #2, !dbg !931
  tail call void @llvm.dbg.value(metadata i64 %call6, i64 0, metadata !489, metadata !689), !dbg !932
  %cmp7 = icmp eq i64 %call6, -1, !dbg !933
  br i1 %cmp7, label %cleanup, label %if.end.9, !dbg !935

if.end.9:                                         ; preds = %if.end.5
  %xor = xor i64 %call6, %x.0, !dbg !936
  tail call void @llvm.dbg.value(metadata i64 %xor, i64 0, metadata !488, metadata !689), !dbg !924
  %cmp10 = icmp eq i64 %xor, -1, !dbg !937
  %.xor = select i1 %cmp10, i64 -2, i64 %xor, !dbg !939
  tail call void @llvm.dbg.value(metadata i64 %.xor, i64 0, metadata !488, metadata !689), !dbg !924
  br label %cleanup, !dbg !940

cleanup:                                          ; preds = %if.end.5, %if.end, %if.end.9
  %retval.0 = phi i64 [ %.xor, %if.end.9 ], [ -1, %if.end ], [ -1, %if.end.5 ]
  ret i64 %retval.0, !dbg !941
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_call(%struct._object* nocapture readonly %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !492, metadata !689), !dbg !942
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !493, metadata !689), !dbg !943
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !494, metadata !689), !dbg !944
  %im_self = getelementptr inbounds %struct._object, %struct._object* %func, i64 1, i32 1, !dbg !945
  %0 = bitcast %struct._typeobject** %im_self to %struct._object**, !dbg !945
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !945, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !495, metadata !689), !dbg !946
  %im_func = getelementptr inbounds %struct._object, %struct._object* %func, i64 1, !dbg !947
  %2 = bitcast %struct._object* %im_func to %struct._object**, !dbg !947
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !947, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !492, metadata !689), !dbg !942
  %cmp = icmp eq %struct._object* %1, null, !dbg !948
  br i1 %cmp, label %if.then, label %if.else, !dbg !949

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 329) #2, !dbg !950
  br label %cleanup.32, !dbg !952

if.else:                                          ; preds = %entry
  %call = tail call i64 @PyTuple_Size(%struct._object* %arg) #2, !dbg !953
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !497, metadata !689), !dbg !954
  %add = add i64 %call, 1, !dbg !955
  %call1 = tail call %struct._object* @PyTuple_New(i64 %add) #2, !dbg !956
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !500, metadata !689), !dbg !957
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !958
  br i1 %cmp2, label %cleanup.32, label %if.end, !dbg !960

if.end:                                           ; preds = %if.else
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !961
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !961, !tbaa !737
  %inc = add i64 %4, 1, !dbg !961
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !961, !tbaa !737
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !962
  %5 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !962
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !962
  store %struct._object* %1, %struct._object** %arrayidx, align 8, !dbg !962, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !501, metadata !689), !dbg !963
  %cmp4.61 = icmp sgt i64 %call, 0, !dbg !964
  br i1 %cmp4.61, label %for.body.lr.ph, label %if.end.21, !dbg !965

for.body.lr.ph:                                   ; preds = %if.end
  %ob_item6 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 1, !dbg !966
  %6 = bitcast %struct._typeobject** %ob_item6 to [1 x %struct._object*]*, !dbg !966
  br label %for.body, !dbg !965

for.body:                                         ; preds = %for.body.lr.ph, %if.end.13
  %conv63 = phi i64 [ 0, %for.body.lr.ph ], [ %idxprom15, %if.end.13 ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add14, %if.end.13 ]
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %6, i64 0, i64 %conv63, !dbg !966
  %7 = load %struct._object*, %struct._object** %arrayidx7, align 8, !dbg !966, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !502, metadata !689), !dbg !967
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !506, metadata !689), !dbg !968
  %cmp8 = icmp eq %struct._object* %7, null, !dbg !970
  br i1 %cmp8, label %if.end.13, label %if.then.10, !dbg !972

if.then.10:                                       ; preds = %for.body
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !973
  %8 = load i64, i64* %ob_refcnt11, align 8, !dbg !973, !tbaa !737
  %inc12 = add i64 %8, 1, !dbg !973
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !973, !tbaa !737
  br label %if.end.13, !dbg !973

if.end.13:                                        ; preds = %for.body, %if.then.10
  %add14 = add i32 %i.062, 1, !dbg !975
  %idxprom15 = sext i32 %add14 to i64, !dbg !975
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %5, i64 0, i64 %idxprom15, !dbg !975
  store %struct._object* %7, %struct._object** %arrayidx17, align 8, !dbg !975, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %add14, i64 0, metadata !501, metadata !689), !dbg !963
  %cmp4 = icmp slt i64 %idxprom15, %call, !dbg !964
  br i1 %cmp4, label %for.body, label %if.end.21.loopexit, !dbg !965

if.end.21.loopexit:                               ; preds = %if.end.13
  br label %if.end.21, !dbg !976

if.end.21:                                        ; preds = %if.end.21.loopexit, %if.end
  %call22 = tail call %struct._object* @PyObject_Call(%struct._object* %3, %struct._object* %call1, %struct._object* %kw) #2, !dbg !976
  tail call void @llvm.dbg.value(metadata %struct._object* %call22, i64 0, metadata !496, metadata !689), !dbg !977
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !978
  %9 = load i64, i64* %ob_refcnt24, align 8, !dbg !978, !tbaa !737
  %dec = add i64 %9, -1, !dbg !978
  store i64 %dec, i64* %ob_refcnt24, align 8, !dbg !978, !tbaa !737
  %cmp25 = icmp eq i64 %dec, 0, !dbg !978
  br i1 %cmp25, label %if.else.28, label %cleanup.32, !dbg !980

if.else.28:                                       ; preds = %if.end.21
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !981
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !981, !tbaa !693
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !981
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !981, !tbaa !800
  tail call void %11(%struct._object* %call1) #2, !dbg !981
  br label %cleanup.32

cleanup.32:                                       ; preds = %if.else, %if.else.28, %if.end.21, %if.then
  %retval.1 = phi %struct._object* [ null, %if.then ], [ %call22, %if.end.21 ], [ %call22, %if.else.28 ], [ null, %if.else ]
  ret %struct._object* %retval.1, !dbg !983
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_getattro(%struct._object* %obj, %struct._object* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !512, metadata !689), !dbg !984
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !513, metadata !689), !dbg !985
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !986
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !986, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %0, i64 0, metadata !515, metadata !689), !dbg !987
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !518, metadata !689), !dbg !988
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 31, !dbg !989
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !989, !tbaa !992
  %cmp = icmp eq %struct._object* %1, null, !dbg !993
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !994

if.then:                                          ; preds = %entry
  %call = tail call i32 @PyType_Ready(%struct._typeobject* %0) #2, !dbg !995
  %cmp1 = icmp slt i32 %call, 0, !dbg !998
  br i1 %cmp1, label %cleanup.14, label %if.end.3, !dbg !999

if.end.3:                                         ; preds = %if.then, %entry
  %call4 = tail call %struct._object* @_PyType_Lookup(%struct._typeobject* %0, %struct._object* %name) #2, !dbg !1000
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !518, metadata !689), !dbg !988
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1001
  br i1 %cmp5, label %if.end.12, label %if.then.6, !dbg !1002

if.then.6:                                        ; preds = %if.end.3
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1003
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1003, !tbaa !693
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 32, !dbg !1003
  %3 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8, !dbg !1003, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %3, i64 0, metadata !519, metadata !689), !dbg !1005
  %cmp8 = icmp eq %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %3, null, !dbg !1006
  br i1 %cmp8, label %if.else, label %if.then.9, !dbg !1008

if.then.9:                                        ; preds = %if.then.6
  %4 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !1009
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1009, !tbaa !693
  %call11 = tail call %struct._object* %3(%struct._object* %call4, %struct._object* %obj, %struct._object* %5) #2, !dbg !1010
  br label %cleanup.14, !dbg !1011

if.else:                                          ; preds = %if.then.6
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1012
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1012, !tbaa !737
  %inc = add i64 %6, 1, !dbg !1012
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1012, !tbaa !737
  br label %cleanup.14, !dbg !1014

if.end.12:                                        ; preds = %if.end.3
  %im_func = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, !dbg !1015
  %7 = bitcast %struct._object* %im_func to %struct._object**, !dbg !1015
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !1015, !tbaa !704
  %call13 = tail call %struct._object* @PyObject_GetAttr(%struct._object* %8, %struct._object* %name) #2, !dbg !1016
  br label %cleanup.14, !dbg !1017

cleanup.14:                                       ; preds = %if.then.9, %if.else, %if.then, %if.end.12
  %retval.1 = phi %struct._object* [ %call13, %if.end.12 ], [ null, %if.then ], [ %call11, %if.then.9 ], [ %call4, %if.else ]
  ret %struct._object* %retval.1, !dbg !1018
}

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @method_traverse(%struct.PyMethodObject* nocapture readonly %im, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %im, i64 0, metadata !526, metadata !689), !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !527, metadata !689), !dbg !1020
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !528, metadata !689), !dbg !1021
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 1, !dbg !1022
  %0 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1022, !tbaa !704
  %tobool = icmp eq %struct._object* %0, null, !dbg !1022
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !1024

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #2, !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !529, metadata !689), !dbg !1025
  %tobool2 = icmp eq i32 %call, 0, !dbg !1027
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 2, !dbg !1029
  %1 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1029, !tbaa !716
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !1029
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !1031

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !1032
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !533, metadata !689), !dbg !1032
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1034
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !1036

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !1037
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_richcompare(%struct._object* nocapture readonly %self, %struct._object* nocapture readonly %other, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !539, metadata !689), !dbg !1038
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !540, metadata !689), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !541, metadata !689), !dbg !1040
  %0 = and i32 %op, -2, !dbg !1041
  %op.cmp = icmp eq i32 %0, 2, !dbg !1041
  br i1 %op.cmp, label %lor.lhs.false, label %if.then, !dbg !1041

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !1043
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1043, !tbaa !693
  %cmp2 = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !1043
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !1044

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %other, i64 0, i32 1, !dbg !1045
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1045, !tbaa !693
  %cmp5 = icmp eq %struct._typeobject* %2, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !1045
  br i1 %cmp5, label %if.end, label %if.then, !dbg !1046

if.then:                                          ; preds = %entry, %lor.lhs.false.3, %lor.lhs.false
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1047, !tbaa !737
  %inc = add i64 %3, 1, !dbg !1047
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1047, !tbaa !737
  br label %cleanup, !dbg !1047

if.end:                                           ; preds = %lor.lhs.false.3
  %im_func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1049
  %4 = bitcast %struct._object* %im_func to %struct._object**, !dbg !1049
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1049, !tbaa !704
  %im_func6 = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, !dbg !1050
  %6 = bitcast %struct._object* %im_func6 to %struct._object**, !dbg !1050
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !1050, !tbaa !704
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %7, i32 2) #2, !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !545, metadata !689), !dbg !1052
  %cmp7 = icmp eq i32 %call, 1, !dbg !1053
  br i1 %cmp7, label %if.then.8, label %if.end.21, !dbg !1055

if.then.8:                                        ; preds = %if.end
  %im_self = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !1056
  %8 = bitcast %struct._typeobject** %im_self to %struct._object**, !dbg !1056
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !1059, !tbaa !716
  %cmp9 = icmp eq %struct._object* %9, null, !dbg !1060
  %im_self15.phi.trans.insert = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, i32 1, !dbg !1061
  %.phi.trans.insert = bitcast %struct._typeobject** %im_self15.phi.trans.insert to %struct._object**, !dbg !1061
  %.pre = load %struct._object*, %struct._object** %.phi.trans.insert, align 8, !dbg !1061, !tbaa !716
  br i1 %cmp9, label %if.end.21.thread, label %lor.lhs.false.10, !dbg !1062

lor.lhs.false.10:                                 ; preds = %if.then.8
  %cmp12 = icmp eq %struct._object* %.pre, null, !dbg !1063
  br i1 %cmp12, label %if.end.21.thread, label %if.else, !dbg !1064

if.end.21.thread:                                 ; preds = %if.then.8, %lor.lhs.false.10
  %10 = phi %struct._object* [ null, %lor.lhs.false.10 ], [ %.pre, %if.then.8 ], !dbg !1061
  %cmp16 = icmp eq %struct._object* %9, %10, !dbg !1065
  %conv = zext i1 %cmp16 to i32, !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !545, metadata !689), !dbg !1052
  br label %if.end.25, !dbg !1066

if.else:                                          ; preds = %lor.lhs.false.10
  %call19 = tail call i32 @PyObject_RichCompareBool(%struct._object* %9, %struct._object* %.pre, i32 2) #2, !dbg !1067
  tail call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !545, metadata !689), !dbg !1052
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end
  %eq.0 = phi i32 [ %call19, %if.else ], [ %call, %if.end ]
  %cmp22 = icmp slt i32 %eq.0, 0, !dbg !1068
  br i1 %cmp22, label %cleanup, label %if.end.25, !dbg !1066

if.end.25:                                        ; preds = %if.end.21.thread, %if.end.21
  %eq.055 = phi i32 [ %conv, %if.end.21.thread ], [ %eq.0, %if.end.21 ]
  %cmp26 = icmp eq i32 %op, 2, !dbg !1070
  %tobool = icmp ne i32 %eq.055, 0, !dbg !1072
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1072
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !544, metadata !689), !dbg !1073
  %cond31 = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !1074
  tail call void @llvm.dbg.value(metadata %struct._object* %cond31, i64 0, metadata !544, metadata !689), !dbg !1073
  %res.0 = select i1 %cmp26, %struct._object* %cond, %struct._object* %cond31, !dbg !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %res.0, i64 0, i32 0, !dbg !1076
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1076, !tbaa !737
  %inc33 = add i64 %11, 1, !dbg !1076
  store i64 %inc33, i64* %ob_refcnt, align 8, !dbg !1076, !tbaa !737
  br label %cleanup, !dbg !1077

cleanup:                                          ; preds = %if.end.21, %if.end.25, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.then ], [ %res.0, %if.end.25 ], [ null, %if.end.21 ]
  ret %struct._object* %retval.0, !dbg !1078
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_descr_get(%struct._object* %meth, %struct._object* %obj, %struct._object* nocapture readnone %cls) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %meth, i64 0, metadata !562, metadata !689), !dbg !1079
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !563, metadata !689), !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct._object* %cls, i64 0, metadata !564, metadata !689), !dbg !1081
  %im_self = getelementptr inbounds %struct._object, %struct._object* %meth, i64 1, i32 1, !dbg !1082
  %0 = bitcast %struct._typeobject** %im_self to %struct._object**, !dbg !1082
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1082, !tbaa !716
  %cmp = icmp eq %struct._object* %1, null, !dbg !1084
  br i1 %cmp, label %if.end, label %if.then, !dbg !1085

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %meth, i64 0, i32 0, !dbg !1086
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1086, !tbaa !737
  %inc = add i64 %2, 1, !dbg !1086
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1086, !tbaa !737
  br label %return, !dbg !1088

if.end:                                           ; preds = %entry
  %im_func = getelementptr inbounds %struct._object, %struct._object* %meth, i64 1, !dbg !1089
  %3 = bitcast %struct._object* %im_func to %struct._object**, !dbg !1089
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !1089, !tbaa !704
  %call = tail call %struct._object* @PyMethod_New(%struct._object* %4, %struct._object* %obj), !dbg !1090
  br label %return, !dbg !1091

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %meth, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1092
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %func = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !569, metadata !689), !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !570, metadata !689), !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !571, metadata !689), !dbg !1095
  %0 = bitcast %struct._object** %func to i8*, !dbg !1096
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1096
  %1 = bitcast %struct._object** %self to i8*, !dbg !1097
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1097
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct._object* %kw) #2, !dbg !1098
  %tobool = icmp eq i32 %call, 0, !dbg !1098
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1100

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !572, metadata !689), !dbg !1101
  tail call void @llvm.dbg.value(metadata %struct._object** %self, i64 0, metadata !573, metadata !689), !dbg !1102
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %func, %struct._object** nonnull %self) #2, !dbg !1103
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1103
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1105

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !572, metadata !689), !dbg !1101
  %2 = load %struct._object*, %struct._object** %func, align 8, !dbg !1106, !tbaa !728
  %call5 = call i32 @PyCallable_Check(%struct._object* %2) #2, !dbg !1108
  %tobool6 = icmp eq i32 %call5, 0, !dbg !1108
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !1109

if.then.7:                                        ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1110, !tbaa !728
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0)) #2, !dbg !1112
  br label %cleanup, !dbg !1113

if.end.8:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %self, i64 0, metadata !573, metadata !689), !dbg !1102
  %4 = load %struct._object*, %struct._object** %self, align 8, !dbg !1114, !tbaa !728
  %cmp = icmp eq %struct._object* %4, null, !dbg !1116
  %cmp9 = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !1117
  %or.cond = or i1 %cmp, %cmp9, !dbg !1118
  br i1 %or.cond, label %if.then.10, label %if.end.11, !dbg !1118

if.then.10:                                       ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1119, !tbaa !728
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #2, !dbg !1121
  br label %cleanup, !dbg !1122

if.end.11:                                        ; preds = %if.end.8
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !572, metadata !689), !dbg !1101
  %6 = load %struct._object*, %struct._object** %func, align 8, !dbg !1123, !tbaa !728
  %call12 = call %struct._object* @PyMethod_New(%struct._object* %6, %struct._object* %4), !dbg !1124
  br label %cleanup, !dbg !1125

cleanup:                                          ; preds = %if.end, %entry, %if.end.11, %if.then.10, %if.then.7
  %retval.0 = phi %struct._object* [ null, %if.then.10 ], [ %call12, %if.end.11 ], [ null, %if.then.7 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1126
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1126
  ret %struct._object* %retval.0, !dbg !1126
}

; Function Attrs: nounwind uwtable
define i32 @PyMethod_ClearFreeList() #0 {
entry:
  %0 = load i32, i32* @numfree, align 4, !dbg !1127, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !407, metadata !689), !dbg !1128
  %1 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1129, !tbaa !728
  %tobool.4 = icmp eq %struct.PyMethodObject* %1, null, !dbg !1132
  br i1 %tobool.4, label %while.end, label %while.body.preheader, !dbg !1132

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !1133

while.body:                                       ; preds = %while.body.preheader, %while.body
  %2 = phi %struct.PyMethodObject* [ %7, %while.body ], [ %1, %while.body.preheader ]
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %7, i64 0, metadata !408, metadata !689), !dbg !1133
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i64 0, i32 2, !dbg !1134
  %3 = bitcast %struct._object** %im_self to i64*, !dbg !1134
  %4 = load i64, i64* %3, align 8, !dbg !1134, !tbaa !716
  store i64 %4, i64* bitcast (%struct.PyMethodObject** @free_list to i64*), align 8, !dbg !1135, !tbaa !728
  %5 = bitcast %struct.PyMethodObject* %2 to i8*, !dbg !1136
  tail call void @PyObject_GC_Del(i8* %5) #2, !dbg !1137
  %6 = load i32, i32* @numfree, align 4, !dbg !1138, !tbaa !739
  %dec = add i32 %6, -1, !dbg !1138
  store i32 %dec, i32* @numfree, align 4, !dbg !1138, !tbaa !739
  %7 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1129, !tbaa !728
  %tobool = icmp eq %struct.PyMethodObject* %7, null, !dbg !1132
  br i1 %tobool, label %while.end.loopexit, label %while.body, !dbg !1132

while.end.loopexit:                               ; preds = %while.body
  br label %while.end, !dbg !1139

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret i32 %0, !dbg !1139
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyMethod_Fini() #0 {
entry:
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1140, !tbaa !728
  %tobool.4.i = icmp eq %struct.PyMethodObject* %0, null, !dbg !1142
  br i1 %tobool.4.i, label %PyMethod_ClearFreeList.exit, label %while.body.i.preheader, !dbg !1142

while.body.i.preheader:                           ; preds = %entry
  br label %while.body.i, !dbg !1143

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %1 = phi %struct.PyMethodObject* [ %6, %while.body.i ], [ %0, %while.body.i.preheader ], !dbg !1144
  %im_self.i = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i64 0, i32 2, !dbg !1143
  %2 = bitcast %struct._object** %im_self.i to i64*, !dbg !1143
  %3 = load i64, i64* %2, align 8, !dbg !1143, !tbaa !716
  store i64 %3, i64* bitcast (%struct.PyMethodObject** @free_list to i64*), align 8, !dbg !1145, !tbaa !728
  %4 = bitcast %struct.PyMethodObject* %1 to i8*, !dbg !1146
  tail call void @PyObject_GC_Del(i8* %4) #2, !dbg !1147
  %5 = load i32, i32* @numfree, align 4, !dbg !1148, !tbaa !739
  %dec.i = add i32 %5, -1, !dbg !1148
  store i32 %dec.i, i32* @numfree, align 4, !dbg !1148, !tbaa !739
  %6 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1140, !tbaa !728
  %tobool.i = icmp eq %struct.PyMethodObject* %6, null, !dbg !1142
  br i1 %tobool.i, label %PyMethod_ClearFreeList.exit.loopexit, label %while.body.i, !dbg !1142

PyMethod_ClearFreeList.exit.loopexit:             ; preds = %while.body.i
  br label %PyMethod_ClearFreeList.exit, !dbg !1149

PyMethod_ClearFreeList.exit:                      ; preds = %PyMethod_ClearFreeList.exit.loopexit, %entry
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define void @_PyMethod_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !417, metadata !689), !dbg !1150
  %0 = load i32, i32* @numfree, align 4, !dbg !1151, !tbaa !739
  tail call void @_PyDebugAllocatorStats(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %0, i64 40) #2, !dbg !1152
  ret void, !dbg !1153
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInstanceMethod_New(%struct._object* %func) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !420, metadata !689), !dbg !1154
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*)) #2, !dbg !1155
  %cmp = icmp eq %struct._object* %call, null, !dbg !1156
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1158

if.end:                                           ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %func, i64 0, i32 0, !dbg !1159
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1159, !tbaa !737
  %inc = add i64 %0, 1, !dbg !1159
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1159, !tbaa !737
  %func1 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1160
  %1 = bitcast %struct._object* %func1 to %struct._object**, !dbg !1160
  store %struct._object* %func, %struct._object** %1, align 8, !dbg !1161, !tbaa !1162
  %add.ptr = getelementptr %struct._object, %struct._object* %call, i64 -2, i32 1, !dbg !1164
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1166
  %2 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1166
  %3 = load i64, i64* %2, align 8, !dbg !1166, !tbaa !764
  %shr.mask = and i64 %3, -2, !dbg !1166
  %cmp2 = icmp eq i64 %shr.mask, -4, !dbg !1166
  br i1 %cmp2, label %do.body.5, label %if.then.3, !dbg !1168

if.then.3:                                        ; preds = %if.end
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1169
  unreachable, !dbg !1169

do.body.5:                                        ; preds = %if.end
  %and = and i64 %3, 1, !dbg !1171
  %or = or i64 %and, -6, !dbg !1171
  store i64 %or, i64* %2, align 8, !dbg !1171, !tbaa !764
  %4 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1174, !tbaa !728
  %5 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1174
  store i64 %4, i64* %5, align 8, !dbg !1174, !tbaa !774
  %6 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1174, !tbaa !728
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 1, !dbg !1174
  %7 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1174, !tbaa !775
  %gc_prev13 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1174
  %8 = bitcast %struct._typeobject** %gc_prev13 to %union._gc_head**, !dbg !1174
  store %union._gc_head* %7, %union._gc_head** %8, align 8, !dbg !1174, !tbaa !775
  %9 = bitcast %union._gc_head* %7 to %struct._typeobject***, !dbg !1174
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %9, align 8, !dbg !1174, !tbaa !774
  %10 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1174, !tbaa !728
  %gc_prev19 = getelementptr inbounds %struct.anon, %struct.anon* %10, i64 0, i32 1, !dbg !1174
  %11 = bitcast %union._gc_head** %gc_prev19 to %struct._typeobject***, !dbg !1174
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %11, align 8, !dbg !1174, !tbaa !775
  br label %cleanup, !dbg !1176

cleanup:                                          ; preds = %entry, %do.body.5
  %retval.0 = phi %struct._object* [ %call, %do.body.5 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1177
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInstanceMethod_Function(%struct._object* nocapture readonly %im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %im, i64 0, metadata !426, metadata !689), !dbg !1178
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %im, i64 0, i32 1, !dbg !1179
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1179, !tbaa !693
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !1179
  br i1 %cmp, label %if.end, label %if.then, !dbg !1181

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 459) #2, !dbg !1182
  br label %return, !dbg !1184

if.end:                                           ; preds = %entry
  %func = getelementptr inbounds %struct._object, %struct._object* %im, i64 1, !dbg !1185
  %1 = bitcast %struct._object* %func to %struct._object**, !dbg !1185
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1185, !tbaa !1162
  br label %return, !dbg !1186

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1187
}

; Function Attrs: nounwind uwtable
define internal void @instancemethod_dealloc(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !576, metadata !689), !dbg !1188
  %add.ptr = getelementptr %struct._object, %struct._object* %self, i64 -2, i32 1, !dbg !1189
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1191
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1191
  %1 = load i64, i64* %0, align 8, !dbg !1191, !tbaa !764
  %and = and i64 %1, 1, !dbg !1191
  %or = or i64 %and, -4, !dbg !1191
  store i64 %or, i64* %0, align 8, !dbg !1191, !tbaa !764
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1194
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1194
  %3 = load i64, i64* %2, align 8, !dbg !1194, !tbaa !774
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1194
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1194
  %5 = load i64*, i64** %4, align 8, !dbg !1194, !tbaa !775
  store i64 %3, i64* %5, align 8, !dbg !1194, !tbaa !774
  %6 = ptrtoint i64* %5 to i64, !dbg !1194
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1194
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !1194, !tbaa !774
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !1194
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1194
  store i64 %6, i64* %9, align 8, !dbg !1194, !tbaa !775
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1194, !tbaa !774
  %func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1196
  %10 = bitcast %struct._object* %func to %struct._object**, !dbg !1196
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !1196, !tbaa !1162
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !579, metadata !689), !dbg !1196
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1198
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1198, !tbaa !737
  %dec = add i64 %12, -1, !dbg !1198
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1198, !tbaa !737
  %cmp = icmp eq i64 %dec, 0, !dbg !1198
  br i1 %cmp, label %if.else, label %if.end, !dbg !1200

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !1201
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1201, !tbaa !693
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1201
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1201, !tbaa !800
  tail call void %14(%struct._object* %11) #2, !dbg !1201
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %15 = bitcast %struct._object* %self to i8*, !dbg !1203
  tail call void @PyObject_GC_Del(i8* %15) #2, !dbg !1204
  ret void, !dbg !1205
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_repr(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !583, metadata !689), !dbg !1206
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !426, metadata !689) #2, !dbg !1207
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !1209
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1209, !tbaa !693
  %cmp.i = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !1209
  br i1 %cmp.i, label %PyInstanceMethod_Function.exit, label %PyInstanceMethod_Function.exit.thread, !dbg !1210

PyInstanceMethod_Function.exit.thread:            ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 459) #2, !dbg !1211
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !584, metadata !689), !dbg !1212
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !585, metadata !689), !dbg !1213
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !586, metadata !689), !dbg !1214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !587, metadata !689), !dbg !1215
  br label %if.then, !dbg !1216

PyInstanceMethod_Function.exit:                   ; preds = %entry
  %func.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1217
  %1 = bitcast %struct._object* %func.i to %struct._object**, !dbg !1217
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1217, !tbaa !1162
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !584, metadata !689), !dbg !1212
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !585, metadata !689), !dbg !1213
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !586, metadata !689), !dbg !1214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !587, metadata !689), !dbg !1215
  %cmp = icmp eq %struct._object* %2, null, !dbg !1218
  br i1 %cmp, label %if.then, label %if.end, !dbg !1216

if.then:                                          ; preds = %PyInstanceMethod_Function.exit.thread, %PyInstanceMethod_Function.exit
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 579) #2, !dbg !1220
  br label %cleanup, !dbg !1222

if.end:                                           ; preds = %PyInstanceMethod_Function.exit
  %call1 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* nonnull @PyId___name__) #2, !dbg !1223
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !585, metadata !689), !dbg !1213
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1224
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1225

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1226, !tbaa !728
  %call4 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %3) #2, !dbg !1229
  %tobool = icmp eq i32 %call4, 0, !dbg !1229
  br i1 %tobool, label %cleanup, label %if.end.6, !dbg !1230

if.end.6:                                         ; preds = %if.then.3
  tail call void @PyErr_Clear() #2, !dbg !1231
  br label %if.end.15.thread, !dbg !1232

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1233
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1234, !tbaa !693
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1233
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1233, !tbaa !858
  %and = and i64 %5, 268435456, !dbg !1233
  %cmp7 = icmp eq i64 %and, 0, !dbg !1233
  br i1 %cmp7, label %do.body, label %do.body.20, !dbg !1237

do.body:                                          ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !588, metadata !689), !dbg !1238
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1240
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1240, !tbaa !737
  %dec = add i64 %6, -1, !dbg !1240
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1240, !tbaa !737
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1240
  br i1 %cmp9, label %if.else.11, label %if.end.15.thread, !dbg !1241

if.else.11:                                       ; preds = %do.body
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1234
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1234, !tbaa !800
  tail call void %7(%struct._object* %call1) #2, !dbg !1234
  br label %if.end.15.thread

if.end.15.thread:                                 ; preds = %if.end.6, %do.body, %if.else.11
  %call16.57 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), %struct._object* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct._object* %self) #2, !dbg !1242
  br label %cleanup, !dbg !1243

do.body.20:                                       ; preds = %if.else
  %call16.60 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct._object* %self) #2, !dbg !1242
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1244
  %8 = load i64, i64* %ob_refcnt22, align 8, !dbg !1244, !tbaa !737
  %dec23 = add i64 %8, -1, !dbg !1244
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !1244, !tbaa !737
  %cmp24 = icmp eq i64 %dec23, 0, !dbg !1244
  br i1 %cmp24, label %if.else.26, label %cleanup, !dbg !1246

if.else.26:                                       ; preds = %do.body.20
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1247, !tbaa !693
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1247
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !1247, !tbaa !800
  tail call void %10(%struct._object* %call1) #2, !dbg !1247
  br label %cleanup

cleanup:                                          ; preds = %if.end.15.thread, %do.body.20, %if.else.26, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.3 ], [ %call16.60, %if.else.26 ], [ %call16.60, %do.body.20 ], [ %call16.57, %if.end.15.thread ]
  ret %struct._object* %retval.0, !dbg !1249
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_call(%struct._object* nocapture readonly %self, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !600, metadata !689), !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !601, metadata !689), !dbg !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !602, metadata !689), !dbg !1252
  %im_func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1253
  %0 = bitcast %struct._object* %im_func to %struct._object**, !dbg !1253
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1253, !tbaa !704
  %call = tail call %struct._object* @PyObject_Call(%struct._object* %1, %struct._object* %arg, %struct._object* %kw) #2, !dbg !1254
  ret %struct._object* %call, !dbg !1255
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_getattro(%struct._object* %self, %struct._object* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !605, metadata !689), !dbg !1256
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !606, metadata !689), !dbg !1257
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !1258
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1258, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %0, i64 0, metadata !607, metadata !689), !dbg !1259
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !608, metadata !689), !dbg !1260
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 31, !dbg !1261
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1261, !tbaa !992
  %cmp = icmp eq %struct._object* %1, null, !dbg !1263
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1264

if.then:                                          ; preds = %entry
  %call = tail call i32 @PyType_Ready(%struct._typeobject* %0) #2, !dbg !1265
  %cmp1 = icmp slt i32 %call, 0, !dbg !1268
  br i1 %cmp1, label %cleanup.14, label %if.end.3, !dbg !1269

if.end.3:                                         ; preds = %if.then, %entry
  %call4 = tail call %struct._object* @_PyType_Lookup(%struct._typeobject* %0, %struct._object* %name) #2, !dbg !1270
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !608, metadata !689), !dbg !1260
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1271
  br i1 %cmp5, label %if.end.12, label %if.then.6, !dbg !1272

if.then.6:                                        ; preds = %if.end.3
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1273
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1273, !tbaa !693
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 32, !dbg !1273
  %3 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8, !dbg !1273, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %3, i64 0, metadata !609, metadata !689), !dbg !1274
  %cmp8 = icmp eq %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %3, null, !dbg !1275
  br i1 %cmp8, label %if.else, label %if.then.9, !dbg !1277

if.then.9:                                        ; preds = %if.then.6
  %4 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !1278
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1278, !tbaa !693
  %call11 = tail call %struct._object* %3(%struct._object* %call4, %struct._object* %self, %struct._object* %5) #2, !dbg !1279
  br label %cleanup.14, !dbg !1280

if.else:                                          ; preds = %if.then.6
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1281
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1281, !tbaa !737
  %inc = add i64 %6, 1, !dbg !1281
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1281, !tbaa !737
  br label %cleanup.14, !dbg !1283

if.end.12:                                        ; preds = %if.end.3
  %func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1284
  %7 = bitcast %struct._object* %func to %struct._object**, !dbg !1284
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !1284, !tbaa !1162
  %call13 = tail call %struct._object* @PyObject_GetAttr(%struct._object* %8, %struct._object* %name) #2, !dbg !1285
  br label %cleanup.14, !dbg !1286

cleanup.14:                                       ; preds = %if.then.9, %if.else, %if.then, %if.end.12
  %retval.1 = phi %struct._object* [ %call13, %if.end.12 ], [ null, %if.then ], [ %call11, %if.then.9 ], [ %call4, %if.else ]
  ret %struct._object* %retval.1, !dbg !1287
}

; Function Attrs: nounwind uwtable
define internal i32 @instancemethod_traverse(%struct._object* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !614, metadata !689), !dbg !1288
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !615, metadata !689), !dbg !1289
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !616, metadata !689), !dbg !1290
  %func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1291
  %0 = bitcast %struct._object* %func to %struct._object**, !dbg !1291
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1291, !tbaa !1162
  %tobool = icmp eq %struct._object* %1, null, !dbg !1291
  br i1 %tobool, label %do.end, label %if.then, !dbg !1293

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !617, metadata !689), !dbg !1294
  %tobool2 = icmp eq i32 %call, 0, !dbg !1296
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1298

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1299
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_richcompare(%struct._object* nocapture readonly %self, %struct._object* nocapture readonly %other, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !623, metadata !689), !dbg !1300
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !624, metadata !689), !dbg !1301
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !625, metadata !689), !dbg !1302
  %0 = and i32 %op, -2, !dbg !1303
  %op.cmp = icmp eq i32 %0, 2, !dbg !1303
  br i1 %op.cmp, label %lor.lhs.false, label %if.then, !dbg !1303

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !1305
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1305, !tbaa !693
  %cmp2 = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !1305
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !1306

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %other, i64 0, i32 1, !dbg !1307
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1307, !tbaa !693
  %cmp5 = icmp eq %struct._typeobject* %2, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !1307
  br i1 %cmp5, label %if.end, label %if.then, !dbg !1308

if.then:                                          ; preds = %entry, %lor.lhs.false.3, %lor.lhs.false
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1309, !tbaa !737
  %inc = add i64 %3, 1, !dbg !1309
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1309, !tbaa !737
  br label %cleanup, !dbg !1309

if.end:                                           ; preds = %lor.lhs.false.3
  %func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1311
  %4 = bitcast %struct._object* %func to %struct._object**, !dbg !1311
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1311, !tbaa !1162
  %func6 = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, !dbg !1312
  %6 = bitcast %struct._object* %func6 to %struct._object**, !dbg !1312
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !1312, !tbaa !1162
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %7, i32 2) #2, !dbg !1313
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !629, metadata !689), !dbg !1314
  %cmp7 = icmp slt i32 %call, 0, !dbg !1315
  br i1 %cmp7, label %cleanup, label %if.end.9, !dbg !1317

if.end.9:                                         ; preds = %if.end
  %cmp10 = icmp eq i32 %op, 2, !dbg !1318
  %tobool = icmp ne i32 %call, 0, !dbg !1320
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1320
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !628, metadata !689), !dbg !1321
  %cond13 = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct._object* %cond13, i64 0, metadata !628, metadata !689), !dbg !1321
  %res.0 = select i1 %cmp10, %struct._object* %cond, %struct._object* %cond13, !dbg !1323
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %res.0, i64 0, i32 0, !dbg !1324
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1324, !tbaa !737
  %inc15 = add i64 %8, 1, !dbg !1324
  store i64 %inc15, i64* %ob_refcnt, align 8, !dbg !1324, !tbaa !737
  br label %cleanup, !dbg !1325

cleanup:                                          ; preds = %if.end, %if.end.9, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.then ], [ %res.0, %if.end.9 ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !1326
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_descr_get(%struct._object* nocapture readonly %descr, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %descr, i64 0, metadata !636, metadata !689), !dbg !1327
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !637, metadata !689), !dbg !1328
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !638, metadata !689), !dbg !1329
  %func1 = getelementptr inbounds %struct._object, %struct._object* %descr, i64 1, !dbg !1330
  %0 = bitcast %struct._object* %func1 to %struct._object**, !dbg !1330
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1330, !tbaa !1162
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !639, metadata !689), !dbg !1331
  %cmp = icmp eq %struct._object* %obj, null, !dbg !1332
  br i1 %cmp, label %if.then, label %if.else, !dbg !1334

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1335
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1335, !tbaa !737
  %inc = add i64 %2, 1, !dbg !1335
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1335, !tbaa !737
  br label %cleanup, !dbg !1337

if.else:                                          ; preds = %entry
  %call = tail call %struct._object* @PyMethod_New(%struct._object* %1, %struct._object* %obj), !dbg !1338
  br label %cleanup, !dbg !1339

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %1, %if.then ], [ %call, %if.else ]
  ret %struct._object* %retval.0, !dbg !1340
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %func = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !642, metadata !689), !dbg !1341
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !643, metadata !689), !dbg !1342
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !644, metadata !689), !dbg !1343
  %0 = bitcast %struct._object** %func to i8*, !dbg !1344
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1344
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct._object* %kw) #2, !dbg !1345
  %tobool = icmp eq i32 %call, 0, !dbg !1345
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1347

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !645, metadata !689), !dbg !1348
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %func) #2, !dbg !1349
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1349
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1351

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !645, metadata !689), !dbg !1348
  %1 = load %struct._object*, %struct._object** %func, align 8, !dbg !1352, !tbaa !728
  %call5 = call i32 @PyCallable_Check(%struct._object* %1) #2, !dbg !1354
  %tobool6 = icmp eq i32 %call5, 0, !dbg !1354
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !1355

if.then.7:                                        ; preds = %if.end.4
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1356, !tbaa !728
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0)) #2, !dbg !1358
  br label %cleanup, !dbg !1359

if.end.8:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !645, metadata !689), !dbg !1348
  %3 = load %struct._object*, %struct._object** %func, align 8, !dbg !1360, !tbaa !728
  call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !420, metadata !689) #2, !dbg !1361
  %call.i = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*)) #2, !dbg !1363
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1364
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1365

if.end.i:                                         ; preds = %if.end.8
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1366
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1366, !tbaa !737
  %inc.i = add i64 %4, 1, !dbg !1366
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1366, !tbaa !737
  %func1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !1367
  %5 = bitcast %struct._object* %func1.i to %struct._object**, !dbg !1367
  store %struct._object* %3, %struct._object** %5, align 8, !dbg !1368, !tbaa !1162
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call.i, i64 -2, i32 1, !dbg !1369
  %gc_refs.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr.i, i64 2, !dbg !1370
  %6 = bitcast %struct._typeobject** %gc_refs.i to i64*, !dbg !1370
  %7 = load i64, i64* %6, align 8, !dbg !1370, !tbaa !764
  %shr.mask.i = and i64 %7, -2, !dbg !1370
  %cmp2.i = icmp eq i64 %shr.mask.i, -4, !dbg !1370
  br i1 %cmp2.i, label %do.body.5.i, label %if.then.3.i, !dbg !1371

if.then.3.i:                                      ; preds = %if.end.i
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1372
  unreachable, !dbg !1372

do.body.5.i:                                      ; preds = %if.end.i
  %and.i = and i64 %7, 1, !dbg !1373
  %or.i = or i64 %and.i, -6, !dbg !1373
  store i64 %or.i, i64* %6, align 8, !dbg !1373, !tbaa !764
  %8 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1374, !tbaa !728
  %9 = bitcast %struct._typeobject** %add.ptr.i to i64*, !dbg !1374
  store i64 %8, i64* %9, align 8, !dbg !1374, !tbaa !774
  %10 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1374, !tbaa !728
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %10, i64 0, i32 1, !dbg !1374
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !1374, !tbaa !775
  %gc_prev13.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr.i, i64 1, !dbg !1374
  %12 = bitcast %struct._typeobject** %gc_prev13.i to %union._gc_head**, !dbg !1374
  store %union._gc_head* %11, %union._gc_head** %12, align 8, !dbg !1374, !tbaa !775
  %13 = bitcast %union._gc_head* %11 to %struct._typeobject***, !dbg !1374
  store %struct._typeobject** %add.ptr.i, %struct._typeobject*** %13, align 8, !dbg !1374, !tbaa !774
  %14 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1374, !tbaa !728
  %gc_prev19.i = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 0, i32 1, !dbg !1374
  %15 = bitcast %union._gc_head** %gc_prev19.i to %struct._typeobject***, !dbg !1374
  store %struct._typeobject** %add.ptr.i, %struct._typeobject*** %15, align 8, !dbg !1374, !tbaa !775
  br label %cleanup, !dbg !1375

cleanup:                                          ; preds = %do.body.5.i, %if.end.8, %if.end, %entry, %if.then.7
  %retval.0 = phi %struct._object* [ null, %if.then.7 ], [ null, %entry ], [ null, %if.end ], [ %call.i, %do.body.5.i ], [ null, %if.end.8 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1376
  ret %struct._object* %retval.0, !dbg !1376
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @_PyType_Lookup(%struct._typeobject*, %struct._object*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_reduce(%struct.PyMethodObject* nocapture readonly %im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %im, i64 0, metadata !548, metadata !689), !dbg !1377
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 2, !dbg !1378
  %0 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1378, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !549, metadata !689), !dbg !1379
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 1, !dbg !1380
  %1 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1380, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !550, metadata !689), !dbg !1381
  %call = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* nonnull @PyId___name__) #2, !dbg !1382
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !553, metadata !689), !dbg !1383
  %cmp = icmp eq %struct._object* %call, null, !dbg !1384
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1386

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyEval_GetBuiltins() #2, !dbg !1387
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !551, metadata !689), !dbg !1388
  %call2 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %call1, %struct._Py_Identifier* nonnull @method_reduce.PyId_getattr) #2, !dbg !1389
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !552, metadata !689), !dbg !1390
  %call3 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct._object* %call2, %struct._object* %0, %struct._object* %call) #2, !dbg !1391
  br label %cleanup, !dbg !1392

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call3, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1393
}

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_doc(%struct.PyMethodObject* nocapture readonly %im, i8* nocapture readnone %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodObject* %im, i64 0, metadata !558, metadata !689), !dbg !1394
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !559, metadata !689), !dbg !1395
  %0 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8, !dbg !1396, !tbaa !728
  %cmp = icmp eq %struct._object* %0, null, !dbg !1398
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1399

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !1400
  store %struct._object* %call, %struct._object** @method_get_doc.docstr, align 8, !dbg !1402, !tbaa !728
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1403
  br i1 %cmp1, label %return, label %if.end.3, !dbg !1405

if.end.3:                                         ; preds = %if.then, %entry
  %1 = phi %struct._object* [ %call, %if.then ], [ %0, %entry ], !dbg !1406
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %im, i64 0, i32 1, !dbg !1407
  %2 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1407, !tbaa !704
  %call4 = tail call %struct._object* @PyObject_GetAttr(%struct._object* %2, %struct._object* %1) #2, !dbg !1408
  br label %return, !dbg !1409

return:                                           ; preds = %if.then, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1410
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_get_doc(%struct._object* nocapture readonly %self, i8* nocapture readnone %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !632, metadata !689), !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !633, metadata !689), !dbg !1412
  %0 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8, !dbg !1413, !tbaa !728
  %cmp = icmp eq %struct._object* %0, null, !dbg !1415
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1416

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !1417
  store %struct._object* %call, %struct._object** @instancemethod_get_doc.docstr, align 8, !dbg !1419, !tbaa !728
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1420
  br i1 %cmp1, label %return, label %if.end.3, !dbg !1422

if.end.3:                                         ; preds = %if.then, %entry
  %1 = phi %struct._object* [ %call, %if.then ], [ %0, %entry ], !dbg !1423
  %func = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1424
  %2 = bitcast %struct._object* %func to %struct._object**, !dbg !1424
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !1424, !tbaa !1162
  %call4 = tail call %struct._object* @PyObject_GetAttr(%struct._object* %3, %struct._object* %1) #2, !dbg !1425
  br label %return, !dbg !1426

return:                                           ; preds = %if.then, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1427
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!686, !687}
!llvm.ident = !{!688}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !387, globals: !646)
!1 = !DIFile(filename: "Objects/classobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !95, !43, !359, !100, !373, !379}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodObject", file: !6, line: 17, baseType: !7)
!6 = !DIFile(filename: "Include/classobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 12, size: 320, align: 64, elements: !8)
!8 = !{!9, !356, !357, !358}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 13, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !44, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !304, !322, !323, !324, !326, !328, !329, !331, !336, !341, !346, !347, !348, !349, !350, !351, !352, !353, !355}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !11, line: 335, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !11, line: 114, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 111, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !11, line: 112, baseType: !10, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !28, file: !11, line: 113, baseType: !15, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !24, file: !11, line: 336, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !24, file: !11, line: 341, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !11, line: 308, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !43, !50, !49}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 246, size: 1728, align: 64, elements: !54)
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!54 = !{!55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !76, !77, !78, !79, !81, !83, !85, !89, !92, !94, !96, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 247, baseType: !49, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 252, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 253, baseType: !57, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 254, baseType: !57, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 255, baseType: !57, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 256, baseType: !57, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 257, baseType: !57, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 258, baseType: !57, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 259, baseType: !57, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 261, baseType: !57, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 262, baseType: !57, size: 64, align: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 263, baseType: !57, size: 64, align: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 265, baseType: !69, size: 64, align: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 161, size: 192, align: 64, elements: !71)
!71 = !{!72, !73, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !70, file: !53, line: 162, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !70, file: !53, line: 163, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !70, file: !53, line: 167, baseType: !49, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 267, baseType: !74, size: 64, align: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 269, baseType: !49, size: 32, align: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 273, baseType: !49, size: 32, align: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 275, baseType: !80, size: 64, align: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 279, baseType: !82, size: 16, align: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 280, baseType: !84, size: 8, align: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 281, baseType: !86, size: 8, align: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 285, baseType: !90, size: 64, align: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 155, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 294, baseType: !93, size: 64, align: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !52, file: !53, line: 303, baseType: !95, size: 64, align: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !52, file: !53, line: 304, baseType: !95, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !52, file: !53, line: 305, baseType: !95, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !52, file: !53, line: 306, baseType: !95, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 309, baseType: !49, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!43, !43, !57}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!49, !43, !57, !43}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !95, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!43, !43}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !11, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!43, !43, !43}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !11, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !11, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !11, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !11, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !11, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!43, !43, !43, !43}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !11, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !11, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !11, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !11, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!49, !43}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !11, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !11, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !11, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !11, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !11, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !11, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !11, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !11, line: 258, baseType: !95, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !11, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !11, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !11, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !11, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !11, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !11, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !11, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !11, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !11, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !11, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !11, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !11, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !11, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !11, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !11, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !11, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !11, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!15, !43}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !11, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !11, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !43, !15}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !11, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !11, line: 285, baseType: !95, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !11, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!49, !43, !15, !43}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !11, line: 287, baseType: !95, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !11, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!49, !43, !43}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !11, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !11, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !11, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !11, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !11, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!49, !43, !43, !43}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !43}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !11, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!49, !43, !241, !49}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !11, line: 179, baseType: !95, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !11, line: 180, baseType: !43, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !11, line: 184, baseType: !49, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !11, line: 185, baseType: !49, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !11, line: 186, baseType: !57, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !11, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !11, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !11, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !11, line: 190, baseType: !95, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !11, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !43, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!49, !43, !269, !95}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!49, !43, !95}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!43, !43, !43, !49}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !33, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !297, line: 18, size: 320, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 19, baseType: !57, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !297, line: 20, baseType: !49, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !296, file: !297, line: 21, baseType: !15, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 22, baseType: !49, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !297, line: 23, baseType: !57, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !305, size: 64, align: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !307, line: 11, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!308 = !{!309, !310, !315, !320, !321}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 12, baseType: !57, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !306, file: !307, line: 13, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !307, line: 8, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!43, !43, !95}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !306, file: !307, line: 14, baseType: !316, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !307, line: 9, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!49, !43, !43, !95}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !306, file: !307, line: 15, baseType: !57, size: 64, align: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !306, file: !307, line: 16, baseType: !95, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !43, size: 64, align: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !325, size: 64, align: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !140)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !327, size: 64, align: 64, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !330, size: 64, align: 64, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !332, size: 64, align: 64, offset: 2432)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!43, !23, !15}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !337, size: 64, align: 64, offset: 2496)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!43, !23, !43, !43}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !342, size: 64, align: 64, offset: 2560)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !95}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !43, size: 64, align: 64, offset: 2688)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !43, size: 64, align: 64, offset: 2752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !43, size: 64, align: 64, offset: 2816)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !43, size: 64, align: 64, offset: 2880)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !43, size: 64, align: 64, offset: 2944)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !354, size: 32, align: 32, offset: 3072)
!354 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "im_func", scope: !7, file: !6, line: 14, baseType: !43, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "im_self", scope: !7, file: !6, line: 15, baseType: !43, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "im_weakreflist", scope: !7, file: !6, line: 16, baseType: !43, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !361, line: 253, baseType: !362)
!361 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!362 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !361, line: 246, size: 192, align: 64, elements: !363)
!363 = !{!364, !371}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !362, file: !361, line: 251, baseType: !365, size: 192, align: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !361, line: 247, size: 192, align: 64, elements: !366)
!366 = !{!367, !369, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !365, file: !361, line: 248, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !365, file: !361, line: 249, baseType: !368, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !365, file: !361, line: 250, baseType: !15, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !362, file: !361, line: 252, baseType: !372, size: 64, align: 64)
!372 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInstanceMethodObject", file: !6, line: 40, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 37, size: 192, align: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !375, file: !6, line: 38, baseType: !10, size: 128, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !375, file: !6, line: 39, baseType: !43, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !381, line: 33, baseType: !382)
!381 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 25, size: 256, align: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !382, file: !381, line: 26, baseType: !27, size: 192, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !382, file: !381, line: 27, baseType: !386, size: 64, align: 64, offset: 192)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, align: 64, elements: !87)
!387 = !{!388, !391, !394, !403, !410, !413, !418, !424, !427, !441, !483, !490, !510, !522, !537, !546, !554, !560, !565, !574, !581, !598, !603, !612, !621, !630, !634, !640}
!388 = !DISubprogram(name: "PyMethod_Function", scope: !1, file: !1, line: 20, type: !122, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyMethod_Function, variables: !389)
!389 = !{!390}
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !388, file: !1, line: 20, type: !43)
!391 = !DISubprogram(name: "PyMethod_Self", scope: !1, file: !1, line: 30, type: !122, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyMethod_Self, variables: !392)
!392 = !{!393}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !391, file: !1, line: 30, type: !43)
!394 = !DISubprogram(name: "PyMethod_New", scope: !1, file: !1, line: 45, type: !132, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyMethod_New, variables: !395)
!395 = !{!396, !397, !398, !399, !401}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !394, file: !1, line: 45, type: !43)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !394, file: !1, line: 45, type: !43)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !394, file: !1, line: 47, type: !4)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !400, file: !1, line: 66, type: !43)
!400 = distinct !DILexicalBlock(scope: !394, file: !1, line: 66, column: 5)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !402, file: !1, line: 68, type: !359)
!402 = distinct !DILexicalBlock(scope: !394, file: !1, line: 68, column: 5)
!403 = !DISubprogram(name: "PyMethod_ClearFreeList", scope: !1, file: !1, line: 410, type: !404, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyMethod_ClearFreeList, variables: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!49}
!406 = !{!407, !408}
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist_size", scope: !403, file: !1, line: 412, type: !49)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !409, file: !1, line: 415, type: !4)
!409 = distinct !DILexicalBlock(scope: !403, file: !1, line: 414, column: 23)
!410 = !DISubprogram(name: "PyMethod_Fini", scope: !1, file: !1, line: 425, type: !411, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyMethod_Fini, variables: !2)
!411 = !DISubroutineType(types: !412)
!412 = !{null}
!413 = !DISubprogram(name: "_PyMethod_DebugMallocStats", scope: !1, file: !1, line: 432, type: !414, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyMethod_DebugMallocStats, variables: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !50}
!416 = !{!417}
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !413, file: !1, line: 432, type: !50)
!418 = !DISubprogram(name: "PyInstanceMethod_New", scope: !1, file: !1, line: 444, type: !122, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyInstanceMethod_New, variables: !419)
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !418, file: !1, line: 444, type: !43)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !418, file: !1, line: 445, type: !373)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !423, file: !1, line: 451, type: !359)
!423 = distinct !DILexicalBlock(scope: !418, file: !1, line: 451, column: 5)
!424 = !DISubprogram(name: "PyInstanceMethod_Function", scope: !1, file: !1, line: 456, type: !122, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyInstanceMethod_Function, variables: !425)
!425 = !{!426}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !424, file: !1, line: 456, type: !43)
!427 = !DISubprogram(name: "method_dealloc", scope: !1, file: !1, line: 191, type: !428, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyMethodObject*)* @method_dealloc, variables: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !4}
!430 = !{!431, !432, !434, !436, !438}
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !427, file: !1, line: 191, type: !4)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !433, file: !1, line: 193, type: !359)
!433 = distinct !DILexicalBlock(scope: !427, file: !1, line: 193, column: 5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !1, line: 196, type: !43)
!435 = distinct !DILexicalBlock(scope: !427, file: !1, line: 196, column: 5)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !437, file: !1, line: 197, type: !43)
!437 = distinct !DILexicalBlock(scope: !427, file: !1, line: 197, column: 5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !439, file: !1, line: 197, type: !43)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 197, column: 5)
!440 = distinct !DILexicalBlock(scope: !437, file: !1, line: 197, column: 5)
!441 = !DISubprogram(name: "method_repr", scope: !1, file: !1, line: 242, type: !442, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodObject*)* @method_repr, variables: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!43, !4}
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !458, !466, !469, !473, !475, !478, !480}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !441, file: !1, line: 242, type: !4)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !441, file: !1, line: 244, type: !43)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !441, file: !1, line: 245, type: !43)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klass", scope: !441, file: !1, line: 246, type: !43)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !441, file: !1, line: 247, type: !43)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klassname", scope: !441, file: !1, line: 247, type: !43)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !441, file: !1, line: 247, type: !43)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defname", scope: !441, file: !1, line: 248, type: !57)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !454, file: !1, line: 263, type: !43)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 263, column: 9)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 262, column: 42)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 262, column: 14)
!457 = distinct !DILexicalBlock(scope: !441, file: !1, line: 257, column: 9)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !459, file: !1, line: 273, type: !43)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 273, column: 17)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 272, column: 64)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 272, column: 17)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 271, column: 32)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 271, column: 13)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 269, column: 10)
!465 = distinct !DILexicalBlock(scope: !441, file: !1, line: 267, column: 9)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !467, file: !1, line: 273, type: !43)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 273, column: 17)
!468 = distinct !DILexicalBlock(scope: !459, file: !1, line: 273, column: 17)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !470, file: !1, line: 279, type: !43)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 279, column: 13)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 278, column: 47)
!472 = distinct !DILexicalBlock(scope: !463, file: !1, line: 278, column: 18)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !474, file: !1, line: 289, type: !43)
!474 = distinct !DILexicalBlock(scope: !441, file: !1, line: 289, column: 5)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !1, line: 289, type: !43)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 289, column: 5)
!477 = distinct !DILexicalBlock(scope: !474, file: !1, line: 289, column: 5)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !479, file: !1, line: 290, type: !43)
!479 = distinct !DILexicalBlock(scope: !441, file: !1, line: 290, column: 5)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !481, file: !1, line: 290, type: !43)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 290, column: 5)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 290, column: 5)
!483 = !DISubprogram(name: "method_hash", scope: !1, file: !1, line: 295, type: !484, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyMethodObject*)* @method_hash, variables: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!224, !4}
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !483, file: !1, line: 295, type: !4)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !483, file: !1, line: 297, type: !224)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !483, file: !1, line: 297, type: !224)
!490 = !DISubprogram(name: "method_call", scope: !1, file: !1, line: 322, type: !141, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @method_call, variables: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !500, !501, !502, !506, !508}
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !490, file: !1, line: 322, type: !43)
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !490, file: !1, line: 322, type: !43)
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !490, file: !1, line: 322, type: !43)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !490, file: !1, line: 324, type: !43)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !490, file: !1, line: 325, type: !43)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argcount", scope: !498, file: !1, line: 333, type: !15)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 332, column: 10)
!499 = distinct !DILexicalBlock(scope: !490, file: !1, line: 328, column: 9)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newarg", scope: !498, file: !1, line: 334, type: !43)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !498, file: !1, line: 335, type: !49)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !503, file: !1, line: 341, type: !43)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 340, column: 40)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 340, column: 9)
!505 = distinct !DILexicalBlock(scope: !498, file: !1, line: 340, column: 9)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !507, file: !1, line: 342, type: !43)
!507 = distinct !DILexicalBlock(scope: !503, file: !1, line: 342, column: 13)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !509, file: !1, line: 348, type: !43)
!509 = distinct !DILexicalBlock(scope: !490, file: !1, line: 348, column: 5)
!510 = !DISubprogram(name: "method_getattro", scope: !1, file: !1, line: 133, type: !132, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @method_getattro, variables: !511)
!511 = !{!512, !513, !514, !515, !518, !519}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !510, file: !1, line: 133, type: !43)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !510, file: !1, line: 133, type: !43)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !510, file: !1, line: 135, type: !4)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !510, file: !1, line: 136, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !510, file: !1, line: 137, type: !43)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !520, file: !1, line: 148, type: !325)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 147, column: 24)
!521 = distinct !DILexicalBlock(scope: !510, file: !1, line: 147, column: 9)
!522 = !DISubprogram(name: "method_traverse", scope: !1, file: !1, line: 314, type: !523, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyMethodObject*, i32 (%struct._object*, i8*)*, i8*)* @method_traverse, variables: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!49, !4, !269, !95}
!525 = !{!526, !527, !528, !529, !533}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !522, file: !1, line: 314, type: !4)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !522, file: !1, line: 314, type: !269)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !522, file: !1, line: 314, type: !95)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !530, file: !1, line: 316, type: !49)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 316, column: 5)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 316, column: 5)
!532 = distinct !DILexicalBlock(scope: !522, file: !1, line: 316, column: 5)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !534, file: !1, line: 317, type: !49)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 317, column: 5)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 317, column: 5)
!536 = distinct !DILexicalBlock(scope: !522, file: !1, line: 317, column: 5)
!537 = !DISubprogram(name: "method_richcompare", scope: !1, file: !1, line: 209, type: !277, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @method_richcompare, variables: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !537, file: !1, line: 209, type: !43)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !537, file: !1, line: 209, type: !43)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !537, file: !1, line: 209, type: !49)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !537, file: !1, line: 211, type: !4)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !537, file: !1, line: 211, type: !4)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !537, file: !1, line: 212, type: !43)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !537, file: !1, line: 213, type: !49)
!546 = !DISubprogram(name: "method_reduce", scope: !1, file: !1, line: 73, type: !442, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodObject*)* @method_reduce, variables: !547)
!547 = !{!548, !549, !550, !551, !552, !553}
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !546, file: !1, line: 73, type: !4)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !546, file: !1, line: 75, type: !43)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !546, file: !1, line: 76, type: !43)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !546, file: !1, line: 77, type: !43)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !546, file: !1, line: 78, type: !43)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !546, file: !1, line: 79, type: !43)
!554 = !DISubprogram(name: "method_get_doc", scope: !1, file: !1, line: 116, type: !555, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodObject*, i8*)* @method_get_doc, variables: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!43, !4, !95}
!557 = !{!558, !559}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !554, file: !1, line: 116, type: !4)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !554, file: !1, line: 116, type: !95)
!560 = !DISubprogram(name: "method_descr_get", scope: !1, file: !1, line: 353, type: !141, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @method_descr_get, variables: !561)
!561 = !{!562, !563, !564}
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "meth", arg: 1, scope: !560, file: !1, line: 353, type: !43)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !560, file: !1, line: 353, type: !43)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cls", arg: 3, scope: !560, file: !1, line: 353, type: !43)
!565 = !DISubprogram(name: "method_new", scope: !1, file: !1, line: 166, type: !566, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @method_new, variables: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!43, !516, !43, !43}
!568 = !{!569, !570, !571, !572, !573}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !565, file: !1, line: 166, type: !516)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !565, file: !1, line: 166, type: !43)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !565, file: !1, line: 166, type: !43)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !565, file: !1, line: 168, type: !43)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !565, file: !1, line: 169, type: !43)
!574 = !DISubprogram(name: "instancemethod_dealloc", scope: !1, file: !1, line: 516, type: !41, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @instancemethod_dealloc, variables: !575)
!575 = !{!576, !577, !579}
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !574, file: !1, line: 516, type: !43)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !578, file: !1, line: 517, type: !359)
!578 = distinct !DILexicalBlock(scope: !574, file: !1, line: 517, column: 5)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !580, file: !1, line: 518, type: !43)
!580 = distinct !DILexicalBlock(scope: !574, file: !1, line: 518, column: 5)
!581 = !DISubprogram(name: "instancemethod_repr", scope: !1, file: !1, line: 572, type: !122, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @instancemethod_repr, variables: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !593, !595}
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !581, file: !1, line: 572, type: !43)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !581, file: !1, line: 574, type: !43)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !581, file: !1, line: 575, type: !43)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !581, file: !1, line: 575, type: !43)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defname", scope: !581, file: !1, line: 576, type: !57)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !1, line: 590, type: !43)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 590, column: 9)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 589, column: 42)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 589, column: 14)
!592 = distinct !DILexicalBlock(scope: !581, file: !1, line: 584, column: 9)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !594, file: !1, line: 597, type: !43)
!594 = distinct !DILexicalBlock(scope: !581, file: !1, line: 597, column: 5)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !1, line: 597, type: !43)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 597, column: 5)
!597 = distinct !DILexicalBlock(scope: !594, file: !1, line: 597, column: 5)
!598 = !DISubprogram(name: "instancemethod_call", scope: !1, file: !1, line: 529, type: !141, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @instancemethod_call, variables: !599)
!599 = !{!600, !601, !602}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !598, file: !1, line: 529, type: !43)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !598, file: !1, line: 529, type: !43)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !598, file: !1, line: 529, type: !43)
!603 = !DISubprogram(name: "instancemethod_getattro", scope: !1, file: !1, line: 491, type: !132, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @instancemethod_getattro, variables: !604)
!604 = !{!605, !606, !607, !608, !609}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !603, file: !1, line: 491, type: !43)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !603, file: !1, line: 491, type: !43)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !603, file: !1, line: 493, type: !516)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !603, file: !1, line: 494, type: !43)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !610, file: !1, line: 503, type: !325)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 502, column: 24)
!611 = distinct !DILexicalBlock(scope: !603, file: !1, line: 502, column: 9)
!612 = !DISubprogram(name: "instancemethod_traverse", scope: !1, file: !1, line: 523, type: !267, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @instancemethod_traverse, variables: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !612, file: !1, line: 523, type: !43)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !612, file: !1, line: 523, type: !269)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !612, file: !1, line: 523, type: !95)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !618, file: !1, line: 524, type: !49)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 524, column: 5)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 524, column: 5)
!620 = distinct !DILexicalBlock(scope: !612, file: !1, line: 524, column: 5)
!621 = !DISubprogram(name: "instancemethod_richcompare", scope: !1, file: !1, line: 546, type: !277, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @instancemethod_richcompare, variables: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !621, file: !1, line: 546, type: !43)
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !621, file: !1, line: 546, type: !43)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !621, file: !1, line: 546, type: !49)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !621, file: !1, line: 548, type: !373)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !621, file: !1, line: 548, type: !373)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !621, file: !1, line: 549, type: !43)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !621, file: !1, line: 550, type: !49)
!630 = !DISubprogram(name: "instancemethod_get_doc", scope: !1, file: !1, line: 474, type: !313, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @instancemethod_get_doc, variables: !631)
!631 = !{!632, !633}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !630, file: !1, line: 474, type: !43)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !630, file: !1, line: 474, type: !95)
!634 = !DISubprogram(name: "instancemethod_descr_get", scope: !1, file: !1, line: 535, type: !141, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @instancemethod_descr_get, variables: !635)
!635 = !{!636, !637, !638, !639}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !634, file: !1, line: 535, type: !43)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !634, file: !1, line: 535, type: !43)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !634, file: !1, line: 535, type: !43)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !634, file: !1, line: 536, type: !43)
!640 = !DISubprogram(name: "instancemethod_new", scope: !1, file: !1, line: 623, type: !566, isLocal: true, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @instancemethod_new, variables: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !640, file: !1, line: 623, type: !516)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !640, file: !1, line: 623, type: !43)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !640, file: !1, line: 623, type: !43)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !640, file: !1, line: 625, type: !43)
!646 = !{!647, !648, !649, !650, !651, !659, !663, !668, !669, !674, !677, !678, !682, !684, !685}
!647 = !DIGlobalVariable(name: "PyMethod_Type", scope: !0, file: !1, line: 366, type: !517, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type)
!648 = !DIGlobalVariable(name: "PyInstanceMethod_Type", scope: !0, file: !1, line: 640, type: !517, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type)
!649 = !DIGlobalVariable(name: "free_list", scope: !0, file: !1, line: 11, type: !4, isLocal: true, isDefinition: true, variable: %struct.PyMethodObject** @free_list)
!650 = !DIGlobalVariable(name: "numfree", scope: !0, file: !1, line: 12, type: !49, isLocal: true, isDefinition: true, variable: i32* @numfree)
!651 = !DIGlobalVariable(name: "PyId___name__", scope: !0, file: !1, line: 17, type: !652, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId___name__)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !11, line: 144, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !11, line: 140, size: 192, align: 64, elements: !654)
!654 = !{!655, !657, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !11, line: 141, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !653, file: !11, line: 142, baseType: !33, size: 64, align: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !653, file: !11, line: 143, baseType: !43, size: 64, align: 64, offset: 128)
!659 = !DIGlobalVariable(name: "method_doc", scope: !0, file: !1, line: 160, type: !660, isLocal: true, isDefinition: true, variable: [67 x i8]* @method_doc)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 536, align: 8, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 67)
!663 = !DIGlobalVariable(name: "method_methods", scope: !0, file: !1, line: 91, type: !664, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @method_methods)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 512, align: 64, elements: !666)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!666 = !{!667}
!667 = !DISubrange(count: 2)
!668 = !DIGlobalVariable(name: "PyId_getattr", scope: !546, file: !1, line: 80, type: !652, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @method_reduce.PyId_getattr)
!669 = !DIGlobalVariable(name: "method_memberlist", scope: !0, file: !1, line: 102, type: !670, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @method_memberlist)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 960, align: 64, elements: !672)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !297, line: 24, baseType: !296)
!672 = !{!673}
!673 = !DISubrange(count: 3)
!674 = !DIGlobalVariable(name: "method_getset", scope: !0, file: !1, line: 127, type: !675, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @method_getset)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 640, align: 64, elements: !666)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !307, line: 17, baseType: !306)
!677 = !DIGlobalVariable(name: "docstr", scope: !554, file: !1, line: 118, type: !43, isLocal: true, isDefinition: true, variable: %struct._object** @method_get_doc.docstr)
!678 = !DIGlobalVariable(name: "instancemethod_doc", scope: !0, file: !1, line: 617, type: !679, isLocal: true, isDefinition: true, variable: [54 x i8]* @instancemethod_doc)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 432, align: 8, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 54)
!682 = !DIGlobalVariable(name: "instancemethod_memberlist", scope: !0, file: !1, line: 467, type: !683, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @instancemethod_memberlist)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 640, align: 64, elements: !666)
!684 = !DIGlobalVariable(name: "instancemethod_getset", scope: !0, file: !1, line: 485, type: !675, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @instancemethod_getset)
!685 = !DIGlobalVariable(name: "docstr", scope: !630, file: !1, line: 476, type: !43, isLocal: true, isDefinition: true, variable: %struct._object** @instancemethod_get_doc.docstr)
!686 = !{i32 2, !"Dwarf Version", i32 4}
!687 = !{i32 2, !"Debug Info Version", i32 3}
!688 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!689 = !DIExpression()
!690 = !DILocation(line: 20, column: 29, scope: !388)
!691 = !DILocation(line: 22, column: 10, scope: !692)
!692 = distinct !DILexicalBlock(scope: !388, file: !1, line: 22, column: 9)
!693 = !{!694, !698, i64 8}
!694 = !{!"_object", !695, i64 0, !698, i64 8}
!695 = !{!"long", !696, i64 0}
!696 = !{!"omnipotent char", !697, i64 0}
!697 = !{!"Simple C/C++ TBAA"}
!698 = !{!"any pointer", !696, i64 0}
!699 = !DILocation(line: 22, column: 9, scope: !388)
!700 = !DILocation(line: 23, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !692, file: !1, line: 22, column: 30)
!702 = !DILocation(line: 24, column: 9, scope: !701)
!703 = !DILocation(line: 26, column: 36, scope: !388)
!704 = !{!705, !698, i64 16}
!705 = !{!"", !694, i64 0, !698, i64 16, !698, i64 24, !698, i64 32}
!706 = !DILocation(line: 26, column: 5, scope: !388)
!707 = !DILocation(line: 27, column: 1, scope: !388)
!708 = !DILocation(line: 30, column: 25, scope: !391)
!709 = !DILocation(line: 32, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !391, file: !1, line: 32, column: 9)
!711 = !DILocation(line: 32, column: 9, scope: !391)
!712 = !DILocation(line: 33, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !1, line: 32, column: 30)
!714 = !DILocation(line: 34, column: 9, scope: !713)
!715 = !DILocation(line: 36, column: 36, scope: !391)
!716 = !{!705, !698, i64 24}
!717 = !DILocation(line: 36, column: 5, scope: !391)
!718 = !DILocation(line: 37, column: 1, scope: !391)
!719 = !DILocation(line: 45, column: 24, scope: !394)
!720 = !DILocation(line: 45, column: 40, scope: !394)
!721 = !DILocation(line: 48, column: 14, scope: !722)
!722 = distinct !DILexicalBlock(scope: !394, file: !1, line: 48, column: 9)
!723 = !DILocation(line: 48, column: 9, scope: !394)
!724 = !DILocation(line: 49, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !1, line: 48, column: 23)
!726 = !DILocation(line: 50, column: 9, scope: !725)
!727 = !DILocation(line: 52, column: 10, scope: !394)
!728 = !{!698, !698, i64 0}
!729 = !DILocation(line: 47, column: 21, scope: !394)
!730 = !DILocation(line: 53, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !394, file: !1, line: 53, column: 9)
!732 = !DILocation(line: 53, column: 9, scope: !394)
!733 = !DILocation(line: 54, column: 44, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !1, line: 53, column: 21)
!735 = !DILocation(line: 54, column: 19, scope: !734)
!736 = !DILocation(line: 55, column: 15, scope: !734)
!737 = !{!694, !695, i64 0}
!738 = !DILocation(line: 56, column: 16, scope: !734)
!739 = !{!740, !740, i64 0}
!740 = !{!"int", !696, i64 0}
!741 = !DILocation(line: 57, column: 5, scope: !734)
!742 = !DILocation(line: 59, column: 14, scope: !743)
!743 = distinct !DILexicalBlock(scope: !731, file: !1, line: 58, column: 10)
!744 = !DILocation(line: 60, column: 16, scope: !745)
!745 = distinct !DILexicalBlock(scope: !743, file: !1, line: 60, column: 13)
!746 = !DILocation(line: 60, column: 13, scope: !743)
!747 = !DILocation(line: 63, column: 9, scope: !394)
!748 = !DILocation(line: 63, column: 24, scope: !394)
!749 = !{!705, !698, i64 32}
!750 = !DILocation(line: 64, column: 5, scope: !394)
!751 = !DILocation(line: 65, column: 9, scope: !394)
!752 = !DILocation(line: 65, column: 17, scope: !394)
!753 = !DILocation(line: 66, column: 5, scope: !754)
!754 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 1)
!755 = !DILocation(line: 66, column: 5, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 2)
!757 = distinct !DILexicalBlock(scope: !400, file: !1, line: 66, column: 5)
!758 = !DILocation(line: 67, column: 9, scope: !394)
!759 = !DILocation(line: 67, column: 17, scope: !394)
!760 = !DILocation(line: 68, column: 5, scope: !761)
!761 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 1)
!762 = !DILocation(line: 68, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !402, file: !1, line: 68, column: 5)
!764 = !{!765, !695, i64 16}
!765 = !{!"", !698, i64 0, !698, i64 8, !695, i64 16}
!766 = !DILocation(line: 68, column: 5, scope: !402)
!767 = !DILocation(line: 68, column: 5, scope: !768)
!768 = !DILexicalBlockFile(scope: !763, file: !1, discriminator: 2)
!769 = !DILocation(line: 68, column: 5, scope: !770)
!770 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 4)
!771 = distinct !DILexicalBlock(scope: !402, file: !1, line: 68, column: 5)
!772 = !DILocation(line: 68, column: 5, scope: !773)
!773 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 6)
!774 = !{!765, !698, i64 0}
!775 = !{!765, !698, i64 8}
!776 = !DILocation(line: 69, column: 12, scope: !394)
!777 = !DILocation(line: 69, column: 5, scope: !394)
!778 = !DILocation(line: 70, column: 1, scope: !394)
!779 = !DILocation(line: 191, column: 32, scope: !427)
!780 = !DILocation(line: 193, column: 5, scope: !781)
!781 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!782 = !DILocation(line: 193, column: 5, scope: !783)
!783 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 2)
!784 = distinct !DILexicalBlock(scope: !433, file: !1, line: 193, column: 5)
!785 = !DILocation(line: 193, column: 5, scope: !786)
!786 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 4)
!787 = !DILocation(line: 194, column: 13, scope: !788)
!788 = distinct !DILexicalBlock(scope: !427, file: !1, line: 194, column: 9)
!789 = !DILocation(line: 194, column: 28, scope: !788)
!790 = !DILocation(line: 194, column: 9, scope: !427)
!791 = !DILocation(line: 195, column: 32, scope: !788)
!792 = !DILocation(line: 195, column: 9, scope: !788)
!793 = !DILocation(line: 196, column: 5, scope: !794)
!794 = !DILexicalBlockFile(scope: !435, file: !1, discriminator: 1)
!795 = !DILocation(line: 196, column: 5, scope: !796)
!796 = distinct !DILexicalBlock(scope: !435, file: !1, line: 196, column: 5)
!797 = !DILocation(line: 196, column: 5, scope: !435)
!798 = !DILocation(line: 196, column: 5, scope: !799)
!799 = !DILexicalBlockFile(scope: !796, file: !1, discriminator: 3)
!800 = !{!801, !698, i64 48}
!801 = !{!"_typeobject", !802, i64 0, !698, i64 24, !695, i64 32, !695, i64 40, !698, i64 48, !698, i64 56, !698, i64 64, !698, i64 72, !698, i64 80, !698, i64 88, !698, i64 96, !698, i64 104, !698, i64 112, !698, i64 120, !698, i64 128, !698, i64 136, !698, i64 144, !698, i64 152, !698, i64 160, !695, i64 168, !698, i64 176, !698, i64 184, !698, i64 192, !698, i64 200, !695, i64 208, !698, i64 216, !698, i64 224, !698, i64 232, !698, i64 240, !698, i64 248, !698, i64 256, !698, i64 264, !698, i64 272, !698, i64 280, !695, i64 288, !698, i64 296, !698, i64 304, !698, i64 312, !698, i64 320, !698, i64 328, !698, i64 336, !698, i64 344, !698, i64 352, !698, i64 360, !698, i64 368, !698, i64 376, !740, i64 384, !698, i64 392}
!802 = !{!"", !694, i64 0, !695, i64 16}
!803 = !DILocation(line: 197, column: 5, scope: !804)
!804 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 1)
!805 = !DILocation(line: 197, column: 5, scope: !440)
!806 = !DILocation(line: 197, column: 5, scope: !437)
!807 = !DILocation(line: 197, column: 5, scope: !808)
!808 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 4)
!809 = !DILocation(line: 197, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !439, file: !1, line: 197, column: 5)
!811 = !DILocation(line: 197, column: 5, scope: !439)
!812 = !DILocation(line: 197, column: 5, scope: !813)
!813 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 6)
!814 = !DILocation(line: 201, column: 16, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 198, column: 41)
!816 = distinct !DILexicalBlock(scope: !427, file: !1, line: 198, column: 9)
!817 = !DILocation(line: 198, column: 17, scope: !816)
!818 = !DILocation(line: 198, column: 9, scope: !427)
!819 = !DILocation(line: 199, column: 35, scope: !815)
!820 = !DILocation(line: 199, column: 21, scope: !815)
!821 = !DILocation(line: 200, column: 19, scope: !815)
!822 = !DILocation(line: 202, column: 5, scope: !815)
!823 = !DILocation(line: 204, column: 25, scope: !824)
!824 = distinct !DILexicalBlock(scope: !816, file: !1, line: 203, column: 10)
!825 = !DILocation(line: 204, column: 9, scope: !824)
!826 = !DILocation(line: 206, column: 1, scope: !427)
!827 = !DILocation(line: 242, column: 29, scope: !441)
!828 = !DILocation(line: 244, column: 25, scope: !441)
!829 = !DILocation(line: 244, column: 15, scope: !441)
!830 = !DILocation(line: 245, column: 15, scope: !441)
!831 = !DILocation(line: 247, column: 15, scope: !441)
!832 = !DILocation(line: 247, column: 33, scope: !441)
!833 = !DILocation(line: 247, column: 52, scope: !441)
!834 = !DILocation(line: 248, column: 11, scope: !441)
!835 = !DILocation(line: 250, column: 14, scope: !836)
!836 = distinct !DILexicalBlock(scope: !441, file: !1, line: 250, column: 9)
!837 = !DILocation(line: 250, column: 9, scope: !441)
!838 = !DILocation(line: 251, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !1, line: 250, column: 23)
!840 = !DILocation(line: 252, column: 9, scope: !839)
!841 = !DILocation(line: 245, column: 25, scope: !441)
!842 = !DILocation(line: 254, column: 24, scope: !441)
!843 = !DILocation(line: 246, column: 15, scope: !441)
!844 = !DILocation(line: 256, column: 16, scope: !441)
!845 = !DILocation(line: 257, column: 18, scope: !457)
!846 = !DILocation(line: 257, column: 9, scope: !441)
!847 = !DILocation(line: 258, column: 37, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 258, column: 13)
!849 = distinct !DILexicalBlock(scope: !457, file: !1, line: 257, column: 27)
!850 = !DILocation(line: 258, column: 14, scope: !848)
!851 = !DILocation(line: 258, column: 13, scope: !849)
!852 = !DILocation(line: 260, column: 9, scope: !849)
!853 = !DILocation(line: 261, column: 5, scope: !849)
!854 = !DILocation(line: 262, column: 15, scope: !456)
!855 = !DILocation(line: 263, column: 9, scope: !856)
!856 = !DILexicalBlockFile(scope: !857, file: !1, discriminator: 3)
!857 = distinct !DILexicalBlock(scope: !454, file: !1, line: 263, column: 9)
!858 = !{!801, !695, i64 168}
!859 = !DILocation(line: 262, column: 14, scope: !457)
!860 = !DILocation(line: 263, column: 9, scope: !861)
!861 = !DILexicalBlockFile(scope: !454, file: !1, discriminator: 1)
!862 = !DILocation(line: 263, column: 9, scope: !857)
!863 = !DILocation(line: 263, column: 9, scope: !454)
!864 = !DILocation(line: 267, column: 15, scope: !465)
!865 = !DILocation(line: 267, column: 9, scope: !441)
!866 = !DILocation(line: 270, column: 21, scope: !464)
!867 = !DILocation(line: 271, column: 23, scope: !463)
!868 = !DILocation(line: 271, column: 13, scope: !464)
!869 = !DILocation(line: 272, column: 41, scope: !461)
!870 = !DILocation(line: 272, column: 18, scope: !461)
!871 = !DILocation(line: 272, column: 17, scope: !462)
!872 = !DILocation(line: 273, column: 17, scope: !873)
!873 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 1)
!874 = !DILocation(line: 273, column: 17, scope: !468)
!875 = !DILocation(line: 273, column: 17, scope: !459)
!876 = !DILocation(line: 273, column: 17, scope: !877)
!877 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 4)
!878 = !DILocation(line: 273, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !467, file: !1, line: 273, column: 17)
!880 = !DILocation(line: 273, column: 17, scope: !467)
!881 = !DILocation(line: 273, column: 17, scope: !882)
!882 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 6)
!883 = !DILocation(line: 276, column: 13, scope: !462)
!884 = !DILocation(line: 277, column: 9, scope: !462)
!885 = !DILocation(line: 278, column: 19, scope: !472)
!886 = !DILocation(line: 279, column: 13, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !1, discriminator: 3)
!888 = distinct !DILexicalBlock(scope: !470, file: !1, line: 279, column: 13)
!889 = !DILocation(line: 278, column: 18, scope: !463)
!890 = !DILocation(line: 279, column: 13, scope: !891)
!891 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 1)
!892 = !DILocation(line: 279, column: 13, scope: !888)
!893 = !DILocation(line: 279, column: 13, scope: !470)
!894 = !DILocation(line: 285, column: 14, scope: !441)
!895 = !DILocation(line: 289, column: 5, scope: !896)
!896 = !DILexicalBlockFile(scope: !474, file: !1, discriminator: 1)
!897 = !DILocation(line: 289, column: 5, scope: !477)
!898 = !DILocation(line: 289, column: 5, scope: !474)
!899 = !DILocation(line: 289, column: 5, scope: !900)
!900 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 4)
!901 = !DILocation(line: 289, column: 5, scope: !902)
!902 = distinct !DILexicalBlock(scope: !476, file: !1, line: 289, column: 5)
!903 = !DILocation(line: 289, column: 5, scope: !476)
!904 = !DILocation(line: 289, column: 5, scope: !905)
!905 = !DILexicalBlockFile(scope: !902, file: !1, discriminator: 6)
!906 = !DILocation(line: 290, column: 5, scope: !907)
!907 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!908 = !DILocation(line: 290, column: 5, scope: !482)
!909 = !DILocation(line: 290, column: 5, scope: !479)
!910 = !DILocation(line: 290, column: 5, scope: !911)
!911 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 4)
!912 = !DILocation(line: 290, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !481, file: !1, line: 290, column: 5)
!914 = !DILocation(line: 290, column: 5, scope: !481)
!915 = !DILocation(line: 290, column: 5, scope: !916)
!916 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 6)
!917 = !DILocation(line: 292, column: 1, scope: !441)
!918 = !DILocation(line: 295, column: 29, scope: !483)
!919 = !DILocation(line: 298, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !483, file: !1, line: 298, column: 9)
!921 = !DILocation(line: 298, column: 20, scope: !920)
!922 = !DILocation(line: 298, column: 9, scope: !483)
!923 = !DILocation(line: 299, column: 13, scope: !920)
!924 = !DILocation(line: 297, column: 15, scope: !483)
!925 = !DILocation(line: 299, column: 9, scope: !920)
!926 = !DILocation(line: 301, column: 13, scope: !920)
!927 = !DILocation(line: 302, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !483, file: !1, line: 302, column: 9)
!929 = !DILocation(line: 302, column: 9, scope: !483)
!930 = !DILocation(line: 304, column: 26, scope: !483)
!931 = !DILocation(line: 304, column: 9, scope: !483)
!932 = !DILocation(line: 297, column: 18, scope: !483)
!933 = !DILocation(line: 305, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !483, file: !1, line: 305, column: 9)
!935 = !DILocation(line: 305, column: 9, scope: !483)
!936 = !DILocation(line: 307, column: 11, scope: !483)
!937 = !DILocation(line: 308, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !483, file: !1, line: 308, column: 9)
!939 = !DILocation(line: 308, column: 9, scope: !483)
!940 = !DILocation(line: 310, column: 5, scope: !483)
!941 = !DILocation(line: 311, column: 1, scope: !483)
!942 = !DILocation(line: 322, column: 23, scope: !490)
!943 = !DILocation(line: 322, column: 39, scope: !490)
!944 = !DILocation(line: 322, column: 54, scope: !490)
!945 = !DILocation(line: 324, column: 22, scope: !490)
!946 = !DILocation(line: 324, column: 15, scope: !490)
!947 = !DILocation(line: 327, column: 12, scope: !490)
!948 = !DILocation(line: 328, column: 14, scope: !499)
!949 = !DILocation(line: 328, column: 9, scope: !490)
!950 = !DILocation(line: 329, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !499, file: !1, line: 328, column: 23)
!952 = !DILocation(line: 330, column: 9, scope: !951)
!953 = !DILocation(line: 333, column: 31, scope: !498)
!954 = !DILocation(line: 333, column: 20, scope: !498)
!955 = !DILocation(line: 334, column: 49, scope: !498)
!956 = !DILocation(line: 334, column: 28, scope: !498)
!957 = !DILocation(line: 334, column: 19, scope: !498)
!958 = !DILocation(line: 336, column: 20, scope: !959)
!959 = distinct !DILexicalBlock(scope: !498, file: !1, line: 336, column: 13)
!960 = !DILocation(line: 336, column: 13, scope: !498)
!961 = !DILocation(line: 338, column: 9, scope: !498)
!962 = !DILocation(line: 339, column: 9, scope: !498)
!963 = !DILocation(line: 335, column: 13, scope: !498)
!964 = !DILocation(line: 340, column: 23, scope: !504)
!965 = !DILocation(line: 340, column: 9, scope: !505)
!966 = !DILocation(line: 341, column: 27, scope: !503)
!967 = !DILocation(line: 341, column: 23, scope: !503)
!968 = !DILocation(line: 342, column: 13, scope: !969)
!969 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!970 = !DILocation(line: 342, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !507, file: !1, line: 342, column: 13)
!972 = !DILocation(line: 342, column: 13, scope: !507)
!973 = !DILocation(line: 342, column: 13, scope: !974)
!974 = !DILexicalBlockFile(scope: !971, file: !1, discriminator: 2)
!975 = !DILocation(line: 343, column: 13, scope: !503)
!976 = !DILocation(line: 347, column: 14, scope: !490)
!977 = !DILocation(line: 325, column: 15, scope: !490)
!978 = !DILocation(line: 348, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !509, file: !1, line: 348, column: 5)
!980 = !DILocation(line: 348, column: 5, scope: !509)
!981 = !DILocation(line: 348, column: 5, scope: !982)
!982 = !DILexicalBlockFile(scope: !979, file: !1, discriminator: 3)
!983 = !DILocation(line: 350, column: 1, scope: !490)
!984 = !DILocation(line: 133, column: 27, scope: !510)
!985 = !DILocation(line: 133, column: 42, scope: !510)
!986 = !DILocation(line: 136, column: 29, scope: !510)
!987 = !DILocation(line: 136, column: 19, scope: !510)
!988 = !DILocation(line: 137, column: 15, scope: !510)
!989 = !DILocation(line: 140, column: 17, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 140, column: 13)
!991 = distinct !DILexicalBlock(scope: !510, file: !1, line: 139, column: 5)
!992 = !{!801, !698, i64 264}
!993 = !DILocation(line: 140, column: 25, scope: !990)
!994 = !DILocation(line: 140, column: 13, scope: !991)
!995 = !DILocation(line: 141, column: 17, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !1, line: 141, column: 17)
!997 = distinct !DILexicalBlock(scope: !990, file: !1, line: 140, column: 34)
!998 = !DILocation(line: 141, column: 34, scope: !996)
!999 = !DILocation(line: 141, column: 17, scope: !997)
!1000 = !DILocation(line: 144, column: 17, scope: !991)
!1001 = !DILocation(line: 147, column: 15, scope: !521)
!1002 = !DILocation(line: 147, column: 9, scope: !510)
!1003 = !DILocation(line: 148, column: 26, scope: !520)
!1004 = !{!801, !698, i64 272}
!1005 = !DILocation(line: 148, column: 22, scope: !520)
!1006 = !DILocation(line: 149, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !520, file: !1, line: 149, column: 13)
!1008 = !DILocation(line: 149, column: 13, scope: !520)
!1009 = !DILocation(line: 150, column: 51, scope: !1007)
!1010 = !DILocation(line: 150, column: 20, scope: !1007)
!1011 = !DILocation(line: 150, column: 13, scope: !1007)
!1012 = !DILocation(line: 152, column: 13, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 151, column: 14)
!1014 = !DILocation(line: 153, column: 13, scope: !1013)
!1015 = !DILocation(line: 157, column: 33, scope: !510)
!1016 = !DILocation(line: 157, column: 12, scope: !510)
!1017 = !DILocation(line: 157, column: 5, scope: !510)
!1018 = !DILocation(line: 158, column: 1, scope: !510)
!1019 = !DILocation(line: 314, column: 33, scope: !522)
!1020 = !DILocation(line: 314, column: 47, scope: !522)
!1021 = !DILocation(line: 314, column: 60, scope: !522)
!1022 = !DILocation(line: 316, column: 5, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!1024 = !DILocation(line: 316, column: 5, scope: !532)
!1025 = !DILocation(line: 316, column: 5, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 2)
!1027 = !DILocation(line: 316, column: 5, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !530, file: !1, line: 316, column: 5)
!1029 = !DILocation(line: 317, column: 5, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!1031 = !DILocation(line: 317, column: 5, scope: !536)
!1032 = !DILocation(line: 317, column: 5, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !534, file: !1, discriminator: 2)
!1034 = !DILocation(line: 317, column: 5, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !534, file: !1, line: 317, column: 5)
!1036 = !DILocation(line: 318, column: 5, scope: !522)
!1037 = !DILocation(line: 319, column: 1, scope: !522)
!1038 = !DILocation(line: 209, column: 30, scope: !537)
!1039 = !DILocation(line: 209, column: 46, scope: !537)
!1040 = !DILocation(line: 209, column: 57, scope: !537)
!1041 = !DILocation(line: 215, column: 22, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !537, file: !1, line: 215, column: 9)
!1043 = !DILocation(line: 216, column: 10, scope: !1042)
!1044 = !DILocation(line: 216, column: 31, scope: !1042)
!1045 = !DILocation(line: 217, column: 10, scope: !1042)
!1046 = !DILocation(line: 215, column: 9, scope: !537)
!1047 = !DILocation(line: 219, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 218, column: 5)
!1049 = !DILocation(line: 223, column: 38, scope: !537)
!1050 = !DILocation(line: 223, column: 50, scope: !537)
!1051 = !DILocation(line: 223, column: 10, scope: !537)
!1052 = !DILocation(line: 213, column: 9, scope: !537)
!1053 = !DILocation(line: 224, column: 12, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !537, file: !1, line: 224, column: 9)
!1055 = !DILocation(line: 224, column: 9, scope: !537)
!1056 = !DILocation(line: 225, column: 16, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 225, column: 13)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 224, column: 18)
!1059 = !DILocation(line: 226, column: 21, scope: !1057)
!1060 = !DILocation(line: 225, column: 24, scope: !1057)
!1061 = !DILocation(line: 226, column: 35, scope: !1057)
!1062 = !DILocation(line: 225, column: 32, scope: !1057)
!1063 = !DILocation(line: 225, column: 46, scope: !1057)
!1064 = !DILocation(line: 225, column: 13, scope: !1058)
!1065 = !DILocation(line: 226, column: 29, scope: !1057)
!1066 = !DILocation(line: 231, column: 9, scope: !537)
!1067 = !DILocation(line: 228, column: 18, scope: !1057)
!1068 = !DILocation(line: 231, column: 12, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !537, file: !1, line: 231, column: 9)
!1070 = !DILocation(line: 233, column: 12, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !537, file: !1, line: 233, column: 9)
!1072 = !DILocation(line: 234, column: 15, scope: !1071)
!1073 = !DILocation(line: 212, column: 15, scope: !537)
!1074 = !DILocation(line: 236, column: 15, scope: !1071)
!1075 = !DILocation(line: 233, column: 9, scope: !537)
!1076 = !DILocation(line: 237, column: 5, scope: !537)
!1077 = !DILocation(line: 238, column: 5, scope: !537)
!1078 = !DILocation(line: 239, column: 1, scope: !537)
!1079 = !DILocation(line: 353, column: 28, scope: !560)
!1080 = !DILocation(line: 353, column: 44, scope: !560)
!1081 = !DILocation(line: 353, column: 59, scope: !560)
!1082 = !DILocation(line: 357, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !560, file: !1, line: 357, column: 9)
!1084 = !DILocation(line: 357, column: 33, scope: !1083)
!1085 = !DILocation(line: 357, column: 9, scope: !560)
!1086 = !DILocation(line: 359, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 357, column: 42)
!1088 = !DILocation(line: 360, column: 9, scope: !1087)
!1089 = !DILocation(line: 363, column: 25, scope: !560)
!1090 = !DILocation(line: 363, column: 12, scope: !560)
!1091 = !DILocation(line: 363, column: 5, scope: !560)
!1092 = !DILocation(line: 364, column: 1, scope: !560)
!1093 = !DILocation(line: 166, column: 26, scope: !565)
!1094 = !DILocation(line: 166, column: 42, scope: !565)
!1095 = !DILocation(line: 166, column: 58, scope: !565)
!1096 = !DILocation(line: 168, column: 5, scope: !565)
!1097 = !DILocation(line: 169, column: 5, scope: !565)
!1098 = !DILocation(line: 171, column: 10, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !565, file: !1, line: 171, column: 9)
!1100 = !DILocation(line: 171, column: 9, scope: !565)
!1101 = !DILocation(line: 168, column: 15, scope: !565)
!1102 = !DILocation(line: 169, column: 15, scope: !565)
!1103 = !DILocation(line: 173, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !565, file: !1, line: 173, column: 9)
!1105 = !DILocation(line: 173, column: 9, scope: !565)
!1106 = !DILocation(line: 176, column: 27, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !565, file: !1, line: 176, column: 9)
!1108 = !DILocation(line: 176, column: 10, scope: !1107)
!1109 = !DILocation(line: 176, column: 9, scope: !565)
!1110 = !DILocation(line: 177, column: 25, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 176, column: 34)
!1112 = !DILocation(line: 177, column: 9, scope: !1111)
!1113 = !DILocation(line: 179, column: 9, scope: !1111)
!1114 = !DILocation(line: 181, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !565, file: !1, line: 181, column: 9)
!1116 = !DILocation(line: 181, column: 14, scope: !1115)
!1117 = !DILocation(line: 181, column: 30, scope: !1115)
!1118 = !DILocation(line: 181, column: 22, scope: !1115)
!1119 = !DILocation(line: 182, column: 25, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 181, column: 42)
!1121 = !DILocation(line: 182, column: 9, scope: !1120)
!1122 = !DILocation(line: 184, column: 9, scope: !1120)
!1123 = !DILocation(line: 187, column: 25, scope: !565)
!1124 = !DILocation(line: 187, column: 12, scope: !565)
!1125 = !DILocation(line: 187, column: 5, scope: !565)
!1126 = !DILocation(line: 188, column: 1, scope: !565)
!1127 = !DILocation(line: 412, column: 25, scope: !403)
!1128 = !DILocation(line: 412, column: 9, scope: !403)
!1129 = !DILocation(line: 414, column: 12, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !1, discriminator: 2)
!1131 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 1)
!1132 = !DILocation(line: 414, column: 5, scope: !403)
!1133 = !DILocation(line: 415, column: 25, scope: !409)
!1134 = !DILocation(line: 416, column: 44, scope: !409)
!1135 = !DILocation(line: 416, column: 19, scope: !409)
!1136 = !DILocation(line: 417, column: 25, scope: !409)
!1137 = !DILocation(line: 417, column: 9, scope: !409)
!1138 = !DILocation(line: 418, column: 16, scope: !409)
!1139 = !DILocation(line: 421, column: 5, scope: !403)
!1140 = !DILocation(line: 414, column: 12, scope: !1130, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 427, column: 11, scope: !410)
!1142 = !DILocation(line: 414, column: 5, scope: !403, inlinedAt: !1141)
!1143 = !DILocation(line: 416, column: 44, scope: !409, inlinedAt: !1141)
!1144 = !DILocation(line: 427, column: 11, scope: !410)
!1145 = !DILocation(line: 416, column: 19, scope: !409, inlinedAt: !1141)
!1146 = !DILocation(line: 417, column: 25, scope: !409, inlinedAt: !1141)
!1147 = !DILocation(line: 417, column: 9, scope: !409, inlinedAt: !1141)
!1148 = !DILocation(line: 418, column: 16, scope: !409, inlinedAt: !1141)
!1149 = !DILocation(line: 428, column: 1, scope: !410)
!1150 = !DILocation(line: 432, column: 34, scope: !413)
!1151 = !DILocation(line: 436, column: 28, scope: !413)
!1152 = !DILocation(line: 434, column: 5, scope: !413)
!1153 = !DILocation(line: 437, column: 1, scope: !413)
!1154 = !DILocation(line: 444, column: 32, scope: !418)
!1155 = !DILocation(line: 446, column: 14, scope: !418)
!1156 = !DILocation(line: 448, column: 16, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !418, file: !1, line: 448, column: 9)
!1158 = !DILocation(line: 448, column: 9, scope: !418)
!1159 = !DILocation(line: 449, column: 5, scope: !418)
!1160 = !DILocation(line: 450, column: 13, scope: !418)
!1161 = !DILocation(line: 450, column: 18, scope: !418)
!1162 = !{!1163, !698, i64 16}
!1163 = !{!"", !694, i64 0, !698, i64 16}
!1164 = !DILocation(line: 451, column: 5, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 1)
!1166 = !DILocation(line: 451, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !423, file: !1, line: 451, column: 5)
!1168 = !DILocation(line: 451, column: 5, scope: !423)
!1169 = !DILocation(line: 451, column: 5, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1167, file: !1, discriminator: 2)
!1171 = !DILocation(line: 451, column: 5, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1173, file: !1, discriminator: 4)
!1173 = distinct !DILexicalBlock(scope: !423, file: !1, line: 451, column: 5)
!1174 = !DILocation(line: 451, column: 5, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 6)
!1176 = !DILocation(line: 452, column: 5, scope: !418)
!1177 = !DILocation(line: 453, column: 1, scope: !418)
!1178 = !DILocation(line: 456, column: 37, scope: !424)
!1179 = !DILocation(line: 458, column: 10, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !424, file: !1, line: 458, column: 9)
!1181 = !DILocation(line: 458, column: 9, scope: !424)
!1182 = !DILocation(line: 459, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 458, column: 38)
!1184 = !DILocation(line: 460, column: 9, scope: !1183)
!1185 = !DILocation(line: 462, column: 12, scope: !424)
!1186 = !DILocation(line: 462, column: 5, scope: !424)
!1187 = !DILocation(line: 463, column: 1, scope: !424)
!1188 = !DILocation(line: 516, column: 34, scope: !574)
!1189 = !DILocation(line: 517, column: 5, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 1)
!1191 = !DILocation(line: 517, column: 5, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1193, file: !1, discriminator: 2)
!1193 = distinct !DILexicalBlock(scope: !578, file: !1, line: 517, column: 5)
!1194 = !DILocation(line: 517, column: 5, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 4)
!1196 = !DILocation(line: 518, column: 5, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1198 = !DILocation(line: 518, column: 5, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !580, file: !1, line: 518, column: 5)
!1200 = !DILocation(line: 518, column: 5, scope: !580)
!1201 = !DILocation(line: 518, column: 5, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1199, file: !1, discriminator: 3)
!1203 = !DILocation(line: 519, column: 21, scope: !574)
!1204 = !DILocation(line: 519, column: 5, scope: !574)
!1205 = !DILocation(line: 520, column: 1, scope: !574)
!1206 = !DILocation(line: 572, column: 31, scope: !581)
!1207 = !DILocation(line: 456, column: 37, scope: !424, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 574, column: 22, scope: !581)
!1209 = !DILocation(line: 458, column: 10, scope: !1180, inlinedAt: !1208)
!1210 = !DILocation(line: 458, column: 9, scope: !424, inlinedAt: !1208)
!1211 = !DILocation(line: 459, column: 9, scope: !1183, inlinedAt: !1208)
!1212 = !DILocation(line: 574, column: 15, scope: !581)
!1213 = !DILocation(line: 575, column: 15, scope: !581)
!1214 = !DILocation(line: 575, column: 34, scope: !581)
!1215 = !DILocation(line: 576, column: 11, scope: !581)
!1216 = !DILocation(line: 578, column: 9, scope: !581)
!1217 = !DILocation(line: 462, column: 12, scope: !424, inlinedAt: !1208)
!1218 = !DILocation(line: 578, column: 14, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !581, file: !1, line: 578, column: 9)
!1220 = !DILocation(line: 579, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 578, column: 23)
!1222 = !DILocation(line: 580, column: 9, scope: !1221)
!1223 = !DILocation(line: 583, column: 16, scope: !581)
!1224 = !DILocation(line: 584, column: 18, scope: !592)
!1225 = !DILocation(line: 584, column: 9, scope: !581)
!1226 = !DILocation(line: 585, column: 37, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 585, column: 13)
!1228 = distinct !DILexicalBlock(scope: !592, file: !1, line: 584, column: 27)
!1229 = !DILocation(line: 585, column: 14, scope: !1227)
!1230 = !DILocation(line: 585, column: 13, scope: !1228)
!1231 = !DILocation(line: 587, column: 9, scope: !1228)
!1232 = !DILocation(line: 588, column: 5, scope: !1228)
!1233 = !DILocation(line: 589, column: 15, scope: !591)
!1234 = !DILocation(line: 590, column: 9, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1236, file: !1, discriminator: 3)
!1236 = distinct !DILexicalBlock(scope: !589, file: !1, line: 590, column: 9)
!1237 = !DILocation(line: 589, column: 14, scope: !592)
!1238 = !DILocation(line: 590, column: 9, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !589, file: !1, discriminator: 1)
!1240 = !DILocation(line: 590, column: 9, scope: !1236)
!1241 = !DILocation(line: 590, column: 9, scope: !589)
!1242 = !DILocation(line: 594, column: 14, scope: !581)
!1243 = !DILocation(line: 597, column: 5, scope: !594)
!1244 = !DILocation(line: 597, column: 5, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !596, file: !1, line: 597, column: 5)
!1246 = !DILocation(line: 597, column: 5, scope: !596)
!1247 = !DILocation(line: 597, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1245, file: !1, discriminator: 6)
!1249 = !DILocation(line: 599, column: 1, scope: !581)
!1250 = !DILocation(line: 529, column: 31, scope: !598)
!1251 = !DILocation(line: 529, column: 47, scope: !598)
!1252 = !DILocation(line: 529, column: 62, scope: !598)
!1253 = !DILocation(line: 531, column: 26, scope: !598)
!1254 = !DILocation(line: 531, column: 12, scope: !598)
!1255 = !DILocation(line: 531, column: 5, scope: !598)
!1256 = !DILocation(line: 491, column: 35, scope: !603)
!1257 = !DILocation(line: 491, column: 51, scope: !603)
!1258 = !DILocation(line: 493, column: 30, scope: !603)
!1259 = !DILocation(line: 493, column: 19, scope: !603)
!1260 = !DILocation(line: 494, column: 15, scope: !603)
!1261 = !DILocation(line: 496, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !603, file: !1, line: 496, column: 9)
!1263 = !DILocation(line: 496, column: 21, scope: !1262)
!1264 = !DILocation(line: 496, column: 9, scope: !603)
!1265 = !DILocation(line: 497, column: 13, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 497, column: 13)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 496, column: 30)
!1268 = !DILocation(line: 497, column: 30, scope: !1266)
!1269 = !DILocation(line: 497, column: 13, scope: !1267)
!1270 = !DILocation(line: 500, column: 13, scope: !603)
!1271 = !DILocation(line: 502, column: 15, scope: !611)
!1272 = !DILocation(line: 502, column: 9, scope: !603)
!1273 = !DILocation(line: 503, column: 26, scope: !610)
!1274 = !DILocation(line: 503, column: 22, scope: !610)
!1275 = !DILocation(line: 504, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !610, file: !1, line: 504, column: 13)
!1277 = !DILocation(line: 504, column: 13, scope: !610)
!1278 = !DILocation(line: 505, column: 53, scope: !1276)
!1279 = !DILocation(line: 505, column: 20, scope: !1276)
!1280 = !DILocation(line: 505, column: 13, scope: !1276)
!1281 = !DILocation(line: 507, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 506, column: 14)
!1283 = !DILocation(line: 508, column: 13, scope: !1282)
!1284 = !DILocation(line: 512, column: 29, scope: !603)
!1285 = !DILocation(line: 512, column: 12, scope: !603)
!1286 = !DILocation(line: 512, column: 5, scope: !603)
!1287 = !DILocation(line: 513, column: 1, scope: !603)
!1288 = !DILocation(line: 523, column: 35, scope: !612)
!1289 = !DILocation(line: 523, column: 51, scope: !612)
!1290 = !DILocation(line: 523, column: 64, scope: !612)
!1291 = !DILocation(line: 524, column: 5, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!1293 = !DILocation(line: 524, column: 5, scope: !620)
!1294 = !DILocation(line: 524, column: 5, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 2)
!1296 = !DILocation(line: 524, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !618, file: !1, line: 524, column: 5)
!1298 = !DILocation(line: 525, column: 5, scope: !612)
!1299 = !DILocation(line: 526, column: 1, scope: !612)
!1300 = !DILocation(line: 546, column: 38, scope: !621)
!1301 = !DILocation(line: 546, column: 54, scope: !621)
!1302 = !DILocation(line: 546, column: 65, scope: !621)
!1303 = !DILocation(line: 552, column: 22, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !621, file: !1, line: 552, column: 9)
!1305 = !DILocation(line: 553, column: 10, scope: !1304)
!1306 = !DILocation(line: 553, column: 39, scope: !1304)
!1307 = !DILocation(line: 554, column: 10, scope: !1304)
!1308 = !DILocation(line: 552, column: 9, scope: !621)
!1309 = !DILocation(line: 556, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 555, column: 5)
!1311 = !DILocation(line: 560, column: 38, scope: !621)
!1312 = !DILocation(line: 560, column: 47, scope: !621)
!1313 = !DILocation(line: 560, column: 10, scope: !621)
!1314 = !DILocation(line: 550, column: 9, scope: !621)
!1315 = !DILocation(line: 561, column: 12, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !621, file: !1, line: 561, column: 9)
!1317 = !DILocation(line: 561, column: 9, scope: !621)
!1318 = !DILocation(line: 563, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !621, file: !1, line: 563, column: 9)
!1320 = !DILocation(line: 564, column: 15, scope: !1319)
!1321 = !DILocation(line: 549, column: 15, scope: !621)
!1322 = !DILocation(line: 566, column: 15, scope: !1319)
!1323 = !DILocation(line: 563, column: 9, scope: !621)
!1324 = !DILocation(line: 567, column: 5, scope: !621)
!1325 = !DILocation(line: 568, column: 5, scope: !621)
!1326 = !DILocation(line: 569, column: 1, scope: !621)
!1327 = !DILocation(line: 535, column: 36, scope: !634)
!1328 = !DILocation(line: 535, column: 53, scope: !634)
!1329 = !DILocation(line: 535, column: 68, scope: !634)
!1330 = !DILocation(line: 536, column: 22, scope: !634)
!1331 = !DILocation(line: 536, column: 15, scope: !634)
!1332 = !DILocation(line: 537, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !634, file: !1, line: 537, column: 9)
!1334 = !DILocation(line: 537, column: 9, scope: !634)
!1335 = !DILocation(line: 538, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 537, column: 22)
!1337 = !DILocation(line: 539, column: 9, scope: !1336)
!1338 = !DILocation(line: 542, column: 16, scope: !1333)
!1339 = !DILocation(line: 542, column: 9, scope: !1333)
!1340 = !DILocation(line: 543, column: 1, scope: !634)
!1341 = !DILocation(line: 623, column: 34, scope: !640)
!1342 = !DILocation(line: 623, column: 50, scope: !640)
!1343 = !DILocation(line: 623, column: 66, scope: !640)
!1344 = !DILocation(line: 625, column: 5, scope: !640)
!1345 = !DILocation(line: 627, column: 10, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !640, file: !1, line: 627, column: 9)
!1347 = !DILocation(line: 627, column: 9, scope: !640)
!1348 = !DILocation(line: 625, column: 15, scope: !640)
!1349 = !DILocation(line: 629, column: 10, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !640, file: !1, line: 629, column: 9)
!1351 = !DILocation(line: 629, column: 9, scope: !640)
!1352 = !DILocation(line: 631, column: 27, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !640, file: !1, line: 631, column: 9)
!1354 = !DILocation(line: 631, column: 10, scope: !1353)
!1355 = !DILocation(line: 631, column: 9, scope: !640)
!1356 = !DILocation(line: 632, column: 25, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 631, column: 34)
!1358 = !DILocation(line: 632, column: 9, scope: !1357)
!1359 = !DILocation(line: 634, column: 9, scope: !1357)
!1360 = !DILocation(line: 637, column: 33, scope: !640)
!1361 = !DILocation(line: 444, column: 32, scope: !418, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 637, column: 12, scope: !640)
!1363 = !DILocation(line: 446, column: 14, scope: !418, inlinedAt: !1362)
!1364 = !DILocation(line: 448, column: 16, scope: !1157, inlinedAt: !1362)
!1365 = !DILocation(line: 448, column: 9, scope: !418, inlinedAt: !1362)
!1366 = !DILocation(line: 449, column: 5, scope: !418, inlinedAt: !1362)
!1367 = !DILocation(line: 450, column: 13, scope: !418, inlinedAt: !1362)
!1368 = !DILocation(line: 450, column: 18, scope: !418, inlinedAt: !1362)
!1369 = !DILocation(line: 451, column: 5, scope: !1165, inlinedAt: !1362)
!1370 = !DILocation(line: 451, column: 5, scope: !1167, inlinedAt: !1362)
!1371 = !DILocation(line: 451, column: 5, scope: !423, inlinedAt: !1362)
!1372 = !DILocation(line: 451, column: 5, scope: !1170, inlinedAt: !1362)
!1373 = !DILocation(line: 451, column: 5, scope: !1172, inlinedAt: !1362)
!1374 = !DILocation(line: 451, column: 5, scope: !1175, inlinedAt: !1362)
!1375 = !DILocation(line: 452, column: 5, scope: !418, inlinedAt: !1362)
!1376 = !DILocation(line: 638, column: 1, scope: !640)
!1377 = !DILocation(line: 73, column: 31, scope: !546)
!1378 = !DILocation(line: 75, column: 22, scope: !546)
!1379 = !DILocation(line: 75, column: 15, scope: !546)
!1380 = !DILocation(line: 76, column: 22, scope: !546)
!1381 = !DILocation(line: 76, column: 15, scope: !546)
!1382 = !DILocation(line: 82, column: 16, scope: !546)
!1383 = !DILocation(line: 79, column: 15, scope: !546)
!1384 = !DILocation(line: 83, column: 18, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !546, file: !1, line: 83, column: 9)
!1386 = !DILocation(line: 83, column: 9, scope: !546)
!1387 = !DILocation(line: 86, column: 16, scope: !546)
!1388 = !DILocation(line: 77, column: 15, scope: !546)
!1389 = !DILocation(line: 87, column: 15, scope: !546)
!1390 = !DILocation(line: 78, column: 15, scope: !546)
!1391 = !DILocation(line: 88, column: 12, scope: !546)
!1392 = !DILocation(line: 88, column: 5, scope: !546)
!1393 = !DILocation(line: 89, column: 1, scope: !546)
!1394 = !DILocation(line: 116, column: 32, scope: !554)
!1395 = !DILocation(line: 116, column: 42, scope: !554)
!1396 = !DILocation(line: 119, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !554, file: !1, line: 119, column: 9)
!1398 = !DILocation(line: 119, column: 16, scope: !1397)
!1399 = !DILocation(line: 119, column: 9, scope: !554)
!1400 = !DILocation(line: 120, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 119, column: 25)
!1402 = !DILocation(line: 120, column: 15, scope: !1401)
!1403 = !DILocation(line: 121, column: 20, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 121, column: 13)
!1405 = !DILocation(line: 121, column: 13, scope: !1401)
!1406 = !DILocation(line: 124, column: 42, scope: !554)
!1407 = !DILocation(line: 124, column: 33, scope: !554)
!1408 = !DILocation(line: 124, column: 12, scope: !554)
!1409 = !DILocation(line: 124, column: 5, scope: !554)
!1410 = !DILocation(line: 125, column: 1, scope: !554)
!1411 = !DILocation(line: 474, column: 34, scope: !630)
!1412 = !DILocation(line: 474, column: 46, scope: !630)
!1413 = !DILocation(line: 477, column: 9, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !630, file: !1, line: 477, column: 9)
!1415 = !DILocation(line: 477, column: 16, scope: !1414)
!1416 = !DILocation(line: 477, column: 9, scope: !630)
!1417 = !DILocation(line: 478, column: 18, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 477, column: 25)
!1419 = !DILocation(line: 478, column: 16, scope: !1418)
!1420 = !DILocation(line: 479, column: 20, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 479, column: 13)
!1422 = !DILocation(line: 479, column: 13, scope: !1418)
!1423 = !DILocation(line: 482, column: 66, scope: !630)
!1424 = !DILocation(line: 482, column: 29, scope: !630)
!1425 = !DILocation(line: 482, column: 12, scope: !630)
!1426 = !DILocation(line: 482, column: 5, scope: !630)
!1427 = !DILocation(line: 483, column: 1, scope: !630)
