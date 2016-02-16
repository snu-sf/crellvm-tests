; ModuleID = 'descrobject.o.bc'
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
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyDescrObject = type { %struct._object, %struct._typeobject*, %struct._object*, %struct._object* }
%struct.PyMethodDescrObject = type { %struct.PyDescrObject, %struct.PyMethodDef* }
%struct.PyMemberDescrObject = type { %struct.PyDescrObject, %struct.PyMemberDef* }
%struct.PyGetSetDescrObject = type { %struct.PyDescrObject, %struct.PyGetSetDef* }
%struct.PyWrapperDescrObject = type { %struct.PyDescrObject, %struct.wrapperbase*, i8* }
%struct.wrapperbase = type { i8*, i32, i8*, %struct._object* (%struct._object*, %struct._object*, i8*)*, i8*, i32, %struct._object* }
%struct.mappingproxyobject = type { %struct._object, %struct._object* }
%struct.wrapperobject = type { %struct._object, %struct.PyWrapperDescrObject*, %struct._object* }
%struct.propertyobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32 }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [18 x i8] c"method_descriptor\00", align 1
@descr_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyDescrObject*)* @descr_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@descr_members = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@method_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*, i8*)* @method_get_doc to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyDescrObject*)* @descr_get_qualname to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*, i8*)* @method_get_text_signature to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyMethodDescr_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PyDescrObject*)* @descr_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*)* @method_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @methoddescr_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @descr_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @descr_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @method_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @method_get to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"classmethod_descriptor\00", align 1
@PyClassMethodDescr_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PyDescrObject*)* @descr_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*)* @method_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @classmethoddescr_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @descr_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @descr_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @method_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @classmethod_get to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"member_descriptor\00", align 1
@member_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemberDescrObject*, i8*)* @member_get_doc to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyDescrObject*)* @descr_get_qualname to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyMemberDescr_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PyDescrObject*)* @descr_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyMemberDescrObject*)* @member_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @descr_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @descr_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @member_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMemberDescrObject*, %struct._object*, %struct._object*)* @member_get to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyMemberDescrObject*, %struct._object*, %struct._object*)* @member_set to i32 (%struct._object*, %struct._object*, %struct._object*)*), i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"getset_descriptor\00", align 1
@getset_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyGetSetDescrObject*, i8*)* @getset_get_doc to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyDescrObject*)* @descr_get_qualname to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyGetSetDescr_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PyDescrObject*)* @descr_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyGetSetDescrObject*)* @getset_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @descr_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @getset_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGetSetDescrObject*, %struct._object*, %struct._object*)* @getset_get to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyGetSetDescrObject*, %struct._object*, %struct._object*)* @getset_set to i32 (%struct._object*, %struct._object*, %struct._object*)*), i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"wrapper_descriptor\00", align 1
@wrapperdescr_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyWrapperDescrObject*, i8*)* @wrapperdescr_get_doc to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyDescrObject*)* @descr_get_qualname to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyWrapperDescrObject*, i8*)* @wrapperdescr_get_text_signature to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyWrapperDescr_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.PyDescrObject*)* @descr_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyWrapperDescrObject*)* @wrapperdescr_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyWrapperDescrObject*, %struct._object*, %struct._object*)* @wrapperdescr_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @descr_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @descr_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @wrapperdescr_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyWrapperDescrObject*, %struct._object*, %struct._object*)* @wrapperdescr_get to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"mappingproxy\00", align 1
@mappingproxy_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@mappingproxy_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.mappingproxyobject*)* @mappingproxy_len to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_getitem to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null }, align 8
@mappingproxy_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_get to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_keys to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_values to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_items to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyDictProxy_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.mappingproxyobject*)* @mappingproxy_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @mappingproxy_as_sequence, %struct.PyMappingMethods* @mappingproxy_as_mapping, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_str to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @mappingproxy_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct.mappingproxyobject*, %struct._object*, i32)* @mappingproxy_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.mappingproxyobject*)* @mappingproxy_getiter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @mappingproxy_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mappingproxy_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"method-wrapper\00", align 1
@wrapper_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.wrapperobject*)* @wrapper_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@wrapper_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@wrapper_getsets = internal global [6 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.wrapperobject*)* @wrapper_objclass to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.wrapperobject*)* @wrapper_name to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.wrapperobject*)* @wrapper_qualname to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.wrapperobject*, i8*)* @wrapper_doc to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.wrapperobject*, i8*)* @wrapper_text_signature to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@_PyMethodWrapper_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.wrapperobject*)* @wrapper_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.wrapperobject*)* @wrapper_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.wrapperobject*)* @wrapper_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.wrapperobject*, %struct._object*, %struct._object*)* @wrapper_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @wrapper_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @wrapper_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @wrapper_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @wrapper_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([6 x %struct.PyGetSetDef], [6 x %struct.PyGetSetDef]* @wrapper_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@property_doc = internal global [760 x i8] c"property(fget=None, fset=None, fdel=None, doc=None) -> property attribute\0A\0Afget is a function to be used for getting an attribute value, and likewise\0Afset is a function for setting, and fdel a function for del'ing, an\0Aattribute.  Typical use is to define a managed attribute x:\0A\0Aclass C(object):\0A    def getx(self): return self._x\0A    def setx(self, value): self._x = value\0A    def delx(self): del self._x\0A    x = property(getx, setx, delx, \22I'm the 'x' property.\22)\0A\0ADecorators make defining new properties or modifying existing ones easy:\0A\0Aclass C(object):\0A    @property\0A    def x(self):\0A        \22I am the 'x' property.\22\0A        return self._x\0A    @x.setter\0A    def x(self, value):\0A        self._x = value\0A    @x.deleter\0A    def x(self):\0A        del self._x\0A\00", align 16
@property_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @property_getter, i32 8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @getter_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @property_setter, i32 8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @setter_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @property_deleter, i32 8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @deleter_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@property_members = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 6, i64 40, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@property_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.propertyobject*, i8*)* @property_get___isabstractmethod__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyProperty_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* @property_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([760 x i8], [760 x i8]* @property_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @property_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @property_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @property_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @property_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @property_descr_get, i32 (%struct._object*, %struct._object*, %struct._object*)* @property_descr_set, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @property_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"<method '%V' of '%s' objects>\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [53 x i8] c"descriptor '%V' of '%.100s' object needs an argument\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"descriptor '%V' requires a '%.100s' object but received a '%.100s'\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@descr_reduce.PyId_getattr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* null }, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"__objclass__\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"__qualname__\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"__text_signature__\00", align 1
@calculate_qualname.PyId___qualname__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct._object* null }, align 8
@.str.21 = private unnamed_addr constant [46 x i8] c"<descriptor>.__name__ is not a unicode object\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"<descriptor>.__objclass__.__qualname__ is not a unicode object\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%S.%S\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"descriptor '%V' for '%s' objects doesn't apply to '%s' object\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"descriptor '%V' requires a type but received a '%.100s'\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c"descriptor '%V' requires a subtype of '%.100s' but received '%.100s\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"descriptor '%V' for type '%s' needs either an object or a type\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"descriptor '%V' for type '%s' needs a type, not a '%s' as arg 2\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"descriptor '%V' for type '%s' doesn't apply to type '%s'\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"<member '%V' of '%s' objects>\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.31 = private unnamed_addr constant [70 x i8] c"descriptor '%V' for '%.100s' objects doesn't apply to '%.100s' object\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"<attribute '%V' of '%s' objects>\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.33 = private unnamed_addr constant [51 x i8] c"attribute '%V' of '%.100s' objects is not readable\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"attribute '%V' of '%.100s' objects is not writable\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"<slot wrapper '%V' of '%s' objects>\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"mappingproxy(%R)\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.37 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"D.keys() -> list of D's keys\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"D.values() -> list of D's values\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"D.items() -> list of D's (key, value) pairs, as 2-tuples\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"D.copy() -> a shallow copy of D\00", align 1
@mappingproxy_get.PyId_get = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._object* null }, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"(OO)\00", align 1
@mappingproxy_keys.PyId_keys = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* null }, align 8
@mappingproxy_values.PyId_values = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %struct._object* null }, align 8
@mappingproxy_items.PyId_items = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), %struct._object* null }, align 8
@mappingproxy_copy.PyId_copy = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), %struct._object* null }, align 8
@mappingproxy_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* null], align 16
@.str.48 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"O:mappingproxy\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"mappingproxy() argument must be a mapping, not %s\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.51 = private unnamed_addr constant [41 x i8] c"<method-wrapper '%s' of %s object at %p>\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"wrapper %s doesn't take keyword arguments\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@wrapper_reduce.PyId_getattr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* null }, align 8
@.str.53 = private unnamed_addr constant [9 x i8] c"__self__\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"getter\00", align 1
@getter_doc = internal global [47 x i8] c"Descriptor to change the getter on a property.\00", align 16
@.str.55 = private unnamed_addr constant [7 x i8] c"setter\00", align 1
@setter_doc = internal global [47 x i8] c"Descriptor to change the setter on a property.\00", align 16
@.str.56 = private unnamed_addr constant [8 x i8] c"deleter\00", align 1
@deleter_doc = internal global [48 x i8] c"Descriptor to change the deleter on a property.\00", align 16
@.str.57 = private unnamed_addr constant [5 x i8] c"OOOO\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"fget\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"fset\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"fdel\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"__isabstractmethod__\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"unreadable attribute\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"can't delete attribute\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"can't set attribute\00", align 1
@property_init.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16
@.str.65 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"|OOOO:property\00", align 1
@property_init.PyId___doc__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_Exception = external global %struct._object*, align 8

; Function Attrs: nounwind uwtable
define internal void @descr_dealloc(%struct.PyDescrObject* %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %descr, i64 0, metadata !578, metadata !1275), !dbg !1276
  %add.ptr = getelementptr %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 -1, i32 1, !dbg !1277
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1279
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1279
  %1 = load i64, i64* %0, align 8, !dbg !1279, !tbaa !1282
  %and = and i64 %1, 1, !dbg !1279
  %or = or i64 %and, -4, !dbg !1279
  store i64 %or, i64* %0, align 8, !dbg !1279, !tbaa !1282
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1288
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1288
  %3 = load i64, i64* %2, align 8, !dbg !1288, !tbaa !1290
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1288
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1288
  %5 = load i64*, i64** %4, align 8, !dbg !1288, !tbaa !1291
  store i64 %3, i64* %5, align 8, !dbg !1288, !tbaa !1290
  %6 = ptrtoint i64* %5 to i64, !dbg !1288
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1288
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !1288, !tbaa !1290
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !1288
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1288
  store i64 %6, i64* %9, align 8, !dbg !1288, !tbaa !1291
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1288, !tbaa !1290
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 1, !dbg !1292
  %10 = bitcast %struct._typeobject** %d_type to %struct._object**, !dbg !1292
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !1292, !tbaa !1294
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !581, metadata !1275), !dbg !1292
  %cmp = icmp eq %struct._object* %11, null, !dbg !1297
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !1298

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !583, metadata !1275), !dbg !1299
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1301
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1301, !tbaa !1303
  %dec = add i64 %12, -1, !dbg !1301
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1301, !tbaa !1303
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1301
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !1304

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !1305
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1305, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1305
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1305, !tbaa !1308
  tail call void %14(%struct._object* %11) #2, !dbg !1305
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 2, !dbg !1312
  %15 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !1312, !tbaa !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !586, metadata !1275), !dbg !1312
  %cmp29 = icmp eq %struct._object* %15, null, !dbg !1315
  br i1 %cmp29, label %if.end.43, label %do.body.31, !dbg !1316

do.body.31:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !588, metadata !1275), !dbg !1317
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1319
  %16 = load i64, i64* %ob_refcnt33, align 8, !dbg !1319, !tbaa !1303
  %dec34 = add i64 %16, -1, !dbg !1319
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1319, !tbaa !1303
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !1319
  br i1 %cmp35, label %if.else.37, label %if.end.43, !dbg !1321

if.else.37:                                       ; preds = %do.body.31
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1322
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1322, !tbaa !1307
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1322
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1322, !tbaa !1308
  tail call void %18(%struct._object* %15) #2, !dbg !1322
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %do.body.31, %if.end.24
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 3, !dbg !1324
  %19 = load %struct._object*, %struct._object** %d_qualname, align 8, !dbg !1324, !tbaa !1326
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !591, metadata !1275), !dbg !1324
  %cmp48 = icmp eq %struct._object* %19, null, !dbg !1327
  br i1 %cmp48, label %if.end.62, label %do.body.50, !dbg !1328

do.body.50:                                       ; preds = %if.end.43
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !593, metadata !1275), !dbg !1329
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !1331
  %20 = load i64, i64* %ob_refcnt52, align 8, !dbg !1331, !tbaa !1303
  %dec53 = add i64 %20, -1, !dbg !1331
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !1331, !tbaa !1303
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !1331
  br i1 %cmp54, label %if.else.56, label %if.end.62, !dbg !1333

if.else.56:                                       ; preds = %do.body.50
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !1334
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1334, !tbaa !1307
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1334
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !1334, !tbaa !1308
  tail call void %22(%struct._object* %19) #2, !dbg !1334
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.56, %do.body.50, %if.end.43
  %23 = bitcast %struct.PyDescrObject* %descr to i8*, !dbg !1336
  tail call void @PyObject_GC_Del(i8* %23) #2, !dbg !1337
  ret void, !dbg !1338
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_repr(%struct.PyMethodDescrObject* nocapture readonly %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !600, metadata !1275), !dbg !1339
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !606, metadata !1275) #2, !dbg !1340
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !607, metadata !1275) #2, !dbg !1342
  %d_name.i = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1343
  %0 = load %struct._object*, %struct._object** %d_name.i, align 8, !dbg !1343, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %0, null, !dbg !1345
  br i1 %cmp.i, label %descr_repr.exit, label %land.lhs.true.i, !dbg !1346

land.lhs.true.i:                                  ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1347
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1347, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1347
  %2 = load i64, i64* %tp_flags.i, align 8, !dbg !1347, !tbaa !1349
  %and.i = and i64 %2, 268435456, !dbg !1347
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1347
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !607, metadata !1275) #2, !dbg !1342
  %..i = select i1 %cmp2.i, %struct._object* null, %struct._object* %0, !dbg !1350
  br label %descr_repr.exit, !dbg !1350

descr_repr.exit:                                  ; preds = %entry, %land.lhs.true.i
  %name.0.i = phi %struct._object* [ null, %entry ], [ %..i, %land.lhs.true.i ], !dbg !1351
  %d_type.i = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1352
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1352, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 1, !dbg !1353
  %4 = load i8*, i8** %tp_name.i, align 8, !dbg !1353, !tbaa !1354
  %call.i = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), %struct._object* %name.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %4) #2, !dbg !1355
  ret %struct._object* %call.i, !dbg !1356
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @methoddescr_call(%struct.PyMethodDescrObject* nocapture readonly %descr, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !612, metadata !1275), !dbg !1357
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !613, metadata !1275), !dbg !1358
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !614, metadata !1275), !dbg !1359
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1360
  %1 = load i64, i64* %0, align 8, !dbg !1360, !tbaa !1361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !615, metadata !1275), !dbg !1362
  %cmp = icmp slt i64 %1, 1, !dbg !1363
  br i1 %cmp, label %if.then, label %if.end, !dbg !1365

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1366, !tbaa !1368
  %.idx81 = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx81.val = load %struct._object*, %struct._object** %.idx81, align 8, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %.idx81.val, null, !dbg !1369
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i, !dbg !1372

land.lhs.true.i:                                  ; preds = %if.then
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %.idx81.val, i64 0, i32 1, !dbg !1373
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1373, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1373
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1373, !tbaa !1349
  %and.i = and i64 %4, 268435456, !dbg !1373
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1373
  br i1 %cmp2.i, label %if.end.i, label %descr_name.exit, !dbg !1375

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then
  br label %descr_name.exit, !dbg !1376

descr_name.exit:                                  ; preds = %land.lhs.true.i, %if.end.i
  %retval.0.i = phi %struct._object* [ null, %if.end.i ], [ %.idx81.val, %land.lhs.true.i ], !dbg !1377
  %d_type = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1378
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1378, !tbaa !1294
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1379
  %6 = load i8*, i8** %tp_name, align 8, !dbg !1379, !tbaa !1354
  %call1 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), %struct._object* %retval.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %6) #2, !dbg !1380
  br label %cleanup, !dbg !1381

if.end:                                           ; preds = %entry
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1382
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1382
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1382, !tbaa !1368
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !616, metadata !1275), !dbg !1383
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1384
  %8 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !1384
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !1384, !tbaa !1307
  %d_type2 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1386
  %10 = bitcast %struct._typeobject** %d_type2 to %struct._object**, !dbg !1386
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !1386, !tbaa !1294
  %call3 = tail call i32 @_PyObject_RealIsSubclass(%struct._object* %9, %struct._object* %11) #2, !dbg !1387
  %tobool = icmp eq i32 %call3, 0, !dbg !1387
  br i1 %tobool, label %if.then.4, label %if.end.11, !dbg !1388

if.then.4:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1389, !tbaa !1368
  %.idx = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx.val = load %struct._object*, %struct._object** %.idx, align 8, !tbaa !1314
  %cmp.i.82 = icmp eq %struct._object* %.idx.val, null, !dbg !1391
  br i1 %cmp.i.82, label %if.end.i.88, label %land.lhs.true.i.87, !dbg !1393

land.lhs.true.i.87:                               ; preds = %if.then.4
  %ob_type.i.83 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 1, !dbg !1394
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.83, align 8, !dbg !1394, !tbaa !1307
  %tp_flags.i.84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 19, !dbg !1394
  %14 = load i64, i64* %tp_flags.i.84, align 8, !dbg !1394, !tbaa !1349
  %and.i.85 = and i64 %14, 268435456, !dbg !1394
  %cmp2.i.86 = icmp eq i64 %and.i.85, 0, !dbg !1394
  br i1 %cmp2.i.86, label %if.end.i.88, label %descr_name.exit90, !dbg !1395

if.end.i.88:                                      ; preds = %land.lhs.true.i.87, %if.then.4
  br label %descr_name.exit90, !dbg !1396

descr_name.exit90:                                ; preds = %land.lhs.true.i.87, %if.end.i.88
  %retval.0.i.89 = phi %struct._object* [ null, %if.end.i.88 ], [ %.idx.val, %land.lhs.true.i.87 ], !dbg !1397
  %15 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8, !dbg !1398, !tbaa !1294
  %tp_name7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 1, !dbg !1399
  %16 = load i8*, i8** %tp_name7, align 8, !dbg !1399, !tbaa !1354
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1400, !tbaa !1307
  %tp_name9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 1, !dbg !1401
  %18 = load i8*, i8** %tp_name9, align 8, !dbg !1401, !tbaa !1354
  %call10 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0), %struct._object* %retval.0.i.89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %16, i8* %18) #2, !dbg !1402
  br label %cleanup, !dbg !1403

if.end.11:                                        ; preds = %if.end
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 1, !dbg !1404
  %19 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1404, !tbaa !1405
  %call12 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %19, %struct._object* %7, %struct._object* null) #2, !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !617, metadata !1275), !dbg !1408
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !1409
  br i1 %cmp13, label %cleanup, label %if.end.15, !dbg !1411

if.end.15:                                        ; preds = %if.end.11
  %call16 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %args, i64 1, i64 %1) #2, !dbg !1412
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !613, metadata !1275), !dbg !1358
  %cmp17 = icmp eq %struct._object* %call16, null, !dbg !1413
  br i1 %cmp17, label %do.body, label %if.end.23, !dbg !1414

do.body:                                          ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !619, metadata !1275), !dbg !1415
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !1417
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !1417, !tbaa !1303
  %dec = add i64 %20, -1, !dbg !1417
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1417, !tbaa !1303
  %cmp19 = icmp eq i64 %dec, 0, !dbg !1417
  br i1 %cmp19, label %if.else, label %cleanup, !dbg !1419

if.else:                                          ; preds = %do.body
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !1420
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1420, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1420
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1420, !tbaa !1308
  tail call void %22(%struct._object* %call12) #2, !dbg !1420
  br label %cleanup

if.end.23:                                        ; preds = %if.end.15
  %call24 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call12, %struct._object* %call16, %struct._object* %kwds) #2, !dbg !1422
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !618, metadata !1275), !dbg !1423
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !623, metadata !1275), !dbg !1424
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1426
  %23 = load i64, i64* %ob_refcnt27, align 8, !dbg !1426, !tbaa !1303
  %dec28 = add i64 %23, -1, !dbg !1426
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1426, !tbaa !1303
  %cmp29 = icmp eq i64 %dec28, 0, !dbg !1426
  br i1 %cmp29, label %if.else.31, label %if.end.34, !dbg !1428

if.else.31:                                       ; preds = %if.end.23
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1429
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1429, !tbaa !1307
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !1429
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1429, !tbaa !1308
  tail call void %25(%struct._object* %call16) #2, !dbg !1429
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.23, %if.else.31
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !625, metadata !1275), !dbg !1431
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !1433
  %26 = load i64, i64* %ob_refcnt39, align 8, !dbg !1433, !tbaa !1303
  %dec40 = add i64 %26, -1, !dbg !1433
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !1433, !tbaa !1303
  %cmp41 = icmp eq i64 %dec40, 0, !dbg !1433
  br i1 %cmp41, label %if.else.43, label %cleanup, !dbg !1435

if.else.43:                                       ; preds = %if.end.34
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !1436
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1436, !tbaa !1307
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1436
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1436, !tbaa !1308
  tail call void %28(%struct._object* %call12) #2, !dbg !1436
  br label %cleanup

cleanup:                                          ; preds = %if.else.43, %if.end.34, %if.else, %do.body, %if.end.11, %descr_name.exit90, %descr_name.exit
  %retval.0 = phi %struct._object* [ null, %descr_name.exit ], [ null, %descr_name.exit90 ], [ null, %if.end.11 ], [ null, %do.body ], [ null, %if.else ], [ %call24, %if.end.34 ], [ %call24, %if.else.43 ]
  ret %struct._object* %retval.0, !dbg !1438
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @descr_traverse(%struct._object* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !634, metadata !1275), !dbg !1439
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !635, metadata !1275), !dbg !1440
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !636, metadata !1275), !dbg !1441
  %d_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1442
  %0 = bitcast %struct._object* %d_type to %struct._typeobject**, !dbg !1442
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !1442, !tbaa !1294
  %tobool = icmp eq %struct._typeobject* %1, null, !dbg !1442
  br i1 %tobool, label %do.end, label %if.then, !dbg !1444

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 0, i32 0, !dbg !1445
  %call = tail call i32 %visit(%struct._object* %2, i8* %arg) #2, !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !638, metadata !1275), !dbg !1445
  %tobool2 = icmp eq i32 %call, 0, !dbg !1447
  br i1 %tobool2, label %do.end, label %cleanup.5

do.end:                                           ; preds = %entry, %if.then
  br label %cleanup.5, !dbg !1449

cleanup.5:                                        ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1450
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get(%struct.PyMethodDescrObject* %descr, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !678, metadata !1275), !dbg !1451
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !679, metadata !1275), !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !680, metadata !1275), !dbg !1453
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !688, metadata !1275) #2, !dbg !1454
  %cmp.i = icmp eq %struct._object* %obj, null, !dbg !1457
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1459

if.then.i:                                        ; preds = %entry
  %0 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 0, !dbg !1460
  %ob_refcnt.i = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 0, i32 0, !dbg !1460
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1460, !tbaa !1303
  %inc.i = add i64 %1, 1, !dbg !1460
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1460, !tbaa !1303
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !689, metadata !1275), !dbg !1462
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !681, metadata !1275), !dbg !1463
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !681, metadata !1275), !dbg !1463
  br label %cleanup, !dbg !1464

if.end.i:                                         ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1465
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1465, !tbaa !1307
  %d_type.i = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1465
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1465, !tbaa !1294
  %cmp1.i = icmp eq %struct._typeobject* %2, %3, !dbg !1465
  br i1 %cmp1.i, label %if.end, label %lor.lhs.false.i, !dbg !1465

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* %3) #2, !dbg !1467
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1467
  br i1 %tobool.i, label %if.then.4.i, label %if.end, !dbg !1469

if.then.4.i:                                      ; preds = %lor.lhs.false.i
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1470, !tbaa !1368
  %descr.idx.i = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1472
  %descr.idx.val.i = load %struct._object*, %struct._object** %descr.idx.i, align 8, !dbg !1472, !tbaa !1314
  %cmp.i.i = icmp eq %struct._object* %descr.idx.val.i, null, !dbg !1473
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1475

land.lhs.true.i.i:                                ; preds = %if.then.4.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %descr.idx.val.i, i64 0, i32 1, !dbg !1476
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1476, !tbaa !1307
  %tp_flags.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1476
  %6 = load i64, i64* %tp_flags.i.i, align 8, !dbg !1476, !tbaa !1349
  %and.i.i = and i64 %6, 268435456, !dbg !1476
  %cmp2.i.i = icmp eq i64 %and.i.i, 0, !dbg !1476
  br i1 %cmp2.i.i, label %if.end.i.i, label %descr_name.exit.i, !dbg !1477

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.4.i
  br label %descr_name.exit.i, !dbg !1478

descr_name.exit.i:                                ; preds = %if.end.i.i, %land.lhs.true.i.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i.i ], [ %descr.idx.val.i, %land.lhs.true.i.i ], !dbg !1479
  %7 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1480, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1481
  %8 = load i8*, i8** %tp_name.i, align 8, !dbg !1481, !tbaa !1354
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1482, !tbaa !1307
  %tp_name8.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1483
  %10 = load i8*, i8** %tp_name8.i, align 8, !dbg !1483, !tbaa !1354
  %call9.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0), %struct._object* %retval.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %8, i8* %10) #2, !dbg !1484
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !689, metadata !1275), !dbg !1462
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !681, metadata !1275), !dbg !1463
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !681, metadata !1275), !dbg !1463
  br label %cleanup, !dbg !1485

if.end:                                           ; preds = %lor.lhs.false.i, %if.end.i
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 1, !dbg !1486
  %11 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1486, !tbaa !1405
  %call1 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %11, %struct._object* %obj, %struct._object* null) #2, !dbg !1487
  br label %cleanup, !dbg !1488

cleanup:                                          ; preds = %descr_name.exit.i, %if.then.i, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %descr_name.exit.i ], [ %0, %if.then.i ]
  ret %struct._object* %retval.0, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @classmethoddescr_call(%struct.PyMethodDescrObject* nocapture readonly %descr, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !692, metadata !1275), !dbg !1490
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !693, metadata !1275), !dbg !1491
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !694, metadata !1275), !dbg !1492
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1493
  %1 = load i64, i64* %0, align 8, !dbg !1493, !tbaa !1361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !695, metadata !1275), !dbg !1494
  %cmp = icmp slt i64 %1, 1, !dbg !1495
  br i1 %cmp, label %if.then, label %if.end, !dbg !1497

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1498, !tbaa !1368
  %.idx95 = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx95.val = load %struct._object*, %struct._object** %.idx95, align 8, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %.idx95.val, null, !dbg !1500
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i, !dbg !1502

land.lhs.true.i:                                  ; preds = %if.then
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %.idx95.val, i64 0, i32 1, !dbg !1503
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1503, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1503
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1503, !tbaa !1349
  %and.i = and i64 %4, 268435456, !dbg !1503
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1503
  br i1 %cmp2.i, label %if.end.i, label %descr_name.exit, !dbg !1504

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then
  br label %descr_name.exit, !dbg !1505

descr_name.exit:                                  ; preds = %land.lhs.true.i, %if.end.i
  %retval.0.i = phi %struct._object* [ null, %if.end.i ], [ %.idx95.val, %land.lhs.true.i ], !dbg !1506
  %d_type = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1507
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1507, !tbaa !1294
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1508
  %6 = load i8*, i8** %tp_name, align 8, !dbg !1508, !tbaa !1354
  %call1 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), %struct._object* %retval.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %6) #2, !dbg !1509
  br label %cleanup, !dbg !1510

if.end:                                           ; preds = %entry
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1511
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1511
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1511, !tbaa !1368
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !696, metadata !1275), !dbg !1512
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1513
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1515, !tbaa !1307
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 19, !dbg !1513
  %9 = load i64, i64* %tp_flags, align 8, !dbg !1513, !tbaa !1349
  %and = and i64 %9, 2147483648, !dbg !1513
  %cmp2 = icmp eq i64 %and, 0, !dbg !1513
  br i1 %cmp2, label %if.then.3, label %if.end.10, !dbg !1517

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1518, !tbaa !1368
  %.idx94 = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx94.val = load %struct._object*, %struct._object** %.idx94, align 8, !tbaa !1314
  %cmp.i.96 = icmp eq %struct._object* %.idx94.val, null, !dbg !1519
  br i1 %cmp.i.96, label %if.end.i.102, label %land.lhs.true.i.101, !dbg !1521

land.lhs.true.i.101:                              ; preds = %if.then.3
  %ob_type.i.97 = getelementptr inbounds %struct._object, %struct._object* %.idx94.val, i64 0, i32 1, !dbg !1522
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.97, align 8, !dbg !1522, !tbaa !1307
  %tp_flags.i.98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 19, !dbg !1522
  %12 = load i64, i64* %tp_flags.i.98, align 8, !dbg !1522, !tbaa !1349
  %and.i.99 = and i64 %12, 268435456, !dbg !1522
  %cmp2.i.100 = icmp eq i64 %and.i.99, 0, !dbg !1522
  br i1 %cmp2.i.100, label %if.end.i.102, label %descr_name.exit104, !dbg !1523

if.end.i.102:                                     ; preds = %land.lhs.true.i.101, %if.then.3
  br label %descr_name.exit104, !dbg !1524

descr_name.exit104:                               ; preds = %land.lhs.true.i.101, %if.end.i.102
  %retval.0.i.103 = phi %struct._object* [ null, %if.end.i.102 ], [ %.idx94.val, %land.lhs.true.i.101 ], !dbg !1525
  %d_type5 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1526
  %13 = load %struct._typeobject*, %struct._typeobject** %d_type5, align 8, !dbg !1526, !tbaa !1294
  %tp_name6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 1, !dbg !1527
  %14 = load i8*, i8** %tp_name6, align 8, !dbg !1527, !tbaa !1354
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 1, !dbg !1528
  %15 = load i8*, i8** %tp_name8, align 8, !dbg !1528, !tbaa !1354
  %call9 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i64 0, i64 0), %struct._object* %retval.0.i.103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* %15) #2, !dbg !1529
  br label %cleanup, !dbg !1530

if.end.10:                                        ; preds = %if.end
  %16 = bitcast %struct._object* %7 to %struct._typeobject*, !dbg !1531
  %d_type11 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1533
  %17 = load %struct._typeobject*, %struct._typeobject** %d_type11, align 8, !dbg !1533, !tbaa !1294
  %call12 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %16, %struct._typeobject* %17) #2, !dbg !1534
  %tobool = icmp eq i32 %call12, 0, !dbg !1534
  br i1 %tobool, label %if.then.13, label %if.end.20, !dbg !1535

if.then.13:                                       ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1536, !tbaa !1368
  %.idx = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx.val = load %struct._object*, %struct._object** %.idx, align 8, !tbaa !1314
  %cmp.i.105 = icmp eq %struct._object* %.idx.val, null, !dbg !1538
  br i1 %cmp.i.105, label %if.end.i.111, label %land.lhs.true.i.110, !dbg !1540

land.lhs.true.i.110:                              ; preds = %if.then.13
  %ob_type.i.106 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 1, !dbg !1541
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.106, align 8, !dbg !1541, !tbaa !1307
  %tp_flags.i.107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 19, !dbg !1541
  %20 = load i64, i64* %tp_flags.i.107, align 8, !dbg !1541, !tbaa !1349
  %and.i.108 = and i64 %20, 268435456, !dbg !1541
  %cmp2.i.109 = icmp eq i64 %and.i.108, 0, !dbg !1541
  br i1 %cmp2.i.109, label %if.end.i.111, label %descr_name.exit113, !dbg !1542

if.end.i.111:                                     ; preds = %land.lhs.true.i.110, %if.then.13
  br label %descr_name.exit113, !dbg !1543

descr_name.exit113:                               ; preds = %land.lhs.true.i.110, %if.end.i.111
  %retval.0.i.112 = phi %struct._object* [ null, %if.end.i.111 ], [ %.idx.val, %land.lhs.true.i.110 ], !dbg !1544
  %21 = load %struct._typeobject*, %struct._typeobject** %d_type11, align 8, !dbg !1545, !tbaa !1294
  %tp_name16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 1, !dbg !1546
  %22 = load i8*, i8** %tp_name16, align 8, !dbg !1546, !tbaa !1354
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1547, !tbaa !1307
  %tp_name18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 1, !dbg !1548
  %24 = load i8*, i8** %tp_name18, align 8, !dbg !1548, !tbaa !1354
  %call19 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0), %struct._object* %retval.0.i.112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %22, i8* %24) #2, !dbg !1549
  br label %cleanup, !dbg !1550

if.end.20:                                        ; preds = %if.end.10
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 1, !dbg !1551
  %25 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1551, !tbaa !1405
  %call21 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %25, %struct._object* %7, %struct._object* null) #2, !dbg !1552
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !697, metadata !1275), !dbg !1553
  %cmp22 = icmp eq %struct._object* %call21, null, !dbg !1554
  br i1 %cmp22, label %cleanup, label %if.end.24, !dbg !1556

if.end.24:                                        ; preds = %if.end.20
  %call25 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %args, i64 1, i64 %1) #2, !dbg !1557
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !693, metadata !1275), !dbg !1491
  %cmp26 = icmp eq %struct._object* %call25, null, !dbg !1558
  br i1 %cmp26, label %do.body, label %if.end.32, !dbg !1559

do.body:                                          ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !699, metadata !1275), !dbg !1560
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call21, i64 0, i32 0, !dbg !1562
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !1562, !tbaa !1303
  %dec = add i64 %26, -1, !dbg !1562
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1562, !tbaa !1303
  %cmp28 = icmp eq i64 %dec, 0, !dbg !1562
  br i1 %cmp28, label %if.else, label %cleanup, !dbg !1564

if.else:                                          ; preds = %do.body
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %call21, i64 0, i32 1, !dbg !1565
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !1565, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1565
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1565, !tbaa !1308
  tail call void %28(%struct._object* %call21) #2, !dbg !1565
  br label %cleanup

if.end.32:                                        ; preds = %if.end.24
  %call33 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call21, %struct._object* %call25, %struct._object* %kwds) #2, !dbg !1567
  tail call void @llvm.dbg.value(metadata %struct._object* %call33, i64 0, metadata !698, metadata !1275), !dbg !1568
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !703, metadata !1275), !dbg !1569
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %call21, i64 0, i32 0, !dbg !1571
  %29 = load i64, i64* %ob_refcnt36, align 8, !dbg !1571, !tbaa !1303
  %dec37 = add i64 %29, -1, !dbg !1571
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1571, !tbaa !1303
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !1571
  br i1 %cmp38, label %if.else.40, label %if.end.43, !dbg !1573

if.else.40:                                       ; preds = %if.end.32
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call21, i64 0, i32 1, !dbg !1574
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1574, !tbaa !1307
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1574
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1574, !tbaa !1308
  tail call void %31(%struct._object* %call21) #2, !dbg !1574
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.32, %if.else.40
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !705, metadata !1275), !dbg !1576
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 0, !dbg !1578
  %32 = load i64, i64* %ob_refcnt48, align 8, !dbg !1578, !tbaa !1303
  %dec49 = add i64 %32, -1, !dbg !1578
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !1578, !tbaa !1303
  %cmp50 = icmp eq i64 %dec49, 0, !dbg !1578
  br i1 %cmp50, label %if.else.52, label %cleanup, !dbg !1580

if.else.52:                                       ; preds = %if.end.43
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 1, !dbg !1581
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1581, !tbaa !1307
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1581
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !1581, !tbaa !1308
  tail call void %34(%struct._object* %call25) #2, !dbg !1581
  br label %cleanup

cleanup:                                          ; preds = %if.else.52, %if.end.43, %if.else, %do.body, %if.end.20, %descr_name.exit113, %descr_name.exit104, %descr_name.exit
  %retval.0 = phi %struct._object* [ null, %descr_name.exit ], [ null, %descr_name.exit113 ], [ null, %descr_name.exit104 ], [ null, %if.end.20 ], [ null, %do.body ], [ null, %if.else ], [ %call33, %if.end.43 ], [ %call33, %if.else.52 ]
  ret %struct._object* %retval.0, !dbg !1583
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @classmethod_get(%struct.PyMethodDescrObject* nocapture readonly %descr, %struct._object* readonly %obj, %struct._object* %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !709, metadata !1275), !dbg !1584
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !710, metadata !1275), !dbg !1585
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !711, metadata !1275), !dbg !1586
  %cmp = icmp eq %struct._object* %type, null, !dbg !1587
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1589

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq %struct._object* %obj, null, !dbg !1590
  br i1 %cmp1, label %if.else, label %if.then.2, !dbg !1593

if.then.2:                                        ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1594
  %0 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !1594
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1594, !tbaa !1307
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !711, metadata !1275), !dbg !1586
  br label %if.end.4, !dbg !1595

if.else:                                          ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1596, !tbaa !1368
  %.idx39 = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx39.val = load %struct._object*, %struct._object** %.idx39, align 8, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %.idx39.val, null, !dbg !1598
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i, !dbg !1600

land.lhs.true.i:                                  ; preds = %if.else
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 1, !dbg !1601
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1601, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1601
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1601, !tbaa !1349
  %and.i = and i64 %4, 268435456, !dbg !1601
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1601
  br i1 %cmp2.i, label %if.end.i, label %descr_name.exit, !dbg !1602

if.end.i:                                         ; preds = %land.lhs.true.i, %if.else
  br label %descr_name.exit, !dbg !1603

descr_name.exit:                                  ; preds = %land.lhs.true.i, %if.end.i
  %retval.0.i = phi %struct._object* [ null, %if.end.i ], [ %.idx39.val, %land.lhs.true.i ], !dbg !1604
  %d_type = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1605
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1605, !tbaa !1294
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1606
  %6 = load i8*, i8** %tp_name, align 8, !dbg !1606, !tbaa !1354
  %call3 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), %struct._object* %retval.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %6) #2, !dbg !1607
  br label %return, !dbg !1608

if.end.4:                                         ; preds = %if.then.2, %entry
  %type.addr.0 = phi %struct._object* [ %1, %if.then.2 ], [ %type, %entry ]
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %type.addr.0, i64 0, i32 1, !dbg !1609
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1611, !tbaa !1307
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !1609
  %8 = load i64, i64* %tp_flags, align 8, !dbg !1609, !tbaa !1349
  %and = and i64 %8, 2147483648, !dbg !1609
  %cmp6 = icmp eq i64 %and, 0, !dbg !1609
  br i1 %cmp6, label %if.then.7, label %if.end.14, !dbg !1613

if.then.7:                                        ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1614, !tbaa !1368
  %.idx38 = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx38.val = load %struct._object*, %struct._object** %.idx38, align 8, !tbaa !1314
  %cmp.i.49 = icmp eq %struct._object* %.idx38.val, null, !dbg !1615
  br i1 %cmp.i.49, label %if.end.i.55, label %land.lhs.true.i.54, !dbg !1617

land.lhs.true.i.54:                               ; preds = %if.then.7
  %ob_type.i.50 = getelementptr inbounds %struct._object, %struct._object* %.idx38.val, i64 0, i32 1, !dbg !1618
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.50, align 8, !dbg !1618, !tbaa !1307
  %tp_flags.i.51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !1618
  %11 = load i64, i64* %tp_flags.i.51, align 8, !dbg !1618, !tbaa !1349
  %and.i.52 = and i64 %11, 268435456, !dbg !1618
  %cmp2.i.53 = icmp eq i64 %and.i.52, 0, !dbg !1618
  br i1 %cmp2.i.53, label %if.end.i.55, label %descr_name.exit57, !dbg !1619

if.end.i.55:                                      ; preds = %land.lhs.true.i.54, %if.then.7
  br label %descr_name.exit57, !dbg !1620

descr_name.exit57:                                ; preds = %land.lhs.true.i.54, %if.end.i.55
  %retval.0.i.56 = phi %struct._object* [ null, %if.end.i.55 ], [ %.idx38.val, %land.lhs.true.i.54 ], !dbg !1621
  %d_type9 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1622
  %12 = load %struct._typeobject*, %struct._typeobject** %d_type9, align 8, !dbg !1622, !tbaa !1294
  %tp_name10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 1, !dbg !1623
  %13 = load i8*, i8** %tp_name10, align 8, !dbg !1623, !tbaa !1354
  %tp_name12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1624
  %14 = load i8*, i8** %tp_name12, align 8, !dbg !1624, !tbaa !1354
  %call13 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), %struct._object* %retval.0.i.56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %13, i8* %14) #2, !dbg !1625
  br label %return, !dbg !1626

if.end.14:                                        ; preds = %if.end.4
  %15 = bitcast %struct._object* %type.addr.0 to %struct._typeobject*, !dbg !1627
  %d_type15 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1629
  %16 = load %struct._typeobject*, %struct._typeobject** %d_type15, align 8, !dbg !1629, !tbaa !1294
  %call16 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* %16) #2, !dbg !1630
  %tobool = icmp eq i32 %call16, 0, !dbg !1630
  br i1 %tobool, label %if.then.17, label %if.end.23, !dbg !1631

if.then.17:                                       ; preds = %if.end.14
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1632, !tbaa !1368
  %.idx = getelementptr %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx.val = load %struct._object*, %struct._object** %.idx, align 8, !tbaa !1314
  %cmp.i.40 = icmp eq %struct._object* %.idx.val, null, !dbg !1634
  br i1 %cmp.i.40, label %if.end.i.46, label %land.lhs.true.i.45, !dbg !1636

land.lhs.true.i.45:                               ; preds = %if.then.17
  %ob_type.i.41 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 1, !dbg !1637
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.41, align 8, !dbg !1637, !tbaa !1307
  %tp_flags.i.42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 19, !dbg !1637
  %19 = load i64, i64* %tp_flags.i.42, align 8, !dbg !1637, !tbaa !1349
  %and.i.43 = and i64 %19, 268435456, !dbg !1637
  %cmp2.i.44 = icmp eq i64 %and.i.43, 0, !dbg !1637
  br i1 %cmp2.i.44, label %if.end.i.46, label %descr_name.exit48, !dbg !1638

if.end.i.46:                                      ; preds = %land.lhs.true.i.45, %if.then.17
  br label %descr_name.exit48, !dbg !1639

descr_name.exit48:                                ; preds = %land.lhs.true.i.45, %if.end.i.46
  %retval.0.i.47 = phi %struct._object* [ null, %if.end.i.46 ], [ %.idx.val, %land.lhs.true.i.45 ], !dbg !1640
  %20 = load %struct._typeobject*, %struct._typeobject** %d_type15, align 8, !dbg !1641, !tbaa !1294
  %tp_name20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 1, !dbg !1642
  %21 = load i8*, i8** %tp_name20, align 8, !dbg !1642, !tbaa !1354
  %tp_name21 = getelementptr inbounds %struct._object, %struct._object* %type.addr.0, i64 1, i32 1, !dbg !1643
  %22 = bitcast %struct._typeobject** %tp_name21 to i8**, !dbg !1643
  %23 = load i8*, i8** %22, align 8, !dbg !1643, !tbaa !1354
  %call22 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), %struct._object* %retval.0.i.47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %21, i8* %23) #2, !dbg !1644
  br label %return, !dbg !1645

if.end.23:                                        ; preds = %if.end.14
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 1, !dbg !1646
  %24 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1646, !tbaa !1405
  %call24 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %24, %struct._object* %type.addr.0, %struct._object* null) #2, !dbg !1647
  br label %return, !dbg !1648

return:                                           ; preds = %if.end.23, %descr_name.exit48, %descr_name.exit57, %descr_name.exit
  %retval.0 = phi %struct._object* [ %call24, %if.end.23 ], [ null, %descr_name.exit48 ], [ null, %descr_name.exit57 ], [ null, %descr_name.exit ]
  ret %struct._object* %retval.0, !dbg !1649
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_repr(%struct.PyMemberDescrObject* nocapture readonly %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMemberDescrObject* %descr, i64 0, metadata !716, metadata !1275), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i64 0, metadata !606, metadata !1275) #2, !dbg !1651
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !607, metadata !1275) #2, !dbg !1653
  %d_name.i = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1654
  %0 = load %struct._object*, %struct._object** %d_name.i, align 8, !dbg !1654, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %0, null, !dbg !1655
  br i1 %cmp.i, label %descr_repr.exit, label %land.lhs.true.i, !dbg !1656

land.lhs.true.i:                                  ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1657
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1657, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1657
  %2 = load i64, i64* %tp_flags.i, align 8, !dbg !1657, !tbaa !1349
  %and.i = and i64 %2, 268435456, !dbg !1657
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1657
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !607, metadata !1275) #2, !dbg !1653
  %..i = select i1 %cmp2.i, %struct._object* null, %struct._object* %0, !dbg !1658
  br label %descr_repr.exit, !dbg !1658

descr_repr.exit:                                  ; preds = %entry, %land.lhs.true.i
  %name.0.i = phi %struct._object* [ null, %entry ], [ %..i, %land.lhs.true.i ], !dbg !1659
  %d_type.i = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1660
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1660, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 1, !dbg !1661
  %4 = load i8*, i8** %tp_name.i, align 8, !dbg !1661, !tbaa !1354
  %call.i = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), %struct._object* %name.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %4) #2, !dbg !1662
  ret %struct._object* %call.i, !dbg !1663
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_get(%struct.PyMemberDescrObject* %descr, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMemberDescrObject* %descr, i64 0, metadata !727, metadata !1275), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !728, metadata !1275), !dbg !1665
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !729, metadata !1275), !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !688, metadata !1275) #2, !dbg !1667
  %cmp.i = icmp eq %struct._object* %obj, null, !dbg !1670
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1671

if.then.i:                                        ; preds = %entry
  %0 = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 0, !dbg !1672
  %ob_refcnt.i = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 0, i32 0, !dbg !1672
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1672, !tbaa !1303
  %inc.i = add i64 %1, 1, !dbg !1672
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1672, !tbaa !1303
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !689, metadata !1275), !dbg !1673
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !730, metadata !1275), !dbg !1674
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !730, metadata !1275), !dbg !1674
  br label %cleanup, !dbg !1675

if.end.i:                                         ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1676
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1676, !tbaa !1307
  %d_type.i = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1676
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1676, !tbaa !1294
  %cmp1.i = icmp eq %struct._typeobject* %2, %3, !dbg !1676
  br i1 %cmp1.i, label %if.end, label %lor.lhs.false.i, !dbg !1676

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* %3) #2, !dbg !1677
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1677
  br i1 %tobool.i, label %if.then.4.i, label %if.end, !dbg !1678

if.then.4.i:                                      ; preds = %lor.lhs.false.i
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1679, !tbaa !1368
  %descr.idx.i = getelementptr %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1680
  %descr.idx.val.i = load %struct._object*, %struct._object** %descr.idx.i, align 8, !dbg !1680, !tbaa !1314
  %cmp.i.i = icmp eq %struct._object* %descr.idx.val.i, null, !dbg !1681
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1683

land.lhs.true.i.i:                                ; preds = %if.then.4.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %descr.idx.val.i, i64 0, i32 1, !dbg !1684
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1684, !tbaa !1307
  %tp_flags.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1684
  %6 = load i64, i64* %tp_flags.i.i, align 8, !dbg !1684, !tbaa !1349
  %and.i.i = and i64 %6, 268435456, !dbg !1684
  %cmp2.i.i = icmp eq i64 %and.i.i, 0, !dbg !1684
  br i1 %cmp2.i.i, label %if.end.i.i, label %descr_name.exit.i, !dbg !1685

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.4.i
  br label %descr_name.exit.i, !dbg !1686

descr_name.exit.i:                                ; preds = %if.end.i.i, %land.lhs.true.i.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i.i ], [ %descr.idx.val.i, %land.lhs.true.i.i ], !dbg !1687
  %7 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1688, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1689
  %8 = load i8*, i8** %tp_name.i, align 8, !dbg !1689, !tbaa !1354
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1690, !tbaa !1307
  %tp_name8.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1691
  %10 = load i8*, i8** %tp_name8.i, align 8, !dbg !1691, !tbaa !1354
  %call9.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0), %struct._object* %retval.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %8, i8* %10) #2, !dbg !1692
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !689, metadata !1275), !dbg !1673
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !730, metadata !1275), !dbg !1674
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !730, metadata !1275), !dbg !1674
  br label %cleanup, !dbg !1693

if.end:                                           ; preds = %lor.lhs.false.i, %if.end.i
  %11 = bitcast %struct._object* %obj to i8*, !dbg !1694
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 1, !dbg !1695
  %12 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8, !dbg !1695, !tbaa !1405
  %call1 = tail call %struct._object* @PyMember_GetOne(i8* %11, %struct.PyMemberDef* %12) #2, !dbg !1696
  br label %cleanup, !dbg !1697

cleanup:                                          ; preds = %descr_name.exit.i, %if.then.i, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %descr_name.exit.i ], [ %0, %if.then.i ]
  ret %struct._object* %retval.0, !dbg !1698
}

; Function Attrs: nounwind uwtable
define internal i32 @member_set(%struct.PyMemberDescrObject* nocapture readonly %descr, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMemberDescrObject* %descr, i64 0, metadata !735, metadata !1275), !dbg !1699
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !736, metadata !1275), !dbg !1700
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !737, metadata !1275), !dbg !1701
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !746, metadata !1275) #2, !dbg !1702
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1705
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1705, !tbaa !1307
  %d_type.i = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1705
  %1 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1705, !tbaa !1294
  %cmp.i = icmp eq %struct._typeobject* %0, %1, !dbg !1705
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !1705

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* %1) #2, !dbg !1707
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1707
  br i1 %tobool.i, label %if.then.i, label %if.end, !dbg !1709

if.then.i:                                        ; preds = %lor.lhs.false.i
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1710, !tbaa !1368
  %descr.idx.i = getelementptr %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1712
  %descr.idx.val.i = load %struct._object*, %struct._object** %descr.idx.i, align 8, !dbg !1712, !tbaa !1314
  %cmp.i.i = icmp eq %struct._object* %descr.idx.val.i, null, !dbg !1713
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1715

land.lhs.true.i.i:                                ; preds = %if.then.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %descr.idx.val.i, i64 0, i32 1, !dbg !1716
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1716, !tbaa !1307
  %tp_flags.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1716
  %4 = load i64, i64* %tp_flags.i.i, align 8, !dbg !1716, !tbaa !1349
  %and.i.i = and i64 %4, 268435456, !dbg !1716
  %cmp2.i.i = icmp eq i64 %and.i.i, 0, !dbg !1716
  br i1 %cmp2.i.i, label %if.end.i.i, label %if.then, !dbg !1717

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.i
  br label %if.then, !dbg !1718

if.then:                                          ; preds = %if.end.i.i, %land.lhs.true.i.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i.i ], [ %descr.idx.val.i, %land.lhs.true.i.i ], !dbg !1719
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1720, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1721
  %6 = load i8*, i8** %tp_name.i, align 8, !dbg !1721, !tbaa !1354
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1722, !tbaa !1307
  %tp_name6.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1723
  %8 = load i8*, i8** %tp_name6.i, align 8, !dbg !1723, !tbaa !1354
  %call7.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), %struct._object* %retval.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %6, i8* %8) #2, !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !738, metadata !1275), !dbg !1725
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !738, metadata !1275), !dbg !1725
  br label %cleanup, !dbg !1726

if.end:                                           ; preds = %lor.lhs.false.i, %entry
  %9 = bitcast %struct._object* %obj to i8*, !dbg !1727
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 1, !dbg !1728
  %10 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8, !dbg !1728, !tbaa !1405
  %call1 = tail call i32 @PyMember_SetOne(i8* %9, %struct.PyMemberDef* %10, %struct._object* %value) #2, !dbg !1729
  br label %cleanup, !dbg !1730

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0, !dbg !1731
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_repr(%struct.PyGetSetDescrObject* nocapture readonly %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGetSetDescrObject* %descr, i64 0, metadata !752, metadata !1275), !dbg !1732
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i64 0, metadata !606, metadata !1275) #2, !dbg !1733
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !607, metadata !1275) #2, !dbg !1735
  %d_name.i = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1736
  %0 = load %struct._object*, %struct._object** %d_name.i, align 8, !dbg !1736, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %0, null, !dbg !1737
  br i1 %cmp.i, label %descr_repr.exit, label %land.lhs.true.i, !dbg !1738

land.lhs.true.i:                                  ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1739
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1739, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1739
  %2 = load i64, i64* %tp_flags.i, align 8, !dbg !1739, !tbaa !1349
  %and.i = and i64 %2, 268435456, !dbg !1739
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1739
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !607, metadata !1275) #2, !dbg !1735
  %..i = select i1 %cmp2.i, %struct._object* null, %struct._object* %0, !dbg !1740
  br label %descr_repr.exit, !dbg !1740

descr_repr.exit:                                  ; preds = %entry, %land.lhs.true.i
  %name.0.i = phi %struct._object* [ null, %entry ], [ %..i, %land.lhs.true.i ], !dbg !1741
  %d_type.i = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1742
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1742, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 1, !dbg !1743
  %4 = load i8*, i8** %tp_name.i, align 8, !dbg !1743, !tbaa !1354
  %call.i = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), %struct._object* %name.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %4) #2, !dbg !1744
  ret %struct._object* %call.i, !dbg !1745
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_get(%struct.PyGetSetDescrObject* %descr, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGetSetDescrObject* %descr, i64 0, metadata !763, metadata !1275), !dbg !1746
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !764, metadata !1275), !dbg !1747
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !765, metadata !1275), !dbg !1748
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !688, metadata !1275) #2, !dbg !1749
  %cmp.i = icmp eq %struct._object* %obj, null, !dbg !1752
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1753

if.then.i:                                        ; preds = %entry
  %0 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 0, !dbg !1754
  %ob_refcnt.i = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 0, i32 0, !dbg !1754
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1754, !tbaa !1303
  %inc.i = add i64 %1, 1, !dbg !1754
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1754, !tbaa !1303
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !689, metadata !1275), !dbg !1755
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !766, metadata !1275), !dbg !1756
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !766, metadata !1275), !dbg !1756
  br label %cleanup, !dbg !1757

if.end.i:                                         ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1758
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1758, !tbaa !1307
  %d_type.i = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1758
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1758, !tbaa !1294
  %cmp1.i = icmp eq %struct._typeobject* %2, %3, !dbg !1758
  br i1 %cmp1.i, label %if.end, label %lor.lhs.false.i, !dbg !1758

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* %3) #2, !dbg !1759
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1759
  br i1 %tobool.i, label %if.then.4.i, label %if.end, !dbg !1760

if.then.4.i:                                      ; preds = %lor.lhs.false.i
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1761, !tbaa !1368
  %descr.idx.i = getelementptr %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1762
  %descr.idx.val.i = load %struct._object*, %struct._object** %descr.idx.i, align 8, !dbg !1762, !tbaa !1314
  %cmp.i.i = icmp eq %struct._object* %descr.idx.val.i, null, !dbg !1763
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1765

land.lhs.true.i.i:                                ; preds = %if.then.4.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %descr.idx.val.i, i64 0, i32 1, !dbg !1766
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1766, !tbaa !1307
  %tp_flags.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1766
  %6 = load i64, i64* %tp_flags.i.i, align 8, !dbg !1766, !tbaa !1349
  %and.i.i = and i64 %6, 268435456, !dbg !1766
  %cmp2.i.i = icmp eq i64 %and.i.i, 0, !dbg !1766
  br i1 %cmp2.i.i, label %if.end.i.i, label %descr_name.exit.i, !dbg !1767

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.4.i
  br label %descr_name.exit.i, !dbg !1768

descr_name.exit.i:                                ; preds = %if.end.i.i, %land.lhs.true.i.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i.i ], [ %descr.idx.val.i, %land.lhs.true.i.i ], !dbg !1769
  %7 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1770, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1771
  %8 = load i8*, i8** %tp_name.i, align 8, !dbg !1771, !tbaa !1354
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1772, !tbaa !1307
  %tp_name8.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1773
  %10 = load i8*, i8** %tp_name8.i, align 8, !dbg !1773, !tbaa !1354
  %call9.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0), %struct._object* %retval.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %8, i8* %10) #2, !dbg !1774
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !689, metadata !1275), !dbg !1755
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !766, metadata !1275), !dbg !1756
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !766, metadata !1275), !dbg !1756
  br label %cleanup, !dbg !1775

if.end:                                           ; preds = %lor.lhs.false.i, %if.end.i
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 1, !dbg !1776
  %11 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8, !dbg !1776, !tbaa !1405
  %get = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %11, i64 0, i32 1, !dbg !1778
  %12 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %get, align 8, !dbg !1778, !tbaa !1779
  %cmp = icmp eq %struct._object* (%struct._object*, i8*)* %12, null, !dbg !1781
  br i1 %cmp, label %if.end.6, label %if.then.1, !dbg !1782

if.then.1:                                        ; preds = %if.end
  %closure = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %11, i64 0, i32 4, !dbg !1783
  %13 = load i8*, i8** %closure, align 8, !dbg !1783, !tbaa !1784
  %call5 = tail call %struct._object* %12(%struct._object* %obj, i8* %13) #2, !dbg !1785
  br label %cleanup, !dbg !1786

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1787, !tbaa !1368
  %.idx = getelementptr %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx.val = load %struct._object*, %struct._object** %.idx, align 8, !tbaa !1314
  %cmp.i.15 = icmp eq %struct._object* %.idx.val, null, !dbg !1788
  br i1 %cmp.i.15, label %if.end.i.17, label %land.lhs.true.i, !dbg !1790

land.lhs.true.i:                                  ; preds = %if.end.6
  %ob_type.i.16 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 1, !dbg !1791
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.16, align 8, !dbg !1791, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 19, !dbg !1791
  %16 = load i64, i64* %tp_flags.i, align 8, !dbg !1791, !tbaa !1349
  %and.i = and i64 %16, 268435456, !dbg !1791
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1791
  br i1 %cmp2.i, label %if.end.i.17, label %descr_name.exit, !dbg !1792

if.end.i.17:                                      ; preds = %land.lhs.true.i, %if.end.6
  br label %descr_name.exit, !dbg !1793

descr_name.exit:                                  ; preds = %land.lhs.true.i, %if.end.i.17
  %retval.0.i.18 = phi %struct._object* [ null, %if.end.i.17 ], [ %.idx.val, %land.lhs.true.i ], !dbg !1794
  %17 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1795, !tbaa !1294
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 1, !dbg !1796
  %18 = load i8*, i8** %tp_name, align 8, !dbg !1796, !tbaa !1354
  %call8 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), %struct._object* %retval.0.i.18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %18) #2, !dbg !1797
  br label %cleanup, !dbg !1798

cleanup:                                          ; preds = %descr_name.exit.i, %if.then.i, %descr_name.exit, %if.then.1
  %retval.0 = phi %struct._object* [ %call5, %if.then.1 ], [ null, %descr_name.exit ], [ null, %descr_name.exit.i ], [ %0, %if.then.i ]
  ret %struct._object* %retval.0, !dbg !1799
}

; Function Attrs: nounwind uwtable
define internal i32 @getset_set(%struct.PyGetSetDescrObject* nocapture readonly %descr, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGetSetDescrObject* %descr, i64 0, metadata !771, metadata !1275), !dbg !1800
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !772, metadata !1275), !dbg !1801
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !773, metadata !1275), !dbg !1802
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !746, metadata !1275) #2, !dbg !1803
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1806
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1806, !tbaa !1307
  %d_type.i = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1806
  %1 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1806, !tbaa !1294
  %cmp.i = icmp eq %struct._typeobject* %0, %1, !dbg !1806
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !1806

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* %1) #2, !dbg !1807
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1807
  br i1 %tobool.i, label %if.then.i, label %if.end, !dbg !1808

if.then.i:                                        ; preds = %lor.lhs.false.i
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1809, !tbaa !1368
  %descr.idx.i = getelementptr %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1810
  %descr.idx.val.i = load %struct._object*, %struct._object** %descr.idx.i, align 8, !dbg !1810, !tbaa !1314
  %cmp.i.i = icmp eq %struct._object* %descr.idx.val.i, null, !dbg !1811
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1813

land.lhs.true.i.i:                                ; preds = %if.then.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %descr.idx.val.i, i64 0, i32 1, !dbg !1814
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1814, !tbaa !1307
  %tp_flags.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1814
  %4 = load i64, i64* %tp_flags.i.i, align 8, !dbg !1814, !tbaa !1349
  %and.i.i = and i64 %4, 268435456, !dbg !1814
  %cmp2.i.i = icmp eq i64 %and.i.i, 0, !dbg !1814
  br i1 %cmp2.i.i, label %if.end.i.i, label %if.then, !dbg !1815

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.i
  br label %if.then, !dbg !1816

if.then:                                          ; preds = %if.end.i.i, %land.lhs.true.i.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i.i ], [ %descr.idx.val.i, %land.lhs.true.i.i ], !dbg !1817
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1818, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1819
  %6 = load i8*, i8** %tp_name.i, align 8, !dbg !1819, !tbaa !1354
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1820, !tbaa !1307
  %tp_name6.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1821
  %8 = load i8*, i8** %tp_name6.i, align 8, !dbg !1821, !tbaa !1354
  %call7.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), %struct._object* %retval.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %6, i8* %8) #2, !dbg !1822
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !774, metadata !1275), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !774, metadata !1275), !dbg !1823
  br label %cleanup, !dbg !1824

if.end:                                           ; preds = %lor.lhs.false.i, %entry
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 1, !dbg !1825
  %9 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8, !dbg !1825, !tbaa !1405
  %set = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %9, i64 0, i32 2, !dbg !1827
  %10 = load i32 (%struct._object*, %struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)** %set, align 8, !dbg !1827, !tbaa !1828
  %cmp = icmp eq i32 (%struct._object*, %struct._object*, i8*)* %10, null, !dbg !1829
  br i1 %cmp, label %if.end.6, label %if.then.1, !dbg !1830

if.then.1:                                        ; preds = %if.end
  %closure = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %9, i64 0, i32 4, !dbg !1831
  %11 = load i8*, i8** %closure, align 8, !dbg !1831, !tbaa !1784
  %call5 = tail call i32 %10(%struct._object* %obj, %struct._object* %value, i8* %11) #2, !dbg !1832
  br label %cleanup, !dbg !1833

if.end.6:                                         ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1834, !tbaa !1368
  %.idx = getelementptr %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx.val = load %struct._object*, %struct._object** %.idx, align 8, !tbaa !1314
  %cmp.i.16 = icmp eq %struct._object* %.idx.val, null, !dbg !1835
  br i1 %cmp.i.16, label %if.end.i, label %land.lhs.true.i, !dbg !1837

land.lhs.true.i:                                  ; preds = %if.end.6
  %ob_type.i.17 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 1, !dbg !1838
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.17, align 8, !dbg !1838, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 19, !dbg !1838
  %14 = load i64, i64* %tp_flags.i, align 8, !dbg !1838, !tbaa !1349
  %and.i = and i64 %14, 268435456, !dbg !1838
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1838
  br i1 %cmp2.i, label %if.end.i, label %descr_name.exit, !dbg !1839

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end.6
  br label %descr_name.exit, !dbg !1840

descr_name.exit:                                  ; preds = %land.lhs.true.i, %if.end.i
  %retval.0.i.18 = phi %struct._object* [ null, %if.end.i ], [ %.idx.val, %land.lhs.true.i ], !dbg !1841
  %15 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1842, !tbaa !1294
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 1, !dbg !1843
  %16 = load i8*, i8** %tp_name, align 8, !dbg !1843, !tbaa !1354
  %call8 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), %struct._object* %retval.0.i.18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %16) #2, !dbg !1844
  br label %cleanup, !dbg !1845

cleanup:                                          ; preds = %descr_name.exit, %if.then.1, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call5, %if.then.1 ], [ -1, %descr_name.exit ]
  ret i32 %retval.0, !dbg !1846
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_repr(%struct.PyWrapperDescrObject* nocapture readonly %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %descr, i64 0, metadata !779, metadata !1275), !dbg !1847
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i64 0, metadata !606, metadata !1275) #2, !dbg !1848
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !607, metadata !1275) #2, !dbg !1850
  %d_name.i = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1851
  %0 = load %struct._object*, %struct._object** %d_name.i, align 8, !dbg !1851, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %0, null, !dbg !1852
  br i1 %cmp.i, label %descr_repr.exit, label %land.lhs.true.i, !dbg !1853

land.lhs.true.i:                                  ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1854
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1854, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1854
  %2 = load i64, i64* %tp_flags.i, align 8, !dbg !1854, !tbaa !1349
  %and.i = and i64 %2, 268435456, !dbg !1854
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1854
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !607, metadata !1275) #2, !dbg !1850
  %..i = select i1 %cmp2.i, %struct._object* null, %struct._object* %0, !dbg !1855
  br label %descr_repr.exit, !dbg !1855

descr_repr.exit:                                  ; preds = %entry, %land.lhs.true.i
  %name.0.i = phi %struct._object* [ null, %entry ], [ %..i, %land.lhs.true.i ], !dbg !1856
  %d_type.i = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1857
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1857, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 1, !dbg !1858
  %4 = load i8*, i8** %tp_name.i, align 8, !dbg !1858, !tbaa !1354
  %call.i = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), %struct._object* %name.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %4) #2, !dbg !1859
  ret %struct._object* %call.i, !dbg !1860
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_call(%struct.PyWrapperDescrObject* %descr, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %descr, i64 0, metadata !784, metadata !1275), !dbg !1861
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !785, metadata !1275), !dbg !1862
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !786, metadata !1275), !dbg !1863
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1864
  %1 = load i64, i64* %0, align 8, !dbg !1864, !tbaa !1361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !787, metadata !1275), !dbg !1865
  %cmp = icmp slt i64 %1, 1, !dbg !1866
  br i1 %cmp, label %if.then, label %if.end, !dbg !1868

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1869, !tbaa !1368
  %.idx81 = getelementptr %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx81.val = load %struct._object*, %struct._object** %.idx81, align 8, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %.idx81.val, null, !dbg !1871
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i, !dbg !1873

land.lhs.true.i:                                  ; preds = %if.then
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %.idx81.val, i64 0, i32 1, !dbg !1874
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1874, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1874
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1874, !tbaa !1349
  %and.i = and i64 %4, 268435456, !dbg !1874
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !1874
  br i1 %cmp2.i, label %if.end.i, label %descr_name.exit, !dbg !1875

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then
  br label %descr_name.exit, !dbg !1876

descr_name.exit:                                  ; preds = %land.lhs.true.i, %if.end.i
  %retval.0.i = phi %struct._object* [ null, %if.end.i ], [ %.idx81.val, %land.lhs.true.i ], !dbg !1877
  %d_type = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1878
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1878, !tbaa !1294
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1879
  %6 = load i8*, i8** %tp_name, align 8, !dbg !1879, !tbaa !1354
  %call1 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), %struct._object* %retval.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %6) #2, !dbg !1880
  br label %cleanup, !dbg !1881

if.end:                                           ; preds = %entry
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1882
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1882
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1882, !tbaa !1368
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !788, metadata !1275), !dbg !1883
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1884
  %8 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !1884
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !1884, !tbaa !1307
  %d_type2 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1886
  %10 = bitcast %struct._typeobject** %d_type2 to %struct._object**, !dbg !1886
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !1886, !tbaa !1294
  %call3 = tail call i32 @_PyObject_RealIsSubclass(%struct._object* %9, %struct._object* %11) #2, !dbg !1887
  %tobool = icmp eq i32 %call3, 0, !dbg !1887
  br i1 %tobool, label %if.then.4, label %if.end.11, !dbg !1888

if.then.4:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1889, !tbaa !1368
  %.idx = getelementptr %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 2
  %.idx.val = load %struct._object*, %struct._object** %.idx, align 8, !tbaa !1314
  %cmp.i.82 = icmp eq %struct._object* %.idx.val, null, !dbg !1891
  br i1 %cmp.i.82, label %if.end.i.88, label %land.lhs.true.i.87, !dbg !1893

land.lhs.true.i.87:                               ; preds = %if.then.4
  %ob_type.i.83 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 1, !dbg !1894
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.83, align 8, !dbg !1894, !tbaa !1307
  %tp_flags.i.84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 19, !dbg !1894
  %14 = load i64, i64* %tp_flags.i.84, align 8, !dbg !1894, !tbaa !1349
  %and.i.85 = and i64 %14, 268435456, !dbg !1894
  %cmp2.i.86 = icmp eq i64 %and.i.85, 0, !dbg !1894
  br i1 %cmp2.i.86, label %if.end.i.88, label %descr_name.exit90, !dbg !1895

if.end.i.88:                                      ; preds = %land.lhs.true.i.87, %if.then.4
  br label %descr_name.exit90, !dbg !1896

descr_name.exit90:                                ; preds = %land.lhs.true.i.87, %if.end.i.88
  %retval.0.i.89 = phi %struct._object* [ null, %if.end.i.88 ], [ %.idx.val, %land.lhs.true.i.87 ], !dbg !1897
  %15 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8, !dbg !1898, !tbaa !1294
  %tp_name7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 1, !dbg !1899
  %16 = load i8*, i8** %tp_name7, align 8, !dbg !1899, !tbaa !1354
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1900, !tbaa !1307
  %tp_name9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 1, !dbg !1901
  %18 = load i8*, i8** %tp_name9, align 8, !dbg !1901, !tbaa !1354
  %call10 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0), %struct._object* %retval.0.i.89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %16, i8* %18) #2, !dbg !1902
  br label %cleanup, !dbg !1903

if.end.11:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !566, metadata !1275) #2, !dbg !1904
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !567, metadata !1275) #2, !dbg !1906
  %call.i = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @_PyMethodWrapper_Type) #2, !dbg !1907
  %cmp.i.91 = icmp eq %struct._object* %call.i, null, !dbg !1908
  br i1 %cmp.i.91, label %cleanup, label %if.then.i, !dbg !1909

if.then.i:                                        ; preds = %if.end.11
  %19 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 0, !dbg !1910
  %ob_refcnt.i = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 0, i32 0, !dbg !1911
  %20 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1911, !tbaa !1303
  %inc.i = add i64 %20, 1, !dbg !1911
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1911, !tbaa !1303
  %descr1.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !1912
  %21 = bitcast %struct._object* %descr1.i to %struct._object**, !dbg !1913
  store %struct._object* %19, %struct._object** %21, align 8, !dbg !1913, !tbaa !1914
  %ob_refcnt2.i = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !1916
  %22 = load i64, i64* %ob_refcnt2.i, align 8, !dbg !1916, !tbaa !1303
  %inc3.i = add i64 %22, 1, !dbg !1916
  store i64 %inc3.i, i64* %ob_refcnt2.i, align 8, !dbg !1916, !tbaa !1303
  %self4.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1917
  %23 = bitcast %struct._typeobject** %self4.i to %struct._object**, !dbg !1917
  store %struct._object* %7, %struct._object** %23, align 8, !dbg !1918, !tbaa !1919
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call.i, i64 -2, i32 1, !dbg !1920
  %gc_refs.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr.i, i64 2, !dbg !1922
  %24 = bitcast %struct._typeobject** %gc_refs.i to i64*, !dbg !1922
  %25 = load i64, i64* %24, align 8, !dbg !1922, !tbaa !1282
  %shr.mask.i = and i64 %25, -2, !dbg !1922
  %cmp5.i = icmp eq i64 %shr.mask.i, -4, !dbg !1922
  br i1 %cmp5.i, label %if.end.15, label %if.then.6.i, !dbg !1924

if.then.6.i:                                      ; preds = %if.then.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1925
  unreachable, !dbg !1925

if.end.15:                                        ; preds = %if.then.i
  %and.i.92 = and i64 %25, 1, !dbg !1927
  %or.i = or i64 %and.i.92, -6, !dbg !1927
  store i64 %or.i, i64* %24, align 8, !dbg !1927, !tbaa !1282
  %26 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1930, !tbaa !1368
  %27 = bitcast %struct._typeobject** %add.ptr.i to i64*, !dbg !1930
  store i64 %26, i64* %27, align 8, !dbg !1930, !tbaa !1290
  %28 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1930, !tbaa !1368
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %28, i64 0, i32 1, !dbg !1930
  %29 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !1930, !tbaa !1291
  %gc_prev15.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr.i, i64 1, !dbg !1930
  %30 = bitcast %struct._typeobject** %gc_prev15.i to %union._gc_head**, !dbg !1930
  store %union._gc_head* %29, %union._gc_head** %30, align 8, !dbg !1930, !tbaa !1291
  %31 = bitcast %union._gc_head* %29 to %struct._typeobject***, !dbg !1930
  store %struct._typeobject** %add.ptr.i, %struct._typeobject*** %31, align 8, !dbg !1930, !tbaa !1290
  %32 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1930, !tbaa !1368
  %gc_prev21.i = getelementptr inbounds %struct.anon, %struct.anon* %32, i64 0, i32 1, !dbg !1930
  %33 = bitcast %union._gc_head** %gc_prev21.i to %struct._typeobject***, !dbg !1930
  store %struct._typeobject** %add.ptr.i, %struct._typeobject*** %33, align 8, !dbg !1930, !tbaa !1291
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !789, metadata !1275), !dbg !1932
  %call16 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %args, i64 1, i64 %1) #2, !dbg !1933
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !785, metadata !1275), !dbg !1862
  %cmp17 = icmp eq %struct._object* %call16, null, !dbg !1934
  br i1 %cmp17, label %do.body, label %if.end.23, !dbg !1935

do.body:                                          ; preds = %if.end.15
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !791, metadata !1275), !dbg !1936
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1938
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !1938, !tbaa !1303
  %dec = add i64 %34, -1, !dbg !1938
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1938, !tbaa !1303
  %cmp19 = icmp eq i64 %dec, 0, !dbg !1938
  br i1 %cmp19, label %if.else, label %cleanup, !dbg !1940

if.else:                                          ; preds = %do.body
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1941
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1941, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !1941
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1941, !tbaa !1308
  tail call void %36(%struct._object* %call.i) #2, !dbg !1941
  br label %cleanup

if.end.23:                                        ; preds = %if.end.15
  %call24 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call.i, %struct._object* %call16, %struct._object* %kwds) #2, !dbg !1943
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !790, metadata !1275), !dbg !1944
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !795, metadata !1275), !dbg !1945
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1947
  %37 = load i64, i64* %ob_refcnt27, align 8, !dbg !1947, !tbaa !1303
  %dec28 = add i64 %37, -1, !dbg !1947
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1947, !tbaa !1303
  %cmp29 = icmp eq i64 %dec28, 0, !dbg !1947
  br i1 %cmp29, label %if.else.31, label %if.end.34, !dbg !1949

if.else.31:                                       ; preds = %if.end.23
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1950
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1950, !tbaa !1307
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !1950
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1950, !tbaa !1308
  tail call void %39(%struct._object* %call16) #2, !dbg !1950
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.23, %if.else.31
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !797, metadata !1275), !dbg !1952
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1954
  %40 = load i64, i64* %ob_refcnt39, align 8, !dbg !1954, !tbaa !1303
  %dec40 = add i64 %40, -1, !dbg !1954
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !1954, !tbaa !1303
  %cmp41 = icmp eq i64 %dec40, 0, !dbg !1954
  br i1 %cmp41, label %if.else.43, label %cleanup, !dbg !1956

if.else.43:                                       ; preds = %if.end.34
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1957
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1957, !tbaa !1307
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !1957
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1957, !tbaa !1308
  tail call void %42(%struct._object* %call.i) #2, !dbg !1957
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.else.43, %if.end.34, %if.else, %do.body, %descr_name.exit90, %descr_name.exit
  %retval.0 = phi %struct._object* [ null, %descr_name.exit ], [ null, %descr_name.exit90 ], [ null, %do.body ], [ null, %if.else ], [ %call24, %if.end.34 ], [ %call24, %if.else.43 ], [ null, %if.end.11 ]
  ret %struct._object* %retval.0, !dbg !1959
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get(%struct.PyWrapperDescrObject* %descr, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %descr, i64 0, metadata !811, metadata !1275), !dbg !1960
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !812, metadata !1275), !dbg !1961
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !813, metadata !1275), !dbg !1962
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !688, metadata !1275) #2, !dbg !1963
  %cmp.i = icmp eq %struct._object* %obj, null, !dbg !1966
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1967

if.then.i:                                        ; preds = %entry
  %0 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 0, !dbg !1968
  %ob_refcnt.i = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 0, i32 0, !dbg !1968
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1968, !tbaa !1303
  %inc.i = add i64 %1, 1, !dbg !1968
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1968, !tbaa !1303
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !689, metadata !1275), !dbg !1969
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !814, metadata !1275), !dbg !1970
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !814, metadata !1275), !dbg !1970
  br label %cleanup, !dbg !1971

if.end.i:                                         ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1972
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1972, !tbaa !1307
  %d_type.i = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 1, !dbg !1972
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1972, !tbaa !1294
  %cmp1.i = icmp eq %struct._typeobject* %2, %3, !dbg !1972
  br i1 %cmp1.i, label %if.end, label %lor.lhs.false.i, !dbg !1972

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* %3) #2, !dbg !1973
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1973
  br i1 %tobool.i, label %if.then.4.i, label %if.end, !dbg !1974

if.then.4.i:                                      ; preds = %lor.lhs.false.i
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1975, !tbaa !1368
  %descr.idx.i = getelementptr %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 2, !dbg !1976
  %descr.idx.val.i = load %struct._object*, %struct._object** %descr.idx.i, align 8, !dbg !1976, !tbaa !1314
  %cmp.i.i = icmp eq %struct._object* %descr.idx.val.i, null, !dbg !1977
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1979

land.lhs.true.i.i:                                ; preds = %if.then.4.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %descr.idx.val.i, i64 0, i32 1, !dbg !1980
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1980, !tbaa !1307
  %tp_flags.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1980
  %6 = load i64, i64* %tp_flags.i.i, align 8, !dbg !1980, !tbaa !1349
  %and.i.i = and i64 %6, 268435456, !dbg !1980
  %cmp2.i.i = icmp eq i64 %and.i.i, 0, !dbg !1980
  br i1 %cmp2.i.i, label %if.end.i.i, label %descr_name.exit.i, !dbg !1981

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.4.i
  br label %descr_name.exit.i, !dbg !1982

descr_name.exit.i:                                ; preds = %if.end.i.i, %land.lhs.true.i.i
  %retval.0.i.i = phi %struct._object* [ null, %if.end.i.i ], [ %descr.idx.val.i, %land.lhs.true.i.i ], !dbg !1983
  %7 = load %struct._typeobject*, %struct._typeobject** %d_type.i, align 8, !dbg !1984, !tbaa !1294
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !1985
  %8 = load i8*, i8** %tp_name.i, align 8, !dbg !1985, !tbaa !1354
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1986, !tbaa !1307
  %tp_name8.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1987
  %10 = load i8*, i8** %tp_name8.i, align 8, !dbg !1987, !tbaa !1354
  %call9.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0), %struct._object* %retval.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %8, i8* %10) #2, !dbg !1988
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !689, metadata !1275), !dbg !1969
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !814, metadata !1275), !dbg !1970
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !814, metadata !1275), !dbg !1970
  br label %cleanup, !dbg !1989

if.end:                                           ; preds = %lor.lhs.false.i, %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !566, metadata !1275) #2, !dbg !1990
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !567, metadata !1275) #2, !dbg !1992
  %call.i.4 = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @_PyMethodWrapper_Type) #2, !dbg !1993
  %cmp.i.5 = icmp eq %struct._object* %call.i.4, null, !dbg !1994
  br i1 %cmp.i.5, label %cleanup, label %if.then.i.8, !dbg !1995

if.then.i.8:                                      ; preds = %if.end
  %11 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 0, !dbg !1996
  %ob_refcnt.i.6 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 0, i32 0, i32 0, !dbg !1997
  %12 = load i64, i64* %ob_refcnt.i.6, align 8, !dbg !1997, !tbaa !1303
  %inc.i.7 = add i64 %12, 1, !dbg !1997
  store i64 %inc.i.7, i64* %ob_refcnt.i.6, align 8, !dbg !1997, !tbaa !1303
  %descr1.i = getelementptr inbounds %struct._object, %struct._object* %call.i.4, i64 1, !dbg !1998
  %13 = bitcast %struct._object* %descr1.i to %struct._object**, !dbg !1999
  store %struct._object* %11, %struct._object** %13, align 8, !dbg !1999, !tbaa !1914
  %ob_refcnt2.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 0, !dbg !2000
  %14 = load i64, i64* %ob_refcnt2.i, align 8, !dbg !2000, !tbaa !1303
  %inc3.i = add i64 %14, 1, !dbg !2000
  store i64 %inc3.i, i64* %ob_refcnt2.i, align 8, !dbg !2000, !tbaa !1303
  %self4.i = getelementptr inbounds %struct._object, %struct._object* %call.i.4, i64 1, i32 1, !dbg !2001
  %15 = bitcast %struct._typeobject** %self4.i to %struct._object**, !dbg !2001
  store %struct._object* %obj, %struct._object** %15, align 8, !dbg !2002, !tbaa !1919
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call.i.4, i64 -2, i32 1, !dbg !2003
  %gc_refs.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr.i, i64 2, !dbg !2004
  %16 = bitcast %struct._typeobject** %gc_refs.i to i64*, !dbg !2004
  %17 = load i64, i64* %16, align 8, !dbg !2004, !tbaa !1282
  %shr.mask.i = and i64 %17, -2, !dbg !2004
  %cmp5.i = icmp eq i64 %shr.mask.i, -4, !dbg !2004
  br i1 %cmp5.i, label %do.body.7.i, label %if.then.6.i, !dbg !2005

if.then.6.i:                                      ; preds = %if.then.i.8
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !2006
  unreachable, !dbg !2006

do.body.7.i:                                      ; preds = %if.then.i.8
  %and.i = and i64 %17, 1, !dbg !2007
  %or.i = or i64 %and.i, -6, !dbg !2007
  store i64 %or.i, i64* %16, align 8, !dbg !2007, !tbaa !1282
  %18 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2008, !tbaa !1368
  %19 = bitcast %struct._typeobject** %add.ptr.i to i64*, !dbg !2008
  store i64 %18, i64* %19, align 8, !dbg !2008, !tbaa !1290
  %20 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2008, !tbaa !1368
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %20, i64 0, i32 1, !dbg !2008
  %21 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !2008, !tbaa !1291
  %gc_prev15.i = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr.i, i64 1, !dbg !2008
  %22 = bitcast %struct._typeobject** %gc_prev15.i to %union._gc_head**, !dbg !2008
  store %union._gc_head* %21, %union._gc_head** %22, align 8, !dbg !2008, !tbaa !1291
  %23 = bitcast %union._gc_head* %21 to %struct._typeobject***, !dbg !2008
  store %struct._typeobject** %add.ptr.i, %struct._typeobject*** %23, align 8, !dbg !2008, !tbaa !1290
  %24 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2008, !tbaa !1368
  %gc_prev21.i = getelementptr inbounds %struct.anon, %struct.anon* %24, i64 0, i32 1, !dbg !2008
  %25 = bitcast %union._gc_head** %gc_prev21.i to %struct._typeobject***, !dbg !2008
  store %struct._typeobject** %add.ptr.i, %struct._typeobject*** %25, align 8, !dbg !2008, !tbaa !1291
  br label %cleanup, !dbg !2009

cleanup:                                          ; preds = %do.body.7.i, %if.end, %descr_name.exit.i, %if.then.i
  %retval.0 = phi %struct._object* [ null, %descr_name.exit.i ], [ %0, %if.then.i ], [ null, %if.end ], [ %call.i.4, %do.body.7.i ]
  ret %struct._object* %retval.0, !dbg !2010
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewMethod(%struct._typeobject* %type, %struct.PyMethodDef* %method) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !524, metadata !1275), !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %method, i64 0, metadata !525, metadata !1275), !dbg !2012
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %method, i64 0, i32 0, !dbg !2013
  %0 = load i8*, i8** %ml_name, align 8, !dbg !2013, !tbaa !2014
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyMethodDescr_Type, i64 0, metadata !819, metadata !1275) #2, !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !820, metadata !1275) #2, !dbg !2018
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !821, metadata !1275) #2, !dbg !2019
  %call.i = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* nonnull @PyMethodDescr_Type, i64 0) #2, !dbg !2020
  %1 = bitcast %struct._object* %call.i to %struct.PyDescrObject*, !dbg !2021
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %1, i64 0, metadata !822, metadata !1275) #2, !dbg !2022
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2023
  br i1 %cmp.i, label %if.end, label %do.body.i, !dbg !2024

do.body.i:                                        ; preds = %entry
  %cmp1.i = icmp eq %struct._typeobject* %type, null, !dbg !2025
  br i1 %cmp1.i, label %if.end.i, label %if.then.2.i, !dbg !2027

if.then.2.i:                                      ; preds = %do.body.i
  %ob_refcnt.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 0, i32 0, i32 0, !dbg !2028
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2028, !tbaa !1303
  %inc.i = add i64 %2, 1, !dbg !2028
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2028, !tbaa !1303
  br label %if.end.i, !dbg !2028

if.end.i:                                         ; preds = %if.then.2.i, %do.body.i
  %d_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2030
  %3 = bitcast %struct._object* %d_type.i to %struct._typeobject**, !dbg !2030
  store %struct._typeobject* %type, %struct._typeobject** %3, align 8, !dbg !2031, !tbaa !1294
  %call3.i = tail call %struct._object* @PyUnicode_InternFromString(i8* %0) #2, !dbg !2032
  %d_name.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2033
  %4 = bitcast %struct._typeobject** %d_name.i to %struct._object**, !dbg !2033
  store %struct._object* %call3.i, %struct._object** %4, align 8, !dbg !2034, !tbaa !1314
  %cmp5.i = icmp eq %struct._object* %call3.i, null, !dbg !2035
  br i1 %cmp5.i, label %do.body.7.i, label %descr_new.exit.thread7, !dbg !2036

do.body.7.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !827, metadata !1275) #2, !dbg !2037
  %ob_refcnt8.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2039
  %5 = load i64, i64* %ob_refcnt8.i, align 8, !dbg !2039, !tbaa !1303
  %dec.i = add i64 %5, -1, !dbg !2039
  store i64 %dec.i, i64* %ob_refcnt8.i, align 8, !dbg !2039, !tbaa !1303
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !2039
  br i1 %cmp9.i, label %if.else.i, label %if.end, !dbg !2041

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2042
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2042, !tbaa !1307
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2042
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2042, !tbaa !1308
  tail call void %7(%struct._object* %call.i) #2, !dbg !2042
  br label %if.end, !dbg !2044

descr_new.exit.thread7:                           ; preds = %if.end.i
  %d_qualname.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2045
  %8 = bitcast %struct._object* %d_qualname.i to %struct._object**, !dbg !2045
  store %struct._object* null, %struct._object** %8, align 8, !dbg !2047, !tbaa !1326
  %d_method = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !2048
  %9 = bitcast %struct._typeobject** %d_method to %struct.PyMethodDef**, !dbg !2048
  store %struct.PyMethodDef* %method, %struct.PyMethodDef** %9, align 8, !dbg !2050, !tbaa !1405
  br label %if.end, !dbg !2051

if.end:                                           ; preds = %entry, %if.else.i, %do.body.7.i, %descr_new.exit.thread7
  %descr.0.i6 = phi %struct.PyDescrObject* [ %1, %descr_new.exit.thread7 ], [ null, %do.body.7.i ], [ null, %if.else.i ], [ null, %entry ]
  %10 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr.0.i6, i64 0, i32 0, !dbg !2052
  ret %struct._object* %10, !dbg !2053
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewClassMethod(%struct._typeobject* %type, %struct.PyMethodDef* %method) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !529, metadata !1275), !dbg !2054
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %method, i64 0, metadata !530, metadata !1275), !dbg !2055
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %method, i64 0, i32 0, !dbg !2056
  %0 = load i8*, i8** %ml_name, align 8, !dbg !2056, !tbaa !2014
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyClassMethodDescr_Type, i64 0, metadata !819, metadata !1275) #2, !dbg !2057
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !820, metadata !1275) #2, !dbg !2059
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !821, metadata !1275) #2, !dbg !2060
  %call.i = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* nonnull @PyClassMethodDescr_Type, i64 0) #2, !dbg !2061
  %1 = bitcast %struct._object* %call.i to %struct.PyDescrObject*, !dbg !2062
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %1, i64 0, metadata !822, metadata !1275) #2, !dbg !2063
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2064
  br i1 %cmp.i, label %if.end, label %do.body.i, !dbg !2065

do.body.i:                                        ; preds = %entry
  %cmp1.i = icmp eq %struct._typeobject* %type, null, !dbg !2066
  br i1 %cmp1.i, label %if.end.i, label %if.then.2.i, !dbg !2067

if.then.2.i:                                      ; preds = %do.body.i
  %ob_refcnt.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 0, i32 0, i32 0, !dbg !2068
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2068, !tbaa !1303
  %inc.i = add i64 %2, 1, !dbg !2068
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2068, !tbaa !1303
  br label %if.end.i, !dbg !2068

if.end.i:                                         ; preds = %if.then.2.i, %do.body.i
  %d_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2069
  %3 = bitcast %struct._object* %d_type.i to %struct._typeobject**, !dbg !2069
  store %struct._typeobject* %type, %struct._typeobject** %3, align 8, !dbg !2070, !tbaa !1294
  %call3.i = tail call %struct._object* @PyUnicode_InternFromString(i8* %0) #2, !dbg !2071
  %d_name.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2072
  %4 = bitcast %struct._typeobject** %d_name.i to %struct._object**, !dbg !2072
  store %struct._object* %call3.i, %struct._object** %4, align 8, !dbg !2073, !tbaa !1314
  %cmp5.i = icmp eq %struct._object* %call3.i, null, !dbg !2074
  br i1 %cmp5.i, label %do.body.7.i, label %descr_new.exit.thread7, !dbg !2075

do.body.7.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !827, metadata !1275) #2, !dbg !2076
  %ob_refcnt8.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2077
  %5 = load i64, i64* %ob_refcnt8.i, align 8, !dbg !2077, !tbaa !1303
  %dec.i = add i64 %5, -1, !dbg !2077
  store i64 %dec.i, i64* %ob_refcnt8.i, align 8, !dbg !2077, !tbaa !1303
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !2077
  br i1 %cmp9.i, label %if.else.i, label %if.end, !dbg !2078

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2079
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2079, !tbaa !1307
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2079
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2079, !tbaa !1308
  tail call void %7(%struct._object* %call.i) #2, !dbg !2079
  br label %if.end, !dbg !2080

descr_new.exit.thread7:                           ; preds = %if.end.i
  %d_qualname.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2081
  %8 = bitcast %struct._object* %d_qualname.i to %struct._object**, !dbg !2081
  store %struct._object* null, %struct._object** %8, align 8, !dbg !2082, !tbaa !1326
  %d_method = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !2083
  %9 = bitcast %struct._typeobject** %d_method to %struct.PyMethodDef**, !dbg !2083
  store %struct.PyMethodDef* %method, %struct.PyMethodDef** %9, align 8, !dbg !2085, !tbaa !1405
  br label %if.end, !dbg !2086

if.end:                                           ; preds = %entry, %if.else.i, %do.body.7.i, %descr_new.exit.thread7
  %descr.0.i6 = phi %struct.PyDescrObject* [ %1, %descr_new.exit.thread7 ], [ null, %do.body.7.i ], [ null, %if.else.i ], [ null, %entry ]
  %10 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr.0.i6, i64 0, i32 0, !dbg !2087
  ret %struct._object* %10, !dbg !2088
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewMember(%struct._typeobject* %type, %struct.PyMemberDef* %member) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !538, metadata !1275), !dbg !2089
  tail call void @llvm.dbg.value(metadata %struct.PyMemberDef* %member, i64 0, metadata !539, metadata !1275), !dbg !2090
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %member, i64 0, i32 0, !dbg !2091
  %0 = load i8*, i8** %name, align 8, !dbg !2091, !tbaa !2092
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyMemberDescr_Type, i64 0, metadata !819, metadata !1275) #2, !dbg !2094
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !820, metadata !1275) #2, !dbg !2096
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !821, metadata !1275) #2, !dbg !2097
  %call.i = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* nonnull @PyMemberDescr_Type, i64 0) #2, !dbg !2098
  %1 = bitcast %struct._object* %call.i to %struct.PyDescrObject*, !dbg !2099
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %1, i64 0, metadata !822, metadata !1275) #2, !dbg !2100
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2101
  br i1 %cmp.i, label %if.end, label %do.body.i, !dbg !2102

do.body.i:                                        ; preds = %entry
  %cmp1.i = icmp eq %struct._typeobject* %type, null, !dbg !2103
  br i1 %cmp1.i, label %if.end.i, label %if.then.2.i, !dbg !2104

if.then.2.i:                                      ; preds = %do.body.i
  %ob_refcnt.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 0, i32 0, i32 0, !dbg !2105
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2105, !tbaa !1303
  %inc.i = add i64 %2, 1, !dbg !2105
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2105, !tbaa !1303
  br label %if.end.i, !dbg !2105

if.end.i:                                         ; preds = %if.then.2.i, %do.body.i
  %d_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2106
  %3 = bitcast %struct._object* %d_type.i to %struct._typeobject**, !dbg !2106
  store %struct._typeobject* %type, %struct._typeobject** %3, align 8, !dbg !2107, !tbaa !1294
  %call3.i = tail call %struct._object* @PyUnicode_InternFromString(i8* %0) #2, !dbg !2108
  %d_name.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2109
  %4 = bitcast %struct._typeobject** %d_name.i to %struct._object**, !dbg !2109
  store %struct._object* %call3.i, %struct._object** %4, align 8, !dbg !2110, !tbaa !1314
  %cmp5.i = icmp eq %struct._object* %call3.i, null, !dbg !2111
  br i1 %cmp5.i, label %do.body.7.i, label %descr_new.exit.thread7, !dbg !2112

do.body.7.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !827, metadata !1275) #2, !dbg !2113
  %ob_refcnt8.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2114
  %5 = load i64, i64* %ob_refcnt8.i, align 8, !dbg !2114, !tbaa !1303
  %dec.i = add i64 %5, -1, !dbg !2114
  store i64 %dec.i, i64* %ob_refcnt8.i, align 8, !dbg !2114, !tbaa !1303
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !2114
  br i1 %cmp9.i, label %if.else.i, label %if.end, !dbg !2115

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2116
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2116, !tbaa !1307
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2116
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2116, !tbaa !1308
  tail call void %7(%struct._object* %call.i) #2, !dbg !2116
  br label %if.end, !dbg !2117

descr_new.exit.thread7:                           ; preds = %if.end.i
  %d_qualname.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2118
  %8 = bitcast %struct._object* %d_qualname.i to %struct._object**, !dbg !2118
  store %struct._object* null, %struct._object** %8, align 8, !dbg !2119, !tbaa !1326
  %d_member = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !2120
  %9 = bitcast %struct._typeobject** %d_member to %struct.PyMemberDef**, !dbg !2120
  store %struct.PyMemberDef* %member, %struct.PyMemberDef** %9, align 8, !dbg !2122, !tbaa !1405
  br label %if.end, !dbg !2123

if.end:                                           ; preds = %entry, %if.else.i, %do.body.7.i, %descr_new.exit.thread7
  %descr.0.i6 = phi %struct.PyDescrObject* [ %1, %descr_new.exit.thread7 ], [ null, %do.body.7.i ], [ null, %if.else.i ], [ null, %entry ]
  %10 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr.0.i6, i64 0, i32 0, !dbg !2124
  ret %struct._object* %10, !dbg !2125
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewGetSet(%struct._typeobject* %type, %struct.PyGetSetDef* %getset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !545, metadata !1275), !dbg !2126
  tail call void @llvm.dbg.value(metadata %struct.PyGetSetDef* %getset, i64 0, metadata !546, metadata !1275), !dbg !2127
  %name = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %getset, i64 0, i32 0, !dbg !2128
  %0 = load i8*, i8** %name, align 8, !dbg !2128, !tbaa !2129
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyGetSetDescr_Type, i64 0, metadata !819, metadata !1275) #2, !dbg !2130
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !820, metadata !1275) #2, !dbg !2132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !821, metadata !1275) #2, !dbg !2133
  %call.i = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* nonnull @PyGetSetDescr_Type, i64 0) #2, !dbg !2134
  %1 = bitcast %struct._object* %call.i to %struct.PyDescrObject*, !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %1, i64 0, metadata !822, metadata !1275) #2, !dbg !2136
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2137
  br i1 %cmp.i, label %if.end, label %do.body.i, !dbg !2138

do.body.i:                                        ; preds = %entry
  %cmp1.i = icmp eq %struct._typeobject* %type, null, !dbg !2139
  br i1 %cmp1.i, label %if.end.i, label %if.then.2.i, !dbg !2140

if.then.2.i:                                      ; preds = %do.body.i
  %ob_refcnt.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 0, i32 0, i32 0, !dbg !2141
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2141, !tbaa !1303
  %inc.i = add i64 %2, 1, !dbg !2141
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2141, !tbaa !1303
  br label %if.end.i, !dbg !2141

if.end.i:                                         ; preds = %if.then.2.i, %do.body.i
  %d_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2142
  %3 = bitcast %struct._object* %d_type.i to %struct._typeobject**, !dbg !2142
  store %struct._typeobject* %type, %struct._typeobject** %3, align 8, !dbg !2143, !tbaa !1294
  %call3.i = tail call %struct._object* @PyUnicode_InternFromString(i8* %0) #2, !dbg !2144
  %d_name.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2145
  %4 = bitcast %struct._typeobject** %d_name.i to %struct._object**, !dbg !2145
  store %struct._object* %call3.i, %struct._object** %4, align 8, !dbg !2146, !tbaa !1314
  %cmp5.i = icmp eq %struct._object* %call3.i, null, !dbg !2147
  br i1 %cmp5.i, label %do.body.7.i, label %descr_new.exit.thread7, !dbg !2148

do.body.7.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !827, metadata !1275) #2, !dbg !2149
  %ob_refcnt8.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2150
  %5 = load i64, i64* %ob_refcnt8.i, align 8, !dbg !2150, !tbaa !1303
  %dec.i = add i64 %5, -1, !dbg !2150
  store i64 %dec.i, i64* %ob_refcnt8.i, align 8, !dbg !2150, !tbaa !1303
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !2150
  br i1 %cmp9.i, label %if.else.i, label %if.end, !dbg !2151

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2152
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2152, !tbaa !1307
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2152
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2152, !tbaa !1308
  tail call void %7(%struct._object* %call.i) #2, !dbg !2152
  br label %if.end, !dbg !2153

descr_new.exit.thread7:                           ; preds = %if.end.i
  %d_qualname.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2154
  %8 = bitcast %struct._object* %d_qualname.i to %struct._object**, !dbg !2154
  store %struct._object* null, %struct._object** %8, align 8, !dbg !2155, !tbaa !1326
  %d_getset = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !2156
  %9 = bitcast %struct._typeobject** %d_getset to %struct.PyGetSetDef**, !dbg !2156
  store %struct.PyGetSetDef* %getset, %struct.PyGetSetDef** %9, align 8, !dbg !2158, !tbaa !1405
  br label %if.end, !dbg !2159

if.end:                                           ; preds = %entry, %if.else.i, %do.body.7.i, %descr_new.exit.thread7
  %descr.0.i6 = phi %struct.PyDescrObject* [ %1, %descr_new.exit.thread7 ], [ null, %do.body.7.i ], [ null, %if.else.i ], [ null, %entry ]
  %10 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr.0.i6, i64 0, i32 0, !dbg !2160
  ret %struct._object* %10, !dbg !2161
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewWrapper(%struct._typeobject* %type, %struct.wrapperbase* %base, i8* %wrapped) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !552, metadata !1275), !dbg !2162
  tail call void @llvm.dbg.value(metadata %struct.wrapperbase* %base, i64 0, metadata !553, metadata !1275), !dbg !2163
  tail call void @llvm.dbg.value(metadata i8* %wrapped, i64 0, metadata !554, metadata !1275), !dbg !2164
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %base, i64 0, i32 0, !dbg !2165
  %0 = load i8*, i8** %name, align 8, !dbg !2165, !tbaa !2166
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyWrapperDescr_Type, i64 0, metadata !819, metadata !1275) #2, !dbg !2168
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !820, metadata !1275) #2, !dbg !2170
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !821, metadata !1275) #2, !dbg !2171
  %call.i = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* nonnull @PyWrapperDescr_Type, i64 0) #2, !dbg !2172
  %1 = bitcast %struct._object* %call.i to %struct.PyDescrObject*, !dbg !2173
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %1, i64 0, metadata !822, metadata !1275) #2, !dbg !2174
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2175
  br i1 %cmp.i, label %if.end, label %do.body.i, !dbg !2176

do.body.i:                                        ; preds = %entry
  %cmp1.i = icmp eq %struct._typeobject* %type, null, !dbg !2177
  br i1 %cmp1.i, label %if.end.i, label %if.then.2.i, !dbg !2178

if.then.2.i:                                      ; preds = %do.body.i
  %ob_refcnt.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 0, i32 0, i32 0, !dbg !2179
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2179, !tbaa !1303
  %inc.i = add i64 %2, 1, !dbg !2179
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2179, !tbaa !1303
  br label %if.end.i, !dbg !2179

if.end.i:                                         ; preds = %if.then.2.i, %do.body.i
  %d_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2180
  %3 = bitcast %struct._object* %d_type.i to %struct._typeobject**, !dbg !2180
  store %struct._typeobject* %type, %struct._typeobject** %3, align 8, !dbg !2181, !tbaa !1294
  %call3.i = tail call %struct._object* @PyUnicode_InternFromString(i8* %0) #2, !dbg !2182
  %d_name.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2183
  %4 = bitcast %struct._typeobject** %d_name.i to %struct._object**, !dbg !2183
  store %struct._object* %call3.i, %struct._object** %4, align 8, !dbg !2184, !tbaa !1314
  %cmp5.i = icmp eq %struct._object* %call3.i, null, !dbg !2185
  br i1 %cmp5.i, label %do.body.7.i, label %descr_new.exit.thread8, !dbg !2186

do.body.7.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !827, metadata !1275) #2, !dbg !2187
  %ob_refcnt8.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2188
  %5 = load i64, i64* %ob_refcnt8.i, align 8, !dbg !2188, !tbaa !1303
  %dec.i = add i64 %5, -1, !dbg !2188
  store i64 %dec.i, i64* %ob_refcnt8.i, align 8, !dbg !2188, !tbaa !1303
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !2188
  br i1 %cmp9.i, label %if.else.i, label %if.end, !dbg !2189

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2190
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2190, !tbaa !1307
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2190
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2190, !tbaa !1308
  tail call void %7(%struct._object* %call.i) #2, !dbg !2190
  br label %if.end, !dbg !2191

descr_new.exit.thread8:                           ; preds = %if.end.i
  %d_qualname.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2192
  %8 = bitcast %struct._object* %d_qualname.i to %struct._object**, !dbg !2192
  store %struct._object* null, %struct._object** %8, align 8, !dbg !2193, !tbaa !1326
  %d_base = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !2194
  %9 = bitcast %struct._typeobject** %d_base to %struct.wrapperbase**, !dbg !2194
  store %struct.wrapperbase* %base, %struct.wrapperbase** %9, align 8, !dbg !2197, !tbaa !2198
  %d_wrapped = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, !dbg !2200
  %10 = bitcast %struct._object* %d_wrapped to i8**, !dbg !2200
  store i8* %wrapped, i8** %10, align 8, !dbg !2201, !tbaa !2202
  br label %if.end, !dbg !2203

if.end:                                           ; preds = %entry, %if.else.i, %do.body.7.i, %descr_new.exit.thread8
  %descr.0.i7 = phi %struct.PyDescrObject* [ %1, %descr_new.exit.thread8 ], [ null, %do.body.7.i ], [ null, %if.else.i ], [ null, %entry ]
  %11 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr.0.i7, i64 0, i32 0, !dbg !2204
  ret %struct._object* %11, !dbg !2205
}

; Function Attrs: nounwind uwtable
define internal void @mappingproxy_dealloc(%struct.mappingproxyobject* %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !835, metadata !1275), !dbg !2206
  %add.ptr33 = getelementptr %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 -1, !dbg !2207
  %gc_refs = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 -1, i32 1, !dbg !2209
  %0 = bitcast %struct._object** %gc_refs to i64*, !dbg !2209
  %1 = load i64, i64* %0, align 8, !dbg !2209, !tbaa !1282
  %and = and i64 %1, 1, !dbg !2209
  %or = or i64 %and, -4, !dbg !2209
  store i64 %or, i64* %0, align 8, !dbg !2209, !tbaa !1282
  %gc_next = bitcast %struct.mappingproxyobject* %add.ptr33 to %union._gc_head**, !dbg !2212
  %2 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %add.ptr33, i64 0, i32 0, i32 0, !dbg !2212
  %3 = load i64, i64* %2, align 8, !dbg !2212, !tbaa !1290
  %gc_prev = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 -1, i32 0, i32 1, !dbg !2212
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !2212
  %5 = load i64*, i64** %4, align 8, !dbg !2212, !tbaa !1291
  store i64 %3, i64* %5, align 8, !dbg !2212, !tbaa !1290
  %6 = ptrtoint i64* %5 to i64, !dbg !2212
  %7 = bitcast %struct.mappingproxyobject* %add.ptr33 to %struct.anon**, !dbg !2212
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !2212, !tbaa !1290
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !2212
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !2212
  store i64 %6, i64* %9, align 8, !dbg !2212, !tbaa !1291
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !2212, !tbaa !1290
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2214
  %10 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2214, !tbaa !2216
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !838, metadata !1275), !dbg !2214
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !2218
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2218, !tbaa !1303
  %dec = add i64 %11, -1, !dbg !2218
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2218, !tbaa !1303
  %cmp = icmp eq i64 %dec, 0, !dbg !2218
  br i1 %cmp, label %if.else, label %if.end, !dbg !2220

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !2221
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2221, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2221
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2221, !tbaa !1308
  tail call void %13(%struct._object* %10) #2, !dbg !2221
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %14 = bitcast %struct.mappingproxyobject* %pp to i8*, !dbg !2223
  tail call void @PyObject_GC_Del(i8* %14) #2, !dbg !2224
  ret void, !dbg !2225
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_repr(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !844, metadata !1275), !dbg !2226
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2227
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2227, !tbaa !2216
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), %struct._object* %0) #2, !dbg !2228
  ret %struct._object* %call, !dbg !2229
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_str(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !864, metadata !1275), !dbg !2230
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2231
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2231, !tbaa !2216
  %call = tail call %struct._object* @PyObject_Str(%struct._object* %0) #2, !dbg !2232
  ret %struct._object* %call, !dbg !2233
}

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_traverse(%struct._object* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !867, metadata !1275), !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !868, metadata !1275), !dbg !2235
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !869, metadata !1275), !dbg !2236
  %mapping = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !2237
  %0 = bitcast %struct._object* %mapping to %struct._object**, !dbg !2237
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !2237, !tbaa !2216
  %tobool = icmp eq %struct._object* %1, null, !dbg !2237
  br i1 %tobool, label %do.end, label %if.then, !dbg !2239

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !2240
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !871, metadata !1275), !dbg !2240
  %tobool2 = icmp eq i32 %call, 0, !dbg !2242
  br i1 %tobool2, label %do.end, label %cleanup.5

do.end:                                           ; preds = %entry, %if.then
  br label %cleanup.5, !dbg !2244

cleanup.5:                                        ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !2245
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_richcompare(%struct.mappingproxyobject* nocapture readonly %v, %struct._object* %w, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %v, i64 0, metadata !879, metadata !1275), !dbg !2246
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !880, metadata !1275), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !881, metadata !1275), !dbg !2248
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %v, i64 0, i32 1, !dbg !2249
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2249, !tbaa !2216
  %call = tail call %struct._object* @PyObject_RichCompare(%struct._object* %0, %struct._object* %w, i32 %op) #2, !dbg !2250
  ret %struct._object* %call, !dbg !2251
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_getiter(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !884, metadata !1275), !dbg !2252
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2253
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2253, !tbaa !2216
  %call = tail call %struct._object* @PyObject_GetIter(%struct._object* %0) #2, !dbg !2254
  ret %struct._object* %call, !dbg !2255
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %mapping = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !907, metadata !1275), !dbg !2256
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !908, metadata !1275), !dbg !2257
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !909, metadata !1275), !dbg !2258
  %0 = bitcast %struct._object** %mapping to i8*, !dbg !2259
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !910, metadata !1275), !dbg !2260
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @mappingproxy_new.kwlist, i64 0, i64 0), %struct._object** nonnull %mapping) #2, !dbg !2261
  %tobool = icmp eq i32 %call, 0, !dbg !2261
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2263

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !910, metadata !1275), !dbg !2260
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2264, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !916, metadata !1275) #2, !dbg !2266
  %call.i = call i32 @PyMapping_Check(%struct._object* %1) #2, !dbg !2268
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !2268
  %ob_type6.phi.trans.insert.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !2270
  %.pre.i = load %struct._typeobject*, %struct._typeobject** %ob_type6.phi.trans.insert.i, align 8, !dbg !2270, !tbaa !1307
  br i1 %tobool.i, label %mappingproxy_check_mapping.exit.thread, label %lor.lhs.false.i, !dbg !2272

lor.lhs.false.i:                                  ; preds = %if.end
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.pre.i, i64 0, i32 19, !dbg !2273
  %2 = load i64, i64* %tp_flags.i, align 8, !dbg !2273, !tbaa !1349
  %3 = and i64 %2, 100663296, !dbg !2275
  %4 = icmp eq i64 %3, 0, !dbg !2275
  br i1 %4, label %if.end.3, label %mappingproxy_check_mapping.exit.thread, !dbg !2275

mappingproxy_check_mapping.exit.thread:           ; preds = %if.end, %lor.lhs.false.i
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2276, !tbaa !1368
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.pre.i, i64 0, i32 1, !dbg !2277
  %6 = load i8*, i8** %tp_name.i, align 8, !dbg !2277, !tbaa !1354
  %call7.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i64 0, i64 0), i8* %6) #2, !dbg !2278
  br label %cleanup, !dbg !2279

if.end.3:                                         ; preds = %lor.lhs.false.i
  %call4 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @PyDictProxy_Type) #2, !dbg !2280
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !2281
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !2283

if.end.7:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !910, metadata !1275), !dbg !2260
  %7 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2284, !tbaa !1368
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !2284
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2284, !tbaa !1303
  %inc = add i64 %8, 1, !dbg !2284
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2284, !tbaa !1303
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !910, metadata !1275), !dbg !2260
  %9 = ptrtoint %struct._object* %7 to i64, !dbg !2285
  %10 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 1, i32 0, !dbg !2286
  store i64 %9, i64* %10, align 8, !dbg !2286, !tbaa !2216
  %add.ptr = getelementptr %struct._object, %struct._object* %call4, i64 -2, i32 1, !dbg !2287
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2289
  %11 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2289
  %12 = load i64, i64* %11, align 8, !dbg !2289, !tbaa !1282
  %shr.mask = and i64 %12, -2, !dbg !2289
  %cmp9 = icmp eq i64 %shr.mask, -4, !dbg !2289
  br i1 %cmp9, label %do.body.12, label %if.then.10, !dbg !2291

if.then.10:                                       ; preds = %if.end.7
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !2292
  unreachable, !dbg !2292

do.body.12:                                       ; preds = %if.end.7
  %and = and i64 %12, 1, !dbg !2294
  %or = or i64 %and, -6, !dbg !2294
  store i64 %or, i64* %11, align 8, !dbg !2294, !tbaa !1282
  %13 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2297, !tbaa !1368
  %14 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !2297
  store i64 %13, i64* %14, align 8, !dbg !2297, !tbaa !1290
  %15 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2297, !tbaa !1368
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 0, i32 1, !dbg !2297
  %16 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2297, !tbaa !1291
  %gc_prev20 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !2297
  %17 = bitcast %struct._typeobject** %gc_prev20 to %union._gc_head**, !dbg !2297
  store %union._gc_head* %16, %union._gc_head** %17, align 8, !dbg !2297, !tbaa !1291
  %18 = bitcast %union._gc_head* %16 to %struct._typeobject***, !dbg !2297
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %18, align 8, !dbg !2297, !tbaa !1290
  %19 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2297, !tbaa !1368
  %gc_prev26 = getelementptr inbounds %struct.anon, %struct.anon* %19, i64 0, i32 1, !dbg !2297
  %20 = bitcast %union._gc_head** %gc_prev26 to %struct._typeobject***, !dbg !2297
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %20, align 8, !dbg !2297, !tbaa !1291
  br label %cleanup, !dbg !2299

cleanup:                                          ; preds = %mappingproxy_check_mapping.exit.thread, %if.end.3, %entry, %do.body.12
  %retval.0 = phi %struct._object* [ %call4, %do.body.12 ], [ null, %entry ], [ null, %if.end.3 ], [ null, %mappingproxy_check_mapping.exit.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2300
  ret %struct._object* %retval.0, !dbg !2300
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDictProxy_New(%struct._object* %mapping) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %mapping, i64 0, metadata !558, metadata !1275), !dbg !2301
  tail call void @llvm.dbg.value(metadata %struct._object* %mapping, i64 0, metadata !916, metadata !1275) #2, !dbg !2302
  %call.i = tail call i32 @PyMapping_Check(%struct._object* %mapping) #2, !dbg !2305
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !2305
  %ob_type6.phi.trans.insert.i = getelementptr inbounds %struct._object, %struct._object* %mapping, i64 0, i32 1, !dbg !2306
  %.pre.i = load %struct._typeobject*, %struct._typeobject** %ob_type6.phi.trans.insert.i, align 8, !dbg !2306, !tbaa !1307
  br i1 %tobool.i, label %mappingproxy_check_mapping.exit.thread, label %lor.lhs.false.i, !dbg !2307

lor.lhs.false.i:                                  ; preds = %entry
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.pre.i, i64 0, i32 19, !dbg !2308
  %0 = load i64, i64* %tp_flags.i, align 8, !dbg !2308, !tbaa !1349
  %1 = and i64 %0, 100663296, !dbg !2309
  %2 = icmp eq i64 %1, 0, !dbg !2309
  br i1 %2, label %if.end, label %mappingproxy_check_mapping.exit.thread, !dbg !2309

mappingproxy_check_mapping.exit.thread:           ; preds = %entry, %lor.lhs.false.i
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2310, !tbaa !1368
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.pre.i, i64 0, i32 1, !dbg !2311
  %4 = load i8*, i8** %tp_name.i, align 8, !dbg !2311, !tbaa !1354
  %call7.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i64 0, i64 0), i8* %4) #2, !dbg !2312
  br label %cleanup, !dbg !2313

if.end:                                           ; preds = %lor.lhs.false.i
  %call1 = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @PyDictProxy_Type) #2, !dbg !2314
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !2315
  br i1 %cmp2, label %cleanup, label %if.then.3, !dbg !2316

if.then.3:                                        ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %mapping, i64 0, i32 0, !dbg !2317
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2317, !tbaa !1303
  %inc = add i64 %5, 1, !dbg !2317
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2317, !tbaa !1303
  %mapping4 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, !dbg !2318
  %6 = bitcast %struct._object* %mapping4 to %struct._object**, !dbg !2318
  store %struct._object* %mapping, %struct._object** %6, align 8, !dbg !2319, !tbaa !2216
  %add.ptr = getelementptr %struct._object, %struct._object* %call1, i64 -2, i32 1, !dbg !2320
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2322
  %7 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2322
  %8 = load i64, i64* %7, align 8, !dbg !2322, !tbaa !1282
  %shr.mask = and i64 %8, -2, !dbg !2322
  %cmp5 = icmp eq i64 %shr.mask, -4, !dbg !2322
  br i1 %cmp5, label %do.body.8, label %if.then.6, !dbg !2324

if.then.6:                                        ; preds = %if.then.3
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !2325
  unreachable, !dbg !2325

do.body.8:                                        ; preds = %if.then.3
  %and = and i64 %8, 1, !dbg !2327
  %or = or i64 %and, -6, !dbg !2327
  store i64 %or, i64* %7, align 8, !dbg !2327, !tbaa !1282
  %9 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2330, !tbaa !1368
  %10 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !2330
  store i64 %9, i64* %10, align 8, !dbg !2330, !tbaa !1290
  %11 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2330, !tbaa !1368
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 0, i32 1, !dbg !2330
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2330, !tbaa !1291
  %gc_prev16 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !2330
  %13 = bitcast %struct._typeobject** %gc_prev16 to %union._gc_head**, !dbg !2330
  store %union._gc_head* %12, %union._gc_head** %13, align 8, !dbg !2330, !tbaa !1291
  %14 = bitcast %union._gc_head* %12 to %struct._typeobject***, !dbg !2330
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %14, align 8, !dbg !2330, !tbaa !1290
  %15 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2330, !tbaa !1368
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 0, i32 1, !dbg !2330
  %16 = bitcast %union._gc_head** %gc_prev22 to %struct._typeobject***, !dbg !2330
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %16, align 8, !dbg !2330, !tbaa !1291
  br label %cleanup, !dbg !2332

cleanup:                                          ; preds = %mappingproxy_check_mapping.exit.thread, %do.body.8, %if.end
  %retval.0 = phi %struct._object* [ null, %if.end ], [ %call1, %do.body.8 ], [ null, %mappingproxy_check_mapping.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2333
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @wrapper_dealloc(%struct.wrapperobject* %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !921, metadata !1275), !dbg !2334
  %0 = bitcast %struct.wrapperobject* %wp to i8*, !dbg !2335
  tail call void @PyObject_GC_UnTrack(i8* %0) #2, !dbg !2336
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !924, metadata !1275), !dbg !2337
  tail call void @llvm.dbg.value(metadata !2338, i64 0, metadata !932, metadata !1275), !dbg !2337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !935, metadata !1275), !dbg !2337
  %1 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2339, !tbaa !1368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !931, metadata !1275), !dbg !2337
  %trash_delete_nesting = getelementptr inbounds i8, i8* %1, i64 160, !dbg !2342
  %2 = bitcast i8* %trash_delete_nesting to i32*, !dbg !2342
  %3 = load i32, i32* %2, align 4, !dbg !2342, !tbaa !2343
  %cmp = icmp slt i32 %3, 50, !dbg !2342
  br i1 %cmp, label %if.then, label %if.else.43, !dbg !2345

if.then:                                          ; preds = %entry
  %inc = add i32 %3, 1, !dbg !2346
  store i32 %inc, i32* %2, align 4, !dbg !2346, !tbaa !2343
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2348
  %4 = bitcast %struct.PyWrapperDescrObject** %descr to %struct._object**, !dbg !2348
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !2348, !tbaa !1914
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !937, metadata !1275), !dbg !2348
  %cmp7 = icmp eq %struct._object* %5, null, !dbg !2350
  br i1 %cmp7, label %if.end.13, label %do.body.9, !dbg !2351

do.body.9:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !941, metadata !1275), !dbg !2352
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !2354
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !2354, !tbaa !1303
  %dec = add i64 %6, -1, !dbg !2354
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2354, !tbaa !1303
  %cmp11 = icmp eq i64 %dec, 0, !dbg !2354
  br i1 %cmp11, label %if.else, label %if.end.13, !dbg !2356

if.else:                                          ; preds = %do.body.9
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !2357
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2357, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2357
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2357, !tbaa !1308
  tail call void %8(%struct._object* %5) #2, !dbg !2357
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %do.body.9, %if.then
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 2, !dbg !2359
  %9 = load %struct._object*, %struct._object** %self, align 8, !dbg !2359, !tbaa !1919
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !944, metadata !1275), !dbg !2359
  %cmp19 = icmp eq %struct._object* %9, null, !dbg !2361
  br i1 %cmp19, label %if.end.34, label %do.body.21, !dbg !2362

do.body.21:                                       ; preds = %if.end.13
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !946, metadata !1275), !dbg !2363
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !2365
  %10 = load i64, i64* %ob_refcnt24, align 8, !dbg !2365, !tbaa !1303
  %dec25 = add i64 %10, -1, !dbg !2365
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !2365, !tbaa !1303
  %cmp26 = icmp eq i64 %dec25, 0, !dbg !2365
  br i1 %cmp26, label %if.else.28, label %if.end.34, !dbg !2367

if.else.28:                                       ; preds = %do.body.21
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !2368
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2368, !tbaa !1307
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2368
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2368, !tbaa !1308
  tail call void %12(%struct._object* %9) #2, !dbg !2368
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.28, %do.body.21, %if.end.13
  tail call void @PyObject_GC_Del(i8* %0) #2, !dbg !2370
  %13 = load i32, i32* %2, align 4, !dbg !2371, !tbaa !2343
  %dec38 = add i32 %13, -1, !dbg !2371
  store i32 %dec38, i32* %2, align 4, !dbg !2371, !tbaa !2343
  %trash_delete_later = getelementptr inbounds i8, i8* %1, i64 168, !dbg !2372
  %14 = bitcast i8* %trash_delete_later to %struct._object**, !dbg !2372
  %15 = load %struct._object*, %struct._object** %14, align 8, !dbg !2372, !tbaa !2374
  %tobool = icmp ne %struct._object* %15, null, !dbg !2372
  %cmp40 = icmp slt i32 %dec38, 1, !dbg !2375
  %or.cond = and i1 %tobool, %cmp40, !dbg !2372
  br i1 %or.cond, label %if.then.41, label %if.end.44, !dbg !2372

if.then.41:                                       ; preds = %if.end.34
  tail call void @_PyTrash_thread_destroy_chain() #2, !dbg !2377
  br label %if.end.44, !dbg !2377

if.else.43:                                       ; preds = %entry
  %16 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 0, !dbg !2379
  tail call void @_PyTrash_thread_deposit_object(%struct._object* %16) #2, !dbg !2379
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.34, %if.then.41, %if.else.43
  ret void, !dbg !2380
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_repr(%struct.wrapperobject* nocapture readonly %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !970, metadata !1275), !dbg !2381
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2382
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2382, !tbaa !1914
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i64 0, i32 1, !dbg !2383
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2383, !tbaa !2198
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 0, !dbg !2384
  %2 = load i8*, i8** %name, align 8, !dbg !2384, !tbaa !2166
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 2, !dbg !2385
  %3 = load %struct._object*, %struct._object** %self, align 8, !dbg !2385, !tbaa !1919
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !2386
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2386, !tbaa !1307
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 1, !dbg !2387
  %5 = load i8*, i8** %tp_name, align 8, !dbg !2387, !tbaa !1354
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i8* %2, i8* %5, %struct._object* %3) #2, !dbg !2388
  ret %struct._object* %call, !dbg !2389
}

; Function Attrs: nounwind uwtable
define internal i64 @wrapper_hash(%struct.wrapperobject* nocapture readonly %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !975, metadata !1275), !dbg !2390
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2391
  %0 = bitcast %struct.PyWrapperDescrObject** %descr to i8**, !dbg !2391
  %1 = load i8*, i8** %0, align 8, !dbg !2391, !tbaa !1914
  %call = tail call i64 @_Py_HashPointer(i8* %1) #2, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !976, metadata !1275), !dbg !2393
  %cmp = icmp eq i64 %call, -1, !dbg !2394
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2396

if.end:                                           ; preds = %entry
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 2, !dbg !2397
  %2 = load %struct._object*, %struct._object** %self, align 8, !dbg !2397, !tbaa !1919
  %call1 = tail call i64 @PyObject_Hash(%struct._object* %2) #2, !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !977, metadata !1275), !dbg !2399
  %cmp2 = icmp eq i64 %call1, -1, !dbg !2400
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !2402

if.end.4:                                         ; preds = %if.end
  %xor = xor i64 %call1, %call, !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 %xor, i64 0, metadata !976, metadata !1275), !dbg !2393
  %cmp5 = icmp eq i64 %xor, -1, !dbg !2404
  %.xor = select i1 %cmp5, i64 -2, i64 %xor, !dbg !2406
  tail call void @llvm.dbg.value(metadata i64 %.xor, i64 0, metadata !976, metadata !1275), !dbg !2393
  br label %cleanup, !dbg !2407

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi i64 [ %.xor, %if.end.4 ], [ -1, %entry ], [ -1, %if.end ]
  ret i64 %retval.0, !dbg !2408
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_call(%struct.wrapperobject* nocapture readonly %wp, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !982, metadata !1275), !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !983, metadata !1275), !dbg !2410
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !984, metadata !1275), !dbg !2411
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2412
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2412, !tbaa !1914
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i64 0, i32 1, !dbg !2413
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2413, !tbaa !2198
  %wrapper1 = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 3, !dbg !2414
  %2 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper1, align 8, !dbg !2414, !tbaa !2415
  tail call void @llvm.dbg.value(metadata %struct._object* (%struct._object*, %struct._object*, i8*)* %2, i64 0, metadata !985, metadata !1275), !dbg !2416
  %self2 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 2, !dbg !2417
  %3 = load %struct._object*, %struct._object** %self2, align 8, !dbg !2417, !tbaa !1919
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !986, metadata !1275), !dbg !2418
  %flags = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 5, !dbg !2419
  %4 = load i32, i32* %flags, align 4, !dbg !2419, !tbaa !2420
  %and = and i32 %4, 1, !dbg !2421
  %tobool = icmp eq i32 %and, 0, !dbg !2421
  br i1 %tobool, label %if.end, label %if.then, !dbg !2422

if.then:                                          ; preds = %entry
  %5 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*)* %2 to %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)*, !dbg !2423
  tail call void @llvm.dbg.value(metadata %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)* %5, i64 0, metadata !987, metadata !1275), !dbg !2424
  %d_wrapped = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i64 0, i32 2, !dbg !2425
  %6 = load i8*, i8** %d_wrapped, align 8, !dbg !2425, !tbaa !2202
  %call = tail call %struct._object* %5(%struct._object* %3, %struct._object* %args, i8* %6, %struct._object* %kwds) #2, !dbg !2426
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct._object* %kwds, null, !dbg !2427
  br i1 %cmp, label %if.end.14, label %land.lhs.true, !dbg !2429

land.lhs.true:                                    ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %kwds, i64 0, i32 1, !dbg !2430
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2430, !tbaa !1307
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !2430
  %8 = load i64, i64* %tp_flags, align 8, !dbg !2430, !tbaa !1349
  %and6 = and i64 %8, 536870912, !dbg !2430
  %cmp7 = icmp eq i64 %and6, 0, !dbg !2430
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false, !dbg !2432

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call8 = tail call i64 @PyDict_Size(%struct._object* %kwds) #2, !dbg !2433
  %cmp9 = icmp eq i64 %call8, 0, !dbg !2434
  %.pre34 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2435, !tbaa !1914
  br i1 %cmp9, label %if.end.14, label %lor.lhs.false.if.then.10_crit_edge, !dbg !2436

lor.lhs.false.if.then.10_crit_edge:               ; preds = %lor.lhs.false
  %d_base12.phi.trans.insert = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %.pre34, i64 0, i32 1, !dbg !2437
  %.pre33 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base12.phi.trans.insert, align 8, !dbg !2437, !tbaa !2198
  br label %if.then.10, !dbg !2436

if.then.10:                                       ; preds = %lor.lhs.false.if.then.10_crit_edge, %land.lhs.true
  %9 = phi %struct.wrapperbase* [ %.pre33, %lor.lhs.false.if.then.10_crit_edge ], [ %1, %land.lhs.true ], !dbg !2437
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2439, !tbaa !1368
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %9, i64 0, i32 0, !dbg !2440
  %11 = load i8*, i8** %name, align 8, !dbg !2440, !tbaa !2166
  %call13 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0), i8* %11) #2, !dbg !2441
  br label %cleanup, !dbg !2442

if.end.14:                                        ; preds = %lor.lhs.false, %if.end
  %12 = phi %struct.PyWrapperDescrObject* [ %0, %if.end ], [ %.pre34, %lor.lhs.false ], !dbg !2435
  %d_wrapped16 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %12, i64 0, i32 2, !dbg !2443
  %13 = load i8*, i8** %d_wrapped16, align 8, !dbg !2443, !tbaa !2202
  %call17 = tail call %struct._object* %2(%struct._object* %3, %struct._object* %args, i8* %13) #2, !dbg !2444
  br label %cleanup, !dbg !2445

cleanup:                                          ; preds = %if.end.14, %if.then.10, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ null, %if.then.10 ], [ %call17, %if.end.14 ]
  ret %struct._object* %retval.0, !dbg !2446
}

; Function Attrs: nounwind uwtable
define internal i32 @wrapper_traverse(%struct._object* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !992, metadata !1275), !dbg !2447
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !993, metadata !1275), !dbg !2448
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !994, metadata !1275), !dbg !2449
  %descr = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !2450
  %0 = bitcast %struct._object* %descr to %struct.PyWrapperDescrObject**, !dbg !2450
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %0, align 8, !dbg !2450, !tbaa !1914
  %tobool = icmp eq %struct.PyWrapperDescrObject* %1, null, !dbg !2450
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !2452

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i64 0, i32 0, i32 0, !dbg !2453
  %call = tail call i32 %visit(%struct._object* %2, i8* %arg) #2, !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !996, metadata !1275), !dbg !2453
  %tobool2 = icmp eq i32 %call, 0, !dbg !2455
  br i1 %tobool2, label %do.body.5, label %cleanup.21

do.body.5:                                        ; preds = %entry, %if.then
  %self6 = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !2457
  %3 = bitcast %struct._typeobject** %self6 to %struct._object**, !dbg !2457
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !2457, !tbaa !1919
  %tobool7 = icmp eq %struct._object* %4, null, !dbg !2457
  br i1 %tobool7, label %do.end.20, label %if.then.8, !dbg !2459

if.then.8:                                        ; preds = %do.body.5
  %call11 = tail call i32 %visit(%struct._object* %4, i8* %arg) #2, !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %call11, i64 0, metadata !1000, metadata !1275), !dbg !2460
  %tobool12 = icmp eq i32 %call11, 0, !dbg !2462
  br i1 %tobool12, label %do.end.20, label %cleanup.21

do.end.20:                                        ; preds = %do.body.5, %if.then.8
  br label %cleanup.21, !dbg !2464

cleanup.21:                                       ; preds = %if.then, %if.then.8, %do.end.20
  %retval.3 = phi i32 [ 0, %do.end.20 ], [ %call11, %if.then.8 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !2465
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_richcompare(%struct._object* nocapture readonly %a, %struct._object* nocapture readonly %b, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !1006, metadata !1275), !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct._object* %b, i64 0, metadata !1007, metadata !1275), !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !1008, metadata !1275), !dbg !2468
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %a, i64 0, i32 1, !dbg !2469
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2469, !tbaa !1307
  %cmp = icmp eq %struct._typeobject* %0, @_PyMethodWrapper_Type, !dbg !2469
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2471

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %b, i64 0, i32 1, !dbg !2472
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2472, !tbaa !1307
  %cmp2 = icmp eq %struct._typeobject* %1, @_PyMethodWrapper_Type, !dbg !2472
  br i1 %cmp2, label %if.end, label %if.then, !dbg !2474

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !1014, metadata !1275), !dbg !2475
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2476, !tbaa !1303
  %inc = add i64 %2, 1, !dbg !2476
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2476, !tbaa !1303
  br label %cleanup, !dbg !2478

if.end:                                           ; preds = %lor.lhs.false
  %descr = getelementptr inbounds %struct._object, %struct._object* %a, i64 1, !dbg !2479
  %3 = bitcast %struct._object* %descr to %struct.PyWrapperDescrObject**, !dbg !2479
  %4 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %3, align 8, !dbg !2479, !tbaa !1914
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %4, i64 0, metadata !1015, metadata !1275), !dbg !2480
  %descr3 = getelementptr inbounds %struct._object, %struct._object* %b, i64 1, !dbg !2481
  %5 = bitcast %struct._object* %descr3 to %struct.PyWrapperDescrObject**, !dbg !2481
  %6 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %5, align 8, !dbg !2481, !tbaa !1914
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %6, i64 0, metadata !1016, metadata !1275), !dbg !2482
  %cmp4 = icmp eq %struct.PyWrapperDescrObject* %4, %6, !dbg !2483
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !2485

if.then.5:                                        ; preds = %if.end
  %self = getelementptr inbounds %struct._object, %struct._object* %a, i64 1, i32 1, !dbg !2486
  %7 = bitcast %struct._typeobject** %self to %struct._object**, !dbg !2486
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !2486, !tbaa !1919
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !1006, metadata !1275), !dbg !2466
  %self6 = getelementptr inbounds %struct._object, %struct._object* %b, i64 1, i32 1, !dbg !2488
  %9 = bitcast %struct._typeobject** %self6 to %struct._object**, !dbg !2488
  %10 = load %struct._object*, %struct._object** %9, align 8, !dbg !2488, !tbaa !1919
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !1007, metadata !1275), !dbg !2467
  %call = tail call %struct._object* @PyObject_RichCompare(%struct._object* %8, %struct._object* %10, i32 %op) #2, !dbg !2489
  br label %cleanup, !dbg !2490

if.end.7:                                         ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint %struct.PyWrapperDescrObject* %4 to i64, !dbg !2491
  %sub.ptr.rhs.cast = ptrtoint %struct.PyWrapperDescrObject* %6 to i64, !dbg !2491
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2491
  switch i32 %op, label %sw.default [
    i32 2, label %sw.epilog
    i32 3, label %sw.bb.9
    i32 1, label %sw.bb.12
    i32 5, label %sw.bb.15
    i32 0, label %sw.bb.18
    i32 4, label %sw.bb.21
  ], !dbg !2492

sw.bb.9:                                          ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), i64 0, metadata !1014, metadata !1275), !dbg !2475
  br label %sw.epilog, !dbg !2493

sw.bb.12:                                         ; preds = %if.end.7
  %cmp13 = icmp slt i64 %sub.ptr.sub, 56, !dbg !2495
  %cond14 = select i1 %cmp13, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !2495
  tail call void @llvm.dbg.value(metadata %struct._object* %cond14, i64 0, metadata !1014, metadata !1275), !dbg !2475
  br label %sw.epilog, !dbg !2496

sw.bb.15:                                         ; preds = %if.end.7
  %cmp16 = icmp sgt i64 %sub.ptr.sub, -56, !dbg !2497
  %cond17 = select i1 %cmp16, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct._object* %cond17, i64 0, metadata !1014, metadata !1275), !dbg !2475
  br label %sw.epilog, !dbg !2498

sw.bb.18:                                         ; preds = %if.end.7
  %cmp19 = icmp slt i64 %sub.ptr.sub, 0, !dbg !2499
  %cond20 = select i1 %cmp19, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !2499
  tail call void @llvm.dbg.value(metadata %struct._object* %cond20, i64 0, metadata !1014, metadata !1275), !dbg !2475
  br label %sw.epilog, !dbg !2500

sw.bb.21:                                         ; preds = %if.end.7
  %cmp22 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2501
  %cond23 = select i1 %cmp22, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !2501
  tail call void @llvm.dbg.value(metadata %struct._object* %cond23, i64 0, metadata !1014, metadata !1275), !dbg !2475
  br label %sw.epilog, !dbg !2502

sw.default:                                       ; preds = %if.end.7
  %call24 = tail call i32 @PyErr_BadArgument() #2, !dbg !2503
  br label %cleanup, !dbg !2504

sw.epilog:                                        ; preds = %if.end.7, %sw.bb.21, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.9
  %v.0 = phi %struct._object* [ %cond23, %sw.bb.21 ], [ %cond20, %sw.bb.18 ], [ %cond17, %sw.bb.15 ], [ %cond14, %sw.bb.12 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %sw.bb.9 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end.7 ]
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %v.0, i64 0, i32 0, !dbg !2505
  %11 = load i64, i64* %ob_refcnt25, align 8, !dbg !2505, !tbaa !1303
  %inc26 = add i64 %11, 1, !dbg !2505
  store i64 %inc26, i64* %ob_refcnt25, align 8, !dbg !2505, !tbaa !1303
  br label %cleanup, !dbg !2506

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then.5 ], [ null, %sw.default ], [ %v.0, %sw.epilog ], [ @_Py_NotImplementedStruct, %if.then ]
  ret %struct._object* %retval.0, !dbg !2507
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyWrapper_New(%struct._object* %d, %struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %d, i64 0, metadata !566, metadata !1275), !dbg !2508
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !567, metadata !1275), !dbg !2509
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @_PyMethodWrapper_Type) #2, !dbg !2510
  %cmp = icmp eq %struct._object* %call, null, !dbg !2511
  br i1 %cmp, label %if.end.24, label %if.then, !dbg !2512

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %d, i64 0, i32 0, !dbg !2513
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2513, !tbaa !1303
  %inc = add i64 %0, 1, !dbg !2513
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2513, !tbaa !1303
  %descr1 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !2514
  %1 = bitcast %struct._object* %descr1 to %struct._object**, !dbg !2515
  store %struct._object* %d, %struct._object** %1, align 8, !dbg !2515, !tbaa !1914
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !2516
  %2 = load i64, i64* %ob_refcnt2, align 8, !dbg !2516, !tbaa !1303
  %inc3 = add i64 %2, 1, !dbg !2516
  store i64 %inc3, i64* %ob_refcnt2, align 8, !dbg !2516, !tbaa !1303
  %self4 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !2517
  %3 = bitcast %struct._typeobject** %self4 to %struct._object**, !dbg !2517
  store %struct._object* %self, %struct._object** %3, align 8, !dbg !2518, !tbaa !1919
  %add.ptr = getelementptr %struct._object, %struct._object* %call, i64 -2, i32 1, !dbg !2519
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2520
  %4 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2520
  %5 = load i64, i64* %4, align 8, !dbg !2520, !tbaa !1282
  %shr.mask = and i64 %5, -2, !dbg !2520
  %cmp5 = icmp eq i64 %shr.mask, -4, !dbg !2520
  br i1 %cmp5, label %do.body.7, label %if.then.6, !dbg !2521

if.then.6:                                        ; preds = %if.then
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !2522
  unreachable, !dbg !2522

do.body.7:                                        ; preds = %if.then
  %and = and i64 %5, 1, !dbg !2523
  %or = or i64 %and, -6, !dbg !2523
  store i64 %or, i64* %4, align 8, !dbg !2523, !tbaa !1282
  %6 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2524, !tbaa !1368
  %7 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !2524
  store i64 %6, i64* %7, align 8, !dbg !2524, !tbaa !1290
  %8 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2524, !tbaa !1368
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !2524
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2524, !tbaa !1291
  %gc_prev15 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !2524
  %10 = bitcast %struct._typeobject** %gc_prev15 to %union._gc_head**, !dbg !2524
  store %union._gc_head* %9, %union._gc_head** %10, align 8, !dbg !2524, !tbaa !1291
  %11 = bitcast %union._gc_head* %9 to %struct._typeobject***, !dbg !2524
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %11, align 8, !dbg !2524, !tbaa !1290
  %12 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2524, !tbaa !1368
  %gc_prev21 = getelementptr inbounds %struct.anon, %struct.anon* %12, i64 0, i32 1, !dbg !2524
  %13 = bitcast %union._gc_head** %gc_prev21 to %struct._typeobject***, !dbg !2524
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %13, align 8, !dbg !2524, !tbaa !1291
  br label %if.end.24, !dbg !2525

if.end.24:                                        ; preds = %entry, %do.body.7
  ret %struct._object* %call, !dbg !2526
}

; Function Attrs: nounwind uwtable
define internal void @property_dealloc(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1045, metadata !1275), !dbg !2527
  %add.ptr = getelementptr %struct._object, %struct._object* %self, i64 -2, i32 1, !dbg !2528
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !2530
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !2530
  %1 = load i64, i64* %0, align 8, !dbg !2530, !tbaa !1282
  %and = and i64 %1, 1, !dbg !2530
  %or = or i64 %and, -4, !dbg !2530
  store i64 %or, i64* %0, align 8, !dbg !2530, !tbaa !1282
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !2533
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !2533
  %3 = load i64, i64* %2, align 8, !dbg !2533, !tbaa !1290
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !2533
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !2533
  %5 = load i64*, i64** %4, align 8, !dbg !2533, !tbaa !1291
  store i64 %3, i64* %5, align 8, !dbg !2533, !tbaa !1290
  %6 = ptrtoint i64* %5 to i64, !dbg !2533
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !2533
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !2533, !tbaa !1290
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !2533
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !2533
  store i64 %6, i64* %9, align 8, !dbg !2533, !tbaa !1291
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !2533, !tbaa !1290
  %prop_get = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !2535
  %10 = bitcast %struct._object* %prop_get to %struct._object**, !dbg !2535
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !2535, !tbaa !2537
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !1049, metadata !1275), !dbg !2535
  %cmp = icmp eq %struct._object* %11, null, !dbg !2539
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !2540

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !1051, metadata !1275), !dbg !2541
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !2543
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2543, !tbaa !1303
  %dec = add i64 %12, -1, !dbg !2543
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2543, !tbaa !1303
  %cmp20 = icmp eq i64 %dec, 0, !dbg !2543
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !2545

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !2546
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2546, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !2546
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2546, !tbaa !1308
  tail call void %14(%struct._object* %11) #2, !dbg !2546
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %prop_set = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !2548
  %15 = bitcast %struct._typeobject** %prop_set to %struct._object**, !dbg !2548
  %16 = load %struct._object*, %struct._object** %15, align 8, !dbg !2548, !tbaa !2550
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !1054, metadata !1275), !dbg !2548
  %cmp29 = icmp eq %struct._object* %16, null, !dbg !2551
  br i1 %cmp29, label %if.end.43, label %do.body.31, !dbg !2552

do.body.31:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !1056, metadata !1275), !dbg !2553
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !2555
  %17 = load i64, i64* %ob_refcnt33, align 8, !dbg !2555, !tbaa !1303
  %dec34 = add i64 %17, -1, !dbg !2555
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !2555, !tbaa !1303
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !2555
  br i1 %cmp35, label %if.else.37, label %if.end.43, !dbg !2557

if.else.37:                                       ; preds = %do.body.31
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !2558
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2558, !tbaa !1307
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !2558
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !2558, !tbaa !1308
  tail call void %19(%struct._object* %16) #2, !dbg !2558
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %do.body.31, %if.end.24
  %prop_del = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, !dbg !2560
  %20 = bitcast %struct._object* %prop_del to %struct._object**, !dbg !2560
  %21 = load %struct._object*, %struct._object** %20, align 8, !dbg !2560, !tbaa !2562
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !1059, metadata !1275), !dbg !2560
  %cmp48 = icmp eq %struct._object* %21, null, !dbg !2563
  br i1 %cmp48, label %if.end.62, label %do.body.50, !dbg !2564

do.body.50:                                       ; preds = %if.end.43
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !1061, metadata !1275), !dbg !2565
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 0, !dbg !2567
  %22 = load i64, i64* %ob_refcnt52, align 8, !dbg !2567, !tbaa !1303
  %dec53 = add i64 %22, -1, !dbg !2567
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !2567, !tbaa !1303
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !2567
  br i1 %cmp54, label %if.else.56, label %if.end.62, !dbg !2569

if.else.56:                                       ; preds = %do.body.50
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 1, !dbg !2570
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !2570, !tbaa !1307
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !2570
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !2570, !tbaa !1308
  tail call void %24(%struct._object* %21) #2, !dbg !2570
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.56, %do.body.50, %if.end.43
  %prop_doc = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !2572
  %25 = bitcast %struct._typeobject** %prop_doc to %struct._object**, !dbg !2572
  %26 = load %struct._object*, %struct._object** %25, align 8, !dbg !2572, !tbaa !2574
  tail call void @llvm.dbg.value(metadata %struct._object* %26, i64 0, metadata !1064, metadata !1275), !dbg !2572
  %cmp67 = icmp eq %struct._object* %26, null, !dbg !2575
  br i1 %cmp67, label %if.end.81, label %do.body.69, !dbg !2576

do.body.69:                                       ; preds = %if.end.62
  tail call void @llvm.dbg.value(metadata %struct._object* %26, i64 0, metadata !1066, metadata !1275), !dbg !2577
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 0, !dbg !2579
  %27 = load i64, i64* %ob_refcnt71, align 8, !dbg !2579, !tbaa !1303
  %dec72 = add i64 %27, -1, !dbg !2579
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !2579, !tbaa !1303
  %cmp73 = icmp eq i64 %dec72, 0, !dbg !2579
  br i1 %cmp73, label %if.else.75, label %if.end.81, !dbg !2581

if.else.75:                                       ; preds = %do.body.69
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 1, !dbg !2582
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !2582, !tbaa !1307
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2582
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !2582, !tbaa !1308
  tail call void %29(%struct._object* %26) #2, !dbg !2582
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.75, %do.body.69, %if.end.62
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !2584
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8, !dbg !2584, !tbaa !1307
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 38, !dbg !2585
  %31 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !2585, !tbaa !2586
  %32 = bitcast %struct._object* %self to i8*, !dbg !2587
  tail call void %31(i8* %32) #2, !dbg !2588
  ret void, !dbg !2589
}

; Function Attrs: nounwind uwtable
define internal i32 @property_traverse(%struct._object* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1071, metadata !1275), !dbg !2590
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !1072, metadata !1275), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !1073, metadata !1275), !dbg !2592
  %prop_get = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !2593
  %0 = bitcast %struct._object* %prop_get to %struct._object**, !dbg !2593
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !2593, !tbaa !2537
  %tobool = icmp eq %struct._object* %1, null, !dbg !2593
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !2595

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !2596
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1075, metadata !1275), !dbg !2596
  %tobool2 = icmp eq i32 %call, 0, !dbg !2598
  br i1 %tobool2, label %do.body.5, label %cleanup.50

do.body.5:                                        ; preds = %entry, %if.then
  %prop_set = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !2600
  %2 = bitcast %struct._typeobject** %prop_set to %struct._object**, !dbg !2600
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !2600, !tbaa !2550
  %tobool6 = icmp eq %struct._object* %3, null, !dbg !2600
  br i1 %tobool6, label %do.body.20, label %if.then.7, !dbg !2602

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %3, i8* %arg) #2, !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !1079, metadata !1275), !dbg !2603
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2605
  br i1 %tobool11, label %do.body.20, label %cleanup.50

do.body.20:                                       ; preds = %do.body.5, %if.then.7
  %prop_del = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, !dbg !2607
  %4 = bitcast %struct._object* %prop_del to %struct._object**, !dbg !2607
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !2607, !tbaa !2562
  %tobool21 = icmp eq %struct._object* %5, null, !dbg !2607
  br i1 %tobool21, label %do.body.35, label %if.then.22, !dbg !2609

if.then.22:                                       ; preds = %do.body.20
  %call25 = tail call i32 %visit(%struct._object* %5, i8* %arg) #2, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 %call25, i64 0, metadata !1083, metadata !1275), !dbg !2610
  %tobool26 = icmp eq i32 %call25, 0, !dbg !2612
  br i1 %tobool26, label %do.body.35, label %cleanup.50

do.body.35:                                       ; preds = %do.body.20, %if.then.22
  %prop_doc = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !2614
  %6 = bitcast %struct._typeobject** %prop_doc to %struct._object**, !dbg !2614
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !2614, !tbaa !2574
  %tobool36 = icmp eq %struct._object* %7, null, !dbg !2614
  br i1 %tobool36, label %do.end.49, label %if.then.37, !dbg !2616

if.then.37:                                       ; preds = %do.body.35
  %call40 = tail call i32 %visit(%struct._object* %7, i8* %arg) #2, !dbg !2617
  tail call void @llvm.dbg.value(metadata i32 %call40, i64 0, metadata !1087, metadata !1275), !dbg !2617
  %tobool41 = icmp eq i32 %call40, 0, !dbg !2619
  br i1 %tobool41, label %do.end.49, label %cleanup.50

do.end.49:                                        ; preds = %do.body.35, %if.then.37
  br label %cleanup.50, !dbg !2621

cleanup.50:                                       ; preds = %if.then, %if.then.7, %if.then.22, %if.then.37, %do.end.49
  %retval.7 = phi i32 [ 0, %do.end.49 ], [ %call40, %if.then.37 ], [ %call25, %if.then.22 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.7, !dbg !2622
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1147, metadata !1275), !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !1148, metadata !1275), !dbg !2624
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !1149, metadata !1275), !dbg !2625
  %cmp = icmp eq %struct._object* %obj, null, !dbg !2626
  %cmp1 = icmp eq %struct._object* %obj, @_Py_NoneStruct, !dbg !2628
  %or.cond = or i1 %cmp, %cmp1, !dbg !2629
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2629

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !2630
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2630, !tbaa !1303
  %inc = add i64 %0, 1, !dbg !2630
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2630, !tbaa !1303
  br label %cleanup, !dbg !2632

if.end:                                           ; preds = %entry
  %prop_get = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !2633
  %1 = bitcast %struct._object* %prop_get to %struct._object**, !dbg !2633
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !2633, !tbaa !2537
  %cmp2 = icmp eq %struct._object* %2, null, !dbg !2635
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2636

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !2637, !tbaa !1368
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0)) #2, !dbg !2639
  br label %cleanup, !dbg !2640

if.end.4:                                         ; preds = %if.end
  %call = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %2, %struct._object* %obj, i8* null) #2, !dbg !2641
  br label %cleanup, !dbg !2642

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ %self, %if.then ], [ null, %if.then.3 ], [ %call, %if.end.4 ]
  ret %struct._object* %retval.0, !dbg !2643
}

; Function Attrs: nounwind uwtable
define internal i32 @property_descr_set(%struct._object* nocapture readonly %self, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1153, metadata !1275), !dbg !2644
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !1154, metadata !1275), !dbg !2645
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !1155, metadata !1275), !dbg !2646
  %cmp = icmp eq %struct._object* %value, null, !dbg !2647
  %prop_del = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, !dbg !2649
  %0 = bitcast %struct._object* %prop_del to %struct._object**, !dbg !2649
  %prop_set = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !2650
  %1 = bitcast %struct._typeobject** %prop_set to %struct._object**, !dbg !2650
  %func.0.in = select i1 %cmp, %struct._object** %0, %struct._object** %1, !dbg !2651
  %func.0 = load %struct._object*, %struct._object** %func.0.in, align 8, !dbg !2649
  %cmp1 = icmp eq %struct._object* %func.0, null, !dbg !2652
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !2654

if.then.2:                                        ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !2655, !tbaa !1368
  %cond = select i1 %cmp, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0), !dbg !2657
  tail call void @PyErr_SetString(%struct._object* %2, i8* %cond) #2, !dbg !2658
  br label %cleanup, !dbg !2659

if.end.4:                                         ; preds = %entry
  br i1 %cmp, label %if.then.6, label %if.else.7, !dbg !2660

if.then.6:                                        ; preds = %if.end.4
  %call = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %func.0, %struct._object* %obj, i8* null) #2, !dbg !2661
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1158, metadata !1275), !dbg !2663
  br label %if.end.9, !dbg !2664

if.else.7:                                        ; preds = %if.end.4
  %call8 = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %func.0, %struct._object* %obj, %struct._object* %value, i8* null) #2, !dbg !2665
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !1158, metadata !1275), !dbg !2663
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  %res.0 = phi %struct._object* [ %call, %if.then.6 ], [ %call8, %if.else.7 ]
  %cmp10 = icmp eq %struct._object* %res.0, null, !dbg !2666
  br i1 %cmp10, label %cleanup, label %do.body, !dbg !2668

do.body:                                          ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %res.0, i64 0, metadata !1159, metadata !1275), !dbg !2669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %res.0, i64 0, i32 0, !dbg !2671
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2671, !tbaa !1303
  %dec = add i64 %3, -1, !dbg !2671
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2671, !tbaa !1303
  %cmp13 = icmp eq i64 %dec, 0, !dbg !2671
  br i1 %cmp13, label %if.else.15, label %cleanup, !dbg !2673

if.else.15:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %res.0, i64 0, i32 1, !dbg !2674
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2674, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2674
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2674, !tbaa !1308
  tail call void %5(%struct._object* %res.0) #2, !dbg !2674
  br label %cleanup

cleanup:                                          ; preds = %if.else.15, %do.body, %if.end.9, %if.then.2
  %retval.0 = phi i32 [ -1, %if.then.2 ], [ -1, %if.end.9 ], [ 0, %do.body ], [ 0, %if.else.15 ]
  ret i32 %retval.0, !dbg !2676
}

; Function Attrs: nounwind uwtable
define internal i32 @property_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %get = alloca %struct._object*, align 8
  %set = alloca %struct._object*, align 8
  %del = alloca %struct._object*, align 8
  %doc = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1163, metadata !1275), !dbg !2677
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1164, metadata !1275), !dbg !2678
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !1165, metadata !1275), !dbg !2679
  %0 = bitcast %struct._object** %get to i8*, !dbg !2680
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1166, metadata !1275), !dbg !2681
  store %struct._object* null, %struct._object** %get, align 8, !dbg !2681, !tbaa !1368
  %1 = bitcast %struct._object** %set to i8*, !dbg !2680
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1167, metadata !1275), !dbg !2682
  store %struct._object* null, %struct._object** %set, align 8, !dbg !2682, !tbaa !1368
  %2 = bitcast %struct._object** %del to i8*, !dbg !2680
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1168, metadata !1275), !dbg !2683
  store %struct._object* null, %struct._object** %del, align 8, !dbg !2683, !tbaa !1368
  %3 = bitcast %struct._object** %doc to i8*, !dbg !2680
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1169, metadata !1275), !dbg !2684
  store %struct._object* null, %struct._object** %doc, align 8, !dbg !2684, !tbaa !1368
  tail call void @llvm.dbg.value(metadata %struct._object** %get, i64 0, metadata !1166, metadata !1275), !dbg !2681
  tail call void @llvm.dbg.value(metadata %struct._object** %set, i64 0, metadata !1167, metadata !1275), !dbg !2682
  tail call void @llvm.dbg.value(metadata %struct._object** %del, i64 0, metadata !1168, metadata !1275), !dbg !2683
  tail call void @llvm.dbg.value(metadata %struct._object** %doc, i64 0, metadata !1169, metadata !1275), !dbg !2684
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @property_init.kwlist, i64 0, i64 0), %struct._object** nonnull %get, %struct._object** nonnull %set, %struct._object** nonnull %del, %struct._object** nonnull %doc) #2, !dbg !2685
  %tobool = icmp eq i32 %call, 0, !dbg !2685
  br i1 %tobool, label %cleanup.94, label %if.end, !dbg !2687

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %get, i64 0, metadata !1166, metadata !1275), !dbg !2681
  %4 = load %struct._object*, %struct._object** %get, align 8, !dbg !2688, !tbaa !1368
  %cmp = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !2690
  %5 = ptrtoint %struct._object* %4 to i64, !dbg !2691
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !2691

if.then.1:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1166, metadata !1275), !dbg !2681
  store %struct._object* null, %struct._object** %get, align 8, !dbg !2692, !tbaa !1368
  br label %if.end.2, !dbg !2693

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = phi i64 [ 0, %if.then.1 ], [ %5, %if.end ], !dbg !2694
  %7 = phi %struct._object* [ null, %if.then.1 ], [ %4, %if.end ], !dbg !2695
  call void @llvm.dbg.value(metadata %struct._object** %set, i64 0, metadata !1167, metadata !1275), !dbg !2682
  %8 = load %struct._object*, %struct._object** %set, align 8, !dbg !2697, !tbaa !1368
  %cmp3 = icmp eq %struct._object* %8, @_Py_NoneStruct, !dbg !2699
  %9 = ptrtoint %struct._object* %8 to i64, !dbg !2700
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2700

if.then.4:                                        ; preds = %if.end.2
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1167, metadata !1275), !dbg !2682
  store %struct._object* null, %struct._object** %set, align 8, !dbg !2701, !tbaa !1368
  br label %if.end.5, !dbg !2702

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %10 = phi i64 [ 0, %if.then.4 ], [ %9, %if.end.2 ], !dbg !2703
  %11 = phi %struct._object* [ null, %if.then.4 ], [ %8, %if.end.2 ], !dbg !2704
  call void @llvm.dbg.value(metadata %struct._object** %del, i64 0, metadata !1168, metadata !1275), !dbg !2683
  %12 = load %struct._object*, %struct._object** %del, align 8, !dbg !2706, !tbaa !1368
  %cmp6 = icmp eq %struct._object* %12, @_Py_NoneStruct, !dbg !2708
  %13 = ptrtoint %struct._object* %12 to i64, !dbg !2709
  br i1 %cmp6, label %if.then.7, label %do.body, !dbg !2709

if.then.7:                                        ; preds = %if.end.5
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1168, metadata !1275), !dbg !2683
  store %struct._object* null, %struct._object** %del, align 8, !dbg !2710, !tbaa !1368
  br label %do.body, !dbg !2711

do.body:                                          ; preds = %if.end.5, %if.then.7
  %14 = phi i64 [ %13, %if.end.5 ], [ 0, %if.then.7 ], !dbg !2712
  %15 = phi %struct._object* [ %12, %if.end.5 ], [ null, %if.then.7 ], !dbg !2713
  call void @llvm.dbg.value(metadata %struct._object** %get, i64 0, metadata !1166, metadata !1275), !dbg !2681
  call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !1171, metadata !1275), !dbg !2695
  %cmp9 = icmp eq %struct._object* %7, null, !dbg !2715
  br i1 %cmp9, label %if.end.11, label %if.then.10, !dbg !2717

if.then.10:                                       ; preds = %do.body
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !2718
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2718, !tbaa !1303
  %inc = add i64 %16, 1, !dbg !2718
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2718, !tbaa !1303
  br label %if.end.11, !dbg !2718

if.end.11:                                        ; preds = %do.body, %if.then.10
  call void @llvm.dbg.value(metadata %struct._object** %set, i64 0, metadata !1167, metadata !1275), !dbg !2682
  call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !1173, metadata !1275), !dbg !2704
  %cmp14 = icmp eq %struct._object* %11, null, !dbg !2720
  br i1 %cmp14, label %if.end.18, label %if.then.15, !dbg !2722

if.then.15:                                       ; preds = %if.end.11
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !2723
  %17 = load i64, i64* %ob_refcnt16, align 8, !dbg !2723, !tbaa !1303
  %inc17 = add i64 %17, 1, !dbg !2723
  store i64 %inc17, i64* %ob_refcnt16, align 8, !dbg !2723, !tbaa !1303
  br label %if.end.18, !dbg !2723

if.end.18:                                        ; preds = %if.end.11, %if.then.15
  call void @llvm.dbg.value(metadata %struct._object** %del, i64 0, metadata !1168, metadata !1275), !dbg !2683
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !1175, metadata !1275), !dbg !2713
  %cmp23 = icmp eq %struct._object* %15, null, !dbg !2725
  br i1 %cmp23, label %if.end.27, label %if.then.24, !dbg !2727

if.then.24:                                       ; preds = %if.end.18
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !2728
  %18 = load i64, i64* %ob_refcnt25, align 8, !dbg !2728, !tbaa !1303
  %inc26 = add i64 %18, 1, !dbg !2728
  store i64 %inc26, i64* %ob_refcnt25, align 8, !dbg !2728, !tbaa !1303
  br label %if.end.27, !dbg !2728

if.end.27:                                        ; preds = %if.end.18, %if.then.24
  call void @llvm.dbg.value(metadata %struct._object** %doc, i64 0, metadata !1169, metadata !1275), !dbg !2684
  %19 = load %struct._object*, %struct._object** %doc, align 8, !dbg !2730, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !1177, metadata !1275), !dbg !2731
  %cmp32 = icmp eq %struct._object* %19, null, !dbg !2733
  %20 = ptrtoint %struct._object* %19 to i64, !dbg !2735
  br i1 %cmp32, label %if.end.36, label %if.then.33, !dbg !2736

if.then.33:                                       ; preds = %if.end.27
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !2737
  %21 = load i64, i64* %ob_refcnt34, align 8, !dbg !2737, !tbaa !1303
  %inc35 = add i64 %21, 1, !dbg !2737
  store i64 %inc35, i64* %ob_refcnt34, align 8, !dbg !2737, !tbaa !1303
  br label %if.end.36, !dbg !2737

if.end.36:                                        ; preds = %if.end.27, %if.then.33
  call void @llvm.dbg.value(metadata %struct._object** %get, i64 0, metadata !1166, metadata !1275), !dbg !2681
  %22 = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 0, !dbg !2739
  store i64 %6, i64* %22, align 8, !dbg !2739, !tbaa !2537
  call void @llvm.dbg.value(metadata %struct._object** %set, i64 0, metadata !1167, metadata !1275), !dbg !2682
  %prop_set = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !2740
  %23 = bitcast %struct._typeobject** %prop_set to i64*, !dbg !2741
  store i64 %10, i64* %23, align 8, !dbg !2741, !tbaa !2550
  call void @llvm.dbg.value(metadata %struct._object** %del, i64 0, metadata !1168, metadata !1275), !dbg !2683
  %24 = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 0, !dbg !2742
  store i64 %14, i64* %24, align 8, !dbg !2742, !tbaa !2562
  call void @llvm.dbg.value(metadata %struct._object** %doc, i64 0, metadata !1169, metadata !1275), !dbg !2684
  %prop_doc = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !2743
  %25 = bitcast %struct._typeobject** %prop_doc to %struct._object**, !dbg !2743
  %26 = bitcast %struct._typeobject** %prop_doc to i64*, !dbg !2744
  store i64 %20, i64* %26, align 8, !dbg !2744, !tbaa !2574
  %getter_doc = getelementptr inbounds %struct._object, %struct._object* %self, i64 3, !dbg !2745
  %27 = bitcast %struct._object* %getter_doc to i32*, !dbg !2745
  store i32 0, i32* %27, align 4, !dbg !2746, !tbaa !2747
  call void @llvm.dbg.value(metadata %struct._object** %doc, i64 0, metadata !1169, metadata !1275), !dbg !2684
  %cmp40 = icmp eq %struct._object* %19, @_Py_NoneStruct, !dbg !2748
  %or.cond = or i1 %cmp32, %cmp40, !dbg !2749
  call void @llvm.dbg.value(metadata %struct._object** %get, i64 0, metadata !1166, metadata !1275), !dbg !2681
  %28 = load %struct._object*, %struct._object** %get, align 8
  %cmp41 = icmp ne %struct._object* %28, null, !dbg !2750
  %or.cond100 = and i1 %or.cond, %cmp41, !dbg !2749
  br i1 %or.cond100, label %if.then.42, label %cleanup.94, !dbg !2749

if.then.42:                                       ; preds = %if.end.36
  %call43 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %28, %struct._Py_Identifier* nonnull @property_init.PyId___doc__) #2, !dbg !2751
  call void @llvm.dbg.value(metadata %struct._object* %call43, i64 0, metadata !1179, metadata !1275), !dbg !2752
  %tobool44 = icmp eq %struct._object* %call43, null, !dbg !2753
  br i1 %tobool44, label %if.else.83, label %if.then.45, !dbg !2754

if.then.45:                                       ; preds = %if.then.42
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !2755
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2755, !tbaa !1307
  %cmp46 = icmp eq %struct._typeobject* %29, @PyProperty_Type, !dbg !2756
  br i1 %cmp46, label %do.body.48, label %if.else.64, !dbg !2757

do.body.48:                                       ; preds = %if.then.45
  %30 = load %struct._object*, %struct._object** %25, align 8, !dbg !2758, !tbaa !2574
  call void @llvm.dbg.value(metadata %struct._object* %30, i64 0, metadata !1182, metadata !1275), !dbg !2758
  %cmp50 = icmp eq %struct._object* %30, null, !dbg !2760
  br i1 %cmp50, label %if.end.60, label %do.body.52, !dbg !2761

do.body.52:                                       ; preds = %do.body.48
  call void @llvm.dbg.value(metadata %struct._object* %30, i64 0, metadata !1188, metadata !1275), !dbg !2762
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 0, !dbg !2764
  %31 = load i64, i64* %ob_refcnt53, align 8, !dbg !2764, !tbaa !1303
  %dec = add i64 %31, -1, !dbg !2764
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !2764, !tbaa !1303
  %cmp54 = icmp eq i64 %dec, 0, !dbg !2764
  br i1 %cmp54, label %if.else, label %if.end.60, !dbg !2766

if.else:                                          ; preds = %do.body.52
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 1, !dbg !2767
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !2767, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !2767
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2767, !tbaa !1308
  call void %33(%struct._object* %30) #2, !dbg !2767
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %do.body.52, %do.body.48
  store %struct._object* %call43, %struct._object** %25, align 8, !dbg !2769, !tbaa !2574
  br label %if.end.81, !dbg !2770

if.else.64:                                       ; preds = %if.then.45
  %call65 = call i32 @_PyObject_SetAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @property_init.PyId___doc__, %struct._object* %call43) #2, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %call65, i64 0, metadata !1191, metadata !1275), !dbg !2772
  call void @llvm.dbg.value(metadata %struct._object* %call43, i64 0, metadata !1193, metadata !1275), !dbg !2773
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %call43, i64 0, i32 0, !dbg !2775
  %34 = load i64, i64* %ob_refcnt68, align 8, !dbg !2775, !tbaa !1303
  %dec69 = add i64 %34, -1, !dbg !2775
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !2775, !tbaa !1303
  %cmp70 = icmp eq i64 %dec69, 0, !dbg !2775
  br i1 %cmp70, label %if.else.72, label %if.end.75, !dbg !2777

if.else.72:                                       ; preds = %if.else.64
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %call43, i64 0, i32 1, !dbg !2778
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8, !dbg !2778, !tbaa !1307
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !2778
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8, !dbg !2778, !tbaa !1308
  call void %36(%struct._object* %call43) #2, !dbg !2778
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.64, %if.else.72
  %cond99 = icmp sgt i32 %call65, -1
  br i1 %cond99, label %if.end.81, label %cleanup.94

if.end.81:                                        ; preds = %if.end.75, %if.end.60
  store i32 1, i32* %27, align 4, !dbg !2780, !tbaa !2747
  br label %cleanup.94, !dbg !2781

if.else.83:                                       ; preds = %if.then.42
  %37 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !2782, !tbaa !1368
  %call84 = call i32 @PyErr_ExceptionMatches(%struct._object* %37) #2, !dbg !2784
  %tobool85 = icmp eq i32 %call84, 0, !dbg !2784
  br i1 %tobool85, label %cleanup.94, label %if.then.86, !dbg !2785

if.then.86:                                       ; preds = %if.else.83
  call void @PyErr_Clear() #2, !dbg !2786
  br label %cleanup.94

cleanup.94:                                       ; preds = %if.else.83, %if.end.75, %if.end.81, %if.then.86, %if.end.36, %entry
  %retval.4 = phi i32 [ -1, %entry ], [ 0, %if.end.36 ], [ 0, %if.then.86 ], [ 0, %if.end.81 ], [ -1, %if.end.75 ], [ -1, %if.else.83 ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2788
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2788
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2788
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2788
  ret i32 %retval.4, !dbg !2788
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @_PyObject_RealIsSubclass(%struct._object*, %struct._object*) #1

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_reduce(%struct.PyDescrObject* nocapture readonly %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %descr, i64 0, metadata !644, metadata !1275), !dbg !2789
  %call = tail call %struct._object* @PyEval_GetBuiltins() #2, !dbg !2790
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !645, metadata !1275), !dbg !2791
  %call1 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %call, %struct._Py_Identifier* nonnull @descr_reduce.PyId_getattr) #2, !dbg !2792
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !646, metadata !1275), !dbg !2793
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 1, !dbg !2794
  %0 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !2794, !tbaa !1294
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 2, !dbg !2795
  %1 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !2795, !tbaa !1314
  %call2 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), %struct._object* %call1, %struct._typeobject* %0, %struct._object* %1) #2, !dbg !2796
  ret %struct._object* %call2, !dbg !2797
}

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_doc(%struct.PyMethodDescrObject* nocapture readonly %descr, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !651, metadata !1275), !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !652, metadata !1275), !dbg !2799
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 1, !dbg !2800
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !2800, !tbaa !1405
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 0, !dbg !2801
  %1 = load i8*, i8** %ml_name, align 8, !dbg !2801, !tbaa !2014
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 3, !dbg !2802
  %2 = load i8*, i8** %ml_doc, align 8, !dbg !2802, !tbaa !2803
  %call = tail call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %1, i8* %2) #2, !dbg !2804
  ret %struct._object* %call, !dbg !2805
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_get_qualname(%struct.PyDescrObject* nocapture %descr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %descr, i64 0, metadata !655, metadata !1275), !dbg !2806
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 3, !dbg !2807
  %0 = load %struct._object*, %struct._object** %d_qualname, align 8, !dbg !2807, !tbaa !1326
  %cmp = icmp eq %struct._object* %0, null, !dbg !2809
  br i1 %cmp, label %if.then, label %if.then.4, !dbg !2810

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.PyDescrObject* %descr, i64 0, metadata !660, metadata !1275) #2, !dbg !2811
  %d_name.i = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 2, !dbg !2813
  %1 = load %struct._object*, %struct._object** %d_name.i, align 8, !dbg !2813, !tbaa !1314
  %cmp.i = icmp eq %struct._object* %1, null, !dbg !2815
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !2816

lor.lhs.false.i:                                  ; preds = %if.then
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !2817
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2817, !tbaa !1307
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !2817
  %3 = load i64, i64* %tp_flags.i, align 8, !dbg !2817, !tbaa !1349
  %and.i = and i64 %3, 268435456, !dbg !2817
  %cmp2.i = icmp eq i64 %and.i, 0, !dbg !2817
  br i1 %cmp2.i, label %if.then.i, label %if.end.i, !dbg !2819

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2820, !tbaa !1368
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0)) #2, !dbg !2822
  br label %do.body.thread14, !dbg !2823

if.end.i:                                         ; preds = %lor.lhs.false.i
  %d_type.i = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %descr, i64 0, i32 1, !dbg !2824
  %5 = bitcast %struct._typeobject** %d_type.i to %struct._object**, !dbg !2824
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !2824, !tbaa !1294
  %call.i = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %6, %struct._Py_Identifier* nonnull @calculate_qualname.PyId___qualname__) #2, !dbg !2825
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !661, metadata !1275) #2, !dbg !2826
  %cmp3.i = icmp eq %struct._object* %call.i, null, !dbg !2827
  br i1 %cmp3.i, label %do.body.thread14, label %if.end.5.i, !dbg !2829

if.end.5.i:                                       ; preds = %if.end.i
  %ob_type6.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2830
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6.i, align 8, !dbg !2830, !tbaa !1307
  %tp_flags7.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !2830
  %8 = load i64, i64* %tp_flags7.i, align 8, !dbg !2830, !tbaa !1349
  %and8.i = and i64 %8, 268435456, !dbg !2830
  %cmp9.i = icmp eq i64 %and8.i, 0, !dbg !2830
  br i1 %cmp9.i, label %do.body.13.i, label %if.end.21.i, !dbg !2831

do.body.13.i:                                     ; preds = %if.end.5.i
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2832, !tbaa !1368
  tail call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i64 0, i64 0)) #2, !dbg !2833
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !663, metadata !1275) #2, !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !667, metadata !1275) #2, !dbg !2836
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2838
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2838, !tbaa !1303
  %dec.i = add i64 %10, -1, !dbg !2838
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2838, !tbaa !1303
  %cmp14.i = icmp eq i64 %dec.i, 0, !dbg !2838
  br i1 %cmp14.i, label %if.else.i, label %do.body.thread14, !dbg !2840

if.else.i:                                        ; preds = %do.body.13.i
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6.i, align 8, !dbg !2841, !tbaa !1307
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2841
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2841, !tbaa !1308
  tail call void %12(%struct._object* %call.i) #2, !dbg !2841
  br label %do.body.thread14, !dbg !2843

if.end.21.i:                                      ; preds = %if.end.5.i
  %13 = load %struct._object*, %struct._object** %d_name.i, align 8, !dbg !2844, !tbaa !1314
  %call23.i = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %struct._object* %call.i, %struct._object* %13) #2, !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct._object* %call23.i, i64 0, metadata !662, metadata !1275) #2, !dbg !2846
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !670, metadata !1275) #2, !dbg !2847
  %ob_refcnt26.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2849
  %14 = load i64, i64* %ob_refcnt26.i, align 8, !dbg !2849, !tbaa !1303
  %dec27.i = add i64 %14, -1, !dbg !2849
  store i64 %dec27.i, i64* %ob_refcnt26.i, align 8, !dbg !2849, !tbaa !1303
  %cmp28.i = icmp eq i64 %dec27.i, 0, !dbg !2849
  br i1 %cmp28.i, label %if.else.30.i, label %do.body, !dbg !2851

if.else.30.i:                                     ; preds = %if.end.21.i
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type6.i, align 8, !dbg !2852, !tbaa !1307
  %tp_dealloc32.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2852
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32.i, align 8, !dbg !2852, !tbaa !1308
  tail call void %16(%struct._object* %call.i) #2, !dbg !2852
  br label %do.body, !dbg !2843

do.body.thread14:                                 ; preds = %if.then.i, %if.end.i, %if.else.i, %do.body.13.i
  store %struct._object* null, %struct._object** %d_qualname, align 8, !dbg !2854, !tbaa !1326
  tail call void @llvm.dbg.value(metadata %struct._object* %call23.i, i64 0, metadata !656, metadata !1275), !dbg !2855
  br label %if.end.5, !dbg !2857

do.body:                                          ; preds = %if.else.30.i, %if.end.21.i
  store %struct._object* %call23.i, %struct._object** %d_qualname, align 8, !dbg !2854, !tbaa !1326
  tail call void @llvm.dbg.value(metadata %struct._object* %call23.i, i64 0, metadata !656, metadata !1275), !dbg !2855
  %cmp3 = icmp eq %struct._object* %call23.i, null, !dbg !2858
  br i1 %cmp3, label %if.end.5, label %if.then.4, !dbg !2857

if.then.4:                                        ; preds = %entry, %do.body
  %17 = phi %struct._object* [ %call23.i, %do.body ], [ %0, %entry ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !2860
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !2860, !tbaa !1303
  %inc = add i64 %18, 1, !dbg !2860
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2860, !tbaa !1303
  br label %if.end.5, !dbg !2860

if.end.5:                                         ; preds = %do.body.thread14, %do.body, %if.then.4
  %19 = phi %struct._object* [ null, %do.body.thread14 ], [ null, %do.body ], [ %17, %if.then.4 ], !dbg !2862
  ret %struct._object* %19, !dbg !2863
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_text_signature(%struct.PyMethodDescrObject* nocapture readonly %descr, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDescrObject* %descr, i64 0, metadata !674, metadata !1275), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !675, metadata !1275), !dbg !2865
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %descr, i64 0, i32 1, !dbg !2866
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !2866, !tbaa !1405
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 0, !dbg !2867
  %1 = load i8*, i8** %ml_name, align 8, !dbg !2867, !tbaa !2014
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 3, !dbg !2868
  %2 = load i8*, i8** %ml_doc, align 8, !dbg !2868, !tbaa !2803
  %call = tail call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %1, i8* %2) #2, !dbg !2869
  ret %struct._object* %call, !dbg !2870
}

declare %struct._object* @_PyType_GetDocFromInternalDoc(i8*, i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8*, i8*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_get_doc(%struct.PyMemberDescrObject* nocapture readonly %descr, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMemberDescrObject* %descr, i64 0, metadata !721, metadata !1275), !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !722, metadata !1275), !dbg !2872
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %descr, i64 0, i32 1, !dbg !2873
  %0 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8, !dbg !2873, !tbaa !1405
  %doc = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %0, i64 0, i32 4, !dbg !2875
  %1 = load i8*, i8** %doc, align 8, !dbg !2875, !tbaa !2876
  %cmp = icmp eq i8* %1, null, !dbg !2877
  br i1 %cmp, label %if.then, label %if.end, !dbg !2878

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2879, !tbaa !1303
  %inc = add i64 %2, 1, !dbg !2879
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2879, !tbaa !1303
  br label %return, !dbg !2881

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %1) #2, !dbg !2882
  br label %return, !dbg !2883

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !2884
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyMember_GetOne(i8*, %struct.PyMemberDef*) #1

declare i32 @PyMember_SetOne(i8*, %struct.PyMemberDef*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_get_doc(%struct.PyGetSetDescrObject* nocapture readonly %descr, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGetSetDescrObject* %descr, i64 0, metadata !757, metadata !1275), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !758, metadata !1275), !dbg !2886
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %descr, i64 0, i32 1, !dbg !2887
  %0 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8, !dbg !2887, !tbaa !1405
  %doc = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %0, i64 0, i32 3, !dbg !2889
  %1 = load i8*, i8** %doc, align 8, !dbg !2889, !tbaa !2890
  %cmp = icmp eq i8* %1, null, !dbg !2891
  br i1 %cmp, label %if.then, label %if.end, !dbg !2892

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2893, !tbaa !1303
  %inc = add i64 %2, 1, !dbg !2893
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2893, !tbaa !1303
  br label %return, !dbg !2895

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %1) #2, !dbg !2896
  br label %return, !dbg !2897

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !2898
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get_doc(%struct.PyWrapperDescrObject* nocapture readonly %descr, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %descr, i64 0, metadata !803, metadata !1275), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !804, metadata !1275), !dbg !2900
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 1, !dbg !2901
  %0 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2901, !tbaa !2198
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %0, i64 0, i32 0, !dbg !2902
  %1 = load i8*, i8** %name, align 8, !dbg !2902, !tbaa !2166
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %0, i64 0, i32 4, !dbg !2903
  %2 = load i8*, i8** %doc, align 8, !dbg !2903, !tbaa !2904
  %call = tail call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %1, i8* %2) #2, !dbg !2905
  ret %struct._object* %call, !dbg !2906
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get_text_signature(%struct.PyWrapperDescrObject* nocapture readonly %descr, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyWrapperDescrObject* %descr, i64 0, metadata !807, metadata !1275), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !808, metadata !1275), !dbg !2908
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %descr, i64 0, i32 1, !dbg !2909
  %0 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2909, !tbaa !2198
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %0, i64 0, i32 0, !dbg !2910
  %1 = load i8*, i8** %name, align 8, !dbg !2910, !tbaa !2166
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %0, i64 0, i32 4, !dbg !2911
  %2 = load i8*, i8** %doc, align 8, !dbg !2911, !tbaa !2904
  %call = tail call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %1, i8* %2) #2, !dbg !2912
  ret %struct._object* %call, !dbg !2913
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_contains(%struct.mappingproxyobject* nocapture readonly %pp, %struct._object* %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !849, metadata !1275), !dbg !2914
  tail call void @llvm.dbg.value(metadata %struct._object* %key, i64 0, metadata !850, metadata !1275), !dbg !2915
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2916
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2916, !tbaa !2216
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !2916
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2916, !tbaa !1307
  %cmp = icmp eq %struct._typeobject* %1, @PyDict_Type, !dbg !2916
  br i1 %cmp, label %if.then, label %if.else, !dbg !2918

if.then:                                          ; preds = %entry
  %call = tail call i32 @PyDict_Contains(%struct._object* %0, %struct._object* %key) #2, !dbg !2919
  br label %return, !dbg !2920

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @PySequence_Contains(%struct._object* %0, %struct._object* %key) #2, !dbg !2921
  br label %return, !dbg !2922

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0, !dbg !2923
}

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @mappingproxy_len(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !855, metadata !1275), !dbg !2924
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2925
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2925, !tbaa !2216
  %call = tail call i64 @PyObject_Size(%struct._object* %0) #2, !dbg !2926
  ret i64 %call, !dbg !2927
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_getitem(%struct.mappingproxyobject* nocapture readonly %pp, %struct._object* %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !860, metadata !1275), !dbg !2928
  tail call void @llvm.dbg.value(metadata %struct._object* %key, i64 0, metadata !861, metadata !1275), !dbg !2929
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2930
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2930, !tbaa !2216
  %call = tail call %struct._object* @PyObject_GetItem(%struct._object* %0, %struct._object* %key) #2, !dbg !2931
  ret %struct._object* %call, !dbg !2932
}

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_get(%struct.mappingproxyobject* nocapture readonly %pp, %struct._object* %args) #0 {
entry:
  %key = alloca %struct._object*, align 8
  %def = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !887, metadata !1275), !dbg !2933
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !888, metadata !1275), !dbg !2934
  %0 = bitcast %struct._object** %key to i8*, !dbg !2935
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2935
  %1 = bitcast %struct._object** %def to i8*, !dbg !2935
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2935
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !890, metadata !1275), !dbg !2936
  store %struct._object* @_Py_NoneStruct, %struct._object** %def, align 8, !dbg !2936, !tbaa !1368
  tail call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !889, metadata !1275), !dbg !2937
  tail call void @llvm.dbg.value(metadata %struct._object** %def, i64 0, metadata !890, metadata !1275), !dbg !2936
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 1, i64 2, %struct._object** nonnull %key, %struct._object** nonnull %def) #2, !dbg !2938
  %tobool = icmp eq i32 %call, 0, !dbg !2938
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2940

if.end:                                           ; preds = %entry
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2941
  %2 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2941, !tbaa !2216
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !889, metadata !1275), !dbg !2937
  %3 = load %struct._object*, %struct._object** %key, align 8, !dbg !2942, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct._object** %def, i64 0, metadata !890, metadata !1275), !dbg !2936
  %4 = load %struct._object*, %struct._object** %def, align 8, !dbg !2943, !tbaa !1368
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* nonnull @mappingproxy_get.PyId_get, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._object* %3, %struct._object* %4) #2, !dbg !2944
  br label %cleanup, !dbg !2945

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2946
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2946
  ret %struct._object* %retval.0, !dbg !2946
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_keys(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !893, metadata !1275), !dbg !2947
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2948
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2948, !tbaa !2216
  %call = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* nonnull @mappingproxy_keys.PyId_keys, i8* null) #2, !dbg !2949
  ret %struct._object* %call, !dbg !2950
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_values(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !896, metadata !1275), !dbg !2951
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2952
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2952, !tbaa !2216
  %call = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* nonnull @mappingproxy_values.PyId_values, i8* null) #2, !dbg !2953
  ret %struct._object* %call, !dbg !2954
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_items(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !899, metadata !1275), !dbg !2955
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2956
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2956, !tbaa !2216
  %call = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* nonnull @mappingproxy_items.PyId_items, i8* null) #2, !dbg !2957
  ret %struct._object* %call, !dbg !2958
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_copy(%struct.mappingproxyobject* nocapture readonly %pp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.mappingproxyobject* %pp, i64 0, metadata !902, metadata !1275), !dbg !2959
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %pp, i64 0, i32 1, !dbg !2960
  %0 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2960, !tbaa !2216
  %call = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* nonnull @mappingproxy_copy.PyId_copy, i8* null) #2, !dbg !2961
  ret %struct._object* %call, !dbg !2962
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i32 @PyMapping_Check(%struct._object*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

declare i64 @_Py_HashPointer(i8*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i64 @PyDict_Size(%struct._object*) #1

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_reduce(%struct.wrapperobject* nocapture readonly %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !1019, metadata !1275), !dbg !2963
  %call = tail call %struct._object* @PyEval_GetBuiltins() #2, !dbg !2964
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1020, metadata !1275), !dbg !2965
  %call1 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %call, %struct._Py_Identifier* nonnull @wrapper_reduce.PyId_getattr) #2, !dbg !2966
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !1021, metadata !1275), !dbg !2967
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 2, !dbg !2968
  %0 = load %struct._object*, %struct._object** %self, align 8, !dbg !2968, !tbaa !1919
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2969
  %1 = bitcast %struct.PyWrapperDescrObject** %descr to %struct.PyDescrObject**, !dbg !2969
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %1, align 8, !dbg !2969, !tbaa !1914
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i64 0, i32 2, !dbg !2969
  %3 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !2969, !tbaa !1314
  %call2 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), %struct._object* %call1, %struct._object* %0, %struct._object* %3) #2, !dbg !2970
  ret %struct._object* %call2, !dbg !2971
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_objclass(%struct.wrapperobject* nocapture readonly %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !1024, metadata !1275), !dbg !2972
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2973
  %0 = bitcast %struct.PyWrapperDescrObject** %descr to %struct.PyDescrObject**, !dbg !2973
  %1 = load %struct.PyDescrObject*, %struct.PyDescrObject** %0, align 8, !dbg !2973, !tbaa !1914
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %1, i64 0, i32 1, !dbg !2973
  %2 = bitcast %struct._typeobject** %d_type to %struct._object**, !dbg !2973
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !2973, !tbaa !1294
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !1025, metadata !1275), !dbg !2974
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !2975
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2975, !tbaa !1303
  %inc = add i64 %4, 1, !dbg !2975
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2975, !tbaa !1303
  ret %struct._object* %3, !dbg !2976
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_name(%struct.wrapperobject* nocapture readonly %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !1028, metadata !1275), !dbg !2977
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2978
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2978, !tbaa !1914
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i64 0, i32 1, !dbg !2979
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2979, !tbaa !2198
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 0, !dbg !2980
  %2 = load i8*, i8** %name, align 8, !dbg !2980, !tbaa !2166
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1029, metadata !1275), !dbg !2981
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %2) #2, !dbg !2982
  ret %struct._object* %call, !dbg !2983
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_qualname(%struct.wrapperobject* nocapture readonly %wp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !1032, metadata !1275), !dbg !2984
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2985
  %0 = bitcast %struct.PyWrapperDescrObject** %descr to %struct.PyDescrObject**, !dbg !2985
  %1 = load %struct.PyDescrObject*, %struct.PyDescrObject** %0, align 8, !dbg !2985, !tbaa !1914
  %call = tail call %struct._object* @descr_get_qualname(%struct.PyDescrObject* %1), !dbg !2986
  ret %struct._object* %call, !dbg !2987
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_doc(%struct.wrapperobject* nocapture readonly %wp, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !1037, metadata !1275), !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !1038, metadata !1275), !dbg !2989
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2990
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2990, !tbaa !1914
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i64 0, i32 1, !dbg !2991
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2991, !tbaa !2198
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 0, !dbg !2992
  %2 = load i8*, i8** %name, align 8, !dbg !2992, !tbaa !2166
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 4, !dbg !2993
  %3 = load i8*, i8** %doc, align 8, !dbg !2993, !tbaa !2904
  %call = tail call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %3) #2, !dbg !2994
  ret %struct._object* %call, !dbg !2995
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_text_signature(%struct.wrapperobject* nocapture readonly %wp, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.wrapperobject* %wp, i64 0, metadata !1041, metadata !1275), !dbg !2996
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !1042, metadata !1275), !dbg !2997
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %wp, i64 0, i32 1, !dbg !2998
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2998, !tbaa !1914
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i64 0, i32 1, !dbg !2999
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2999, !tbaa !2198
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 0, !dbg !3000
  %2 = load i8*, i8** %name, align 8, !dbg !3000, !tbaa !2166
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i64 0, i32 4, !dbg !3001
  %3 = load i8*, i8** %doc, align 8, !dbg !3001, !tbaa !2904
  %call = tail call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %3) #2, !dbg !3002
  ret %struct._object* %call, !dbg !3003
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_getter(%struct._object* %self, %struct._object* %getter) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1093, metadata !1275), !dbg !3004
  tail call void @llvm.dbg.value(metadata %struct._object* %getter, i64 0, metadata !1094, metadata !1275), !dbg !3005
  %call = tail call fastcc %struct._object* @property_copy(%struct._object* %self, %struct._object* %getter, %struct._object* null, %struct._object* null), !dbg !3006
  ret %struct._object* %call, !dbg !3007
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_setter(%struct._object* %self, %struct._object* %setter) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1132, metadata !1275), !dbg !3008
  tail call void @llvm.dbg.value(metadata %struct._object* %setter, i64 0, metadata !1133, metadata !1275), !dbg !3009
  %call = tail call fastcc %struct._object* @property_copy(%struct._object* %self, %struct._object* null, %struct._object* %setter, %struct._object* null), !dbg !3010
  ret %struct._object* %call, !dbg !3011
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_deleter(%struct._object* %self, %struct._object* %deleter) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1136, metadata !1275), !dbg !3012
  tail call void @llvm.dbg.value(metadata %struct._object* %deleter, i64 0, metadata !1137, metadata !1275), !dbg !3013
  %call = tail call fastcc %struct._object* @property_copy(%struct._object* %self, %struct._object* null, %struct._object* null, %struct._object* %deleter), !dbg !3014
  ret %struct._object* %call, !dbg !3015
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @property_copy(%struct._object* %old, %struct._object* %get, %struct._object* %set, %struct._object* %del) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %old, i64 0, metadata !1099, metadata !1275), !dbg !3016
  tail call void @llvm.dbg.value(metadata %struct._object* %get, i64 0, metadata !1100, metadata !1275), !dbg !3017
  tail call void @llvm.dbg.value(metadata %struct._object* %set, i64 0, metadata !1101, metadata !1275), !dbg !3018
  tail call void @llvm.dbg.value(metadata %struct._object* %del, i64 0, metadata !1102, metadata !1275), !dbg !3019
  %call = tail call %struct._object* @PyObject_Type(%struct._object* %old) #2, !dbg !3020
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1105, metadata !1275), !dbg !3021
  %cmp = icmp eq %struct._object* %call, null, !dbg !3022
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3024

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %get, null, !dbg !3025
  %cmp2 = icmp eq %struct._object* %get, @_Py_NoneStruct, !dbg !3026
  %or.cond = or i1 %cmp1, %cmp2, !dbg !3027
  br i1 %or.cond, label %do.body, label %if.end.14, !dbg !3027

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %get, i64 0, metadata !1107, metadata !1275), !dbg !3028
  br i1 %cmp1, label %if.end.10, label %do.body.6, !dbg !3030

do.body.6:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %get, i64 0, metadata !1111, metadata !1275), !dbg !3031
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %get, i64 0, i32 0, !dbg !3033
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !3033, !tbaa !1303
  %dec = add i64 %0, -1, !dbg !3033
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3033, !tbaa !1303
  %cmp7 = icmp eq i64 %dec, 0, !dbg !3033
  br i1 %cmp7, label %if.else, label %if.end.10, !dbg !3035

if.else:                                          ; preds = %do.body.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %get, i64 0, i32 1, !dbg !3036
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3036, !tbaa !1307
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !3036
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3036, !tbaa !1308
  tail call void %2(%struct._object* %get) #2, !dbg !3036
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %do.body.6, %do.body
  %prop_get = getelementptr inbounds %struct._object, %struct._object* %old, i64 1, !dbg !3038
  %3 = bitcast %struct._object* %prop_get to %struct._object**, !dbg !3038
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !3038, !tbaa !2537
  %tobool = icmp eq %struct._object* %4, null, !dbg !3039
  %_Py_NoneStruct. = select i1 %tobool, %struct._object* @_Py_NoneStruct, %struct._object* %4, !dbg !3039
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct., i64 0, metadata !1100, metadata !1275), !dbg !3017
  br label %if.end.14, !dbg !3040

if.end.14:                                        ; preds = %if.end, %if.end.10
  %get.addr.0 = phi %struct._object* [ %_Py_NoneStruct., %if.end.10 ], [ %get, %if.end ]
  %cmp15 = icmp eq %struct._object* %set, null, !dbg !3041
  %cmp17 = icmp eq %struct._object* %set, @_Py_NoneStruct, !dbg !3042
  %or.cond105 = or i1 %cmp15, %cmp17, !dbg !3043
  br i1 %or.cond105, label %do.body.19, label %if.end.44, !dbg !3043

do.body.19:                                       ; preds = %if.end.14
  tail call void @llvm.dbg.value(metadata %struct._object* %set, i64 0, metadata !1114, metadata !1275), !dbg !3044
  br i1 %cmp15, label %if.end.35, label %do.body.23, !dbg !3046

do.body.23:                                       ; preds = %do.body.19
  tail call void @llvm.dbg.value(metadata %struct._object* %set, i64 0, metadata !1118, metadata !1275), !dbg !3047
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %set, i64 0, i32 0, !dbg !3049
  %5 = load i64, i64* %ob_refcnt25, align 8, !dbg !3049, !tbaa !1303
  %dec26 = add i64 %5, -1, !dbg !3049
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !3049, !tbaa !1303
  %cmp27 = icmp eq i64 %dec26, 0, !dbg !3049
  br i1 %cmp27, label %if.else.29, label %if.end.35, !dbg !3051

if.else.29:                                       ; preds = %do.body.23
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %set, i64 0, i32 1, !dbg !3052
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !3052, !tbaa !1307
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !3052
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !3052, !tbaa !1308
  tail call void %7(%struct._object* %set) #2, !dbg !3052
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.29, %do.body.23, %do.body.19
  %prop_set = getelementptr inbounds %struct._object, %struct._object* %old, i64 1, i32 1, !dbg !3054
  %8 = bitcast %struct._typeobject** %prop_set to %struct._object**, !dbg !3054
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !3054, !tbaa !2550
  %tobool38 = icmp eq %struct._object* %9, null, !dbg !3055
  %_Py_NoneStruct.152 = select i1 %tobool38, %struct._object* @_Py_NoneStruct, %struct._object* %9, !dbg !3055
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.152, i64 0, metadata !1101, metadata !1275), !dbg !3018
  br label %if.end.44, !dbg !3056

if.end.44:                                        ; preds = %if.end.14, %if.end.35
  %set.addr.0 = phi %struct._object* [ %_Py_NoneStruct.152, %if.end.35 ], [ %set, %if.end.14 ]
  %cmp45 = icmp eq %struct._object* %del, null, !dbg !3057
  %cmp47 = icmp eq %struct._object* %del, @_Py_NoneStruct, !dbg !3058
  %or.cond106 = or i1 %cmp45, %cmp47, !dbg !3059
  br i1 %or.cond106, label %do.body.49, label %if.end.74, !dbg !3059

do.body.49:                                       ; preds = %if.end.44
  tail call void @llvm.dbg.value(metadata %struct._object* %del, i64 0, metadata !1121, metadata !1275), !dbg !3060
  br i1 %cmp45, label %if.end.65, label %do.body.53, !dbg !3062

do.body.53:                                       ; preds = %do.body.49
  tail call void @llvm.dbg.value(metadata %struct._object* %del, i64 0, metadata !1125, metadata !1275), !dbg !3063
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %del, i64 0, i32 0, !dbg !3065
  %10 = load i64, i64* %ob_refcnt55, align 8, !dbg !3065, !tbaa !1303
  %dec56 = add i64 %10, -1, !dbg !3065
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !3065, !tbaa !1303
  %cmp57 = icmp eq i64 %dec56, 0, !dbg !3065
  br i1 %cmp57, label %if.else.59, label %if.end.65, !dbg !3067

if.else.59:                                       ; preds = %do.body.53
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %del, i64 0, i32 1, !dbg !3068
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !3068, !tbaa !1307
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !3068
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !3068, !tbaa !1308
  tail call void %12(%struct._object* %del) #2, !dbg !3068
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.59, %do.body.53, %do.body.49
  %prop_del = getelementptr inbounds %struct._object, %struct._object* %old, i64 2, !dbg !3070
  %13 = bitcast %struct._object* %prop_del to %struct._object**, !dbg !3070
  %14 = load %struct._object*, %struct._object** %13, align 8, !dbg !3070, !tbaa !2562
  %tobool68 = icmp eq %struct._object* %14, null, !dbg !3071
  %_Py_NoneStruct.153 = select i1 %tobool68, %struct._object* @_Py_NoneStruct, %struct._object* %14, !dbg !3071
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.153, i64 0, metadata !1102, metadata !1275), !dbg !3019
  br label %if.end.74, !dbg !3072

if.end.74:                                        ; preds = %if.end.44, %if.end.65
  %del.addr.0 = phi %struct._object* [ %_Py_NoneStruct.153, %if.end.65 ], [ %del, %if.end.44 ]
  %getter_doc = getelementptr inbounds %struct._object, %struct._object* %old, i64 3, !dbg !3073
  %15 = bitcast %struct._object* %getter_doc to i32*, !dbg !3073
  %16 = load i32, i32* %15, align 4, !dbg !3073, !tbaa !2747
  %tobool75 = icmp ne i32 %16, 0, !dbg !3075
  %cmp76 = icmp ne %struct._object* %get.addr.0, @_Py_NoneStruct, !dbg !3076
  %or.cond107 = and i1 %cmp76, %tobool75, !dbg !3077
  br i1 %or.cond107, label %if.end.85, label %if.else.78, !dbg !3077

if.else.78:                                       ; preds = %if.end.74
  %prop_doc = getelementptr inbounds %struct._object, %struct._object* %old, i64 2, i32 1, !dbg !3078
  %17 = bitcast %struct._typeobject** %prop_doc to %struct._object**, !dbg !3078
  %18 = load %struct._object*, %struct._object** %17, align 8, !dbg !3078, !tbaa !2574
  %tobool79 = icmp eq %struct._object* %18, null, !dbg !3080
  %_Py_NoneStruct.154 = select i1 %tobool79, %struct._object* @_Py_NoneStruct, %struct._object* %18, !dbg !3080
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.154, i64 0, metadata !1106, metadata !1275), !dbg !3081
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.74, %if.else.78
  %doc.0 = phi %struct._object* [ %_Py_NoneStruct.154, %if.else.78 ], [ @_Py_NoneStruct, %if.end.74 ]
  %call86 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), %struct._object* %get.addr.0, %struct._object* %set.addr.0, %struct._object* %del.addr.0, %struct._object* %doc.0) #2, !dbg !3082
  tail call void @llvm.dbg.value(metadata %struct._object* %call86, i64 0, metadata !1104, metadata !1275), !dbg !3083
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1128, metadata !1275), !dbg !3084
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3086
  %19 = load i64, i64* %ob_refcnt89, align 8, !dbg !3086, !tbaa !1303
  %dec90 = add i64 %19, -1, !dbg !3086
  store i64 %dec90, i64* %ob_refcnt89, align 8, !dbg !3086, !tbaa !1303
  %cmp91 = icmp eq i64 %dec90, 0, !dbg !3086
  br i1 %cmp91, label %if.else.93, label %cleanup, !dbg !3088

if.else.93:                                       ; preds = %if.end.85
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3089
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8, !dbg !3089, !tbaa !1307
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !3089
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8, !dbg !3089, !tbaa !1308
  tail call void %21(%struct._object* %call) #2, !dbg !3089
  br label %cleanup

cleanup:                                          ; preds = %if.else.93, %if.end.85, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call86, %if.end.85 ], [ %call86, %if.else.93 ]
  ret %struct._object* %retval.0, !dbg !3091
}

declare %struct._object* @PyObject_Type(%struct._object*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_get___isabstractmethod__(%struct.propertyobject* nocapture readonly %prop, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.propertyobject* %prop, i64 0, metadata !1142, metadata !1275), !dbg !3092
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !1143, metadata !1275), !dbg !3093
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %prop, i64 0, i32 1, !dbg !3094
  %0 = load %struct._object*, %struct._object** %prop_get, align 8, !dbg !3094, !tbaa !2537
  %call = tail call i32 @_PyObject_IsAbstract(%struct._object* %0) #2, !dbg !3095
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1144, metadata !1275), !dbg !3096
  switch i32 %call, label %if.then.1 [
    i32 -1, label %cleanup
    i32 0, label %if.end.2
  ], !dbg !3097

if.then.1:                                        ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3098, !tbaa !1303
  %inc = add i64 %1, 1, !dbg !3098
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3098, !tbaa !1303
  br label %cleanup, !dbg !3098

if.end.2:                                         ; preds = %entry
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %prop, i64 0, i32 2, !dbg !3102
  %2 = load %struct._object*, %struct._object** %prop_set, align 8, !dbg !3102, !tbaa !2550
  %call3 = tail call i32 @_PyObject_IsAbstract(%struct._object* %2) #2, !dbg !3103
  tail call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !1144, metadata !1275), !dbg !3096
  switch i32 %call3, label %if.then.8 [
    i32 -1, label %cleanup
    i32 0, label %if.end.11
  ], !dbg !3104

if.then.8:                                        ; preds = %if.end.2
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3105, !tbaa !1303
  %inc9 = add i64 %3, 1, !dbg !3105
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3105, !tbaa !1303
  br label %cleanup, !dbg !3105

if.end.11:                                        ; preds = %if.end.2
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %prop, i64 0, i32 3, !dbg !3109
  %4 = load %struct._object*, %struct._object** %prop_del, align 8, !dbg !3109, !tbaa !2562
  %call12 = tail call i32 @_PyObject_IsAbstract(%struct._object* %4) #2, !dbg !3110
  tail call void @llvm.dbg.value(metadata i32 %call12, i64 0, metadata !1144, metadata !1275), !dbg !3096
  switch i32 %call12, label %if.then.17 [
    i32 -1, label %cleanup
    i32 0, label %if.end.20
  ], !dbg !3111

if.then.17:                                       ; preds = %if.end.11
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3112, !tbaa !1303
  %inc18 = add i64 %5, 1, !dbg !3112
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3112, !tbaa !1303
  br label %cleanup, !dbg !3112

if.end.20:                                        ; preds = %if.end.11
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3116, !tbaa !1303
  %inc21 = add i64 %6, 1, !dbg !3116
  store i64 %inc21, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3116, !tbaa !1303
  br label %cleanup, !dbg !3116

cleanup:                                          ; preds = %if.end.11, %if.end.2, %entry, %if.end.20, %if.then.17, %if.then.8, %if.then.1
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.1 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.8 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.17 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end.20 ], [ null, %entry ], [ null, %if.end.2 ], [ null, %if.end.11 ]
  ret %struct._object* %retval.0, !dbg !3117
}

declare i32 @_PyObject_IsAbstract(%struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1272, !1273}
!llvm.ident = !{!1274}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !519, globals: !1195)
!1 = !DIFile(filename: "Objects/descrobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !107, !55, !375, !381, !389, !410, !416, !112, !430, !437, !438, !439, !368, !69, !447, !505, !509}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDescrObject", file: !14, line: 56, baseType: !15)
!14 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 53, size: 384, align: 64, elements: !16)
!16 = !{!17, !372}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "d_common", scope: !15, file: !14, line: 54, baseType: !18, size: 320, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDescrObject", file: !14, line: 46, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 41, size: 320, align: 64, elements: !20)
!20 = !{!21, !367, !370, !371}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !14, line: 42, baseType: !22, size: 128, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !23, line: 109, baseType: !24)
!23 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !23, line: 105, size: 128, align: 64, elements: !25)
!25 = !{!26, !34}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !24, file: !23, line: 107, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !28, line: 177, baseType: !29)
!28 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 102, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !32, line: 181, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!33 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !24, file: !23, line: 108, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !23, line: 334, size: 3200, align: 64, elements: !37)
!37 = !{!38, !44, !48, !49, !50, !56, !120, !125, !130, !131, !136, !188, !219, !231, !237, !238, !239, !241, !243, !274, !275, !276, !285, !286, !291, !292, !294, !296, !306, !316, !333, !334, !335, !337, !339, !340, !342, !347, !352, !357, !358, !359, !360, !361, !362, !363, !364, !366}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !36, file: !23, line: 335, baseType: !39, size: 192, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !23, line: 114, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 111, size: 192, align: 64, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !40, file: !23, line: 112, baseType: !22, size: 128, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !40, file: !23, line: 113, baseType: !27, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !36, file: !23, line: 336, baseType: !45, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !36, file: !23, line: 337, baseType: !27, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !36, file: !23, line: 337, baseType: !27, size: 64, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !36, file: !23, line: 341, baseType: !51, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !23, line: 308, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !36, file: !23, line: 342, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !23, line: 314, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !55, !62, !61}
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 48, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 246, size: 1728, align: 64, elements: !66)
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!66 = !{!67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !88, !89, !90, !91, !93, !95, !97, !101, !104, !106, !108, !109, !110, !111, !115, !116}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 247, baseType: !61, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 252, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 253, baseType: !69, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 254, baseType: !69, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 255, baseType: !69, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 256, baseType: !69, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 257, baseType: !69, size: 64, align: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 258, baseType: !69, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 259, baseType: !69, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 261, baseType: !69, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 262, baseType: !69, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 263, baseType: !69, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 265, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 161, size: 192, align: 64, elements: !83)
!83 = !{!84, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !82, file: !65, line: 162, baseType: !81, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !82, file: !65, line: 163, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !82, file: !65, line: 167, baseType: !61, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 267, baseType: !86, size: 64, align: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 269, baseType: !61, size: 32, align: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 273, baseType: !61, size: 32, align: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 275, baseType: !92, size: 64, align: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 140, baseType: !33)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 279, baseType: !94, size: 16, align: 16, offset: 1024)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 280, baseType: !96, size: 8, align: 8, offset: 1040)
!96 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 281, baseType: !98, size: 8, align: 8, offset: 1048)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 285, baseType: !102, size: 64, align: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 155, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 294, baseType: !105, size: 64, align: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 141, baseType: !33)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !64, file: !65, line: 303, baseType: !107, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !64, file: !65, line: 304, baseType: !107, size: 64, align: 64, offset: 1280)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !64, file: !65, line: 305, baseType: !107, size: 64, align: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !64, file: !65, line: 306, baseType: !107, size: 64, align: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 307, baseType: !112, size: 64, align: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 62, baseType: !114)
!113 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!114 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 309, baseType: !61, size: 32, align: 32, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 311, baseType: !117, size: 160, align: 8, offset: 1568)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, align: 8, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 20)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !36, file: !23, line: 343, baseType: !121, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !23, line: 316, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!55, !55, !69}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !36, file: !23, line: 344, baseType: !126, size: 64, align: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !23, line: 318, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!61, !55, !69, !55}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !36, file: !23, line: 345, baseType: !107, size: 64, align: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !36, file: !23, line: 346, baseType: !132, size: 64, align: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !23, line: 320, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!55, !55}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !36, file: !23, line: 350, baseType: !137, size: 64, align: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !23, line: 278, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 236, size: 2176, align: 64, elements: !140)
!140 = !{!141, !146, !147, !148, !149, !150, !155, !157, !158, !159, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !139, file: !23, line: 241, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !23, line: 166, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!55, !55, !55}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !139, file: !23, line: 242, baseType: !142, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !139, file: !23, line: 243, baseType: !142, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !139, file: !23, line: 244, baseType: !142, size: 64, align: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !139, file: !23, line: 245, baseType: !142, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !139, file: !23, line: 246, baseType: !151, size: 64, align: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !23, line: 167, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!55, !55, !55, !55}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !139, file: !23, line: 247, baseType: !156, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !23, line: 165, baseType: !133)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !139, file: !23, line: 248, baseType: !156, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !139, file: !23, line: 249, baseType: !156, size: 64, align: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !139, file: !23, line: 250, baseType: !160, size: 64, align: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !23, line: 168, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!61, !55}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !139, file: !23, line: 251, baseType: !156, size: 64, align: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !139, file: !23, line: 252, baseType: !142, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !139, file: !23, line: 253, baseType: !142, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !139, file: !23, line: 254, baseType: !142, size: 64, align: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !139, file: !23, line: 255, baseType: !142, size: 64, align: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !139, file: !23, line: 256, baseType: !142, size: 64, align: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !139, file: !23, line: 257, baseType: !156, size: 64, align: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !139, file: !23, line: 258, baseType: !107, size: 64, align: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !139, file: !23, line: 259, baseType: !156, size: 64, align: 64, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !139, file: !23, line: 261, baseType: !142, size: 64, align: 64, offset: 1216)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !139, file: !23, line: 262, baseType: !142, size: 64, align: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !139, file: !23, line: 263, baseType: !142, size: 64, align: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !139, file: !23, line: 264, baseType: !142, size: 64, align: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !139, file: !23, line: 265, baseType: !151, size: 64, align: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !139, file: !23, line: 266, baseType: !142, size: 64, align: 64, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !139, file: !23, line: 267, baseType: !142, size: 64, align: 64, offset: 1600)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !139, file: !23, line: 268, baseType: !142, size: 64, align: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !139, file: !23, line: 269, baseType: !142, size: 64, align: 64, offset: 1728)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !139, file: !23, line: 270, baseType: !142, size: 64, align: 64, offset: 1792)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !139, file: !23, line: 272, baseType: !142, size: 64, align: 64, offset: 1856)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !139, file: !23, line: 273, baseType: !142, size: 64, align: 64, offset: 1920)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !139, file: !23, line: 274, baseType: !142, size: 64, align: 64, offset: 1984)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !139, file: !23, line: 275, baseType: !142, size: 64, align: 64, offset: 2048)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !139, file: !23, line: 277, baseType: !156, size: 64, align: 64, offset: 2112)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !36, file: !23, line: 351, baseType: !189, size: 64, align: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !23, line: 292, baseType: !191)
!191 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 280, size: 640, align: 64, elements: !192)
!192 = !{!193, !198, !199, !204, !205, !206, !211, !212, !217, !218}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !191, file: !23, line: 281, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !23, line: 169, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!27, !55}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !191, file: !23, line: 282, baseType: !142, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !191, file: !23, line: 283, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !23, line: 170, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!55, !55, !27}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !191, file: !23, line: 284, baseType: !200, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !191, file: !23, line: 285, baseType: !107, size: 64, align: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !191, file: !23, line: 286, baseType: !207, size: 64, align: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !23, line: 172, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!61, !55, !27, !55}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !191, file: !23, line: 287, baseType: !107, size: 64, align: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !191, file: !23, line: 288, baseType: !213, size: 64, align: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !23, line: 231, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!61, !55, !55}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !191, file: !23, line: 290, baseType: !142, size: 64, align: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !191, file: !23, line: 291, baseType: !200, size: 64, align: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !36, file: !23, line: 352, baseType: !220, size: 64, align: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !23, line: 298, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 294, size: 192, align: 64, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !222, file: !23, line: 295, baseType: !194, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !222, file: !23, line: 296, baseType: !142, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !222, file: !23, line: 297, baseType: !227, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !23, line: 174, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!61, !55, !55, !55}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !36, file: !23, line: 356, baseType: !232, size: 64, align: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !23, line: 321, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !55}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !28, line: 186, baseType: !27)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !36, file: !23, line: 357, baseType: !151, size: 64, align: 64, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !36, file: !23, line: 358, baseType: !132, size: 64, align: 64, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !36, file: !23, line: 359, baseType: !240, size: 64, align: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !23, line: 317, baseType: !143)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !36, file: !23, line: 360, baseType: !242, size: 64, align: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !23, line: 319, baseType: !228)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !36, file: !23, line: 363, baseType: !244, size: 64, align: 64, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !23, line: 304, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 301, size: 128, align: 64, elements: !247)
!247 = !{!248, !269}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !246, file: !23, line: 302, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !23, line: 193, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!61, !55, !253, !61}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !23, line: 191, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !23, line: 178, size: 640, align: 64, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !266, !267, !268}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !23, line: 179, baseType: !107, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !255, file: !23, line: 180, baseType: !55, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !255, file: !23, line: 181, baseType: !27, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !255, file: !23, line: 182, baseType: !27, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !255, file: !23, line: 184, baseType: !61, size: 32, align: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !255, file: !23, line: 185, baseType: !61, size: 32, align: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !255, file: !23, line: 186, baseType: !69, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !255, file: !23, line: 187, baseType: !265, size: 64, align: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !255, file: !23, line: 188, baseType: !265, size: 64, align: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !255, file: !23, line: 189, baseType: !265, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !255, file: !23, line: 190, baseType: !107, size: 64, align: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !246, file: !23, line: 303, baseType: !270, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !23, line: 194, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !55, !253}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !36, file: !23, line: 366, baseType: !114, size: 64, align: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !36, file: !23, line: 368, baseType: !45, size: 64, align: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !36, file: !23, line: 372, baseType: !277, size: 64, align: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !23, line: 233, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!61, !55, !281, !107}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !23, line: 232, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!61, !55, !107}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !36, file: !23, line: 375, baseType: !160, size: 64, align: 64, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !36, file: !23, line: 379, baseType: !287, size: 64, align: 64, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !23, line: 322, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!55, !55, !55, !61}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !36, file: !23, line: 382, baseType: !27, size: 64, align: 64, offset: 1664)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !36, file: !23, line: 385, baseType: !293, size: 64, align: 64, offset: 1728)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !23, line: 323, baseType: !133)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !36, file: !23, line: 386, baseType: !295, size: 64, align: 64, offset: 1792)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !23, line: 324, baseType: !133)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !36, file: !23, line: 389, baseType: !297, size: 64, align: 64, offset: 1856)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !299, line: 40, size: 256, align: 64, elements: !300)
!299 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!300 = !{!301, !302, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !298, file: !299, line: 41, baseType: !45, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !298, file: !299, line: 42, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !299, line: 18, baseType: !143)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !298, file: !299, line: 43, baseType: !61, size: 32, align: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !298, file: !299, line: 45, baseType: !45, size: 64, align: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !36, file: !23, line: 390, baseType: !307, size: 64, align: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !309, line: 18, size: 320, align: 64, elements: !310)
!309 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!310 = !{!311, !312, !313, !314, !315}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !309, line: 19, baseType: !69, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !308, file: !309, line: 20, baseType: !61, size: 32, align: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !308, file: !309, line: 21, baseType: !27, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !309, line: 22, baseType: !61, size: 32, align: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !308, file: !309, line: 23, baseType: !69, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !36, file: !23, line: 391, baseType: !317, size: 64, align: 64, offset: 1984)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !14, line: 11, size: 320, align: 64, elements: !319)
!319 = !{!320, !321, !326, !331, !332}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !14, line: 12, baseType: !69, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !318, file: !14, line: 13, baseType: !322, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !14, line: 8, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!55, !55, !107}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !318, file: !14, line: 14, baseType: !327, size: 64, align: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !14, line: 9, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!61, !55, !55, !107}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !318, file: !14, line: 15, baseType: !69, size: 64, align: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !318, file: !14, line: 16, baseType: !107, size: 64, align: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !36, file: !23, line: 392, baseType: !35, size: 64, align: 64, offset: 2048)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !36, file: !23, line: 393, baseType: !55, size: 64, align: 64, offset: 2112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !36, file: !23, line: 394, baseType: !336, size: 64, align: 64, offset: 2176)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !23, line: 325, baseType: !152)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !36, file: !23, line: 395, baseType: !338, size: 64, align: 64, offset: 2240)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !23, line: 326, baseType: !228)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !36, file: !23, line: 396, baseType: !27, size: 64, align: 64, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !36, file: !23, line: 397, baseType: !341, size: 64, align: 64, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !23, line: 327, baseType: !228)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !36, file: !23, line: 398, baseType: !343, size: 64, align: 64, offset: 2432)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !23, line: 329, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!55, !35, !27}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !36, file: !23, line: 399, baseType: !348, size: 64, align: 64, offset: 2496)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !23, line: 328, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!55, !35, !55, !55}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !36, file: !23, line: 400, baseType: !353, size: 64, align: 64, offset: 2560)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !23, line: 307, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !107}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !36, file: !23, line: 401, baseType: !160, size: 64, align: 64, offset: 2624)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !36, file: !23, line: 402, baseType: !55, size: 64, align: 64, offset: 2688)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !36, file: !23, line: 403, baseType: !55, size: 64, align: 64, offset: 2752)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !36, file: !23, line: 404, baseType: !55, size: 64, align: 64, offset: 2816)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !36, file: !23, line: 405, baseType: !55, size: 64, align: 64, offset: 2880)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !36, file: !23, line: 406, baseType: !55, size: 64, align: 64, offset: 2944)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !36, file: !23, line: 407, baseType: !51, size: 64, align: 64, offset: 3008)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !36, file: !23, line: 410, baseType: !365, size: 32, align: 32, offset: 3072)
!365 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !36, file: !23, line: 412, baseType: !51, size: 64, align: 64, offset: 3136)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !19, file: !14, line: 43, baseType: !368, size: 64, align: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !23, line: 422, baseType: !36)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !19, file: !14, line: 44, baseType: !55, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_qualname", scope: !19, file: !14, line: 45, baseType: !55, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_method", scope: !15, file: !14, line: 55, baseType: !373, size: 64, align: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !299, line: 47, baseType: !298)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDescrObject", file: !14, line: 61, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 58, size: 384, align: 64, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_common", scope: !377, file: !14, line: 59, baseType: !18, size: 320, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_member", scope: !377, file: !14, line: 60, baseType: !307, size: 64, align: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDescrObject", file: !14, line: 66, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 63, size: 384, align: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_common", scope: !383, file: !14, line: 64, baseType: !18, size: 320, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_getset", scope: !383, file: !14, line: 65, baseType: !387, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !14, line: 17, baseType: !318)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWrapperDescrObject", file: !14, line: 72, baseType: !391)
!391 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 68, size: 448, align: 64, elements: !392)
!392 = !{!393, !394, !409}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_common", scope: !391, file: !14, line: 69, baseType: !18, size: 320, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_base", scope: !391, file: !14, line: 70, baseType: !395, size: 64, align: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "wrapperbase", file: !14, line: 26, size: 448, align: 64, elements: !397)
!397 = !{!398, !399, !400, !401, !406, !407, !408}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !14, line: 27, baseType: !69, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !396, file: !14, line: 28, baseType: !61, size: 32, align: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !396, file: !14, line: 29, baseType: !107, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wrapper", scope: !396, file: !14, line: 30, baseType: !402, size: 64, align: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "wrapperfunc", file: !14, line: 20, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!55, !55, !55, !107}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !396, file: !14, line: 31, baseType: !69, size: 64, align: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !14, line: 32, baseType: !61, size: 32, align: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name_strobj", scope: !396, file: !14, line: 33, baseType: !55, size: 64, align: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_wrapped", scope: !391, file: !14, line: 71, baseType: !107, size: 64, align: 64, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mappingproxyobject", file: !1, line: 771, baseType: !412)
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 768, size: 192, align: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !412, file: !1, line: 769, baseType: !22, size: 128, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !412, file: !1, line: 770, baseType: !55, size: 64, align: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !418, line: 253, baseType: !419)
!418 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!419 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !418, line: 246, size: 192, align: 64, elements: !420)
!420 = !{!421, !428}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !419, file: !418, line: 251, baseType: !422, size: 192, align: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !418, line: 247, size: 192, align: 64, elements: !423)
!423 = !{!424, !426, !427}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !422, file: !418, line: 248, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !422, file: !418, line: 249, baseType: !425, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !422, file: !418, line: 250, baseType: !27, size: 64, align: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !419, file: !418, line: 252, baseType: !429, size: 64, align: 64)
!429 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "wrapperobject", file: !1, line: 1016, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 1012, size: 256, align: 64, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !432, file: !1, line: 1013, baseType: !22, size: 128, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "descr", scope: !432, file: !1, line: 1014, baseType: !389, size: 64, align: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !432, file: !1, line: 1015, baseType: !55, size: 64, align: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !441, line: 33, baseType: !442)
!441 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!442 = !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 25, size: 256, align: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !442, file: !441, line: 26, baseType: !39, size: 192, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !442, file: !441, line: 27, baseType: !446, size: 64, align: 64, offset: 192)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 64, elements: !99)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !449, line: 139, baseType: !450)
!449 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !449, line: 69, size: 1536, align: 64, elements: !451)
!451 = !{!452, !454, !455, !475, !478, !479, !480, !481, !482, !483, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !450, file: !449, line: 72, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !449, line: 73, baseType: !453, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !450, file: !449, line: 74, baseType: !456, size: 64, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !449, line: 44, baseType: !458)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !449, line: 19, size: 832, align: 64, elements: !459)
!459 = !{!460, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !449, line: 21, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !458, file: !449, line: 22, baseType: !453, size: 64, align: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !458, file: !449, line: 24, baseType: !55, size: 64, align: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !458, file: !449, line: 25, baseType: !55, size: 64, align: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !458, file: !449, line: 26, baseType: !55, size: 64, align: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !458, file: !449, line: 27, baseType: !55, size: 64, align: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !458, file: !449, line: 28, baseType: !55, size: 64, align: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !458, file: !449, line: 30, baseType: !55, size: 64, align: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !458, file: !449, line: 31, baseType: !55, size: 64, align: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !458, file: !449, line: 32, baseType: !55, size: 64, align: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !458, file: !449, line: 33, baseType: !61, size: 32, align: 32, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !458, file: !449, line: 34, baseType: !61, size: 32, align: 32, offset: 672)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !458, file: !449, line: 37, baseType: !61, size: 32, align: 32, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !458, file: !449, line: 43, baseType: !55, size: 64, align: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !450, file: !449, line: 76, baseType: !476, size: 64, align: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !449, line: 50, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !450, file: !449, line: 77, baseType: !61, size: 32, align: 32, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !450, file: !449, line: 78, baseType: !47, size: 8, align: 8, offset: 288)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !450, file: !449, line: 80, baseType: !47, size: 8, align: 8, offset: 296)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !450, file: !449, line: 85, baseType: !61, size: 32, align: 32, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !450, file: !449, line: 86, baseType: !61, size: 32, align: 32, offset: 352)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !450, file: !449, line: 88, baseType: !484, size: 64, align: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !449, line: 54, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!61, !55, !476, !61, !55}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !450, file: !449, line: 89, baseType: !484, size: 64, align: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !450, file: !449, line: 90, baseType: !55, size: 64, align: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !450, file: !449, line: 91, baseType: !55, size: 64, align: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !450, file: !449, line: 93, baseType: !55, size: 64, align: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !450, file: !449, line: 94, baseType: !55, size: 64, align: 64, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !450, file: !449, line: 95, baseType: !55, size: 64, align: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !450, file: !449, line: 97, baseType: !55, size: 64, align: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !450, file: !449, line: 98, baseType: !55, size: 64, align: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !450, file: !449, line: 99, baseType: !55, size: 64, align: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !450, file: !449, line: 101, baseType: !55, size: 64, align: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !450, file: !449, line: 103, baseType: !61, size: 32, align: 32, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !450, file: !449, line: 105, baseType: !55, size: 64, align: 64, offset: 1152)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !450, file: !449, line: 106, baseType: !33, size: 64, align: 64, offset: 1216)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !450, file: !449, line: 108, baseType: !61, size: 32, align: 32, offset: 1280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !450, file: !449, line: 109, baseType: !55, size: 64, align: 64, offset: 1344)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !450, file: !449, line: 134, baseType: !354, size: 64, align: 64, offset: 1408)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !450, file: !449, line: 135, baseType: !107, size: 64, align: 64, offset: 1472)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "wrapperfunc_kwds", file: !14, line: 23, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!55, !55, !55, !107, !55}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "propertyobject", file: !1, line: 1307, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 1300, size: 448, align: 64, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !511, file: !1, line: 1301, baseType: !22, size: 128, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "prop_get", scope: !511, file: !1, line: 1302, baseType: !55, size: 64, align: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prop_set", scope: !511, file: !1, line: 1303, baseType: !55, size: 64, align: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "prop_del", scope: !511, file: !1, line: 1304, baseType: !55, size: 64, align: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "prop_doc", scope: !511, file: !1, line: 1305, baseType: !55, size: 64, align: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "getter_doc", scope: !511, file: !1, line: 1306, baseType: !61, size: 32, align: 32, offset: 384)
!519 = !{!520, !527, !532, !541, !548, !556, !564, !574, !596, !601, !608, !627, !632, !642, !647, !653, !658, !672, !676, !682, !690, !707, !712, !717, !723, !731, !739, !748, !753, !759, !767, !775, !780, !799, !805, !809, !815, !831, !840, !845, !851, !856, !862, !865, !875, !882, !885, !891, !894, !897, !900, !903, !914, !917, !949, !958, !963, !966, !971, !978, !990, !1004, !1017, !1022, !1026, !1030, !1033, !1039, !1043, !1069, !1091, !1095, !1130, !1134, !1138, !1145, !1151, !1161}
!520 = !DISubprogram(name: "PyDescr_NewMethod", scope: !1, file: !1, line: 701, type: !521, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyMethodDef*)* @PyDescr_NewMethod, variables: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!55, !368, !373}
!523 = !{!524, !525, !526}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !520, file: !1, line: 701, type: !368)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "method", arg: 2, scope: !520, file: !1, line: 701, type: !373)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !520, file: !1, line: 703, type: !12)
!527 = !DISubprogram(name: "PyDescr_NewClassMethod", scope: !1, file: !1, line: 713, type: !521, isLocal: false, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyMethodDef*)* @PyDescr_NewClassMethod, variables: !528)
!528 = !{!529, !530, !531}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !527, file: !1, line: 713, type: !368)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "method", arg: 2, scope: !527, file: !1, line: 713, type: !373)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !527, file: !1, line: 715, type: !12)
!532 = !DISubprogram(name: "PyDescr_NewMember", scope: !1, file: !1, line: 725, type: !533, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyMemberDef*)* @PyDescr_NewMember, variables: !537)
!533 = !DISubroutineType(types: !534)
!534 = !{!55, !368, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !309, line: 24, baseType: !308)
!537 = !{!538, !539, !540}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !532, file: !1, line: 725, type: !368)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "member", arg: 2, scope: !532, file: !1, line: 725, type: !535)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !532, file: !1, line: 727, type: !375)
!541 = !DISubprogram(name: "PyDescr_NewGetSet", scope: !1, file: !1, line: 737, type: !542, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyGetSetDef*)* @PyDescr_NewGetSet, variables: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!55, !368, !387}
!544 = !{!545, !546, !547}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !541, file: !1, line: 737, type: !368)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "getset", arg: 2, scope: !541, file: !1, line: 737, type: !387)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !541, file: !1, line: 739, type: !381)
!548 = !DISubprogram(name: "PyDescr_NewWrapper", scope: !1, file: !1, line: 749, type: !549, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.wrapperbase*, i8*)* @PyDescr_NewWrapper, variables: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!55, !368, !395, !107}
!551 = !{!552, !553, !554, !555}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !548, file: !1, line: 749, type: !368)
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !548, file: !1, line: 749, type: !395)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wrapped", arg: 3, scope: !548, file: !1, line: 749, type: !107)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !548, file: !1, line: 751, type: !389)
!556 = !DISubprogram(name: "PyDictProxy_New", scope: !1, file: !1, line: 990, type: !134, isLocal: false, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyDictProxy_New, variables: !557)
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mapping", arg: 1, scope: !556, file: !1, line: 990, type: !55)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !556, file: !1, line: 992, type: !410)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !561, file: !1, line: 1001, type: !416)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 1001, column: 9)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 998, column: 21)
!563 = distinct !DILexicalBlock(scope: !556, file: !1, line: 998, column: 9)
!564 = !DISubprogram(name: "PyWrapper_New", scope: !1, file: !1, line: 1246, type: !144, isLocal: false, isDefinition: true, scopeLine: 1247, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyWrapper_New, variables: !565)
!565 = !{!566, !567, !568, !569, !570}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !564, file: !1, line: 1246, type: !55)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !564, file: !1, line: 1246, type: !55)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !564, file: !1, line: 1248, type: !430)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !564, file: !1, line: 1249, type: !389)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !571, file: !1, line: 1262, type: !416)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 1262, column: 9)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 1257, column: 21)
!573 = distinct !DILexicalBlock(scope: !564, file: !1, line: 1257, column: 9)
!574 = !DISubprogram(name: "descr_dealloc", scope: !1, file: !1, line: 7, type: !575, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyDescrObject*)* @descr_dealloc, variables: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !437}
!577 = !{!578, !579, !581, !583, !586, !588, !591, !593}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !574, file: !1, line: 7, type: !437)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !580, file: !1, line: 9, type: !416)
!580 = distinct !DILexicalBlock(scope: !574, file: !1, line: 9, column: 5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !582, file: !1, line: 10, type: !55)
!582 = distinct !DILexicalBlock(scope: !574, file: !1, line: 10, column: 5)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 10, type: !55)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 10, column: 5)
!585 = distinct !DILexicalBlock(scope: !582, file: !1, line: 10, column: 5)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !587, file: !1, line: 11, type: !55)
!587 = distinct !DILexicalBlock(scope: !574, file: !1, line: 11, column: 5)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !1, line: 11, type: !55)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 11, column: 5)
!590 = distinct !DILexicalBlock(scope: !587, file: !1, line: 11, column: 5)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !592, file: !1, line: 12, type: !55)
!592 = distinct !DILexicalBlock(scope: !574, file: !1, line: 12, column: 5)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !1, line: 12, type: !55)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 12, column: 5)
!595 = distinct !DILexicalBlock(scope: !592, file: !1, line: 12, column: 5)
!596 = !DISubprogram(name: "method_repr", scope: !1, file: !1, line: 35, type: !597, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*)* @method_repr, variables: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!55, !12}
!599 = !{!600}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !596, file: !1, line: 35, type: !12)
!601 = !DISubprogram(name: "descr_repr", scope: !1, file: !1, line: 25, type: !602, isLocal: true, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, variables: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!55, !437, !69}
!604 = !{!605, !606, !607}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !601, file: !1, line: 25, type: !437)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !601, file: !1, line: 25, type: !69)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !601, file: !1, line: 27, type: !55)
!608 = !DISubprogram(name: "methoddescr_call", scope: !1, file: !1, line: 213, type: !609, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @methoddescr_call, variables: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!55, !12, !55, !55}
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !623, !625}
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !608, file: !1, line: 213, type: !12)
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !608, file: !1, line: 213, type: !55)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !608, file: !1, line: 213, type: !55)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argc", scope: !608, file: !1, line: 215, type: !27)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !608, file: !1, line: 216, type: !55)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !608, file: !1, line: 216, type: !55)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !608, file: !1, line: 216, type: !55)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !1, line: 247, type: !55)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 247, column: 9)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 246, column: 23)
!622 = distinct !DILexicalBlock(scope: !608, file: !1, line: 246, column: 9)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !624, file: !1, line: 251, type: !55)
!624 = distinct !DILexicalBlock(scope: !608, file: !1, line: 251, column: 5)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !626, file: !1, line: 252, type: !55)
!626 = distinct !DILexicalBlock(scope: !608, file: !1, line: 252, column: 5)
!627 = !DISubprogram(name: "descr_name", scope: !1, file: !1, line: 17, type: !628, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, variables: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!55, !437}
!630 = !{!631}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !627, file: !1, line: 17, type: !437)
!632 = !DISubprogram(name: "descr_traverse", scope: !1, file: !1, line: 486, type: !279, isLocal: true, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, variables: !633)
!633 = !{!634, !635, !636, !637, !638}
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !632, file: !1, line: 486, type: !55)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !632, file: !1, line: 486, type: !281)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !632, file: !1, line: 486, type: !107)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !632, file: !1, line: 488, type: !437)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !639, file: !1, line: 489, type: !61)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 489, column: 5)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 489, column: 5)
!641 = distinct !DILexicalBlock(scope: !632, file: !1, line: 489, column: 5)
!642 = !DISubprogram(name: "descr_reduce", scope: !1, file: !1, line: 404, type: !628, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*)* @descr_reduce, variables: !643)
!643 = !{!644, !645, !646}
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !642, file: !1, line: 404, type: !437)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !642, file: !1, line: 406, type: !55)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !642, file: !1, line: 407, type: !55)
!647 = !DISubprogram(name: "method_get_doc", scope: !1, file: !1, line: 354, type: !648, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, i8*)* @method_get_doc, variables: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!55, !12, !107}
!650 = !{!651, !652}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !647, file: !1, line: 354, type: !12)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !647, file: !1, line: 354, type: !107)
!653 = !DISubprogram(name: "descr_get_qualname", scope: !1, file: !1, line: 395, type: !628, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*)* @descr_get_qualname, variables: !654)
!654 = !{!655, !656}
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !653, file: !1, line: 395, type: !437)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !657, file: !1, line: 399, type: !55)
!657 = distinct !DILexicalBlock(scope: !653, file: !1, line: 399, column: 5)
!658 = !DISubprogram(name: "calculate_qualname", scope: !1, file: !1, line: 366, type: !628, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, variables: !659)
!659 = !{!660, !661, !662, !663, !667, !670}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !658, file: !1, line: 366, type: !437)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type_qualname", scope: !658, file: !1, line: 368, type: !55)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !658, file: !1, line: 368, type: !55)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !664, file: !1, line: 385, type: !55)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 385, column: 9)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 382, column: 42)
!666 = distinct !DILexicalBlock(scope: !658, file: !1, line: 382, column: 9)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !668, file: !1, line: 385, type: !55)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 385, column: 9)
!669 = distinct !DILexicalBlock(scope: !664, file: !1, line: 385, column: 9)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !1, line: 390, type: !55)
!671 = distinct !DILexicalBlock(scope: !658, file: !1, line: 390, column: 5)
!672 = !DISubprogram(name: "method_get_text_signature", scope: !1, file: !1, line: 360, type: !648, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, i8*)* @method_get_text_signature, variables: !673)
!673 = !{!674, !675}
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !672, file: !1, line: 360, type: !12)
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !672, file: !1, line: 360, type: !107)
!676 = !DISubprogram(name: "method_get", scope: !1, file: !1, line: 122, type: !609, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @method_get, variables: !677)
!677 = !{!678, !679, !680, !681}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !676, file: !1, line: 122, type: !12)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !676, file: !1, line: 122, type: !55)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !676, file: !1, line: 122, type: !55)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !676, file: !1, line: 124, type: !55)
!682 = !DISubprogram(name: "descr_check", scope: !1, file: !1, line: 63, type: !683, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, variables: !686)
!683 = !DISubroutineType(types: !684)
!684 = !{!61, !437, !55, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!686 = !{!687, !688, !689}
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !682, file: !1, line: 63, type: !437)
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !682, file: !1, line: 63, type: !55)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pres", arg: 3, scope: !682, file: !1, line: 63, type: !685)
!690 = !DISubprogram(name: "classmethoddescr_call", scope: !1, file: !1, line: 257, type: !609, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @classmethoddescr_call, variables: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !703, !705}
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !690, file: !1, line: 257, type: !12)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !690, file: !1, line: 257, type: !55)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !690, file: !1, line: 258, type: !55)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argc", scope: !690, file: !1, line: 260, type: !27)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !690, file: !1, line: 261, type: !55)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !690, file: !1, line: 261, type: !55)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !690, file: !1, line: 261, type: !55)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !1, line: 300, type: !55)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 300, column: 9)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 299, column: 23)
!702 = distinct !DILexicalBlock(scope: !690, file: !1, line: 299, column: 9)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !704, file: !1, line: 304, type: !55)
!704 = distinct !DILexicalBlock(scope: !690, file: !1, line: 304, column: 5)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !706, file: !1, line: 305, type: !55)
!706 = distinct !DILexicalBlock(scope: !690, file: !1, line: 305, column: 5)
!707 = !DISubprogram(name: "classmethod_get", scope: !1, file: !1, line: 84, type: !609, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @classmethod_get, variables: !708)
!708 = !{!709, !710, !711}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !707, file: !1, line: 84, type: !12)
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !707, file: !1, line: 84, type: !55)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !707, file: !1, line: 84, type: !55)
!712 = !DISubprogram(name: "member_repr", scope: !1, file: !1, line: 42, type: !713, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMemberDescrObject*)* @member_repr, variables: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{!55, !375}
!715 = !{!716}
!716 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !712, file: !1, line: 42, type: !375)
!717 = !DISubprogram(name: "member_get_doc", scope: !1, file: !1, line: 435, type: !718, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMemberDescrObject*, i8*)* @member_get_doc, variables: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!55, !375, !107}
!720 = !{!721, !722}
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !717, file: !1, line: 435, type: !375)
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !717, file: !1, line: 435, type: !107)
!723 = !DISubprogram(name: "member_get", scope: !1, file: !1, line: 132, type: !724, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMemberDescrObject*, %struct._object*, %struct._object*)* @member_get, variables: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!55, !375, !55, !55}
!726 = !{!727, !728, !729, !730}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !723, file: !1, line: 132, type: !375)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !723, file: !1, line: 132, type: !55)
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !723, file: !1, line: 132, type: !55)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !723, file: !1, line: 134, type: !55)
!731 = !DISubprogram(name: "member_set", scope: !1, file: !1, line: 186, type: !732, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyMemberDescrObject*, %struct._object*, %struct._object*)* @member_set, variables: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!61, !375, !55, !55}
!734 = !{!735, !736, !737, !738}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !731, file: !1, line: 186, type: !375)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !731, file: !1, line: 186, type: !55)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !731, file: !1, line: 186, type: !55)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !731, file: !1, line: 188, type: !61)
!739 = !DISubprogram(name: "descr_setcheck", scope: !1, file: !1, line: 168, type: !740, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, variables: !743)
!740 = !DISubroutineType(types: !741)
!741 = !{!61, !437, !55, !55, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!743 = !{!744, !745, !746, !747}
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !739, file: !1, line: 168, type: !437)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !739, file: !1, line: 168, type: !55)
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !739, file: !1, line: 168, type: !55)
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pres", arg: 4, scope: !739, file: !1, line: 169, type: !742)
!748 = !DISubprogram(name: "getset_repr", scope: !1, file: !1, line: 49, type: !749, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGetSetDescrObject*)* @getset_repr, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!55, !381}
!751 = !{!752}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !748, file: !1, line: 49, type: !381)
!753 = !DISubprogram(name: "getset_get_doc", scope: !1, file: !1, line: 451, type: !754, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGetSetDescrObject*, i8*)* @getset_get_doc, variables: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!55, !381, !107}
!756 = !{!757, !758}
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !753, file: !1, line: 451, type: !381)
!758 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !753, file: !1, line: 451, type: !107)
!759 = !DISubprogram(name: "getset_get", scope: !1, file: !1, line: 142, type: !760, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGetSetDescrObject*, %struct._object*, %struct._object*)* @getset_get, variables: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!55, !381, !55, !55}
!762 = !{!763, !764, !765, !766}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !759, file: !1, line: 142, type: !381)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !759, file: !1, line: 142, type: !55)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !759, file: !1, line: 142, type: !55)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !759, file: !1, line: 144, type: !55)
!767 = !DISubprogram(name: "getset_set", scope: !1, file: !1, line: 196, type: !768, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyGetSetDescrObject*, %struct._object*, %struct._object*)* @getset_set, variables: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!61, !381, !55, !55}
!770 = !{!771, !772, !773, !774}
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !767, file: !1, line: 196, type: !381)
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !767, file: !1, line: 196, type: !55)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !767, file: !1, line: 196, type: !55)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !767, file: !1, line: 198, type: !61)
!775 = !DISubprogram(name: "wrapperdescr_repr", scope: !1, file: !1, line: 56, type: !776, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*)* @wrapperdescr_repr, variables: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{!55, !389}
!778 = !{!779}
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !775, file: !1, line: 56, type: !389)
!780 = !DISubprogram(name: "wrapperdescr_call", scope: !1, file: !1, line: 310, type: !781, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, %struct._object*, %struct._object*)* @wrapperdescr_call, variables: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!55, !389, !55, !55}
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !795, !797}
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !780, file: !1, line: 310, type: !389)
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !780, file: !1, line: 310, type: !55)
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !780, file: !1, line: 310, type: !55)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argc", scope: !780, file: !1, line: 312, type: !27)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !780, file: !1, line: 313, type: !55)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !780, file: !1, line: 313, type: !55)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !780, file: !1, line: 313, type: !55)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !792, file: !1, line: 344, type: !55)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 344, column: 9)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 343, column: 23)
!794 = distinct !DILexicalBlock(scope: !780, file: !1, line: 343, column: 9)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !796, file: !1, line: 348, type: !55)
!796 = distinct !DILexicalBlock(scope: !780, file: !1, line: 348, column: 5)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !798, file: !1, line: 349, type: !55)
!798 = distinct !DILexicalBlock(scope: !780, file: !1, line: 349, column: 5)
!799 = !DISubprogram(name: "wrapperdescr_get_doc", scope: !1, file: !1, line: 467, type: !800, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, i8*)* @wrapperdescr_get_doc, variables: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!55, !389, !107}
!802 = !{!803, !804}
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !799, file: !1, line: 467, type: !389)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !799, file: !1, line: 467, type: !107)
!805 = !DISubprogram(name: "wrapperdescr_get_text_signature", scope: !1, file: !1, line: 473, type: !800, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, i8*)* @wrapperdescr_get_text_signature, variables: !806)
!806 = !{!807, !808}
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !805, file: !1, line: 473, type: !389)
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !805, file: !1, line: 473, type: !107)
!809 = !DISubprogram(name: "wrapperdescr_get", scope: !1, file: !1, line: 158, type: !781, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, %struct._object*, %struct._object*)* @wrapperdescr_get, variables: !810)
!810 = !{!811, !812, !813, !814}
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !809, file: !1, line: 158, type: !389)
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !809, file: !1, line: 158, type: !55)
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !809, file: !1, line: 158, type: !55)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !809, file: !1, line: 160, type: !55)
!815 = !DISubprogram(name: "descr_new", scope: !1, file: !1, line: 680, type: !816, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, variables: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!437, !368, !368, !45}
!818 = !{!819, !820, !821, !822, !823, !827}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descrtype", arg: 1, scope: !815, file: !1, line: 680, type: !368)
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !815, file: !1, line: 680, type: !368)
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !815, file: !1, line: 680, type: !45)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !815, file: !1, line: 682, type: !437)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !824, file: !1, line: 686, type: !55)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 686, column: 9)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 685, column: 24)
!826 = distinct !DILexicalBlock(scope: !815, file: !1, line: 685, column: 9)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !828, file: !1, line: 690, type: !55)
!828 = distinct !DILexicalBlock(scope: !829, file: !1, line: 690, column: 13)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 689, column: 36)
!830 = distinct !DILexicalBlock(scope: !825, file: !1, line: 689, column: 13)
!831 = !DISubprogram(name: "mappingproxy_dealloc", scope: !1, file: !1, line: 871, type: !832, isLocal: true, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mappingproxyobject*)* @mappingproxy_dealloc, variables: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !410}
!834 = !{!835, !836, !838}
!835 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !831, file: !1, line: 871, type: !410)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !837, file: !1, line: 873, type: !416)
!837 = distinct !DILexicalBlock(scope: !831, file: !1, line: 873, column: 5)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !839, file: !1, line: 874, type: !55)
!839 = distinct !DILexicalBlock(scope: !831, file: !1, line: 874, column: 5)
!840 = !DISubprogram(name: "mappingproxy_repr", scope: !1, file: !1, line: 891, type: !841, isLocal: true, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_repr, variables: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!55, !410}
!843 = !{!844}
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !840, file: !1, line: 891, type: !410)
!845 = !DISubprogram(name: "mappingproxy_contains", scope: !1, file: !1, line: 792, type: !846, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_contains, variables: !848)
!846 = !DISubroutineType(types: !847)
!847 = !{!61, !410, !55}
!848 = !{!849, !850}
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !845, file: !1, line: 792, type: !410)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !845, file: !1, line: 792, type: !55)
!851 = !DISubprogram(name: "mappingproxy_len", scope: !1, file: !1, line: 774, type: !852, isLocal: true, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.mappingproxyobject*)* @mappingproxy_len, variables: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!27, !410}
!854 = !{!855}
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !851, file: !1, line: 774, type: !410)
!856 = !DISubprogram(name: "mappingproxy_getitem", scope: !1, file: !1, line: 780, type: !857, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_getitem, variables: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!55, !410, !55}
!859 = !{!860, !861}
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !856, file: !1, line: 780, type: !410)
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !856, file: !1, line: 780, type: !55)
!862 = !DISubprogram(name: "mappingproxy_str", scope: !1, file: !1, line: 885, type: !841, isLocal: true, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_str, variables: !863)
!863 = !{!864}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !862, file: !1, line: 885, type: !410)
!865 = !DISubprogram(name: "mappingproxy_traverse", scope: !1, file: !1, line: 897, type: !279, isLocal: true, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @mappingproxy_traverse, variables: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !865, file: !1, line: 897, type: !55)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !865, file: !1, line: 897, type: !281)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !865, file: !1, line: 897, type: !107)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !865, file: !1, line: 899, type: !410)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !872, file: !1, line: 900, type: !61)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 900, column: 5)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 900, column: 5)
!874 = distinct !DILexicalBlock(scope: !865, file: !1, line: 900, column: 5)
!875 = !DISubprogram(name: "mappingproxy_richcompare", scope: !1, file: !1, line: 905, type: !876, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*, %struct._object*, i32)* @mappingproxy_richcompare, variables: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!55, !410, !55, !61}
!878 = !{!879, !880, !881}
!879 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !875, file: !1, line: 905, type: !410)
!880 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !875, file: !1, line: 905, type: !55)
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !875, file: !1, line: 905, type: !61)
!882 = !DISubprogram(name: "mappingproxy_getiter", scope: !1, file: !1, line: 879, type: !841, isLocal: true, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_getiter, variables: !883)
!883 = !{!884}
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !882, file: !1, line: 879, type: !410)
!885 = !DISubprogram(name: "mappingproxy_get", scope: !1, file: !1, line: 814, type: !857, isLocal: true, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_get, variables: !886)
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !885, file: !1, line: 814, type: !410)
!888 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !885, file: !1, line: 814, type: !55)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !885, file: !1, line: 816, type: !55)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "def", scope: !885, file: !1, line: 816, type: !55)
!891 = !DISubprogram(name: "mappingproxy_keys", scope: !1, file: !1, line: 825, type: !841, isLocal: true, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_keys, variables: !892)
!892 = !{!893}
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !891, file: !1, line: 825, type: !410)
!894 = !DISubprogram(name: "mappingproxy_values", scope: !1, file: !1, line: 832, type: !841, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_values, variables: !895)
!895 = !{!896}
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !894, file: !1, line: 832, type: !410)
!897 = !DISubprogram(name: "mappingproxy_items", scope: !1, file: !1, line: 839, type: !841, isLocal: true, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_items, variables: !898)
!898 = !{!899}
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !897, file: !1, line: 839, type: !410)
!900 = !DISubprogram(name: "mappingproxy_copy", scope: !1, file: !1, line: 846, type: !841, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_copy, variables: !901)
!901 = !{!902}
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !900, file: !1, line: 846, type: !410)
!903 = !DISubprogram(name: "mappingproxy_new", scope: !1, file: !1, line: 925, type: !904, isLocal: true, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mappingproxy_new, variables: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!55, !368, !55, !55}
!906 = !{!907, !908, !909, !910, !911, !912}
!907 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !903, file: !1, line: 925, type: !368)
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !903, file: !1, line: 925, type: !55)
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !903, file: !1, line: 925, type: !55)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !903, file: !1, line: 928, type: !55)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mappingproxy", scope: !903, file: !1, line: 929, type: !410)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !913, file: !1, line: 943, type: !416)
!913 = distinct !DILexicalBlock(scope: !903, file: !1, line: 943, column: 5)
!914 = !DISubprogram(name: "mappingproxy_check_mapping", scope: !1, file: !1, line: 911, type: !162, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, variables: !915)
!915 = !{!916}
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mapping", arg: 1, scope: !914, file: !1, line: 911, type: !55)
!917 = !DISubprogram(name: "wrapper_dealloc", scope: !1, file: !1, line: 1021, type: !918, isLocal: true, isDefinition: true, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.wrapperobject*)* @wrapper_dealloc, variables: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !430}
!920 = !{!921, !922, !924, !931, !932, !935, !937, !941, !944, !946}
!921 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !917, file: !1, line: 1021, type: !430)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_tstate", scope: !923, file: !1, line: 1024, type: !447)
!923 = distinct !DILexicalBlock(scope: !917, file: !1, line: 1024, column: 5)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !925, file: !1, line: 1024, type: !926)
!925 = distinct !DILexicalBlock(scope: !923, file: !1, line: 1024, column: 5)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !928)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !928, file: !4, line: 32, baseType: !107, size: 64, align: 64)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !925, file: !1, line: 1024, type: !107)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !925, file: !1, line: 1024, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !925, file: !1, line: 1024, type: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !938, file: !1, line: 1025, type: !55)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 1025, column: 5)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 1024, column: 5)
!940 = distinct !DILexicalBlock(scope: !923, file: !1, line: 1024, column: 5)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !942, file: !1, line: 1025, type: !55)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 1025, column: 5)
!943 = distinct !DILexicalBlock(scope: !938, file: !1, line: 1025, column: 5)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !945, file: !1, line: 1026, type: !55)
!945 = distinct !DILexicalBlock(scope: !939, file: !1, line: 1026, column: 5)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !947, file: !1, line: 1026, type: !55)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 1026, column: 5)
!948 = distinct !DILexicalBlock(scope: !945, file: !1, line: 1026, column: 5)
!949 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !950, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !955)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !952, !936}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64, align: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!955 = !{!956, !957}
!956 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !949, file: !4, line: 59, type: !952)
!957 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !949, file: !4, line: 59, type: !936)
!958 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !959, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !936}
!961 = !{!962}
!962 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !958, file: !4, line: 51, type: !936)
!963 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !959, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !964)
!964 = !{!965}
!965 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !963, file: !4, line: 44, type: !936)
!966 = !DISubprogram(name: "wrapper_repr", scope: !1, file: !1, line: 1104, type: !967, isLocal: true, isDefinition: true, scopeLine: 1105, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_repr, variables: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!55, !430}
!969 = !{!970}
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !966, file: !1, line: 1104, type: !430)
!971 = !DISubprogram(name: "wrapper_hash", scope: !1, file: !1, line: 1088, type: !972, isLocal: true, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.wrapperobject*)* @wrapper_hash, variables: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!236, !430}
!974 = !{!975, !976, !977}
!975 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !971, file: !1, line: 1088, type: !430)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !971, file: !1, line: 1090, type: !236)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !971, file: !1, line: 1090, type: !236)
!978 = !DISubprogram(name: "wrapper_call", scope: !1, file: !1, line: 1179, type: !979, isLocal: true, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*, %struct._object*, %struct._object*)* @wrapper_call, variables: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!55, !430, !55, !55}
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !978, file: !1, line: 1179, type: !430)
!983 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !978, file: !1, line: 1179, type: !55)
!984 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !978, file: !1, line: 1179, type: !55)
!985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrapper", scope: !978, file: !1, line: 1181, type: !402)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !978, file: !1, line: 1182, type: !55)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wk", scope: !988, file: !1, line: 1185, type: !505)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 1184, column: 60)
!989 = distinct !DILexicalBlock(scope: !978, file: !1, line: 1184, column: 9)
!990 = !DISubprogram(name: "wrapper_traverse", scope: !1, file: !1, line: 1199, type: !279, isLocal: true, isDefinition: true, scopeLine: 1200, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @wrapper_traverse, variables: !991)
!991 = !{!992, !993, !994, !995, !996, !1000}
!992 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !990, file: !1, line: 1199, type: !55)
!993 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !990, file: !1, line: 1199, type: !281)
!994 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !990, file: !1, line: 1199, type: !107)
!995 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !990, file: !1, line: 1201, type: !430)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !997, file: !1, line: 1202, type: !61)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1202, column: 5)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 1202, column: 5)
!999 = distinct !DILexicalBlock(scope: !990, file: !1, line: 1202, column: 5)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1001, file: !1, line: 1203, type: !61)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 1203, column: 5)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 1203, column: 5)
!1003 = distinct !DILexicalBlock(scope: !990, file: !1, line: 1203, column: 5)
!1004 = !DISubprogram(name: "wrapper_richcompare", scope: !1, file: !1, line: 1034, type: !289, isLocal: true, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @wrapper_richcompare, variables: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1014, !1015, !1016}
!1006 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !1004, file: !1, line: 1034, type: !55)
!1007 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !1004, file: !1, line: 1034, type: !55)
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !1004, file: !1, line: 1034, type: !61)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1004, file: !1, line: 1036, type: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_intptr_t", file: !28, line: 154, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1012, line: 267, baseType: !1013)
!1012 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !32, line: 195, baseType: !33)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !1004, file: !1, line: 1037, type: !55)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a_descr", scope: !1004, file: !1, line: 1038, type: !389)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b_descr", scope: !1004, file: !1, line: 1038, type: !389)
!1017 = !DISubprogram(name: "wrapper_reduce", scope: !1, file: !1, line: 1113, type: !967, isLocal: true, isDefinition: true, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_reduce, variables: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1017, file: !1, line: 1113, type: !430)
!1020 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !1017, file: !1, line: 1115, type: !55)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !1017, file: !1, line: 1116, type: !55)
!1022 = !DISubprogram(name: "wrapper_objclass", scope: !1, file: !1, line: 1135, type: !967, isLocal: true, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_objclass, variables: !1023)
!1023 = !{!1024, !1025}
!1024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1022, file: !1, line: 1135, type: !430)
!1025 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !1022, file: !1, line: 1137, type: !55)
!1026 = !DISubprogram(name: "wrapper_name", scope: !1, file: !1, line: 1144, type: !967, isLocal: true, isDefinition: true, scopeLine: 1145, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_name, variables: !1027)
!1027 = !{!1028, !1029}
!1028 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1026, file: !1, line: 1144, type: !430)
!1029 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !1026, file: !1, line: 1146, type: !45)
!1030 = !DISubprogram(name: "wrapper_qualname", scope: !1, file: !1, line: 1164, type: !967, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_qualname, variables: !1031)
!1031 = !{!1032}
!1032 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1030, file: !1, line: 1164, type: !430)
!1033 = !DISubprogram(name: "wrapper_doc", scope: !1, file: !1, line: 1152, type: !1034, isLocal: true, isDefinition: true, scopeLine: 1153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*, i8*)* @wrapper_doc, variables: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!55, !430, !107}
!1036 = !{!1037, !1038}
!1037 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1033, file: !1, line: 1152, type: !430)
!1038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !1033, file: !1, line: 1152, type: !107)
!1039 = !DISubprogram(name: "wrapper_text_signature", scope: !1, file: !1, line: 1158, type: !1034, isLocal: true, isDefinition: true, scopeLine: 1159, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*, i8*)* @wrapper_text_signature, variables: !1040)
!1040 = !{!1041, !1042}
!1041 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1039, file: !1, line: 1158, type: !430)
!1042 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !1039, file: !1, line: 1158, type: !107)
!1043 = !DISubprogram(name: "property_dealloc", scope: !1, file: !1, line: 1360, type: !53, isLocal: true, isDefinition: true, scopeLine: 1361, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @property_dealloc, variables: !1044)
!1044 = !{!1045, !1046, !1047, !1049, !1051, !1054, !1056, !1059, !1061, !1064, !1066}
!1045 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1043, file: !1, line: 1360, type: !55)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !1043, file: !1, line: 1362, type: !509)
!1047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !1048, file: !1, line: 1364, type: !416)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1364, column: 5)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1050, file: !1, line: 1365, type: !55)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1365, column: 5)
!1051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1052, file: !1, line: 1365, type: !55)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 1365, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 1365, column: 5)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1055, file: !1, line: 1366, type: !55)
!1055 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1366, column: 5)
!1056 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1057, file: !1, line: 1366, type: !55)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 1366, column: 5)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 1366, column: 5)
!1059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1060, file: !1, line: 1367, type: !55)
!1060 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1367, column: 5)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1062, file: !1, line: 1367, type: !55)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 1367, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 1367, column: 5)
!1064 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1065, file: !1, line: 1368, type: !55)
!1065 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1368, column: 5)
!1066 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1067, file: !1, line: 1368, type: !55)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 1368, column: 5)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 1368, column: 5)
!1069 = !DISubprogram(name: "property_traverse", scope: !1, file: !1, line: 1577, type: !279, isLocal: true, isDefinition: true, scopeLine: 1578, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @property_traverse, variables: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1079, !1083, !1087}
!1071 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1069, file: !1, line: 1577, type: !55)
!1072 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !1069, file: !1, line: 1577, type: !281)
!1073 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !1069, file: !1, line: 1577, type: !107)
!1074 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !1069, file: !1, line: 1579, type: !509)
!1075 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1076, file: !1, line: 1580, type: !61)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 1580, column: 5)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 1580, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 1580, column: 5)
!1079 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1080, file: !1, line: 1581, type: !61)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 1581, column: 5)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 1581, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 1581, column: 5)
!1083 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1084, file: !1, line: 1582, type: !61)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 1582, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 1582, column: 5)
!1086 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 1582, column: 5)
!1087 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1088, file: !1, line: 1583, type: !61)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 1583, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 1583, column: 5)
!1090 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 1583, column: 5)
!1091 = !DISubprogram(name: "property_getter", scope: !1, file: !1, line: 1325, type: !144, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @property_getter, variables: !1092)
!1092 = !{!1093, !1094}
!1093 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1091, file: !1, line: 1325, type: !55)
!1094 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "getter", arg: 2, scope: !1091, file: !1, line: 1325, type: !55)
!1095 = !DISubprogram(name: "property_copy", scope: !1, file: !1, line: 1416, type: !1096, isLocal: true, isDefinition: true, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*, %struct._object*)* @property_copy, variables: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!55, !55, !55, !55, !55}
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1111, !1114, !1118, !1121, !1125, !1128}
!1099 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 1, scope: !1095, file: !1, line: 1416, type: !55)
!1100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "get", arg: 2, scope: !1095, file: !1, line: 1416, type: !55)
!1101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set", arg: 3, scope: !1095, file: !1, line: 1416, type: !55)
!1102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "del", arg: 4, scope: !1095, file: !1, line: 1416, type: !55)
!1103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pold", scope: !1095, file: !1, line: 1418, type: !509)
!1104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !1095, file: !1, line: 1419, type: !55)
!1105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !1095, file: !1, line: 1419, type: !55)
!1106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !1095, file: !1, line: 1419, type: !55)
!1107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1108, file: !1, line: 1426, type: !55)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 1426, column: 9)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 1425, column: 40)
!1110 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 1425, column: 9)
!1111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1112, file: !1, line: 1426, type: !55)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 1426, column: 9)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 1426, column: 9)
!1114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1115, file: !1, line: 1430, type: !55)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 1430, column: 9)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 1429, column: 40)
!1117 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 1429, column: 9)
!1118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1119, file: !1, line: 1430, type: !55)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 1430, column: 9)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 1430, column: 9)
!1121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1122, file: !1, line: 1434, type: !55)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 1434, column: 9)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 1433, column: 40)
!1124 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 1433, column: 9)
!1125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1126, file: !1, line: 1434, type: !55)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 1434, column: 9)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 1434, column: 9)
!1128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1129, file: !1, line: 1446, type: !55)
!1129 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 1446, column: 5)
!1130 = !DISubprogram(name: "property_setter", scope: !1, file: !1, line: 1335, type: !144, isLocal: true, isDefinition: true, scopeLine: 1336, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @property_setter, variables: !1131)
!1131 = !{!1132, !1133}
!1132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1130, file: !1, line: 1335, type: !55)
!1133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "setter", arg: 2, scope: !1130, file: !1, line: 1335, type: !55)
!1134 = !DISubprogram(name: "property_deleter", scope: !1, file: !1, line: 1345, type: !144, isLocal: true, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @property_deleter, variables: !1135)
!1135 = !{!1136, !1137}
!1136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1134, file: !1, line: 1345, type: !55)
!1137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deleter", arg: 2, scope: !1134, file: !1, line: 1345, type: !55)
!1138 = !DISubprogram(name: "property_get___isabstractmethod__", scope: !1, file: !1, line: 1514, type: !1139, isLocal: true, isDefinition: true, scopeLine: 1515, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.propertyobject*, i8*)* @property_get___isabstractmethod__, variables: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!55, !509, !107}
!1141 = !{!1142, !1143, !1144}
!1142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prop", arg: 1, scope: !1138, file: !1, line: 1514, type: !509)
!1143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !1138, file: !1, line: 1514, type: !107)
!1144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1138, file: !1, line: 1516, type: !61)
!1145 = !DISubprogram(name: "property_descr_get", scope: !1, file: !1, line: 1373, type: !153, isLocal: true, isDefinition: true, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @property_descr_get, variables: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1145, file: !1, line: 1373, type: !55)
!1148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !1145, file: !1, line: 1373, type: !55)
!1149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !1145, file: !1, line: 1373, type: !55)
!1150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !1145, file: !1, line: 1375, type: !509)
!1151 = !DISubprogram(name: "property_descr_set", scope: !1, file: !1, line: 1389, type: !229, isLocal: true, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @property_descr_set, variables: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1151, file: !1, line: 1389, type: !55)
!1154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !1151, file: !1, line: 1389, type: !55)
!1155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !1151, file: !1, line: 1389, type: !55)
!1156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !1151, file: !1, line: 1391, type: !509)
!1157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !1151, file: !1, line: 1392, type: !55)
!1158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1151, file: !1, line: 1392, type: !55)
!1159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1160, file: !1, line: 1411, type: !55)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 1411, column: 5)
!1161 = !DISubprogram(name: "property_init", scope: !1, file: !1, line: 1453, type: !229, isLocal: true, isDefinition: true, scopeLine: 1454, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @property_init, variables: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1173, !1175, !1177, !1179, !1182, !1188, !1191, !1193}
!1163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1161, file: !1, line: 1453, type: !55)
!1164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1161, file: !1, line: 1453, type: !55)
!1165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !1161, file: !1, line: 1453, type: !55)
!1166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get", scope: !1161, file: !1, line: 1455, type: !55)
!1167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !1161, file: !1, line: 1455, type: !55)
!1168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "del", scope: !1161, file: !1, line: 1455, type: !55)
!1169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !1161, file: !1, line: 1455, type: !55)
!1170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prop", scope: !1161, file: !1, line: 1457, type: !509)
!1171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1172, file: !1, line: 1470, type: !55)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1470, column: 5)
!1173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1174, file: !1, line: 1471, type: !55)
!1174 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1471, column: 5)
!1175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1176, file: !1, line: 1472, type: !55)
!1176 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1472, column: 5)
!1177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1178, file: !1, line: 1473, type: !55)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1473, column: 5)
!1179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get_doc", scope: !1180, file: !1, line: 1484, type: !55)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 1482, column: 57)
!1181 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1482, column: 9)
!1182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1183, file: !1, line: 1487, type: !55)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 1487, column: 17)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 1486, column: 52)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 1486, column: 17)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 1485, column: 22)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 1485, column: 13)
!1188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1189, file: !1, line: 1487, type: !55)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 1487, column: 17)
!1190 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 1487, column: 17)
!1191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1192, file: !1, line: 1495, type: !61)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 1490, column: 18)
!1193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1194, file: !1, line: 1496, type: !55)
!1194 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 1496, column: 17)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1216, !1220, !1224, !1225, !1227, !1228, !1229, !1230, !1231, !1235, !1236, !1237, !1238, !1239, !1240, !1242, !1243, !1244, !1246, !1248, !1252, !1254, !1258, !1259, !1263, !1267, !1269, !1271}
!1196 = !DIGlobalVariable(name: "PyMethodDescr_Type", scope: !0, file: !1, line: 493, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyMethodDescr_Type)
!1197 = !DIGlobalVariable(name: "PyClassMethodDescr_Type", scope: !0, file: !1, line: 531, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyClassMethodDescr_Type)
!1198 = !DIGlobalVariable(name: "PyMemberDescr_Type", scope: !0, file: !1, line: 568, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyMemberDescr_Type)
!1199 = !DIGlobalVariable(name: "PyGetSetDescr_Type", scope: !0, file: !1, line: 605, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyGetSetDescr_Type)
!1200 = !DIGlobalVariable(name: "PyWrapperDescr_Type", scope: !0, file: !1, line: 642, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyWrapperDescr_Type)
!1201 = !DIGlobalVariable(name: "PyDictProxy_Type", scope: !0, file: !1, line: 947, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyDictProxy_Type)
!1202 = !DIGlobalVariable(name: "_PyMethodWrapper_Type", scope: !0, file: !1, line: 1207, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyMethodWrapper_Type)
!1203 = !DIGlobalVariable(name: "PyProperty_Type", scope: !0, file: !1, line: 1587, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyProperty_Type)
!1204 = !DIGlobalVariable(name: "descr_methods", scope: !0, file: !1, line: 416, type: !1205, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @descr_methods)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 512, align: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 2)
!1208 = !DIGlobalVariable(name: "PyId_getattr", scope: !642, file: !1, line: 408, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @descr_reduce.PyId_getattr)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !23, line: 144, baseType: !1210)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !23, line: 140, size: 192, align: 64, elements: !1211)
!1211 = !{!1212, !1214, !1215}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1210, file: !23, line: 141, baseType: !1213, size: 64, align: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1210, file: !23, line: 142, baseType: !45, size: 64, align: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1210, file: !23, line: 143, baseType: !55, size: 64, align: 64, offset: 128)
!1216 = !DIGlobalVariable(name: "descr_members", scope: !0, file: !1, line: 421, type: !1217, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @descr_members)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 960, align: 64, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 3)
!1220 = !DIGlobalVariable(name: "method_getset", scope: !0, file: !1, line: 427, type: !1221, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @method_getset)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1280, align: 64, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 4)
!1224 = !DIGlobalVariable(name: "PyId___qualname__", scope: !658, file: !1, line: 369, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @calculate_qualname.PyId___qualname__)
!1225 = !DIGlobalVariable(name: "member_getset", scope: !0, file: !1, line: 444, type: !1226, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @member_getset)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 960, align: 64, elements: !1218)
!1227 = !DIGlobalVariable(name: "getset_getset", scope: !0, file: !1, line: 460, type: !1226, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @getset_getset)
!1228 = !DIGlobalVariable(name: "wrapperdescr_getset", scope: !0, file: !1, line: 478, type: !1221, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @wrapperdescr_getset)
!1229 = !DIGlobalVariable(name: "mappingproxy_as_sequence", scope: !0, file: !1, line: 800, type: !190, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @mappingproxy_as_sequence)
!1230 = !DIGlobalVariable(name: "mappingproxy_as_mapping", scope: !0, file: !1, line: 785, type: !221, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @mappingproxy_as_mapping)
!1231 = !DIGlobalVariable(name: "mappingproxy_methods", scope: !0, file: !1, line: 855, type: !1232, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @mappingproxy_methods)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1536, align: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 6)
!1235 = !DIGlobalVariable(name: "PyId_get", scope: !885, file: !1, line: 817, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_get.PyId_get)
!1236 = !DIGlobalVariable(name: "PyId_keys", scope: !891, file: !1, line: 827, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_keys.PyId_keys)
!1237 = !DIGlobalVariable(name: "PyId_values", scope: !894, file: !1, line: 834, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_values.PyId_values)
!1238 = !DIGlobalVariable(name: "PyId_items", scope: !897, file: !1, line: 841, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_items.PyId_items)
!1239 = !DIGlobalVariable(name: "PyId_copy", scope: !900, file: !1, line: 848, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_copy.PyId_copy)
!1240 = !DIGlobalVariable(name: "kwlist", scope: !903, file: !1, line: 927, type: !1241, isLocal: true, isDefinition: true, variable: [2 x i8*]* @mappingproxy_new.kwlist)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !1206)
!1242 = !DIGlobalVariable(name: "wrapper_methods", scope: !0, file: !1, line: 1124, type: !1205, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @wrapper_methods)
!1243 = !DIGlobalVariable(name: "PyId_getattr", scope: !1017, file: !1, line: 1117, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @wrapper_reduce.PyId_getattr)
!1244 = !DIGlobalVariable(name: "wrapper_members", scope: !0, file: !1, line: 1129, type: !1245, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @wrapper_members)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 640, align: 64, elements: !1206)
!1246 = !DIGlobalVariable(name: "wrapper_getsets", scope: !0, file: !1, line: 1169, type: !1247, isLocal: true, isDefinition: true, variable: [6 x %struct.PyGetSetDef]* @wrapper_getsets)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1920, align: 64, elements: !1233)
!1248 = !DIGlobalVariable(name: "property_doc", scope: !0, file: !1, line: 1550, type: !1249, isLocal: true, isDefinition: true, variable: [760 x i8]* @property_doc)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 6080, align: 8, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 760)
!1252 = !DIGlobalVariable(name: "property_methods", scope: !0, file: !1, line: 1351, type: !1253, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @property_methods)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1024, align: 64, elements: !1222)
!1254 = !DIGlobalVariable(name: "getter_doc", scope: !0, file: !1, line: 1321, type: !1255, isLocal: true, isDefinition: true, variable: [47 x i8]* @getter_doc)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 376, align: 8, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 47)
!1258 = !DIGlobalVariable(name: "setter_doc", scope: !0, file: !1, line: 1331, type: !1255, isLocal: true, isDefinition: true, variable: [47 x i8]* @setter_doc)
!1259 = !DIGlobalVariable(name: "deleter_doc", scope: !0, file: !1, line: 1341, type: !1260, isLocal: true, isDefinition: true, variable: [48 x i8]* @deleter_doc)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 384, align: 8, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 48)
!1263 = !DIGlobalVariable(name: "property_members", scope: !0, file: !1, line: 1312, type: !1264, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMemberDef]* @property_members)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 1600, align: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 5)
!1267 = !DIGlobalVariable(name: "property_getsetlist", scope: !0, file: !1, line: 1542, type: !1268, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @property_getsetlist)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 640, align: 64, elements: !1206)
!1269 = !DIGlobalVariable(name: "kwlist", scope: !1161, file: !1, line: 1456, type: !1270, isLocal: true, isDefinition: true, variable: [5 x i8*]* @property_init.kwlist)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 320, align: 64, elements: !1265)
!1271 = !DIGlobalVariable(name: "PyId___doc__", scope: !1161, file: !1, line: 1483, type: !1209, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @property_init.PyId___doc__)
!1272 = !{i32 2, !"Dwarf Version", i32 4}
!1273 = !{i32 2, !"Debug Info Version", i32 3}
!1274 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1275 = !DIExpression()
!1276 = !DILocation(line: 7, column: 30, scope: !574)
!1277 = !DILocation(line: 9, column: 5, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1279 = !DILocation(line: 9, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1281, file: !1, discriminator: 2)
!1281 = distinct !DILexicalBlock(scope: !580, file: !1, line: 9, column: 5)
!1282 = !{!1283, !1287, i64 16}
!1283 = !{!"", !1284, i64 0, !1284, i64 8, !1287, i64 16}
!1284 = !{!"any pointer", !1285, i64 0}
!1285 = !{!"omnipotent char", !1286, i64 0}
!1286 = !{!"Simple C/C++ TBAA"}
!1287 = !{!"long", !1285, i64 0}
!1288 = !DILocation(line: 9, column: 5, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 4)
!1290 = !{!1283, !1284, i64 0}
!1291 = !{!1283, !1284, i64 8}
!1292 = !DILocation(line: 10, column: 5, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1294 = !{!1295, !1284, i64 16}
!1295 = !{!"", !1296, i64 0, !1284, i64 16, !1284, i64 24, !1284, i64 32}
!1296 = !{!"_object", !1287, i64 0, !1284, i64 8}
!1297 = !DILocation(line: 10, column: 5, scope: !585)
!1298 = !DILocation(line: 10, column: 5, scope: !582)
!1299 = !DILocation(line: 10, column: 5, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 4)
!1301 = !DILocation(line: 10, column: 5, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !584, file: !1, line: 10, column: 5)
!1303 = !{!1296, !1287, i64 0}
!1304 = !DILocation(line: 10, column: 5, scope: !584)
!1305 = !DILocation(line: 10, column: 5, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1302, file: !1, discriminator: 6)
!1307 = !{!1296, !1284, i64 8}
!1308 = !{!1309, !1284, i64 48}
!1309 = !{!"_typeobject", !1310, i64 0, !1284, i64 24, !1287, i64 32, !1287, i64 40, !1284, i64 48, !1284, i64 56, !1284, i64 64, !1284, i64 72, !1284, i64 80, !1284, i64 88, !1284, i64 96, !1284, i64 104, !1284, i64 112, !1284, i64 120, !1284, i64 128, !1284, i64 136, !1284, i64 144, !1284, i64 152, !1284, i64 160, !1287, i64 168, !1284, i64 176, !1284, i64 184, !1284, i64 192, !1284, i64 200, !1287, i64 208, !1284, i64 216, !1284, i64 224, !1284, i64 232, !1284, i64 240, !1284, i64 248, !1284, i64 256, !1284, i64 264, !1284, i64 272, !1284, i64 280, !1287, i64 288, !1284, i64 296, !1284, i64 304, !1284, i64 312, !1284, i64 320, !1284, i64 328, !1284, i64 336, !1284, i64 344, !1284, i64 352, !1284, i64 360, !1284, i64 368, !1284, i64 376, !1311, i64 384, !1284, i64 392}
!1310 = !{!"", !1296, i64 0, !1287, i64 16}
!1311 = !{!"int", !1285, i64 0}
!1312 = !DILocation(line: 11, column: 5, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !587, file: !1, discriminator: 1)
!1314 = !{!1295, !1284, i64 24}
!1315 = !DILocation(line: 11, column: 5, scope: !590)
!1316 = !DILocation(line: 11, column: 5, scope: !587)
!1317 = !DILocation(line: 11, column: 5, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !589, file: !1, discriminator: 4)
!1319 = !DILocation(line: 11, column: 5, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !589, file: !1, line: 11, column: 5)
!1321 = !DILocation(line: 11, column: 5, scope: !589)
!1322 = !DILocation(line: 11, column: 5, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1320, file: !1, discriminator: 6)
!1324 = !DILocation(line: 12, column: 5, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!1326 = !{!1295, !1284, i64 32}
!1327 = !DILocation(line: 12, column: 5, scope: !595)
!1328 = !DILocation(line: 12, column: 5, scope: !592)
!1329 = !DILocation(line: 12, column: 5, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !594, file: !1, discriminator: 4)
!1331 = !DILocation(line: 12, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !594, file: !1, line: 12, column: 5)
!1333 = !DILocation(line: 12, column: 5, scope: !594)
!1334 = !DILocation(line: 12, column: 5, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 6)
!1336 = !DILocation(line: 13, column: 21, scope: !574)
!1337 = !DILocation(line: 13, column: 5, scope: !574)
!1338 = !DILocation(line: 14, column: 1, scope: !574)
!1339 = !DILocation(line: 35, column: 34, scope: !596)
!1340 = !DILocation(line: 25, column: 40, scope: !601, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 37, column: 12, scope: !596)
!1342 = !DILocation(line: 27, column: 15, scope: !601, inlinedAt: !1341)
!1343 = !DILocation(line: 28, column: 16, scope: !1344, inlinedAt: !1341)
!1344 = distinct !DILexicalBlock(scope: !601, file: !1, line: 28, column: 9)
!1345 = !DILocation(line: 28, column: 23, scope: !1344, inlinedAt: !1341)
!1346 = !DILocation(line: 28, column: 31, scope: !1344, inlinedAt: !1341)
!1347 = !DILocation(line: 28, column: 34, scope: !1348, inlinedAt: !1341)
!1348 = !DILexicalBlockFile(scope: !1344, file: !1, discriminator: 1)
!1349 = !{!1309, !1287, i64 168}
!1350 = !DILocation(line: 28, column: 9, scope: !601, inlinedAt: !1341)
!1351 = !DILocation(line: 37, column: 12, scope: !596)
!1352 = !DILocation(line: 31, column: 59, scope: !601, inlinedAt: !1341)
!1353 = !DILocation(line: 31, column: 67, scope: !601, inlinedAt: !1341)
!1354 = !{!1309, !1284, i64 24}
!1355 = !DILocation(line: 31, column: 12, scope: !601, inlinedAt: !1341)
!1356 = !DILocation(line: 37, column: 5, scope: !596)
!1357 = !DILocation(line: 213, column: 39, scope: !608)
!1358 = !DILocation(line: 213, column: 56, scope: !608)
!1359 = !DILocation(line: 213, column: 72, scope: !608)
!1360 = !DILocation(line: 220, column: 12, scope: !608)
!1361 = !{!1310, !1287, i64 16}
!1362 = !DILocation(line: 215, column: 16, scope: !608)
!1363 = !DILocation(line: 221, column: 14, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !608, file: !1, line: 221, column: 9)
!1365 = !DILocation(line: 221, column: 9, scope: !608)
!1366 = !DILocation(line: 222, column: 22, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 221, column: 19)
!1368 = !{!1284, !1284, i64 0}
!1369 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1371)
!1370 = distinct !DILexicalBlock(scope: !627, file: !1, line: 19, column: 9)
!1371 = distinct !DILocation(line: 225, column: 22, scope: !1367)
!1372 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1371)
!1373 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1371)
!1374 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 1)
!1375 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1371)
!1376 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1371)
!1377 = !DILocation(line: 225, column: 22, scope: !1367)
!1378 = !DILocation(line: 226, column: 22, scope: !1367)
!1379 = !DILocation(line: 226, column: 43, scope: !1367)
!1380 = !DILocation(line: 222, column: 9, scope: !1367)
!1381 = !DILocation(line: 227, column: 9, scope: !1367)
!1382 = !DILocation(line: 229, column: 12, scope: !608)
!1383 = !DILocation(line: 216, column: 15, scope: !608)
!1384 = !DILocation(line: 230, column: 47, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !608, file: !1, line: 230, column: 9)
!1386 = !DILocation(line: 231, column: 47, scope: !1385)
!1387 = !DILocation(line: 230, column: 10, scope: !1385)
!1388 = !DILocation(line: 230, column: 9, scope: !608)
!1389 = !DILocation(line: 232, column: 22, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 231, column: 69)
!1391 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 236, column: 22, scope: !1390)
!1393 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1392)
!1394 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1392)
!1395 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1392)
!1396 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1392)
!1397 = !DILocation(line: 236, column: 22, scope: !1390)
!1398 = !DILocation(line: 237, column: 22, scope: !1390)
!1399 = !DILocation(line: 237, column: 43, scope: !1390)
!1400 = !DILocation(line: 238, column: 28, scope: !1390)
!1401 = !DILocation(line: 238, column: 37, scope: !1390)
!1402 = !DILocation(line: 232, column: 9, scope: !1390)
!1403 = !DILocation(line: 239, column: 9, scope: !1390)
!1404 = !DILocation(line: 242, column: 37, scope: !608)
!1405 = !{!1406, !1284, i64 40}
!1406 = !{!"", !1295, i64 0, !1284, i64 40}
!1407 = !DILocation(line: 242, column: 12, scope: !608)
!1408 = !DILocation(line: 216, column: 22, scope: !608)
!1409 = !DILocation(line: 243, column: 14, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !608, file: !1, line: 243, column: 9)
!1411 = !DILocation(line: 243, column: 9, scope: !608)
!1412 = !DILocation(line: 245, column: 12, scope: !608)
!1413 = !DILocation(line: 246, column: 14, scope: !622)
!1414 = !DILocation(line: 246, column: 9, scope: !608)
!1415 = !DILocation(line: 247, column: 9, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 1)
!1417 = !DILocation(line: 247, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !620, file: !1, line: 247, column: 9)
!1419 = !DILocation(line: 247, column: 9, scope: !620)
!1420 = !DILocation(line: 247, column: 9, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1418, file: !1, discriminator: 3)
!1422 = !DILocation(line: 250, column: 14, scope: !608)
!1423 = !DILocation(line: 216, column: 29, scope: !608)
!1424 = !DILocation(line: 251, column: 5, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 1)
!1426 = !DILocation(line: 251, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !624, file: !1, line: 251, column: 5)
!1428 = !DILocation(line: 251, column: 5, scope: !624)
!1429 = !DILocation(line: 251, column: 5, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1427, file: !1, discriminator: 3)
!1431 = !DILocation(line: 252, column: 5, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 1)
!1433 = !DILocation(line: 252, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !626, file: !1, line: 252, column: 5)
!1435 = !DILocation(line: 252, column: 5, scope: !626)
!1436 = !DILocation(line: 252, column: 5, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1434, file: !1, discriminator: 3)
!1438 = !DILocation(line: 254, column: 1, scope: !608)
!1439 = !DILocation(line: 486, column: 26, scope: !632)
!1440 = !DILocation(line: 486, column: 42, scope: !632)
!1441 = !DILocation(line: 486, column: 55, scope: !632)
!1442 = !DILocation(line: 489, column: 5, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 1)
!1444 = !DILocation(line: 489, column: 5, scope: !641)
!1445 = !DILocation(line: 489, column: 5, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !639, file: !1, discriminator: 2)
!1447 = !DILocation(line: 489, column: 5, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !639, file: !1, line: 489, column: 5)
!1449 = !DILocation(line: 490, column: 5, scope: !632)
!1450 = !DILocation(line: 491, column: 1, scope: !632)
!1451 = !DILocation(line: 122, column: 33, scope: !676)
!1452 = !DILocation(line: 122, column: 50, scope: !676)
!1453 = !DILocation(line: 122, column: 65, scope: !676)
!1454 = !DILocation(line: 63, column: 45, scope: !682, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 126, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !676, file: !1, line: 126, column: 9)
!1457 = !DILocation(line: 65, column: 13, scope: !1458, inlinedAt: !1455)
!1458 = distinct !DILexicalBlock(scope: !682, file: !1, line: 65, column: 9)
!1459 = !DILocation(line: 65, column: 9, scope: !682, inlinedAt: !1455)
!1460 = !DILocation(line: 66, column: 9, scope: !1461, inlinedAt: !1455)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 65, column: 22)
!1462 = !DILocation(line: 63, column: 61, scope: !682, inlinedAt: !1455)
!1463 = !DILocation(line: 124, column: 15, scope: !676)
!1464 = !DILocation(line: 68, column: 9, scope: !1461, inlinedAt: !1455)
!1465 = !DILocation(line: 70, column: 10, scope: !1466, inlinedAt: !1455)
!1466 = distinct !DILexicalBlock(scope: !682, file: !1, line: 70, column: 9)
!1467 = !DILocation(line: 70, column: 10, scope: !1468, inlinedAt: !1455)
!1468 = !DILexicalBlockFile(scope: !1466, file: !1, discriminator: 1)
!1469 = !DILocation(line: 70, column: 9, scope: !682, inlinedAt: !1455)
!1470 = !DILocation(line: 71, column: 22, scope: !1471, inlinedAt: !1455)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 70, column: 50)
!1472 = !DILocation(line: 126, column: 9, scope: !1456)
!1473 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1455)
!1475 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1474)
!1476 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1474)
!1477 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1474)
!1478 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1474)
!1479 = !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1455)
!1480 = !DILocation(line: 75, column: 29, scope: !1471, inlinedAt: !1455)
!1481 = !DILocation(line: 75, column: 37, scope: !1471, inlinedAt: !1455)
!1482 = !DILocation(line: 76, column: 27, scope: !1471, inlinedAt: !1455)
!1483 = !DILocation(line: 76, column: 36, scope: !1471, inlinedAt: !1455)
!1484 = !DILocation(line: 71, column: 9, scope: !1471, inlinedAt: !1455)
!1485 = !DILocation(line: 78, column: 9, scope: !1471, inlinedAt: !1455)
!1486 = !DILocation(line: 128, column: 37, scope: !676)
!1487 = !DILocation(line: 128, column: 12, scope: !676)
!1488 = !DILocation(line: 128, column: 5, scope: !676)
!1489 = !DILocation(line: 129, column: 1, scope: !676)
!1490 = !DILocation(line: 257, column: 44, scope: !690)
!1491 = !DILocation(line: 257, column: 61, scope: !690)
!1492 = !DILocation(line: 258, column: 33, scope: !690)
!1493 = !DILocation(line: 265, column: 12, scope: !690)
!1494 = !DILocation(line: 260, column: 16, scope: !690)
!1495 = !DILocation(line: 266, column: 14, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !690, file: !1, line: 266, column: 9)
!1497 = !DILocation(line: 266, column: 9, scope: !690)
!1498 = !DILocation(line: 267, column: 22, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 266, column: 19)
!1500 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 270, column: 22, scope: !1499)
!1502 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1501)
!1503 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1501)
!1504 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1501)
!1505 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1501)
!1506 = !DILocation(line: 270, column: 22, scope: !1499)
!1507 = !DILocation(line: 271, column: 22, scope: !1499)
!1508 = !DILocation(line: 271, column: 43, scope: !1499)
!1509 = !DILocation(line: 267, column: 9, scope: !1499)
!1510 = !DILocation(line: 272, column: 9, scope: !1499)
!1511 = !DILocation(line: 274, column: 12, scope: !690)
!1512 = !DILocation(line: 261, column: 15, scope: !690)
!1513 = !DILocation(line: 275, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !690, file: !1, line: 275, column: 9)
!1515 = !DILocation(line: 281, column: 28, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 275, column: 30)
!1517 = !DILocation(line: 275, column: 9, scope: !690)
!1518 = !DILocation(line: 276, column: 22, scope: !1516)
!1519 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 279, column: 22, scope: !1516)
!1521 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1520)
!1522 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1520)
!1523 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1520)
!1524 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1520)
!1525 = !DILocation(line: 279, column: 22, scope: !1516)
!1526 = !DILocation(line: 280, column: 22, scope: !1516)
!1527 = !DILocation(line: 280, column: 43, scope: !1516)
!1528 = !DILocation(line: 281, column: 37, scope: !1516)
!1529 = !DILocation(line: 276, column: 9, scope: !1516)
!1530 = !DILocation(line: 282, column: 9, scope: !1516)
!1531 = !DILocation(line: 284, column: 27, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !690, file: !1, line: 284, column: 9)
!1533 = !DILocation(line: 284, column: 49, scope: !1532)
!1534 = !DILocation(line: 284, column: 10, scope: !1532)
!1535 = !DILocation(line: 284, column: 9, scope: !690)
!1536 = !DILocation(line: 285, column: 22, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 284, column: 71)
!1538 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 289, column: 22, scope: !1537)
!1540 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1539)
!1541 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1539)
!1542 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1539)
!1543 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1539)
!1544 = !DILocation(line: 289, column: 22, scope: !1537)
!1545 = !DILocation(line: 290, column: 22, scope: !1537)
!1546 = !DILocation(line: 290, column: 43, scope: !1537)
!1547 = !DILocation(line: 291, column: 28, scope: !1537)
!1548 = !DILocation(line: 291, column: 37, scope: !1537)
!1549 = !DILocation(line: 285, column: 9, scope: !1537)
!1550 = !DILocation(line: 292, column: 9, scope: !1537)
!1551 = !DILocation(line: 295, column: 37, scope: !690)
!1552 = !DILocation(line: 295, column: 12, scope: !690)
!1553 = !DILocation(line: 261, column: 22, scope: !690)
!1554 = !DILocation(line: 296, column: 14, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !690, file: !1, line: 296, column: 9)
!1556 = !DILocation(line: 296, column: 9, scope: !690)
!1557 = !DILocation(line: 298, column: 12, scope: !690)
!1558 = !DILocation(line: 299, column: 14, scope: !702)
!1559 = !DILocation(line: 299, column: 9, scope: !690)
!1560 = !DILocation(line: 300, column: 9, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 1)
!1562 = !DILocation(line: 300, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !700, file: !1, line: 300, column: 9)
!1564 = !DILocation(line: 300, column: 9, scope: !700)
!1565 = !DILocation(line: 300, column: 9, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1563, file: !1, discriminator: 3)
!1567 = !DILocation(line: 303, column: 14, scope: !690)
!1568 = !DILocation(line: 261, column: 29, scope: !690)
!1569 = !DILocation(line: 304, column: 5, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 1)
!1571 = !DILocation(line: 304, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !704, file: !1, line: 304, column: 5)
!1573 = !DILocation(line: 304, column: 5, scope: !704)
!1574 = !DILocation(line: 304, column: 5, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 3)
!1576 = !DILocation(line: 305, column: 5, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 1)
!1578 = !DILocation(line: 305, column: 5, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !706, file: !1, line: 305, column: 5)
!1580 = !DILocation(line: 305, column: 5, scope: !706)
!1581 = !DILocation(line: 305, column: 5, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1579, file: !1, discriminator: 3)
!1583 = !DILocation(line: 307, column: 1, scope: !690)
!1584 = !DILocation(line: 84, column: 38, scope: !707)
!1585 = !DILocation(line: 84, column: 55, scope: !707)
!1586 = !DILocation(line: 84, column: 70, scope: !707)
!1587 = !DILocation(line: 87, column: 14, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !707, file: !1, line: 87, column: 9)
!1589 = !DILocation(line: 87, column: 9, scope: !707)
!1590 = !DILocation(line: 88, column: 17, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 88, column: 13)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 87, column: 23)
!1593 = !DILocation(line: 88, column: 13, scope: !1592)
!1594 = !DILocation(line: 89, column: 37, scope: !1591)
!1595 = !DILocation(line: 99, column: 5, scope: !1592)
!1596 = !DILocation(line: 92, column: 26, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 90, column: 14)
!1598 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 95, column: 26, scope: !1597)
!1600 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1599)
!1601 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1599)
!1602 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1599)
!1603 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1599)
!1604 = !DILocation(line: 95, column: 26, scope: !1597)
!1605 = !DILocation(line: 96, column: 26, scope: !1597)
!1606 = !DILocation(line: 96, column: 47, scope: !1597)
!1607 = !DILocation(line: 92, column: 13, scope: !1597)
!1608 = !DILocation(line: 97, column: 13, scope: !1597)
!1609 = !DILocation(line: 100, column: 10, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !707, file: !1, line: 100, column: 9)
!1611 = !DILocation(line: 106, column: 28, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 100, column: 30)
!1613 = !DILocation(line: 100, column: 9, scope: !707)
!1614 = !DILocation(line: 101, column: 22, scope: !1612)
!1615 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 104, column: 22, scope: !1612)
!1617 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1616)
!1618 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1616)
!1619 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1616)
!1620 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1616)
!1621 = !DILocation(line: 104, column: 22, scope: !1612)
!1622 = !DILocation(line: 105, column: 22, scope: !1612)
!1623 = !DILocation(line: 105, column: 43, scope: !1612)
!1624 = !DILocation(line: 106, column: 37, scope: !1612)
!1625 = !DILocation(line: 101, column: 9, scope: !1612)
!1626 = !DILocation(line: 107, column: 9, scope: !1612)
!1627 = !DILocation(line: 109, column: 27, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !707, file: !1, line: 109, column: 9)
!1629 = !DILocation(line: 109, column: 49, scope: !1628)
!1630 = !DILocation(line: 109, column: 10, scope: !1628)
!1631 = !DILocation(line: 109, column: 9, scope: !707)
!1632 = !DILocation(line: 110, column: 22, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 109, column: 71)
!1634 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 113, column: 22, scope: !1633)
!1636 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1635)
!1637 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1635)
!1638 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1635)
!1639 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1635)
!1640 = !DILocation(line: 113, column: 22, scope: !1633)
!1641 = !DILocation(line: 114, column: 22, scope: !1633)
!1642 = !DILocation(line: 114, column: 43, scope: !1633)
!1643 = !DILocation(line: 115, column: 46, scope: !1633)
!1644 = !DILocation(line: 110, column: 9, scope: !1633)
!1645 = !DILocation(line: 116, column: 9, scope: !1633)
!1646 = !DILocation(line: 118, column: 37, scope: !707)
!1647 = !DILocation(line: 118, column: 12, scope: !707)
!1648 = !DILocation(line: 118, column: 5, scope: !707)
!1649 = !DILocation(line: 119, column: 1, scope: !707)
!1650 = !DILocation(line: 42, column: 34, scope: !712)
!1651 = !DILocation(line: 25, column: 40, scope: !601, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 44, column: 12, scope: !712)
!1653 = !DILocation(line: 27, column: 15, scope: !601, inlinedAt: !1652)
!1654 = !DILocation(line: 28, column: 16, scope: !1344, inlinedAt: !1652)
!1655 = !DILocation(line: 28, column: 23, scope: !1344, inlinedAt: !1652)
!1656 = !DILocation(line: 28, column: 31, scope: !1344, inlinedAt: !1652)
!1657 = !DILocation(line: 28, column: 34, scope: !1348, inlinedAt: !1652)
!1658 = !DILocation(line: 28, column: 9, scope: !601, inlinedAt: !1652)
!1659 = !DILocation(line: 44, column: 12, scope: !712)
!1660 = !DILocation(line: 31, column: 59, scope: !601, inlinedAt: !1652)
!1661 = !DILocation(line: 31, column: 67, scope: !601, inlinedAt: !1652)
!1662 = !DILocation(line: 31, column: 12, scope: !601, inlinedAt: !1652)
!1663 = !DILocation(line: 44, column: 5, scope: !712)
!1664 = !DILocation(line: 132, column: 33, scope: !723)
!1665 = !DILocation(line: 132, column: 50, scope: !723)
!1666 = !DILocation(line: 132, column: 65, scope: !723)
!1667 = !DILocation(line: 63, column: 45, scope: !682, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 136, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !723, file: !1, line: 136, column: 9)
!1670 = !DILocation(line: 65, column: 13, scope: !1458, inlinedAt: !1668)
!1671 = !DILocation(line: 65, column: 9, scope: !682, inlinedAt: !1668)
!1672 = !DILocation(line: 66, column: 9, scope: !1461, inlinedAt: !1668)
!1673 = !DILocation(line: 63, column: 61, scope: !682, inlinedAt: !1668)
!1674 = !DILocation(line: 134, column: 15, scope: !723)
!1675 = !DILocation(line: 68, column: 9, scope: !1461, inlinedAt: !1668)
!1676 = !DILocation(line: 70, column: 10, scope: !1466, inlinedAt: !1668)
!1677 = !DILocation(line: 70, column: 10, scope: !1468, inlinedAt: !1668)
!1678 = !DILocation(line: 70, column: 9, scope: !682, inlinedAt: !1668)
!1679 = !DILocation(line: 71, column: 22, scope: !1471, inlinedAt: !1668)
!1680 = !DILocation(line: 136, column: 9, scope: !1669)
!1681 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1668)
!1683 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1682)
!1684 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1682)
!1685 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1682)
!1686 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1682)
!1687 = !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1668)
!1688 = !DILocation(line: 75, column: 29, scope: !1471, inlinedAt: !1668)
!1689 = !DILocation(line: 75, column: 37, scope: !1471, inlinedAt: !1668)
!1690 = !DILocation(line: 76, column: 27, scope: !1471, inlinedAt: !1668)
!1691 = !DILocation(line: 76, column: 36, scope: !1471, inlinedAt: !1668)
!1692 = !DILocation(line: 71, column: 9, scope: !1471, inlinedAt: !1668)
!1693 = !DILocation(line: 78, column: 9, scope: !1471, inlinedAt: !1668)
!1694 = !DILocation(line: 138, column: 28, scope: !723)
!1695 = !DILocation(line: 138, column: 48, scope: !723)
!1696 = !DILocation(line: 138, column: 12, scope: !723)
!1697 = !DILocation(line: 138, column: 5, scope: !723)
!1698 = !DILocation(line: 139, column: 1, scope: !723)
!1699 = !DILocation(line: 186, column: 33, scope: !731)
!1700 = !DILocation(line: 186, column: 50, scope: !731)
!1701 = !DILocation(line: 186, column: 65, scope: !731)
!1702 = !DILocation(line: 168, column: 63, scope: !739, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 190, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !731, file: !1, line: 190, column: 9)
!1705 = !DILocation(line: 172, column: 10, scope: !1706, inlinedAt: !1703)
!1706 = distinct !DILexicalBlock(scope: !739, file: !1, line: 172, column: 9)
!1707 = !DILocation(line: 172, column: 10, scope: !1708, inlinedAt: !1703)
!1708 = !DILexicalBlockFile(scope: !1706, file: !1, discriminator: 1)
!1709 = !DILocation(line: 172, column: 9, scope: !739, inlinedAt: !1703)
!1710 = !DILocation(line: 173, column: 22, scope: !1711, inlinedAt: !1703)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 172, column: 50)
!1712 = !DILocation(line: 190, column: 9, scope: !1704)
!1713 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 176, column: 22, scope: !1711, inlinedAt: !1703)
!1715 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1714)
!1716 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1714)
!1717 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1714)
!1718 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1714)
!1719 = !DILocation(line: 176, column: 22, scope: !1711, inlinedAt: !1703)
!1720 = !DILocation(line: 177, column: 29, scope: !1711, inlinedAt: !1703)
!1721 = !DILocation(line: 177, column: 37, scope: !1711, inlinedAt: !1703)
!1722 = !DILocation(line: 178, column: 27, scope: !1711, inlinedAt: !1703)
!1723 = !DILocation(line: 178, column: 36, scope: !1711, inlinedAt: !1703)
!1724 = !DILocation(line: 173, column: 9, scope: !1711, inlinedAt: !1703)
!1725 = !DILocation(line: 188, column: 9, scope: !731)
!1726 = !DILocation(line: 191, column: 9, scope: !1704)
!1727 = !DILocation(line: 192, column: 28, scope: !731)
!1728 = !DILocation(line: 192, column: 48, scope: !731)
!1729 = !DILocation(line: 192, column: 12, scope: !731)
!1730 = !DILocation(line: 192, column: 5, scope: !731)
!1731 = !DILocation(line: 193, column: 1, scope: !731)
!1732 = !DILocation(line: 49, column: 34, scope: !748)
!1733 = !DILocation(line: 25, column: 40, scope: !601, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 51, column: 12, scope: !748)
!1735 = !DILocation(line: 27, column: 15, scope: !601, inlinedAt: !1734)
!1736 = !DILocation(line: 28, column: 16, scope: !1344, inlinedAt: !1734)
!1737 = !DILocation(line: 28, column: 23, scope: !1344, inlinedAt: !1734)
!1738 = !DILocation(line: 28, column: 31, scope: !1344, inlinedAt: !1734)
!1739 = !DILocation(line: 28, column: 34, scope: !1348, inlinedAt: !1734)
!1740 = !DILocation(line: 28, column: 9, scope: !601, inlinedAt: !1734)
!1741 = !DILocation(line: 51, column: 12, scope: !748)
!1742 = !DILocation(line: 31, column: 59, scope: !601, inlinedAt: !1734)
!1743 = !DILocation(line: 31, column: 67, scope: !601, inlinedAt: !1734)
!1744 = !DILocation(line: 31, column: 12, scope: !601, inlinedAt: !1734)
!1745 = !DILocation(line: 51, column: 5, scope: !748)
!1746 = !DILocation(line: 142, column: 33, scope: !759)
!1747 = !DILocation(line: 142, column: 50, scope: !759)
!1748 = !DILocation(line: 142, column: 65, scope: !759)
!1749 = !DILocation(line: 63, column: 45, scope: !682, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 146, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !759, file: !1, line: 146, column: 9)
!1752 = !DILocation(line: 65, column: 13, scope: !1458, inlinedAt: !1750)
!1753 = !DILocation(line: 65, column: 9, scope: !682, inlinedAt: !1750)
!1754 = !DILocation(line: 66, column: 9, scope: !1461, inlinedAt: !1750)
!1755 = !DILocation(line: 63, column: 61, scope: !682, inlinedAt: !1750)
!1756 = !DILocation(line: 144, column: 15, scope: !759)
!1757 = !DILocation(line: 68, column: 9, scope: !1461, inlinedAt: !1750)
!1758 = !DILocation(line: 70, column: 10, scope: !1466, inlinedAt: !1750)
!1759 = !DILocation(line: 70, column: 10, scope: !1468, inlinedAt: !1750)
!1760 = !DILocation(line: 70, column: 9, scope: !682, inlinedAt: !1750)
!1761 = !DILocation(line: 71, column: 22, scope: !1471, inlinedAt: !1750)
!1762 = !DILocation(line: 146, column: 9, scope: !1751)
!1763 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1750)
!1765 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1764)
!1766 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1764)
!1767 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1764)
!1768 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1764)
!1769 = !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1750)
!1770 = !DILocation(line: 75, column: 29, scope: !1471, inlinedAt: !1750)
!1771 = !DILocation(line: 75, column: 37, scope: !1471, inlinedAt: !1750)
!1772 = !DILocation(line: 76, column: 27, scope: !1471, inlinedAt: !1750)
!1773 = !DILocation(line: 76, column: 36, scope: !1471, inlinedAt: !1750)
!1774 = !DILocation(line: 71, column: 9, scope: !1471, inlinedAt: !1750)
!1775 = !DILocation(line: 78, column: 9, scope: !1471, inlinedAt: !1750)
!1776 = !DILocation(line: 148, column: 16, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !759, file: !1, line: 148, column: 9)
!1778 = !DILocation(line: 148, column: 26, scope: !1777)
!1779 = !{!1780, !1284, i64 8}
!1780 = !{!"PyGetSetDef", !1284, i64 0, !1284, i64 8, !1284, i64 16, !1284, i64 24, !1284, i64 32}
!1781 = !DILocation(line: 148, column: 30, scope: !1777)
!1782 = !DILocation(line: 148, column: 9, scope: !759)
!1783 = !DILocation(line: 149, column: 59, scope: !1777)
!1784 = !{!1780, !1284, i64 32}
!1785 = !DILocation(line: 149, column: 16, scope: !1777)
!1786 = !DILocation(line: 149, column: 9, scope: !1777)
!1787 = !DILocation(line: 150, column: 18, scope: !759)
!1788 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 152, column: 18, scope: !759)
!1790 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1789)
!1791 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1789)
!1792 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1789)
!1793 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1789)
!1794 = !DILocation(line: 152, column: 18, scope: !759)
!1795 = !DILocation(line: 153, column: 18, scope: !759)
!1796 = !DILocation(line: 153, column: 39, scope: !759)
!1797 = !DILocation(line: 150, column: 5, scope: !759)
!1798 = !DILocation(line: 154, column: 5, scope: !759)
!1799 = !DILocation(line: 155, column: 1, scope: !759)
!1800 = !DILocation(line: 196, column: 33, scope: !767)
!1801 = !DILocation(line: 196, column: 50, scope: !767)
!1802 = !DILocation(line: 196, column: 65, scope: !767)
!1803 = !DILocation(line: 168, column: 63, scope: !739, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 200, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !767, file: !1, line: 200, column: 9)
!1806 = !DILocation(line: 172, column: 10, scope: !1706, inlinedAt: !1804)
!1807 = !DILocation(line: 172, column: 10, scope: !1708, inlinedAt: !1804)
!1808 = !DILocation(line: 172, column: 9, scope: !739, inlinedAt: !1804)
!1809 = !DILocation(line: 173, column: 22, scope: !1711, inlinedAt: !1804)
!1810 = !DILocation(line: 200, column: 9, scope: !1805)
!1811 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 176, column: 22, scope: !1711, inlinedAt: !1804)
!1813 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1812)
!1814 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1812)
!1815 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1812)
!1816 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1812)
!1817 = !DILocation(line: 176, column: 22, scope: !1711, inlinedAt: !1804)
!1818 = !DILocation(line: 177, column: 29, scope: !1711, inlinedAt: !1804)
!1819 = !DILocation(line: 177, column: 37, scope: !1711, inlinedAt: !1804)
!1820 = !DILocation(line: 178, column: 27, scope: !1711, inlinedAt: !1804)
!1821 = !DILocation(line: 178, column: 36, scope: !1711, inlinedAt: !1804)
!1822 = !DILocation(line: 173, column: 9, scope: !1711, inlinedAt: !1804)
!1823 = !DILocation(line: 198, column: 9, scope: !767)
!1824 = !DILocation(line: 201, column: 9, scope: !1805)
!1825 = !DILocation(line: 202, column: 16, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !767, file: !1, line: 202, column: 9)
!1827 = !DILocation(line: 202, column: 26, scope: !1826)
!1828 = !{!1780, !1284, i64 16}
!1829 = !DILocation(line: 202, column: 30, scope: !1826)
!1830 = !DILocation(line: 202, column: 9, scope: !767)
!1831 = !DILocation(line: 204, column: 54, scope: !1826)
!1832 = !DILocation(line: 203, column: 16, scope: !1826)
!1833 = !DILocation(line: 203, column: 9, scope: !1826)
!1834 = !DILocation(line: 205, column: 18, scope: !767)
!1835 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 207, column: 18, scope: !767)
!1837 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1836)
!1838 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1836)
!1839 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1836)
!1840 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1836)
!1841 = !DILocation(line: 207, column: 18, scope: !767)
!1842 = !DILocation(line: 208, column: 18, scope: !767)
!1843 = !DILocation(line: 208, column: 39, scope: !767)
!1844 = !DILocation(line: 205, column: 5, scope: !767)
!1845 = !DILocation(line: 209, column: 5, scope: !767)
!1846 = !DILocation(line: 210, column: 1, scope: !767)
!1847 = !DILocation(line: 56, column: 41, scope: !775)
!1848 = !DILocation(line: 25, column: 40, scope: !601, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 58, column: 12, scope: !775)
!1850 = !DILocation(line: 27, column: 15, scope: !601, inlinedAt: !1849)
!1851 = !DILocation(line: 28, column: 16, scope: !1344, inlinedAt: !1849)
!1852 = !DILocation(line: 28, column: 23, scope: !1344, inlinedAt: !1849)
!1853 = !DILocation(line: 28, column: 31, scope: !1344, inlinedAt: !1849)
!1854 = !DILocation(line: 28, column: 34, scope: !1348, inlinedAt: !1849)
!1855 = !DILocation(line: 28, column: 9, scope: !601, inlinedAt: !1849)
!1856 = !DILocation(line: 58, column: 12, scope: !775)
!1857 = !DILocation(line: 31, column: 59, scope: !601, inlinedAt: !1849)
!1858 = !DILocation(line: 31, column: 67, scope: !601, inlinedAt: !1849)
!1859 = !DILocation(line: 31, column: 12, scope: !601, inlinedAt: !1849)
!1860 = !DILocation(line: 58, column: 5, scope: !775)
!1861 = !DILocation(line: 310, column: 41, scope: !780)
!1862 = !DILocation(line: 310, column: 58, scope: !780)
!1863 = !DILocation(line: 310, column: 74, scope: !780)
!1864 = !DILocation(line: 317, column: 12, scope: !780)
!1865 = !DILocation(line: 312, column: 16, scope: !780)
!1866 = !DILocation(line: 318, column: 14, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !780, file: !1, line: 318, column: 9)
!1868 = !DILocation(line: 318, column: 9, scope: !780)
!1869 = !DILocation(line: 319, column: 22, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 318, column: 19)
!1871 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 322, column: 22, scope: !1870)
!1873 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1872)
!1874 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1872)
!1875 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1872)
!1876 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1872)
!1877 = !DILocation(line: 322, column: 22, scope: !1870)
!1878 = !DILocation(line: 323, column: 22, scope: !1870)
!1879 = !DILocation(line: 323, column: 43, scope: !1870)
!1880 = !DILocation(line: 319, column: 9, scope: !1870)
!1881 = !DILocation(line: 324, column: 9, scope: !1870)
!1882 = !DILocation(line: 326, column: 12, scope: !780)
!1883 = !DILocation(line: 313, column: 15, scope: !780)
!1884 = !DILocation(line: 327, column: 47, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !780, file: !1, line: 327, column: 9)
!1886 = !DILocation(line: 328, column: 47, scope: !1885)
!1887 = !DILocation(line: 327, column: 10, scope: !1885)
!1888 = !DILocation(line: 327, column: 9, scope: !780)
!1889 = !DILocation(line: 329, column: 22, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !1, line: 328, column: 69)
!1891 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 333, column: 22, scope: !1890)
!1893 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1892)
!1894 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1892)
!1895 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1892)
!1896 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1892)
!1897 = !DILocation(line: 333, column: 22, scope: !1890)
!1898 = !DILocation(line: 334, column: 22, scope: !1890)
!1899 = !DILocation(line: 334, column: 43, scope: !1890)
!1900 = !DILocation(line: 335, column: 28, scope: !1890)
!1901 = !DILocation(line: 335, column: 37, scope: !1890)
!1902 = !DILocation(line: 329, column: 9, scope: !1890)
!1903 = !DILocation(line: 336, column: 9, scope: !1890)
!1904 = !DILocation(line: 1246, column: 25, scope: !564, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 339, column: 12, scope: !780)
!1906 = !DILocation(line: 1246, column: 38, scope: !564, inlinedAt: !1905)
!1907 = !DILocation(line: 1256, column: 10, scope: !564, inlinedAt: !1905)
!1908 = !DILocation(line: 1257, column: 12, scope: !573, inlinedAt: !1905)
!1909 = !DILocation(line: 1257, column: 9, scope: !564, inlinedAt: !1905)
!1910 = !DILocation(line: 339, column: 26, scope: !780)
!1911 = !DILocation(line: 1258, column: 9, scope: !572, inlinedAt: !1905)
!1912 = !DILocation(line: 1259, column: 13, scope: !572, inlinedAt: !1905)
!1913 = !DILocation(line: 1259, column: 19, scope: !572, inlinedAt: !1905)
!1914 = !{!1915, !1284, i64 16}
!1915 = !{!"", !1296, i64 0, !1284, i64 16, !1284, i64 24}
!1916 = !DILocation(line: 1260, column: 9, scope: !572, inlinedAt: !1905)
!1917 = !DILocation(line: 1261, column: 13, scope: !572, inlinedAt: !1905)
!1918 = !DILocation(line: 1261, column: 18, scope: !572, inlinedAt: !1905)
!1919 = !{!1915, !1284, i64 24}
!1920 = !DILocation(line: 1262, column: 9, scope: !1921, inlinedAt: !1905)
!1921 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 1)
!1922 = !DILocation(line: 1262, column: 9, scope: !1923, inlinedAt: !1905)
!1923 = distinct !DILexicalBlock(scope: !571, file: !1, line: 1262, column: 9)
!1924 = !DILocation(line: 1262, column: 9, scope: !571, inlinedAt: !1905)
!1925 = !DILocation(line: 1262, column: 9, scope: !1926, inlinedAt: !1905)
!1926 = !DILexicalBlockFile(scope: !1923, file: !1, discriminator: 2)
!1927 = !DILocation(line: 1262, column: 9, scope: !1928, inlinedAt: !1905)
!1928 = !DILexicalBlockFile(scope: !1929, file: !1, discriminator: 4)
!1929 = distinct !DILexicalBlock(scope: !571, file: !1, line: 1262, column: 9)
!1930 = !DILocation(line: 1262, column: 9, scope: !1931, inlinedAt: !1905)
!1931 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 6)
!1932 = !DILocation(line: 313, column: 22, scope: !780)
!1933 = !DILocation(line: 342, column: 12, scope: !780)
!1934 = !DILocation(line: 343, column: 14, scope: !794)
!1935 = !DILocation(line: 343, column: 9, scope: !780)
!1936 = !DILocation(line: 344, column: 9, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 1)
!1938 = !DILocation(line: 344, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !792, file: !1, line: 344, column: 9)
!1940 = !DILocation(line: 344, column: 9, scope: !792)
!1941 = !DILocation(line: 344, column: 9, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1939, file: !1, discriminator: 3)
!1943 = !DILocation(line: 347, column: 14, scope: !780)
!1944 = !DILocation(line: 313, column: 29, scope: !780)
!1945 = !DILocation(line: 348, column: 5, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !796, file: !1, discriminator: 1)
!1947 = !DILocation(line: 348, column: 5, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !796, file: !1, line: 348, column: 5)
!1949 = !DILocation(line: 348, column: 5, scope: !796)
!1950 = !DILocation(line: 348, column: 5, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1948, file: !1, discriminator: 3)
!1952 = !DILocation(line: 349, column: 5, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !798, file: !1, discriminator: 1)
!1954 = !DILocation(line: 349, column: 5, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !798, file: !1, line: 349, column: 5)
!1956 = !DILocation(line: 349, column: 5, scope: !798)
!1957 = !DILocation(line: 349, column: 5, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1955, file: !1, discriminator: 3)
!1959 = !DILocation(line: 351, column: 1, scope: !780)
!1960 = !DILocation(line: 158, column: 40, scope: !809)
!1961 = !DILocation(line: 158, column: 57, scope: !809)
!1962 = !DILocation(line: 158, column: 72, scope: !809)
!1963 = !DILocation(line: 63, column: 45, scope: !682, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 162, column: 9, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !809, file: !1, line: 162, column: 9)
!1966 = !DILocation(line: 65, column: 13, scope: !1458, inlinedAt: !1964)
!1967 = !DILocation(line: 65, column: 9, scope: !682, inlinedAt: !1964)
!1968 = !DILocation(line: 66, column: 9, scope: !1461, inlinedAt: !1964)
!1969 = !DILocation(line: 63, column: 61, scope: !682, inlinedAt: !1964)
!1970 = !DILocation(line: 160, column: 15, scope: !809)
!1971 = !DILocation(line: 68, column: 9, scope: !1461, inlinedAt: !1964)
!1972 = !DILocation(line: 70, column: 10, scope: !1466, inlinedAt: !1964)
!1973 = !DILocation(line: 70, column: 10, scope: !1468, inlinedAt: !1964)
!1974 = !DILocation(line: 70, column: 9, scope: !682, inlinedAt: !1964)
!1975 = !DILocation(line: 71, column: 22, scope: !1471, inlinedAt: !1964)
!1976 = !DILocation(line: 162, column: 9, scope: !1965)
!1977 = !DILocation(line: 19, column: 23, scope: !1370, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1964)
!1979 = !DILocation(line: 19, column: 31, scope: !1370, inlinedAt: !1978)
!1980 = !DILocation(line: 19, column: 34, scope: !1374, inlinedAt: !1978)
!1981 = !DILocation(line: 19, column: 9, scope: !627, inlinedAt: !1978)
!1982 = !DILocation(line: 21, column: 5, scope: !627, inlinedAt: !1978)
!1983 = !DILocation(line: 74, column: 22, scope: !1471, inlinedAt: !1964)
!1984 = !DILocation(line: 75, column: 29, scope: !1471, inlinedAt: !1964)
!1985 = !DILocation(line: 75, column: 37, scope: !1471, inlinedAt: !1964)
!1986 = !DILocation(line: 76, column: 27, scope: !1471, inlinedAt: !1964)
!1987 = !DILocation(line: 76, column: 36, scope: !1471, inlinedAt: !1964)
!1988 = !DILocation(line: 71, column: 9, scope: !1471, inlinedAt: !1964)
!1989 = !DILocation(line: 78, column: 9, scope: !1471, inlinedAt: !1964)
!1990 = !DILocation(line: 1246, column: 25, scope: !564, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 164, column: 12, scope: !809)
!1992 = !DILocation(line: 1246, column: 38, scope: !564, inlinedAt: !1991)
!1993 = !DILocation(line: 1256, column: 10, scope: !564, inlinedAt: !1991)
!1994 = !DILocation(line: 1257, column: 12, scope: !573, inlinedAt: !1991)
!1995 = !DILocation(line: 1257, column: 9, scope: !564, inlinedAt: !1991)
!1996 = !DILocation(line: 164, column: 26, scope: !809)
!1997 = !DILocation(line: 1258, column: 9, scope: !572, inlinedAt: !1991)
!1998 = !DILocation(line: 1259, column: 13, scope: !572, inlinedAt: !1991)
!1999 = !DILocation(line: 1259, column: 19, scope: !572, inlinedAt: !1991)
!2000 = !DILocation(line: 1260, column: 9, scope: !572, inlinedAt: !1991)
!2001 = !DILocation(line: 1261, column: 13, scope: !572, inlinedAt: !1991)
!2002 = !DILocation(line: 1261, column: 18, scope: !572, inlinedAt: !1991)
!2003 = !DILocation(line: 1262, column: 9, scope: !1921, inlinedAt: !1991)
!2004 = !DILocation(line: 1262, column: 9, scope: !1923, inlinedAt: !1991)
!2005 = !DILocation(line: 1262, column: 9, scope: !571, inlinedAt: !1991)
!2006 = !DILocation(line: 1262, column: 9, scope: !1926, inlinedAt: !1991)
!2007 = !DILocation(line: 1262, column: 9, scope: !1928, inlinedAt: !1991)
!2008 = !DILocation(line: 1262, column: 9, scope: !1931, inlinedAt: !1991)
!2009 = !DILocation(line: 1263, column: 5, scope: !572, inlinedAt: !1991)
!2010 = !DILocation(line: 165, column: 1, scope: !809)
!2011 = !DILocation(line: 701, column: 33, scope: !520)
!2012 = !DILocation(line: 701, column: 52, scope: !520)
!2013 = !DILocation(line: 706, column: 60, scope: !520)
!2014 = !{!2015, !1284, i64 0}
!2015 = !{!"PyMethodDef", !1284, i64 0, !1284, i64 8, !1311, i64 16, !1284, i64 24}
!2016 = !DILocation(line: 680, column: 25, scope: !815, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 705, column: 36, scope: !520)
!2018 = !DILocation(line: 680, column: 50, scope: !815, inlinedAt: !2017)
!2019 = !DILocation(line: 680, column: 68, scope: !815, inlinedAt: !2017)
!2020 = !DILocation(line: 684, column: 30, scope: !815, inlinedAt: !2017)
!2021 = !DILocation(line: 684, column: 13, scope: !815, inlinedAt: !2017)
!2022 = !DILocation(line: 682, column: 20, scope: !815, inlinedAt: !2017)
!2023 = !DILocation(line: 685, column: 15, scope: !826, inlinedAt: !2017)
!2024 = !DILocation(line: 685, column: 9, scope: !815, inlinedAt: !2017)
!2025 = !DILocation(line: 686, column: 9, scope: !2026, inlinedAt: !2017)
!2026 = distinct !DILexicalBlock(scope: !824, file: !1, line: 686, column: 9)
!2027 = !DILocation(line: 686, column: 9, scope: !824, inlinedAt: !2017)
!2028 = !DILocation(line: 686, column: 9, scope: !2029, inlinedAt: !2017)
!2029 = !DILexicalBlockFile(scope: !2026, file: !1, discriminator: 2)
!2030 = !DILocation(line: 687, column: 16, scope: !825, inlinedAt: !2017)
!2031 = !DILocation(line: 687, column: 23, scope: !825, inlinedAt: !2017)
!2032 = !DILocation(line: 688, column: 25, scope: !825, inlinedAt: !2017)
!2033 = !DILocation(line: 688, column: 16, scope: !825, inlinedAt: !2017)
!2034 = !DILocation(line: 688, column: 23, scope: !825, inlinedAt: !2017)
!2035 = !DILocation(line: 689, column: 27, scope: !830, inlinedAt: !2017)
!2036 = !DILocation(line: 689, column: 13, scope: !825, inlinedAt: !2017)
!2037 = !DILocation(line: 690, column: 13, scope: !2038, inlinedAt: !2017)
!2038 = !DILexicalBlockFile(scope: !828, file: !1, discriminator: 1)
!2039 = !DILocation(line: 690, column: 13, scope: !2040, inlinedAt: !2017)
!2040 = distinct !DILexicalBlock(scope: !828, file: !1, line: 690, column: 13)
!2041 = !DILocation(line: 690, column: 13, scope: !828, inlinedAt: !2017)
!2042 = !DILocation(line: 690, column: 13, scope: !2043, inlinedAt: !2017)
!2043 = !DILexicalBlockFile(scope: !2040, file: !1, discriminator: 3)
!2044 = !DILocation(line: 705, column: 36, scope: !520)
!2045 = !DILocation(line: 694, column: 20, scope: !2046, inlinedAt: !2017)
!2046 = distinct !DILexicalBlock(scope: !830, file: !1, line: 693, column: 14)
!2047 = !DILocation(line: 694, column: 31, scope: !2046, inlinedAt: !2017)
!2048 = !DILocation(line: 708, column: 16, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !520, file: !1, line: 707, column: 9)
!2050 = !DILocation(line: 708, column: 25, scope: !2049)
!2051 = !DILocation(line: 708, column: 9, scope: !2049)
!2052 = !DILocation(line: 709, column: 12, scope: !520)
!2053 = !DILocation(line: 709, column: 5, scope: !520)
!2054 = !DILocation(line: 713, column: 38, scope: !527)
!2055 = !DILocation(line: 713, column: 57, scope: !527)
!2056 = !DILocation(line: 718, column: 60, scope: !527)
!2057 = !DILocation(line: 680, column: 25, scope: !815, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 717, column: 36, scope: !527)
!2059 = !DILocation(line: 680, column: 50, scope: !815, inlinedAt: !2058)
!2060 = !DILocation(line: 680, column: 68, scope: !815, inlinedAt: !2058)
!2061 = !DILocation(line: 684, column: 30, scope: !815, inlinedAt: !2058)
!2062 = !DILocation(line: 684, column: 13, scope: !815, inlinedAt: !2058)
!2063 = !DILocation(line: 682, column: 20, scope: !815, inlinedAt: !2058)
!2064 = !DILocation(line: 685, column: 15, scope: !826, inlinedAt: !2058)
!2065 = !DILocation(line: 685, column: 9, scope: !815, inlinedAt: !2058)
!2066 = !DILocation(line: 686, column: 9, scope: !2026, inlinedAt: !2058)
!2067 = !DILocation(line: 686, column: 9, scope: !824, inlinedAt: !2058)
!2068 = !DILocation(line: 686, column: 9, scope: !2029, inlinedAt: !2058)
!2069 = !DILocation(line: 687, column: 16, scope: !825, inlinedAt: !2058)
!2070 = !DILocation(line: 687, column: 23, scope: !825, inlinedAt: !2058)
!2071 = !DILocation(line: 688, column: 25, scope: !825, inlinedAt: !2058)
!2072 = !DILocation(line: 688, column: 16, scope: !825, inlinedAt: !2058)
!2073 = !DILocation(line: 688, column: 23, scope: !825, inlinedAt: !2058)
!2074 = !DILocation(line: 689, column: 27, scope: !830, inlinedAt: !2058)
!2075 = !DILocation(line: 689, column: 13, scope: !825, inlinedAt: !2058)
!2076 = !DILocation(line: 690, column: 13, scope: !2038, inlinedAt: !2058)
!2077 = !DILocation(line: 690, column: 13, scope: !2040, inlinedAt: !2058)
!2078 = !DILocation(line: 690, column: 13, scope: !828, inlinedAt: !2058)
!2079 = !DILocation(line: 690, column: 13, scope: !2043, inlinedAt: !2058)
!2080 = !DILocation(line: 717, column: 36, scope: !527)
!2081 = !DILocation(line: 694, column: 20, scope: !2046, inlinedAt: !2058)
!2082 = !DILocation(line: 694, column: 31, scope: !2046, inlinedAt: !2058)
!2083 = !DILocation(line: 720, column: 16, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !527, file: !1, line: 719, column: 9)
!2085 = !DILocation(line: 720, column: 25, scope: !2084)
!2086 = !DILocation(line: 720, column: 9, scope: !2084)
!2087 = !DILocation(line: 721, column: 12, scope: !527)
!2088 = !DILocation(line: 721, column: 5, scope: !527)
!2089 = !DILocation(line: 725, column: 33, scope: !532)
!2090 = !DILocation(line: 725, column: 52, scope: !532)
!2091 = !DILocation(line: 730, column: 60, scope: !532)
!2092 = !{!2093, !1284, i64 0}
!2093 = !{!"PyMemberDef", !1284, i64 0, !1311, i64 8, !1287, i64 16, !1311, i64 24, !1284, i64 32}
!2094 = !DILocation(line: 680, column: 25, scope: !815, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 729, column: 36, scope: !532)
!2096 = !DILocation(line: 680, column: 50, scope: !815, inlinedAt: !2095)
!2097 = !DILocation(line: 680, column: 68, scope: !815, inlinedAt: !2095)
!2098 = !DILocation(line: 684, column: 30, scope: !815, inlinedAt: !2095)
!2099 = !DILocation(line: 684, column: 13, scope: !815, inlinedAt: !2095)
!2100 = !DILocation(line: 682, column: 20, scope: !815, inlinedAt: !2095)
!2101 = !DILocation(line: 685, column: 15, scope: !826, inlinedAt: !2095)
!2102 = !DILocation(line: 685, column: 9, scope: !815, inlinedAt: !2095)
!2103 = !DILocation(line: 686, column: 9, scope: !2026, inlinedAt: !2095)
!2104 = !DILocation(line: 686, column: 9, scope: !824, inlinedAt: !2095)
!2105 = !DILocation(line: 686, column: 9, scope: !2029, inlinedAt: !2095)
!2106 = !DILocation(line: 687, column: 16, scope: !825, inlinedAt: !2095)
!2107 = !DILocation(line: 687, column: 23, scope: !825, inlinedAt: !2095)
!2108 = !DILocation(line: 688, column: 25, scope: !825, inlinedAt: !2095)
!2109 = !DILocation(line: 688, column: 16, scope: !825, inlinedAt: !2095)
!2110 = !DILocation(line: 688, column: 23, scope: !825, inlinedAt: !2095)
!2111 = !DILocation(line: 689, column: 27, scope: !830, inlinedAt: !2095)
!2112 = !DILocation(line: 689, column: 13, scope: !825, inlinedAt: !2095)
!2113 = !DILocation(line: 690, column: 13, scope: !2038, inlinedAt: !2095)
!2114 = !DILocation(line: 690, column: 13, scope: !2040, inlinedAt: !2095)
!2115 = !DILocation(line: 690, column: 13, scope: !828, inlinedAt: !2095)
!2116 = !DILocation(line: 690, column: 13, scope: !2043, inlinedAt: !2095)
!2117 = !DILocation(line: 729, column: 36, scope: !532)
!2118 = !DILocation(line: 694, column: 20, scope: !2046, inlinedAt: !2095)
!2119 = !DILocation(line: 694, column: 31, scope: !2046, inlinedAt: !2095)
!2120 = !DILocation(line: 732, column: 16, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !532, file: !1, line: 731, column: 9)
!2122 = !DILocation(line: 732, column: 25, scope: !2121)
!2123 = !DILocation(line: 732, column: 9, scope: !2121)
!2124 = !DILocation(line: 733, column: 12, scope: !532)
!2125 = !DILocation(line: 733, column: 5, scope: !532)
!2126 = !DILocation(line: 737, column: 33, scope: !541)
!2127 = !DILocation(line: 737, column: 52, scope: !541)
!2128 = !DILocation(line: 742, column: 60, scope: !541)
!2129 = !{!1780, !1284, i64 0}
!2130 = !DILocation(line: 680, column: 25, scope: !815, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 741, column: 36, scope: !541)
!2132 = !DILocation(line: 680, column: 50, scope: !815, inlinedAt: !2131)
!2133 = !DILocation(line: 680, column: 68, scope: !815, inlinedAt: !2131)
!2134 = !DILocation(line: 684, column: 30, scope: !815, inlinedAt: !2131)
!2135 = !DILocation(line: 684, column: 13, scope: !815, inlinedAt: !2131)
!2136 = !DILocation(line: 682, column: 20, scope: !815, inlinedAt: !2131)
!2137 = !DILocation(line: 685, column: 15, scope: !826, inlinedAt: !2131)
!2138 = !DILocation(line: 685, column: 9, scope: !815, inlinedAt: !2131)
!2139 = !DILocation(line: 686, column: 9, scope: !2026, inlinedAt: !2131)
!2140 = !DILocation(line: 686, column: 9, scope: !824, inlinedAt: !2131)
!2141 = !DILocation(line: 686, column: 9, scope: !2029, inlinedAt: !2131)
!2142 = !DILocation(line: 687, column: 16, scope: !825, inlinedAt: !2131)
!2143 = !DILocation(line: 687, column: 23, scope: !825, inlinedAt: !2131)
!2144 = !DILocation(line: 688, column: 25, scope: !825, inlinedAt: !2131)
!2145 = !DILocation(line: 688, column: 16, scope: !825, inlinedAt: !2131)
!2146 = !DILocation(line: 688, column: 23, scope: !825, inlinedAt: !2131)
!2147 = !DILocation(line: 689, column: 27, scope: !830, inlinedAt: !2131)
!2148 = !DILocation(line: 689, column: 13, scope: !825, inlinedAt: !2131)
!2149 = !DILocation(line: 690, column: 13, scope: !2038, inlinedAt: !2131)
!2150 = !DILocation(line: 690, column: 13, scope: !2040, inlinedAt: !2131)
!2151 = !DILocation(line: 690, column: 13, scope: !828, inlinedAt: !2131)
!2152 = !DILocation(line: 690, column: 13, scope: !2043, inlinedAt: !2131)
!2153 = !DILocation(line: 741, column: 36, scope: !541)
!2154 = !DILocation(line: 694, column: 20, scope: !2046, inlinedAt: !2131)
!2155 = !DILocation(line: 694, column: 31, scope: !2046, inlinedAt: !2131)
!2156 = !DILocation(line: 744, column: 16, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !541, file: !1, line: 743, column: 9)
!2158 = !DILocation(line: 744, column: 25, scope: !2157)
!2159 = !DILocation(line: 744, column: 9, scope: !2157)
!2160 = !DILocation(line: 745, column: 12, scope: !541)
!2161 = !DILocation(line: 745, column: 5, scope: !541)
!2162 = !DILocation(line: 749, column: 34, scope: !548)
!2163 = !DILocation(line: 749, column: 60, scope: !548)
!2164 = !DILocation(line: 749, column: 72, scope: !548)
!2165 = !DILocation(line: 754, column: 58, scope: !548)
!2166 = !{!2167, !1284, i64 0}
!2167 = !{!"wrapperbase", !1284, i64 0, !1311, i64 8, !1284, i64 16, !1284, i64 24, !1284, i64 32, !1311, i64 40, !1284, i64 48}
!2168 = !DILocation(line: 680, column: 25, scope: !815, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 753, column: 37, scope: !548)
!2170 = !DILocation(line: 680, column: 50, scope: !815, inlinedAt: !2169)
!2171 = !DILocation(line: 680, column: 68, scope: !815, inlinedAt: !2169)
!2172 = !DILocation(line: 684, column: 30, scope: !815, inlinedAt: !2169)
!2173 = !DILocation(line: 684, column: 13, scope: !815, inlinedAt: !2169)
!2174 = !DILocation(line: 682, column: 20, scope: !815, inlinedAt: !2169)
!2175 = !DILocation(line: 685, column: 15, scope: !826, inlinedAt: !2169)
!2176 = !DILocation(line: 685, column: 9, scope: !815, inlinedAt: !2169)
!2177 = !DILocation(line: 686, column: 9, scope: !2026, inlinedAt: !2169)
!2178 = !DILocation(line: 686, column: 9, scope: !824, inlinedAt: !2169)
!2179 = !DILocation(line: 686, column: 9, scope: !2029, inlinedAt: !2169)
!2180 = !DILocation(line: 687, column: 16, scope: !825, inlinedAt: !2169)
!2181 = !DILocation(line: 687, column: 23, scope: !825, inlinedAt: !2169)
!2182 = !DILocation(line: 688, column: 25, scope: !825, inlinedAt: !2169)
!2183 = !DILocation(line: 688, column: 16, scope: !825, inlinedAt: !2169)
!2184 = !DILocation(line: 688, column: 23, scope: !825, inlinedAt: !2169)
!2185 = !DILocation(line: 689, column: 27, scope: !830, inlinedAt: !2169)
!2186 = !DILocation(line: 689, column: 13, scope: !825, inlinedAt: !2169)
!2187 = !DILocation(line: 690, column: 13, scope: !2038, inlinedAt: !2169)
!2188 = !DILocation(line: 690, column: 13, scope: !2040, inlinedAt: !2169)
!2189 = !DILocation(line: 690, column: 13, scope: !828, inlinedAt: !2169)
!2190 = !DILocation(line: 690, column: 13, scope: !2043, inlinedAt: !2169)
!2191 = !DILocation(line: 753, column: 37, scope: !548)
!2192 = !DILocation(line: 694, column: 20, scope: !2046, inlinedAt: !2169)
!2193 = !DILocation(line: 694, column: 31, scope: !2046, inlinedAt: !2169)
!2194 = !DILocation(line: 756, column: 16, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !1, line: 755, column: 24)
!2196 = distinct !DILexicalBlock(scope: !548, file: !1, line: 755, column: 9)
!2197 = !DILocation(line: 756, column: 23, scope: !2195)
!2198 = !{!2199, !1284, i64 40}
!2199 = !{!"", !1295, i64 0, !1284, i64 40, !1284, i64 48}
!2200 = !DILocation(line: 757, column: 16, scope: !2195)
!2201 = !DILocation(line: 757, column: 26, scope: !2195)
!2202 = !{!2199, !1284, i64 48}
!2203 = !DILocation(line: 758, column: 5, scope: !2195)
!2204 = !DILocation(line: 759, column: 12, scope: !548)
!2205 = !DILocation(line: 759, column: 5, scope: !548)
!2206 = !DILocation(line: 871, column: 42, scope: !831)
!2207 = !DILocation(line: 873, column: 5, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !837, file: !1, discriminator: 1)
!2209 = !DILocation(line: 873, column: 5, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !1, discriminator: 2)
!2211 = distinct !DILexicalBlock(scope: !837, file: !1, line: 873, column: 5)
!2212 = !DILocation(line: 873, column: 5, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !837, file: !1, discriminator: 4)
!2214 = !DILocation(line: 874, column: 5, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !839, file: !1, discriminator: 1)
!2216 = !{!2217, !1284, i64 16}
!2217 = !{!"", !1296, i64 0, !1284, i64 16}
!2218 = !DILocation(line: 874, column: 5, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !839, file: !1, line: 874, column: 5)
!2220 = !DILocation(line: 874, column: 5, scope: !839)
!2221 = !DILocation(line: 874, column: 5, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2219, file: !1, discriminator: 3)
!2223 = !DILocation(line: 875, column: 21, scope: !831)
!2224 = !DILocation(line: 875, column: 5, scope: !831)
!2225 = !DILocation(line: 876, column: 1, scope: !831)
!2226 = !DILocation(line: 891, column: 39, scope: !840)
!2227 = !DILocation(line: 893, column: 57, scope: !840)
!2228 = !DILocation(line: 893, column: 12, scope: !840)
!2229 = !DILocation(line: 893, column: 5, scope: !840)
!2230 = !DILocation(line: 885, column: 38, scope: !862)
!2231 = !DILocation(line: 887, column: 29, scope: !862)
!2232 = !DILocation(line: 887, column: 12, scope: !862)
!2233 = !DILocation(line: 887, column: 5, scope: !862)
!2234 = !DILocation(line: 897, column: 33, scope: !865)
!2235 = !DILocation(line: 897, column: 49, scope: !865)
!2236 = !DILocation(line: 897, column: 62, scope: !865)
!2237 = !DILocation(line: 900, column: 5, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 1)
!2239 = !DILocation(line: 900, column: 5, scope: !874)
!2240 = !DILocation(line: 900, column: 5, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 2)
!2242 = !DILocation(line: 900, column: 5, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !872, file: !1, line: 900, column: 5)
!2244 = !DILocation(line: 901, column: 5, scope: !865)
!2245 = !DILocation(line: 902, column: 1, scope: !865)
!2246 = !DILocation(line: 905, column: 46, scope: !875)
!2247 = !DILocation(line: 905, column: 59, scope: !875)
!2248 = !DILocation(line: 905, column: 66, scope: !875)
!2249 = !DILocation(line: 907, column: 36, scope: !875)
!2250 = !DILocation(line: 907, column: 12, scope: !875)
!2251 = !DILocation(line: 907, column: 5, scope: !875)
!2252 = !DILocation(line: 879, column: 42, scope: !882)
!2253 = !DILocation(line: 881, column: 33, scope: !882)
!2254 = !DILocation(line: 881, column: 12, scope: !882)
!2255 = !DILocation(line: 881, column: 5, scope: !882)
!2256 = !DILocation(line: 925, column: 32, scope: !903)
!2257 = !DILocation(line: 925, column: 48, scope: !903)
!2258 = !DILocation(line: 925, column: 64, scope: !903)
!2259 = !DILocation(line: 928, column: 5, scope: !903)
!2260 = !DILocation(line: 928, column: 15, scope: !903)
!2261 = !DILocation(line: 931, column: 10, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !903, file: !1, line: 931, column: 9)
!2263 = !DILocation(line: 931, column: 9, scope: !903)
!2264 = !DILocation(line: 935, column: 36, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !903, file: !1, line: 935, column: 9)
!2266 = !DILocation(line: 911, column: 38, scope: !914, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 935, column: 9, scope: !2265)
!2268 = !DILocation(line: 913, column: 10, scope: !2269, inlinedAt: !2267)
!2269 = distinct !DILexicalBlock(scope: !914, file: !1, line: 913, column: 9)
!2270 = !DILocation(line: 918, column: 21, scope: !2271, inlinedAt: !2267)
!2271 = distinct !DILexicalBlock(scope: !2269, file: !1, line: 915, column: 36)
!2272 = !DILocation(line: 914, column: 9, scope: !2269, inlinedAt: !2267)
!2273 = !DILocation(line: 914, column: 12, scope: !2274, inlinedAt: !2267)
!2274 = !DILexicalBlockFile(scope: !2269, file: !1, discriminator: 1)
!2275 = !DILocation(line: 915, column: 9, scope: !2269, inlinedAt: !2267)
!2276 = !DILocation(line: 916, column: 22, scope: !2271, inlinedAt: !2267)
!2277 = !DILocation(line: 918, column: 39, scope: !2271, inlinedAt: !2267)
!2278 = !DILocation(line: 916, column: 9, scope: !2271, inlinedAt: !2267)
!2279 = !DILocation(line: 935, column: 9, scope: !903)
!2280 = !DILocation(line: 938, column: 20, scope: !903)
!2281 = !DILocation(line: 939, column: 22, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !903, file: !1, line: 939, column: 9)
!2283 = !DILocation(line: 939, column: 9, scope: !903)
!2284 = !DILocation(line: 941, column: 5, scope: !903)
!2285 = !DILocation(line: 942, column: 29, scope: !903)
!2286 = !DILocation(line: 942, column: 27, scope: !903)
!2287 = !DILocation(line: 943, column: 5, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 1)
!2289 = !DILocation(line: 943, column: 5, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !913, file: !1, line: 943, column: 5)
!2291 = !DILocation(line: 943, column: 5, scope: !913)
!2292 = !DILocation(line: 943, column: 5, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2290, file: !1, discriminator: 2)
!2294 = !DILocation(line: 943, column: 5, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2296, file: !1, discriminator: 4)
!2296 = distinct !DILexicalBlock(scope: !913, file: !1, line: 943, column: 5)
!2297 = !DILocation(line: 943, column: 5, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 6)
!2299 = !DILocation(line: 944, column: 5, scope: !903)
!2300 = !DILocation(line: 945, column: 1, scope: !903)
!2301 = !DILocation(line: 990, column: 27, scope: !556)
!2302 = !DILocation(line: 911, column: 38, scope: !914, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 994, column: 9, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !556, file: !1, line: 994, column: 9)
!2305 = !DILocation(line: 913, column: 10, scope: !2269, inlinedAt: !2303)
!2306 = !DILocation(line: 918, column: 21, scope: !2271, inlinedAt: !2303)
!2307 = !DILocation(line: 914, column: 9, scope: !2269, inlinedAt: !2303)
!2308 = !DILocation(line: 914, column: 12, scope: !2274, inlinedAt: !2303)
!2309 = !DILocation(line: 915, column: 9, scope: !2269, inlinedAt: !2303)
!2310 = !DILocation(line: 916, column: 22, scope: !2271, inlinedAt: !2303)
!2311 = !DILocation(line: 918, column: 39, scope: !2271, inlinedAt: !2303)
!2312 = !DILocation(line: 916, column: 9, scope: !2271, inlinedAt: !2303)
!2313 = !DILocation(line: 994, column: 9, scope: !556)
!2314 = !DILocation(line: 997, column: 10, scope: !556)
!2315 = !DILocation(line: 998, column: 12, scope: !563)
!2316 = !DILocation(line: 998, column: 9, scope: !556)
!2317 = !DILocation(line: 999, column: 9, scope: !562)
!2318 = !DILocation(line: 1000, column: 13, scope: !562)
!2319 = !DILocation(line: 1000, column: 21, scope: !562)
!2320 = !DILocation(line: 1001, column: 9, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!2322 = !DILocation(line: 1001, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !561, file: !1, line: 1001, column: 9)
!2324 = !DILocation(line: 1001, column: 9, scope: !561)
!2325 = !DILocation(line: 1001, column: 9, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 2)
!2327 = !DILocation(line: 1001, column: 9, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2329, file: !1, discriminator: 4)
!2329 = distinct !DILexicalBlock(scope: !561, file: !1, line: 1001, column: 9)
!2330 = !DILocation(line: 1001, column: 9, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 6)
!2332 = !DILocation(line: 1002, column: 5, scope: !562)
!2333 = !DILocation(line: 1004, column: 1, scope: !556)
!2334 = !DILocation(line: 1021, column: 32, scope: !917)
!2335 = !DILocation(line: 1023, column: 25, scope: !917)
!2336 = !DILocation(line: 1023, column: 5, scope: !917)
!2337 = !DILocation(line: 1024, column: 5, scope: !925)
!2338 = !{}
!2339 = !DILocation(line: 1024, column: 5, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !1, discriminator: 7)
!2341 = !DILexicalBlockFile(scope: !925, file: !1, discriminator: 6)
!2342 = !DILocation(line: 1024, column: 5, scope: !940)
!2343 = !{!2344, !1311, i64 160}
!2344 = !{!"_ts", !1284, i64 0, !1284, i64 8, !1284, i64 16, !1284, i64 24, !1311, i64 32, !1285, i64 36, !1285, i64 37, !1311, i64 40, !1311, i64 44, !1284, i64 48, !1284, i64 56, !1284, i64 64, !1284, i64 72, !1284, i64 80, !1284, i64 88, !1284, i64 96, !1284, i64 104, !1284, i64 112, !1284, i64 120, !1284, i64 128, !1311, i64 136, !1284, i64 144, !1287, i64 152, !1311, i64 160, !1284, i64 168, !1284, i64 176, !1284, i64 184}
!2345 = !DILocation(line: 1024, column: 5, scope: !923)
!2346 = !DILocation(line: 1024, column: 5, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 14)
!2348 = !DILocation(line: 1025, column: 5, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 1)
!2350 = !DILocation(line: 1025, column: 5, scope: !943)
!2351 = !DILocation(line: 1025, column: 5, scope: !938)
!2352 = !DILocation(line: 1025, column: 5, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 4)
!2354 = !DILocation(line: 1025, column: 5, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !942, file: !1, line: 1025, column: 5)
!2356 = !DILocation(line: 1025, column: 5, scope: !942)
!2357 = !DILocation(line: 1025, column: 5, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2355, file: !1, discriminator: 6)
!2359 = !DILocation(line: 1026, column: 5, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 1)
!2361 = !DILocation(line: 1026, column: 5, scope: !948)
!2362 = !DILocation(line: 1026, column: 5, scope: !945)
!2363 = !DILocation(line: 1026, column: 5, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !947, file: !1, discriminator: 4)
!2365 = !DILocation(line: 1026, column: 5, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1026, column: 5)
!2367 = !DILocation(line: 1026, column: 5, scope: !947)
!2368 = !DILocation(line: 1026, column: 5, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2366, file: !1, discriminator: 6)
!2370 = !DILocation(line: 1027, column: 5, scope: !939)
!2371 = !DILocation(line: 1028, column: 5, scope: !939)
!2372 = !DILocation(line: 1028, column: 5, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !939, file: !1, line: 1028, column: 5)
!2374 = !{!2344, !1284, i64 168}
!2375 = !DILocation(line: 1028, column: 5, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2373, file: !1, discriminator: 1)
!2377 = !DILocation(line: 1028, column: 5, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2373, file: !1, discriminator: 3)
!2379 = !DILocation(line: 1028, column: 5, scope: !940)
!2380 = !DILocation(line: 1029, column: 1, scope: !917)
!2381 = !DILocation(line: 1104, column: 29, scope: !966)
!2382 = !DILocation(line: 1107, column: 36, scope: !966)
!2383 = !DILocation(line: 1107, column: 43, scope: !966)
!2384 = !DILocation(line: 1107, column: 51, scope: !966)
!2385 = !DILocation(line: 1108, column: 36, scope: !966)
!2386 = !DILocation(line: 1108, column: 42, scope: !966)
!2387 = !DILocation(line: 1108, column: 51, scope: !966)
!2388 = !DILocation(line: 1106, column: 12, scope: !966)
!2389 = !DILocation(line: 1106, column: 5, scope: !966)
!2390 = !DILocation(line: 1088, column: 29, scope: !971)
!2391 = !DILocation(line: 1091, column: 29, scope: !971)
!2392 = !DILocation(line: 1091, column: 9, scope: !971)
!2393 = !DILocation(line: 1090, column: 15, scope: !971)
!2394 = !DILocation(line: 1092, column: 11, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !971, file: !1, line: 1092, column: 9)
!2396 = !DILocation(line: 1092, column: 9, scope: !971)
!2397 = !DILocation(line: 1094, column: 27, scope: !971)
!2398 = !DILocation(line: 1094, column: 9, scope: !971)
!2399 = !DILocation(line: 1090, column: 18, scope: !971)
!2400 = !DILocation(line: 1095, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !971, file: !1, line: 1095, column: 9)
!2402 = !DILocation(line: 1095, column: 9, scope: !971)
!2403 = !DILocation(line: 1097, column: 11, scope: !971)
!2404 = !DILocation(line: 1098, column: 11, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !971, file: !1, line: 1098, column: 9)
!2406 = !DILocation(line: 1098, column: 9, scope: !971)
!2407 = !DILocation(line: 1100, column: 5, scope: !971)
!2408 = !DILocation(line: 1101, column: 1, scope: !971)
!2409 = !DILocation(line: 1179, column: 29, scope: !978)
!2410 = !DILocation(line: 1179, column: 43, scope: !978)
!2411 = !DILocation(line: 1179, column: 59, scope: !978)
!2412 = !DILocation(line: 1181, column: 31, scope: !978)
!2413 = !DILocation(line: 1181, column: 38, scope: !978)
!2414 = !DILocation(line: 1181, column: 46, scope: !978)
!2415 = !{!2167, !1284, i64 24}
!2416 = !DILocation(line: 1181, column: 17, scope: !978)
!2417 = !DILocation(line: 1182, column: 26, scope: !978)
!2418 = !DILocation(line: 1182, column: 15, scope: !978)
!2419 = !DILocation(line: 1184, column: 28, scope: !989)
!2420 = !{!2167, !1311, i64 40}
!2421 = !DILocation(line: 1184, column: 34, scope: !989)
!2422 = !DILocation(line: 1184, column: 9, scope: !978)
!2423 = !DILocation(line: 1185, column: 31, scope: !988)
!2424 = !DILocation(line: 1185, column: 26, scope: !988)
!2425 = !DILocation(line: 1186, column: 45, scope: !988)
!2426 = !DILocation(line: 1186, column: 16, scope: !988)
!2427 = !DILocation(line: 1189, column: 14, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !978, file: !1, line: 1189, column: 9)
!2429 = !DILocation(line: 1189, column: 22, scope: !2428)
!2430 = !DILocation(line: 1189, column: 27, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2428, file: !1, discriminator: 1)
!2432 = !DILocation(line: 1189, column: 46, scope: !2428)
!2433 = !DILocation(line: 1189, column: 49, scope: !2428)
!2434 = !DILocation(line: 1189, column: 67, scope: !2428)
!2435 = !DILocation(line: 1195, column: 39, scope: !978)
!2436 = !DILocation(line: 1189, column: 9, scope: !978)
!2437 = !DILocation(line: 1192, column: 33, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2428, file: !1, line: 1189, column: 74)
!2439 = !DILocation(line: 1190, column: 22, scope: !2438)
!2440 = !DILocation(line: 1192, column: 41, scope: !2438)
!2441 = !DILocation(line: 1190, column: 9, scope: !2438)
!2442 = !DILocation(line: 1193, column: 9, scope: !2438)
!2443 = !DILocation(line: 1195, column: 46, scope: !978)
!2444 = !DILocation(line: 1195, column: 12, scope: !978)
!2445 = !DILocation(line: 1195, column: 5, scope: !978)
!2446 = !DILocation(line: 1196, column: 1, scope: !978)
!2447 = !DILocation(line: 1199, column: 28, scope: !990)
!2448 = !DILocation(line: 1199, column: 44, scope: !990)
!2449 = !DILocation(line: 1199, column: 57, scope: !990)
!2450 = !DILocation(line: 1202, column: 5, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !998, file: !1, discriminator: 1)
!2452 = !DILocation(line: 1202, column: 5, scope: !999)
!2453 = !DILocation(line: 1202, column: 5, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !997, file: !1, discriminator: 2)
!2455 = !DILocation(line: 1202, column: 5, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !997, file: !1, line: 1202, column: 5)
!2457 = !DILocation(line: 1203, column: 5, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 1)
!2459 = !DILocation(line: 1203, column: 5, scope: !1003)
!2460 = !DILocation(line: 1203, column: 5, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !1001, file: !1, discriminator: 2)
!2462 = !DILocation(line: 1203, column: 5, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 1203, column: 5)
!2464 = !DILocation(line: 1204, column: 5, scope: !990)
!2465 = !DILocation(line: 1205, column: 1, scope: !990)
!2466 = !DILocation(line: 1034, column: 31, scope: !1004)
!2467 = !DILocation(line: 1034, column: 44, scope: !1004)
!2468 = !DILocation(line: 1034, column: 51, scope: !1004)
!2469 = !DILocation(line: 1043, column: 10, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 1043, column: 9)
!2471 = !DILocation(line: 1043, column: 27, scope: !2470)
!2472 = !DILocation(line: 1043, column: 31, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2470, file: !1, discriminator: 1)
!2474 = !DILocation(line: 1043, column: 9, scope: !1004)
!2475 = !DILocation(line: 1037, column: 15, scope: !1004)
!2476 = !DILocation(line: 1045, column: 9, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 1043, column: 49)
!2478 = !DILocation(line: 1046, column: 9, scope: !2477)
!2479 = !DILocation(line: 1051, column: 37, scope: !1004)
!2480 = !DILocation(line: 1038, column: 27, scope: !1004)
!2481 = !DILocation(line: 1052, column: 37, scope: !1004)
!2482 = !DILocation(line: 1038, column: 37, scope: !1004)
!2483 = !DILocation(line: 1053, column: 17, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 1053, column: 9)
!2485 = !DILocation(line: 1053, column: 9, scope: !1004)
!2486 = !DILocation(line: 1054, column: 35, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !1, line: 1053, column: 29)
!2488 = !DILocation(line: 1055, column: 35, scope: !2487)
!2489 = !DILocation(line: 1056, column: 16, scope: !2487)
!2490 = !DILocation(line: 1056, column: 9, scope: !2487)
!2491 = !DILocation(line: 1059, column: 22, scope: !1004)
!2492 = !DILocation(line: 1060, column: 5, scope: !1004)
!2493 = !DILocation(line: 1066, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 1060, column: 17)
!2495 = !DILocation(line: 1068, column: 13, scope: !2494)
!2496 = !DILocation(line: 1069, column: 9, scope: !2494)
!2497 = !DILocation(line: 1071, column: 13, scope: !2494)
!2498 = !DILocation(line: 1072, column: 9, scope: !2494)
!2499 = !DILocation(line: 1074, column: 13, scope: !2494)
!2500 = !DILocation(line: 1075, column: 9, scope: !2494)
!2501 = !DILocation(line: 1077, column: 13, scope: !2494)
!2502 = !DILocation(line: 1078, column: 9, scope: !2494)
!2503 = !DILocation(line: 1080, column: 9, scope: !2494)
!2504 = !DILocation(line: 1081, column: 9, scope: !2494)
!2505 = !DILocation(line: 1083, column: 5, scope: !1004)
!2506 = !DILocation(line: 1084, column: 5, scope: !1004)
!2507 = !DILocation(line: 1085, column: 1, scope: !1004)
!2508 = !DILocation(line: 1246, column: 25, scope: !564)
!2509 = !DILocation(line: 1246, column: 38, scope: !564)
!2510 = !DILocation(line: 1256, column: 10, scope: !564)
!2511 = !DILocation(line: 1257, column: 12, scope: !573)
!2512 = !DILocation(line: 1257, column: 9, scope: !564)
!2513 = !DILocation(line: 1258, column: 9, scope: !572)
!2514 = !DILocation(line: 1259, column: 13, scope: !572)
!2515 = !DILocation(line: 1259, column: 19, scope: !572)
!2516 = !DILocation(line: 1260, column: 9, scope: !572)
!2517 = !DILocation(line: 1261, column: 13, scope: !572)
!2518 = !DILocation(line: 1261, column: 18, scope: !572)
!2519 = !DILocation(line: 1262, column: 9, scope: !1921)
!2520 = !DILocation(line: 1262, column: 9, scope: !1923)
!2521 = !DILocation(line: 1262, column: 9, scope: !571)
!2522 = !DILocation(line: 1262, column: 9, scope: !1926)
!2523 = !DILocation(line: 1262, column: 9, scope: !1928)
!2524 = !DILocation(line: 1262, column: 9, scope: !1931)
!2525 = !DILocation(line: 1263, column: 5, scope: !572)
!2526 = !DILocation(line: 1264, column: 5, scope: !564)
!2527 = !DILocation(line: 1360, column: 28, scope: !1043)
!2528 = !DILocation(line: 1364, column: 5, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !1048, file: !1, discriminator: 1)
!2530 = !DILocation(line: 1364, column: 5, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2532, file: !1, discriminator: 2)
!2532 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 1364, column: 5)
!2533 = !DILocation(line: 1364, column: 5, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !1048, file: !1, discriminator: 4)
!2535 = !DILocation(line: 1365, column: 5, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !1050, file: !1, discriminator: 1)
!2537 = !{!2538, !1284, i64 16}
!2538 = !{!"", !1296, i64 0, !1284, i64 16, !1284, i64 24, !1284, i64 32, !1284, i64 40, !1311, i64 48}
!2539 = !DILocation(line: 1365, column: 5, scope: !1053)
!2540 = !DILocation(line: 1365, column: 5, scope: !1050)
!2541 = !DILocation(line: 1365, column: 5, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 4)
!2543 = !DILocation(line: 1365, column: 5, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 1365, column: 5)
!2545 = !DILocation(line: 1365, column: 5, scope: !1052)
!2546 = !DILocation(line: 1365, column: 5, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2544, file: !1, discriminator: 6)
!2548 = !DILocation(line: 1366, column: 5, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 1)
!2550 = !{!2538, !1284, i64 24}
!2551 = !DILocation(line: 1366, column: 5, scope: !1058)
!2552 = !DILocation(line: 1366, column: 5, scope: !1055)
!2553 = !DILocation(line: 1366, column: 5, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !1057, file: !1, discriminator: 4)
!2555 = !DILocation(line: 1366, column: 5, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 1366, column: 5)
!2557 = !DILocation(line: 1366, column: 5, scope: !1057)
!2558 = !DILocation(line: 1366, column: 5, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2556, file: !1, discriminator: 6)
!2560 = !DILocation(line: 1367, column: 5, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !1060, file: !1, discriminator: 1)
!2562 = !{!2538, !1284, i64 32}
!2563 = !DILocation(line: 1367, column: 5, scope: !1063)
!2564 = !DILocation(line: 1367, column: 5, scope: !1060)
!2565 = !DILocation(line: 1367, column: 5, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !1062, file: !1, discriminator: 4)
!2567 = !DILocation(line: 1367, column: 5, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 1367, column: 5)
!2569 = !DILocation(line: 1367, column: 5, scope: !1062)
!2570 = !DILocation(line: 1367, column: 5, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2568, file: !1, discriminator: 6)
!2572 = !DILocation(line: 1368, column: 5, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 1)
!2574 = !{!2538, !1284, i64 40}
!2575 = !DILocation(line: 1368, column: 5, scope: !1068)
!2576 = !DILocation(line: 1368, column: 5, scope: !1065)
!2577 = !DILocation(line: 1368, column: 5, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !1067, file: !1, discriminator: 4)
!2579 = !DILocation(line: 1368, column: 5, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 1368, column: 5)
!2581 = !DILocation(line: 1368, column: 5, scope: !1067)
!2582 = !DILocation(line: 1368, column: 5, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2580, file: !1, discriminator: 6)
!2584 = !DILocation(line: 1369, column: 11, scope: !1043)
!2585 = !DILocation(line: 1369, column: 20, scope: !1043)
!2586 = !{!1309, !1284, i64 320}
!2587 = !DILocation(line: 1369, column: 28, scope: !1043)
!2588 = !DILocation(line: 1369, column: 5, scope: !1043)
!2589 = !DILocation(line: 1370, column: 1, scope: !1043)
!2590 = !DILocation(line: 1577, column: 29, scope: !1069)
!2591 = !DILocation(line: 1577, column: 45, scope: !1069)
!2592 = !DILocation(line: 1577, column: 58, scope: !1069)
!2593 = !DILocation(line: 1580, column: 5, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !1077, file: !1, discriminator: 1)
!2595 = !DILocation(line: 1580, column: 5, scope: !1078)
!2596 = !DILocation(line: 1580, column: 5, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !1076, file: !1, discriminator: 2)
!2598 = !DILocation(line: 1580, column: 5, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 1580, column: 5)
!2600 = !DILocation(line: 1581, column: 5, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !1081, file: !1, discriminator: 1)
!2602 = !DILocation(line: 1581, column: 5, scope: !1082)
!2603 = !DILocation(line: 1581, column: 5, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !1080, file: !1, discriminator: 2)
!2605 = !DILocation(line: 1581, column: 5, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 1581, column: 5)
!2607 = !DILocation(line: 1582, column: 5, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 1)
!2609 = !DILocation(line: 1582, column: 5, scope: !1086)
!2610 = !DILocation(line: 1582, column: 5, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 2)
!2612 = !DILocation(line: 1582, column: 5, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 1582, column: 5)
!2614 = !DILocation(line: 1583, column: 5, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !1089, file: !1, discriminator: 1)
!2616 = !DILocation(line: 1583, column: 5, scope: !1090)
!2617 = !DILocation(line: 1583, column: 5, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !1088, file: !1, discriminator: 2)
!2619 = !DILocation(line: 1583, column: 5, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 1583, column: 5)
!2621 = !DILocation(line: 1584, column: 5, scope: !1069)
!2622 = !DILocation(line: 1585, column: 1, scope: !1069)
!2623 = !DILocation(line: 1373, column: 30, scope: !1145)
!2624 = !DILocation(line: 1373, column: 46, scope: !1145)
!2625 = !DILocation(line: 1373, column: 61, scope: !1145)
!2626 = !DILocation(line: 1377, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 1377, column: 9)
!2628 = !DILocation(line: 1377, column: 28, scope: !2627)
!2629 = !DILocation(line: 1377, column: 21, scope: !2627)
!2630 = !DILocation(line: 1378, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 1377, column: 40)
!2632 = !DILocation(line: 1379, column: 9, scope: !2631)
!2633 = !DILocation(line: 1381, column: 13, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 1381, column: 9)
!2635 = !DILocation(line: 1381, column: 22, scope: !2634)
!2636 = !DILocation(line: 1381, column: 9, scope: !1145)
!2637 = !DILocation(line: 1382, column: 25, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 1381, column: 31)
!2639 = !DILocation(line: 1382, column: 9, scope: !2638)
!2640 = !DILocation(line: 1383, column: 9, scope: !2638)
!2641 = !DILocation(line: 1385, column: 12, scope: !1145)
!2642 = !DILocation(line: 1385, column: 5, scope: !1145)
!2643 = !DILocation(line: 1386, column: 1, scope: !1145)
!2644 = !DILocation(line: 1389, column: 30, scope: !1151)
!2645 = !DILocation(line: 1389, column: 46, scope: !1151)
!2646 = !DILocation(line: 1389, column: 61, scope: !1151)
!2647 = !DILocation(line: 1394, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 1394, column: 9)
!2649 = !DILocation(line: 1395, column: 20, scope: !2648)
!2650 = !DILocation(line: 1397, column: 20, scope: !2648)
!2651 = !DILocation(line: 1394, column: 9, scope: !1151)
!2652 = !DILocation(line: 1398, column: 14, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 1398, column: 9)
!2654 = !DILocation(line: 1398, column: 9, scope: !1151)
!2655 = !DILocation(line: 1399, column: 25, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !1, line: 1398, column: 23)
!2657 = !DILocation(line: 1400, column: 25, scope: !2656)
!2658 = !DILocation(line: 1399, column: 9, scope: !2656)
!2659 = !DILocation(line: 1403, column: 9, scope: !2656)
!2660 = !DILocation(line: 1405, column: 9, scope: !1151)
!2661 = !DILocation(line: 1406, column: 15, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 1405, column: 9)
!2663 = !DILocation(line: 1392, column: 22, scope: !1151)
!2664 = !DILocation(line: 1406, column: 9, scope: !2662)
!2665 = !DILocation(line: 1408, column: 15, scope: !2662)
!2666 = !DILocation(line: 1409, column: 13, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 1409, column: 9)
!2668 = !DILocation(line: 1409, column: 9, scope: !1151)
!2669 = !DILocation(line: 1411, column: 5, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !1160, file: !1, discriminator: 1)
!2671 = !DILocation(line: 1411, column: 5, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 1411, column: 5)
!2673 = !DILocation(line: 1411, column: 5, scope: !1160)
!2674 = !DILocation(line: 1411, column: 5, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2672, file: !1, discriminator: 3)
!2676 = !DILocation(line: 1413, column: 1, scope: !1151)
!2677 = !DILocation(line: 1453, column: 25, scope: !1161)
!2678 = !DILocation(line: 1453, column: 41, scope: !1161)
!2679 = !DILocation(line: 1453, column: 57, scope: !1161)
!2680 = !DILocation(line: 1455, column: 5, scope: !1161)
!2681 = !DILocation(line: 1455, column: 15, scope: !1161)
!2682 = !DILocation(line: 1455, column: 28, scope: !1161)
!2683 = !DILocation(line: 1455, column: 41, scope: !1161)
!2684 = !DILocation(line: 1455, column: 54, scope: !1161)
!2685 = !DILocation(line: 1459, column: 10, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1459, column: 9)
!2687 = !DILocation(line: 1459, column: 9, scope: !1161)
!2688 = !DILocation(line: 1463, column: 9, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1463, column: 9)
!2690 = !DILocation(line: 1463, column: 13, scope: !2689)
!2691 = !DILocation(line: 1463, column: 9, scope: !1161)
!2692 = !DILocation(line: 1464, column: 13, scope: !2689)
!2693 = !DILocation(line: 1464, column: 9, scope: !2689)
!2694 = !DILocation(line: 1475, column: 22, scope: !1161)
!2695 = !DILocation(line: 1470, column: 5, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 1)
!2697 = !DILocation(line: 1465, column: 9, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1465, column: 9)
!2699 = !DILocation(line: 1465, column: 13, scope: !2698)
!2700 = !DILocation(line: 1465, column: 9, scope: !1161)
!2701 = !DILocation(line: 1466, column: 13, scope: !2698)
!2702 = !DILocation(line: 1466, column: 9, scope: !2698)
!2703 = !DILocation(line: 1476, column: 22, scope: !1161)
!2704 = !DILocation(line: 1471, column: 5, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !1174, file: !1, discriminator: 1)
!2706 = !DILocation(line: 1467, column: 9, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 1467, column: 9)
!2708 = !DILocation(line: 1467, column: 13, scope: !2707)
!2709 = !DILocation(line: 1467, column: 9, scope: !1161)
!2710 = !DILocation(line: 1468, column: 13, scope: !2707)
!2711 = !DILocation(line: 1468, column: 9, scope: !2707)
!2712 = !DILocation(line: 1477, column: 22, scope: !1161)
!2713 = !DILocation(line: 1472, column: 5, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 1)
!2715 = !DILocation(line: 1470, column: 5, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 1470, column: 5)
!2717 = !DILocation(line: 1470, column: 5, scope: !1172)
!2718 = !DILocation(line: 1470, column: 5, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2716, file: !1, discriminator: 2)
!2720 = !DILocation(line: 1471, column: 5, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 1471, column: 5)
!2722 = !DILocation(line: 1471, column: 5, scope: !1174)
!2723 = !DILocation(line: 1471, column: 5, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2721, file: !1, discriminator: 2)
!2725 = !DILocation(line: 1472, column: 5, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 1472, column: 5)
!2727 = !DILocation(line: 1472, column: 5, scope: !1176)
!2728 = !DILocation(line: 1472, column: 5, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2726, file: !1, discriminator: 2)
!2730 = !DILocation(line: 1482, column: 10, scope: !1181)
!2731 = !DILocation(line: 1473, column: 5, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !1178, file: !1, discriminator: 1)
!2733 = !DILocation(line: 1473, column: 5, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 1473, column: 5)
!2735 = !DILocation(line: 1478, column: 22, scope: !1161)
!2736 = !DILocation(line: 1473, column: 5, scope: !1178)
!2737 = !DILocation(line: 1473, column: 5, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2734, file: !1, discriminator: 2)
!2739 = !DILocation(line: 1475, column: 20, scope: !1161)
!2740 = !DILocation(line: 1476, column: 11, scope: !1161)
!2741 = !DILocation(line: 1476, column: 20, scope: !1161)
!2742 = !DILocation(line: 1477, column: 20, scope: !1161)
!2743 = !DILocation(line: 1478, column: 11, scope: !1161)
!2744 = !DILocation(line: 1478, column: 20, scope: !1161)
!2745 = !DILocation(line: 1479, column: 11, scope: !1161)
!2746 = !DILocation(line: 1479, column: 22, scope: !1161)
!2747 = !{!2538, !1311, i64 48}
!2748 = !DILocation(line: 1482, column: 29, scope: !1181)
!2749 = !DILocation(line: 1482, column: 22, scope: !1181)
!2750 = !DILocation(line: 1482, column: 48, scope: !1181)
!2751 = !DILocation(line: 1484, column: 29, scope: !1180)
!2752 = !DILocation(line: 1484, column: 19, scope: !1180)
!2753 = !DILocation(line: 1485, column: 13, scope: !1187)
!2754 = !DILocation(line: 1485, column: 13, scope: !1180)
!2755 = !DILocation(line: 1486, column: 17, scope: !1185)
!2756 = !DILocation(line: 1486, column: 31, scope: !1185)
!2757 = !DILocation(line: 1486, column: 17, scope: !1186)
!2758 = !DILocation(line: 1487, column: 17, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !1183, file: !1, discriminator: 1)
!2760 = !DILocation(line: 1487, column: 17, scope: !1190)
!2761 = !DILocation(line: 1487, column: 17, scope: !1183)
!2762 = !DILocation(line: 1487, column: 17, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !1189, file: !1, discriminator: 4)
!2764 = !DILocation(line: 1487, column: 17, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 1487, column: 17)
!2766 = !DILocation(line: 1487, column: 17, scope: !1189)
!2767 = !DILocation(line: 1487, column: 17, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 6)
!2769 = !DILocation(line: 1488, column: 32, scope: !1184)
!2770 = !DILocation(line: 1489, column: 13, scope: !1184)
!2771 = !DILocation(line: 1495, column: 27, scope: !1192)
!2772 = !DILocation(line: 1495, column: 21, scope: !1192)
!2773 = !DILocation(line: 1496, column: 17, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !1194, file: !1, discriminator: 1)
!2775 = !DILocation(line: 1496, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 1496, column: 17)
!2777 = !DILocation(line: 1496, column: 17, scope: !1194)
!2778 = !DILocation(line: 1496, column: 17, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2776, file: !1, discriminator: 3)
!2780 = !DILocation(line: 1500, column: 30, scope: !1186)
!2781 = !DILocation(line: 1501, column: 9, scope: !1186)
!2782 = !DILocation(line: 1502, column: 41, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 1502, column: 18)
!2784 = !DILocation(line: 1502, column: 18, scope: !2783)
!2785 = !DILocation(line: 1502, column: 18, scope: !1187)
!2786 = !DILocation(line: 1503, column: 13, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !1, line: 1502, column: 59)
!2788 = !DILocation(line: 1511, column: 1, scope: !1161)
!2789 = !DILocation(line: 404, column: 29, scope: !642)
!2790 = !DILocation(line: 410, column: 16, scope: !642)
!2791 = !DILocation(line: 406, column: 15, scope: !642)
!2792 = !DILocation(line: 411, column: 15, scope: !642)
!2793 = !DILocation(line: 407, column: 15, scope: !642)
!2794 = !DILocation(line: 412, column: 44, scope: !642)
!2795 = !DILocation(line: 413, column: 26, scope: !642)
!2796 = !DILocation(line: 412, column: 12, scope: !642)
!2797 = !DILocation(line: 412, column: 5, scope: !642)
!2798 = !DILocation(line: 354, column: 37, scope: !647)
!2799 = !DILocation(line: 354, column: 50, scope: !647)
!2800 = !DILocation(line: 356, column: 49, scope: !647)
!2801 = !DILocation(line: 356, column: 59, scope: !647)
!2802 = !DILocation(line: 356, column: 85, scope: !647)
!2803 = !{!2015, !1284, i64 24}
!2804 = !DILocation(line: 356, column: 12, scope: !647)
!2805 = !DILocation(line: 356, column: 5, scope: !647)
!2806 = !DILocation(line: 395, column: 35, scope: !653)
!2807 = !DILocation(line: 397, column: 16, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !653, file: !1, line: 397, column: 9)
!2809 = !DILocation(line: 397, column: 27, scope: !2808)
!2810 = !DILocation(line: 397, column: 9, scope: !653)
!2811 = !DILocation(line: 366, column: 35, scope: !658, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 398, column: 29, scope: !2808)
!2813 = !DILocation(line: 371, column: 16, scope: !2814, inlinedAt: !2812)
!2814 = distinct !DILexicalBlock(scope: !658, file: !1, line: 371, column: 9)
!2815 = !DILocation(line: 371, column: 23, scope: !2814, inlinedAt: !2812)
!2816 = !DILocation(line: 371, column: 31, scope: !2814, inlinedAt: !2812)
!2817 = !DILocation(line: 371, column: 35, scope: !2818, inlinedAt: !2812)
!2818 = !DILexicalBlockFile(scope: !2814, file: !1, discriminator: 1)
!2819 = !DILocation(line: 371, column: 9, scope: !658, inlinedAt: !2812)
!2820 = !DILocation(line: 372, column: 25, scope: !2821, inlinedAt: !2812)
!2821 = distinct !DILexicalBlock(scope: !2814, file: !1, line: 371, column: 67)
!2822 = !DILocation(line: 372, column: 9, scope: !2821, inlinedAt: !2812)
!2823 = !DILocation(line: 374, column: 9, scope: !2821, inlinedAt: !2812)
!2824 = !DILocation(line: 377, column: 60, scope: !658, inlinedAt: !2812)
!2825 = !DILocation(line: 377, column: 21, scope: !658, inlinedAt: !2812)
!2826 = !DILocation(line: 368, column: 15, scope: !658, inlinedAt: !2812)
!2827 = !DILocation(line: 379, column: 23, scope: !2828, inlinedAt: !2812)
!2828 = distinct !DILexicalBlock(scope: !658, file: !1, line: 379, column: 9)
!2829 = !DILocation(line: 379, column: 9, scope: !658, inlinedAt: !2812)
!2830 = !DILocation(line: 382, column: 10, scope: !666, inlinedAt: !2812)
!2831 = !DILocation(line: 382, column: 9, scope: !658, inlinedAt: !2812)
!2832 = !DILocation(line: 383, column: 25, scope: !665, inlinedAt: !2812)
!2833 = !DILocation(line: 383, column: 9, scope: !665, inlinedAt: !2812)
!2834 = !DILocation(line: 385, column: 9, scope: !2835, inlinedAt: !2812)
!2835 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 1)
!2836 = !DILocation(line: 385, column: 9, scope: !2837, inlinedAt: !2812)
!2837 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 4)
!2838 = !DILocation(line: 385, column: 9, scope: !2839, inlinedAt: !2812)
!2839 = distinct !DILexicalBlock(scope: !668, file: !1, line: 385, column: 9)
!2840 = !DILocation(line: 385, column: 9, scope: !668, inlinedAt: !2812)
!2841 = !DILocation(line: 385, column: 9, scope: !2842, inlinedAt: !2812)
!2842 = !DILexicalBlockFile(scope: !2839, file: !1, discriminator: 6)
!2843 = !DILocation(line: 398, column: 29, scope: !2808)
!2844 = !DILocation(line: 389, column: 63, scope: !658, inlinedAt: !2812)
!2845 = !DILocation(line: 389, column: 11, scope: !658, inlinedAt: !2812)
!2846 = !DILocation(line: 368, column: 31, scope: !658, inlinedAt: !2812)
!2847 = !DILocation(line: 390, column: 5, scope: !2848, inlinedAt: !2812)
!2848 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!2849 = !DILocation(line: 390, column: 5, scope: !2850, inlinedAt: !2812)
!2850 = distinct !DILexicalBlock(scope: !671, file: !1, line: 390, column: 5)
!2851 = !DILocation(line: 390, column: 5, scope: !671, inlinedAt: !2812)
!2852 = !DILocation(line: 390, column: 5, scope: !2853, inlinedAt: !2812)
!2853 = !DILexicalBlockFile(scope: !2850, file: !1, discriminator: 3)
!2854 = !DILocation(line: 398, column: 27, scope: !2808)
!2855 = !DILocation(line: 399, column: 5, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 1)
!2857 = !DILocation(line: 399, column: 5, scope: !657)
!2858 = !DILocation(line: 399, column: 5, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !657, file: !1, line: 399, column: 5)
!2860 = !DILocation(line: 399, column: 5, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2859, file: !1, discriminator: 2)
!2862 = !DILocation(line: 400, column: 19, scope: !653)
!2863 = !DILocation(line: 400, column: 5, scope: !653)
!2864 = !DILocation(line: 360, column: 48, scope: !672)
!2865 = !DILocation(line: 360, column: 61, scope: !672)
!2866 = !DILocation(line: 362, column: 59, scope: !672)
!2867 = !DILocation(line: 362, column: 69, scope: !672)
!2868 = !DILocation(line: 362, column: 95, scope: !672)
!2869 = !DILocation(line: 362, column: 12, scope: !672)
!2870 = !DILocation(line: 362, column: 5, scope: !672)
!2871 = !DILocation(line: 435, column: 37, scope: !717)
!2872 = !DILocation(line: 435, column: 50, scope: !717)
!2873 = !DILocation(line: 437, column: 16, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !717, file: !1, line: 437, column: 9)
!2875 = !DILocation(line: 437, column: 26, scope: !2874)
!2876 = !{!2093, !1284, i64 32}
!2877 = !DILocation(line: 437, column: 30, scope: !2874)
!2878 = !DILocation(line: 437, column: 9, scope: !717)
!2879 = !DILocation(line: 438, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 437, column: 39)
!2881 = !DILocation(line: 439, column: 9, scope: !2880)
!2882 = !DILocation(line: 441, column: 12, scope: !717)
!2883 = !DILocation(line: 441, column: 5, scope: !717)
!2884 = !DILocation(line: 442, column: 1, scope: !717)
!2885 = !DILocation(line: 451, column: 37, scope: !753)
!2886 = !DILocation(line: 451, column: 50, scope: !753)
!2887 = !DILocation(line: 453, column: 16, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !753, file: !1, line: 453, column: 9)
!2889 = !DILocation(line: 453, column: 26, scope: !2888)
!2890 = !{!1780, !1284, i64 24}
!2891 = !DILocation(line: 453, column: 30, scope: !2888)
!2892 = !DILocation(line: 453, column: 9, scope: !753)
!2893 = !DILocation(line: 454, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !1, line: 453, column: 39)
!2895 = !DILocation(line: 455, column: 9, scope: !2894)
!2896 = !DILocation(line: 457, column: 12, scope: !753)
!2897 = !DILocation(line: 457, column: 5, scope: !753)
!2898 = !DILocation(line: 458, column: 1, scope: !753)
!2899 = !DILocation(line: 467, column: 44, scope: !799)
!2900 = !DILocation(line: 467, column: 57, scope: !799)
!2901 = !DILocation(line: 469, column: 49, scope: !799)
!2902 = !DILocation(line: 469, column: 57, scope: !799)
!2903 = !DILocation(line: 469, column: 78, scope: !799)
!2904 = !{!2167, !1284, i64 32}
!2905 = !DILocation(line: 469, column: 12, scope: !799)
!2906 = !DILocation(line: 469, column: 5, scope: !799)
!2907 = !DILocation(line: 473, column: 55, scope: !805)
!2908 = !DILocation(line: 473, column: 68, scope: !805)
!2909 = !DILocation(line: 475, column: 59, scope: !805)
!2910 = !DILocation(line: 475, column: 67, scope: !805)
!2911 = !DILocation(line: 475, column: 88, scope: !805)
!2912 = !DILocation(line: 475, column: 12, scope: !805)
!2913 = !DILocation(line: 475, column: 5, scope: !805)
!2914 = !DILocation(line: 792, column: 43, scope: !845)
!2915 = !DILocation(line: 792, column: 57, scope: !845)
!2916 = !DILocation(line: 794, column: 9, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !845, file: !1, line: 794, column: 9)
!2918 = !DILocation(line: 794, column: 9, scope: !845)
!2919 = !DILocation(line: 795, column: 16, scope: !2917)
!2920 = !DILocation(line: 795, column: 9, scope: !2917)
!2921 = !DILocation(line: 797, column: 16, scope: !2917)
!2922 = !DILocation(line: 797, column: 9, scope: !2917)
!2923 = !DILocation(line: 798, column: 1, scope: !845)
!2924 = !DILocation(line: 774, column: 38, scope: !851)
!2925 = !DILocation(line: 776, column: 30, scope: !851)
!2926 = !DILocation(line: 776, column: 12, scope: !851)
!2927 = !DILocation(line: 776, column: 5, scope: !851)
!2928 = !DILocation(line: 780, column: 42, scope: !856)
!2929 = !DILocation(line: 780, column: 56, scope: !856)
!2930 = !DILocation(line: 782, column: 33, scope: !856)
!2931 = !DILocation(line: 782, column: 12, scope: !856)
!2932 = !DILocation(line: 782, column: 5, scope: !856)
!2933 = !DILocation(line: 814, column: 38, scope: !885)
!2934 = !DILocation(line: 814, column: 52, scope: !885)
!2935 = !DILocation(line: 816, column: 5, scope: !885)
!2936 = !DILocation(line: 816, column: 21, scope: !885)
!2937 = !DILocation(line: 816, column: 15, scope: !885)
!2938 = !DILocation(line: 819, column: 10, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !885, file: !1, line: 819, column: 9)
!2940 = !DILocation(line: 819, column: 9, scope: !885)
!2941 = !DILocation(line: 821, column: 39, scope: !885)
!2942 = !DILocation(line: 821, column: 67, scope: !885)
!2943 = !DILocation(line: 821, column: 72, scope: !885)
!2944 = !DILocation(line: 821, column: 12, scope: !885)
!2945 = !DILocation(line: 821, column: 5, scope: !885)
!2946 = !DILocation(line: 822, column: 1, scope: !885)
!2947 = !DILocation(line: 825, column: 39, scope: !891)
!2948 = !DILocation(line: 828, column: 39, scope: !891)
!2949 = !DILocation(line: 828, column: 12, scope: !891)
!2950 = !DILocation(line: 828, column: 5, scope: !891)
!2951 = !DILocation(line: 832, column: 41, scope: !894)
!2952 = !DILocation(line: 835, column: 39, scope: !894)
!2953 = !DILocation(line: 835, column: 12, scope: !894)
!2954 = !DILocation(line: 835, column: 5, scope: !894)
!2955 = !DILocation(line: 839, column: 40, scope: !897)
!2956 = !DILocation(line: 842, column: 39, scope: !897)
!2957 = !DILocation(line: 842, column: 12, scope: !897)
!2958 = !DILocation(line: 842, column: 5, scope: !897)
!2959 = !DILocation(line: 846, column: 39, scope: !900)
!2960 = !DILocation(line: 849, column: 39, scope: !900)
!2961 = !DILocation(line: 849, column: 12, scope: !900)
!2962 = !DILocation(line: 849, column: 5, scope: !900)
!2963 = !DILocation(line: 1113, column: 31, scope: !1017)
!2964 = !DILocation(line: 1119, column: 16, scope: !1017)
!2965 = !DILocation(line: 1115, column: 15, scope: !1017)
!2966 = !DILocation(line: 1120, column: 15, scope: !1017)
!2967 = !DILocation(line: 1116, column: 15, scope: !1017)
!2968 = !DILocation(line: 1121, column: 48, scope: !1017)
!2969 = !DILocation(line: 1121, column: 54, scope: !1017)
!2970 = !DILocation(line: 1121, column: 12, scope: !1017)
!2971 = !DILocation(line: 1121, column: 5, scope: !1017)
!2972 = !DILocation(line: 1135, column: 33, scope: !1022)
!2973 = !DILocation(line: 1137, column: 31, scope: !1022)
!2974 = !DILocation(line: 1137, column: 15, scope: !1022)
!2975 = !DILocation(line: 1139, column: 5, scope: !1022)
!2976 = !DILocation(line: 1140, column: 5, scope: !1022)
!2977 = !DILocation(line: 1144, column: 29, scope: !1026)
!2978 = !DILocation(line: 1146, column: 25, scope: !1026)
!2979 = !DILocation(line: 1146, column: 32, scope: !1026)
!2980 = !DILocation(line: 1146, column: 40, scope: !1026)
!2981 = !DILocation(line: 1146, column: 17, scope: !1026)
!2982 = !DILocation(line: 1148, column: 12, scope: !1026)
!2983 = !DILocation(line: 1148, column: 5, scope: !1026)
!2984 = !DILocation(line: 1164, column: 33, scope: !1030)
!2985 = !DILocation(line: 1166, column: 52, scope: !1030)
!2986 = !DILocation(line: 1166, column: 12, scope: !1030)
!2987 = !DILocation(line: 1166, column: 5, scope: !1030)
!2988 = !DILocation(line: 1152, column: 28, scope: !1033)
!2989 = !DILocation(line: 1152, column: 38, scope: !1033)
!2990 = !DILocation(line: 1154, column: 46, scope: !1033)
!2991 = !DILocation(line: 1154, column: 53, scope: !1033)
!2992 = !DILocation(line: 1154, column: 61, scope: !1033)
!2993 = !DILocation(line: 1154, column: 86, scope: !1033)
!2994 = !DILocation(line: 1154, column: 12, scope: !1033)
!2995 = !DILocation(line: 1154, column: 5, scope: !1033)
!2996 = !DILocation(line: 1158, column: 39, scope: !1039)
!2997 = !DILocation(line: 1158, column: 49, scope: !1039)
!2998 = !DILocation(line: 1160, column: 56, scope: !1039)
!2999 = !DILocation(line: 1160, column: 63, scope: !1039)
!3000 = !DILocation(line: 1160, column: 71, scope: !1039)
!3001 = !DILocation(line: 1160, column: 96, scope: !1039)
!3002 = !DILocation(line: 1160, column: 12, scope: !1039)
!3003 = !DILocation(line: 1160, column: 5, scope: !1039)
!3004 = !DILocation(line: 1325, column: 27, scope: !1091)
!3005 = !DILocation(line: 1325, column: 43, scope: !1091)
!3006 = !DILocation(line: 1327, column: 12, scope: !1091)
!3007 = !DILocation(line: 1327, column: 5, scope: !1091)
!3008 = !DILocation(line: 1335, column: 27, scope: !1130)
!3009 = !DILocation(line: 1335, column: 43, scope: !1130)
!3010 = !DILocation(line: 1337, column: 12, scope: !1130)
!3011 = !DILocation(line: 1337, column: 5, scope: !1130)
!3012 = !DILocation(line: 1345, column: 28, scope: !1134)
!3013 = !DILocation(line: 1345, column: 44, scope: !1134)
!3014 = !DILocation(line: 1347, column: 12, scope: !1134)
!3015 = !DILocation(line: 1347, column: 5, scope: !1134)
!3016 = !DILocation(line: 1416, column: 25, scope: !1095)
!3017 = !DILocation(line: 1416, column: 40, scope: !1095)
!3018 = !DILocation(line: 1416, column: 55, scope: !1095)
!3019 = !DILocation(line: 1416, column: 70, scope: !1095)
!3020 = !DILocation(line: 1421, column: 12, scope: !1095)
!3021 = !DILocation(line: 1419, column: 21, scope: !1095)
!3022 = !DILocation(line: 1422, column: 14, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 1422, column: 9)
!3024 = !DILocation(line: 1422, column: 9, scope: !1095)
!3025 = !DILocation(line: 1425, column: 13, scope: !1110)
!3026 = !DILocation(line: 1425, column: 28, scope: !1110)
!3027 = !DILocation(line: 1425, column: 21, scope: !1110)
!3028 = !DILocation(line: 1426, column: 9, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 1)
!3030 = !DILocation(line: 1426, column: 9, scope: !1108)
!3031 = !DILocation(line: 1426, column: 9, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !1112, file: !1, discriminator: 4)
!3033 = !DILocation(line: 1426, column: 9, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 1426, column: 9)
!3035 = !DILocation(line: 1426, column: 9, scope: !1112)
!3036 = !DILocation(line: 1426, column: 9, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3034, file: !1, discriminator: 6)
!3038 = !DILocation(line: 1427, column: 21, scope: !1109)
!3039 = !DILocation(line: 1427, column: 15, scope: !1109)
!3040 = !DILocation(line: 1428, column: 5, scope: !1109)
!3041 = !DILocation(line: 1429, column: 13, scope: !1117)
!3042 = !DILocation(line: 1429, column: 28, scope: !1117)
!3043 = !DILocation(line: 1429, column: 21, scope: !1117)
!3044 = !DILocation(line: 1430, column: 9, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !1115, file: !1, discriminator: 1)
!3046 = !DILocation(line: 1430, column: 9, scope: !1115)
!3047 = !DILocation(line: 1430, column: 9, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !1119, file: !1, discriminator: 4)
!3049 = !DILocation(line: 1430, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 1430, column: 9)
!3051 = !DILocation(line: 1430, column: 9, scope: !1119)
!3052 = !DILocation(line: 1430, column: 9, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3050, file: !1, discriminator: 6)
!3054 = !DILocation(line: 1431, column: 21, scope: !1116)
!3055 = !DILocation(line: 1431, column: 15, scope: !1116)
!3056 = !DILocation(line: 1432, column: 5, scope: !1116)
!3057 = !DILocation(line: 1433, column: 13, scope: !1124)
!3058 = !DILocation(line: 1433, column: 28, scope: !1124)
!3059 = !DILocation(line: 1433, column: 21, scope: !1124)
!3060 = !DILocation(line: 1434, column: 9, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !1122, file: !1, discriminator: 1)
!3062 = !DILocation(line: 1434, column: 9, scope: !1122)
!3063 = !DILocation(line: 1434, column: 9, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 4)
!3065 = !DILocation(line: 1434, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 1434, column: 9)
!3067 = !DILocation(line: 1434, column: 9, scope: !1126)
!3068 = !DILocation(line: 1434, column: 9, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3066, file: !1, discriminator: 6)
!3070 = !DILocation(line: 1435, column: 21, scope: !1123)
!3071 = !DILocation(line: 1435, column: 15, scope: !1123)
!3072 = !DILocation(line: 1436, column: 5, scope: !1123)
!3073 = !DILocation(line: 1437, column: 15, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 1437, column: 9)
!3075 = !DILocation(line: 1437, column: 9, scope: !3074)
!3076 = !DILocation(line: 1437, column: 33, scope: !3074)
!3077 = !DILocation(line: 1437, column: 26, scope: !3074)
!3078 = !DILocation(line: 1442, column: 21, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !1, line: 1441, column: 10)
!3080 = !DILocation(line: 1442, column: 15, scope: !3079)
!3081 = !DILocation(line: 1419, column: 28, scope: !1095)
!3082 = !DILocation(line: 1445, column: 12, scope: !1095)
!3083 = !DILocation(line: 1419, column: 15, scope: !1095)
!3084 = !DILocation(line: 1446, column: 5, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !1129, file: !1, discriminator: 1)
!3086 = !DILocation(line: 1446, column: 5, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 1446, column: 5)
!3088 = !DILocation(line: 1446, column: 5, scope: !1129)
!3089 = !DILocation(line: 1446, column: 5, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3087, file: !1, discriminator: 3)
!3091 = !DILocation(line: 1450, column: 1, scope: !1095)
!3092 = !DILocation(line: 1514, column: 51, scope: !1138)
!3093 = !DILocation(line: 1514, column: 63, scope: !1138)
!3094 = !DILocation(line: 1516, column: 42, scope: !1138)
!3095 = !DILocation(line: 1516, column: 15, scope: !1138)
!3096 = !DILocation(line: 1516, column: 9, scope: !1138)
!3097 = !DILocation(line: 1517, column: 9, scope: !1138)
!3098 = !DILocation(line: 1521, column: 9, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !1, line: 1520, column: 19)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !1, line: 1520, column: 14)
!3101 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 1517, column: 9)
!3102 = !DILocation(line: 1524, column: 38, scope: !1138)
!3103 = !DILocation(line: 1524, column: 11, scope: !1138)
!3104 = !DILocation(line: 1525, column: 9, scope: !1138)
!3105 = !DILocation(line: 1529, column: 9, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !1, line: 1528, column: 19)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !1, line: 1528, column: 14)
!3108 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 1525, column: 9)
!3109 = !DILocation(line: 1532, column: 38, scope: !1138)
!3110 = !DILocation(line: 1532, column: 11, scope: !1138)
!3111 = !DILocation(line: 1533, column: 9, scope: !1138)
!3112 = !DILocation(line: 1537, column: 9, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !1, line: 1536, column: 19)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !1, line: 1536, column: 14)
!3115 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 1533, column: 9)
!3116 = !DILocation(line: 1539, column: 5, scope: !1138)
!3117 = !DILocation(line: 1540, column: 1, scope: !1138)
