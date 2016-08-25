; ModuleID = './classobject.bc'
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
  store %struct._object* %im, %struct._object** %im.addr, align 8
  %0 = load %struct._object*, %struct._object** %im.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 23)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %im.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyMethodObject*
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %im_func, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_Self(%struct._object* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct._object*, align 8
  store %struct._object* %im, %struct._object** %im.addr, align 8
  %0 = load %struct._object*, %struct._object** %im.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 33)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %im.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyMethodObject*
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %im_self, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMethod_New(%struct._object* %func, %struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %im = alloca %struct.PyMethodObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 49)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8
  store %struct.PyMethodObject* %1, %struct.PyMethodObject** %im, align 8
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %cmp1 = icmp ne %struct.PyMethodObject* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %im_self, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyMethodObject*
  store %struct.PyMethodObject* %5, %struct.PyMethodObject** @free_list, align 8
  %6 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %7 = bitcast %struct.PyMethodObject* %6 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*), %struct._typeobject** %ob_type, align 8
  %8 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %9 = bitcast %struct.PyMethodObject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %10 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %11 = load i32, i32* @numfree, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* @numfree, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*))
  %12 = bitcast %struct._object* %call to %struct.PyMethodObject*
  store %struct.PyMethodObject* %12, %struct.PyMethodObject** %im, align 8
  %13 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %cmp3 = icmp eq %struct.PyMethodObject* %13, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.2
  %14 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %im_weakreflist = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %14, i32 0, i32 3
  store %struct._object* null, %struct._object** %im_weakreflist, align 8
  %15 = load %struct._object*, %struct._object** %func.addr, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt7, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt7, align 8
  %17 = load %struct._object*, %struct._object** %func.addr, align 8
  %18 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %18, i32 0, i32 1
  store %struct._object* %17, %struct._object** %im_func, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %19 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %19, %struct._object** %_py_xincref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %20, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %22, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %23 = load %struct._object*, %struct._object** %self.addr, align 8
  %24 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %im_self13 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %24, i32 0, i32 2
  store %struct._object* %23, %struct._object** %im_self13, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %25 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %26 = bitcast %struct.PyMethodObject* %25 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %26, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %28 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %28, 1
  %cmp15 = icmp ne i64 %shr, -2
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.body.14
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable

if.end.17:                                        ; preds = %do.body.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc19 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_refs20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 2
  %30 = load i64, i64* %gc_refs20, align 8
  %and = and i64 %30, 1
  %or = or i64 %and, -6
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc21 = bitcast %union._gc_head* %31 to %struct.anon*
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2
  store i64 %or, i64* %gc_refs22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.18
  %32 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc24 = bitcast %union._gc_head* %33 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc24, i32 0, i32 0
  store %union._gc_head* %32, %union._gc_head** %gc_next, align 8
  %34 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc25 = bitcast %union._gc_head* %34 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 1
  %35 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %36 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc26 = bitcast %union._gc_head* %36 to %struct.anon*
  %gc_prev27 = getelementptr inbounds %struct.anon, %struct.anon* %gc26, i32 0, i32 1
  store %union._gc_head* %35, %union._gc_head** %gc_prev27, align 8
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8
  %38 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc28 = bitcast %union._gc_head* %38 to %struct.anon*
  %gc_prev29 = getelementptr inbounds %struct.anon, %struct.anon* %gc28, i32 0, i32 1
  %39 = load %union._gc_head*, %union._gc_head** %gc_prev29, align 8
  %gc30 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_next31 = getelementptr inbounds %struct.anon, %struct.anon* %gc30, i32 0, i32 0
  store %union._gc_head* %37, %union._gc_head** %gc_next31, align 8
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8
  %41 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc32 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_prev33 = getelementptr inbounds %struct.anon, %struct.anon* %gc32, i32 0, i32 1
  store %union._gc_head* %40, %union._gc_head** %gc_prev33, align 8
  br label %do.end.34

do.end.34:                                        ; preds = %do.end.23
  %42 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %43 = bitcast %struct.PyMethodObject* %42 to %struct._object*
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %if.then.4, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @method_dealloc(%struct.PyMethodObject* %im) #0 {
entry:
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %1 = bitcast %struct.PyMethodObject* %0 to %union._gc_head*
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
  %14 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_weakreflist = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %14, i32 0, i32 3
  %15 = load %struct._object*, %struct._object** %im_weakreflist, align 8
  %cmp = icmp ne %struct._object* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.16
  %16 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %17 = bitcast %struct.PyMethodObject* %16 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.16
  br label %do.body.17

do.body.17:                                       ; preds = %if.end
  %18 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %im_func, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.20

if.else:                                          ; preds = %do.body.17
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %26 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %im_self, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp23 = icmp ne %struct._object* %28, null
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %do.body.22
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp26, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %31, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %34(%struct._object* %35)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.22
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %36 = load i32, i32* @numfree, align 4
  %cmp38 = icmp slt i32 %36, 256
  br i1 %cmp38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %do.end.37
  %37 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8
  %38 = bitcast %struct.PyMethodObject* %37 to %struct._object*
  %39 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_self40 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %39, i32 0, i32 2
  store %struct._object* %38, %struct._object** %im_self40, align 8
  %40 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  store %struct.PyMethodObject* %40, %struct.PyMethodObject** @free_list, align 8
  %41 = load i32, i32* @numfree, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* @numfree, align 4
  br label %if.end.42

if.else.41:                                       ; preds = %do.end.37
  %42 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %43 = bitcast %struct.PyMethodObject* %42 to i8*
  call void @PyObject_GC_Del(i8* %43)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.39
  ret void
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_xdecref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_xdecref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  store %struct.PyMethodObject* %a, %struct.PyMethodObject** %a.addr, align 8
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %im_self, align 8
  store %struct._object* %1, %struct._object** %self, align 8
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %im_func, align 8
  store %struct._object* %3, %struct._object** %func, align 8
  store %struct._object* null, %struct._object** %funcname, align 8
  store %struct._object* null, %struct._object** %klassname, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %defname, align 8
  %4 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 251)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %self, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %7 = bitcast %struct._typeobject* %6 to %struct._object*
  store %struct._object* %7, %struct._object** %klass, align 8
  %8 = load %struct._object*, %struct._object** %func, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %8, %struct._Py_Identifier* @PyId___name__)
  store %struct._object* %call, %struct._object** %funcname, align 8
  %9 = load %struct._object*, %struct._object** %funcname, align 8
  %cmp1 = icmp eq %struct._object* %9, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  call void @PyErr_Clear()
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %funcname, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 268435456
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %if.end.14, label %if.then.8

if.then.8:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %14 = load %struct._object*, %struct._object** %funcname, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end.13

if.else.11:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %funcname, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.5
  %21 = load %struct._object*, %struct._object** %klass, align 8
  %cmp16 = icmp eq %struct._object* %21, null
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %klassname, align 8
  br label %if.end.61

if.else.18:                                       ; preds = %if.end.15
  %22 = load %struct._object*, %struct._object** %klass, align 8
  %call19 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %22, %struct._Py_Identifier* @PyId___name__)
  store %struct._object* %call19, %struct._object** %klassname, align 8
  %23 = load %struct._object*, %struct._object** %klassname, align 8
  %cmp20 = icmp eq %struct._object* %23, null
  br i1 %cmp20, label %if.then.21, label %if.else.42

if.then.21:                                       ; preds = %if.else.18
  %24 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call22 = call i32 @PyErr_ExceptionMatches(%struct._object* %24)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.41, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %25 = load %struct._object*, %struct._object** %funcname, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp26 = icmp ne %struct._object* %26, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.body.25
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp29, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %29, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %32(%struct._object* %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.25
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.21
  call void @PyErr_Clear()
  br label %if.end.60

if.else.42:                                       ; preds = %if.else.18
  %34 = load %struct._object*, %struct._object** %klassname, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_flags44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 19
  %36 = load i64, i64* %tp_flags44, align 8
  %and45 = and i64 %36, 268435456
  %cmp46 = icmp ne i64 %and45, 0
  br i1 %cmp46, label %if.end.59, label %if.then.47

if.then.47:                                       ; preds = %if.else.42
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %37 = load %struct._object*, %struct._object** %klassname, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp49, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %39, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %42(%struct._object* %43)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %klassname, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %if.else.42
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.41
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.17
  %44 = load %struct._object*, %struct._object** %klassname, align 8
  %45 = load i8*, i8** %defname, align 8
  %46 = load %struct._object*, %struct._object** %funcname, align 8
  %47 = load i8*, i8** %defname, align 8
  %48 = load %struct._object*, %struct._object** %self, align 8
  %call62 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %struct._object* %44, i8* %45, %struct._object* %46, i8* %47, %struct._object* %48)
  store %struct._object* %call62, %struct._object** %result, align 8
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.61
  %49 = load %struct._object*, %struct._object** %funcname, align 8
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp64, align 8
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp64, align 8
  %cmp65 = icmp ne %struct._object* %50, null
  br i1 %cmp65, label %if.then.66, label %if.end.78

if.then.66:                                       ; preds = %do.body.63
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp64, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp68, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %53, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.67
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %56(%struct._object* %57)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %do.body.63
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %58 = load %struct._object*, %struct._object** %klassname, align 8
  store %struct._object* %58, %struct._object** %_py_xdecref_tmp81, align 8
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp81, align 8
  %cmp82 = icmp ne %struct._object* %59, null
  br i1 %cmp82, label %if.then.83, label %if.end.95

if.then.83:                                       ; preds = %do.body.80
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp81, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp85, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %62, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %65(%struct._object* %66)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.80
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %67 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %67, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.96, %do.end.40, %if.then.4, %if.then
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

; Function Attrs: nounwind uwtable
define internal i64 @method_hash(%struct.PyMethodObject* %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca %struct.PyMethodObject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.PyMethodObject* %a, %struct.PyMethodObject** %a.addr, align 8
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %im_self, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @PyObject_Hash(%struct._object* @_Py_NoneStruct)
  store i64 %call, i64* %x, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8
  %im_self1 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %im_self1, align 8
  %call2 = call i64 @PyObject_Hash(%struct._object* %3)
  store i64 %call2, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %x, align 8
  %cmp3 = icmp eq i64 %4, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a.addr, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %im_func, align 8
  %call6 = call i64 @PyObject_Hash(%struct._object* %6)
  store i64 %call6, i64* %y, align 8
  %7 = load i64, i64* %y, align 8
  %cmp7 = icmp eq i64 %7, -1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i64 -1, i64* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %8 = load i64, i64* %x, align 8
  %9 = load i64, i64* %y, align 8
  %xor = xor i64 %8, %9
  store i64 %xor, i64* %x, align 8
  %10 = load i64, i64* %x, align 8
  %cmp10 = icmp eq i64 %10, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i64 -2, i64* %x, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %11 = load i64, i64* %x, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.8, %if.then.4
  %12 = load i64, i64* %retval
  ret i64 %12
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
  %argcount = alloca i64, align 8
  %newarg = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %func.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyMethodObject*
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %im_self, align 8
  store %struct._object* %2, %struct._object** %self, align 8
  %3 = load %struct._object*, %struct._object** %func.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyMethodObject*
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %im_func, align 8
  store %struct._object* %5, %struct._object** %func.addr, align 8
  %6 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 329)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %7)
  store i64 %call, i64* %argcount, align 8
  %8 = load i64, i64* %argcount, align 8
  %add = add i64 %8, 1
  %call1 = call %struct._object* @PyTuple_New(i64 %add)
  store %struct._object* %call1, %struct._object** %newarg, align 8
  %9 = load %struct._object*, %struct._object** %newarg, align 8
  %cmp2 = icmp eq %struct._object* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %self, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %self, align 8
  %13 = load %struct._object*, %struct._object** %newarg, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %12, %struct._object** %arrayidx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %conv = sext i32 %15 to i64
  %16 = load i64, i64* %argcount, align 8
  %cmp4 = icmp slt i64 %conv, %16
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item6 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item6, i32 0, i64 %idxprom
  %20 = load %struct._object*, %struct._object** %arrayidx7, align 8
  store %struct._object* %20, %struct._object** %v, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %21 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %21, %struct._object** %_py_xincref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %22, null
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %24, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %25 = load %struct._object*, %struct._object** %v, align 8
  %26 = load i32, i32* %i, align 4
  %add14 = add i32 %26, 1
  %idxprom15 = sext i32 %add14 to i64
  %27 = load %struct._object*, %struct._object** %newarg, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 %idxprom15
  store %struct._object* %25, %struct._object** %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %29 = load i32, i32* %i, align 4
  %inc18 = add i32 %29, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._object*, %struct._object** %newarg, align 8
  store %struct._object* %30, %struct._object** %arg.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %for.end
  %31 = load %struct._object*, %struct._object** %func.addr, align 8
  %32 = load %struct._object*, %struct._object** %arg.addr, align 8
  %33 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call20 = call %struct._object* @PyObject_Call(%struct._object* %31, %struct._object* %32, %struct._object* %33)
  store %struct._object* %call20, %struct._object** %result, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.19
  %34 = load %struct._object*, %struct._object** %arg.addr, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt22, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt22, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.21
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.21
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %41 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %41, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.28, %if.then.3, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
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
  %f = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyMethodObject*
  store %struct.PyMethodObject* %1, %struct.PyMethodObject** %im, align 8
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %3, %struct._typeobject** %tp, align 8
  store %struct._object* null, %struct._object** %descr, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 31
  %5 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %6 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* %6)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %7 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %8 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %7, %struct._object* %8)
  store %struct._object* %call4, %struct._object** %descr, align 8
  %9 = load %struct._object*, %struct._object** %descr, align 8
  %cmp5 = icmp ne %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %descr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 32
  %12 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %12, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %13 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %cmp8 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %13, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %14 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %15 = load %struct._object*, %struct._object** %descr, align 8
  %16 = load %struct._object*, %struct._object** %obj.addr, align 8
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %19 = bitcast %struct._typeobject* %18 to %struct._object*
  %call11 = call %struct._object* %14(%struct._object* %15, %struct._object* %16, %struct._object* %19)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.6
  %20 = load %struct._object*, %struct._object** %descr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %22 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.3
  %23 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %23, i32 0, i32 1
  %24 = load %struct._object*, %struct._object** %im_func, align 8
  %25 = load %struct._object*, %struct._object** %name.addr, align 8
  %call13 = call %struct._object* @PyObject_GetAttr(%struct._object* %24, %struct._object* %25)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.else, %if.then.9, %if.then.2
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @method_traverse(%struct.PyMethodObject* %im, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %im_func, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_func1 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %im_func1, align 8
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
  %8 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %im_self, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_self9 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %im_self9, align 8
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*)
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %5, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyMethod_Type to %struct._typeobject*)
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyMethodObject*
  store %struct.PyMethodObject* %8, %struct.PyMethodObject** %a, align 8
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyMethodObject*
  store %struct.PyMethodObject* %10, %struct.PyMethodObject** %b, align 8
  %11 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %im_func, align 8
  %13 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8
  %im_func6 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %im_func6, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %14, i32 2)
  store i32 %call, i32* %eq, align 4
  %15 = load i32, i32* %eq, align 4
  %cmp7 = icmp eq i32 %15, 1
  br i1 %cmp7, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %16, i32 0, i32 2
  %17 = load %struct._object*, %struct._object** %im_self, align 8
  %cmp9 = icmp eq %struct._object* %17, null
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.8
  %18 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8
  %im_self11 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %18, i32 0, i32 2
  %19 = load %struct._object*, %struct._object** %im_self11, align 8
  %cmp12 = icmp eq %struct._object* %19, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false.10, %if.then.8
  %20 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8
  %im_self14 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %20, i32 0, i32 2
  %21 = load %struct._object*, %struct._object** %im_self14, align 8
  %22 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8
  %im_self15 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %im_self15, align 8
  %cmp16 = icmp eq %struct._object* %21, %23
  %conv = zext i1 %cmp16 to i32
  store i32 %conv, i32* %eq, align 4
  br label %if.end.20

if.else:                                          ; preds = %lor.lhs.false.10
  %24 = load %struct.PyMethodObject*, %struct.PyMethodObject** %a, align 8
  %im_self17 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %24, i32 0, i32 2
  %25 = load %struct._object*, %struct._object** %im_self17, align 8
  %26 = load %struct.PyMethodObject*, %struct.PyMethodObject** %b, align 8
  %im_self18 = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %im_self18, align 8
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %25, %struct._object* %27, i32 2)
  store i32 %call19, i32* %eq, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %28 = load i32, i32* %eq, align 4
  %cmp22 = icmp slt i32 %28, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %29 = load i32, i32* %op.addr, align 4
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  %30 = load i32, i32* %eq, align 4
  %tobool = icmp ne i32 %30, 0
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %if.end.25
  %31 = load i32, i32* %eq, align 4
  %tobool30 = icmp ne i32 %31, 0
  %cond31 = select i1 %tobool30, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond31, %struct._object** %res, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %32 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt, align 8
  %inc33 = add i64 %33, 1
  store i64 %inc33, i64* %ob_refcnt, align 8
  %34 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.24, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_descr_get(%struct._object* %meth, %struct._object* %obj, %struct._object* %cls) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %meth.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  store %struct._object* %meth, %struct._object** %meth.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** %meth.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyMethodObject*
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %im_self, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %meth.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %meth.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %meth.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyMethodObject*
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %im_func, align 8
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyMethod_New(%struct._object* %8, %struct._object* %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
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
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %self)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %func, align 8
  %call5 = call i32 @PyCallable_Check(%struct._object* %2)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** %self, align 8
  %cmp9 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.8
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %func, align 8
  %8 = load %struct._object*, %struct._object** %self, align 8
  %call12 = call %struct._object* @PyMethod_New(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.7, %if.then.3, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define i32 @PyMethod_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %im = alloca %struct.PyMethodObject*, align 8
  %0 = load i32, i32* @numfree, align 4
  store i32 %0, i32* %freelist_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8
  %tobool = icmp ne %struct.PyMethodObject* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** @free_list, align 8
  store %struct.PyMethodObject* %2, %struct.PyMethodObject** %im, align 8
  %3 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %im_self, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyMethodObject*
  store %struct.PyMethodObject* %5, %struct.PyMethodObject** @free_list, align 8
  %6 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im, align 8
  %7 = bitcast %struct.PyMethodObject* %6 to i8*
  call void @PyObject_GC_Del(i8* %7)
  %8 = load i32, i32* @numfree, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* @numfree, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %freelist_size, align 4
  ret i32 %9
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyMethod_Fini() #0 {
entry:
  %call = call i32 @PyMethod_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyMethod_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %1 = load i32, i32* @numfree, align 4
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %1, i64 40)
  ret void
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInstanceMethod_New(%struct._object* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %method = alloca %struct.PyInstanceMethodObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*))
  %0 = bitcast %struct._object* %call to %struct.PyInstanceMethodObject*
  store %struct.PyInstanceMethodObject* %0, %struct.PyInstanceMethodObject** %method, align 8
  %1 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8
  %cmp = icmp eq %struct.PyInstanceMethodObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %func.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %func.addr, align 8
  %5 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8
  %func1 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %func1, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8
  %7 = bitcast %struct.PyInstanceMethodObject* %6 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %7, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %9 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %9, 1
  %cmp2 = icmp ne i64 %shr, -2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable

if.end.4:                                         ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc6 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_refs7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 2
  %11 = load i64, i64* %gc_refs7, align 8
  %and = and i64 %11, 1
  %or = or i64 %and, -6
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  store i64 %or, i64* %gc_refs9, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.5
  %13 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  store %union._gc_head* %13, %union._gc_head** %gc_next, align 8
  %15 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc11 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 1
  %16 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %16, %union._gc_head** %gc_prev13, align 8
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  %20 = load %union._gc_head*, %union._gc_head** %gc_prev15, align 8
  %gc16 = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_next17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 0
  store %union._gc_head* %18, %union._gc_head** %gc_next17, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8
  %22 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc18 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_prev19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 1
  store %union._gc_head* %21, %union._gc_head** %gc_prev19, align 8
  br label %do.end.20

do.end.20:                                        ; preds = %do.end
  %23 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %method, align 8
  %24 = bitcast %struct.PyInstanceMethodObject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInstanceMethod_Function(%struct._object* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct._object*, align 8
  store %struct._object* %im, %struct._object** %im.addr, align 8
  %0 = load %struct._object*, %struct._object** %im.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 459)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %im.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyInstanceMethodObject*
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal void @instancemethod_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %union._gc_head*
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
  %14 = load %struct._object*, %struct._object** %self.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyInstanceMethodObject*
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body.17
  br label %if.end

if.else:                                          ; preds = %do.body.17
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end.18

do.end.18:                                        ; preds = %if.end
  %23 = load %struct._object*, %struct._object** %self.addr, align 8
  %24 = bitcast %struct._object* %23 to i8*
  call void @PyObject_GC_Del(i8* %24)
  ret void
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyInstanceMethod_Function(%struct._object* %0)
  store %struct._object* %call, %struct._object** %func, align 8
  store %struct._object* null, %struct._object** %funcname, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %defname, align 8
  %1 = load %struct._object*, %struct._object** %func, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 579)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %func, align 8
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @PyId___name__)
  store %struct._object* %call1, %struct._object** %funcname, align 8
  %3 = load %struct._object*, %struct._object** %funcname, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  call void @PyErr_Clear()
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %funcname, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 268435456
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %if.end.14, label %if.then.8

if.then.8:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %8 = load %struct._object*, %struct._object** %funcname, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end.13

if.else.11:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %funcname, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.6
  %15 = load %struct._object*, %struct._object** %funcname, align 8
  %16 = load i8*, i8** %defname, align 8
  %17 = load %struct._object*, %struct._object** %self.addr, align 8
  %call16 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), %struct._object* %15, i8* %16, %struct._object* %17)
  store %struct._object* %call16, %struct._object** %result, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.15
  %18 = load %struct._object*, %struct._object** %funcname, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %19, null
  br i1 %cmp18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %do.body.17
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp21, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %22, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %25(%struct._object* %26)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.body.17
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %27 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.32, %if.then.5, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_call(%struct._object* %self, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyMethodObject*
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %im_func, align 8
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %4 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call %struct._object* @PyObject_Call(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_getattro(%struct._object* %self, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %descr = alloca %struct._object*, align 8
  %f = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  store %struct._object* null, %struct._object** %descr, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 31
  %3 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* %4)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %5, %struct._object* %6)
  store %struct._object* %call4, %struct._object** %descr, align 8
  %7 = load %struct._object*, %struct._object** %descr, align 8
  %cmp5 = icmp ne %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %descr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 32
  %10 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %10, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %11 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %cmp8 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %11, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %12 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %13 = load %struct._object*, %struct._object** %descr, align 8
  %14 = load %struct._object*, %struct._object** %self.addr, align 8
  %15 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %17 = bitcast %struct._typeobject* %16 to %struct._object*
  %call11 = call %struct._object* %12(%struct._object* %13, %struct._object* %14, %struct._object* %17)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.6
  %18 = load %struct._object*, %struct._object** %descr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.3
  %21 = load %struct._object*, %struct._object** %self.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyInstanceMethodObject*
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %func, align 8
  %24 = load %struct._object*, %struct._object** %name.addr, align 8
  %call13 = call %struct._object* @PyObject_GetAttr(%struct._object* %23, %struct._object* %24)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.else, %if.then.9, %if.then.2
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal i32 @instancemethod_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
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
  %1 = bitcast %struct._object* %0 to %struct.PyInstanceMethodObject*
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %func, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyInstanceMethodObject*
  %func1 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %func1, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*)
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %5, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyInstanceMethod_Type to %struct._typeobject*)
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyInstanceMethodObject*
  store %struct.PyInstanceMethodObject* %8, %struct.PyInstanceMethodObject** %a, align 8
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyInstanceMethodObject*
  store %struct.PyInstanceMethodObject* %10, %struct.PyInstanceMethodObject** %b, align 8
  %11 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %a, align 8
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func, align 8
  %13 = load %struct.PyInstanceMethodObject*, %struct.PyInstanceMethodObject** %b, align 8
  %func6 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %func6, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %14, i32 2)
  store i32 %call, i32* %eq, align 4
  %15 = load i32, i32* %eq, align 4
  %cmp7 = icmp slt i32 %15, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %16 = load i32, i32* %op.addr, align 4
  %cmp10 = icmp eq i32 %16, 2
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %17 = load i32, i32* %eq, align 4
  %tobool = icmp ne i32 %17, 0
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.9
  %18 = load i32, i32* %eq, align 4
  %tobool12 = icmp ne i32 %18, 0
  %cond13 = select i1 %tobool12, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond13, %struct._object** %res, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  %19 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc15 = add i64 %20, 1
  store i64 %inc15, i64* %ob_refcnt, align 8
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.8, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_descr_get(%struct._object* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  store %struct._object* %descr, %struct._object** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %descr.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyInstanceMethodObject*
  %func1 = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %func1, align 8
  store %struct._object* %2, %struct._object** %func, align 8
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %func, align 8
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyMethod_New(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 1, i64 1, %struct._object** %func)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %func, align 8
  %call5 = call i32 @PyCallable_Check(%struct._object* %2)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %func, align 8
  %call9 = call %struct._object* @PyInstanceMethod_New(%struct._object* %4)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
define internal %struct._object* @method_reduce(%struct.PyMethodObject* %im) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %self = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %builtins = alloca %struct._object*, align 8
  %getattr = alloca %struct._object*, align 8
  %funcname = alloca %struct._object*, align 8
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8
  %0 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_self = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %im_self, align 8
  store %struct._object* %1, %struct._object** %self, align 8
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %im_func, align 8
  store %struct._object* %3, %struct._object** %func, align 8
  %4 = load %struct._object*, %struct._object** %func, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @PyId___name__)
  store %struct._object* %call, %struct._object** %funcname, align 8
  %5 = load %struct._object*, %struct._object** %funcname, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyEval_GetBuiltins()
  store %struct._object* %call1, %struct._object** %builtins, align 8
  %6 = load %struct._object*, %struct._object** %builtins, align 8
  %call2 = call %struct._object* @_PyDict_GetItemId(%struct._object* %6, %struct._Py_Identifier* @method_reduce.PyId_getattr)
  store %struct._object* %call2, %struct._object** %getattr, align 8
  %7 = load %struct._object*, %struct._object** %getattr, align 8
  %8 = load %struct._object*, %struct._object** %self, align 8
  %9 = load %struct._object*, %struct._object** %funcname, align 8
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* %7, %struct._object* %8, %struct._object* %9)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_doc(%struct.PyMethodObject* %im, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %im.addr = alloca %struct.PyMethodObject*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.PyMethodObject* %im, %struct.PyMethodObject** %im.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @method_get_doc.docstr, align 8
  %1 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct.PyMethodObject*, %struct.PyMethodObject** %im.addr, align 8
  %im_func = getelementptr inbounds %struct.PyMethodObject, %struct.PyMethodObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %im_func, align 8
  %4 = load %struct._object*, %struct._object** @method_get_doc.docstr, align 8
  %call4 = call %struct._object* @PyObject_GetAttr(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @instancemethod_get_doc(%struct._object* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @instancemethod_get_doc.docstr, align 8
  %1 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyInstanceMethodObject*
  %func = getelementptr inbounds %struct.PyInstanceMethodObject, %struct.PyInstanceMethodObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  %5 = load %struct._object*, %struct._object** @instancemethod_get_doc.docstr, align 8
  %call4 = call %struct._object* @PyObject_GetAttr(%struct._object* %4, %struct._object* %5)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
