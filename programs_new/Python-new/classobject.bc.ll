; ModuleID = 'irs-onlybc/classobject.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyInstanceMethodObject = type { %struct._object, %struct._object* }

@.str = private unnamed_addr constant [22 x i8] c"Objects/classobject.c\00", align 1
@free_list = internal global %struct.PyMethodObject* null, align 8
@numfree = internal global i32 0, align 4
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
@method_get_doc.docstr = internal global %struct._object* null, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"first argument must be callable\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"self must not be None\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"<instancemethod %V at %p>\00", align 1
@instancemethod_get_doc.docstr = internal global %struct._object* null, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_Function(%struct._object* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct._object*, align 8
  store %struct._object* %im, %struct._object** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %im.addr, metadata !391, metadata !694), !dbg !695
  %0 = load %struct._object*, %struct._object** %im.addr, align 8, !dbg !696, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !698
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !698, !tbaa !699
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !702
  br i1 %cmp, label %if.end, label %if.then, !dbg !703

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 23), !dbg !704
  store %struct._object* null, %struct._object** %retval, !dbg !706
  br label %return, !dbg !706

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %im.addr, align 8, !dbg !707, !tbaa !690
  %3 = bitcast %struct._object* %2 to %struct.PyMethodObject*, !dbg !708
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 1, !dbg !709
  %4 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !709, !tbaa !710
  store %struct._object* %4, %struct._object** %retval, !dbg !712
  br label %return, !dbg !712

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !713
  ret %struct._object* %5, !dbg !713
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_Self(%struct._object* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct._object*, align 8
  store %struct._object* %im, %struct._object** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %im.addr, metadata !394, metadata !694), !dbg !714
  %0 = load %struct._object*, %struct._object** %im.addr, align 8, !dbg !715, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !717
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !717, !tbaa !699
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !718
  br i1 %cmp, label %if.end, label %if.then, !dbg !719

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 33), !dbg !720
  store %struct._object* null, %struct._object** %retval, !dbg !722
  br label %return, !dbg !722

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %im.addr, align 8, !dbg !723, !tbaa !690
  %3 = bitcast %struct._object* %2 to %struct.PyMethodObject*, !dbg !724
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 2, !dbg !725
  %4 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !725, !tbaa !726
  store %struct._object* %4, %struct._object** %retval, !dbg !727
  br label %return, !dbg !727

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !728
  ret %struct._object* %5, !dbg !728
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_New(%struct._object* %func, %struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %im = alloca %struct.PyMethodObject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !397, metadata !694), !dbg !729
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !398, metadata !694), !dbg !730
  %0 = bitcast %struct.PyMethodObject** %im to i8*, !dbg !731
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !731
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im, metadata !399, metadata !694), !dbg !732
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !733, !tbaa !690
  %cmp = icmp eq %struct._object* %1, null, !dbg !735
  br i1 %cmp, label %if.then, label %if.end, !dbg !736

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 49), !dbg !737
  store %struct._object* null, %struct._object** %retval, !dbg !739
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !739

if.end:                                           ; preds = %entry
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !740, !tbaa !690
  store %struct.PyMethodObject* %2, %struct.PyMethodObject** %im, align 8, !dbg !741, !tbaa !690
  %3 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !742, !tbaa !690
  %cmp1 = icmp ne %struct.PyMethodObject* %3, null, !dbg !744
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !745

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !746, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %4, i32 0, i32 2, !dbg !748
  %5 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !748, !tbaa !726
  %6 = bitcast %struct._object* %5 to %struct.PyMethodObject*, !dbg !749
  store %struct.PyMethodObject* %6, %struct.PyMethodObject** @free_list, align 8, !dbg !750, !tbaa !690
  %7 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !751, !tbaa !690
  %8 = bitcast %struct.PyMethodObject* %7 to %struct._object*, !dbg !752
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !753
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), %struct._typeobject** %ob_type, align 8, !dbg !754, !tbaa !699
  %9 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !755, !tbaa !690
  %10 = bitcast %struct.PyMethodObject* %9 to %struct._object*, !dbg !756
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !757
  store i64 1, i64* %ob_refcnt, align 8, !dbg !758, !tbaa !759
  %11 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !760, !tbaa !690
  %12 = load i32, i32* @numfree, align 4, !dbg !761, !tbaa !762
  %dec = add i32 %12, -1, !dbg !761
  store i32 %dec, i32* @numfree, align 4, !dbg !761, !tbaa !762
  br label %if.end.6, !dbg !764

if.else:                                          ; preds = %if.end
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*)), !dbg !765
  %13 = bitcast %struct._object* %call to %struct.PyMethodObject*, !dbg !767
  store %struct.PyMethodObject* %13, %struct.PyMethodObject** %im, align 8, !dbg !768, !tbaa !690
  %14 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !769, !tbaa !690
  %cmp3 = icmp eq %struct.PyMethodObject* %14, null, !dbg !771
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !772

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !773
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !773

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.2
  %15 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !774, !tbaa !690
  %im_weakreflist = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %15, i32 0, i32 3, !dbg !775
  store %struct._object* null, %struct._object** %im_weakreflist, align 8, !dbg !776, !tbaa !777
  %16 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !778, !tbaa !690
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !779
  %17 = load i64, i64* %ob_refcnt7, align 8, !dbg !780, !tbaa !759
  %inc = add i64 %17, 1, !dbg !780
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !780, !tbaa !759
  %18 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !781, !tbaa !690
  %19 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !782, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %19, i32 0, i32 1, !dbg !783
  store %struct._object* %18, %struct._object** %im_func, align 8, !dbg !784, !tbaa !710
  br label %do.body, !dbg !785

do.body:                                          ; preds = %if.end.6
  %20 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !786
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !786
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !400, metadata !694), !dbg !788
  %21 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !789, !tbaa !690
  store %struct._object* %21, %struct._object** %_py_xincref_tmp, align 8, !dbg !788, !tbaa !690
  %22 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !790, !tbaa !690
  %cmp8 = icmp ne %struct._object* %22, null, !dbg !792
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !793

if.then.9:                                        ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !794, !tbaa !690
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !796
  %24 = load i64, i64* %ob_refcnt10, align 8, !dbg !797, !tbaa !759
  %inc11 = add i64 %24, 1, !dbg !797
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !797, !tbaa !759
  br label %if.end.12, !dbg !798

if.end.12:                                        ; preds = %if.then.9, %do.body
  %25 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !799
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !799
  br label %do.cond, !dbg !802

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !803

do.end:                                           ; preds = %do.cond
  %26 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !805, !tbaa !690
  %27 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !806, !tbaa !690
  %im_self13 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %27, i32 0, i32 2, !dbg !807
  store %struct._object* %26, %struct._object** %im_self13, align 8, !dbg !808, !tbaa !726
  br label %do.body.14, !dbg !809

do.body.14:                                       ; preds = %do.end
  %28 = bitcast %union._gc_head** %g to i8*, !dbg !810
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !810
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !402, metadata !694), !dbg !812
  %29 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !813, !tbaa !690
  %30 = bitcast %struct.PyMethodObject* %29 to %union._gc_head*, !dbg !814
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %30, i64 -1, !dbg !815
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !812, !tbaa !690
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !816, !tbaa !690
  %gc = bitcast %union._gc_head* %31 to %struct.anon*, !dbg !818
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !819
  %32 = load i64, i64* %gc_refs, align 8, !dbg !819, !tbaa !820
  %shr = ashr i64 %32, 1, !dbg !822
  %cmp15 = icmp ne i64 %shr, -2, !dbg !823
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !824

if.then.16:                                       ; preds = %do.body.14
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !825
  unreachable, !dbg !825

if.end.17:                                        ; preds = %do.body.14
  br label %do.body.18, !dbg !827

do.body.18:                                       ; preds = %if.end.17
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !829, !tbaa !690
  %gc19 = bitcast %union._gc_head* %33 to %struct.anon*, !dbg !832
  %gc_refs20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 2, !dbg !833
  %34 = load i64, i64* %gc_refs20, align 8, !dbg !833, !tbaa !820
  %and = and i64 %34, 1, !dbg !834
  %or = or i64 %and, -6, !dbg !835
  %35 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !836, !tbaa !690
  %gc21 = bitcast %union._gc_head* %35 to %struct.anon*, !dbg !837
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2, !dbg !838
  store i64 %or, i64* %gc_refs22, align 8, !dbg !839, !tbaa !820
  br label %do.cond.23, !dbg !840

do.cond.23:                                       ; preds = %do.body.18
  br label %do.end.24, !dbg !841

do.end.24:                                        ; preds = %do.cond.23
  %36 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !843, !tbaa !690
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !845, !tbaa !690
  %gc25 = bitcast %union._gc_head* %37 to %struct.anon*, !dbg !846
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 0, !dbg !847
  store %union._gc_head* %36, %union._gc_head** %gc_next, align 8, !dbg !848, !tbaa !849
  %38 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !850, !tbaa !690
  %gc26 = bitcast %union._gc_head* %38 to %struct.anon*, !dbg !851
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc26, i32 0, i32 1, !dbg !852
  %39 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !852, !tbaa !853
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !854, !tbaa !690
  %gc27 = bitcast %union._gc_head* %40 to %struct.anon*, !dbg !855
  %gc_prev28 = getelementptr inbounds %struct.anon, %struct.anon* %gc27, i32 0, i32 1, !dbg !856
  store %union._gc_head* %39, %union._gc_head** %gc_prev28, align 8, !dbg !857, !tbaa !853
  %41 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !858, !tbaa !690
  %42 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !859, !tbaa !690
  %gc29 = bitcast %union._gc_head* %42 to %struct.anon*, !dbg !860
  %gc_prev30 = getelementptr inbounds %struct.anon, %struct.anon* %gc29, i32 0, i32 1, !dbg !861
  %43 = load %union._gc_head*, %union._gc_head** %gc_prev30, align 8, !dbg !861, !tbaa !853
  %gc31 = bitcast %union._gc_head* %43 to %struct.anon*, !dbg !862
  %gc_next32 = getelementptr inbounds %struct.anon, %struct.anon* %gc31, i32 0, i32 0, !dbg !863
  store %union._gc_head* %41, %union._gc_head** %gc_next32, align 8, !dbg !864, !tbaa !849
  %44 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !865, !tbaa !690
  %45 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !866, !tbaa !690
  %gc33 = bitcast %union._gc_head* %45 to %struct.anon*, !dbg !867
  %gc_prev34 = getelementptr inbounds %struct.anon, %struct.anon* %gc33, i32 0, i32 1, !dbg !868
  store %union._gc_head* %44, %union._gc_head** %gc_prev34, align 8, !dbg !869, !tbaa !853
  %46 = bitcast %union._gc_head** %g to i8*, !dbg !870
  call void @llvm.lifetime.end(i64 8, i8* %46) #3, !dbg !870
  br label %do.cond.35, !dbg !871

do.cond.35:                                       ; preds = %do.end.24
  br label %do.end.36, !dbg !872

do.end.36:                                        ; preds = %do.cond.35
  %47 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !874, !tbaa !690
  %48 = bitcast %struct.PyMethodObject* %47 to %struct._object*, !dbg !875
  store %struct._object* %48, %struct._object** %retval, !dbg !876
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !876

cleanup:                                          ; preds = %do.end.36, %if.then.4, %if.then
  %49 = bitcast %struct.PyMethodObject** %im to i8*, !dbg !877
  call void @llvm.lifetime.end(i64 8, i8* %49) #3, !dbg !877
  %50 = load %struct._object*, %struct._object** %retval, !dbg !877
  ret %struct._object* %50, !dbg !877
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @method_dealloc(%struct.PyMethodObject* %im) #0 {
entry:
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im.addr, metadata !432, metadata !694), !dbg !878
  br label %do.body, !dbg !879

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !880
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !880
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !433, metadata !694), !dbg !882
  %1 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !883, !tbaa !690
  %2 = bitcast %struct.PyMethodObject* %1 to %union._gc_head*, !dbg !884
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !885
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !882, !tbaa !690
  br label %do.body.1, !dbg !886

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !887, !tbaa !690
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !890
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !891
  %4 = load i64, i64* %gc_refs, align 8, !dbg !891, !tbaa !820
  %and = and i64 %4, 1, !dbg !892
  %or = or i64 %and, -4, !dbg !893
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !894, !tbaa !690
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !895
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !896
  store i64 %or, i64* %gc_refs3, align 8, !dbg !897, !tbaa !820
  br label %do.cond, !dbg !898

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !899

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !901, !tbaa !690
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !903
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !904
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !904, !tbaa !849
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !905, !tbaa !690
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !906
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !907
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !907, !tbaa !853
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !908
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !909
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !910, !tbaa !849
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !911, !tbaa !690
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !912
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !913
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !913, !tbaa !853
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !914, !tbaa !690
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !915
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !916
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !916, !tbaa !849
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !917
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !918
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !919, !tbaa !853
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !920, !tbaa !690
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !921
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !922
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !923, !tbaa !849
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !924
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !924
  br label %do.end.17, !dbg !925

do.end.17:                                        ; preds = %do.end
  %16 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !926, !tbaa !690
  %im_weakreflist = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %16, i32 0, i32 3, !dbg !928
  %17 = load %struct._object*, %struct._object** %im_weakreflist, align 8, !dbg !928, !tbaa !777
  %cmp = icmp ne %struct._object* %17, null, !dbg !929
  br i1 %cmp, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %do.end.17
  %18 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !931, !tbaa !690
  %19 = bitcast %struct.PyMethodObject* %18 to %struct._object*, !dbg !932
  call void @PyObject_ClearWeakRefs(%struct._object* %19), !dbg !933
  br label %if.end, !dbg !933

if.end:                                           ; preds = %if.then, %do.end.17
  br label %do.body.18, !dbg !934

do.body.18:                                       ; preds = %if.end
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !935
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !935
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !435, metadata !694), !dbg !937
  %21 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !938, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %21, i32 0, i32 1, !dbg !939
  %22 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !939, !tbaa !710
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !937, !tbaa !690
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !940, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !942
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !943, !tbaa !759
  %dec = add i64 %24, -1, !dbg !943
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !943, !tbaa !759
  %cmp19 = icmp ne i64 %dec, 0, !dbg !944
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !945

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.21, !dbg !946

if.else:                                          ; preds = %do.body.18
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !948, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !950
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !950, !tbaa !699
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !951
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !951, !tbaa !952
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !955, !tbaa !690
  call void %27(%struct._object* %28), !dbg !956
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !957
  br label %do.end.23, !dbg !959

do.end.23:                                        ; preds = %if.end.21
  br label %do.body.24, !dbg !960

do.body.24:                                       ; preds = %do.end.23
  %30 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !961
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !961
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !437, metadata !694), !dbg !963
  %31 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !964, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %31, i32 0, i32 2, !dbg !965
  %32 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !965, !tbaa !726
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp, align 8, !dbg !963, !tbaa !690
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !966, !tbaa !690
  %cmp25 = icmp ne %struct._object* %33, null, !dbg !967
  br i1 %cmp25, label %if.then.26, label %if.end.39, !dbg !968

if.then.26:                                       ; preds = %do.body.24
  br label %do.body.27, !dbg !969

do.body.27:                                       ; preds = %if.then.26
  %34 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 8, i8* %34) #3, !dbg !971
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp28, metadata !439, metadata !694), !dbg !973
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !974, !tbaa !690
  store %struct._object* %35, %struct._object** %_py_decref_tmp28, align 8, !dbg !973, !tbaa !690
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !975, !tbaa !690
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !977
  %37 = load i64, i64* %ob_refcnt29, align 8, !dbg !978, !tbaa !759
  %dec30 = add i64 %37, -1, !dbg !978
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !978, !tbaa !759
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !979
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !980

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36, !dbg !981

if.else.33:                                       ; preds = %do.body.27
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !983, !tbaa !690
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !985
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !985, !tbaa !699
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !986
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !986, !tbaa !952
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !987, !tbaa !690
  call void %40(%struct._object* %41), !dbg !988
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %42 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !989
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !989
  br label %do.cond.37, !dbg !991

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !992

do.end.38:                                        ; preds = %do.cond.37
  br label %if.end.39, !dbg !994

if.end.39:                                        ; preds = %do.end.38, %do.body.24
  %43 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !996
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !996
  br label %do.end.41, !dbg !999

do.end.41:                                        ; preds = %if.end.39
  %44 = load i32, i32* @numfree, align 4, !dbg !1000, !tbaa !762
  %cmp42 = icmp slt i32 %44, 256, !dbg !1002
  br i1 %cmp42, label %if.then.43, label %if.else.45, !dbg !1003

if.then.43:                                       ; preds = %do.end.41
  %45 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1004, !tbaa !690
  %46 = bitcast %struct.PyMethodObject* %45 to %struct._object*, !dbg !1006
  %47 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1007, !tbaa !690
  %im_self44 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %47, i32 0, i32 2, !dbg !1008
  store %struct._object* %46, %struct._object** %im_self44, align 8, !dbg !1009, !tbaa !726
  %48 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1010, !tbaa !690
  store %struct.PyMethodObject* %48, %struct.PyMethodObject** @free_list, align 8, !dbg !1011, !tbaa !690
  %49 = load i32, i32* @numfree, align 4, !dbg !1012, !tbaa !762
  %inc = add i32 %49, 1, !dbg !1012
  store i32 %inc, i32* @numfree, align 4, !dbg !1012, !tbaa !762
  br label %if.end.46, !dbg !1013

if.else.45:                                       ; preds = %do.end.41
  %50 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1014, !tbaa !690
  %51 = bitcast %struct.PyMethodObject* %50 to i8*, !dbg !1014
  call void @PyObject_GC_Del(i8* %51), !dbg !1016
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.43
  ret void, !dbg !1017
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_repr(%struct.PyMethodObject* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyMethodObject*, align 8
  %self = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %klass = alloca %struct._object*, align 8
  %funcname = alloca %struct._object*, align 8
  %klassname = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %defname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_xdecref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_xdecref_tmp86 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store %struct.PyMethodObject* %a, %struct.PyMethodObject** %a.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %a.addr, metadata !446, metadata !694), !dbg !1018
  %0 = bitcast %struct._object** %self to i8*, !dbg !1019
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !447, metadata !694), !dbg !1020
  %1 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8, !dbg !1021, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 2, !dbg !1022
  %2 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1022, !tbaa !726
  store %struct._object* %2, %struct._object** %self, align 8, !dbg !1020, !tbaa !690
  %3 = bitcast %struct._object** %func to i8*, !dbg !1023
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1023
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !448, metadata !694), !dbg !1024
  %4 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8, !dbg !1025, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %4, i32 0, i32 1, !dbg !1026
  %5 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1026, !tbaa !710
  store %struct._object* %5, %struct._object** %func, align 8, !dbg !1024, !tbaa !690
  %6 = bitcast %struct._object** %klass to i8*, !dbg !1027
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1027
  call void @llvm.dbg.declare(metadata %struct._object** %klass, metadata !449, metadata !694), !dbg !1028
  %7 = bitcast %struct._object** %funcname to i8*, !dbg !1029
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !1029
  call void @llvm.dbg.declare(metadata %struct._object** %funcname, metadata !450, metadata !694), !dbg !1030
  store %struct._object* null, %struct._object** %funcname, align 8, !dbg !1030, !tbaa !690
  %8 = bitcast %struct._object** %klassname to i8*, !dbg !1029
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !1029
  call void @llvm.dbg.declare(metadata %struct._object** %klassname, metadata !451, metadata !694), !dbg !1031
  store %struct._object* null, %struct._object** %klassname, align 8, !dbg !1031, !tbaa !690
  %9 = bitcast %struct._object** %result to i8*, !dbg !1029
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1029
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !452, metadata !694), !dbg !1032
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1032, !tbaa !690
  %10 = bitcast i8** %defname to i8*, !dbg !1033
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1033
  call void @llvm.dbg.declare(metadata i8** %defname, metadata !453, metadata !694), !dbg !1034
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %defname, align 8, !dbg !1034, !tbaa !690
  %11 = load %struct._object*, %struct._object** %self, align 8, !dbg !1035, !tbaa !690
  %cmp = icmp eq %struct._object* %11, null, !dbg !1037
  br i1 %cmp, label %if.then, label %if.end, !dbg !1038

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 251), !dbg !1039
  store %struct._object* null, %struct._object** %retval, !dbg !1041
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1041

if.end:                                           ; preds = %entry
  %12 = load %struct._object*, %struct._object** %self, align 8, !dbg !1042, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1043
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1043, !tbaa !699
  %14 = bitcast %struct._typeobject* %13 to %struct._object*, !dbg !1044
  store %struct._object* %14, %struct._object** %klass, align 8, !dbg !1045, !tbaa !690
  %15 = load %struct._object*, %struct._object** %func, align 8, !dbg !1046, !tbaa !690
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %15, %struct._Py_Identifier* @PyId___name__), !dbg !1047
  store %struct._object* %call, %struct._object** %funcname, align 8, !dbg !1048, !tbaa !690
  %16 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1049, !tbaa !690
  %cmp1 = icmp eq %struct._object* %16, null, !dbg !1050
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1051

if.then.2:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1052, !tbaa !690
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %17), !dbg !1055
  %tobool = icmp ne i32 %call3, 0, !dbg !1055
  br i1 %tobool, label %if.end.5, label %if.then.4, !dbg !1056

if.then.4:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval, !dbg !1057
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1057

if.end.5:                                         ; preds = %if.then.2
  call void @PyErr_Clear(), !dbg !1058
  br label %if.end.15, !dbg !1059

if.else:                                          ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1060, !tbaa !690
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1061
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1061, !tbaa !699
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !1062
  %20 = load i64, i64* %tp_flags, align 8, !dbg !1062, !tbaa !1063
  %and = and i64 %20, 268435456, !dbg !1064
  %cmp7 = icmp ne i64 %and, 0, !dbg !1065
  br i1 %cmp7, label %if.end.14, label %if.then.8, !dbg !1066

if.then.8:                                        ; preds = %if.else
  br label %do.body, !dbg !1067

do.body:                                          ; preds = %if.then.8
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1068
  call void @llvm.lifetime.start(i64 8, i8* %21) #3, !dbg !1068
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !454, metadata !694), !dbg !1070
  %22 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1071, !tbaa !690
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !1070, !tbaa !690
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1072, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1074
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !1075, !tbaa !759
  %dec = add i64 %24, -1, !dbg !1075
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1075, !tbaa !759
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1076
  br i1 %cmp9, label %if.then.10, label %if.else.11, !dbg !1077

if.then.10:                                       ; preds = %do.body
  br label %if.end.13, !dbg !1078

if.else.11:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1080, !tbaa !690
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1082
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1082, !tbaa !699
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1083
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1083, !tbaa !952
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1084, !tbaa !690
  call void %27(%struct._object* %28), !dbg !1085
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1086
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1086
  br label %do.cond, !dbg !1088

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1089

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %funcname, align 8, !dbg !1091, !tbaa !690
  br label %if.end.14, !dbg !1092

if.end.14:                                        ; preds = %do.end, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.5
  %30 = load %struct._object*, %struct._object** %klass, align 8, !dbg !1093, !tbaa !690
  %cmp16 = icmp eq %struct._object* %30, null, !dbg !1094
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !1095

if.then.17:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %klassname, align 8, !dbg !1096, !tbaa !690
  br label %if.end.64, !dbg !1097

if.else.18:                                       ; preds = %if.end.15
  %31 = load %struct._object*, %struct._object** %klass, align 8, !dbg !1098, !tbaa !690
  %call19 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %31, %struct._Py_Identifier* @PyId___name__), !dbg !1099
  store %struct._object* %call19, %struct._object** %klassname, align 8, !dbg !1100, !tbaa !690
  %32 = load %struct._object*, %struct._object** %klassname, align 8, !dbg !1101, !tbaa !690
  %cmp20 = icmp eq %struct._object* %32, null, !dbg !1102
  br i1 %cmp20, label %if.then.21, label %if.else.44, !dbg !1103

if.then.21:                                       ; preds = %if.else.18
  %33 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1104, !tbaa !690
  %call22 = call i32 @PyErr_ExceptionMatches(%struct._object* %33), !dbg !1105
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1105
  br i1 %tobool23, label %if.end.43, label %if.then.24, !dbg !1106

if.then.24:                                       ; preds = %if.then.21
  br label %do.body.25, !dbg !1107

do.body.25:                                       ; preds = %if.then.24
  %34 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1108
  call void @llvm.lifetime.start(i64 8, i8* %34) #3, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !459, metadata !694), !dbg !1110
  %35 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1111, !tbaa !690
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1110, !tbaa !690
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1112, !tbaa !690
  %cmp26 = icmp ne %struct._object* %36, null, !dbg !1113
  br i1 %cmp26, label %if.then.27, label %if.end.40, !dbg !1114

if.then.27:                                       ; preds = %do.body.25
  br label %do.body.28, !dbg !1115

do.body.28:                                       ; preds = %if.then.27
  %37 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !1117
  call void @llvm.lifetime.start(i64 8, i8* %37) #3, !dbg !1117
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp29, metadata !467, metadata !694), !dbg !1119
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1120, !tbaa !690
  store %struct._object* %38, %struct._object** %_py_decref_tmp29, align 8, !dbg !1119, !tbaa !690
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !1121, !tbaa !690
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !1123
  %40 = load i64, i64* %ob_refcnt30, align 8, !dbg !1124, !tbaa !759
  %dec31 = add i64 %40, -1, !dbg !1124
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !1124, !tbaa !759
  %cmp32 = icmp ne i64 %dec31, 0, !dbg !1125
  br i1 %cmp32, label %if.then.33, label %if.else.34, !dbg !1126

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37, !dbg !1127

if.else.34:                                       ; preds = %do.body.28
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !1129, !tbaa !690
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1131
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1131, !tbaa !699
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !1132
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !1132, !tbaa !952
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !1133, !tbaa !690
  call void %43(%struct._object* %44), !dbg !1134
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  %45 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !1135
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !1135
  br label %do.cond.38, !dbg !1137

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !1138

do.end.39:                                        ; preds = %do.cond.38
  br label %if.end.40, !dbg !1140

if.end.40:                                        ; preds = %do.end.39, %do.body.25
  %46 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %46) #3, !dbg !1142
  br label %do.cond.41, !dbg !1145

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !1146

do.end.42:                                        ; preds = %do.cond.41
  store %struct._object* null, %struct._object** %retval, !dbg !1148
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1148

if.end.43:                                        ; preds = %if.then.21
  call void @PyErr_Clear(), !dbg !1149
  br label %if.end.63, !dbg !1150

if.else.44:                                       ; preds = %if.else.18
  %47 = load %struct._object*, %struct._object** %klassname, align 8, !dbg !1151, !tbaa !690
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1152
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1152, !tbaa !699
  %tp_flags46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 19, !dbg !1153
  %49 = load i64, i64* %tp_flags46, align 8, !dbg !1153, !tbaa !1063
  %and47 = and i64 %49, 268435456, !dbg !1154
  %cmp48 = icmp ne i64 %and47, 0, !dbg !1155
  br i1 %cmp48, label %if.end.62, label %if.then.49, !dbg !1156

if.then.49:                                       ; preds = %if.else.44
  br label %do.body.50, !dbg !1157

do.body.50:                                       ; preds = %if.then.49
  %50 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !1158
  call void @llvm.lifetime.start(i64 8, i8* %50) #3, !dbg !1158
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !470, metadata !694), !dbg !1160
  %51 = load %struct._object*, %struct._object** %klassname, align 8, !dbg !1161, !tbaa !690
  store %struct._object* %51, %struct._object** %_py_decref_tmp51, align 8, !dbg !1160, !tbaa !690
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1162, !tbaa !690
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !1164
  %53 = load i64, i64* %ob_refcnt52, align 8, !dbg !1165, !tbaa !759
  %dec53 = add i64 %53, -1, !dbg !1165
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !1165, !tbaa !759
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !1166
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !1167

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !1168

if.else.56:                                       ; preds = %do.body.50
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1170, !tbaa !690
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !1172
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1172, !tbaa !699
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !1173
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !1173, !tbaa !952
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1174, !tbaa !690
  call void %56(%struct._object* %57), !dbg !1175
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %58 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !1176
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !1176
  br label %do.cond.60, !dbg !1178

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !1179

do.end.61:                                        ; preds = %do.cond.60
  store %struct._object* null, %struct._object** %klassname, align 8, !dbg !1181, !tbaa !690
  br label %if.end.62, !dbg !1182

if.end.62:                                        ; preds = %do.end.61, %if.else.44
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.43
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.17
  %59 = load %struct._object*, %struct._object** %klassname, align 8, !dbg !1183, !tbaa !690
  %60 = load i8*, i8** %defname, align 8, !dbg !1184, !tbaa !690
  %61 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1185, !tbaa !690
  %62 = load i8*, i8** %defname, align 8, !dbg !1186, !tbaa !690
  %63 = load %struct._object*, %struct._object** %self, align 8, !dbg !1187, !tbaa !690
  %call65 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %struct._object* %59, i8* %60, %struct._object* %61, i8* %62, %struct._object* %63), !dbg !1188
  store %struct._object* %call65, %struct._object** %result, align 8, !dbg !1189, !tbaa !690
  br label %do.body.66, !dbg !1190

do.body.66:                                       ; preds = %if.end.64
  %64 = bitcast %struct._object** %_py_xdecref_tmp67 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 8, i8* %64) #3, !dbg !1191
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp67, metadata !474, metadata !694), !dbg !1193
  %65 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1194, !tbaa !690
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp67, align 8, !dbg !1193, !tbaa !690
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp67, align 8, !dbg !1195, !tbaa !690
  %cmp68 = icmp ne %struct._object* %66, null, !dbg !1196
  br i1 %cmp68, label %if.then.69, label %if.end.82, !dbg !1197

if.then.69:                                       ; preds = %do.body.66
  br label %do.body.70, !dbg !1198

do.body.70:                                       ; preds = %if.then.69
  %67 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1200
  call void @llvm.lifetime.start(i64 8, i8* %67) #3, !dbg !1200
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp71, metadata !476, metadata !694), !dbg !1202
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp67, align 8, !dbg !1203, !tbaa !690
  store %struct._object* %68, %struct._object** %_py_decref_tmp71, align 8, !dbg !1202, !tbaa !690
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1204, !tbaa !690
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !1206
  %70 = load i64, i64* %ob_refcnt72, align 8, !dbg !1207, !tbaa !759
  %dec73 = add i64 %70, -1, !dbg !1207
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !1207, !tbaa !759
  %cmp74 = icmp ne i64 %dec73, 0, !dbg !1208
  br i1 %cmp74, label %if.then.75, label %if.else.76, !dbg !1209

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79, !dbg !1210

if.else.76:                                       ; preds = %do.body.70
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1212, !tbaa !690
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !1214
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !1214, !tbaa !699
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !1215
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !1215, !tbaa !952
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1216, !tbaa !690
  call void %73(%struct._object* %74), !dbg !1217
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  %75 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1218
  call void @llvm.lifetime.end(i64 8, i8* %75) #3, !dbg !1218
  br label %do.cond.80, !dbg !1220

do.cond.80:                                       ; preds = %if.end.79
  br label %do.end.81, !dbg !1221

do.end.81:                                        ; preds = %do.cond.80
  br label %if.end.82, !dbg !1223

if.end.82:                                        ; preds = %do.end.81, %do.body.66
  %76 = bitcast %struct._object** %_py_xdecref_tmp67 to i8*, !dbg !1225
  call void @llvm.lifetime.end(i64 8, i8* %76) #3, !dbg !1225
  br label %do.cond.83, !dbg !1228

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1229

do.end.84:                                        ; preds = %do.cond.83
  br label %do.body.85, !dbg !1231

do.body.85:                                       ; preds = %do.end.84
  %77 = bitcast %struct._object** %_py_xdecref_tmp86 to i8*, !dbg !1232
  call void @llvm.lifetime.start(i64 8, i8* %77) #3, !dbg !1232
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp86, metadata !479, metadata !694), !dbg !1234
  %78 = load %struct._object*, %struct._object** %klassname, align 8, !dbg !1235, !tbaa !690
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp86, align 8, !dbg !1234, !tbaa !690
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp86, align 8, !dbg !1236, !tbaa !690
  %cmp87 = icmp ne %struct._object* %79, null, !dbg !1237
  br i1 %cmp87, label %if.then.88, label %if.end.101, !dbg !1238

if.then.88:                                       ; preds = %do.body.85
  br label %do.body.89, !dbg !1239

do.body.89:                                       ; preds = %if.then.88
  %80 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !1241
  call void @llvm.lifetime.start(i64 8, i8* %80) #3, !dbg !1241
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp90, metadata !481, metadata !694), !dbg !1243
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp86, align 8, !dbg !1244, !tbaa !690
  store %struct._object* %81, %struct._object** %_py_decref_tmp90, align 8, !dbg !1243, !tbaa !690
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1245, !tbaa !690
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0, !dbg !1247
  %83 = load i64, i64* %ob_refcnt91, align 8, !dbg !1248, !tbaa !759
  %dec92 = add i64 %83, -1, !dbg !1248
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !1248, !tbaa !759
  %cmp93 = icmp ne i64 %dec92, 0, !dbg !1249
  br i1 %cmp93, label %if.then.94, label %if.else.95, !dbg !1250

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98, !dbg !1251

if.else.95:                                       ; preds = %do.body.89
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1253, !tbaa !690
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1, !dbg !1255
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !1255, !tbaa !699
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4, !dbg !1256
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !1256, !tbaa !952
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1257, !tbaa !690
  call void %86(%struct._object* %87), !dbg !1258
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  %88 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !1259
  call void @llvm.lifetime.end(i64 8, i8* %88) #3, !dbg !1259
  br label %do.cond.99, !dbg !1261

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100, !dbg !1262

do.end.100:                                       ; preds = %do.cond.99
  br label %if.end.101, !dbg !1264

if.end.101:                                       ; preds = %do.end.100, %do.body.85
  %89 = bitcast %struct._object** %_py_xdecref_tmp86 to i8*, !dbg !1266
  call void @llvm.lifetime.end(i64 8, i8* %89) #3, !dbg !1266
  br label %do.cond.102, !dbg !1267

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103, !dbg !1268

do.end.103:                                       ; preds = %do.cond.102
  %90 = load %struct._object*, %struct._object** %result, align 8, !dbg !1270, !tbaa !690
  store %struct._object* %90, %struct._object** %retval, !dbg !1271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1271

cleanup:                                          ; preds = %do.end.103, %do.end.42, %if.then.4, %if.then
  %91 = bitcast i8** %defname to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %91) #3, !dbg !1272
  %92 = bitcast %struct._object** %result to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %92) #3, !dbg !1272
  %93 = bitcast %struct._object** %klassname to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %93) #3, !dbg !1272
  %94 = bitcast %struct._object** %funcname to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %94) #3, !dbg !1272
  %95 = bitcast %struct._object** %klass to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %95) #3, !dbg !1272
  %96 = bitcast %struct._object** %func to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %96) #3, !dbg !1272
  %97 = bitcast %struct._object** %self to i8*, !dbg !1272
  call void @llvm.lifetime.end(i64 8, i8* %97) #3, !dbg !1272
  %98 = load %struct._object*, %struct._object** %retval, !dbg !1272
  ret %struct._object* %98, !dbg !1272
}

; Function Attrs: nounwind uwtable
define internal i64 @method_hash(%struct.PyMethodObject* %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca %struct.PyMethodObject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyMethodObject* %a, %struct.PyMethodObject** %a.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %a.addr, metadata !488, metadata !694), !dbg !1273
  %0 = bitcast i64* %x to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1274
  call void @llvm.dbg.declare(metadata i64* %x, metadata !489, metadata !694), !dbg !1275
  %1 = bitcast i64* %y to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1274
  call void @llvm.dbg.declare(metadata i64* %y, metadata !490, metadata !694), !dbg !1276
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8, !dbg !1277, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 2, !dbg !1279
  %3 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1279, !tbaa !726
  %cmp = icmp eq %struct._object* %3, null, !dbg !1280
  br i1 %cmp, label %if.then, label %if.else, !dbg !1281

if.then:                                          ; preds = %entry
  %call = call i64 @PyObject_Hash(%struct._object* @_Py_NoneStruct), !dbg !1282
  store i64 %call, i64* %x, align 8, !dbg !1283, !tbaa !1284
  br label %if.end, !dbg !1285

if.else:                                          ; preds = %entry
  %4 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8, !dbg !1286, !tbaa !690
  %im_self1 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %4, i32 0, i32 2, !dbg !1287
  %5 = load %struct._object*, %struct._object** %im_self1, align 8, !dbg !1287, !tbaa !726
  %call2 = call i64 @PyObject_Hash(%struct._object* %5), !dbg !1288
  store i64 %call2, i64* %x, align 8, !dbg !1289, !tbaa !1284
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %x, align 8, !dbg !1290, !tbaa !1284
  %cmp3 = icmp eq i64 %6, -1, !dbg !1292
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1293

if.then.4:                                        ; preds = %if.end
  store i64 -1, i64* %retval, !dbg !1294
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1294

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8, !dbg !1295, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %7, i32 0, i32 1, !dbg !1296
  %8 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1296, !tbaa !710
  %call6 = call i64 @PyObject_Hash(%struct._object* %8), !dbg !1297
  store i64 %call6, i64* %y, align 8, !dbg !1298, !tbaa !1284
  %9 = load i64, i64* %y, align 8, !dbg !1299, !tbaa !1284
  %cmp7 = icmp eq i64 %9, -1, !dbg !1301
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1302

if.then.8:                                        ; preds = %if.end.5
  store i64 -1, i64* %retval, !dbg !1303
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1303

if.end.9:                                         ; preds = %if.end.5
  %10 = load i64, i64* %x, align 8, !dbg !1304, !tbaa !1284
  %11 = load i64, i64* %y, align 8, !dbg !1305, !tbaa !1284
  %xor = xor i64 %10, %11, !dbg !1306
  store i64 %xor, i64* %x, align 8, !dbg !1307, !tbaa !1284
  %12 = load i64, i64* %x, align 8, !dbg !1308, !tbaa !1284
  %cmp10 = icmp eq i64 %12, -1, !dbg !1310
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1311

if.then.11:                                       ; preds = %if.end.9
  store i64 -2, i64* %x, align 8, !dbg !1312, !tbaa !1284
  br label %if.end.12, !dbg !1313

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %13 = load i64, i64* %x, align 8, !dbg !1314, !tbaa !1284
  store i64 %13, i64* %retval, !dbg !1315
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1315

cleanup:                                          ; preds = %if.end.12, %if.then.8, %if.then.4
  %14 = bitcast i64* %y to i8*, !dbg !1316
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1316
  %15 = bitcast i64* %x to i8*, !dbg !1316
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1316
  %16 = load i64, i64* %retval, !dbg !1316
  ret i64 %16, !dbg !1316
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_call(%struct._object* %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %argcount = alloca i64, align 8
  %newarg = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !493, metadata !694), !dbg !1317
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !494, metadata !694), !dbg !1318
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !495, metadata !694), !dbg !1319
  %0 = bitcast %struct._object** %self to i8*, !dbg !1320
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1320
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !496, metadata !694), !dbg !1321
  %1 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !1322, !tbaa !690
  %2 = bitcast %struct._object* %1 to %struct.PyMethodObject*, !dbg !1323
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 2, !dbg !1324
  %3 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1324, !tbaa !726
  store %struct._object* %3, %struct._object** %self, align 8, !dbg !1321, !tbaa !690
  %4 = bitcast %struct._object** %result to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1325
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !497, metadata !694), !dbg !1326
  %5 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !1327, !tbaa !690
  %6 = bitcast %struct._object* %5 to %struct.PyMethodObject*, !dbg !1328
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %6, i32 0, i32 1, !dbg !1329
  %7 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1329, !tbaa !710
  store %struct._object* %7, %struct._object** %func.addr, align 8, !dbg !1330, !tbaa !690
  %8 = load %struct._object*, %struct._object** %self, align 8, !dbg !1331, !tbaa !690
  %cmp = icmp eq %struct._object* %8, null, !dbg !1332
  br i1 %cmp, label %if.then, label %if.else, !dbg !1333

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 329), !dbg !1334
  store %struct._object* null, %struct._object** %retval, !dbg !1336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32, !dbg !1336

if.else:                                          ; preds = %entry
  %9 = bitcast i64* %argcount to i8*, !dbg !1337
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1337
  call void @llvm.dbg.declare(metadata i64* %argcount, metadata !498, metadata !694), !dbg !1338
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1339, !tbaa !690
  %call = call i64 @PyTuple_Size(%struct._object* %10), !dbg !1340
  store i64 %call, i64* %argcount, align 8, !dbg !1338, !tbaa !1284
  %11 = bitcast %struct._object** %newarg to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !1341
  call void @llvm.dbg.declare(metadata %struct._object** %newarg, metadata !501, metadata !694), !dbg !1342
  %12 = load i64, i64* %argcount, align 8, !dbg !1343, !tbaa !1284
  %add = add i64 %12, 1, !dbg !1344
  %call1 = call %struct._object* @PyTuple_New(i64 %add), !dbg !1345
  store %struct._object* %call1, %struct._object** %newarg, align 8, !dbg !1342, !tbaa !690
  %13 = bitcast i32* %i to i8*, !dbg !1346
  call void @llvm.lifetime.start(i64 4, i8* %13) #3, !dbg !1346
  call void @llvm.dbg.declare(metadata i32* %i, metadata !502, metadata !694), !dbg !1347
  %14 = load %struct._object*, %struct._object** %newarg, align 8, !dbg !1348, !tbaa !690
  %cmp2 = icmp eq %struct._object* %14, null, !dbg !1350
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !1351

if.then.3:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !1352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1352

if.end:                                           ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %self, align 8, !dbg !1353, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1354
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1355, !tbaa !759
  %inc = add i64 %16, 1, !dbg !1355
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1355, !tbaa !759
  %17 = load %struct._object*, %struct._object** %self, align 8, !dbg !1356, !tbaa !690
  %18 = load %struct._object*, %struct._object** %newarg, align 8, !dbg !1357, !tbaa !690
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*, !dbg !1358
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1, !dbg !1359
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1360
  store %struct._object* %17, %struct._object** %arrayidx, align 8, !dbg !1361, !tbaa !690
  store i32 0, i32* %i, align 4, !dbg !1362, !tbaa !762
  br label %for.cond, !dbg !1363

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !dbg !1364, !tbaa !762
  %conv = sext i32 %20 to i64, !dbg !1364
  %21 = load i64, i64* %argcount, align 8, !dbg !1367, !tbaa !1284
  %cmp4 = icmp slt i64 %conv, %21, !dbg !1368
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1369

for.body:                                         ; preds = %for.cond
  %22 = bitcast %struct._object** %v to i8*, !dbg !1370
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !1370
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !503, metadata !694), !dbg !1371
  %23 = load i32, i32* %i, align 4, !dbg !1372, !tbaa !762
  %idxprom = sext i32 %23 to i64, !dbg !1373
  %24 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1374, !tbaa !690
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*, !dbg !1375
  %ob_item6 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1, !dbg !1376
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item6, i32 0, i64 %idxprom, !dbg !1373
  %26 = load %struct._object*, %struct._object** %arrayidx7, align 8, !dbg !1373, !tbaa !690
  store %struct._object* %26, %struct._object** %v, align 8, !dbg !1371, !tbaa !690
  br label %do.body, !dbg !1377

do.body:                                          ; preds = %for.body
  %27 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1378
  call void @llvm.lifetime.start(i64 8, i8* %27) #3, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !507, metadata !694), !dbg !1380
  %28 = load %struct._object*, %struct._object** %v, align 8, !dbg !1381, !tbaa !690
  store %struct._object* %28, %struct._object** %_py_xincref_tmp, align 8, !dbg !1380, !tbaa !690
  %29 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1382, !tbaa !690
  %cmp8 = icmp ne %struct._object* %29, null, !dbg !1384
  br i1 %cmp8, label %if.then.10, label %if.end.13, !dbg !1385

if.then.10:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1386, !tbaa !690
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1388
  %31 = load i64, i64* %ob_refcnt11, align 8, !dbg !1389, !tbaa !759
  %inc12 = add i64 %31, 1, !dbg !1389
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !1389, !tbaa !759
  br label %if.end.13, !dbg !1390

if.end.13:                                        ; preds = %if.then.10, %do.body
  %32 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1391
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1391
  br label %do.cond, !dbg !1394

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1395

do.end:                                           ; preds = %do.cond
  %33 = load %struct._object*, %struct._object** %v, align 8, !dbg !1397, !tbaa !690
  %34 = load i32, i32* %i, align 4, !dbg !1398, !tbaa !762
  %add14 = add i32 %34, 1, !dbg !1399
  %idxprom15 = sext i32 %add14 to i64, !dbg !1400
  %35 = load %struct._object*, %struct._object** %newarg, align 8, !dbg !1401, !tbaa !690
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*, !dbg !1402
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1, !dbg !1403
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 %idxprom15, !dbg !1400
  store %struct._object* %33, %struct._object** %arrayidx17, align 8, !dbg !1404, !tbaa !690
  %37 = bitcast %struct._object** %v to i8*, !dbg !1405
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !1405
  br label %for.inc, !dbg !1406

for.inc:                                          ; preds = %do.end
  %38 = load i32, i32* %i, align 4, !dbg !1407, !tbaa !762
  %inc18 = add i32 %38, 1, !dbg !1407
  store i32 %inc18, i32* %i, align 4, !dbg !1407, !tbaa !762
  br label %for.cond, !dbg !1408

for.end:                                          ; preds = %for.cond
  %39 = load %struct._object*, %struct._object** %newarg, align 8, !dbg !1409, !tbaa !690
  store %struct._object* %39, %struct._object** %arg.addr, align 8, !dbg !1410, !tbaa !690
  store i32 0, i32* %cleanup.dest.slot, !dbg !1411
  br label %cleanup, !dbg !1411

cleanup:                                          ; preds = %for.end, %if.then.3
  %40 = bitcast i32* %i to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %40) #3, !dbg !1412
  %41 = bitcast %struct._object** %newarg to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1412
  %42 = bitcast i64* %argcount to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !1412
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont
  %43 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !1414, !tbaa !690
  %44 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1415, !tbaa !690
  %45 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1416, !tbaa !690
  %call22 = call %struct._object* @PyObject_Call(%struct._object* %43, %struct._object* %44, %struct._object* %45), !dbg !1417
  store %struct._object* %call22, %struct._object** %result, align 8, !dbg !1418, !tbaa !690
  br label %do.body.23, !dbg !1419

do.body.23:                                       ; preds = %if.end.21
  %46 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !1420
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !509, metadata !694), !dbg !1422
  %47 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1423, !tbaa !690
  store %struct._object* %47, %struct._object** %_py_decref_tmp, align 8, !dbg !1422, !tbaa !690
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1424, !tbaa !690
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !1426
  %49 = load i64, i64* %ob_refcnt24, align 8, !dbg !1427, !tbaa !759
  %dec = add i64 %49, -1, !dbg !1427
  store i64 %dec, i64* %ob_refcnt24, align 8, !dbg !1427, !tbaa !759
  %cmp25 = icmp ne i64 %dec, 0, !dbg !1428
  br i1 %cmp25, label %if.then.27, label %if.else.28, !dbg !1429

if.then.27:                                       ; preds = %do.body.23
  br label %if.end.29, !dbg !1430

if.else.28:                                       ; preds = %do.body.23
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1432, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !1434
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1434, !tbaa !699
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !1435
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1435, !tbaa !952
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1436, !tbaa !690
  call void %52(%struct._object* %53), !dbg !1437
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  %54 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1438
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !1438
  br label %do.cond.30, !dbg !1440

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !1441

do.end.31:                                        ; preds = %do.cond.30
  %55 = load %struct._object*, %struct._object** %result, align 8, !dbg !1443, !tbaa !690
  store %struct._object* %55, %struct._object** %retval, !dbg !1444
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32, !dbg !1444

cleanup.32:                                       ; preds = %do.end.31, %cleanup, %if.then
  %56 = bitcast %struct._object** %result to i8*, !dbg !1445
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !1445
  %57 = bitcast %struct._object** %self to i8*, !dbg !1445
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !1445
  %58 = load %struct._object*, %struct._object** %retval, !dbg !1445
  ret %struct._object* %58, !dbg !1445
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_getattro(%struct._object* %obj, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %im = alloca %struct.PyMethodObject*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %descr = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %f = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !513, metadata !694), !dbg !1446
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !514, metadata !694), !dbg !1447
  %0 = bitcast %struct.PyMethodObject** %im to i8*, !dbg !1448
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1448
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im, metadata !515, metadata !694), !dbg !1449
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1450, !tbaa !690
  %2 = bitcast %struct._object* %1 to %struct.PyMethodObject*, !dbg !1451
  store %struct.PyMethodObject* %2, %struct.PyMethodObject** %im, align 8, !dbg !1449, !tbaa !690
  %3 = bitcast %struct._typeobject** %tp to i8*, !dbg !1452
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1452
  call void @llvm.dbg.declare(metadata %struct._typeobject** %tp, metadata !516, metadata !694), !dbg !1453
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1454, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1455
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1455, !tbaa !699
  store %struct._typeobject* %5, %struct._typeobject** %tp, align 8, !dbg !1453, !tbaa !690
  %6 = bitcast %struct._object** %descr to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1456
  call void @llvm.dbg.declare(metadata %struct._object** %descr, metadata !519, metadata !694), !dbg !1457
  store %struct._object* null, %struct._object** %descr, align 8, !dbg !1457, !tbaa !690
  %7 = load %struct._typeobject*, %struct._typeobject** %tp, align 8, !dbg !1458, !tbaa !690
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 31, !dbg !1461
  %8 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1461, !tbaa !1462
  %cmp = icmp eq %struct._object* %8, null, !dbg !1463
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1464

if.then:                                          ; preds = %entry
  %9 = load %struct._typeobject*, %struct._typeobject** %tp, align 8, !dbg !1465, !tbaa !690
  %call = call i32 @PyType_Ready(%struct._typeobject* %9), !dbg !1468
  %cmp1 = icmp slt i32 %call, 0, !dbg !1469
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1470

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1471
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1471

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !1472

if.end.3:                                         ; preds = %if.end, %entry
  %10 = load %struct._typeobject*, %struct._typeobject** %tp, align 8, !dbg !1473, !tbaa !690
  %11 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1474, !tbaa !690
  %call4 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %10, %struct._object* %11), !dbg !1475
  store %struct._object* %call4, %struct._object** %descr, align 8, !dbg !1476, !tbaa !690
  %12 = load %struct._object*, %struct._object** %descr, align 8, !dbg !1477, !tbaa !690
  %cmp5 = icmp ne %struct._object* %12, null, !dbg !1478
  br i1 %cmp5, label %if.then.6, label %if.end.12, !dbg !1479

if.then.6:                                        ; preds = %if.end.3
  %13 = bitcast %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, metadata !520, metadata !694), !dbg !1481
  %14 = load %struct._object*, %struct._object** %descr, align 8, !dbg !1482, !tbaa !690
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1483
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1483, !tbaa !699
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 32, !dbg !1484
  %16 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8, !dbg !1484, !tbaa !1485
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %16, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8, !dbg !1481, !tbaa !690
  %17 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8, !dbg !1486, !tbaa !690
  %cmp8 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %17, null, !dbg !1488
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1489

if.then.9:                                        ; preds = %if.then.6
  %18 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8, !dbg !1490, !tbaa !690
  %19 = load %struct._object*, %struct._object** %descr, align 8, !dbg !1491, !tbaa !690
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1492, !tbaa !690
  %21 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1493, !tbaa !690
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1494
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1494, !tbaa !699
  %23 = bitcast %struct._typeobject* %22 to %struct._object*, !dbg !1495
  %call11 = call %struct._object* %18(%struct._object* %19, %struct._object* %20, %struct._object* %23), !dbg !1490
  store %struct._object* %call11, %struct._object** %retval, !dbg !1496
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1496

if.else:                                          ; preds = %if.then.6
  %24 = load %struct._object*, %struct._object** %descr, align 8, !dbg !1497, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1499
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1500, !tbaa !759
  %inc = add i64 %25, 1, !dbg !1500
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1500, !tbaa !759
  %26 = load %struct._object*, %struct._object** %descr, align 8, !dbg !1501, !tbaa !690
  store %struct._object* %26, %struct._object** %retval, !dbg !1502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1502

cleanup:                                          ; preds = %if.else, %if.then.9
  %27 = bitcast %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f to i8*, !dbg !1503
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1503
  br label %cleanup.14

if.end.12:                                        ; preds = %if.end.3
  %28 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !1504, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %28, i32 0, i32 1, !dbg !1505
  %29 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1505, !tbaa !710
  %30 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1506, !tbaa !690
  %call13 = call %struct._object* @PyObject_GetAttr(%struct._object* %29, %struct._object* %30), !dbg !1507
  store %struct._object* %call13, %struct._object** %retval, !dbg !1508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1508

cleanup.14:                                       ; preds = %if.end.12, %cleanup, %if.then.2
  %31 = bitcast %struct._object** %descr to i8*, !dbg !1509
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !1509
  %32 = bitcast %struct._typeobject** %tp to i8*, !dbg !1509
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1509
  %33 = bitcast %struct.PyMethodObject** %im to i8*, !dbg !1509
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !1509
  %34 = load %struct._object*, %struct._object** %retval, !dbg !1509
  ret %struct._object* %34, !dbg !1509
}

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @method_traverse(%struct.PyMethodObject* %im, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im.addr, metadata !527, metadata !694), !dbg !1510
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !528, metadata !694), !dbg !1511
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !529, metadata !694), !dbg !1512
  br label %do.body, !dbg !1513

do.body:                                          ; preds = %entry
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1514, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i32 0, i32 1, !dbg !1516
  %1 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1516, !tbaa !710
  %tobool = icmp ne %struct._object* %1, null, !dbg !1517
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1518

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1519
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1519
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !530, metadata !694), !dbg !1521
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1522, !tbaa !690
  %4 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1523, !tbaa !690
  %im_func1 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %4, i32 0, i32 1, !dbg !1524
  %5 = load %struct._object*, %struct._object** %im_func1, align 8, !dbg !1524, !tbaa !710
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1525, !tbaa !690
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1522
  store i32 %call, i32* %vret, align 4, !dbg !1521, !tbaa !762
  %7 = load i32, i32* %vret, align 4, !dbg !1526, !tbaa !762
  %tobool2 = icmp ne i32 %7, 0, !dbg !1526
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1528

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1529, !tbaa !762
  store i32 %8, i32* %retval, !dbg !1531
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1531

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1532
  br label %cleanup, !dbg !1532

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1534
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !1534
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1537

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1538

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !1541

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1542, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %10, i32 0, i32 2, !dbg !1544
  %11 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1544, !tbaa !726
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !1545
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !1546

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !1547
  call void @llvm.lifetime.start(i64 4, i8* %12) #3, !dbg !1547
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !534, metadata !694), !dbg !1549
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1550, !tbaa !690
  %14 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !1551, !tbaa !690
  %im_self9 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %14, i32 0, i32 2, !dbg !1552
  %15 = load %struct._object*, %struct._object** %im_self9, align 8, !dbg !1552, !tbaa !726
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !1553, !tbaa !690
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !1550
  store i32 %call10, i32* %vret8, align 4, !dbg !1549, !tbaa !762
  %17 = load i32, i32* %vret8, align 4, !dbg !1554, !tbaa !762
  %tobool11 = icmp ne i32 %17, 0, !dbg !1554
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !1556

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !1557, !tbaa !762
  store i32 %18, i32* %retval, !dbg !1559
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1559

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !1560
  br label %cleanup.14, !dbg !1560

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !1562
  call void @llvm.lifetime.end(i64 4, i8* %19) #3, !dbg !1562
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !1565

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !1566

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !1569
  br label %return, !dbg !1569

return:                                           ; preds = %do.end.18, %cleanup.14, %cleanup
  %20 = load i32, i32* %retval, !dbg !1570
  ret i32 %20, !dbg !1570

unreachable:                                      ; preds = %cleanup.14, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %a = alloca %struct.PyMethodObject*, align 8
  %b = alloca %struct.PyMethodObject*, align 8
  %res = alloca %struct._object*, align 8
  %eq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !540, metadata !694), !dbg !1571
  store %struct._object* %other, %struct._object** %other.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %other.addr, metadata !541, metadata !694), !dbg !1572
  store i32 %op, i32* %op.addr, align 4, !tbaa !762
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !542, metadata !694), !dbg !1573
  %0 = bitcast %struct.PyMethodObject** %a to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1574
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %a, metadata !543, metadata !694), !dbg !1575
  %1 = bitcast %struct.PyMethodObject** %b to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1574
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %b, metadata !544, metadata !694), !dbg !1576
  %2 = bitcast %struct._object** %res to i8*, !dbg !1577
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1577
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !545, metadata !694), !dbg !1578
  %3 = bitcast i32* %eq to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !1579
  call void @llvm.dbg.declare(metadata i32* %eq, metadata !546, metadata !694), !dbg !1580
  %4 = load i32, i32* %op.addr, align 4, !dbg !1581, !tbaa !762
  %cmp = icmp ne i32 %4, 2, !dbg !1583
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1584

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %op.addr, align 4, !dbg !1585, !tbaa !762
  %cmp1 = icmp ne i32 %5, 3, !dbg !1587
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1588

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1589, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1590
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1590, !tbaa !699
  %cmp2 = icmp eq %struct._typeobject* %7, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !1591
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !1592

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1593, !tbaa !690
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1594
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1594, !tbaa !699
  %cmp5 = icmp eq %struct._typeobject* %9, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), !dbg !1595
  br i1 %cmp5, label %if.end, label %if.then, !dbg !1596

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1597, !tbaa !759
  %inc = add i64 %10, 1, !dbg !1597
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1597, !tbaa !759
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1599

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1600, !tbaa !690
  %12 = bitcast %struct._object* %11 to %struct.PyMethodObject*, !dbg !1601
  store %struct.PyMethodObject* %12, %struct.PyMethodObject** %a, align 8, !dbg !1602, !tbaa !690
  %13 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1603, !tbaa !690
  %14 = bitcast %struct._object* %13 to %struct.PyMethodObject*, !dbg !1604
  store %struct.PyMethodObject* %14, %struct.PyMethodObject** %b, align 8, !dbg !1605, !tbaa !690
  %15 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8, !dbg !1606, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %15, i32 0, i32 1, !dbg !1607
  %16 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1607, !tbaa !710
  %17 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8, !dbg !1608, !tbaa !690
  %im_func6 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %17, i32 0, i32 1, !dbg !1609
  %18 = load %struct._object*, %struct._object** %im_func6, align 8, !dbg !1609, !tbaa !710
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %16, %struct._object* %18, i32 2), !dbg !1610
  store i32 %call, i32* %eq, align 4, !dbg !1611, !tbaa !762
  %19 = load i32, i32* %eq, align 4, !dbg !1612, !tbaa !762
  %cmp7 = icmp eq i32 %19, 1, !dbg !1614
  br i1 %cmp7, label %if.then.8, label %if.end.21, !dbg !1615

if.then.8:                                        ; preds = %if.end
  %20 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8, !dbg !1616, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %20, i32 0, i32 2, !dbg !1619
  %21 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1619, !tbaa !726
  %cmp9 = icmp eq %struct._object* %21, null, !dbg !1620
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.10, !dbg !1621

lor.lhs.false.10:                                 ; preds = %if.then.8
  %22 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8, !dbg !1622, !tbaa !690
  %im_self11 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %22, i32 0, i32 2, !dbg !1624
  %23 = load %struct._object*, %struct._object** %im_self11, align 8, !dbg !1624, !tbaa !726
  %cmp12 = icmp eq %struct._object* %23, null, !dbg !1625
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !1626

if.then.13:                                       ; preds = %lor.lhs.false.10, %if.then.8
  %24 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8, !dbg !1627, !tbaa !690
  %im_self14 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %24, i32 0, i32 2, !dbg !1628
  %25 = load %struct._object*, %struct._object** %im_self14, align 8, !dbg !1628, !tbaa !726
  %26 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8, !dbg !1629, !tbaa !690
  %im_self15 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %26, i32 0, i32 2, !dbg !1630
  %27 = load %struct._object*, %struct._object** %im_self15, align 8, !dbg !1630, !tbaa !726
  %cmp16 = icmp eq %struct._object* %25, %27, !dbg !1631
  %conv = zext i1 %cmp16 to i32, !dbg !1631
  store i32 %conv, i32* %eq, align 4, !dbg !1632, !tbaa !762
  br label %if.end.20, !dbg !1633

if.else:                                          ; preds = %lor.lhs.false.10
  %28 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8, !dbg !1634, !tbaa !690
  %im_self17 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %28, i32 0, i32 2, !dbg !1635
  %29 = load %struct._object*, %struct._object** %im_self17, align 8, !dbg !1635, !tbaa !726
  %30 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8, !dbg !1636, !tbaa !690
  %im_self18 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %30, i32 0, i32 2, !dbg !1637
  %31 = load %struct._object*, %struct._object** %im_self18, align 8, !dbg !1637, !tbaa !726
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %29, %struct._object* %31, i32 2), !dbg !1638
  store i32 %call19, i32* %eq, align 4, !dbg !1639, !tbaa !762
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.13
  br label %if.end.21, !dbg !1640

if.end.21:                                        ; preds = %if.end.20, %if.end
  %32 = load i32, i32* %eq, align 4, !dbg !1641, !tbaa !762
  %cmp22 = icmp slt i32 %32, 0, !dbg !1643
  br i1 %cmp22, label %if.then.24, label %if.end.25, !dbg !1644

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval, !dbg !1645
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1645

if.end.25:                                        ; preds = %if.end.21
  %33 = load i32, i32* %op.addr, align 4, !dbg !1646, !tbaa !762
  %cmp26 = icmp eq i32 %33, 2, !dbg !1648
  br i1 %cmp26, label %if.then.28, label %if.else.29, !dbg !1649

if.then.28:                                       ; preds = %if.end.25
  %34 = load i32, i32* %eq, align 4, !dbg !1650, !tbaa !762
  %tobool = icmp ne i32 %34, 0, !dbg !1650
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1650
  store %struct._object* %cond, %struct._object** %res, align 8, !dbg !1651, !tbaa !690
  br label %if.end.32, !dbg !1652

if.else.29:                                       ; preds = %if.end.25
  %35 = load i32, i32* %eq, align 4, !dbg !1653, !tbaa !762
  %tobool30 = icmp ne i32 %35, 0, !dbg !1653
  %cond31 = select i1 %tobool30, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1653
  store %struct._object* %cond31, %struct._object** %res, align 8, !dbg !1654, !tbaa !690
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %36 = load %struct._object*, %struct._object** %res, align 8, !dbg !1655, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1656
  %37 = load i64, i64* %ob_refcnt, align 8, !dbg !1657, !tbaa !759
  %inc33 = add i64 %37, 1, !dbg !1657
  store i64 %inc33, i64* %ob_refcnt, align 8, !dbg !1657, !tbaa !759
  %38 = load %struct._object*, %struct._object** %res, align 8, !dbg !1658, !tbaa !690
  store %struct._object* %38, %struct._object** %retval, !dbg !1659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1659

cleanup:                                          ; preds = %if.end.32, %if.then.24, %if.then
  %39 = bitcast i32* %eq to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 4, i8* %39) #3, !dbg !1660
  %40 = bitcast %struct._object** %res to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1660
  %41 = bitcast %struct.PyMethodObject** %b to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1660
  %42 = bitcast %struct.PyMethodObject** %a to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !1660
  %43 = load %struct._object*, %struct._object** %retval, !dbg !1660
  ret %struct._object* %43, !dbg !1660
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_descr_get(%struct._object* %meth, %struct._object* %obj, %struct._object* %cls) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %meth.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  store %struct._object* %meth, %struct._object** %meth.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %meth.addr, metadata !563, metadata !694), !dbg !1661
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !564, metadata !694), !dbg !1662
  store %struct._object* %cls, %struct._object** %cls.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %cls.addr, metadata !565, metadata !694), !dbg !1663
  %0 = load %struct._object*, %struct._object** %meth.addr, align 8, !dbg !1664, !tbaa !690
  %1 = bitcast %struct._object* %0 to %struct.PyMethodObject*, !dbg !1666
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 2, !dbg !1667
  %2 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1667, !tbaa !726
  %cmp = icmp ne %struct._object* %2, null, !dbg !1668
  br i1 %cmp, label %if.then, label %if.end, !dbg !1669

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %meth.addr, align 8, !dbg !1670, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !1672
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1673, !tbaa !759
  %inc = add i64 %4, 1, !dbg !1673
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1673, !tbaa !759
  %5 = load %struct._object*, %struct._object** %meth.addr, align 8, !dbg !1674, !tbaa !690
  store %struct._object* %5, %struct._object** %retval, !dbg !1675
  br label %return, !dbg !1675

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %meth.addr, align 8, !dbg !1676, !tbaa !690
  %7 = bitcast %struct._object* %6 to %struct.PyMethodObject*, !dbg !1677
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %7, i32 0, i32 1, !dbg !1678
  %8 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !1678, !tbaa !710
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1679, !tbaa !690
  %call = call %struct._object* @PyMethod_New(%struct._object* %8, %struct._object* %9), !dbg !1680
  store %struct._object* %call, %struct._object** %retval, !dbg !1681
  br label %return, !dbg !1681

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1682
  ret %struct._object* %10, !dbg !1682
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !570, metadata !694), !dbg !1683
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !571, metadata !694), !dbg !1684
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !572, metadata !694), !dbg !1685
  %0 = bitcast %struct._object** %func to i8*, !dbg !1686
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1686
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !573, metadata !694), !dbg !1687
  %1 = bitcast %struct._object** %self to i8*, !dbg !1688
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1688
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !574, metadata !694), !dbg !1689
  %2 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1690, !tbaa !690
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* %2), !dbg !1692
  %tobool = icmp ne i32 %call, 0, !dbg !1692
  br i1 %tobool, label %if.end, label %if.then, !dbg !1693

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1694
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1694

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1695, !tbaa !690
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %self), !dbg !1697
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1697
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !1698

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1699
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1699

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %func, align 8, !dbg !1700, !tbaa !690
  %call5 = call i32 @PyCallable_Check(%struct._object* %4), !dbg !1702
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1702
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !1703

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1704, !tbaa !690
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0)), !dbg !1706
  store %struct._object* null, %struct._object** %retval, !dbg !1707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1707

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %self, align 8, !dbg !1708, !tbaa !690
  %cmp = icmp eq %struct._object* %6, null, !dbg !1710
  br i1 %cmp, label %if.then.10, label %lor.lhs.false, !dbg !1711

lor.lhs.false:                                    ; preds = %if.end.8
  %7 = load %struct._object*, %struct._object** %self, align 8, !dbg !1712, !tbaa !690
  %cmp9 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !1714
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1715

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.8
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1716, !tbaa !690
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)), !dbg !1718
  store %struct._object* null, %struct._object** %retval, !dbg !1719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1719

if.end.11:                                        ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %func, align 8, !dbg !1720, !tbaa !690
  %10 = load %struct._object*, %struct._object** %self, align 8, !dbg !1721, !tbaa !690
  %call12 = call %struct._object* @PyMethod_New(%struct._object* %9, %struct._object* %10), !dbg !1722
  store %struct._object* %call12, %struct._object** %retval, !dbg !1723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1723

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.7, %if.then.3, %if.then
  %11 = bitcast %struct._object** %self to i8*, !dbg !1724
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !1724
  %12 = bitcast %struct._object** %func to i8*, !dbg !1724
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !1724
  %13 = load %struct._object*, %struct._object** %retval, !dbg !1724
  ret %struct._object* %13, !dbg !1724
}

; Function Attrs: nounwind uwtable
define i32 @PyMethod_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %im = alloca %struct.PyMethodObject*, align 8
  %0 = bitcast i32* %freelist_size to i8*, !dbg !1725
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1725
  call void @llvm.dbg.declare(metadata i32* %freelist_size, metadata !408, metadata !694), !dbg !1726
  %1 = load i32, i32* @numfree, align 4, !dbg !1727, !tbaa !762
  store i32 %1, i32* %freelist_size, align 4, !dbg !1726, !tbaa !762
  br label %while.cond, !dbg !1728

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1729, !tbaa !690
  %tobool = icmp ne %struct.PyMethodObject* %2, null, !dbg !1728
  br i1 %tobool, label %while.body, label %while.end, !dbg !1728

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.PyMethodObject** %im to i8*, !dbg !1732
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1732
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im, metadata !409, metadata !694), !dbg !1733
  %4 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8, !dbg !1734, !tbaa !690
  store %struct.PyMethodObject* %4, %struct.PyMethodObject** %im, align 8, !dbg !1733, !tbaa !690
  %5 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !1735, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %5, i32 0, i32 2, !dbg !1736
  %6 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !1736, !tbaa !726
  %7 = bitcast %struct._object* %6 to %struct.PyMethodObject*, !dbg !1737
  store %struct.PyMethodObject* %7, %struct.PyMethodObject** @free_list, align 8, !dbg !1738, !tbaa !690
  %8 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8, !dbg !1739, !tbaa !690
  %9 = bitcast %struct.PyMethodObject* %8 to i8*, !dbg !1739
  call void @PyObject_GC_Del(i8* %9), !dbg !1740
  %10 = load i32, i32* @numfree, align 4, !dbg !1741, !tbaa !762
  %dec = add i32 %10, -1, !dbg !1741
  store i32 %dec, i32* @numfree, align 4, !dbg !1741, !tbaa !762
  %11 = bitcast %struct.PyMethodObject** %im to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !1742
  br label %while.cond, !dbg !1728

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %freelist_size, align 4, !dbg !1743, !tbaa !762
  %13 = bitcast i32* %freelist_size to i8*, !dbg !1744
  call void @llvm.lifetime.end(i64 4, i8* %13) #3, !dbg !1744
  ret i32 %12, !dbg !1745
}

declare void @PyObject_GC_Del(i8*) #2

; Function Attrs: nounwind uwtable
define void @PyMethod_Fini() #0 {
entry:
  %call = call i32 @PyMethod_ClearFreeList(), !dbg !1746
  ret void, !dbg !1747
}

; Function Attrs: nounwind uwtable
define void @_PyMethod_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !418, metadata !694), !dbg !1748
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !1749, !tbaa !690
  %1 = load i32, i32* @numfree, align 4, !dbg !1750, !tbaa !762
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %1, i64 40), !dbg !1751
  ret void, !dbg !1752
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyInstanceMethod_New(%struct._object* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %method = alloca %struct.PyInstanceMethodObject*, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !421, metadata !694), !dbg !1753
  %0 = bitcast %struct.PyInstanceMethodObject** %method to i8*, !dbg !1754
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1754
  call void @llvm.dbg.declare(metadata %struct.PyInstanceMethodObject** %method, metadata !422, metadata !694), !dbg !1755
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*)), !dbg !1756
  %1 = bitcast %struct._object* %call to %struct.PyInstanceMethodObject*, !dbg !1757
  store %struct.PyInstanceMethodObject* %1, %struct.PyInstanceMethodObject** %method, align 8, !dbg !1758, !tbaa !690
  %2 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8, !dbg !1759, !tbaa !690
  %cmp = icmp eq %struct.PyInstanceMethodObject* %2, null, !dbg !1761
  br i1 %cmp, label %if.then, label %if.end, !dbg !1762

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1765

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !1766, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !1767
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1768, !tbaa !759
  %inc = add i64 %4, 1, !dbg !1768
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1768, !tbaa !759
  %5 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !1769, !tbaa !690
  %6 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8, !dbg !1770, !tbaa !690
  %func1 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %6, i32 0, i32 1, !dbg !1771
  store %struct._object* %5, %struct._object** %func1, align 8, !dbg !1772, !tbaa !1773
  br label %do.body, !dbg !1775

do.body:                                          ; preds = %if.end
  %7 = bitcast %union._gc_head** %g to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !1776
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !423, metadata !694), !dbg !1778
  %8 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8, !dbg !1779, !tbaa !690
  %9 = bitcast %struct.PyInstanceMethodObject* %8 to %union._gc_head*, !dbg !1780
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %9, i64 -1, !dbg !1781
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1778, !tbaa !690
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1782, !tbaa !690
  %gc = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !1784
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1785
  %11 = load i64, i64* %gc_refs, align 8, !dbg !1785, !tbaa !820
  %shr = ashr i64 %11, 1, !dbg !1786
  %cmp2 = icmp ne i64 %shr, -2, !dbg !1787
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1788

if.then.3:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !1789
  unreachable, !dbg !1789

if.end.4:                                         ; preds = %do.body
  br label %do.body.5, !dbg !1791

do.body.5:                                        ; preds = %if.end.4
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1793, !tbaa !690
  %gc6 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1796
  %gc_refs7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 2, !dbg !1797
  %13 = load i64, i64* %gc_refs7, align 8, !dbg !1797, !tbaa !820
  %and = and i64 %13, 1, !dbg !1798
  %or = or i64 %and, -6, !dbg !1799
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1800, !tbaa !690
  %gc8 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !1801
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !1802
  store i64 %or, i64* %gc_refs9, align 8, !dbg !1803, !tbaa !820
  br label %do.cond, !dbg !1804

do.cond:                                          ; preds = %do.body.5
  br label %do.end, !dbg !1805

do.end:                                           ; preds = %do.cond
  %15 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1807, !tbaa !690
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1809, !tbaa !690
  %gc10 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !1810
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !1811
  store %union._gc_head* %15, %union._gc_head** %gc_next, align 8, !dbg !1812, !tbaa !849
  %17 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1813, !tbaa !690
  %gc11 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !1814
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 1, !dbg !1815
  %18 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1815, !tbaa !853
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1816, !tbaa !690
  %gc12 = bitcast %union._gc_head* %19 to %struct.anon*, !dbg !1817
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !1818
  store %union._gc_head* %18, %union._gc_head** %gc_prev13, align 8, !dbg !1819, !tbaa !853
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1820, !tbaa !690
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1821, !tbaa !690
  %gc14 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !1822
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1, !dbg !1823
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev15, align 8, !dbg !1823, !tbaa !853
  %gc16 = bitcast %union._gc_head* %22 to %struct.anon*, !dbg !1824
  %gc_next17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 0, !dbg !1825
  store %union._gc_head* %20, %union._gc_head** %gc_next17, align 8, !dbg !1826, !tbaa !849
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1827, !tbaa !690
  %24 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1828, !tbaa !690
  %gc18 = bitcast %union._gc_head* %24 to %struct.anon*, !dbg !1829
  %gc_prev19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 1, !dbg !1830
  store %union._gc_head* %23, %union._gc_head** %gc_prev19, align 8, !dbg !1831, !tbaa !853
  %25 = bitcast %union._gc_head** %g to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !1832
  br label %do.cond.20, !dbg !1833

do.cond.20:                                       ; preds = %do.end
  br label %do.end.21, !dbg !1834

do.end.21:                                        ; preds = %do.cond.20
  %26 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8, !dbg !1836, !tbaa !690
  %27 = bitcast %struct.PyInstanceMethodObject* %26 to %struct._object*, !dbg !1837
  store %struct._object* %27, %struct._object** %retval, !dbg !1838
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1838

cleanup:                                          ; preds = %do.end.21, %if.then
  %28 = bitcast %struct.PyInstanceMethodObject** %method to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !1839
  %29 = load %struct._object*, %struct._object** %retval, !dbg !1839
  ret %struct._object* %29, !dbg !1839
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInstanceMethod_Function(%struct._object* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct._object*, align 8
  store %struct._object* %im, %struct._object** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %im.addr, metadata !427, metadata !694), !dbg !1840
  %0 = load %struct._object*, %struct._object** %im.addr, align 8, !dbg !1841, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1843
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1843, !tbaa !699
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !1844
  br i1 %cmp, label %if.end, label %if.then, !dbg !1845

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 459), !dbg !1846
  store %struct._object* null, %struct._object** %retval, !dbg !1848
  br label %return, !dbg !1848

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %im.addr, align 8, !dbg !1849, !tbaa !690
  %3 = bitcast %struct._object* %2 to %struct.PyInstanceMethodObject*, !dbg !1850
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %3, i32 0, i32 1, !dbg !1851
  %4 = load %struct._object*, %struct._object** %func, align 8, !dbg !1851, !tbaa !1773
  store %struct._object* %4, %struct._object** %retval, !dbg !1852
  br label %return, !dbg !1852

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1853
  ret %struct._object* %5, !dbg !1853
}

; Function Attrs: nounwind uwtable
define internal void @instancemethod_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !577, metadata !694), !dbg !1854
  br label %do.body, !dbg !1855

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !1856
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1856
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !578, metadata !694), !dbg !1858
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1859, !tbaa !690
  %2 = bitcast %struct._object* %1 to %union._gc_head*, !dbg !1860
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !1861
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1858, !tbaa !690
  br label %do.body.1, !dbg !1862

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1863, !tbaa !690
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !1866
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1867
  %4 = load i64, i64* %gc_refs, align 8, !dbg !1867, !tbaa !820
  %and = and i64 %4, 1, !dbg !1868
  %or = or i64 %and, -4, !dbg !1869
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1870, !tbaa !690
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !1871
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !1872
  store i64 %or, i64* %gc_refs3, align 8, !dbg !1873, !tbaa !820
  br label %do.cond, !dbg !1874

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !1875

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1877, !tbaa !690
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !1879
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !1880
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1880, !tbaa !849
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1881, !tbaa !690
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !1882
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !1883
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1883, !tbaa !853
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1884
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !1885
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !1886, !tbaa !849
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1887, !tbaa !690
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !1888
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !1889
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !1889, !tbaa !853
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1890, !tbaa !690
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1891
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !1892
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !1892, !tbaa !849
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !1893
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !1894
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !1895, !tbaa !853
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1896, !tbaa !690
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !1897
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !1898
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !1899, !tbaa !849
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !1900
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1900
  br label %do.end.17, !dbg !1901

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !1902

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1903
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !1903
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !580, metadata !694), !dbg !1905
  %17 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1906, !tbaa !690
  %18 = bitcast %struct._object* %17 to %struct.PyInstanceMethodObject*, !dbg !1907
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %18, i32 0, i32 1, !dbg !1908
  %19 = load %struct._object*, %struct._object** %func, align 8, !dbg !1908, !tbaa !1773
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !1905, !tbaa !690
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1909, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1911
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1912, !tbaa !759
  %dec = add i64 %21, -1, !dbg !1912
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1912, !tbaa !759
  %cmp = icmp ne i64 %dec, 0, !dbg !1913
  br i1 %cmp, label %if.then, label %if.else, !dbg !1914

if.then:                                          ; preds = %do.body.18
  br label %if.end, !dbg !1915

if.else:                                          ; preds = %do.body.18
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1917, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1919
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1919, !tbaa !699
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1920
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1920, !tbaa !952
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1921, !tbaa !690
  call void %24(%struct._object* %25), !dbg !1922
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !1923
  br label %do.end.20, !dbg !1925

do.end.20:                                        ; preds = %if.end
  %27 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1926, !tbaa !690
  %28 = bitcast %struct._object* %27 to i8*, !dbg !1926
  call void @PyObject_GC_Del(i8* %28), !dbg !1927
  ret void, !dbg !1928
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_repr(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %funcname = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %defname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !584, metadata !694), !dbg !1929
  %0 = bitcast %struct._object** %func to i8*, !dbg !1930
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1930
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !585, metadata !694), !dbg !1931
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1932, !tbaa !690
  %call = call %struct._object* @PyInstanceMethod_Function(%struct._object* %1), !dbg !1933
  store %struct._object* %call, %struct._object** %func, align 8, !dbg !1931, !tbaa !690
  %2 = bitcast %struct._object** %funcname to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1934
  call void @llvm.dbg.declare(metadata %struct._object** %funcname, metadata !586, metadata !694), !dbg !1935
  store %struct._object* null, %struct._object** %funcname, align 8, !dbg !1935, !tbaa !690
  %3 = bitcast %struct._object** %result to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1934
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !587, metadata !694), !dbg !1936
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1936, !tbaa !690
  %4 = bitcast i8** %defname to i8*, !dbg !1937
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1937
  call void @llvm.dbg.declare(metadata i8** %defname, metadata !588, metadata !694), !dbg !1938
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %defname, align 8, !dbg !1938, !tbaa !690
  %5 = load %struct._object*, %struct._object** %func, align 8, !dbg !1939, !tbaa !690
  %cmp = icmp eq %struct._object* %5, null, !dbg !1941
  br i1 %cmp, label %if.then, label %if.end, !dbg !1942

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 579), !dbg !1943
  store %struct._object* null, %struct._object** %retval, !dbg !1945
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1945

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %func, align 8, !dbg !1946, !tbaa !690
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %6, %struct._Py_Identifier* @PyId___name__), !dbg !1947
  store %struct._object* %call1, %struct._object** %funcname, align 8, !dbg !1948, !tbaa !690
  %7 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1949, !tbaa !690
  %cmp2 = icmp eq %struct._object* %7, null, !dbg !1950
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1951

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1952, !tbaa !690
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %8), !dbg !1955
  %tobool = icmp ne i32 %call4, 0, !dbg !1955
  br i1 %tobool, label %if.end.6, label %if.then.5, !dbg !1956

if.then.5:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !1957
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1957

if.end.6:                                         ; preds = %if.then.3
  call void @PyErr_Clear(), !dbg !1958
  br label %if.end.15, !dbg !1959

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1960, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1961
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1961, !tbaa !699
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19, !dbg !1962
  %11 = load i64, i64* %tp_flags, align 8, !dbg !1962, !tbaa !1063
  %and = and i64 %11, 268435456, !dbg !1963
  %cmp7 = icmp ne i64 %and, 0, !dbg !1964
  br i1 %cmp7, label %if.end.14, label %if.then.8, !dbg !1965

if.then.8:                                        ; preds = %if.else
  br label %do.body, !dbg !1966

do.body:                                          ; preds = %if.then.8
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1967
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !1967
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !589, metadata !694), !dbg !1969
  %13 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1970, !tbaa !690
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1969, !tbaa !690
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1971, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1973
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1974, !tbaa !759
  %dec = add i64 %15, -1, !dbg !1974
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1974, !tbaa !759
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1975
  br i1 %cmp9, label %if.then.10, label %if.else.11, !dbg !1976

if.then.10:                                       ; preds = %do.body
  br label %if.end.13, !dbg !1977

if.else.11:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1979, !tbaa !690
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1981
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1981, !tbaa !699
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1982
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1982, !tbaa !952
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1983, !tbaa !690
  call void %18(%struct._object* %19), !dbg !1984
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1985
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !1985
  br label %do.cond, !dbg !1987

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1988

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %funcname, align 8, !dbg !1990, !tbaa !690
  br label %if.end.14, !dbg !1991

if.end.14:                                        ; preds = %do.end, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.6
  %21 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !1992, !tbaa !690
  %22 = load i8*, i8** %defname, align 8, !dbg !1993, !tbaa !690
  %23 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1994, !tbaa !690
  %call16 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), %struct._object* %21, i8* %22, %struct._object* %23), !dbg !1995
  store %struct._object* %call16, %struct._object** %result, align 8, !dbg !1996, !tbaa !690
  br label %do.body.17, !dbg !1997

do.body.17:                                       ; preds = %if.end.15
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1998
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !1998
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !594, metadata !694), !dbg !2000
  %25 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !2001, !tbaa !690
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2000, !tbaa !690
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2002, !tbaa !690
  %cmp18 = icmp ne %struct._object* %26, null, !dbg !2003
  br i1 %cmp18, label %if.then.19, label %if.end.32, !dbg !2004

if.then.19:                                       ; preds = %do.body.17
  br label %do.body.20, !dbg !2005

do.body.20:                                       ; preds = %if.then.19
  %27 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !2007
  call void @llvm.lifetime.start(i64 8, i8* %27) #3, !dbg !2007
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !596, metadata !694), !dbg !2009
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2010, !tbaa !690
  store %struct._object* %28, %struct._object** %_py_decref_tmp21, align 8, !dbg !2009, !tbaa !690
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !2011, !tbaa !690
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2013
  %30 = load i64, i64* %ob_refcnt22, align 8, !dbg !2014, !tbaa !759
  %dec23 = add i64 %30, -1, !dbg !2014
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !2014, !tbaa !759
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !2015
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !2016

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !2017

if.else.26:                                       ; preds = %do.body.20
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !2019, !tbaa !690
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2021
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !2021, !tbaa !699
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !2022
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !2022, !tbaa !952
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !2023, !tbaa !690
  call void %33(%struct._object* %34), !dbg !2024
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !2025
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !2025
  br label %do.cond.30, !dbg !2027

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !2028

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32, !dbg !2030

if.end.32:                                        ; preds = %do.end.31, %do.body.17
  %36 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2032
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !2032
  br label %do.cond.33, !dbg !2035

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !2036

do.end.34:                                        ; preds = %do.cond.33
  %37 = load %struct._object*, %struct._object** %result, align 8, !dbg !2038, !tbaa !690
  store %struct._object* %37, %struct._object** %retval, !dbg !2039
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2039

cleanup:                                          ; preds = %do.end.34, %if.then.5, %if.then
  %38 = bitcast i8** %defname to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2040
  %39 = bitcast %struct._object** %result to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2040
  %40 = bitcast %struct._object** %funcname to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !2040
  %41 = bitcast %struct._object** %func to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !2040
  %42 = load %struct._object*, %struct._object** %retval, !dbg !2040
  ret %struct._object* %42, !dbg !2040
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_call(%struct._object* %self, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !601, metadata !694), !dbg !2041
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !602, metadata !694), !dbg !2042
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !603, metadata !694), !dbg !2043
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2044, !tbaa !690
  %1 = bitcast %struct._object* %0 to %struct.PyMethodObject*, !dbg !2045
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 1, !dbg !2046
  %2 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !2046, !tbaa !710
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2047, !tbaa !690
  %4 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2048, !tbaa !690
  %call = call %struct._object* @PyObject_Call(%struct._object* %2, %struct._object* %3, %struct._object* %4), !dbg !2049
  ret %struct._object* %call, !dbg !2050
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_getattro(%struct._object* %self, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %descr = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %f = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !606, metadata !694), !dbg !2051
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !607, metadata !694), !dbg !2052
  %0 = bitcast %struct._typeobject** %tp to i8*, !dbg !2053
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2053
  call void @llvm.dbg.declare(metadata %struct._typeobject** %tp, metadata !608, metadata !694), !dbg !2054
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2055, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2056
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2056, !tbaa !699
  store %struct._typeobject* %2, %struct._typeobject** %tp, align 8, !dbg !2054, !tbaa !690
  %3 = bitcast %struct._object** %descr to i8*, !dbg !2057
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2057
  call void @llvm.dbg.declare(metadata %struct._object** %descr, metadata !609, metadata !694), !dbg !2058
  store %struct._object* null, %struct._object** %descr, align 8, !dbg !2058, !tbaa !690
  %4 = load %struct._typeobject*, %struct._typeobject** %tp, align 8, !dbg !2059, !tbaa !690
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 31, !dbg !2061
  %5 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !2061, !tbaa !1462
  %cmp = icmp eq %struct._object* %5, null, !dbg !2062
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2063

if.then:                                          ; preds = %entry
  %6 = load %struct._typeobject*, %struct._typeobject** %tp, align 8, !dbg !2064, !tbaa !690
  %call = call i32 @PyType_Ready(%struct._typeobject* %6), !dbg !2067
  %cmp1 = icmp slt i32 %call, 0, !dbg !2068
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2069

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !2070

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !2071

if.end.3:                                         ; preds = %if.end, %entry
  %7 = load %struct._typeobject*, %struct._typeobject** %tp, align 8, !dbg !2072, !tbaa !690
  %8 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !2073, !tbaa !690
  %call4 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %7, %struct._object* %8), !dbg !2074
  store %struct._object* %call4, %struct._object** %descr, align 8, !dbg !2075, !tbaa !690
  %9 = load %struct._object*, %struct._object** %descr, align 8, !dbg !2076, !tbaa !690
  %cmp5 = icmp ne %struct._object* %9, null, !dbg !2077
  br i1 %cmp5, label %if.then.6, label %if.end.12, !dbg !2078

if.then.6:                                        ; preds = %if.end.3
  %10 = bitcast %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f to i8*, !dbg !2079
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2079
  call void @llvm.dbg.declare(metadata %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, metadata !610, metadata !694), !dbg !2080
  %11 = load %struct._object*, %struct._object** %descr, align 8, !dbg !2081, !tbaa !690
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2082
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2082, !tbaa !699
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 32, !dbg !2083
  %13 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8, !dbg !2083, !tbaa !1485
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %13, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8, !dbg !2080, !tbaa !690
  %14 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8, !dbg !2084, !tbaa !690
  %cmp8 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %14, null, !dbg !2086
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2087

if.then.9:                                        ; preds = %if.then.6
  %15 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8, !dbg !2088, !tbaa !690
  %16 = load %struct._object*, %struct._object** %descr, align 8, !dbg !2089, !tbaa !690
  %17 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2090, !tbaa !690
  %18 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2091, !tbaa !690
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2092
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !2092, !tbaa !699
  %20 = bitcast %struct._typeobject* %19 to %struct._object*, !dbg !2093
  %call11 = call %struct._object* %15(%struct._object* %16, %struct._object* %17, %struct._object* %20), !dbg !2088
  store %struct._object* %call11, %struct._object** %retval, !dbg !2094
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2094

if.else:                                          ; preds = %if.then.6
  %21 = load %struct._object*, %struct._object** %descr, align 8, !dbg !2095, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2097
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !2098, !tbaa !759
  %inc = add i64 %22, 1, !dbg !2098
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2098, !tbaa !759
  %23 = load %struct._object*, %struct._object** %descr, align 8, !dbg !2099, !tbaa !690
  store %struct._object* %23, %struct._object** %retval, !dbg !2100
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2100

cleanup:                                          ; preds = %if.else, %if.then.9
  %24 = bitcast %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f to i8*, !dbg !2101
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !2101
  br label %cleanup.14

if.end.12:                                        ; preds = %if.end.3
  %25 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2102, !tbaa !690
  %26 = bitcast %struct._object* %25 to %struct.PyInstanceMethodObject*, !dbg !2103
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %26, i32 0, i32 1, !dbg !2104
  %27 = load %struct._object*, %struct._object** %func, align 8, !dbg !2104, !tbaa !1773
  %28 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !2105, !tbaa !690
  %call13 = call %struct._object* @PyObject_GetAttr(%struct._object* %27, %struct._object* %28), !dbg !2106
  store %struct._object* %call13, %struct._object** %retval, !dbg !2107
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !2107

cleanup.14:                                       ; preds = %if.end.12, %cleanup, %if.then.2
  %29 = bitcast %struct._object** %descr to i8*, !dbg !2108
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2108
  %30 = bitcast %struct._typeobject** %tp to i8*, !dbg !2108
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !2108
  %31 = load %struct._object*, %struct._object** %retval, !dbg !2108
  ret %struct._object* %31, !dbg !2108
}

; Function Attrs: nounwind uwtable
define internal i32 @instancemethod_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !615, metadata !694), !dbg !2109
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !616, metadata !694), !dbg !2110
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !617, metadata !694), !dbg !2111
  br label %do.body, !dbg !2112

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2113, !tbaa !690
  %1 = bitcast %struct._object* %0 to %struct.PyInstanceMethodObject*, !dbg !2115
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %1, i32 0, i32 1, !dbg !2116
  %2 = load %struct._object*, %struct._object** %func, align 8, !dbg !2116, !tbaa !1773
  %tobool = icmp ne %struct._object* %2, null, !dbg !2117
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2118

if.then:                                          ; preds = %do.body
  %3 = bitcast i32* %vret to i8*, !dbg !2119
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2119
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !618, metadata !694), !dbg !2121
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2122, !tbaa !690
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2123, !tbaa !690
  %6 = bitcast %struct._object* %5 to %struct.PyInstanceMethodObject*, !dbg !2124
  %func1 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %6, i32 0, i32 1, !dbg !2125
  %7 = load %struct._object*, %struct._object** %func1, align 8, !dbg !2125, !tbaa !1773
  %8 = load i8*, i8** %arg.addr, align 8, !dbg !2126, !tbaa !690
  %call = call i32 %4(%struct._object* %7, i8* %8), !dbg !2122
  store i32 %call, i32* %vret, align 4, !dbg !2121, !tbaa !762
  %9 = load i32, i32* %vret, align 4, !dbg !2127, !tbaa !762
  %tobool2 = icmp ne i32 %9, 0, !dbg !2127
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2129

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %vret, align 4, !dbg !2130, !tbaa !762
  store i32 %10, i32* %retval, !dbg !2132
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2132

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2133
  br label %cleanup, !dbg !2133

cleanup:                                          ; preds = %if.end, %if.then.3
  %11 = bitcast i32* %vret to i8*, !dbg !2135
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !dbg !2135
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !2138

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2139

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !2142
  br label %return, !dbg !2142

return:                                           ; preds = %do.end, %cleanup
  %12 = load i32, i32* %retval, !dbg !2143
  ret i32 %12, !dbg !2143

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %a = alloca %struct.PyInstanceMethodObject*, align 8
  %b = alloca %struct.PyInstanceMethodObject*, align 8
  %res = alloca %struct._object*, align 8
  %eq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !624, metadata !694), !dbg !2144
  store %struct._object* %other, %struct._object** %other.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %other.addr, metadata !625, metadata !694), !dbg !2145
  store i32 %op, i32* %op.addr, align 4, !tbaa !762
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !626, metadata !694), !dbg !2146
  %0 = bitcast %struct.PyInstanceMethodObject** %a to i8*, !dbg !2147
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2147
  call void @llvm.dbg.declare(metadata %struct.PyInstanceMethodObject** %a, metadata !627, metadata !694), !dbg !2148
  %1 = bitcast %struct.PyInstanceMethodObject** %b to i8*, !dbg !2147
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2147
  call void @llvm.dbg.declare(metadata %struct.PyInstanceMethodObject** %b, metadata !628, metadata !694), !dbg !2149
  %2 = bitcast %struct._object** %res to i8*, !dbg !2150
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2150
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !629, metadata !694), !dbg !2151
  %3 = bitcast i32* %eq to i8*, !dbg !2152
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2152
  call void @llvm.dbg.declare(metadata i32* %eq, metadata !630, metadata !694), !dbg !2153
  %4 = load i32, i32* %op.addr, align 4, !dbg !2154, !tbaa !762
  %cmp = icmp ne i32 %4, 2, !dbg !2156
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2157

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %op.addr, align 4, !dbg !2158, !tbaa !762
  %cmp1 = icmp ne i32 %5, 3, !dbg !2160
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !2161

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2162, !tbaa !690
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !2163
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2163, !tbaa !699
  %cmp2 = icmp eq %struct._typeobject* %7, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !2164
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !2165

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !2166, !tbaa !690
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2167
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !2167, !tbaa !699
  %cmp5 = icmp eq %struct._typeobject* %9, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*), !dbg !2168
  br i1 %cmp5, label %if.end, label %if.then, !dbg !2169

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2170, !tbaa !759
  %inc = add i64 %10, 1, !dbg !2170
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2170, !tbaa !759
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !2172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2172

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2173, !tbaa !690
  %12 = bitcast %struct._object* %11 to %struct.PyInstanceMethodObject*, !dbg !2174
  store %struct.PyInstanceMethodObject* %12, %struct.PyInstanceMethodObject** %a, align 8, !dbg !2175, !tbaa !690
  %13 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !2176, !tbaa !690
  %14 = bitcast %struct._object* %13 to %struct.PyInstanceMethodObject*, !dbg !2177
  store %struct.PyInstanceMethodObject* %14, %struct.PyInstanceMethodObject** %b, align 8, !dbg !2178, !tbaa !690
  %15 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %a, align 8, !dbg !2179, !tbaa !690
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %15, i32 0, i32 1, !dbg !2180
  %16 = load %struct._object*, %struct._object** %func, align 8, !dbg !2180, !tbaa !1773
  %17 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %b, align 8, !dbg !2181, !tbaa !690
  %func6 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %17, i32 0, i32 1, !dbg !2182
  %18 = load %struct._object*, %struct._object** %func6, align 8, !dbg !2182, !tbaa !1773
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %16, %struct._object* %18, i32 2), !dbg !2183
  store i32 %call, i32* %eq, align 4, !dbg !2184, !tbaa !762
  %19 = load i32, i32* %eq, align 4, !dbg !2185, !tbaa !762
  %cmp7 = icmp slt i32 %19, 0, !dbg !2187
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2188

if.then.8:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2189
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2189

if.end.9:                                         ; preds = %if.end
  %20 = load i32, i32* %op.addr, align 4, !dbg !2190, !tbaa !762
  %cmp10 = icmp eq i32 %20, 2, !dbg !2192
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2193

if.then.11:                                       ; preds = %if.end.9
  %21 = load i32, i32* %eq, align 4, !dbg !2194, !tbaa !762
  %tobool = icmp ne i32 %21, 0, !dbg !2194
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !2194
  store %struct._object* %cond, %struct._object** %res, align 8, !dbg !2195, !tbaa !690
  br label %if.end.14, !dbg !2196

if.else:                                          ; preds = %if.end.9
  %22 = load i32, i32* %eq, align 4, !dbg !2197, !tbaa !762
  %tobool12 = icmp ne i32 %22, 0, !dbg !2197
  %cond13 = select i1 %tobool12, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !2197
  store %struct._object* %cond13, %struct._object** %res, align 8, !dbg !2198, !tbaa !690
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  %23 = load %struct._object*, %struct._object** %res, align 8, !dbg !2199, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !2200
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !2201, !tbaa !759
  %inc15 = add i64 %24, 1, !dbg !2201
  store i64 %inc15, i64* %ob_refcnt, align 8, !dbg !2201, !tbaa !759
  %25 = load %struct._object*, %struct._object** %res, align 8, !dbg !2202, !tbaa !690
  store %struct._object* %25, %struct._object** %retval, !dbg !2203
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2203

cleanup:                                          ; preds = %if.end.14, %if.then.8, %if.then
  %26 = bitcast i32* %eq to i8*, !dbg !2204
  call void @llvm.lifetime.end(i64 4, i8* %26) #3, !dbg !2204
  %27 = bitcast %struct._object** %res to i8*, !dbg !2204
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !2204
  %28 = bitcast %struct.PyInstanceMethodObject** %b to i8*, !dbg !2204
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !2204
  %29 = bitcast %struct.PyInstanceMethodObject** %a to i8*, !dbg !2204
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2204
  %30 = load %struct._object*, %struct._object** %retval, !dbg !2204
  ret %struct._object* %30, !dbg !2204
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_descr_get(%struct._object* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %descr, %struct._object** %descr.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %descr.addr, metadata !637, metadata !694), !dbg !2205
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !638, metadata !694), !dbg !2206
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !639, metadata !694), !dbg !2207
  %0 = bitcast %struct._object** %func to i8*, !dbg !2208
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2208
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !640, metadata !694), !dbg !2209
  %1 = load %struct._object*, %struct._object** %descr.addr, align 8, !dbg !2210, !tbaa !690
  %2 = bitcast %struct._object* %1 to %struct.PyInstanceMethodObject*, !dbg !2211
  %func1 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %2, i32 0, i32 1, !dbg !2212
  %3 = load %struct._object*, %struct._object** %func1, align 8, !dbg !2212, !tbaa !1773
  store %struct._object* %3, %struct._object** %func, align 8, !dbg !2209, !tbaa !690
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2213, !tbaa !690
  %cmp = icmp eq %struct._object* %4, null, !dbg !2215
  br i1 %cmp, label %if.then, label %if.else, !dbg !2216

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %func, align 8, !dbg !2217, !tbaa !690
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !2219
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !2220, !tbaa !759
  %inc = add i64 %6, 1, !dbg !2220
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2220, !tbaa !759
  %7 = load %struct._object*, %struct._object** %func, align 8, !dbg !2221, !tbaa !690
  store %struct._object* %7, %struct._object** %retval, !dbg !2222
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2222

if.else:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %func, align 8, !dbg !2223, !tbaa !690
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2224, !tbaa !690
  %call = call %struct._object* @PyMethod_New(%struct._object* %8, %struct._object* %9), !dbg !2225
  store %struct._object* %call, %struct._object** %retval, !dbg !2226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2226

cleanup:                                          ; preds = %if.else, %if.then
  %10 = bitcast %struct._object** %func to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2227
  %11 = load %struct._object*, %struct._object** %retval, !dbg !2227
  ret %struct._object* %11, !dbg !2227
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !643, metadata !694), !dbg !2228
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !644, metadata !694), !dbg !2229
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !645, metadata !694), !dbg !2230
  %0 = bitcast %struct._object** %func to i8*, !dbg !2231
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2231
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !646, metadata !694), !dbg !2232
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2233, !tbaa !690
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._object* %1), !dbg !2235
  %tobool = icmp ne i32 %call, 0, !dbg !2235
  br i1 %tobool, label %if.end, label %if.then, !dbg !2236

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2237
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2237

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2238, !tbaa !690
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 1, %struct._object** %func), !dbg !2240
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2240
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2241

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2242
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2242

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %func, align 8, !dbg !2243, !tbaa !690
  %call5 = call i32 @PyCallable_Check(%struct._object* %3), !dbg !2245
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2245
  br i1 %tobool6, label %if.end.8, label %if.then.7, !dbg !2246

if.then.7:                                        ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2247, !tbaa !690
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0)), !dbg !2249
  store %struct._object* null, %struct._object** %retval, !dbg !2250
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2250

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %func, align 8, !dbg !2251, !tbaa !690
  %call9 = call %struct._object* @PyInstanceMethod_New(%struct._object* %5), !dbg !2252
  store %struct._object* %call9, %struct._object** %retval, !dbg !2253
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2253

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %6 = bitcast %struct._object** %func to i8*, !dbg !2254
  call void @llvm.lifetime.end(i64 8, i8* %6) #3, !dbg !2254
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2254
  ret %struct._object* %7, !dbg !2254
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare void @PyErr_Clear() #2

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

declare i64 @PyObject_Hash(%struct._object*) #2

declare i64 @PyTuple_Size(%struct._object*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare %struct._object* @_PyType_Lookup(%struct._typeobject*, %struct._object*) #2

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #2

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_reduce(%struct.PyMethodObject* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %self = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %builtins = alloca %struct._object*, align 8
  %getattr = alloca %struct._object*, align 8
  %funcname = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im.addr, metadata !549, metadata !694), !dbg !2255
  %0 = bitcast %struct._object** %self to i8*, !dbg !2256
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2256
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !550, metadata !694), !dbg !2257
  %1 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !2258, !tbaa !690
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 2, !dbg !2259
  %2 = load %struct._object*, %struct._object** %im_self, align 8, !dbg !2259, !tbaa !726
  store %struct._object* %2, %struct._object** %self, align 8, !dbg !2257, !tbaa !690
  %3 = bitcast %struct._object** %func to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2260
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !551, metadata !694), !dbg !2261
  %4 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !2262, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %4, i32 0, i32 1, !dbg !2263
  %5 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !2263, !tbaa !710
  store %struct._object* %5, %struct._object** %func, align 8, !dbg !2261, !tbaa !690
  %6 = bitcast %struct._object** %builtins to i8*, !dbg !2264
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !2264
  call void @llvm.dbg.declare(metadata %struct._object** %builtins, metadata !552, metadata !694), !dbg !2265
  %7 = bitcast %struct._object** %getattr to i8*, !dbg !2266
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !2266
  call void @llvm.dbg.declare(metadata %struct._object** %getattr, metadata !553, metadata !694), !dbg !2267
  %8 = bitcast %struct._object** %funcname to i8*, !dbg !2268
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2268
  call void @llvm.dbg.declare(metadata %struct._object** %funcname, metadata !554, metadata !694), !dbg !2269
  %9 = load %struct._object*, %struct._object** %func, align 8, !dbg !2270, !tbaa !690
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %9, %struct._Py_Identifier* @PyId___name__), !dbg !2271
  store %struct._object* %call, %struct._object** %funcname, align 8, !dbg !2272, !tbaa !690
  %10 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !2273, !tbaa !690
  %cmp = icmp eq %struct._object* %10, null, !dbg !2275
  br i1 %cmp, label %if.then, label %if.end, !dbg !2276

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2277
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2277

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyEval_GetBuiltins(), !dbg !2279
  store %struct._object* %call1, %struct._object** %builtins, align 8, !dbg !2280, !tbaa !690
  %11 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !2281, !tbaa !690
  %call2 = call %struct._object* @_PyDict_GetItemId(%struct._object* %11, %struct._Py_Identifier* @method_reduce.PyId_getattr), !dbg !2282
  store %struct._object* %call2, %struct._object** %getattr, align 8, !dbg !2283, !tbaa !690
  %12 = load %struct._object*, %struct._object** %getattr, align 8, !dbg !2284, !tbaa !690
  %13 = load %struct._object*, %struct._object** %self, align 8, !dbg !2285, !tbaa !690
  %14 = load %struct._object*, %struct._object** %funcname, align 8, !dbg !2286, !tbaa !690
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* %12, %struct._object* %13, %struct._object* %14), !dbg !2287
  store %struct._object* %call3, %struct._object** %retval, !dbg !2288
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2288

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct._object** %funcname to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2289
  %16 = bitcast %struct._object** %getattr to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2289
  %17 = bitcast %struct._object** %builtins to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !2289
  %18 = bitcast %struct._object** %func to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2289
  %19 = bitcast %struct._object** %self to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2289
  %20 = load %struct._object*, %struct._object** %retval, !dbg !2289
  ret %struct._object* %20, !dbg !2289
}

declare %struct._object* @PyEval_GetBuiltins() #2

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_doc(%struct.PyMethodObject* %im, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct.PyMethodObject** %im.addr, metadata !559, metadata !694), !dbg !2290
  store i8* %context, i8** %context.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !560, metadata !694), !dbg !2291
  %0 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8, !dbg !2292, !tbaa !690
  %cmp = icmp eq %struct._object* %0, null, !dbg !2294
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2295

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !2296
  store %struct._object* %call, %struct._object** @method_get_doc.docstr, align 8, !dbg !2298, !tbaa !690
  %1 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8, !dbg !2299, !tbaa !690
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !2301
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2302

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2303
  br label %return, !dbg !2303

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !2304

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8, !dbg !2305, !tbaa !690
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 1, !dbg !2306
  %3 = load %struct._object*, %struct._object** %im_func, align 8, !dbg !2306, !tbaa !710
  %4 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8, !dbg !2307, !tbaa !690
  %call4 = call %struct._object* @PyObject_GetAttr(%struct._object* %3, %struct._object* %4), !dbg !2308
  store %struct._object* %call4, %struct._object** %retval, !dbg !2309
  br label %return, !dbg !2309

return:                                           ; preds = %if.end.3, %if.then.2
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2310
  ret %struct._object* %5, !dbg !2310
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #2

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare i32 @PyCallable_Check(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_get_doc(%struct._object* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !633, metadata !694), !dbg !2311
  store i8* %context, i8** %context.addr, align 8, !tbaa !690
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !634, metadata !694), !dbg !2312
  %0 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8, !dbg !2313, !tbaa !690
  %cmp = icmp eq %struct._object* %0, null, !dbg !2315
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2316

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !2317
  store %struct._object* %call, %struct._object** @instancemethod_get_doc.docstr, align 8, !dbg !2319, !tbaa !690
  %1 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8, !dbg !2320, !tbaa !690
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !2322
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2323

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2324
  br label %return, !dbg !2324

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !2325

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2326, !tbaa !690
  %3 = bitcast %struct._object* %2 to %struct.PyInstanceMethodObject*, !dbg !2327
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %3, i32 0, i32 1, !dbg !2328
  %4 = load %struct._object*, %struct._object** %func, align 8, !dbg !2328, !tbaa !1773
  %5 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8, !dbg !2329, !tbaa !690
  %call4 = call %struct._object* @PyObject_GetAttr(%struct._object* %4, %struct._object* %5), !dbg !2330
  store %struct._object* %call4, %struct._object** %retval, !dbg !2331
  br label %return, !dbg !2331

return:                                           ; preds = %if.end.3, %if.then.2
  %6 = load %struct._object*, %struct._object** %retval, !dbg !2332
  ret %struct._object* %6, !dbg !2332
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!687, !688}
!llvm.ident = !{!689}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !387, globals: !647)
!1 = !DIFile(filename: "classobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !95, !43, !359, !100, !373, !379}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodObject", file: !6, line: 17, baseType: !7)
!6 = !DIFile(filename: "Include/classobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 12, size: 320, align: 64, elements: !8)
!8 = !{!9, !356, !357, !358}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 13, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !33, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !297, line: 18, size: 320, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 19, baseType: !57, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !297, line: 20, baseType: !49, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !296, file: !297, line: 21, baseType: !15, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 22, baseType: !49, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !297, line: 23, baseType: !57, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !305, size: 64, align: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !307, line: 11, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!361 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!381 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 25, size: 256, align: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !382, file: !381, line: 26, baseType: !27, size: 192, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !382, file: !381, line: 27, baseType: !386, size: 64, align: 64, offset: 192)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, align: 64, elements: !87)
!387 = !{!388, !392, !395, !404, !411, !414, !419, !425, !428, !442, !484, !491, !511, !523, !538, !547, !555, !561, !566, !575, !582, !599, !604, !613, !622, !631, !635, !641}
!388 = !DISubprogram(name: "PyMethod_Function", scope: !389, file: !389, line: 20, type: !122, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyMethod_Function, variables: !390)
!389 = !DIFile(filename: "Objects/classobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!390 = !{!391}
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !388, file: !389, line: 20, type: !43)
!392 = !DISubprogram(name: "PyMethod_Self", scope: !389, file: !389, line: 30, type: !122, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyMethod_Self, variables: !393)
!393 = !{!394}
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !392, file: !389, line: 30, type: !43)
!395 = !DISubprogram(name: "PyMethod_New", scope: !389, file: !389, line: 45, type: !132, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyMethod_New, variables: !396)
!396 = !{!397, !398, !399, !400, !402}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !395, file: !389, line: 45, type: !43)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !395, file: !389, line: 45, type: !43)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !395, file: !389, line: 47, type: !4)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !401, file: !389, line: 66, type: !43)
!401 = distinct !DILexicalBlock(scope: !395, file: !389, line: 66, column: 8)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !403, file: !389, line: 68, type: !359)
!403 = distinct !DILexicalBlock(scope: !395, file: !389, line: 68, column: 8)
!404 = !DISubprogram(name: "PyMethod_ClearFreeList", scope: !389, file: !389, line: 410, type: !405, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyMethod_ClearFreeList, variables: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!49}
!407 = !{!408, !409}
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist_size", scope: !404, file: !389, line: 412, type: !49)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !410, file: !389, line: 415, type: !4)
!410 = distinct !DILexicalBlock(scope: !404, file: !389, line: 414, column: 23)
!411 = !DISubprogram(name: "PyMethod_Fini", scope: !389, file: !389, line: 425, type: !412, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyMethod_Fini, variables: !2)
!412 = !DISubroutineType(types: !413)
!413 = !{null}
!414 = !DISubprogram(name: "_PyMethod_DebugMallocStats", scope: !389, file: !389, line: 432, type: !415, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyMethod_DebugMallocStats, variables: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !50}
!417 = !{!418}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !414, file: !389, line: 432, type: !50)
!419 = !DISubprogram(name: "PyInstanceMethod_New", scope: !389, file: !389, line: 444, type: !122, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyInstanceMethod_New, variables: !420)
!420 = !{!421, !422, !423}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !419, file: !389, line: 444, type: !43)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !419, file: !389, line: 445, type: !373)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !424, file: !389, line: 451, type: !359)
!424 = distinct !DILexicalBlock(scope: !419, file: !389, line: 451, column: 8)
!425 = !DISubprogram(name: "PyInstanceMethod_Function", scope: !389, file: !389, line: 456, type: !122, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyInstanceMethod_Function, variables: !426)
!426 = !{!427}
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !425, file: !389, line: 456, type: !43)
!428 = !DISubprogram(name: "method_dealloc", scope: !389, file: !389, line: 191, type: !429, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyMethodObject*)* @method_dealloc, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !4}
!431 = !{!432, !433, !435, !437, !439}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !428, file: !389, line: 191, type: !4)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !434, file: !389, line: 193, type: !359)
!434 = distinct !DILexicalBlock(scope: !428, file: !389, line: 193, column: 8)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !436, file: !389, line: 196, type: !43)
!436 = distinct !DILexicalBlock(scope: !428, file: !389, line: 196, column: 8)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !438, file: !389, line: 197, type: !43)
!438 = distinct !DILexicalBlock(scope: !428, file: !389, line: 197, column: 8)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !440, file: !389, line: 197, type: !43)
!440 = distinct !DILexicalBlock(scope: !441, file: !389, line: 197, column: 103)
!441 = distinct !DILexicalBlock(scope: !438, file: !389, line: 197, column: 69)
!442 = !DISubprogram(name: "method_repr", scope: !389, file: !389, line: 242, type: !443, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodObject*)* @method_repr, variables: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!43, !4}
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !459, !467, !470, !474, !476, !479, !481}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !442, file: !389, line: 242, type: !4)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !442, file: !389, line: 244, type: !43)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !442, file: !389, line: 245, type: !43)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klass", scope: !442, file: !389, line: 246, type: !43)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !442, file: !389, line: 247, type: !43)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klassname", scope: !442, file: !389, line: 247, type: !43)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !442, file: !389, line: 247, type: !43)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defname", scope: !442, file: !389, line: 248, type: !57)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !389, line: 263, type: !43)
!455 = distinct !DILexicalBlock(scope: !456, file: !389, line: 263, column: 12)
!456 = distinct !DILexicalBlock(scope: !457, file: !389, line: 262, column: 88)
!457 = distinct !DILexicalBlock(scope: !458, file: !389, line: 262, column: 14)
!458 = distinct !DILexicalBlock(scope: !442, file: !389, line: 257, column: 9)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !460, file: !389, line: 273, type: !43)
!460 = distinct !DILexicalBlock(scope: !461, file: !389, line: 273, column: 20)
!461 = distinct !DILexicalBlock(scope: !462, file: !389, line: 272, column: 64)
!462 = distinct !DILexicalBlock(scope: !463, file: !389, line: 272, column: 17)
!463 = distinct !DILexicalBlock(scope: !464, file: !389, line: 271, column: 38)
!464 = distinct !DILexicalBlock(scope: !465, file: !389, line: 271, column: 13)
!465 = distinct !DILexicalBlock(scope: !466, file: !389, line: 269, column: 10)
!466 = distinct !DILexicalBlock(scope: !442, file: !389, line: 267, column: 9)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !389, line: 273, type: !43)
!468 = distinct !DILexicalBlock(scope: !469, file: !389, line: 273, column: 112)
!469 = distinct !DILexicalBlock(scope: !460, file: !389, line: 273, column: 78)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !471, file: !389, line: 279, type: !43)
!471 = distinct !DILexicalBlock(scope: !472, file: !389, line: 279, column: 16)
!472 = distinct !DILexicalBlock(scope: !473, file: !389, line: 278, column: 93)
!473 = distinct !DILexicalBlock(scope: !464, file: !389, line: 278, column: 18)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !475, file: !389, line: 289, type: !43)
!475 = distinct !DILexicalBlock(scope: !442, file: !389, line: 289, column: 8)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !389, line: 289, type: !43)
!477 = distinct !DILexicalBlock(scope: !478, file: !389, line: 289, column: 100)
!478 = distinct !DILexicalBlock(scope: !475, file: !389, line: 289, column: 66)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !480, file: !389, line: 290, type: !43)
!480 = distinct !DILexicalBlock(scope: !442, file: !389, line: 290, column: 8)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !482, file: !389, line: 290, type: !43)
!482 = distinct !DILexicalBlock(scope: !483, file: !389, line: 290, column: 101)
!483 = distinct !DILexicalBlock(scope: !480, file: !389, line: 290, column: 67)
!484 = !DISubprogram(name: "method_hash", scope: !389, file: !389, line: 295, type: !485, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyMethodObject*)* @method_hash, variables: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!224, !4}
!487 = !{!488, !489, !490}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !484, file: !389, line: 295, type: !4)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !484, file: !389, line: 297, type: !224)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !484, file: !389, line: 297, type: !224)
!491 = !DISubprogram(name: "method_call", scope: !389, file: !389, line: 322, type: !141, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @method_call, variables: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !501, !502, !503, !507, !509}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !491, file: !389, line: 322, type: !43)
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !491, file: !389, line: 322, type: !43)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !491, file: !389, line: 322, type: !43)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !491, file: !389, line: 324, type: !43)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !491, file: !389, line: 325, type: !43)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argcount", scope: !499, file: !389, line: 333, type: !15)
!499 = distinct !DILexicalBlock(scope: !500, file: !389, line: 332, column: 10)
!500 = distinct !DILexicalBlock(scope: !491, file: !389, line: 328, column: 9)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newarg", scope: !499, file: !389, line: 334, type: !43)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !499, file: !389, line: 335, type: !49)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !504, file: !389, line: 341, type: !43)
!504 = distinct !DILexicalBlock(scope: !505, file: !389, line: 340, column: 40)
!505 = distinct !DILexicalBlock(scope: !506, file: !389, line: 340, column: 9)
!506 = distinct !DILexicalBlock(scope: !499, file: !389, line: 340, column: 9)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !508, file: !389, line: 342, type: !43)
!508 = distinct !DILexicalBlock(scope: !504, file: !389, line: 342, column: 16)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !510, file: !389, line: 348, type: !43)
!510 = distinct !DILexicalBlock(scope: !491, file: !389, line: 348, column: 8)
!511 = !DISubprogram(name: "method_getattro", scope: !389, file: !389, line: 133, type: !132, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @method_getattro, variables: !512)
!512 = !{!513, !514, !515, !516, !519, !520}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !511, file: !389, line: 133, type: !43)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !511, file: !389, line: 133, type: !43)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !511, file: !389, line: 135, type: !4)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !511, file: !389, line: 136, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !511, file: !389, line: 137, type: !43)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !521, file: !389, line: 148, type: !325)
!521 = distinct !DILexicalBlock(scope: !522, file: !389, line: 147, column: 30)
!522 = distinct !DILexicalBlock(scope: !511, file: !389, line: 147, column: 9)
!523 = !DISubprogram(name: "method_traverse", scope: !389, file: !389, line: 314, type: !524, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyMethodObject*, i32 (%struct._object*, i8*)*, i8*)* @method_traverse, variables: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!49, !4, !269, !95}
!526 = !{!527, !528, !529, !530, !534}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !523, file: !389, line: 314, type: !4)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !523, file: !389, line: 314, type: !269)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !523, file: !389, line: 314, type: !95)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !531, file: !389, line: 316, type: !49)
!531 = distinct !DILexicalBlock(scope: !532, file: !389, line: 316, column: 27)
!532 = distinct !DILexicalBlock(scope: !533, file: !389, line: 316, column: 14)
!533 = distinct !DILexicalBlock(scope: !523, file: !389, line: 316, column: 8)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !535, file: !389, line: 317, type: !49)
!535 = distinct !DILexicalBlock(scope: !536, file: !389, line: 317, column: 27)
!536 = distinct !DILexicalBlock(scope: !537, file: !389, line: 317, column: 14)
!537 = distinct !DILexicalBlock(scope: !523, file: !389, line: 317, column: 8)
!538 = !DISubprogram(name: "method_richcompare", scope: !389, file: !389, line: 209, type: !277, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @method_richcompare, variables: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !538, file: !389, line: 209, type: !43)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !538, file: !389, line: 209, type: !43)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !538, file: !389, line: 209, type: !49)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !538, file: !389, line: 211, type: !4)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !538, file: !389, line: 211, type: !4)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !538, file: !389, line: 212, type: !43)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !538, file: !389, line: 213, type: !49)
!547 = !DISubprogram(name: "method_reduce", scope: !389, file: !389, line: 73, type: !443, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodObject*)* @method_reduce, variables: !548)
!548 = !{!549, !550, !551, !552, !553, !554}
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !547, file: !389, line: 73, type: !4)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !547, file: !389, line: 75, type: !43)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !547, file: !389, line: 76, type: !43)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !547, file: !389, line: 77, type: !43)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !547, file: !389, line: 78, type: !43)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !547, file: !389, line: 79, type: !43)
!555 = !DISubprogram(name: "method_get_doc", scope: !389, file: !389, line: 116, type: !556, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodObject*, i8*)* @method_get_doc, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!43, !4, !95}
!558 = !{!559, !560}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "im", arg: 1, scope: !555, file: !389, line: 116, type: !4)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !555, file: !389, line: 116, type: !95)
!561 = !DISubprogram(name: "method_descr_get", scope: !389, file: !389, line: 353, type: !141, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @method_descr_get, variables: !562)
!562 = !{!563, !564, !565}
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "meth", arg: 1, scope: !561, file: !389, line: 353, type: !43)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !561, file: !389, line: 353, type: !43)
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cls", arg: 3, scope: !561, file: !389, line: 353, type: !43)
!566 = !DISubprogram(name: "method_new", scope: !389, file: !389, line: 166, type: !567, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @method_new, variables: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!43, !517, !43, !43}
!569 = !{!570, !571, !572, !573, !574}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !566, file: !389, line: 166, type: !517)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !566, file: !389, line: 166, type: !43)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !566, file: !389, line: 166, type: !43)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !566, file: !389, line: 168, type: !43)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !566, file: !389, line: 169, type: !43)
!575 = !DISubprogram(name: "instancemethod_dealloc", scope: !389, file: !389, line: 516, type: !41, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @instancemethod_dealloc, variables: !576)
!576 = !{!577, !578, !580}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !575, file: !389, line: 516, type: !43)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !579, file: !389, line: 517, type: !359)
!579 = distinct !DILexicalBlock(scope: !575, file: !389, line: 517, column: 8)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !581, file: !389, line: 518, type: !43)
!581 = distinct !DILexicalBlock(scope: !575, file: !389, line: 518, column: 8)
!582 = !DISubprogram(name: "instancemethod_repr", scope: !389, file: !389, line: 572, type: !122, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @instancemethod_repr, variables: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !594, !596}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !582, file: !389, line: 572, type: !43)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !582, file: !389, line: 574, type: !43)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !582, file: !389, line: 575, type: !43)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !582, file: !389, line: 575, type: !43)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defname", scope: !582, file: !389, line: 576, type: !57)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !389, line: 590, type: !43)
!590 = distinct !DILexicalBlock(scope: !591, file: !389, line: 590, column: 12)
!591 = distinct !DILexicalBlock(scope: !592, file: !389, line: 589, column: 88)
!592 = distinct !DILexicalBlock(scope: !593, file: !389, line: 589, column: 14)
!593 = distinct !DILexicalBlock(scope: !582, file: !389, line: 584, column: 9)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !595, file: !389, line: 597, type: !43)
!595 = distinct !DILexicalBlock(scope: !582, file: !389, line: 597, column: 8)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !597, file: !389, line: 597, type: !43)
!597 = distinct !DILexicalBlock(scope: !598, file: !389, line: 597, column: 100)
!598 = distinct !DILexicalBlock(scope: !595, file: !389, line: 597, column: 66)
!599 = !DISubprogram(name: "instancemethod_call", scope: !389, file: !389, line: 529, type: !141, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @instancemethod_call, variables: !600)
!600 = !{!601, !602, !603}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !599, file: !389, line: 529, type: !43)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !599, file: !389, line: 529, type: !43)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !599, file: !389, line: 529, type: !43)
!604 = !DISubprogram(name: "instancemethod_getattro", scope: !389, file: !389, line: 491, type: !132, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @instancemethod_getattro, variables: !605)
!605 = !{!606, !607, !608, !609, !610}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !604, file: !389, line: 491, type: !43)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !604, file: !389, line: 491, type: !43)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !604, file: !389, line: 493, type: !517)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !604, file: !389, line: 494, type: !43)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !611, file: !389, line: 503, type: !325)
!611 = distinct !DILexicalBlock(scope: !612, file: !389, line: 502, column: 30)
!612 = distinct !DILexicalBlock(scope: !604, file: !389, line: 502, column: 9)
!613 = !DISubprogram(name: "instancemethod_traverse", scope: !389, file: !389, line: 523, type: !267, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @instancemethod_traverse, variables: !614)
!614 = !{!615, !616, !617, !618}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !613, file: !389, line: 523, type: !43)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !613, file: !389, line: 523, type: !269)
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !613, file: !389, line: 523, type: !95)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !619, file: !389, line: 524, type: !49)
!619 = distinct !DILexicalBlock(scope: !620, file: !389, line: 524, column: 58)
!620 = distinct !DILexicalBlock(scope: !621, file: !389, line: 524, column: 14)
!621 = distinct !DILexicalBlock(scope: !613, file: !389, line: 524, column: 8)
!622 = !DISubprogram(name: "instancemethod_richcompare", scope: !389, file: !389, line: 546, type: !277, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @instancemethod_richcompare, variables: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !622, file: !389, line: 546, type: !43)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !622, file: !389, line: 546, type: !43)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !622, file: !389, line: 546, type: !49)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !622, file: !389, line: 548, type: !373)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !622, file: !389, line: 548, type: !373)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !622, file: !389, line: 549, type: !43)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !622, file: !389, line: 550, type: !49)
!631 = !DISubprogram(name: "instancemethod_get_doc", scope: !389, file: !389, line: 474, type: !313, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @instancemethod_get_doc, variables: !632)
!632 = !{!633, !634}
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !631, file: !389, line: 474, type: !43)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !631, file: !389, line: 474, type: !95)
!635 = !DISubprogram(name: "instancemethod_descr_get", scope: !389, file: !389, line: 535, type: !141, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @instancemethod_descr_get, variables: !636)
!636 = !{!637, !638, !639, !640}
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !635, file: !389, line: 535, type: !43)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !635, file: !389, line: 535, type: !43)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !635, file: !389, line: 535, type: !43)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !635, file: !389, line: 536, type: !43)
!641 = !DISubprogram(name: "instancemethod_new", scope: !389, file: !389, line: 623, type: !567, isLocal: true, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @instancemethod_new, variables: !642)
!642 = !{!643, !644, !645, !646}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !641, file: !389, line: 623, type: !517)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !641, file: !389, line: 623, type: !43)
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !641, file: !389, line: 623, type: !43)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !641, file: !389, line: 625, type: !43)
!647 = !{!648, !649, !650, !651, !652, !660, !664, !669, !670, !675, !678, !679, !683, !685, !686}
!648 = !DIGlobalVariable(name: "PyMethod_Type", scope: !0, file: !389, line: 366, type: !518, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type)
!649 = !DIGlobalVariable(name: "PyInstanceMethod_Type", scope: !0, file: !389, line: 640, type: !518, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type)
!650 = !DIGlobalVariable(name: "free_list", scope: !0, file: !389, line: 11, type: !4, isLocal: true, isDefinition: true, variable: %struct.PyMethodObject** @free_list)
!651 = !DIGlobalVariable(name: "numfree", scope: !0, file: !389, line: 12, type: !49, isLocal: true, isDefinition: true, variable: i32* @numfree)
!652 = !DIGlobalVariable(name: "PyId___name__", scope: !0, file: !389, line: 17, type: !653, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId___name__)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !11, line: 144, baseType: !654)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !11, line: 140, size: 192, align: 64, elements: !655)
!655 = !{!656, !658, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !11, line: 141, baseType: !657, size: 64, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !654, file: !11, line: 142, baseType: !33, size: 64, align: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !654, file: !11, line: 143, baseType: !43, size: 64, align: 64, offset: 128)
!660 = !DIGlobalVariable(name: "method_doc", scope: !0, file: !389, line: 160, type: !661, isLocal: true, isDefinition: true, variable: [67 x i8]* @method_doc)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 536, align: 8, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 67)
!664 = !DIGlobalVariable(name: "method_methods", scope: !0, file: !389, line: 91, type: !665, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @method_methods)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 512, align: 64, elements: !667)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!667 = !{!668}
!668 = !DISubrange(count: 2)
!669 = !DIGlobalVariable(name: "PyId_getattr", scope: !547, file: !389, line: 80, type: !653, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @method_reduce.PyId_getattr)
!670 = !DIGlobalVariable(name: "method_memberlist", scope: !0, file: !389, line: 102, type: !671, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @method_memberlist)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 960, align: 64, elements: !673)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !297, line: 24, baseType: !296)
!673 = !{!674}
!674 = !DISubrange(count: 3)
!675 = !DIGlobalVariable(name: "method_getset", scope: !0, file: !389, line: 127, type: !676, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @method_getset)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 640, align: 64, elements: !667)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !307, line: 17, baseType: !306)
!678 = !DIGlobalVariable(name: "docstr", scope: !555, file: !389, line: 118, type: !43, isLocal: true, isDefinition: true, variable: %struct._object** @method_get_doc.docstr)
!679 = !DIGlobalVariable(name: "instancemethod_doc", scope: !0, file: !389, line: 617, type: !680, isLocal: true, isDefinition: true, variable: [54 x i8]* @instancemethod_doc)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 432, align: 8, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 54)
!683 = !DIGlobalVariable(name: "instancemethod_memberlist", scope: !0, file: !389, line: 467, type: !684, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @instancemethod_memberlist)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 640, align: 64, elements: !667)
!685 = !DIGlobalVariable(name: "instancemethod_getset", scope: !0, file: !389, line: 485, type: !676, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @instancemethod_getset)
!686 = !DIGlobalVariable(name: "docstr", scope: !631, file: !389, line: 476, type: !43, isLocal: true, isDefinition: true, variable: %struct._object** @instancemethod_get_doc.docstr)
!687 = !{i32 2, !"Dwarf Version", i32 4}
!688 = !{i32 2, !"Debug Info Version", i32 3}
!689 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!690 = !{!691, !691, i64 0}
!691 = !{!"any pointer", !692, i64 0}
!692 = !{!"omnipotent char", !693, i64 0}
!693 = !{!"Simple C/C++ TBAA"}
!694 = !DIExpression()
!695 = !DILocation(line: 20, column: 29, scope: !388)
!696 = !DILocation(line: 22, column: 12, scope: !697)
!697 = distinct !DILexicalBlock(scope: !388, file: !389, line: 22, column: 9)
!698 = !DILocation(line: 22, column: 17, scope: !697)
!699 = !{!700, !691, i64 8}
!700 = !{!"_object", !701, i64 0, !691, i64 8}
!701 = !{!"long", !692, i64 0}
!702 = !DILocation(line: 22, column: 25, scope: !697)
!703 = !DILocation(line: 22, column: 9, scope: !388)
!704 = !DILocation(line: 23, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !697, file: !389, line: 22, column: 45)
!706 = !DILocation(line: 24, column: 9, scope: !705)
!707 = !DILocation(line: 26, column: 31, scope: !388)
!708 = !DILocation(line: 26, column: 13, scope: !388)
!709 = !DILocation(line: 26, column: 36, scope: !388)
!710 = !{!711, !691, i64 16}
!711 = !{!"", !700, i64 0, !691, i64 16, !691, i64 24, !691, i64 32}
!712 = !DILocation(line: 26, column: 5, scope: !388)
!713 = !DILocation(line: 27, column: 1, scope: !388)
!714 = !DILocation(line: 30, column: 25, scope: !392)
!715 = !DILocation(line: 32, column: 12, scope: !716)
!716 = distinct !DILexicalBlock(scope: !392, file: !389, line: 32, column: 9)
!717 = !DILocation(line: 32, column: 17, scope: !716)
!718 = !DILocation(line: 32, column: 25, scope: !716)
!719 = !DILocation(line: 32, column: 9, scope: !392)
!720 = !DILocation(line: 33, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !389, line: 32, column: 45)
!722 = !DILocation(line: 34, column: 9, scope: !721)
!723 = !DILocation(line: 36, column: 31, scope: !392)
!724 = !DILocation(line: 36, column: 13, scope: !392)
!725 = !DILocation(line: 36, column: 36, scope: !392)
!726 = !{!711, !691, i64 24}
!727 = !DILocation(line: 36, column: 5, scope: !392)
!728 = !DILocation(line: 37, column: 1, scope: !392)
!729 = !DILocation(line: 45, column: 24, scope: !395)
!730 = !DILocation(line: 45, column: 40, scope: !395)
!731 = !DILocation(line: 47, column: 5, scope: !395)
!732 = !DILocation(line: 47, column: 21, scope: !395)
!733 = !DILocation(line: 48, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !395, file: !389, line: 48, column: 9)
!735 = !DILocation(line: 48, column: 14, scope: !734)
!736 = !DILocation(line: 48, column: 9, scope: !395)
!737 = !DILocation(line: 49, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !389, line: 48, column: 29)
!739 = !DILocation(line: 50, column: 9, scope: !738)
!740 = !DILocation(line: 52, column: 10, scope: !395)
!741 = !DILocation(line: 52, column: 8, scope: !395)
!742 = !DILocation(line: 53, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !395, file: !389, line: 53, column: 9)
!744 = !DILocation(line: 53, column: 12, scope: !743)
!745 = !DILocation(line: 53, column: 9, scope: !395)
!746 = !DILocation(line: 54, column: 40, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !389, line: 53, column: 27)
!748 = !DILocation(line: 54, column: 44, scope: !747)
!749 = !DILocation(line: 54, column: 21, scope: !747)
!750 = !DILocation(line: 54, column: 19, scope: !747)
!751 = !DILocation(line: 55, column: 31, scope: !747)
!752 = !DILocation(line: 55, column: 19, scope: !747)
!753 = !DILocation(line: 55, column: 37, scope: !747)
!754 = !DILocation(line: 55, column: 46, scope: !747)
!755 = !DILocation(line: 55, column: 95, scope: !747)
!756 = !DILocation(line: 55, column: 82, scope: !747)
!757 = !DILocation(line: 55, column: 102, scope: !747)
!758 = !DILocation(line: 55, column: 113, scope: !747)
!759 = !{!700, !701, i64 0}
!760 = !DILocation(line: 55, column: 120, scope: !747)
!761 = !DILocation(line: 56, column: 16, scope: !747)
!762 = !{!763, !763, i64 0}
!763 = !{!"int", !692, i64 0}
!764 = !DILocation(line: 57, column: 5, scope: !747)
!765 = !DILocation(line: 59, column: 35, scope: !766)
!766 = distinct !DILexicalBlock(scope: !743, file: !389, line: 58, column: 10)
!767 = !DILocation(line: 59, column: 16, scope: !766)
!768 = !DILocation(line: 59, column: 12, scope: !766)
!769 = !DILocation(line: 60, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !389, line: 60, column: 13)
!771 = !DILocation(line: 60, column: 16, scope: !770)
!772 = !DILocation(line: 60, column: 13, scope: !766)
!773 = !DILocation(line: 61, column: 13, scope: !770)
!774 = !DILocation(line: 63, column: 5, scope: !395)
!775 = !DILocation(line: 63, column: 9, scope: !395)
!776 = !DILocation(line: 63, column: 24, scope: !395)
!777 = !{!711, !691, i64 32}
!778 = !DILocation(line: 64, column: 21, scope: !395)
!779 = !DILocation(line: 64, column: 29, scope: !395)
!780 = !DILocation(line: 64, column: 38, scope: !395)
!781 = !DILocation(line: 65, column: 19, scope: !395)
!782 = !DILocation(line: 65, column: 5, scope: !395)
!783 = !DILocation(line: 65, column: 9, scope: !395)
!784 = !DILocation(line: 65, column: 17, scope: !395)
!785 = !DILocation(line: 66, column: 5, scope: !395)
!786 = !DILocation(line: 66, column: 10, scope: !787)
!787 = !DILexicalBlockFile(scope: !401, file: !389, discriminator: 1)
!788 = !DILocation(line: 66, column: 20, scope: !401)
!789 = !DILocation(line: 66, column: 51, scope: !401)
!790 = !DILocation(line: 66, column: 62, scope: !791)
!791 = distinct !DILexicalBlock(scope: !401, file: !389, line: 66, column: 62)
!792 = !DILocation(line: 66, column: 78, scope: !791)
!793 = !DILocation(line: 66, column: 62, scope: !401)
!794 = !DILocation(line: 66, column: 109, scope: !795)
!795 = !DILexicalBlockFile(scope: !791, file: !389, discriminator: 2)
!796 = !DILocation(line: 66, column: 128, scope: !791)
!797 = !DILocation(line: 66, column: 137, scope: !791)
!798 = !DILocation(line: 66, column: 93, scope: !791)
!799 = !DILocation(line: 66, column: 142, scope: !800)
!800 = !DILexicalBlockFile(scope: !801, file: !389, discriminator: 4)
!801 = !DILexicalBlockFile(scope: !395, file: !389, discriminator: 3)
!802 = !DILocation(line: 66, column: 142, scope: !401)
!803 = !DILocation(line: 66, column: 142, scope: !804)
!804 = !DILexicalBlockFile(scope: !401, file: !389, discriminator: 5)
!805 = !DILocation(line: 67, column: 19, scope: !395)
!806 = !DILocation(line: 67, column: 5, scope: !395)
!807 = !DILocation(line: 67, column: 9, scope: !395)
!808 = !DILocation(line: 67, column: 17, scope: !395)
!809 = !DILocation(line: 68, column: 5, scope: !395)
!810 = !DILocation(line: 68, column: 10, scope: !811)
!811 = !DILexicalBlockFile(scope: !403, file: !389, discriminator: 1)
!812 = !DILocation(line: 68, column: 21, scope: !403)
!813 = !DILocation(line: 68, column: 40, scope: !403)
!814 = !DILocation(line: 68, column: 26, scope: !403)
!815 = !DILocation(line: 68, column: 43, scope: !403)
!816 = !DILocation(line: 68, column: 54, scope: !817)
!817 = distinct !DILexicalBlock(scope: !403, file: !389, line: 68, column: 52)
!818 = !DILocation(line: 68, column: 58, scope: !817)
!819 = !DILocation(line: 68, column: 61, scope: !817)
!820 = !{!821, !701, i64 16}
!821 = !{!"", !691, i64 0, !691, i64 8, !701, i64 16}
!822 = !DILocation(line: 68, column: 69, scope: !817)
!823 = !DILocation(line: 68, column: 77, scope: !817)
!824 = !DILocation(line: 68, column: 52, scope: !403)
!825 = !DILocation(line: 68, column: 86, scope: !826)
!826 = !DILexicalBlockFile(scope: !817, file: !389, discriminator: 2)
!827 = !DILocation(line: 68, column: 130, scope: !828)
!828 = !DILexicalBlockFile(scope: !403, file: !389, discriminator: 3)
!829 = !DILocation(line: 68, column: 155, scope: !830)
!830 = !DILexicalBlockFile(scope: !831, file: !389, discriminator: 4)
!831 = distinct !DILexicalBlock(scope: !403, file: !389, line: 68, column: 133)
!832 = !DILocation(line: 68, column: 159, scope: !831)
!833 = !DILocation(line: 68, column: 162, scope: !831)
!834 = !DILocation(line: 68, column: 170, scope: !831)
!835 = !DILocation(line: 68, column: 197, scope: !831)
!836 = !DILocation(line: 68, column: 136, scope: !831)
!837 = !DILocation(line: 68, column: 140, scope: !831)
!838 = !DILocation(line: 68, column: 143, scope: !831)
!839 = !DILocation(line: 68, column: 151, scope: !831)
!840 = !DILocation(line: 68, column: 226, scope: !831)
!841 = !DILocation(line: 68, column: 226, scope: !842)
!842 = !DILexicalBlockFile(scope: !831, file: !389, discriminator: 5)
!843 = !DILocation(line: 68, column: 255, scope: !844)
!844 = !DILexicalBlockFile(scope: !403, file: !389, discriminator: 6)
!845 = !DILocation(line: 68, column: 239, scope: !403)
!846 = !DILocation(line: 68, column: 242, scope: !403)
!847 = !DILocation(line: 68, column: 245, scope: !403)
!848 = !DILocation(line: 68, column: 253, scope: !403)
!849 = !{!821, !691, i64 0}
!850 = !DILocation(line: 68, column: 290, scope: !403)
!851 = !DILocation(line: 68, column: 309, scope: !403)
!852 = !DILocation(line: 68, column: 312, scope: !403)
!853 = !{!821, !691, i64 8}
!854 = !DILocation(line: 68, column: 274, scope: !403)
!855 = !DILocation(line: 68, column: 277, scope: !403)
!856 = !DILocation(line: 68, column: 280, scope: !403)
!857 = !DILocation(line: 68, column: 288, scope: !403)
!858 = !DILocation(line: 68, column: 349, scope: !403)
!859 = !DILocation(line: 68, column: 321, scope: !403)
!860 = !DILocation(line: 68, column: 324, scope: !403)
!861 = !DILocation(line: 68, column: 327, scope: !403)
!862 = !DILocation(line: 68, column: 336, scope: !403)
!863 = !DILocation(line: 68, column: 339, scope: !403)
!864 = !DILocation(line: 68, column: 347, scope: !403)
!865 = !DILocation(line: 68, column: 384, scope: !403)
!866 = !DILocation(line: 68, column: 352, scope: !403)
!867 = !DILocation(line: 68, column: 371, scope: !403)
!868 = !DILocation(line: 68, column: 374, scope: !403)
!869 = !DILocation(line: 68, column: 382, scope: !403)
!870 = !DILocation(line: 68, column: 387, scope: !395)
!871 = !DILocation(line: 68, column: 387, scope: !403)
!872 = !DILocation(line: 68, column: 387, scope: !873)
!873 = !DILexicalBlockFile(scope: !403, file: !389, discriminator: 7)
!874 = !DILocation(line: 69, column: 24, scope: !395)
!875 = !DILocation(line: 69, column: 12, scope: !395)
!876 = !DILocation(line: 69, column: 5, scope: !395)
!877 = !DILocation(line: 70, column: 1, scope: !395)
!878 = !DILocation(line: 191, column: 32, scope: !428)
!879 = !DILocation(line: 193, column: 5, scope: !428)
!880 = !DILocation(line: 193, column: 10, scope: !881)
!881 = !DILexicalBlockFile(scope: !434, file: !389, discriminator: 1)
!882 = !DILocation(line: 193, column: 21, scope: !434)
!883 = !DILocation(line: 193, column: 40, scope: !434)
!884 = !DILocation(line: 193, column: 26, scope: !434)
!885 = !DILocation(line: 193, column: 43, scope: !434)
!886 = !DILocation(line: 193, column: 62, scope: !434)
!887 = !DILocation(line: 193, column: 87, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !389, discriminator: 2)
!889 = distinct !DILexicalBlock(scope: !434, file: !389, line: 193, column: 65)
!890 = !DILocation(line: 193, column: 91, scope: !889)
!891 = !DILocation(line: 193, column: 94, scope: !889)
!892 = !DILocation(line: 193, column: 102, scope: !889)
!893 = !DILocation(line: 193, column: 129, scope: !889)
!894 = !DILocation(line: 193, column: 68, scope: !889)
!895 = !DILocation(line: 193, column: 72, scope: !889)
!896 = !DILocation(line: 193, column: 75, scope: !889)
!897 = !DILocation(line: 193, column: 83, scope: !889)
!898 = !DILocation(line: 193, column: 158, scope: !889)
!899 = !DILocation(line: 193, column: 158, scope: !900)
!900 = !DILexicalBlockFile(scope: !889, file: !389, discriminator: 3)
!901 = !DILocation(line: 193, column: 199, scope: !902)
!902 = !DILexicalBlockFile(scope: !434, file: !389, discriminator: 4)
!903 = !DILocation(line: 193, column: 202, scope: !434)
!904 = !DILocation(line: 193, column: 205, scope: !434)
!905 = !DILocation(line: 193, column: 171, scope: !434)
!906 = !DILocation(line: 193, column: 174, scope: !434)
!907 = !DILocation(line: 193, column: 177, scope: !434)
!908 = !DILocation(line: 193, column: 186, scope: !434)
!909 = !DILocation(line: 193, column: 189, scope: !434)
!910 = !DILocation(line: 193, column: 197, scope: !434)
!911 = !DILocation(line: 193, column: 242, scope: !434)
!912 = !DILocation(line: 193, column: 245, scope: !434)
!913 = !DILocation(line: 193, column: 248, scope: !434)
!914 = !DILocation(line: 193, column: 214, scope: !434)
!915 = !DILocation(line: 193, column: 217, scope: !434)
!916 = !DILocation(line: 193, column: 220, scope: !434)
!917 = !DILocation(line: 193, column: 229, scope: !434)
!918 = !DILocation(line: 193, column: 232, scope: !434)
!919 = !DILocation(line: 193, column: 240, scope: !434)
!920 = !DILocation(line: 193, column: 257, scope: !434)
!921 = !DILocation(line: 193, column: 260, scope: !434)
!922 = !DILocation(line: 193, column: 263, scope: !434)
!923 = !DILocation(line: 193, column: 271, scope: !434)
!924 = !DILocation(line: 193, column: 285, scope: !428)
!925 = !DILocation(line: 193, column: 285, scope: !434)
!926 = !DILocation(line: 194, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !428, file: !389, line: 194, column: 9)
!928 = !DILocation(line: 194, column: 13, scope: !927)
!929 = !DILocation(line: 194, column: 28, scope: !927)
!930 = !DILocation(line: 194, column: 9, scope: !428)
!931 = !DILocation(line: 195, column: 44, scope: !927)
!932 = !DILocation(line: 195, column: 32, scope: !927)
!933 = !DILocation(line: 195, column: 9, scope: !927)
!934 = !DILocation(line: 196, column: 5, scope: !428)
!935 = !DILocation(line: 196, column: 10, scope: !936)
!936 = !DILexicalBlockFile(scope: !436, file: !389, discriminator: 1)
!937 = !DILocation(line: 196, column: 20, scope: !436)
!938 = !DILocation(line: 196, column: 50, scope: !436)
!939 = !DILocation(line: 196, column: 54, scope: !436)
!940 = !DILocation(line: 196, column: 72, scope: !941)
!941 = distinct !DILexicalBlock(scope: !436, file: !389, line: 196, column: 69)
!942 = !DILocation(line: 196, column: 89, scope: !941)
!943 = !DILocation(line: 196, column: 69, scope: !941)
!944 = !DILocation(line: 196, column: 99, scope: !941)
!945 = !DILocation(line: 196, column: 69, scope: !436)
!946 = !DILocation(line: 196, column: 69, scope: !947)
!947 = !DILexicalBlockFile(scope: !436, file: !389, discriminator: 2)
!948 = !DILocation(line: 196, column: 130, scope: !949)
!949 = !DILexicalBlockFile(scope: !941, file: !389, discriminator: 3)
!950 = !DILocation(line: 196, column: 148, scope: !941)
!951 = !DILocation(line: 196, column: 158, scope: !941)
!952 = !{!953, !691, i64 48}
!953 = !{!"_typeobject", !954, i64 0, !691, i64 24, !701, i64 32, !701, i64 40, !691, i64 48, !691, i64 56, !691, i64 64, !691, i64 72, !691, i64 80, !691, i64 88, !691, i64 96, !691, i64 104, !691, i64 112, !691, i64 120, !691, i64 128, !691, i64 136, !691, i64 144, !691, i64 152, !691, i64 160, !701, i64 168, !691, i64 176, !691, i64 184, !691, i64 192, !691, i64 200, !701, i64 208, !691, i64 216, !691, i64 224, !691, i64 232, !691, i64 240, !691, i64 248, !691, i64 256, !691, i64 264, !691, i64 272, !691, i64 280, !701, i64 288, !691, i64 296, !691, i64 304, !691, i64 312, !691, i64 320, !691, i64 328, !691, i64 336, !691, i64 344, !691, i64 352, !691, i64 360, !691, i64 368, !691, i64 376, !763, i64 384, !691, i64 392}
!954 = !{!"", !700, i64 0, !701, i64 16}
!955 = !DILocation(line: 196, column: 183, scope: !941)
!956 = !DILocation(line: 196, column: 114, scope: !941)
!957 = !DILocation(line: 196, column: 202, scope: !958)
!958 = !DILexicalBlockFile(scope: !428, file: !389, discriminator: 4)
!959 = !DILocation(line: 196, column: 202, scope: !436)
!960 = !DILocation(line: 197, column: 5, scope: !428)
!961 = !DILocation(line: 197, column: 10, scope: !962)
!962 = !DILexicalBlockFile(scope: !438, file: !389, discriminator: 1)
!963 = !DILocation(line: 197, column: 20, scope: !438)
!964 = !DILocation(line: 197, column: 51, scope: !438)
!965 = !DILocation(line: 197, column: 55, scope: !438)
!966 = !DILocation(line: 197, column: 69, scope: !441)
!967 = !DILocation(line: 197, column: 85, scope: !441)
!968 = !DILocation(line: 197, column: 69, scope: !438)
!969 = !DILocation(line: 197, column: 100, scope: !970)
!970 = !DILexicalBlockFile(scope: !441, file: !389, discriminator: 2)
!971 = !DILocation(line: 197, column: 105, scope: !972)
!972 = !DILexicalBlockFile(scope: !440, file: !389, discriminator: 4)
!973 = !DILocation(line: 197, column: 115, scope: !440)
!974 = !DILocation(line: 197, column: 145, scope: !440)
!975 = !DILocation(line: 197, column: 171, scope: !976)
!976 = distinct !DILexicalBlock(scope: !440, file: !389, line: 197, column: 168)
!977 = !DILocation(line: 197, column: 188, scope: !976)
!978 = !DILocation(line: 197, column: 168, scope: !976)
!979 = !DILocation(line: 197, column: 198, scope: !976)
!980 = !DILocation(line: 197, column: 168, scope: !440)
!981 = !DILocation(line: 197, column: 168, scope: !982)
!982 = !DILexicalBlockFile(scope: !440, file: !389, discriminator: 5)
!983 = !DILocation(line: 197, column: 229, scope: !984)
!984 = !DILexicalBlockFile(scope: !976, file: !389, discriminator: 6)
!985 = !DILocation(line: 197, column: 247, scope: !976)
!986 = !DILocation(line: 197, column: 257, scope: !976)
!987 = !DILocation(line: 197, column: 282, scope: !976)
!988 = !DILocation(line: 197, column: 213, scope: !976)
!989 = !DILocation(line: 197, column: 301, scope: !990)
!990 = !DILexicalBlockFile(scope: !441, file: !389, discriminator: 7)
!991 = !DILocation(line: 197, column: 301, scope: !440)
!992 = !DILocation(line: 197, column: 301, scope: !993)
!993 = !DILexicalBlockFile(scope: !440, file: !389, discriminator: 8)
!994 = !DILocation(line: 197, column: 301, scope: !995)
!995 = !DILexicalBlockFile(scope: !440, file: !389, discriminator: 9)
!996 = !DILocation(line: 197, column: 314, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !389, discriminator: 10)
!998 = !DILexicalBlockFile(scope: !428, file: !389, discriminator: 3)
!999 = !DILocation(line: 197, column: 314, scope: !438)
!1000 = !DILocation(line: 198, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !428, file: !389, line: 198, column: 9)
!1002 = !DILocation(line: 198, column: 17, scope: !1001)
!1003 = !DILocation(line: 198, column: 9, scope: !428)
!1004 = !DILocation(line: 199, column: 35, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !389, line: 198, column: 24)
!1006 = !DILocation(line: 199, column: 23, scope: !1005)
!1007 = !DILocation(line: 199, column: 9, scope: !1005)
!1008 = !DILocation(line: 199, column: 13, scope: !1005)
!1009 = !DILocation(line: 199, column: 21, scope: !1005)
!1010 = !DILocation(line: 200, column: 21, scope: !1005)
!1011 = !DILocation(line: 200, column: 19, scope: !1005)
!1012 = !DILocation(line: 201, column: 16, scope: !1005)
!1013 = !DILocation(line: 202, column: 5, scope: !1005)
!1014 = !DILocation(line: 204, column: 25, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1001, file: !389, line: 203, column: 10)
!1016 = !DILocation(line: 204, column: 9, scope: !1015)
!1017 = !DILocation(line: 206, column: 1, scope: !428)
!1018 = !DILocation(line: 242, column: 29, scope: !442)
!1019 = !DILocation(line: 244, column: 5, scope: !442)
!1020 = !DILocation(line: 244, column: 15, scope: !442)
!1021 = !DILocation(line: 244, column: 22, scope: !442)
!1022 = !DILocation(line: 244, column: 25, scope: !442)
!1023 = !DILocation(line: 245, column: 5, scope: !442)
!1024 = !DILocation(line: 245, column: 15, scope: !442)
!1025 = !DILocation(line: 245, column: 22, scope: !442)
!1026 = !DILocation(line: 245, column: 25, scope: !442)
!1027 = !DILocation(line: 246, column: 5, scope: !442)
!1028 = !DILocation(line: 246, column: 15, scope: !442)
!1029 = !DILocation(line: 247, column: 5, scope: !442)
!1030 = !DILocation(line: 247, column: 15, scope: !442)
!1031 = !DILocation(line: 247, column: 39, scope: !442)
!1032 = !DILocation(line: 247, column: 64, scope: !442)
!1033 = !DILocation(line: 248, column: 5, scope: !442)
!1034 = !DILocation(line: 248, column: 11, scope: !442)
!1035 = !DILocation(line: 250, column: 9, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !442, file: !389, line: 250, column: 9)
!1037 = !DILocation(line: 250, column: 14, scope: !1036)
!1038 = !DILocation(line: 250, column: 9, scope: !442)
!1039 = !DILocation(line: 251, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !389, line: 250, column: 29)
!1041 = !DILocation(line: 252, column: 9, scope: !1040)
!1042 = !DILocation(line: 254, column: 38, scope: !442)
!1043 = !DILocation(line: 254, column: 46, scope: !442)
!1044 = !DILocation(line: 254, column: 13, scope: !442)
!1045 = !DILocation(line: 254, column: 11, scope: !442)
!1046 = !DILocation(line: 256, column: 36, scope: !442)
!1047 = !DILocation(line: 256, column: 16, scope: !442)
!1048 = !DILocation(line: 256, column: 14, scope: !442)
!1049 = !DILocation(line: 257, column: 9, scope: !458)
!1050 = !DILocation(line: 257, column: 18, scope: !458)
!1051 = !DILocation(line: 257, column: 9, scope: !442)
!1052 = !DILocation(line: 258, column: 37, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !389, line: 258, column: 13)
!1054 = distinct !DILexicalBlock(scope: !458, file: !389, line: 257, column: 33)
!1055 = !DILocation(line: 258, column: 14, scope: !1053)
!1056 = !DILocation(line: 258, column: 13, scope: !1054)
!1057 = !DILocation(line: 259, column: 13, scope: !1053)
!1058 = !DILocation(line: 260, column: 9, scope: !1054)
!1059 = !DILocation(line: 261, column: 5, scope: !1054)
!1060 = !DILocation(line: 262, column: 32, scope: !457)
!1061 = !DILocation(line: 262, column: 44, scope: !457)
!1062 = !DILocation(line: 262, column: 55, scope: !457)
!1063 = !{!953, !701, i64 168}
!1064 = !DILocation(line: 262, column: 64, scope: !457)
!1065 = !DILocation(line: 262, column: 81, scope: !457)
!1066 = !DILocation(line: 262, column: 14, scope: !458)
!1067 = !DILocation(line: 263, column: 9, scope: !456)
!1068 = !DILocation(line: 263, column: 14, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !455, file: !389, discriminator: 1)
!1070 = !DILocation(line: 263, column: 24, scope: !455)
!1071 = !DILocation(line: 263, column: 54, scope: !455)
!1072 = !DILocation(line: 263, column: 73, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !455, file: !389, line: 263, column: 70)
!1074 = !DILocation(line: 263, column: 90, scope: !1073)
!1075 = !DILocation(line: 263, column: 70, scope: !1073)
!1076 = !DILocation(line: 263, column: 100, scope: !1073)
!1077 = !DILocation(line: 263, column: 70, scope: !455)
!1078 = !DILocation(line: 263, column: 70, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !455, file: !389, discriminator: 2)
!1080 = !DILocation(line: 263, column: 131, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1073, file: !389, discriminator: 3)
!1082 = !DILocation(line: 263, column: 149, scope: !1073)
!1083 = !DILocation(line: 263, column: 159, scope: !1073)
!1084 = !DILocation(line: 263, column: 184, scope: !1073)
!1085 = !DILocation(line: 263, column: 115, scope: !1073)
!1086 = !DILocation(line: 263, column: 203, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !456, file: !389, discriminator: 4)
!1088 = !DILocation(line: 263, column: 203, scope: !455)
!1089 = !DILocation(line: 263, column: 203, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !455, file: !389, discriminator: 5)
!1091 = !DILocation(line: 264, column: 18, scope: !456)
!1092 = !DILocation(line: 265, column: 5, scope: !456)
!1093 = !DILocation(line: 267, column: 9, scope: !466)
!1094 = !DILocation(line: 267, column: 15, scope: !466)
!1095 = !DILocation(line: 267, column: 9, scope: !442)
!1096 = !DILocation(line: 268, column: 19, scope: !466)
!1097 = !DILocation(line: 268, column: 9, scope: !466)
!1098 = !DILocation(line: 270, column: 41, scope: !465)
!1099 = !DILocation(line: 270, column: 21, scope: !465)
!1100 = !DILocation(line: 270, column: 19, scope: !465)
!1101 = !DILocation(line: 271, column: 13, scope: !464)
!1102 = !DILocation(line: 271, column: 23, scope: !464)
!1103 = !DILocation(line: 271, column: 13, scope: !465)
!1104 = !DILocation(line: 272, column: 41, scope: !462)
!1105 = !DILocation(line: 272, column: 18, scope: !462)
!1106 = !DILocation(line: 272, column: 17, scope: !463)
!1107 = !DILocation(line: 273, column: 17, scope: !461)
!1108 = !DILocation(line: 273, column: 22, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !460, file: !389, discriminator: 1)
!1110 = !DILocation(line: 273, column: 32, scope: !460)
!1111 = !DILocation(line: 273, column: 63, scope: !460)
!1112 = !DILocation(line: 273, column: 78, scope: !469)
!1113 = !DILocation(line: 273, column: 94, scope: !469)
!1114 = !DILocation(line: 273, column: 78, scope: !460)
!1115 = !DILocation(line: 273, column: 109, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !469, file: !389, discriminator: 2)
!1117 = !DILocation(line: 273, column: 114, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !468, file: !389, discriminator: 4)
!1119 = !DILocation(line: 273, column: 124, scope: !468)
!1120 = !DILocation(line: 273, column: 154, scope: !468)
!1121 = !DILocation(line: 273, column: 180, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !468, file: !389, line: 273, column: 177)
!1123 = !DILocation(line: 273, column: 197, scope: !1122)
!1124 = !DILocation(line: 273, column: 177, scope: !1122)
!1125 = !DILocation(line: 273, column: 207, scope: !1122)
!1126 = !DILocation(line: 273, column: 177, scope: !468)
!1127 = !DILocation(line: 273, column: 177, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !468, file: !389, discriminator: 5)
!1129 = !DILocation(line: 273, column: 238, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1122, file: !389, discriminator: 6)
!1131 = !DILocation(line: 273, column: 256, scope: !1122)
!1132 = !DILocation(line: 273, column: 266, scope: !1122)
!1133 = !DILocation(line: 273, column: 291, scope: !1122)
!1134 = !DILocation(line: 273, column: 222, scope: !1122)
!1135 = !DILocation(line: 273, column: 310, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !469, file: !389, discriminator: 7)
!1137 = !DILocation(line: 273, column: 310, scope: !468)
!1138 = !DILocation(line: 273, column: 310, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !468, file: !389, discriminator: 8)
!1140 = !DILocation(line: 273, column: 310, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !468, file: !389, discriminator: 9)
!1142 = !DILocation(line: 273, column: 323, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !389, discriminator: 10)
!1144 = !DILexicalBlockFile(scope: !461, file: !389, discriminator: 3)
!1145 = !DILocation(line: 273, column: 323, scope: !460)
!1146 = !DILocation(line: 273, column: 323, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !460, file: !389, discriminator: 11)
!1148 = !DILocation(line: 274, column: 17, scope: !461)
!1149 = !DILocation(line: 276, column: 13, scope: !463)
!1150 = !DILocation(line: 277, column: 9, scope: !463)
!1151 = !DILocation(line: 278, column: 36, scope: !473)
!1152 = !DILocation(line: 278, column: 49, scope: !473)
!1153 = !DILocation(line: 278, column: 60, scope: !473)
!1154 = !DILocation(line: 278, column: 69, scope: !473)
!1155 = !DILocation(line: 278, column: 86, scope: !473)
!1156 = !DILocation(line: 278, column: 18, scope: !464)
!1157 = !DILocation(line: 279, column: 13, scope: !472)
!1158 = !DILocation(line: 279, column: 18, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !471, file: !389, discriminator: 1)
!1160 = !DILocation(line: 279, column: 28, scope: !471)
!1161 = !DILocation(line: 279, column: 58, scope: !471)
!1162 = !DILocation(line: 279, column: 78, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !471, file: !389, line: 279, column: 75)
!1164 = !DILocation(line: 279, column: 95, scope: !1163)
!1165 = !DILocation(line: 279, column: 75, scope: !1163)
!1166 = !DILocation(line: 279, column: 105, scope: !1163)
!1167 = !DILocation(line: 279, column: 75, scope: !471)
!1168 = !DILocation(line: 279, column: 75, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !471, file: !389, discriminator: 2)
!1170 = !DILocation(line: 279, column: 136, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1163, file: !389, discriminator: 3)
!1172 = !DILocation(line: 279, column: 154, scope: !1163)
!1173 = !DILocation(line: 279, column: 164, scope: !1163)
!1174 = !DILocation(line: 279, column: 189, scope: !1163)
!1175 = !DILocation(line: 279, column: 120, scope: !1163)
!1176 = !DILocation(line: 279, column: 208, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !472, file: !389, discriminator: 4)
!1178 = !DILocation(line: 279, column: 208, scope: !471)
!1179 = !DILocation(line: 279, column: 208, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !471, file: !389, discriminator: 5)
!1181 = !DILocation(line: 280, column: 23, scope: !472)
!1182 = !DILocation(line: 281, column: 9, scope: !472)
!1183 = !DILocation(line: 286, column: 35, scope: !442)
!1184 = !DILocation(line: 286, column: 46, scope: !442)
!1185 = !DILocation(line: 287, column: 35, scope: !442)
!1186 = !DILocation(line: 287, column: 45, scope: !442)
!1187 = !DILocation(line: 287, column: 54, scope: !442)
!1188 = !DILocation(line: 285, column: 14, scope: !442)
!1189 = !DILocation(line: 285, column: 12, scope: !442)
!1190 = !DILocation(line: 289, column: 5, scope: !442)
!1191 = !DILocation(line: 289, column: 10, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !475, file: !389, discriminator: 1)
!1193 = !DILocation(line: 289, column: 20, scope: !475)
!1194 = !DILocation(line: 289, column: 51, scope: !475)
!1195 = !DILocation(line: 289, column: 66, scope: !478)
!1196 = !DILocation(line: 289, column: 82, scope: !478)
!1197 = !DILocation(line: 289, column: 66, scope: !475)
!1198 = !DILocation(line: 289, column: 97, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !478, file: !389, discriminator: 2)
!1200 = !DILocation(line: 289, column: 102, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !477, file: !389, discriminator: 4)
!1202 = !DILocation(line: 289, column: 112, scope: !477)
!1203 = !DILocation(line: 289, column: 142, scope: !477)
!1204 = !DILocation(line: 289, column: 168, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !477, file: !389, line: 289, column: 165)
!1206 = !DILocation(line: 289, column: 185, scope: !1205)
!1207 = !DILocation(line: 289, column: 165, scope: !1205)
!1208 = !DILocation(line: 289, column: 195, scope: !1205)
!1209 = !DILocation(line: 289, column: 165, scope: !477)
!1210 = !DILocation(line: 289, column: 165, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !477, file: !389, discriminator: 5)
!1212 = !DILocation(line: 289, column: 226, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1205, file: !389, discriminator: 6)
!1214 = !DILocation(line: 289, column: 244, scope: !1205)
!1215 = !DILocation(line: 289, column: 254, scope: !1205)
!1216 = !DILocation(line: 289, column: 279, scope: !1205)
!1217 = !DILocation(line: 289, column: 210, scope: !1205)
!1218 = !DILocation(line: 289, column: 298, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !478, file: !389, discriminator: 7)
!1220 = !DILocation(line: 289, column: 298, scope: !477)
!1221 = !DILocation(line: 289, column: 298, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !477, file: !389, discriminator: 8)
!1223 = !DILocation(line: 289, column: 298, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !477, file: !389, discriminator: 9)
!1225 = !DILocation(line: 289, column: 311, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !389, discriminator: 10)
!1227 = !DILexicalBlockFile(scope: !442, file: !389, discriminator: 3)
!1228 = !DILocation(line: 289, column: 311, scope: !475)
!1229 = !DILocation(line: 289, column: 311, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !475, file: !389, discriminator: 11)
!1231 = !DILocation(line: 290, column: 5, scope: !442)
!1232 = !DILocation(line: 290, column: 10, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !480, file: !389, discriminator: 1)
!1234 = !DILocation(line: 290, column: 20, scope: !480)
!1235 = !DILocation(line: 290, column: 51, scope: !480)
!1236 = !DILocation(line: 290, column: 67, scope: !483)
!1237 = !DILocation(line: 290, column: 83, scope: !483)
!1238 = !DILocation(line: 290, column: 67, scope: !480)
!1239 = !DILocation(line: 290, column: 98, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !483, file: !389, discriminator: 2)
!1241 = !DILocation(line: 290, column: 103, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !482, file: !389, discriminator: 4)
!1243 = !DILocation(line: 290, column: 113, scope: !482)
!1244 = !DILocation(line: 290, column: 143, scope: !482)
!1245 = !DILocation(line: 290, column: 169, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !482, file: !389, line: 290, column: 166)
!1247 = !DILocation(line: 290, column: 186, scope: !1246)
!1248 = !DILocation(line: 290, column: 166, scope: !1246)
!1249 = !DILocation(line: 290, column: 196, scope: !1246)
!1250 = !DILocation(line: 290, column: 166, scope: !482)
!1251 = !DILocation(line: 290, column: 166, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !482, file: !389, discriminator: 5)
!1253 = !DILocation(line: 290, column: 227, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1246, file: !389, discriminator: 6)
!1255 = !DILocation(line: 290, column: 245, scope: !1246)
!1256 = !DILocation(line: 290, column: 255, scope: !1246)
!1257 = !DILocation(line: 290, column: 280, scope: !1246)
!1258 = !DILocation(line: 290, column: 211, scope: !1246)
!1259 = !DILocation(line: 290, column: 299, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !483, file: !389, discriminator: 7)
!1261 = !DILocation(line: 290, column: 299, scope: !482)
!1262 = !DILocation(line: 290, column: 299, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !482, file: !389, discriminator: 8)
!1264 = !DILocation(line: 290, column: 299, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !482, file: !389, discriminator: 9)
!1266 = !DILocation(line: 290, column: 312, scope: !1226)
!1267 = !DILocation(line: 290, column: 312, scope: !480)
!1268 = !DILocation(line: 290, column: 312, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !480, file: !389, discriminator: 11)
!1270 = !DILocation(line: 291, column: 12, scope: !442)
!1271 = !DILocation(line: 291, column: 5, scope: !442)
!1272 = !DILocation(line: 292, column: 1, scope: !442)
!1273 = !DILocation(line: 295, column: 29, scope: !484)
!1274 = !DILocation(line: 297, column: 5, scope: !484)
!1275 = !DILocation(line: 297, column: 15, scope: !484)
!1276 = !DILocation(line: 297, column: 18, scope: !484)
!1277 = !DILocation(line: 298, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !484, file: !389, line: 298, column: 9)
!1279 = !DILocation(line: 298, column: 12, scope: !1278)
!1280 = !DILocation(line: 298, column: 20, scope: !1278)
!1281 = !DILocation(line: 298, column: 9, scope: !484)
!1282 = !DILocation(line: 299, column: 13, scope: !1278)
!1283 = !DILocation(line: 299, column: 11, scope: !1278)
!1284 = !{!701, !701, i64 0}
!1285 = !DILocation(line: 299, column: 9, scope: !1278)
!1286 = !DILocation(line: 301, column: 27, scope: !1278)
!1287 = !DILocation(line: 301, column: 30, scope: !1278)
!1288 = !DILocation(line: 301, column: 13, scope: !1278)
!1289 = !DILocation(line: 301, column: 11, scope: !1278)
!1290 = !DILocation(line: 302, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !484, file: !389, line: 302, column: 9)
!1292 = !DILocation(line: 302, column: 11, scope: !1291)
!1293 = !DILocation(line: 302, column: 9, scope: !484)
!1294 = !DILocation(line: 303, column: 9, scope: !1291)
!1295 = !DILocation(line: 304, column: 23, scope: !484)
!1296 = !DILocation(line: 304, column: 26, scope: !484)
!1297 = !DILocation(line: 304, column: 9, scope: !484)
!1298 = !DILocation(line: 304, column: 7, scope: !484)
!1299 = !DILocation(line: 305, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !484, file: !389, line: 305, column: 9)
!1301 = !DILocation(line: 305, column: 11, scope: !1300)
!1302 = !DILocation(line: 305, column: 9, scope: !484)
!1303 = !DILocation(line: 306, column: 9, scope: !1300)
!1304 = !DILocation(line: 307, column: 9, scope: !484)
!1305 = !DILocation(line: 307, column: 13, scope: !484)
!1306 = !DILocation(line: 307, column: 11, scope: !484)
!1307 = !DILocation(line: 307, column: 7, scope: !484)
!1308 = !DILocation(line: 308, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !484, file: !389, line: 308, column: 9)
!1310 = !DILocation(line: 308, column: 11, scope: !1309)
!1311 = !DILocation(line: 308, column: 9, scope: !484)
!1312 = !DILocation(line: 309, column: 11, scope: !1309)
!1313 = !DILocation(line: 309, column: 9, scope: !1309)
!1314 = !DILocation(line: 310, column: 12, scope: !484)
!1315 = !DILocation(line: 310, column: 5, scope: !484)
!1316 = !DILocation(line: 311, column: 1, scope: !484)
!1317 = !DILocation(line: 322, column: 23, scope: !491)
!1318 = !DILocation(line: 322, column: 39, scope: !491)
!1319 = !DILocation(line: 322, column: 54, scope: !491)
!1320 = !DILocation(line: 324, column: 5, scope: !491)
!1321 = !DILocation(line: 324, column: 15, scope: !491)
!1322 = !DILocation(line: 324, column: 42, scope: !491)
!1323 = !DILocation(line: 324, column: 24, scope: !491)
!1324 = !DILocation(line: 324, column: 51, scope: !491)
!1325 = !DILocation(line: 325, column: 5, scope: !491)
!1326 = !DILocation(line: 325, column: 15, scope: !491)
!1327 = !DILocation(line: 327, column: 32, scope: !491)
!1328 = !DILocation(line: 327, column: 14, scope: !491)
!1329 = !DILocation(line: 327, column: 41, scope: !491)
!1330 = !DILocation(line: 327, column: 10, scope: !491)
!1331 = !DILocation(line: 328, column: 9, scope: !500)
!1332 = !DILocation(line: 328, column: 14, scope: !500)
!1333 = !DILocation(line: 328, column: 9, scope: !491)
!1334 = !DILocation(line: 329, column: 9, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !500, file: !389, line: 328, column: 29)
!1336 = !DILocation(line: 330, column: 9, scope: !1335)
!1337 = !DILocation(line: 333, column: 9, scope: !499)
!1338 = !DILocation(line: 333, column: 20, scope: !499)
!1339 = !DILocation(line: 333, column: 44, scope: !499)
!1340 = !DILocation(line: 333, column: 31, scope: !499)
!1341 = !DILocation(line: 334, column: 9, scope: !499)
!1342 = !DILocation(line: 334, column: 19, scope: !499)
!1343 = !DILocation(line: 334, column: 40, scope: !499)
!1344 = !DILocation(line: 334, column: 49, scope: !499)
!1345 = !DILocation(line: 334, column: 28, scope: !499)
!1346 = !DILocation(line: 335, column: 9, scope: !499)
!1347 = !DILocation(line: 335, column: 13, scope: !499)
!1348 = !DILocation(line: 336, column: 13, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !499, file: !389, line: 336, column: 13)
!1350 = !DILocation(line: 336, column: 20, scope: !1349)
!1351 = !DILocation(line: 336, column: 13, scope: !499)
!1352 = !DILocation(line: 337, column: 13, scope: !1349)
!1353 = !DILocation(line: 338, column: 25, scope: !499)
!1354 = !DILocation(line: 338, column: 33, scope: !499)
!1355 = !DILocation(line: 338, column: 42, scope: !499)
!1356 = !DILocation(line: 339, column: 52, scope: !499)
!1357 = !DILocation(line: 339, column: 29, scope: !499)
!1358 = !DILocation(line: 339, column: 11, scope: !499)
!1359 = !DILocation(line: 339, column: 39, scope: !499)
!1360 = !DILocation(line: 339, column: 10, scope: !499)
!1361 = !DILocation(line: 339, column: 50, scope: !499)
!1362 = !DILocation(line: 340, column: 16, scope: !506)
!1363 = !DILocation(line: 340, column: 14, scope: !506)
!1364 = !DILocation(line: 340, column: 21, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1366, file: !389, discriminator: 2)
!1366 = !DILexicalBlockFile(scope: !505, file: !389, discriminator: 1)
!1367 = !DILocation(line: 340, column: 25, scope: !505)
!1368 = !DILocation(line: 340, column: 23, scope: !505)
!1369 = !DILocation(line: 340, column: 9, scope: !506)
!1370 = !DILocation(line: 341, column: 13, scope: !504)
!1371 = !DILocation(line: 341, column: 23, scope: !504)
!1372 = !DILocation(line: 341, column: 62, scope: !504)
!1373 = !DILocation(line: 341, column: 28, scope: !504)
!1374 = !DILocation(line: 341, column: 47, scope: !504)
!1375 = !DILocation(line: 341, column: 29, scope: !504)
!1376 = !DILocation(line: 341, column: 54, scope: !504)
!1377 = !DILocation(line: 342, column: 13, scope: !504)
!1378 = !DILocation(line: 342, column: 18, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !508, file: !389, discriminator: 1)
!1380 = !DILocation(line: 342, column: 28, scope: !508)
!1381 = !DILocation(line: 342, column: 59, scope: !508)
!1382 = !DILocation(line: 342, column: 67, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !508, file: !389, line: 342, column: 67)
!1384 = !DILocation(line: 342, column: 83, scope: !1383)
!1385 = !DILocation(line: 342, column: 67, scope: !508)
!1386 = !DILocation(line: 342, column: 114, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1383, file: !389, discriminator: 2)
!1388 = !DILocation(line: 342, column: 133, scope: !1383)
!1389 = !DILocation(line: 342, column: 142, scope: !1383)
!1390 = !DILocation(line: 342, column: 98, scope: !1383)
!1391 = !DILocation(line: 342, column: 147, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1393, file: !389, discriminator: 4)
!1393 = !DILexicalBlockFile(scope: !504, file: !389, discriminator: 3)
!1394 = !DILocation(line: 342, column: 147, scope: !508)
!1395 = !DILocation(line: 342, column: 147, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !508, file: !389, discriminator: 5)
!1397 = !DILocation(line: 343, column: 58, scope: !504)
!1398 = !DILocation(line: 343, column: 51, scope: !504)
!1399 = !DILocation(line: 343, column: 52, scope: !504)
!1400 = !DILocation(line: 343, column: 14, scope: !504)
!1401 = !DILocation(line: 343, column: 33, scope: !504)
!1402 = !DILocation(line: 343, column: 15, scope: !504)
!1403 = !DILocation(line: 343, column: 43, scope: !504)
!1404 = !DILocation(line: 343, column: 56, scope: !504)
!1405 = !DILocation(line: 344, column: 9, scope: !505)
!1406 = !DILocation(line: 344, column: 9, scope: !504)
!1407 = !DILocation(line: 340, column: 36, scope: !505)
!1408 = !DILocation(line: 340, column: 9, scope: !505)
!1409 = !DILocation(line: 345, column: 15, scope: !499)
!1410 = !DILocation(line: 345, column: 13, scope: !499)
!1411 = !DILocation(line: 346, column: 5, scope: !500)
!1412 = !DILocation(line: 346, column: 5, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !500, file: !389, discriminator: 1)
!1414 = !DILocation(line: 347, column: 40, scope: !491)
!1415 = !DILocation(line: 347, column: 46, scope: !491)
!1416 = !DILocation(line: 347, column: 51, scope: !491)
!1417 = !DILocation(line: 347, column: 14, scope: !491)
!1418 = !DILocation(line: 347, column: 12, scope: !491)
!1419 = !DILocation(line: 348, column: 5, scope: !491)
!1420 = !DILocation(line: 348, column: 10, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !510, file: !389, discriminator: 1)
!1422 = !DILocation(line: 348, column: 20, scope: !510)
!1423 = !DILocation(line: 348, column: 50, scope: !510)
!1424 = !DILocation(line: 348, column: 64, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !510, file: !389, line: 348, column: 61)
!1426 = !DILocation(line: 348, column: 81, scope: !1425)
!1427 = !DILocation(line: 348, column: 61, scope: !1425)
!1428 = !DILocation(line: 348, column: 91, scope: !1425)
!1429 = !DILocation(line: 348, column: 61, scope: !510)
!1430 = !DILocation(line: 348, column: 61, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !510, file: !389, discriminator: 2)
!1432 = !DILocation(line: 348, column: 122, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1425, file: !389, discriminator: 3)
!1434 = !DILocation(line: 348, column: 140, scope: !1425)
!1435 = !DILocation(line: 348, column: 150, scope: !1425)
!1436 = !DILocation(line: 348, column: 175, scope: !1425)
!1437 = !DILocation(line: 348, column: 106, scope: !1425)
!1438 = !DILocation(line: 348, column: 194, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !491, file: !389, discriminator: 4)
!1440 = !DILocation(line: 348, column: 194, scope: !510)
!1441 = !DILocation(line: 348, column: 194, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !510, file: !389, discriminator: 5)
!1443 = !DILocation(line: 349, column: 12, scope: !491)
!1444 = !DILocation(line: 349, column: 5, scope: !491)
!1445 = !DILocation(line: 350, column: 1, scope: !491)
!1446 = !DILocation(line: 133, column: 27, scope: !511)
!1447 = !DILocation(line: 133, column: 42, scope: !511)
!1448 = !DILocation(line: 135, column: 5, scope: !511)
!1449 = !DILocation(line: 135, column: 21, scope: !511)
!1450 = !DILocation(line: 135, column: 44, scope: !511)
!1451 = !DILocation(line: 135, column: 26, scope: !511)
!1452 = !DILocation(line: 136, column: 5, scope: !511)
!1453 = !DILocation(line: 136, column: 19, scope: !511)
!1454 = !DILocation(line: 136, column: 24, scope: !511)
!1455 = !DILocation(line: 136, column: 29, scope: !511)
!1456 = !DILocation(line: 137, column: 5, scope: !511)
!1457 = !DILocation(line: 137, column: 15, scope: !511)
!1458 = !DILocation(line: 140, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !389, line: 140, column: 13)
!1460 = distinct !DILexicalBlock(scope: !511, file: !389, line: 139, column: 5)
!1461 = !DILocation(line: 140, column: 17, scope: !1459)
!1462 = !{!953, !691, i64 264}
!1463 = !DILocation(line: 140, column: 25, scope: !1459)
!1464 = !DILocation(line: 140, column: 13, scope: !1460)
!1465 = !DILocation(line: 141, column: 30, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !389, line: 141, column: 17)
!1467 = distinct !DILexicalBlock(scope: !1459, file: !389, line: 140, column: 40)
!1468 = !DILocation(line: 141, column: 17, scope: !1466)
!1469 = !DILocation(line: 141, column: 34, scope: !1466)
!1470 = !DILocation(line: 141, column: 17, scope: !1467)
!1471 = !DILocation(line: 142, column: 17, scope: !1466)
!1472 = !DILocation(line: 143, column: 9, scope: !1467)
!1473 = !DILocation(line: 144, column: 32, scope: !1460)
!1474 = !DILocation(line: 144, column: 36, scope: !1460)
!1475 = !DILocation(line: 144, column: 17, scope: !1460)
!1476 = !DILocation(line: 144, column: 15, scope: !1460)
!1477 = !DILocation(line: 147, column: 9, scope: !522)
!1478 = !DILocation(line: 147, column: 15, scope: !522)
!1479 = !DILocation(line: 147, column: 9, scope: !511)
!1480 = !DILocation(line: 148, column: 9, scope: !521)
!1481 = !DILocation(line: 148, column: 22, scope: !521)
!1482 = !DILocation(line: 148, column: 28, scope: !521)
!1483 = !DILocation(line: 148, column: 35, scope: !521)
!1484 = !DILocation(line: 148, column: 45, scope: !521)
!1485 = !{!953, !691, i64 272}
!1486 = !DILocation(line: 149, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !521, file: !389, line: 149, column: 13)
!1488 = !DILocation(line: 149, column: 15, scope: !1487)
!1489 = !DILocation(line: 149, column: 13, scope: !521)
!1490 = !DILocation(line: 150, column: 20, scope: !1487)
!1491 = !DILocation(line: 150, column: 22, scope: !1487)
!1492 = !DILocation(line: 150, column: 29, scope: !1487)
!1493 = !DILocation(line: 150, column: 46, scope: !1487)
!1494 = !DILocation(line: 150, column: 51, scope: !1487)
!1495 = !DILocation(line: 150, column: 34, scope: !1487)
!1496 = !DILocation(line: 150, column: 13, scope: !1487)
!1497 = !DILocation(line: 152, column: 29, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1487, file: !389, line: 151, column: 14)
!1499 = !DILocation(line: 152, column: 38, scope: !1498)
!1500 = !DILocation(line: 152, column: 47, scope: !1498)
!1501 = !DILocation(line: 153, column: 20, scope: !1498)
!1502 = !DILocation(line: 153, column: 13, scope: !1498)
!1503 = !DILocation(line: 155, column: 5, scope: !522)
!1504 = !DILocation(line: 157, column: 29, scope: !511)
!1505 = !DILocation(line: 157, column: 33, scope: !511)
!1506 = !DILocation(line: 157, column: 42, scope: !511)
!1507 = !DILocation(line: 157, column: 12, scope: !511)
!1508 = !DILocation(line: 157, column: 5, scope: !511)
!1509 = !DILocation(line: 158, column: 1, scope: !511)
!1510 = !DILocation(line: 314, column: 33, scope: !523)
!1511 = !DILocation(line: 314, column: 47, scope: !523)
!1512 = !DILocation(line: 314, column: 60, scope: !523)
!1513 = !DILocation(line: 316, column: 5, scope: !523)
!1514 = !DILocation(line: 316, column: 14, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !532, file: !389, discriminator: 1)
!1516 = !DILocation(line: 316, column: 18, scope: !532)
!1517 = !DILocation(line: 316, column: 14, scope: !532)
!1518 = !DILocation(line: 316, column: 14, scope: !533)
!1519 = !DILocation(line: 316, column: 29, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !531, file: !389, discriminator: 2)
!1521 = !DILocation(line: 316, column: 33, scope: !531)
!1522 = !DILocation(line: 316, column: 40, scope: !531)
!1523 = !DILocation(line: 316, column: 59, scope: !531)
!1524 = !DILocation(line: 316, column: 63, scope: !531)
!1525 = !DILocation(line: 316, column: 73, scope: !531)
!1526 = !DILocation(line: 316, column: 83, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !531, file: !389, line: 316, column: 83)
!1528 = !DILocation(line: 316, column: 83, scope: !531)
!1529 = !DILocation(line: 316, column: 96, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1527, file: !389, discriminator: 4)
!1531 = !DILocation(line: 316, column: 89, scope: !1527)
!1532 = !DILocation(line: 316, column: 102, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !532, file: !389, discriminator: 5)
!1534 = !DILocation(line: 316, column: 102, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !389, discriminator: 7)
!1536 = !DILexicalBlockFile(scope: !532, file: !389, discriminator: 6)
!1537 = !DILocation(line: 316, column: 102, scope: !531)
!1538 = !DILocation(line: 316, column: 104, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !389, discriminator: 8)
!1540 = !DILexicalBlockFile(scope: !533, file: !389, discriminator: 3)
!1541 = !DILocation(line: 317, column: 5, scope: !523)
!1542 = !DILocation(line: 317, column: 14, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !536, file: !389, discriminator: 1)
!1544 = !DILocation(line: 317, column: 18, scope: !536)
!1545 = !DILocation(line: 317, column: 14, scope: !536)
!1546 = !DILocation(line: 317, column: 14, scope: !537)
!1547 = !DILocation(line: 317, column: 29, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !535, file: !389, discriminator: 2)
!1549 = !DILocation(line: 317, column: 33, scope: !535)
!1550 = !DILocation(line: 317, column: 40, scope: !535)
!1551 = !DILocation(line: 317, column: 59, scope: !535)
!1552 = !DILocation(line: 317, column: 63, scope: !535)
!1553 = !DILocation(line: 317, column: 73, scope: !535)
!1554 = !DILocation(line: 317, column: 83, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !535, file: !389, line: 317, column: 83)
!1556 = !DILocation(line: 317, column: 83, scope: !535)
!1557 = !DILocation(line: 317, column: 96, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1555, file: !389, discriminator: 4)
!1559 = !DILocation(line: 317, column: 89, scope: !1555)
!1560 = !DILocation(line: 317, column: 102, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !536, file: !389, discriminator: 5)
!1562 = !DILocation(line: 317, column: 102, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1564, file: !389, discriminator: 7)
!1564 = !DILexicalBlockFile(scope: !536, file: !389, discriminator: 6)
!1565 = !DILocation(line: 317, column: 102, scope: !535)
!1566 = !DILocation(line: 317, column: 104, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !389, discriminator: 8)
!1568 = !DILexicalBlockFile(scope: !537, file: !389, discriminator: 3)
!1569 = !DILocation(line: 318, column: 5, scope: !523)
!1570 = !DILocation(line: 319, column: 1, scope: !523)
!1571 = !DILocation(line: 209, column: 30, scope: !538)
!1572 = !DILocation(line: 209, column: 46, scope: !538)
!1573 = !DILocation(line: 209, column: 57, scope: !538)
!1574 = !DILocation(line: 211, column: 5, scope: !538)
!1575 = !DILocation(line: 211, column: 21, scope: !538)
!1576 = !DILocation(line: 211, column: 25, scope: !538)
!1577 = !DILocation(line: 212, column: 5, scope: !538)
!1578 = !DILocation(line: 212, column: 15, scope: !538)
!1579 = !DILocation(line: 213, column: 5, scope: !538)
!1580 = !DILocation(line: 213, column: 9, scope: !538)
!1581 = !DILocation(line: 215, column: 10, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !538, file: !389, line: 215, column: 9)
!1583 = !DILocation(line: 215, column: 13, scope: !1582)
!1584 = !DILocation(line: 215, column: 18, scope: !1582)
!1585 = !DILocation(line: 215, column: 21, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1582, file: !389, discriminator: 1)
!1587 = !DILocation(line: 215, column: 24, scope: !1582)
!1588 = !DILocation(line: 215, column: 30, scope: !1582)
!1589 = !DILocation(line: 216, column: 12, scope: !1582)
!1590 = !DILocation(line: 216, column: 19, scope: !1582)
!1591 = !DILocation(line: 216, column: 27, scope: !1582)
!1592 = !DILocation(line: 216, column: 46, scope: !1582)
!1593 = !DILocation(line: 217, column: 12, scope: !1582)
!1594 = !DILocation(line: 217, column: 20, scope: !1582)
!1595 = !DILocation(line: 217, column: 28, scope: !1582)
!1596 = !DILocation(line: 215, column: 9, scope: !538)
!1597 = !DILocation(line: 219, column: 72, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1582, file: !389, line: 218, column: 5)
!1599 = !DILocation(line: 219, column: 9, scope: !1598)
!1600 = !DILocation(line: 221, column: 27, scope: !538)
!1601 = !DILocation(line: 221, column: 9, scope: !538)
!1602 = !DILocation(line: 221, column: 7, scope: !538)
!1603 = !DILocation(line: 222, column: 27, scope: !538)
!1604 = !DILocation(line: 222, column: 9, scope: !538)
!1605 = !DILocation(line: 222, column: 7, scope: !538)
!1606 = !DILocation(line: 223, column: 35, scope: !538)
!1607 = !DILocation(line: 223, column: 38, scope: !538)
!1608 = !DILocation(line: 223, column: 47, scope: !538)
!1609 = !DILocation(line: 223, column: 50, scope: !538)
!1610 = !DILocation(line: 223, column: 10, scope: !538)
!1611 = !DILocation(line: 223, column: 8, scope: !538)
!1612 = !DILocation(line: 224, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !538, file: !389, line: 224, column: 9)
!1614 = !DILocation(line: 224, column: 12, scope: !1613)
!1615 = !DILocation(line: 224, column: 9, scope: !538)
!1616 = !DILocation(line: 225, column: 13, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !389, line: 225, column: 13)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !389, line: 224, column: 18)
!1619 = !DILocation(line: 225, column: 16, scope: !1617)
!1620 = !DILocation(line: 225, column: 24, scope: !1617)
!1621 = !DILocation(line: 225, column: 38, scope: !1617)
!1622 = !DILocation(line: 225, column: 41, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1617, file: !389, discriminator: 1)
!1624 = !DILocation(line: 225, column: 44, scope: !1617)
!1625 = !DILocation(line: 225, column: 52, scope: !1617)
!1626 = !DILocation(line: 225, column: 13, scope: !1618)
!1627 = !DILocation(line: 226, column: 18, scope: !1617)
!1628 = !DILocation(line: 226, column: 21, scope: !1617)
!1629 = !DILocation(line: 226, column: 32, scope: !1617)
!1630 = !DILocation(line: 226, column: 35, scope: !1617)
!1631 = !DILocation(line: 226, column: 29, scope: !1617)
!1632 = !DILocation(line: 226, column: 16, scope: !1617)
!1633 = !DILocation(line: 226, column: 13, scope: !1617)
!1634 = !DILocation(line: 228, column: 43, scope: !1617)
!1635 = !DILocation(line: 228, column: 46, scope: !1617)
!1636 = !DILocation(line: 228, column: 55, scope: !1617)
!1637 = !DILocation(line: 228, column: 58, scope: !1617)
!1638 = !DILocation(line: 228, column: 18, scope: !1617)
!1639 = !DILocation(line: 228, column: 16, scope: !1617)
!1640 = !DILocation(line: 230, column: 5, scope: !1618)
!1641 = !DILocation(line: 231, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !538, file: !389, line: 231, column: 9)
!1643 = !DILocation(line: 231, column: 12, scope: !1642)
!1644 = !DILocation(line: 231, column: 9, scope: !538)
!1645 = !DILocation(line: 232, column: 9, scope: !1642)
!1646 = !DILocation(line: 233, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !538, file: !389, line: 233, column: 9)
!1648 = !DILocation(line: 233, column: 12, scope: !1647)
!1649 = !DILocation(line: 233, column: 9, scope: !538)
!1650 = !DILocation(line: 234, column: 15, scope: !1647)
!1651 = !DILocation(line: 234, column: 13, scope: !1647)
!1652 = !DILocation(line: 234, column: 9, scope: !1647)
!1653 = !DILocation(line: 236, column: 15, scope: !1647)
!1654 = !DILocation(line: 236, column: 13, scope: !1647)
!1655 = !DILocation(line: 237, column: 21, scope: !538)
!1656 = !DILocation(line: 237, column: 28, scope: !538)
!1657 = !DILocation(line: 237, column: 37, scope: !538)
!1658 = !DILocation(line: 238, column: 12, scope: !538)
!1659 = !DILocation(line: 238, column: 5, scope: !538)
!1660 = !DILocation(line: 239, column: 1, scope: !538)
!1661 = !DILocation(line: 353, column: 28, scope: !561)
!1662 = !DILocation(line: 353, column: 44, scope: !561)
!1663 = !DILocation(line: 353, column: 59, scope: !561)
!1664 = !DILocation(line: 357, column: 29, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !561, file: !389, line: 357, column: 9)
!1666 = !DILocation(line: 357, column: 11, scope: !1665)
!1667 = !DILocation(line: 357, column: 38, scope: !1665)
!1668 = !DILocation(line: 357, column: 47, scope: !1665)
!1669 = !DILocation(line: 357, column: 9, scope: !561)
!1670 = !DILocation(line: 359, column: 25, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !389, line: 357, column: 62)
!1672 = !DILocation(line: 359, column: 33, scope: !1671)
!1673 = !DILocation(line: 359, column: 42, scope: !1671)
!1674 = !DILocation(line: 360, column: 16, scope: !1671)
!1675 = !DILocation(line: 360, column: 9, scope: !1671)
!1676 = !DILocation(line: 363, column: 45, scope: !561)
!1677 = !DILocation(line: 363, column: 27, scope: !561)
!1678 = !DILocation(line: 363, column: 54, scope: !561)
!1679 = !DILocation(line: 363, column: 64, scope: !561)
!1680 = !DILocation(line: 363, column: 12, scope: !561)
!1681 = !DILocation(line: 363, column: 5, scope: !561)
!1682 = !DILocation(line: 364, column: 1, scope: !561)
!1683 = !DILocation(line: 166, column: 26, scope: !566)
!1684 = !DILocation(line: 166, column: 42, scope: !566)
!1685 = !DILocation(line: 166, column: 58, scope: !566)
!1686 = !DILocation(line: 168, column: 5, scope: !566)
!1687 = !DILocation(line: 168, column: 15, scope: !566)
!1688 = !DILocation(line: 169, column: 5, scope: !566)
!1689 = !DILocation(line: 169, column: 15, scope: !566)
!1690 = !DILocation(line: 171, column: 38, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !566, file: !389, line: 171, column: 9)
!1692 = !DILocation(line: 171, column: 10, scope: !1691)
!1693 = !DILocation(line: 171, column: 9, scope: !566)
!1694 = !DILocation(line: 172, column: 9, scope: !1691)
!1695 = !DILocation(line: 173, column: 28, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !566, file: !389, line: 173, column: 9)
!1697 = !DILocation(line: 173, column: 10, scope: !1696)
!1698 = !DILocation(line: 173, column: 9, scope: !566)
!1699 = !DILocation(line: 175, column: 9, scope: !1696)
!1700 = !DILocation(line: 176, column: 27, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !566, file: !389, line: 176, column: 9)
!1702 = !DILocation(line: 176, column: 10, scope: !1701)
!1703 = !DILocation(line: 176, column: 9, scope: !566)
!1704 = !DILocation(line: 177, column: 25, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !389, line: 176, column: 34)
!1706 = !DILocation(line: 177, column: 9, scope: !1705)
!1707 = !DILocation(line: 179, column: 9, scope: !1705)
!1708 = !DILocation(line: 181, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !566, file: !389, line: 181, column: 9)
!1710 = !DILocation(line: 181, column: 14, scope: !1709)
!1711 = !DILocation(line: 181, column: 28, scope: !1709)
!1712 = !DILocation(line: 181, column: 31, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1709, file: !389, discriminator: 1)
!1714 = !DILocation(line: 181, column: 36, scope: !1709)
!1715 = !DILocation(line: 181, column: 9, scope: !566)
!1716 = !DILocation(line: 182, column: 25, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !389, line: 181, column: 58)
!1718 = !DILocation(line: 182, column: 9, scope: !1717)
!1719 = !DILocation(line: 184, column: 9, scope: !1717)
!1720 = !DILocation(line: 187, column: 25, scope: !566)
!1721 = !DILocation(line: 187, column: 31, scope: !566)
!1722 = !DILocation(line: 187, column: 12, scope: !566)
!1723 = !DILocation(line: 187, column: 5, scope: !566)
!1724 = !DILocation(line: 188, column: 1, scope: !566)
!1725 = !DILocation(line: 412, column: 5, scope: !404)
!1726 = !DILocation(line: 412, column: 9, scope: !404)
!1727 = !DILocation(line: 412, column: 25, scope: !404)
!1728 = !DILocation(line: 414, column: 5, scope: !404)
!1729 = !DILocation(line: 414, column: 12, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1731, file: !389, discriminator: 2)
!1731 = !DILexicalBlockFile(scope: !404, file: !389, discriminator: 1)
!1732 = !DILocation(line: 415, column: 9, scope: !410)
!1733 = !DILocation(line: 415, column: 25, scope: !410)
!1734 = !DILocation(line: 415, column: 30, scope: !410)
!1735 = !DILocation(line: 416, column: 40, scope: !410)
!1736 = !DILocation(line: 416, column: 44, scope: !410)
!1737 = !DILocation(line: 416, column: 21, scope: !410)
!1738 = !DILocation(line: 416, column: 19, scope: !410)
!1739 = !DILocation(line: 417, column: 25, scope: !410)
!1740 = !DILocation(line: 417, column: 9, scope: !410)
!1741 = !DILocation(line: 418, column: 16, scope: !410)
!1742 = !DILocation(line: 419, column: 5, scope: !404)
!1743 = !DILocation(line: 421, column: 12, scope: !404)
!1744 = !DILocation(line: 422, column: 1, scope: !404)
!1745 = !DILocation(line: 421, column: 5, scope: !404)
!1746 = !DILocation(line: 427, column: 11, scope: !411)
!1747 = !DILocation(line: 428, column: 1, scope: !411)
!1748 = !DILocation(line: 432, column: 34, scope: !414)
!1749 = !DILocation(line: 434, column: 28, scope: !414)
!1750 = !DILocation(line: 436, column: 28, scope: !414)
!1751 = !DILocation(line: 434, column: 5, scope: !414)
!1752 = !DILocation(line: 437, column: 1, scope: !414)
!1753 = !DILocation(line: 444, column: 32, scope: !419)
!1754 = !DILocation(line: 445, column: 5, scope: !419)
!1755 = !DILocation(line: 445, column: 29, scope: !419)
!1756 = !DILocation(line: 446, column: 43, scope: !419)
!1757 = !DILocation(line: 446, column: 16, scope: !419)
!1758 = !DILocation(line: 446, column: 12, scope: !419)
!1759 = !DILocation(line: 448, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !419, file: !389, line: 448, column: 9)
!1761 = !DILocation(line: 448, column: 16, scope: !1760)
!1762 = !DILocation(line: 448, column: 9, scope: !419)
!1763 = !DILocation(line: 448, column: 31, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1760, file: !389, discriminator: 1)
!1765 = !DILocation(line: 448, column: 31, scope: !1760)
!1766 = !DILocation(line: 449, column: 21, scope: !419)
!1767 = !DILocation(line: 449, column: 29, scope: !419)
!1768 = !DILocation(line: 449, column: 38, scope: !419)
!1769 = !DILocation(line: 450, column: 20, scope: !419)
!1770 = !DILocation(line: 450, column: 5, scope: !419)
!1771 = !DILocation(line: 450, column: 13, scope: !419)
!1772 = !DILocation(line: 450, column: 18, scope: !419)
!1773 = !{!1774, !691, i64 16}
!1774 = !{!"", !700, i64 0, !691, i64 16}
!1775 = !DILocation(line: 451, column: 5, scope: !419)
!1776 = !DILocation(line: 451, column: 10, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !424, file: !389, discriminator: 1)
!1778 = !DILocation(line: 451, column: 21, scope: !424)
!1779 = !DILocation(line: 451, column: 40, scope: !424)
!1780 = !DILocation(line: 451, column: 26, scope: !424)
!1781 = !DILocation(line: 451, column: 47, scope: !424)
!1782 = !DILocation(line: 451, column: 58, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !424, file: !389, line: 451, column: 56)
!1784 = !DILocation(line: 451, column: 62, scope: !1783)
!1785 = !DILocation(line: 451, column: 65, scope: !1783)
!1786 = !DILocation(line: 451, column: 73, scope: !1783)
!1787 = !DILocation(line: 451, column: 81, scope: !1783)
!1788 = !DILocation(line: 451, column: 56, scope: !424)
!1789 = !DILocation(line: 451, column: 90, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1783, file: !389, discriminator: 2)
!1791 = !DILocation(line: 451, column: 134, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !424, file: !389, discriminator: 3)
!1793 = !DILocation(line: 451, column: 159, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1795, file: !389, discriminator: 4)
!1795 = distinct !DILexicalBlock(scope: !424, file: !389, line: 451, column: 137)
!1796 = !DILocation(line: 451, column: 163, scope: !1795)
!1797 = !DILocation(line: 451, column: 166, scope: !1795)
!1798 = !DILocation(line: 451, column: 174, scope: !1795)
!1799 = !DILocation(line: 451, column: 201, scope: !1795)
!1800 = !DILocation(line: 451, column: 140, scope: !1795)
!1801 = !DILocation(line: 451, column: 144, scope: !1795)
!1802 = !DILocation(line: 451, column: 147, scope: !1795)
!1803 = !DILocation(line: 451, column: 155, scope: !1795)
!1804 = !DILocation(line: 451, column: 230, scope: !1795)
!1805 = !DILocation(line: 451, column: 230, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1795, file: !389, discriminator: 5)
!1807 = !DILocation(line: 451, column: 259, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !424, file: !389, discriminator: 6)
!1809 = !DILocation(line: 451, column: 243, scope: !424)
!1810 = !DILocation(line: 451, column: 246, scope: !424)
!1811 = !DILocation(line: 451, column: 249, scope: !424)
!1812 = !DILocation(line: 451, column: 257, scope: !424)
!1813 = !DILocation(line: 451, column: 294, scope: !424)
!1814 = !DILocation(line: 451, column: 313, scope: !424)
!1815 = !DILocation(line: 451, column: 316, scope: !424)
!1816 = !DILocation(line: 451, column: 278, scope: !424)
!1817 = !DILocation(line: 451, column: 281, scope: !424)
!1818 = !DILocation(line: 451, column: 284, scope: !424)
!1819 = !DILocation(line: 451, column: 292, scope: !424)
!1820 = !DILocation(line: 451, column: 353, scope: !424)
!1821 = !DILocation(line: 451, column: 325, scope: !424)
!1822 = !DILocation(line: 451, column: 328, scope: !424)
!1823 = !DILocation(line: 451, column: 331, scope: !424)
!1824 = !DILocation(line: 451, column: 340, scope: !424)
!1825 = !DILocation(line: 451, column: 343, scope: !424)
!1826 = !DILocation(line: 451, column: 351, scope: !424)
!1827 = !DILocation(line: 451, column: 388, scope: !424)
!1828 = !DILocation(line: 451, column: 356, scope: !424)
!1829 = !DILocation(line: 451, column: 375, scope: !424)
!1830 = !DILocation(line: 451, column: 378, scope: !424)
!1831 = !DILocation(line: 451, column: 386, scope: !424)
!1832 = !DILocation(line: 451, column: 391, scope: !419)
!1833 = !DILocation(line: 451, column: 391, scope: !424)
!1834 = !DILocation(line: 451, column: 391, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !424, file: !389, discriminator: 7)
!1836 = !DILocation(line: 452, column: 24, scope: !419)
!1837 = !DILocation(line: 452, column: 12, scope: !419)
!1838 = !DILocation(line: 452, column: 5, scope: !419)
!1839 = !DILocation(line: 453, column: 1, scope: !419)
!1840 = !DILocation(line: 456, column: 37, scope: !425)
!1841 = !DILocation(line: 458, column: 12, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !425, file: !389, line: 458, column: 9)
!1843 = !DILocation(line: 458, column: 17, scope: !1842)
!1844 = !DILocation(line: 458, column: 25, scope: !1842)
!1845 = !DILocation(line: 458, column: 9, scope: !425)
!1846 = !DILocation(line: 459, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !389, line: 458, column: 53)
!1848 = !DILocation(line: 460, column: 9, scope: !1847)
!1849 = !DILocation(line: 462, column: 40, scope: !425)
!1850 = !DILocation(line: 462, column: 14, scope: !425)
!1851 = !DILocation(line: 462, column: 47, scope: !425)
!1852 = !DILocation(line: 462, column: 5, scope: !425)
!1853 = !DILocation(line: 463, column: 1, scope: !425)
!1854 = !DILocation(line: 516, column: 34, scope: !575)
!1855 = !DILocation(line: 517, column: 5, scope: !575)
!1856 = !DILocation(line: 517, column: 10, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !579, file: !389, discriminator: 1)
!1858 = !DILocation(line: 517, column: 21, scope: !579)
!1859 = !DILocation(line: 517, column: 40, scope: !579)
!1860 = !DILocation(line: 517, column: 26, scope: !579)
!1861 = !DILocation(line: 517, column: 45, scope: !579)
!1862 = !DILocation(line: 517, column: 64, scope: !579)
!1863 = !DILocation(line: 517, column: 89, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !389, discriminator: 2)
!1865 = distinct !DILexicalBlock(scope: !579, file: !389, line: 517, column: 67)
!1866 = !DILocation(line: 517, column: 93, scope: !1865)
!1867 = !DILocation(line: 517, column: 96, scope: !1865)
!1868 = !DILocation(line: 517, column: 104, scope: !1865)
!1869 = !DILocation(line: 517, column: 131, scope: !1865)
!1870 = !DILocation(line: 517, column: 70, scope: !1865)
!1871 = !DILocation(line: 517, column: 74, scope: !1865)
!1872 = !DILocation(line: 517, column: 77, scope: !1865)
!1873 = !DILocation(line: 517, column: 85, scope: !1865)
!1874 = !DILocation(line: 517, column: 160, scope: !1865)
!1875 = !DILocation(line: 517, column: 160, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1865, file: !389, discriminator: 3)
!1877 = !DILocation(line: 517, column: 201, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !579, file: !389, discriminator: 4)
!1879 = !DILocation(line: 517, column: 204, scope: !579)
!1880 = !DILocation(line: 517, column: 207, scope: !579)
!1881 = !DILocation(line: 517, column: 173, scope: !579)
!1882 = !DILocation(line: 517, column: 176, scope: !579)
!1883 = !DILocation(line: 517, column: 179, scope: !579)
!1884 = !DILocation(line: 517, column: 188, scope: !579)
!1885 = !DILocation(line: 517, column: 191, scope: !579)
!1886 = !DILocation(line: 517, column: 199, scope: !579)
!1887 = !DILocation(line: 517, column: 244, scope: !579)
!1888 = !DILocation(line: 517, column: 247, scope: !579)
!1889 = !DILocation(line: 517, column: 250, scope: !579)
!1890 = !DILocation(line: 517, column: 216, scope: !579)
!1891 = !DILocation(line: 517, column: 219, scope: !579)
!1892 = !DILocation(line: 517, column: 222, scope: !579)
!1893 = !DILocation(line: 517, column: 231, scope: !579)
!1894 = !DILocation(line: 517, column: 234, scope: !579)
!1895 = !DILocation(line: 517, column: 242, scope: !579)
!1896 = !DILocation(line: 517, column: 259, scope: !579)
!1897 = !DILocation(line: 517, column: 262, scope: !579)
!1898 = !DILocation(line: 517, column: 265, scope: !579)
!1899 = !DILocation(line: 517, column: 273, scope: !579)
!1900 = !DILocation(line: 517, column: 287, scope: !575)
!1901 = !DILocation(line: 517, column: 287, scope: !579)
!1902 = !DILocation(line: 518, column: 5, scope: !575)
!1903 = !DILocation(line: 518, column: 10, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !581, file: !389, discriminator: 1)
!1905 = !DILocation(line: 518, column: 20, scope: !581)
!1906 = !DILocation(line: 518, column: 78, scope: !581)
!1907 = !DILocation(line: 518, column: 52, scope: !581)
!1908 = !DILocation(line: 518, column: 87, scope: !581)
!1909 = !DILocation(line: 518, column: 103, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !581, file: !389, line: 518, column: 100)
!1911 = !DILocation(line: 518, column: 120, scope: !1910)
!1912 = !DILocation(line: 518, column: 100, scope: !1910)
!1913 = !DILocation(line: 518, column: 130, scope: !1910)
!1914 = !DILocation(line: 518, column: 100, scope: !581)
!1915 = !DILocation(line: 518, column: 100, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !581, file: !389, discriminator: 2)
!1917 = !DILocation(line: 518, column: 161, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1910, file: !389, discriminator: 3)
!1919 = !DILocation(line: 518, column: 179, scope: !1910)
!1920 = !DILocation(line: 518, column: 189, scope: !1910)
!1921 = !DILocation(line: 518, column: 214, scope: !1910)
!1922 = !DILocation(line: 518, column: 145, scope: !1910)
!1923 = !DILocation(line: 518, column: 233, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !575, file: !389, discriminator: 4)
!1925 = !DILocation(line: 518, column: 233, scope: !581)
!1926 = !DILocation(line: 519, column: 21, scope: !575)
!1927 = !DILocation(line: 519, column: 5, scope: !575)
!1928 = !DILocation(line: 520, column: 1, scope: !575)
!1929 = !DILocation(line: 572, column: 31, scope: !582)
!1930 = !DILocation(line: 574, column: 5, scope: !582)
!1931 = !DILocation(line: 574, column: 15, scope: !582)
!1932 = !DILocation(line: 574, column: 48, scope: !582)
!1933 = !DILocation(line: 574, column: 22, scope: !582)
!1934 = !DILocation(line: 575, column: 5, scope: !582)
!1935 = !DILocation(line: 575, column: 15, scope: !582)
!1936 = !DILocation(line: 575, column: 40, scope: !582)
!1937 = !DILocation(line: 576, column: 5, scope: !582)
!1938 = !DILocation(line: 576, column: 11, scope: !582)
!1939 = !DILocation(line: 578, column: 9, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !582, file: !389, line: 578, column: 9)
!1941 = !DILocation(line: 578, column: 14, scope: !1940)
!1942 = !DILocation(line: 578, column: 9, scope: !582)
!1943 = !DILocation(line: 579, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !389, line: 578, column: 29)
!1945 = !DILocation(line: 580, column: 9, scope: !1944)
!1946 = !DILocation(line: 583, column: 36, scope: !582)
!1947 = !DILocation(line: 583, column: 16, scope: !582)
!1948 = !DILocation(line: 583, column: 14, scope: !582)
!1949 = !DILocation(line: 584, column: 9, scope: !593)
!1950 = !DILocation(line: 584, column: 18, scope: !593)
!1951 = !DILocation(line: 584, column: 9, scope: !582)
!1952 = !DILocation(line: 585, column: 37, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !389, line: 585, column: 13)
!1954 = distinct !DILexicalBlock(scope: !593, file: !389, line: 584, column: 33)
!1955 = !DILocation(line: 585, column: 14, scope: !1953)
!1956 = !DILocation(line: 585, column: 13, scope: !1954)
!1957 = !DILocation(line: 586, column: 13, scope: !1953)
!1958 = !DILocation(line: 587, column: 9, scope: !1954)
!1959 = !DILocation(line: 588, column: 5, scope: !1954)
!1960 = !DILocation(line: 589, column: 32, scope: !592)
!1961 = !DILocation(line: 589, column: 44, scope: !592)
!1962 = !DILocation(line: 589, column: 55, scope: !592)
!1963 = !DILocation(line: 589, column: 64, scope: !592)
!1964 = !DILocation(line: 589, column: 81, scope: !592)
!1965 = !DILocation(line: 589, column: 14, scope: !593)
!1966 = !DILocation(line: 590, column: 9, scope: !591)
!1967 = !DILocation(line: 590, column: 14, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !590, file: !389, discriminator: 1)
!1969 = !DILocation(line: 590, column: 24, scope: !590)
!1970 = !DILocation(line: 590, column: 54, scope: !590)
!1971 = !DILocation(line: 590, column: 73, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !590, file: !389, line: 590, column: 70)
!1973 = !DILocation(line: 590, column: 90, scope: !1972)
!1974 = !DILocation(line: 590, column: 70, scope: !1972)
!1975 = !DILocation(line: 590, column: 100, scope: !1972)
!1976 = !DILocation(line: 590, column: 70, scope: !590)
!1977 = !DILocation(line: 590, column: 70, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !590, file: !389, discriminator: 2)
!1979 = !DILocation(line: 590, column: 131, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1972, file: !389, discriminator: 3)
!1981 = !DILocation(line: 590, column: 149, scope: !1972)
!1982 = !DILocation(line: 590, column: 159, scope: !1972)
!1983 = !DILocation(line: 590, column: 184, scope: !1972)
!1984 = !DILocation(line: 590, column: 115, scope: !1972)
!1985 = !DILocation(line: 590, column: 203, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !591, file: !389, discriminator: 4)
!1987 = !DILocation(line: 590, column: 203, scope: !590)
!1988 = !DILocation(line: 590, column: 203, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !590, file: !389, discriminator: 5)
!1990 = !DILocation(line: 591, column: 18, scope: !591)
!1991 = !DILocation(line: 592, column: 5, scope: !591)
!1992 = !DILocation(line: 595, column: 35, scope: !582)
!1993 = !DILocation(line: 595, column: 45, scope: !582)
!1994 = !DILocation(line: 595, column: 54, scope: !582)
!1995 = !DILocation(line: 594, column: 14, scope: !582)
!1996 = !DILocation(line: 594, column: 12, scope: !582)
!1997 = !DILocation(line: 597, column: 5, scope: !582)
!1998 = !DILocation(line: 597, column: 10, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !595, file: !389, discriminator: 1)
!2000 = !DILocation(line: 597, column: 20, scope: !595)
!2001 = !DILocation(line: 597, column: 51, scope: !595)
!2002 = !DILocation(line: 597, column: 66, scope: !598)
!2003 = !DILocation(line: 597, column: 82, scope: !598)
!2004 = !DILocation(line: 597, column: 66, scope: !595)
!2005 = !DILocation(line: 597, column: 97, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !598, file: !389, discriminator: 2)
!2007 = !DILocation(line: 597, column: 102, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !597, file: !389, discriminator: 4)
!2009 = !DILocation(line: 597, column: 112, scope: !597)
!2010 = !DILocation(line: 597, column: 142, scope: !597)
!2011 = !DILocation(line: 597, column: 168, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !597, file: !389, line: 597, column: 165)
!2013 = !DILocation(line: 597, column: 185, scope: !2012)
!2014 = !DILocation(line: 597, column: 165, scope: !2012)
!2015 = !DILocation(line: 597, column: 195, scope: !2012)
!2016 = !DILocation(line: 597, column: 165, scope: !597)
!2017 = !DILocation(line: 597, column: 165, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !597, file: !389, discriminator: 5)
!2019 = !DILocation(line: 597, column: 226, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2012, file: !389, discriminator: 6)
!2021 = !DILocation(line: 597, column: 244, scope: !2012)
!2022 = !DILocation(line: 597, column: 254, scope: !2012)
!2023 = !DILocation(line: 597, column: 279, scope: !2012)
!2024 = !DILocation(line: 597, column: 210, scope: !2012)
!2025 = !DILocation(line: 597, column: 298, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !598, file: !389, discriminator: 7)
!2027 = !DILocation(line: 597, column: 298, scope: !597)
!2028 = !DILocation(line: 597, column: 298, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !597, file: !389, discriminator: 8)
!2030 = !DILocation(line: 597, column: 298, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !597, file: !389, discriminator: 9)
!2032 = !DILocation(line: 597, column: 311, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2034, file: !389, discriminator: 10)
!2034 = !DILexicalBlockFile(scope: !582, file: !389, discriminator: 3)
!2035 = !DILocation(line: 597, column: 311, scope: !595)
!2036 = !DILocation(line: 597, column: 311, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !595, file: !389, discriminator: 11)
!2038 = !DILocation(line: 598, column: 12, scope: !582)
!2039 = !DILocation(line: 598, column: 5, scope: !582)
!2040 = !DILocation(line: 599, column: 1, scope: !582)
!2041 = !DILocation(line: 529, column: 31, scope: !599)
!2042 = !DILocation(line: 529, column: 47, scope: !599)
!2043 = !DILocation(line: 529, column: 62, scope: !599)
!2044 = !DILocation(line: 531, column: 46, scope: !599)
!2045 = !DILocation(line: 531, column: 28, scope: !599)
!2046 = !DILocation(line: 531, column: 55, scope: !599)
!2047 = !DILocation(line: 531, column: 65, scope: !599)
!2048 = !DILocation(line: 531, column: 70, scope: !599)
!2049 = !DILocation(line: 531, column: 12, scope: !599)
!2050 = !DILocation(line: 531, column: 5, scope: !599)
!2051 = !DILocation(line: 491, column: 35, scope: !604)
!2052 = !DILocation(line: 491, column: 51, scope: !604)
!2053 = !DILocation(line: 493, column: 5, scope: !604)
!2054 = !DILocation(line: 493, column: 19, scope: !604)
!2055 = !DILocation(line: 493, column: 24, scope: !604)
!2056 = !DILocation(line: 493, column: 30, scope: !604)
!2057 = !DILocation(line: 494, column: 5, scope: !604)
!2058 = !DILocation(line: 494, column: 15, scope: !604)
!2059 = !DILocation(line: 496, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !604, file: !389, line: 496, column: 9)
!2061 = !DILocation(line: 496, column: 13, scope: !2060)
!2062 = !DILocation(line: 496, column: 21, scope: !2060)
!2063 = !DILocation(line: 496, column: 9, scope: !604)
!2064 = !DILocation(line: 497, column: 26, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !389, line: 497, column: 13)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !389, line: 496, column: 36)
!2067 = !DILocation(line: 497, column: 13, scope: !2065)
!2068 = !DILocation(line: 497, column: 30, scope: !2065)
!2069 = !DILocation(line: 497, column: 13, scope: !2066)
!2070 = !DILocation(line: 498, column: 13, scope: !2065)
!2071 = !DILocation(line: 499, column: 5, scope: !2066)
!2072 = !DILocation(line: 500, column: 28, scope: !604)
!2073 = !DILocation(line: 500, column: 32, scope: !604)
!2074 = !DILocation(line: 500, column: 13, scope: !604)
!2075 = !DILocation(line: 500, column: 11, scope: !604)
!2076 = !DILocation(line: 502, column: 9, scope: !612)
!2077 = !DILocation(line: 502, column: 15, scope: !612)
!2078 = !DILocation(line: 502, column: 9, scope: !604)
!2079 = !DILocation(line: 503, column: 9, scope: !611)
!2080 = !DILocation(line: 503, column: 22, scope: !611)
!2081 = !DILocation(line: 503, column: 28, scope: !611)
!2082 = !DILocation(line: 503, column: 35, scope: !611)
!2083 = !DILocation(line: 503, column: 45, scope: !611)
!2084 = !DILocation(line: 504, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !611, file: !389, line: 504, column: 13)
!2086 = !DILocation(line: 504, column: 15, scope: !2085)
!2087 = !DILocation(line: 504, column: 13, scope: !611)
!2088 = !DILocation(line: 505, column: 20, scope: !2085)
!2089 = !DILocation(line: 505, column: 22, scope: !2085)
!2090 = !DILocation(line: 505, column: 29, scope: !2085)
!2091 = !DILocation(line: 505, column: 47, scope: !2085)
!2092 = !DILocation(line: 505, column: 53, scope: !2085)
!2093 = !DILocation(line: 505, column: 35, scope: !2085)
!2094 = !DILocation(line: 505, column: 13, scope: !2085)
!2095 = !DILocation(line: 507, column: 29, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2085, file: !389, line: 506, column: 14)
!2097 = !DILocation(line: 507, column: 38, scope: !2096)
!2098 = !DILocation(line: 507, column: 47, scope: !2096)
!2099 = !DILocation(line: 508, column: 20, scope: !2096)
!2100 = !DILocation(line: 508, column: 13, scope: !2096)
!2101 = !DILocation(line: 510, column: 5, scope: !612)
!2102 = !DILocation(line: 512, column: 57, scope: !604)
!2103 = !DILocation(line: 512, column: 31, scope: !604)
!2104 = !DILocation(line: 512, column: 66, scope: !604)
!2105 = !DILocation(line: 512, column: 73, scope: !604)
!2106 = !DILocation(line: 512, column: 12, scope: !604)
!2107 = !DILocation(line: 512, column: 5, scope: !604)
!2108 = !DILocation(line: 513, column: 1, scope: !604)
!2109 = !DILocation(line: 523, column: 35, scope: !613)
!2110 = !DILocation(line: 523, column: 51, scope: !613)
!2111 = !DILocation(line: 523, column: 64, scope: !613)
!2112 = !DILocation(line: 524, column: 5, scope: !613)
!2113 = !DILocation(line: 524, column: 42, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !620, file: !389, discriminator: 1)
!2115 = !DILocation(line: 524, column: 16, scope: !620)
!2116 = !DILocation(line: 524, column: 51, scope: !620)
!2117 = !DILocation(line: 524, column: 14, scope: !620)
!2118 = !DILocation(line: 524, column: 14, scope: !621)
!2119 = !DILocation(line: 524, column: 60, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !619, file: !389, discriminator: 2)
!2121 = !DILocation(line: 524, column: 64, scope: !619)
!2122 = !DILocation(line: 524, column: 71, scope: !619)
!2123 = !DILocation(line: 524, column: 118, scope: !619)
!2124 = !DILocation(line: 524, column: 92, scope: !619)
!2125 = !DILocation(line: 524, column: 127, scope: !619)
!2126 = !DILocation(line: 524, column: 135, scope: !619)
!2127 = !DILocation(line: 524, column: 145, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !619, file: !389, line: 524, column: 145)
!2129 = !DILocation(line: 524, column: 145, scope: !619)
!2130 = !DILocation(line: 524, column: 158, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2128, file: !389, discriminator: 4)
!2132 = !DILocation(line: 524, column: 151, scope: !2128)
!2133 = !DILocation(line: 524, column: 164, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !620, file: !389, discriminator: 5)
!2135 = !DILocation(line: 524, column: 164, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !389, discriminator: 7)
!2137 = !DILexicalBlockFile(scope: !620, file: !389, discriminator: 6)
!2138 = !DILocation(line: 524, column: 164, scope: !619)
!2139 = !DILocation(line: 524, column: 166, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2141, file: !389, discriminator: 8)
!2141 = !DILexicalBlockFile(scope: !621, file: !389, discriminator: 3)
!2142 = !DILocation(line: 525, column: 5, scope: !613)
!2143 = !DILocation(line: 526, column: 1, scope: !613)
!2144 = !DILocation(line: 546, column: 38, scope: !622)
!2145 = !DILocation(line: 546, column: 54, scope: !622)
!2146 = !DILocation(line: 546, column: 65, scope: !622)
!2147 = !DILocation(line: 548, column: 5, scope: !622)
!2148 = !DILocation(line: 548, column: 29, scope: !622)
!2149 = !DILocation(line: 548, column: 33, scope: !622)
!2150 = !DILocation(line: 549, column: 5, scope: !622)
!2151 = !DILocation(line: 549, column: 15, scope: !622)
!2152 = !DILocation(line: 550, column: 5, scope: !622)
!2153 = !DILocation(line: 550, column: 9, scope: !622)
!2154 = !DILocation(line: 552, column: 10, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !622, file: !389, line: 552, column: 9)
!2156 = !DILocation(line: 552, column: 13, scope: !2155)
!2157 = !DILocation(line: 552, column: 18, scope: !2155)
!2158 = !DILocation(line: 552, column: 21, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2155, file: !389, discriminator: 1)
!2160 = !DILocation(line: 552, column: 24, scope: !2155)
!2161 = !DILocation(line: 552, column: 30, scope: !2155)
!2162 = !DILocation(line: 553, column: 12, scope: !2155)
!2163 = !DILocation(line: 553, column: 19, scope: !2155)
!2164 = !DILocation(line: 553, column: 27, scope: !2155)
!2165 = !DILocation(line: 553, column: 54, scope: !2155)
!2166 = !DILocation(line: 554, column: 12, scope: !2155)
!2167 = !DILocation(line: 554, column: 20, scope: !2155)
!2168 = !DILocation(line: 554, column: 28, scope: !2155)
!2169 = !DILocation(line: 552, column: 9, scope: !622)
!2170 = !DILocation(line: 556, column: 72, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2155, file: !389, line: 555, column: 5)
!2172 = !DILocation(line: 556, column: 9, scope: !2171)
!2173 = !DILocation(line: 558, column: 35, scope: !622)
!2174 = !DILocation(line: 558, column: 9, scope: !622)
!2175 = !DILocation(line: 558, column: 7, scope: !622)
!2176 = !DILocation(line: 559, column: 35, scope: !622)
!2177 = !DILocation(line: 559, column: 9, scope: !622)
!2178 = !DILocation(line: 559, column: 7, scope: !622)
!2179 = !DILocation(line: 560, column: 35, scope: !622)
!2180 = !DILocation(line: 560, column: 38, scope: !622)
!2181 = !DILocation(line: 560, column: 44, scope: !622)
!2182 = !DILocation(line: 560, column: 47, scope: !622)
!2183 = !DILocation(line: 560, column: 10, scope: !622)
!2184 = !DILocation(line: 560, column: 8, scope: !622)
!2185 = !DILocation(line: 561, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !622, file: !389, line: 561, column: 9)
!2187 = !DILocation(line: 561, column: 12, scope: !2186)
!2188 = !DILocation(line: 561, column: 9, scope: !622)
!2189 = !DILocation(line: 562, column: 9, scope: !2186)
!2190 = !DILocation(line: 563, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !622, file: !389, line: 563, column: 9)
!2192 = !DILocation(line: 563, column: 12, scope: !2191)
!2193 = !DILocation(line: 563, column: 9, scope: !622)
!2194 = !DILocation(line: 564, column: 15, scope: !2191)
!2195 = !DILocation(line: 564, column: 13, scope: !2191)
!2196 = !DILocation(line: 564, column: 9, scope: !2191)
!2197 = !DILocation(line: 566, column: 15, scope: !2191)
!2198 = !DILocation(line: 566, column: 13, scope: !2191)
!2199 = !DILocation(line: 567, column: 21, scope: !622)
!2200 = !DILocation(line: 567, column: 28, scope: !622)
!2201 = !DILocation(line: 567, column: 37, scope: !622)
!2202 = !DILocation(line: 568, column: 12, scope: !622)
!2203 = !DILocation(line: 568, column: 5, scope: !622)
!2204 = !DILocation(line: 569, column: 1, scope: !622)
!2205 = !DILocation(line: 535, column: 36, scope: !635)
!2206 = !DILocation(line: 535, column: 53, scope: !635)
!2207 = !DILocation(line: 535, column: 68, scope: !635)
!2208 = !DILocation(line: 536, column: 5, scope: !635)
!2209 = !DILocation(line: 536, column: 15, scope: !635)
!2210 = !DILocation(line: 536, column: 50, scope: !635)
!2211 = !DILocation(line: 536, column: 24, scope: !635)
!2212 = !DILocation(line: 536, column: 60, scope: !635)
!2213 = !DILocation(line: 537, column: 9, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !635, file: !389, line: 537, column: 9)
!2215 = !DILocation(line: 537, column: 13, scope: !2214)
!2216 = !DILocation(line: 537, column: 9, scope: !635)
!2217 = !DILocation(line: 538, column: 25, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !389, line: 537, column: 28)
!2219 = !DILocation(line: 538, column: 33, scope: !2218)
!2220 = !DILocation(line: 538, column: 42, scope: !2218)
!2221 = !DILocation(line: 539, column: 16, scope: !2218)
!2222 = !DILocation(line: 539, column: 9, scope: !2218)
!2223 = !DILocation(line: 542, column: 29, scope: !2214)
!2224 = !DILocation(line: 542, column: 35, scope: !2214)
!2225 = !DILocation(line: 542, column: 16, scope: !2214)
!2226 = !DILocation(line: 542, column: 9, scope: !2214)
!2227 = !DILocation(line: 543, column: 1, scope: !635)
!2228 = !DILocation(line: 623, column: 34, scope: !641)
!2229 = !DILocation(line: 623, column: 50, scope: !641)
!2230 = !DILocation(line: 623, column: 66, scope: !641)
!2231 = !DILocation(line: 625, column: 5, scope: !641)
!2232 = !DILocation(line: 625, column: 15, scope: !641)
!2233 = !DILocation(line: 627, column: 46, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !641, file: !389, line: 627, column: 9)
!2235 = !DILocation(line: 627, column: 10, scope: !2234)
!2236 = !DILocation(line: 627, column: 9, scope: !641)
!2237 = !DILocation(line: 628, column: 9, scope: !2234)
!2238 = !DILocation(line: 629, column: 28, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !641, file: !389, line: 629, column: 9)
!2240 = !DILocation(line: 629, column: 10, scope: !2239)
!2241 = !DILocation(line: 629, column: 9, scope: !641)
!2242 = !DILocation(line: 630, column: 9, scope: !2239)
!2243 = !DILocation(line: 631, column: 27, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !641, file: !389, line: 631, column: 9)
!2245 = !DILocation(line: 631, column: 10, scope: !2244)
!2246 = !DILocation(line: 631, column: 9, scope: !641)
!2247 = !DILocation(line: 632, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !389, line: 631, column: 34)
!2249 = !DILocation(line: 632, column: 9, scope: !2248)
!2250 = !DILocation(line: 634, column: 9, scope: !2248)
!2251 = !DILocation(line: 637, column: 33, scope: !641)
!2252 = !DILocation(line: 637, column: 12, scope: !641)
!2253 = !DILocation(line: 637, column: 5, scope: !641)
!2254 = !DILocation(line: 638, column: 1, scope: !641)
!2255 = !DILocation(line: 73, column: 31, scope: !547)
!2256 = !DILocation(line: 75, column: 5, scope: !547)
!2257 = !DILocation(line: 75, column: 15, scope: !547)
!2258 = !DILocation(line: 75, column: 42, scope: !547)
!2259 = !DILocation(line: 75, column: 49, scope: !547)
!2260 = !DILocation(line: 76, column: 5, scope: !547)
!2261 = !DILocation(line: 76, column: 15, scope: !547)
!2262 = !DILocation(line: 76, column: 42, scope: !547)
!2263 = !DILocation(line: 76, column: 49, scope: !547)
!2264 = !DILocation(line: 77, column: 5, scope: !547)
!2265 = !DILocation(line: 77, column: 15, scope: !547)
!2266 = !DILocation(line: 78, column: 5, scope: !547)
!2267 = !DILocation(line: 78, column: 15, scope: !547)
!2268 = !DILocation(line: 79, column: 5, scope: !547)
!2269 = !DILocation(line: 79, column: 15, scope: !547)
!2270 = !DILocation(line: 82, column: 36, scope: !547)
!2271 = !DILocation(line: 82, column: 16, scope: !547)
!2272 = !DILocation(line: 82, column: 14, scope: !547)
!2273 = !DILocation(line: 83, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !547, file: !389, line: 83, column: 9)
!2275 = !DILocation(line: 83, column: 18, scope: !2274)
!2276 = !DILocation(line: 83, column: 9, scope: !547)
!2277 = !DILocation(line: 84, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !389, line: 83, column: 33)
!2279 = !DILocation(line: 86, column: 16, scope: !547)
!2280 = !DILocation(line: 86, column: 14, scope: !547)
!2281 = !DILocation(line: 87, column: 33, scope: !547)
!2282 = !DILocation(line: 87, column: 15, scope: !547)
!2283 = !DILocation(line: 87, column: 13, scope: !547)
!2284 = !DILocation(line: 88, column: 35, scope: !547)
!2285 = !DILocation(line: 88, column: 44, scope: !547)
!2286 = !DILocation(line: 88, column: 50, scope: !547)
!2287 = !DILocation(line: 88, column: 12, scope: !547)
!2288 = !DILocation(line: 88, column: 5, scope: !547)
!2289 = !DILocation(line: 89, column: 1, scope: !547)
!2290 = !DILocation(line: 116, column: 32, scope: !555)
!2291 = !DILocation(line: 116, column: 42, scope: !555)
!2292 = !DILocation(line: 119, column: 9, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !555, file: !389, line: 119, column: 9)
!2294 = !DILocation(line: 119, column: 16, scope: !2293)
!2295 = !DILocation(line: 119, column: 9, scope: !555)
!2296 = !DILocation(line: 120, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !389, line: 119, column: 31)
!2298 = !DILocation(line: 120, column: 15, scope: !2297)
!2299 = !DILocation(line: 121, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !389, line: 121, column: 13)
!2301 = !DILocation(line: 121, column: 20, scope: !2300)
!2302 = !DILocation(line: 121, column: 13, scope: !2297)
!2303 = !DILocation(line: 122, column: 13, scope: !2300)
!2304 = !DILocation(line: 123, column: 5, scope: !2297)
!2305 = !DILocation(line: 124, column: 29, scope: !555)
!2306 = !DILocation(line: 124, column: 33, scope: !555)
!2307 = !DILocation(line: 124, column: 42, scope: !555)
!2308 = !DILocation(line: 124, column: 12, scope: !555)
!2309 = !DILocation(line: 124, column: 5, scope: !555)
!2310 = !DILocation(line: 125, column: 1, scope: !555)
!2311 = !DILocation(line: 474, column: 34, scope: !631)
!2312 = !DILocation(line: 474, column: 46, scope: !631)
!2313 = !DILocation(line: 477, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !631, file: !389, line: 477, column: 9)
!2315 = !DILocation(line: 477, column: 16, scope: !2314)
!2316 = !DILocation(line: 477, column: 9, scope: !631)
!2317 = !DILocation(line: 478, column: 18, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !389, line: 477, column: 31)
!2319 = !DILocation(line: 478, column: 16, scope: !2318)
!2320 = !DILocation(line: 479, column: 13, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !389, line: 479, column: 13)
!2322 = !DILocation(line: 479, column: 20, scope: !2321)
!2323 = !DILocation(line: 479, column: 13, scope: !2318)
!2324 = !DILocation(line: 480, column: 13, scope: !2321)
!2325 = !DILocation(line: 481, column: 5, scope: !2318)
!2326 = !DILocation(line: 482, column: 57, scope: !631)
!2327 = !DILocation(line: 482, column: 31, scope: !631)
!2328 = !DILocation(line: 482, column: 66, scope: !631)
!2329 = !DILocation(line: 482, column: 73, scope: !631)
!2330 = !DILocation(line: 482, column: 12, scope: !631)
!2331 = !DILocation(line: 482, column: 5, scope: !631)
!2332 = !DILocation(line: 483, column: 1, scope: !631)
