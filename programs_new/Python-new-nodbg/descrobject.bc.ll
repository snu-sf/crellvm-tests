; ModuleID = './descrobject.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyMemberDescrObject = type { %struct.PyDescrObject, %struct.PyMemberDef* }
%struct.PyGetSetDescrObject = type { %struct.PyDescrObject, %struct.PyGetSetDef* }
%struct.PyWrapperDescrObject = type { %struct.PyDescrObject, %struct.wrapperbase*, i8* }
%struct.wrapperbase = type { i8*, i32, i8*, %struct._object* (%struct._object*, %struct._object*, i8*)*, i8*, i32, %struct._object* }
%struct.mappingproxyobject = type { %struct._object, %struct._object* }
%struct.wrapperobject = type { %struct._object, %struct.PyWrapperDescrObject*, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
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
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_xdecref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyDescrObject* %0 to %union._gc_head*
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
  %14 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %16 = bitcast %struct._typeobject* %15 to %struct._object*
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
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %25 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %25, i32 0, i32 2
  %26 = load %struct._object*, %struct._object** %d_name, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp25, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  %cmp26 = icmp ne %struct._object* %27, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.body.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp29, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %30, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %33(%struct._object* %34)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.24
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %35 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %35, i32 0, i32 3
  %36 = load %struct._object*, %struct._object** %d_qualname, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp42, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  %cmp43 = icmp ne %struct._object* %37, null
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %do.body.41
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp46, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %40, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %43(%struct._object* %44)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.body.41
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %45 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %46 = bitcast %struct.PyDescrObject* %45 to i8*
  call void @PyObject_GC_Del(i8* %46)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_repr(%struct.PyMethodDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyMethodDescrObject* %0 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @methoddescr_call(%struct.PyMethodDescrObject* %descr, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %argc = alloca i64, align 8
  %self = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %argc, align 8
  %3 = load i64, i64* %argc, align 8
  %cmp = icmp slt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %6 = bitcast %struct.PyMethodDescrObject* %5 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %6)
  %7 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %8 = bitcast %struct.PyMethodDescrObject* %7 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %self, align 8
  %14 = load %struct._object*, %struct._object** %self, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %16 = bitcast %struct._typeobject* %15 to %struct._object*
  %17 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %18 = bitcast %struct.PyMethodDescrObject* %17 to %struct.PyDescrObject*
  %d_type2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8
  %20 = bitcast %struct._typeobject* %19 to %struct._object*
  %call3 = call i32 @_PyObject_RealIsSubclass(%struct._object* %16, %struct._object* %20)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.11, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %22 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %23 = bitcast %struct.PyMethodDescrObject* %22 to %struct.PyDescrObject*
  %call5 = call %struct._object* @descr_name(%struct.PyDescrObject* %23)
  %24 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %25 = bitcast %struct.PyMethodDescrObject* %24 to %struct.PyDescrObject*
  %d_type6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %d_type6, align 8
  %tp_name7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 1
  %27 = load i8*, i8** %tp_name7, align 8
  %28 = load %struct._object*, %struct._object** %self, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_name9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %tp_name9, align 8
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), %struct._object* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %27, i8* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %31 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %31, i32 0, i32 1
  %32 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8
  %33 = load %struct._object*, %struct._object** %self, align 8
  %call12 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %32, %struct._object* %33, %struct._object* null)
  store %struct._object* %call12, %struct._object** %func, align 8
  %34 = load %struct._object*, %struct._object** %func, align 8
  %cmp13 = icmp eq %struct._object* %34, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %35 = load %struct._object*, %struct._object** %args.addr, align 8
  %36 = load i64, i64* %argc, align 8
  %call16 = call %struct._object* @PyTuple_GetSlice(%struct._object* %35, i64 1, i64 %36)
  store %struct._object* %call16, %struct._object** %args.addr, align 8
  %37 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp17 = icmp eq %struct._object* %37, null
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %38 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %45 = load %struct._object*, %struct._object** %func, align 8
  %46 = load %struct._object*, %struct._object** %args.addr, align 8
  %47 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call24 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %45, %struct._object* %46, %struct._object* %47)
  store %struct._object* %call24, %struct._object** %result, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.23
  %48 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp26, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %50, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %53(%struct._object* %54)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %55 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp37, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %57, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %60(%struct._object* %61)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %62 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.46, %do.end, %if.then.14, %if.then.4, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @descr_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %descr = alloca %struct.PyDescrObject*, align 8
  %vret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyDescrObject*
  store %struct.PyDescrObject* %1, %struct.PyDescrObject** %descr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tobool = icmp ne %struct._typeobject* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %d_type1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %d_type1, align 8
  %7 = bitcast %struct._typeobject* %6 to %struct._object*
  %8 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %7, i8* %8)
  store i32 %call, i32* %vret, align 4
  %9 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %vret, align 4
  store i32 %10, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get(%struct.PyMethodDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyMethodDescrObject* %0 to %struct.PyDescrObject*
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @descr_check(%struct.PyDescrObject* %1, %struct._object* %2, %struct._object** %res)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %4, i32 0, i32 1
  %5 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call1 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %5, %struct._object* %6, %struct._object* null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @classmethoddescr_call(%struct.PyMethodDescrObject* %descr, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %argc = alloca i64, align 8
  %self = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %argc, align 8
  %3 = load i64, i64* %argc, align 8
  %cmp = icmp slt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %6 = bitcast %struct.PyMethodDescrObject* %5 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %6)
  %7 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %8 = bitcast %struct.PyMethodDescrObject* %7 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %self, align 8
  %14 = load %struct._object*, %struct._object** %self, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags, align 8
  %and = and i64 %16, 2147483648
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.10, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %18 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %19 = bitcast %struct.PyMethodDescrObject* %18 to %struct.PyDescrObject*
  %call4 = call %struct._object* @descr_name(%struct.PyDescrObject* %19)
  %20 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %21 = bitcast %struct.PyMethodDescrObject* %20 to %struct.PyDescrObject*
  %d_type5 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %d_type5, align 8
  %tp_name6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 1
  %23 = load i8*, i8** %tp_name6, align 8
  %24 = load %struct._object*, %struct._object** %self, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name8, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i32 0, i32 0), %struct._object* %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %23, i8* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %27 = load %struct._object*, %struct._object** %self, align 8
  %28 = bitcast %struct._object* %27 to %struct._typeobject*
  %29 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %30 = bitcast %struct.PyMethodDescrObject* %29 to %struct.PyDescrObject*
  %d_type11 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %d_type11, align 8
  %call12 = call i32 @PyType_IsSubtype(%struct._typeobject* %28, %struct._typeobject* %31)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.20, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %33 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %34 = bitcast %struct.PyMethodDescrObject* %33 to %struct.PyDescrObject*
  %call14 = call %struct._object* @descr_name(%struct.PyDescrObject* %34)
  %35 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %36 = bitcast %struct.PyMethodDescrObject* %35 to %struct.PyDescrObject*
  %d_type15 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %d_type15, align 8
  %tp_name16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 1
  %38 = load i8*, i8** %tp_name16, align 8
  %39 = load %struct._object*, %struct._object** %self, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_name18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 1
  %41 = load i8*, i8** %tp_name18, align 8
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %32, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i32 0, i32 0), %struct._object* %call14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %38, i8* %41)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.10
  %42 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %42, i32 0, i32 1
  %43 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8
  %44 = load %struct._object*, %struct._object** %self, align 8
  %call21 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %43, %struct._object* %44, %struct._object* null)
  store %struct._object* %call21, %struct._object** %func, align 8
  %45 = load %struct._object*, %struct._object** %func, align 8
  %cmp22 = icmp eq %struct._object* %45, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %46 = load %struct._object*, %struct._object** %args.addr, align 8
  %47 = load i64, i64* %argc, align 8
  %call25 = call %struct._object* @PyTuple_GetSlice(%struct._object* %46, i64 1, i64 %47)
  store %struct._object* %call25, %struct._object** %args.addr, align 8
  %48 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp26 = icmp eq %struct._object* %48, null
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.24
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %49 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.24
  %56 = load %struct._object*, %struct._object** %func, align 8
  %57 = load %struct._object*, %struct._object** %args.addr, align 8
  %58 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call33 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %56, %struct._object* %57, %struct._object* %58)
  store %struct._object* %call33, %struct._object** %result, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.32
  %59 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp35, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %61, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %64(%struct._object* %65)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %66 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp46, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %68, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %71(%struct._object* %72)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %73 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %73, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.55, %do.end, %if.then.23, %if.then.13, %if.then.3, %if.then
  %74 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %74
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @classmethod_get(%struct.PyMethodDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %type.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp1 = icmp ne %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %4 = bitcast %struct._typeobject* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %type.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %7 = bitcast %struct.PyMethodDescrObject* %6 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %7)
  %8 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %9 = bitcast %struct.PyMethodDescrObject* %8 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load %struct._object*, %struct._object** %type.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 2147483648
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.end.14, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %16 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %17 = bitcast %struct.PyMethodDescrObject* %16 to %struct.PyDescrObject*
  %call8 = call %struct._object* @descr_name(%struct.PyDescrObject* %17)
  %18 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %19 = bitcast %struct.PyMethodDescrObject* %18 to %struct.PyDescrObject*
  %d_type9 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %d_type9, align 8
  %tp_name10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name10, align 8
  %22 = load %struct._object*, %struct._object** %type.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_name12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 1
  %24 = load i8*, i8** %tp_name12, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i32 0, i32 0), %struct._object* %call8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %21, i8* %24)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.4
  %25 = load %struct._object*, %struct._object** %type.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct._typeobject*
  %27 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %28 = bitcast %struct.PyMethodDescrObject* %27 to %struct.PyDescrObject*
  %d_type15 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %d_type15, align 8
  %call16 = call i32 @PyType_IsSubtype(%struct._typeobject* %26, %struct._typeobject* %29)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end.23, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %31 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %32 = bitcast %struct.PyMethodDescrObject* %31 to %struct.PyDescrObject*
  %call18 = call %struct._object* @descr_name(%struct.PyDescrObject* %32)
  %33 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %34 = bitcast %struct.PyMethodDescrObject* %33 to %struct.PyDescrObject*
  %d_type19 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %d_type19, align 8
  %tp_name20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 1
  %36 = load i8*, i8** %tp_name20, align 8
  %37 = load %struct._object*, %struct._object** %type.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct._typeobject*
  %tp_name21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 1
  %39 = load i8*, i8** %tp_name21, align 8
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i32 0, i32 0), %struct._object* %call18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %36, i8* %39)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %40 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %40, i32 0, i32 1
  %41 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8
  %42 = load %struct._object*, %struct._object** %type.addr, align 8
  %call24 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %41, %struct._object* %42, %struct._object* null)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.17, %if.then.7, %if.else
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_repr(%struct.PyMemberDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8
  %0 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyMemberDescrObject* %0 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_get(%struct.PyMemberDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyMemberDescrObject* %0 to %struct.PyDescrObject*
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @descr_check(%struct.PyDescrObject* %1, %struct._object* %2, %struct._object** %res)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %5 = bitcast %struct._object* %4 to i8*
  %6 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %6, i32 0, i32 1
  %7 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8
  %call1 = call %struct._object* @PyMember_GetOne(i8* %5, %struct.PyMemberDef* %7)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @member_set(%struct.PyMemberDescrObject* %descr, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyMemberDescrObject* %0 to %struct.PyDescrObject*
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @descr_setcheck(%struct.PyDescrObject* %1, %struct._object* %2, %struct._object* %3, i32* %res)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %res, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %6 = bitcast %struct._object* %5 to i8*
  %7 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %7, i32 0, i32 1
  %8 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %call1 = call i32 @PyMember_SetOne(i8* %6, %struct.PyMemberDef* %8, %struct._object* %9)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_repr(%struct.PyGetSetDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %0 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyGetSetDescrObject* %0 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_get(%struct.PyGetSetDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyGetSetDescrObject* %0 to %struct.PyDescrObject*
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @descr_check(%struct.PyDescrObject* %1, %struct._object* %2, %struct._object** %res)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %4, i32 0, i32 1
  %5 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8
  %get = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %5, i32 0, i32 1
  %6 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %get, align 8
  %cmp = icmp ne %struct._object* (%struct._object*, i8*)* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset2 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %7, i32 0, i32 1
  %8 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset2, align 8
  %get3 = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %8, i32 0, i32 1
  %9 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %get3, align 8
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %11 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset4 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %11, i32 0, i32 1
  %12 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset4, align 8
  %closure = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %12, i32 0, i32 4
  %13 = load i8*, i8** %closure, align 8
  %call5 = call %struct._object* %9(%struct._object* %10, i8* %13)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %15 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %16 = bitcast %struct.PyGetSetDescrObject* %15 to %struct.PyDescrObject*
  %call7 = call %struct._object* @descr_name(%struct.PyDescrObject* %16)
  %17 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %18 = bitcast %struct.PyGetSetDescrObject* %17 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1
  %20 = load i8*, i8** %tp_name, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0), %struct._object* %call7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %20)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.1, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @getset_set(%struct.PyGetSetDescrObject* %descr, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyGetSetDescrObject* %0 to %struct.PyDescrObject*
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @descr_setcheck(%struct.PyDescrObject* %1, %struct._object* %2, %struct._object* %3, i32* %res)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %res, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %5, i32 0, i32 1
  %6 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8
  %set = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %6, i32 0, i32 2
  %7 = load i32 (%struct._object*, %struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)** %set, align 8
  %cmp = icmp ne i32 (%struct._object*, %struct._object*, i8*)* %7, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset2 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %8, i32 0, i32 1
  %9 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset2, align 8
  %set3 = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %9, i32 0, i32 2
  %10 = load i32 (%struct._object*, %struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)** %set3, align 8
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %13 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset4 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %13, i32 0, i32 1
  %14 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset4, align 8
  %closure = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %14, i32 0, i32 4
  %15 = load i8*, i8** %closure, align 8
  %call5 = call i32 %10(%struct._object* %11, %struct._object* %12, i8* %15)
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %17 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %18 = bitcast %struct.PyGetSetDescrObject* %17 to %struct.PyDescrObject*
  %call7 = call %struct._object* @descr_name(%struct.PyDescrObject* %18)
  %19 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %20 = bitcast %struct.PyGetSetDescrObject* %19 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 1
  %22 = load i8*, i8** %tp_name, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0), %struct._object* %call7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %22)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.1, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_repr(%struct.PyWrapperDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyWrapperDescrObject* %0 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_call(%struct.PyWrapperDescrObject* %descr, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %argc = alloca i64, align 8
  %self = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %argc, align 8
  %3 = load i64, i64* %argc, align 8
  %cmp = icmp slt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %6 = bitcast %struct.PyWrapperDescrObject* %5 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %6)
  %7 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %8 = bitcast %struct.PyWrapperDescrObject* %7 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %self, align 8
  %14 = load %struct._object*, %struct._object** %self, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %16 = bitcast %struct._typeobject* %15 to %struct._object*
  %17 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %18 = bitcast %struct.PyWrapperDescrObject* %17 to %struct.PyDescrObject*
  %d_type2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8
  %20 = bitcast %struct._typeobject* %19 to %struct._object*
  %call3 = call i32 @_PyObject_RealIsSubclass(%struct._object* %16, %struct._object* %20)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.11, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %22 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %23 = bitcast %struct.PyWrapperDescrObject* %22 to %struct.PyDescrObject*
  %call5 = call %struct._object* @descr_name(%struct.PyDescrObject* %23)
  %24 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %25 = bitcast %struct.PyWrapperDescrObject* %24 to %struct.PyDescrObject*
  %d_type6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %d_type6, align 8
  %tp_name7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 1
  %27 = load i8*, i8** %tp_name7, align 8
  %28 = load %struct._object*, %struct._object** %self, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_name9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %tp_name9, align 8
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), %struct._object* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %27, i8* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %31 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %32 = bitcast %struct.PyWrapperDescrObject* %31 to %struct._object*
  %33 = load %struct._object*, %struct._object** %self, align 8
  %call12 = call %struct._object* @PyWrapper_New(%struct._object* %32, %struct._object* %33)
  store %struct._object* %call12, %struct._object** %func, align 8
  %34 = load %struct._object*, %struct._object** %func, align 8
  %cmp13 = icmp eq %struct._object* %34, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %35 = load %struct._object*, %struct._object** %args.addr, align 8
  %36 = load i64, i64* %argc, align 8
  %call16 = call %struct._object* @PyTuple_GetSlice(%struct._object* %35, i64 1, i64 %36)
  store %struct._object* %call16, %struct._object** %args.addr, align 8
  %37 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp17 = icmp eq %struct._object* %37, null
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %38 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %45 = load %struct._object*, %struct._object** %func, align 8
  %46 = load %struct._object*, %struct._object** %args.addr, align 8
  %47 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call24 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %45, %struct._object* %46, %struct._object* %47)
  store %struct._object* %call24, %struct._object** %result, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.23
  %48 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp26, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %50, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %53(%struct._object* %54)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %55 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp37, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %57, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %60(%struct._object* %61)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %62 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.46, %do.end, %if.then.14, %if.then.4, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get(%struct.PyWrapperDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %1 = bitcast %struct.PyWrapperDescrObject* %0 to %struct.PyDescrObject*
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @descr_check(%struct.PyDescrObject* %1, %struct._object* %2, %struct._object** %res)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %5 = bitcast %struct.PyWrapperDescrObject* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call1 = call %struct._object* @PyWrapper_New(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewMethod(%struct._typeobject* %type, %struct.PyMethodDef* %method) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %method.addr = alloca %struct.PyMethodDef*, align 8
  %descr = alloca %struct.PyMethodDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.PyMethodDef* %method, %struct.PyMethodDef** %method.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyMethodDescr_Type, %struct._typeobject* %0, i8* %2)
  %3 = bitcast %struct.PyDescrObject* %call to %struct.PyMethodDescrObject*
  store %struct.PyMethodDescrObject* %3, %struct.PyMethodDescrObject** %descr, align 8
  %4 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8
  %cmp = icmp ne %struct.PyMethodDescrObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8
  %6 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %6, i32 0, i32 1
  store %struct.PyMethodDef* %5, %struct.PyMethodDef** %d_method, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8
  %8 = bitcast %struct.PyMethodDescrObject* %7 to %struct._object*
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct.PyDescrObject* @descr_new(%struct._typeobject* %descrtype, %struct._typeobject* %type, i8* %name) #0 {
entry:
  %descrtype.addr = alloca %struct._typeobject*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %name.addr = alloca i8*, align 8
  %descr = alloca %struct.PyDescrObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %descrtype, %struct._typeobject** %descrtype.addr, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %descrtype.addr, align 8
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* %0, i64 0)
  %1 = bitcast %struct._object* %call to %struct.PyDescrObject*
  store %struct.PyDescrObject* %1, %struct.PyDescrObject** %descr, align 8
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %cmp = icmp ne %struct.PyDescrObject* %2, null
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %4 = bitcast %struct._typeobject* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %_py_xincref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 1
  store %struct._typeobject* %8, %struct._typeobject** %d_type, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* %10)
  %11 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %11, i32 0, i32 2
  store %struct._object* %call3, %struct._object** %d_name, align 8
  %12 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %d_name4 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %d_name4, align 8
  %cmp5 = icmp eq %struct._object* %13, null
  br i1 %cmp5, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %do.end
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %14 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %15 = bitcast %struct.PyDescrObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt8, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt8, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.7
  br label %if.end.11

if.else:                                          ; preds = %do.body.7
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  store %struct.PyDescrObject* null, %struct.PyDescrObject** %descr, align 8
  br label %if.end.14

if.else.13:                                       ; preds = %do.end
  %22 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %22, i32 0, i32 3
  store %struct._object* null, %struct._object** %d_qualname, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %do.end.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %23 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8
  ret %struct.PyDescrObject* %23
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewClassMethod(%struct._typeobject* %type, %struct.PyMethodDef* %method) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %method.addr = alloca %struct.PyMethodDef*, align 8
  %descr = alloca %struct.PyMethodDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.PyMethodDef* %method, %struct.PyMethodDef** %method.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyClassMethodDescr_Type, %struct._typeobject* %0, i8* %2)
  %3 = bitcast %struct.PyDescrObject* %call to %struct.PyMethodDescrObject*
  store %struct.PyMethodDescrObject* %3, %struct.PyMethodDescrObject** %descr, align 8
  %4 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8
  %cmp = icmp ne %struct.PyMethodDescrObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8
  %6 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %6, i32 0, i32 1
  store %struct.PyMethodDef* %5, %struct.PyMethodDef** %d_method, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8
  %8 = bitcast %struct.PyMethodDescrObject* %7 to %struct._object*
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewMember(%struct._typeobject* %type, %struct.PyMemberDef* %member) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %member.addr = alloca %struct.PyMemberDef*, align 8
  %descr = alloca %struct.PyMemberDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.PyMemberDef* %member, %struct.PyMemberDef** %member.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct.PyMemberDef*, %struct.PyMemberDef** %member.addr, align 8
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyMemberDescr_Type, %struct._typeobject* %0, i8* %2)
  %3 = bitcast %struct.PyDescrObject* %call to %struct.PyMemberDescrObject*
  store %struct.PyMemberDescrObject* %3, %struct.PyMemberDescrObject** %descr, align 8
  %4 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr, align 8
  %cmp = icmp ne %struct.PyMemberDescrObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PyMemberDef*, %struct.PyMemberDef** %member.addr, align 8
  %6 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr, align 8
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %6, i32 0, i32 1
  store %struct.PyMemberDef* %5, %struct.PyMemberDef** %d_member, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr, align 8
  %8 = bitcast %struct.PyMemberDescrObject* %7 to %struct._object*
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewGetSet(%struct._typeobject* %type, %struct.PyGetSetDef* %getset) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %getset.addr = alloca %struct.PyGetSetDef*, align 8
  %descr = alloca %struct.PyGetSetDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.PyGetSetDef* %getset, %struct.PyGetSetDef** %getset.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %getset.addr, align 8
  %name = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyGetSetDescr_Type, %struct._typeobject* %0, i8* %2)
  %3 = bitcast %struct.PyDescrObject* %call to %struct.PyGetSetDescrObject*
  store %struct.PyGetSetDescrObject* %3, %struct.PyGetSetDescrObject** %descr, align 8
  %4 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr, align 8
  %cmp = icmp ne %struct.PyGetSetDescrObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %getset.addr, align 8
  %6 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr, align 8
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %6, i32 0, i32 1
  store %struct.PyGetSetDef* %5, %struct.PyGetSetDef** %d_getset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr, align 8
  %8 = bitcast %struct.PyGetSetDescrObject* %7 to %struct._object*
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewWrapper(%struct._typeobject* %type, %struct.wrapperbase* %base, i8* %wrapped) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %base.addr = alloca %struct.wrapperbase*, align 8
  %wrapped.addr = alloca i8*, align 8
  %descr = alloca %struct.PyWrapperDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.wrapperbase* %base, %struct.wrapperbase** %base.addr, align 8
  store i8* %wrapped, i8** %wrapped.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %base.addr, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyWrapperDescr_Type, %struct._typeobject* %0, i8* %2)
  %3 = bitcast %struct.PyDescrObject* %call to %struct.PyWrapperDescrObject*
  store %struct.PyWrapperDescrObject* %3, %struct.PyWrapperDescrObject** %descr, align 8
  %4 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %cmp = icmp ne %struct.PyWrapperDescrObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.wrapperbase*, %struct.wrapperbase** %base.addr, align 8
  %6 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %6, i32 0, i32 1
  store %struct.wrapperbase* %5, %struct.wrapperbase** %d_base, align 8
  %7 = load i8*, i8** %wrapped.addr, align 8
  %8 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_wrapped = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %8, i32 0, i32 2
  store i8* %7, i8** %d_wrapped, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %10 = bitcast %struct.PyWrapperDescrObject* %9 to %struct._object*
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal void @mappingproxy_dealloc(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %1 = bitcast %struct.mappingproxyobject* %0 to %union._gc_head*
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
  %14 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %mapping, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body.17
  br label %if.end

if.else:                                          ; preds = %do.body.17
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end.18

do.end.18:                                        ; preds = %if.end
  %22 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %23 = bitcast %struct.mappingproxyobject* %22 to i8*
  call void @PyObject_GC_Del(i8* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_repr(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), %struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_str(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* @PyObject_Str(%struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %pp = alloca %struct.mappingproxyobject*, align 8
  %vret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.mappingproxyobject*
  store %struct.mappingproxyobject* %1, %struct.mappingproxyobject** %pp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %mapping, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8
  %mapping1 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %mapping1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %6, i8* %7)
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
define internal %struct._object* @mappingproxy_richcompare(%struct.mappingproxyobject* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %v.addr = alloca %struct.mappingproxyobject*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct.mappingproxyobject* %v, %struct.mappingproxyobject** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %v.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %2 = load %struct._object*, %struct._object** %w.addr, align 8
  %3 = load i32, i32* %op.addr, align 4
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_getiter(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %mapping = alloca %struct._object*, align 8
  %mappingproxy = alloca %struct.mappingproxyobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @mappingproxy_new.kwlist, i32 0, i32 0), %struct._object** %mapping)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %mapping, align 8
  %call1 = call i32 @mappingproxy_check_mapping(%struct._object* %2)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyDictProxy_Type)
  %3 = bitcast %struct._object* %call4 to %struct.mappingproxyobject*
  store %struct.mappingproxyobject* %3, %struct.mappingproxyobject** %mappingproxy, align 8
  %4 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8
  %cmp5 = icmp eq %struct.mappingproxyobject* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %mapping, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %mapping, align 8
  %8 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8
  %mapping8 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %8, i32 0, i32 1
  store %struct._object* %7, %struct._object** %mapping8, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %9 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8
  %10 = bitcast %struct.mappingproxyobject* %9 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %10, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %12 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %12, 1
  %cmp9 = icmp ne i64 %shr, -2
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #4
  unreachable

if.end.11:                                        ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_refs14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 2
  %14 = load i64, i64* %gc_refs14, align 8
  %and = and i64 %14, 1
  %or = or i64 %and, -6
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_refs16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 2
  store i64 %or, i64* %gc_refs16, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.12
  %16 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0
  store %union._gc_head* %16, %union._gc_head** %gc_next, align 8
  %18 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc18 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 1
  %19 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc19 = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 1
  store %union._gc_head* %19, %union._gc_head** %gc_prev20, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc21 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1
  %23 = load %union._gc_head*, %union._gc_head** %gc_prev22, align 8
  %gc23 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_next24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 0
  store %union._gc_head* %21, %union._gc_head** %gc_next24, align 8
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %25 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc25 = bitcast %union._gc_head* %25 to %struct.anon*
  %gc_prev26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 1
  store %union._gc_head* %24, %union._gc_head** %gc_prev26, align 8
  br label %do.end.27

do.end.27:                                        ; preds = %do.end
  %26 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8
  %27 = bitcast %struct.mappingproxyobject* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %if.then.6, %if.then.2, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDictProxy_New(%struct._object* %mapping) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mapping.addr = alloca %struct._object*, align 8
  %pp = alloca %struct.mappingproxyobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %mapping, %struct._object** %mapping.addr, align 8
  %0 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %call = call i32 @mappingproxy_check_mapping(%struct._object* %0)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyDictProxy_Type)
  %1 = bitcast %struct._object* %call1 to %struct.mappingproxyobject*
  store %struct.mappingproxyobject* %1, %struct.mappingproxyobject** %pp, align 8
  %2 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8
  %cmp2 = icmp ne %struct.mappingproxyobject* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.24

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %6 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8
  %mapping4 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %6, i32 0, i32 1
  store %struct._object* %5, %struct._object** %mapping4, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %7 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8
  %8 = bitcast %struct.mappingproxyobject* %7 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %8, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %10 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %10, 1
  %cmp5 = icmp ne i64 %shr, -2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #4
  unreachable

if.end.7:                                         ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc9 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2
  %12 = load i64, i64* %gc_refs10, align 8
  %and = and i64 %12, 1
  %or = or i64 %and, -6
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2
  store i64 %or, i64* %gc_refs12, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.8
  %14 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0
  store %union._gc_head* %14, %union._gc_head** %gc_next, align 8
  %16 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc14 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  %17 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1
  store %union._gc_head* %17, %union._gc_head** %gc_prev16, align 8
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1
  %21 = load %union._gc_head*, %union._gc_head** %gc_prev18, align 8
  %gc19 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_next20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0
  store %union._gc_head* %19, %union._gc_head** %gc_next20, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %23 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc21 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1
  store %union._gc_head* %22, %union._gc_head** %gc_prev22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.end
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %if.end
  %24 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8
  %25 = bitcast %struct.mappingproxyobject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_check_mapping(%struct._object* %mapping) #0 {
entry:
  %retval = alloca i32, align 4
  %mapping.addr = alloca %struct._object*, align 8
  store %struct._object* %mapping, %struct._object** %mapping.addr, align 8
  %0 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %call = call i32 @PyMapping_Check(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags3, align 8
  %and4 = and i64 %6, 67108864
  %cmp5 = icmp ne i64 %and4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %8 = load %struct._object*, %struct._object** %mapping.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i32 0, i32 0), i8* %10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @wrapper_dealloc(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %1 = bitcast %struct.wrapperobject* %0 to i8*
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
  br i1 %cmp, label %if.then, label %if.else.40

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 23
  %16 = load i32, i32* %trash_delete_nesting4, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %trash_delete_nesting4, align 4
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  %17 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %17, i32 0, i32 1
  %18 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %19 = bitcast %struct.PyWrapperDescrObject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp7 = icmp ne %struct._object* %20, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %do.body.5
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.9
  br label %if.end

if.else:                                          ; preds = %do.body.9
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %do.body.5
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %28 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %28, i32 0, i32 2
  %29 = load %struct._object*, %struct._object** %self, align 8
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp17, align 8
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8
  %cmp18 = icmp ne %struct._object* %30, null
  br i1 %cmp18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %do.body.15
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp22, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %33, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %36(%struct._object* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %do.body.15
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %38 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %39 = bitcast %struct.wrapperobject* %38 to i8*
  call void @PyObject_GC_Del(i8* %39)
  %40 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting34 = getelementptr inbounds %struct._ts, %struct._ts* %40, i32 0, i32 23
  %41 = load i32, i32* %trash_delete_nesting34, align 4
  %dec35 = add i32 %41, -1
  store i32 %dec35, i32* %trash_delete_nesting34, align 4
  %42 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %42, i32 0, i32 24
  %43 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %43, null
  br i1 %tobool, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %do.end.33
  %44 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting36 = getelementptr inbounds %struct._ts, %struct._ts* %44, i32 0, i32 23
  %45 = load i32, i32* %trash_delete_nesting36, align 4
  %cmp37 = icmp sle i32 %45, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true, %do.end.33
  br label %if.end.41

if.else.40:                                       ; preds = %sw.epilog.3
  %46 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %47 = bitcast %struct.wrapperobject* %46 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %47)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_repr(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %self, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %8 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %self1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %self1, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0), i8* %3, i8* %7, %struct._object* %9)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i64 @wrapper_hash(%struct.wrapperobject* %wp) #0 {
entry:
  %retval = alloca i64, align 8
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %2 = bitcast %struct.PyWrapperDescrObject* %1 to i8*
  %call = call i64 @_Py_HashPointer(i8* %2)
  store i64 %call, i64* %x, align 8
  %3 = load i64, i64* %x, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %self, align 8
  %call1 = call i64 @PyObject_Hash(%struct._object* %5)
  store i64 %call1, i64* %y, align 8
  %6 = load i64, i64* %y, align 8
  %cmp2 = icmp eq i64 %6, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load i64, i64* %x, align 8
  %8 = load i64, i64* %y, align 8
  %xor = xor i64 %7, %8
  store i64 %xor, i64* %x, align 8
  %9 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %9, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i64 -2, i64* %x, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %10 = load i64, i64* %x, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_call(%struct.wrapperobject* %wp, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %wrapper = alloca %struct._object* (%struct._object*, %struct._object*, i8*)*, align 8
  %self = alloca %struct._object*, align 8
  %wk = alloca %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %wrapper1 = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 3
  %3 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper1, align 8
  store %struct._object* (%struct._object*, %struct._object*, i8*)* %3, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, align 8
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %self2 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %self2, align 8
  store %struct._object* %5, %struct._object** %self, align 8
  %6 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr3 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %6, i32 0, i32 1
  %7 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr3, align 8
  %d_base4 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %7, i32 0, i32 1
  %8 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base4, align 8
  %flags = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %8, i32 0, i32 5
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, align 8
  %11 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*)* %10 to %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)*
  store %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)* %11, %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk, align 8
  %12 = load %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk, align 8
  %13 = load %struct._object*, %struct._object** %self, align 8
  %14 = load %struct._object*, %struct._object** %args.addr, align 8
  %15 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr5 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %15, i32 0, i32 1
  %16 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr5, align 8
  %d_wrapped = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %16, i32 0, i32 2
  %17 = load i8*, i8** %d_wrapped, align 8
  %18 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* %12(%struct._object* %13, %struct._object* %14, i8* %17, %struct._object* %18)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp = icmp ne %struct._object* %19, null
  br i1 %cmp, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags, align 8
  %and6 = and i64 %22, 536870912
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call8 = call i64 @PyDict_Size(%struct._object* %23)
  %cmp9 = icmp ne i64 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %25 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr11 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %25, i32 0, i32 1
  %26 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr11, align 8
  %d_base12 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %26, i32 0, i32 1
  %27 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base12, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %27, i32 0, i32 0
  %28 = load i8*, i8** %name, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0), i8* %28)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false, %if.end
  %29 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, align 8
  %30 = load %struct._object*, %struct._object** %self, align 8
  %31 = load %struct._object*, %struct._object** %args.addr, align 8
  %32 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr15 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %32, i32 0, i32 1
  %33 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr15, align 8
  %d_wrapped16 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %33, i32 0, i32 2
  %34 = load i8*, i8** %d_wrapped16, align 8
  %call17 = call %struct._object* %29(%struct._object* %30, %struct._object* %31, i8* %34)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal i32 @wrapper_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %wp = alloca %struct.wrapperobject*, align 8
  %vret = alloca i32, align 4
  %vret9 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.wrapperobject*
  store %struct.wrapperobject* %1, %struct.wrapperobject** %wp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %2, i32 0, i32 1
  %3 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %tobool = icmp ne %struct.PyWrapperDescrObject* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %5, i32 0, i32 1
  %6 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr1, align 8
  %7 = bitcast %struct.PyWrapperDescrObject* %6 to %struct._object*
  %8 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %7, i8* %8)
  store i32 %call, i32* %vret, align 4
  %9 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %vret, align 4
  store i32 %10, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %11 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %self6 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %self6, align 8
  %tobool7 = icmp ne %struct._object* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %do.body.5
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %14 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %self10 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %self10, align 8
  %16 = load i8*, i8** %arg.addr, align 8
  %call11 = call i32 %13(%struct._object* %15, i8* %16)
  store i32 %call11, i32* %vret9, align 4
  %17 = load i32, i32* %vret9, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  %18 = load i32, i32* %vret9, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body.5
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then.13, %if.then.3
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_richcompare(%struct._object* %a, %struct._object* %b, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %a_descr = alloca %struct.PyWrapperDescrObject*, align 8
  %b_descr = alloca %struct.PyWrapperDescrObject*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyMethodWrapper_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyMethodWrapper_Type
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %v, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %a.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.wrapperobject*
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %8, i32 0, i32 1
  %9 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  store %struct.PyWrapperDescrObject* %9, %struct.PyWrapperDescrObject** %a_descr, align 8
  %10 = load %struct._object*, %struct._object** %b.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.wrapperobject*
  %descr3 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %11, i32 0, i32 1
  %12 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr3, align 8
  store %struct.PyWrapperDescrObject* %12, %struct.PyWrapperDescrObject** %b_descr, align 8
  %13 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %a_descr, align 8
  %14 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %b_descr, align 8
  %cmp4 = icmp eq %struct.PyWrapperDescrObject* %13, %14
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %a.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.wrapperobject*
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %16, i32 0, i32 2
  %17 = load %struct._object*, %struct._object** %self, align 8
  store %struct._object* %17, %struct._object** %a.addr, align 8
  %18 = load %struct._object*, %struct._object** %b.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.wrapperobject*
  %self6 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %19, i32 0, i32 2
  %20 = load %struct._object*, %struct._object** %self6, align 8
  store %struct._object* %20, %struct._object** %b.addr, align 8
  %21 = load %struct._object*, %struct._object** %a.addr, align 8
  %22 = load %struct._object*, %struct._object** %b.addr, align 8
  %23 = load i32, i32* %op.addr, align 4
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %21, %struct._object* %22, i32 %23)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %24 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %a_descr, align 8
  %25 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %b_descr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.PyWrapperDescrObject* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.PyWrapperDescrObject* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  store i64 %sub.ptr.div, i64* %result, align 8
  %26 = load i32, i32* %op.addr, align 4
  switch i32 %26, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.9
    i32 1, label %sw.bb.12
    i32 5, label %sw.bb.15
    i32 0, label %sw.bb.18
    i32 4, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end.7
  %27 = load i64, i64* %result, align 8
  %cmp8 = icmp eq i64 %27, 0
  %cond = select i1 %cmp8, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.7
  %28 = load i64, i64* %result, align 8
  %cmp10 = icmp ne i64 %28, 0
  %cond11 = select i1 %cmp10, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond11, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.7
  %29 = load i64, i64* %result, align 8
  %cmp13 = icmp sle i64 %29, 0
  %cond14 = select i1 %cmp13, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond14, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.7
  %30 = load i64, i64* %result, align 8
  %cmp16 = icmp sge i64 %30, 0
  %cond17 = select i1 %cmp16, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond17, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.7
  %31 = load i64, i64* %result, align 8
  %cmp19 = icmp slt i64 %31, 0
  %cond20 = select i1 %cmp19, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond20, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.7
  %32 = load i64, i64* %result, align 8
  %cmp22 = icmp sgt i64 %32, 0
  %cond23 = select i1 %cmp22, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond23, %struct._object** %v, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.7
  %call24 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.21, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb
  %33 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt25, align 8
  %inc26 = add i64 %34, 1
  store i64 %inc26, i64* %ob_refcnt25, align 8
  %35 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.5, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyWrapper_New(%struct._object* %d, %struct._object* %self) #0 {
entry:
  %d.addr = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %wp = alloca %struct.wrapperobject*, align 8
  %descr = alloca %struct.PyWrapperDescrObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %d.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyWrapperDescrObject*
  store %struct.PyWrapperDescrObject* %1, %struct.PyWrapperDescrObject** %descr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @_PyMethodWrapper_Type)
  %2 = bitcast %struct._object* %call to %struct.wrapperobject*
  store %struct.wrapperobject* %2, %struct.wrapperobject** %wp, align 8
  %3 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %cmp = icmp ne %struct.wrapperobject* %3, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %4 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %5 = bitcast %struct.PyWrapperDescrObject* %4 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %8 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %8, i32 0, i32 1
  store %struct.PyWrapperDescrObject* %7, %struct.PyWrapperDescrObject** %descr1, align 8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt2, align 8
  %inc3 = add i64 %10, 1
  store i64 %inc3, i64* %ob_refcnt2, align 8
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %12 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %self4 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %12, i32 0, i32 2
  store %struct._object* %11, %struct._object** %self4, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %14 = bitcast %struct.wrapperobject* %13 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %14, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %16 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %16, 1
  %cmp5 = icmp ne i64 %shr, -2
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  %18 = load i64, i64* %gc_refs9, align 8
  %and = and i64 %18, 1
  %or = or i64 %and, -6
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_refs11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 2
  store i64 %or, i64* %gc_refs11, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.7
  %20 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0
  store %union._gc_head* %20, %union._gc_head** %gc_next, align 8
  %22 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc13 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1
  %23 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  store %union._gc_head* %23, %union._gc_head** %gc_prev15, align 8
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc16 = bitcast %union._gc_head* %26 to %struct.anon*
  %gc_prev17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 1
  %27 = load %union._gc_head*, %union._gc_head** %gc_prev17, align 8
  %gc18 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_next19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 0
  store %union._gc_head* %25, %union._gc_head** %gc_next19, align 8
  %28 = load %union._gc_head*, %union._gc_head** %g, align 8
  %29 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc20 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_prev21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 1
  store %union._gc_head* %28, %union._gc_head** %gc_prev21, align 8
  br label %do.end.22

do.end.22:                                        ; preds = %do.end
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %entry
  %30 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8
  %31 = bitcast %struct.wrapperobject* %30 to %struct._object*
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal void @property_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %gs = alloca %struct.propertyobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_xdecref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_xdecref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.propertyobject*
  store %struct.propertyobject* %1, %struct.propertyobject** %gs, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %5 = load i64, i64* %gc_refs, align 8
  %and = and i64 %5, 1
  %or = or i64 %and, -4
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %8 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %8, %union._gc_head** %gc_next7, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %14 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %12, %union._gc_head** %gc_prev13, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %prop_get, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %18, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.17
  br label %do.body.18

do.body.18:                                       ; preds = %if.then
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end

if.else:                                          ; preds = %do.body.18
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %do.end.21

do.end.21:                                        ; preds = %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %26 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %prop_set, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp25, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  %cmp26 = icmp ne %struct._object* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.body.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp29, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %31, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %34(%struct._object* %35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.24
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %36 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %36, i32 0, i32 3
  %37 = load %struct._object*, %struct._object** %prop_del, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp42, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  %cmp43 = icmp ne %struct._object* %38, null
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %do.body.41
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp46, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %41, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %44(%struct._object* %45)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.body.41
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %46 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %46, i32 0, i32 4
  %47 = load %struct._object*, %struct._object** %prop_doc, align 8
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp59, align 8
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp59, align 8
  %cmp60 = icmp ne %struct._object* %48, null
  br i1 %cmp60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %do.body.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp59, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp63, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %51, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %54(%struct._object* %55)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %do.body.58
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  %56 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 38
  %58 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %59 = load %struct._object*, %struct._object** %self.addr, align 8
  %60 = bitcast %struct._object* %59 to i8*
  call void %58(i8* %60)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @property_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %pp = alloca %struct.propertyobject*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.propertyobject*
  store %struct.propertyobject* %1, %struct.propertyobject** %pp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %prop_get, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_get1 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %prop_get1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %6, i8* %7)
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
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %prop_set, align 8
  %tobool6 = icmp ne %struct._object* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_set9 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %prop_set9, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call10, i32* %vret8, align 4
  %16 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %17 = load i32, i32* %vret8, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %18 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %prop_del, align 8
  %tobool17 = icmp ne %struct._object* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_del20 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %21, i32 0, i32 3
  %22 = load %struct._object*, %struct._object** %prop_del20, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call21, i32* %vret19, align 4
  %24 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %25 = load i32, i32* %vret19, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %26 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %prop_doc, align 8
  %tobool28 = icmp ne %struct._object* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %29 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8
  %prop_doc31 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %29, i32 0, i32 4
  %30 = load %struct._object*, %struct._object** %prop_doc31, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %28(%struct._object* %30, i8* %31)
  store i32 %call32, i32* %vret30, align 4
  %32 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %33 = load i32, i32* %vret30, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.37, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %gs = alloca %struct.propertyobject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.propertyobject*
  store %struct.propertyobject* %1, %struct.propertyobject** %gs, align 8
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp1 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %prop_get, align 8
  %cmp2 = icmp eq %struct._object* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_get5 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %prop_get5, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %11, %struct._object* %12, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @property_descr_set(%struct._object* %self, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %gs = alloca %struct.propertyobject*, align 8
  %func = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.propertyobject*
  store %struct.propertyobject* %1, %struct.propertyobject** %gs, align 8
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %prop_del, align 8
  store %struct._object* %4, %struct._object** %func, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %prop_set, align 8
  store %struct._object* %6, %struct._object** %func, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._object*, %struct._object** %func, align 8
  %cmp1 = icmp eq %struct._object* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  %cond = select i1 %cmp3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0)
  call void @PyErr_SetString(%struct._object* %8, i8* %cond)
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp5 = icmp eq %struct._object* %10, null
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %func, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %11, %struct._object* %12, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  br label %if.end.9

if.else.7:                                        ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** %func, align 8
  %14 = load %struct._object*, %struct._object** %obj.addr, align 8
  %15 = load %struct._object*, %struct._object** %value.addr, align 8
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %13, %struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call8, %struct._object** %res, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  %16 = load %struct._object*, %struct._object** %res, align 8
  %cmp10 = icmp eq %struct._object* %16, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then.2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @property_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %get = alloca %struct._object*, align 8
  %set = alloca %struct._object*, align 8
  %del = alloca %struct._object*, align 8
  %doc = alloca %struct._object*, align 8
  %prop = alloca %struct.propertyobject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp13 = alloca %struct._object*, align 8
  %_py_xincref_tmp21 = alloca %struct._object*, align 8
  %_py_xincref_tmp29 = alloca %struct._object*, align 8
  %get_doc = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %get, align 8
  store %struct._object* null, %struct._object** %set, align 8
  store %struct._object* null, %struct._object** %del, align 8
  store %struct._object* null, %struct._object** %doc, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.propertyobject*
  store %struct.propertyobject* %1, %struct.propertyobject** %prop, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @property_init.kwlist, i32 0, i32 0), %struct._object** %get, %struct._object** %set, %struct._object** %del, %struct._object** %doc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %get, align 8
  %cmp = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %get, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct._object*, %struct._object** %set, align 8
  %cmp3 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %set, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %6 = load %struct._object*, %struct._object** %del, align 8
  %cmp6 = icmp eq %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %del, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %7 = load %struct._object*, %struct._object** %get, align 8
  store %struct._object* %7, %struct._object** %_py_xincref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %11 = load %struct._object*, %struct._object** %set, align 8
  store %struct._object* %11, %struct._object** %_py_xincref_tmp13, align 8
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp13, align 8
  %cmp14 = icmp ne %struct._object* %12, null
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.body.12
  %13 = load %struct._object*, %struct._object** %_py_xincref_tmp13, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt16, align 8
  %inc17 = add i64 %14, 1
  store i64 %inc17, i64* %ob_refcnt16, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.body.12
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %15 = load %struct._object*, %struct._object** %del, align 8
  store %struct._object* %15, %struct._object** %_py_xincref_tmp21, align 8
  %16 = load %struct._object*, %struct._object** %_py_xincref_tmp21, align 8
  %cmp22 = icmp ne %struct._object* %16, null
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %do.body.20
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp21, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt24, align 8
  %inc25 = add i64 %18, 1
  store i64 %inc25, i64* %ob_refcnt24, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %do.body.20
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %19 = load %struct._object*, %struct._object** %doc, align 8
  store %struct._object* %19, %struct._object** %_py_xincref_tmp29, align 8
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %20, null
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.body.28
  %21 = load %struct._object*, %struct._object** %_py_xincref_tmp29, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %22, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.body.28
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %23 = load %struct._object*, %struct._object** %get, align 8
  %24 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %24, i32 0, i32 1
  store %struct._object* %23, %struct._object** %prop_get, align 8
  %25 = load %struct._object*, %struct._object** %set, align 8
  %26 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %26, i32 0, i32 2
  store %struct._object* %25, %struct._object** %prop_set, align 8
  %27 = load %struct._object*, %struct._object** %del, align 8
  %28 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %28, i32 0, i32 3
  store %struct._object* %27, %struct._object** %prop_del, align 8
  %29 = load %struct._object*, %struct._object** %doc, align 8
  %30 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %30, i32 0, i32 4
  store %struct._object* %29, %struct._object** %prop_doc, align 8
  %31 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %getter_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %31, i32 0, i32 5
  store i32 0, i32* %getter_doc, align 4
  %32 = load %struct._object*, %struct._object** %doc, align 8
  %cmp36 = icmp eq %struct._object* %32, null
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.35
  %33 = load %struct._object*, %struct._object** %doc, align 8
  %cmp37 = icmp eq %struct._object* %33, @_Py_NoneStruct
  br i1 %cmp37, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end.35
  %34 = load %struct._object*, %struct._object** %get, align 8
  %cmp38 = icmp ne %struct._object* %34, null
  br i1 %cmp38, label %if.then.39, label %if.end.84

if.then.39:                                       ; preds = %land.lhs.true
  %35 = load %struct._object*, %struct._object** %get, align 8
  %call40 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %35, %struct._Py_Identifier* @property_init.PyId___doc__)
  store %struct._object* %call40, %struct._object** %get_doc, align 8
  %36 = load %struct._object*, %struct._object** %get_doc, align 8
  %tobool41 = icmp ne %struct._object* %36, null
  br i1 %tobool41, label %if.then.42, label %if.else.77

if.then.42:                                       ; preds = %if.then.39
  %37 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp43 = icmp eq %struct._typeobject* %38, @PyProperty_Type
  br i1 %cmp43, label %if.then.44, label %if.else.59

if.then.44:                                       ; preds = %if.then.42
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %39 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %prop_doc46 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %39, i32 0, i32 4
  %40 = load %struct._object*, %struct._object** %prop_doc46, align 8
  store %struct._object* %40, %struct._object** %_py_xdecref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp47 = icmp ne %struct._object* %41, null
  br i1 %cmp47, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %do.body.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt50, align 8
  %dec = add i64 %44, -1
  store i64 %dec, i64* %ob_refcnt50, align 8
  %cmp51 = icmp ne i64 %dec, 0
  br i1 %cmp51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %do.body.49
  br label %if.end.54

if.else:                                          ; preds = %do.body.49
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %47(%struct._object* %48)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.body.45
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %49 = load %struct._object*, %struct._object** %get_doc, align 8
  %50 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %prop_doc58 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %50, i32 0, i32 4
  store %struct._object* %49, %struct._object** %prop_doc58, align 8
  br label %if.end.75

if.else.59:                                       ; preds = %if.then.42
  %51 = load %struct._object*, %struct._object** %self.addr, align 8
  %52 = load %struct._object*, %struct._object** %get_doc, align 8
  %call60 = call i32 @_PyObject_SetAttrId(%struct._object* %51, %struct._Py_Identifier* @property_init.PyId___doc__, %struct._object* %52)
  store i32 %call60, i32* %err, align 4
  br label %do.body.61

do.body.61:                                       ; preds = %if.else.59
  %53 = load %struct._object*, %struct._object** %get_doc, align 8
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
  %60 = load i32, i32* %err, align 4
  %cmp72 = icmp slt i32 %60, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.end.71
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %do.end.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %do.end.57
  %61 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8
  %getter_doc76 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %61, i32 0, i32 5
  store i32 1, i32* %getter_doc76, align 4
  br label %if.end.83

if.else.77:                                       ; preds = %if.then.39
  %62 = load %struct._object*, %struct._object** @PyExc_Exception, align 8
  %call78 = call i32 @PyErr_ExceptionMatches(%struct._object* %62)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.77
  call void @PyErr_Clear()
  br label %if.end.82

if.else.81:                                       ; preds = %if.else.77
  store i32 -1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.80
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.75
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.else.81, %if.then.73, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_repr(%struct.PyDescrObject* %descr, i8* %format) #0 {
entry:
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %format.addr = alloca i8*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._object* null, %struct._object** %name, align 8
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %d_name, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %d_name1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name3 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %d_name3, align 8
  store %struct._object* %7, %struct._object** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i8*, i8** %format.addr, align 8
  %9 = load %struct._object*, %struct._object** %name, align 8
  %10 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1
  %12 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* %8, %struct._object* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %12)
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_name(%struct.PyDescrObject* %descr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %d_name, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %d_name1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name3 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %d_name3, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare i32 @_PyObject_RealIsSubclass(%struct._object*, %struct._object*) #1

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_reduce(%struct.PyDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %builtins = alloca %struct._object*, align 8
  %getattr = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  %call = call %struct._object* @PyEval_GetBuiltins()
  store %struct._object* %call, %struct._object** %builtins, align 8
  %0 = load %struct._object*, %struct._object** %builtins, align 8
  %call1 = call %struct._object* @_PyDict_GetItemId(%struct._object* %0, %struct._Py_Identifier* @descr_reduce.PyId_getattr)
  store %struct._object* %call1, %struct._object** %getattr, align 8
  %1 = load %struct._object*, %struct._object** %getattr, align 8
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %4 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %d_name, align 8
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* %1, %struct._typeobject* %3, %struct._object* %5)
  ret %struct._object* %call2
}

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_doc(%struct.PyMethodDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %0, i32 0, i32 1
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %3 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method1 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method1, align 8
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3
  %5 = load i8*, i8** %ml_doc, align 8
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_get_qualname(%struct.PyDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %d_qualname, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %call = call %struct._object* @calculate_qualname(%struct.PyDescrObject* %2)
  %3 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_qualname1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %3, i32 0, i32 3
  store %struct._object* %call, %struct._object** %d_qualname1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_qualname2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %d_qualname2, align 8
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp3 = icmp ne %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_qualname6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 3
  %10 = load %struct._object*, %struct._object** %d_qualname6, align 8
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_text_signature(%struct.PyMethodDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %0, i32 0, i32 1
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %3 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8
  %d_method1 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method1, align 8
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3
  %5 = load i8*, i8** %ml_doc, align 8
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %5)
  ret %struct._object* %call
}

declare %struct._object* @_PyType_GetDocFromInternalDoc(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @calculate_qualname(%struct.PyDescrObject* %descr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %type_qualname = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %d_name, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %d_name1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %9 = bitcast %struct._typeobject* %8 to %struct._object*
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %9, %struct._Py_Identifier* @calculate_qualname.PyId___qualname__)
  store %struct._object* %call, %struct._object** %type_qualname, align 8
  %10 = load %struct._object*, %struct._object** %type_qualname, align 8
  %cmp3 = icmp eq %struct._object* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %type_qualname, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags7, align 8
  %and8 = and i64 %13, 268435456
  %cmp9 = icmp ne i64 %and8, 0
  br i1 %cmp9, label %if.end.20, label %if.then.10

if.then.10:                                       ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %type_qualname, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else:                                          ; preds = %do.body.13
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.5
  %24 = load %struct._object*, %struct._object** %type_qualname, align 8
  %25 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_name21 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %25, i32 0, i32 2
  %26 = load %struct._object*, %struct._object** %d_name21, align 8
  %call22 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._object* %24, %struct._object* %26)
  store %struct._object* %call22, %struct._object** %res, align 8
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.20
  %27 = load %struct._object*, %struct._object** %type_qualname, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp24, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %29, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %32(%struct._object* %33)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %34 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.33, %do.end.19, %if.then.4, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @descr_check(%struct.PyDescrObject* %descr, %struct._object* %obj, %struct._object** %pres) #0 {
entry:
  %retval = alloca i32, align 4
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %pres.addr = alloca %struct._object**, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object** %pres, %struct._object*** %pres.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %2 = bitcast %struct.PyDescrObject* %1 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %5 = bitcast %struct.PyDescrObject* %4 to %struct._object*
  %6 = load %struct._object**, %struct._object*** %pres.addr, align 8
  store %struct._object* %5, %struct._object** %6, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %8, %10
  br i1 %cmp1, label %if.end.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %13 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type3 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %d_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.10, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %16 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %call5 = call %struct._object* @descr_name(%struct.PyDescrObject* %16)
  %17 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %d_type6, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 1
  %19 = load i8*, i8** %tp_name, align 8
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 1
  %22 = load i8*, i8** %tp_name8, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i32 0, i32 0), %struct._object* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %19, i8* %22)
  %23 = load %struct._object**, %struct._object*** %pres.addr, align 8
  store %struct._object* null, %struct._object** %23, align 8
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.4, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_get_doc(%struct.PyMemberDescrObject* %descr, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %0, i32 0, i32 1
  %1 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8
  %doc = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %1, i32 0, i32 4
  %2 = load i8*, i8** %doc, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8
  %d_member1 = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %4, i32 0, i32 1
  %5 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member1, align 8
  %doc2 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %5, i32 0, i32 4
  %6 = load i8*, i8** %doc2, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyMember_GetOne(i8*, %struct.PyMemberDef*) #1

; Function Attrs: nounwind uwtable
define internal i32 @descr_setcheck(%struct.PyDescrObject* %descr, %struct._object* %obj, %struct._object* %value, i32* %pres) #0 {
entry:
  %retval = alloca i32, align 4
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %pres.addr = alloca i32*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i32* %pres, i32** %pres.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, %3
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %6 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %call3 = call %struct._object* @descr_name(%struct.PyDescrObject* %9)
  %10 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8
  %d_type4 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %d_type4, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1
  %12 = load i8*, i8** %tp_name, align 8
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_name6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %tp_name6, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i32 0, i32 0), %struct._object* %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %12, i8* %15)
  %16 = load i32*, i32** %pres.addr, align 8
  store i32 -1, i32* %16, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @PyMember_SetOne(i8*, %struct.PyMemberDef*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_get_doc(%struct.PyGetSetDescrObject* %descr, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %0, i32 0, i32 1
  %1 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8
  %doc = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %1, i32 0, i32 3
  %2 = load i8*, i8** %doc, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8
  %d_getset1 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %4, i32 0, i32 1
  %5 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset1, align 8
  %doc2 = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %5, i32 0, i32 3
  %6 = load i8*, i8** %doc2, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get_doc(%struct.PyWrapperDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i32 0, i32 1
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %d_base1 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %3, i32 0, i32 1
  %4 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base1, align 8
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %4, i32 0, i32 4
  %5 = load i8*, i8** %doc, align 8
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get_text_signature(%struct.PyWrapperDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i32 0, i32 1
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8
  %d_base1 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %3, i32 0, i32 1
  %4 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base1, align 8
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %4, i32 0, i32 4
  %5 = load i8*, i8** %doc, align 8
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %5)
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_contains(%struct.mappingproxyobject* %pp, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyDict_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping1 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %mapping1, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call i32 @PyDict_Contains(%struct._object* %4, %struct._object* %5)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping2 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %mapping2, align 8
  %8 = load %struct._object*, %struct._object** %key.addr, align 8
  %call3 = call i32 @PySequence_Contains(%struct._object* %7, %struct._object* %8)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @mappingproxy_len(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call i64 @PyObject_Size(%struct._object* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_getitem(%struct.mappingproxyobject* %pp, %struct._object* %key) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call %struct._object* @PyObject_GetItem(%struct._object* %1, %struct._object* %2)
  ret %struct._object* %call
}

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_get(%struct.mappingproxyobject* %pp, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %def = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %def, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64 1, i64 2, %struct._object** %key, %struct._object** %def)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %mapping, align 8
  %3 = load %struct._object*, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %def, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @mappingproxy_get.PyId_get, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), %struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_keys(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_keys.PyId_keys, i8* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_values(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_values.PyId_values, i8* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_items(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_items.PyId_items, i8* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_copy(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_copy.PyId_copy, i8* null)
  ret %struct._object* %call
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i32 @PyMapping_Check(%struct._object*) #1

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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

declare i64 @_Py_HashPointer(i8*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i64 @PyDict_Size(%struct._object*) #1

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_reduce(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %builtins = alloca %struct._object*, align 8
  %getattr = alloca %struct._object*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %call = call %struct._object* @PyEval_GetBuiltins()
  store %struct._object* %call, %struct._object** %builtins, align 8
  %0 = load %struct._object*, %struct._object** %builtins, align 8
  %call1 = call %struct._object* @_PyDict_GetItemId(%struct._object* %0, %struct._Py_Identifier* @wrapper_reduce.PyId_getattr)
  store %struct._object* %call1, %struct._object** %getattr, align 8
  %1 = load %struct._object*, %struct._object** %getattr, align 8
  %2 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %self, align 8
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 1
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %6 = bitcast %struct.PyWrapperDescrObject* %5 to %struct.PyDescrObject*
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %d_name, align 8
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* %1, %struct._object* %3, %struct._object* %7)
  ret %struct._object* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_objclass(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %c = alloca %struct._object*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %2 = bitcast %struct.PyWrapperDescrObject* %1 to %struct.PyDescrObject*
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8
  %4 = bitcast %struct._typeobject* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %c, align 8
  %5 = load %struct._object*, %struct._object** %c, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %c, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_name(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %s = alloca i8*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %s, align 8
  %4 = load i8*, i8** %s, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_qualname(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %2 = bitcast %struct.PyWrapperDescrObject* %1 to %struct.PyDescrObject*
  %call = call %struct._object* @descr_get_qualname(%struct.PyDescrObject* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_doc(%struct.wrapperobject* %wp, i8* %closure) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 1
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr1, align 8
  %d_base2 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %5, i32 0, i32 1
  %6 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base2, align 8
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %6, i32 0, i32 4
  %7 = load i8*, i8** %doc, align 8
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %3, i8* %7)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_text_signature(%struct.wrapperobject* %wp, i8* %closure) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 1
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr1, align 8
  %d_base2 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %5, i32 0, i32 1
  %6 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base2, align 8
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %6, i32 0, i32 4
  %7 = load i8*, i8** %doc, align 8
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %3, i8* %7)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_getter(%struct._object* %self, %struct._object* %getter) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %getter.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %getter, %struct._object** %getter.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %getter.addr, align 8
  %call = call %struct._object* @property_copy(%struct._object* %0, %struct._object* %1, %struct._object* null, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_setter(%struct._object* %self, %struct._object* %setter) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %setter.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %setter, %struct._object** %setter.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %setter.addr, align 8
  %call = call %struct._object* @property_copy(%struct._object* %0, %struct._object* null, %struct._object* %1, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_deleter(%struct._object* %self, %struct._object* %deleter) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %deleter.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %deleter, %struct._object** %deleter.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %deleter.addr, align 8
  %call = call %struct._object* @property_copy(%struct._object* %0, %struct._object* null, %struct._object* null, %struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_copy(%struct._object* %old, %struct._object* %get, %struct._object* %set, %struct._object* %del) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %old.addr = alloca %struct._object*, align 8
  %get.addr = alloca %struct._object*, align 8
  %set.addr = alloca %struct._object*, align 8
  %del.addr = alloca %struct._object*, align 8
  %pold = alloca %struct.propertyobject*, align 8
  %new = alloca %struct._object*, align 8
  %type = alloca %struct._object*, align 8
  %doc = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_xdecref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  store %struct._object* %old, %struct._object** %old.addr, align 8
  store %struct._object* %get, %struct._object** %get.addr, align 8
  store %struct._object* %set, %struct._object** %set.addr, align 8
  store %struct._object* %del, %struct._object** %del.addr, align 8
  %0 = load %struct._object*, %struct._object** %old.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.propertyobject*
  store %struct.propertyobject* %1, %struct.propertyobject** %pold, align 8
  %2 = load %struct._object*, %struct._object** %old.addr, align 8
  %call = call %struct._object* @PyObject_Type(%struct._object* %2)
  store %struct._object* %call, %struct._object** %type, align 8
  %3 = load %struct._object*, %struct._object** %type, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %get.addr, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %get.addr, align 8
  %cmp2 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %get.addr, align 8
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
  %15 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %prop_get, align 8
  %tobool = icmp ne %struct._object* %16, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.11
  %17 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_get12 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %prop_get12, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %18, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %get.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %cond.end, %lor.lhs.false
  %19 = load %struct._object*, %struct._object** %set.addr, align 8
  %cmp14 = icmp eq %struct._object* %19, null
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.13
  %20 = load %struct._object*, %struct._object** %set.addr, align 8
  %cmp16 = icmp eq %struct._object* %20, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.17, label %if.end.41

if.then.17:                                       ; preds = %lor.lhs.false.15, %if.end.13
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %21 = load %struct._object*, %struct._object** %set.addr, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp19, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp19, align 8
  %cmp20 = icmp ne %struct._object* %22, null
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %do.body.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp19, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp23, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %25, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %28(%struct._object* %29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.18
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %30 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %30, i32 0, i32 2
  %31 = load %struct._object*, %struct._object** %prop_set, align 8
  %tobool35 = icmp ne %struct._object* %31, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %do.end.34
  %32 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_set37 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %32, i32 0, i32 2
  %33 = load %struct._object*, %struct._object** %prop_set37, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %do.end.34
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi %struct._object* [ %33, %cond.true.36 ], [ @_Py_NoneStruct, %cond.false.38 ]
  store %struct._object* %cond40, %struct._object** %set.addr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.39, %lor.lhs.false.15
  %34 = load %struct._object*, %struct._object** %del.addr, align 8
  %cmp42 = icmp eq %struct._object* %34, null
  br i1 %cmp42, label %if.then.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.41
  %35 = load %struct._object*, %struct._object** %del.addr, align 8
  %cmp44 = icmp eq %struct._object* %35, @_Py_NoneStruct
  br i1 %cmp44, label %if.then.45, label %if.end.69

if.then.45:                                       ; preds = %lor.lhs.false.43, %if.end.41
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %36 = load %struct._object*, %struct._object** %del.addr, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp47, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8
  %cmp48 = icmp ne %struct._object* %37, null
  br i1 %cmp48, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %do.body.46
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp51, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %40, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %43(%struct._object* %44)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.body.46
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %45 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %45, i32 0, i32 3
  %46 = load %struct._object*, %struct._object** %prop_del, align 8
  %tobool63 = icmp ne %struct._object* %46, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %do.end.62
  %47 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_del65 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %47, i32 0, i32 3
  %48 = load %struct._object*, %struct._object** %prop_del65, align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %do.end.62
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.64
  %cond68 = phi %struct._object* [ %48, %cond.true.64 ], [ @_Py_NoneStruct, %cond.false.66 ]
  store %struct._object* %cond68, %struct._object** %del.addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end.67, %lor.lhs.false.43
  %49 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %getter_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %49, i32 0, i32 5
  %50 = load i32, i32* %getter_doc, align 4
  %tobool70 = icmp ne i32 %50, 0
  br i1 %tobool70, label %land.lhs.true, label %if.else.73

land.lhs.true:                                    ; preds = %if.end.69
  %51 = load %struct._object*, %struct._object** %get.addr, align 8
  %cmp71 = icmp ne %struct._object* %51, @_Py_NoneStruct
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8
  br label %if.end.80

if.else.73:                                       ; preds = %land.lhs.true, %if.end.69
  %52 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %52, i32 0, i32 4
  %53 = load %struct._object*, %struct._object** %prop_doc, align 8
  %tobool74 = icmp ne %struct._object* %53, null
  br i1 %tobool74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %if.else.73
  %54 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8
  %prop_doc76 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %54, i32 0, i32 4
  %55 = load %struct._object*, %struct._object** %prop_doc76, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.else.73
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.75
  %cond79 = phi %struct._object* [ %55, %cond.true.75 ], [ @_Py_NoneStruct, %cond.false.77 ]
  store %struct._object* %cond79, %struct._object** %doc, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.78, %if.then.72
  %56 = load %struct._object*, %struct._object** %type, align 8
  %57 = load %struct._object*, %struct._object** %get.addr, align 8
  %58 = load %struct._object*, %struct._object** %set.addr, align 8
  %59 = load %struct._object*, %struct._object** %del.addr, align 8
  %60 = load %struct._object*, %struct._object** %doc, align 8
  %call81 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), %struct._object* %57, %struct._object* %58, %struct._object* %59, %struct._object* %60)
  store %struct._object* %call81, %struct._object** %new, align 8
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.80
  %61 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp83, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %63, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %66(%struct._object* %67)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %68 = load %struct._object*, %struct._object** %new, align 8
  %cmp93 = icmp eq %struct._object* %68, null
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %do.end.92
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.95:                                        ; preds = %do.end.92
  %69 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %69, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.94, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

declare %struct._object* @PyObject_Type(%struct._object*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_get___isabstractmethod__(%struct.propertyobject* %prop, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %prop.addr = alloca %struct.propertyobject*, align 8
  %closure.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  store %struct.propertyobject* %prop, %struct.propertyobject** %prop.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.propertyobject*, %struct.propertyobject** %prop.addr, align 8
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %prop_get, align 8
  %call = call i32 @_PyObject_IsAbstract(%struct._object* %1)
  store i32 %call, i32* %res, align 4
  %2 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.propertyobject*, %struct.propertyobject** %prop.addr, align 8
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %prop_set, align 8
  %call3 = call i32 @_PyObject_IsAbstract(%struct._object* %6)
  store i32 %call3, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.6:                                        ; preds = %if.end.2
  %8 = load i32, i32* %res, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else.6
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc9 = add i64 %9, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10
  %10 = load %struct.propertyobject*, %struct.propertyobject** %prop.addr, align 8
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %prop_del, align 8
  %call12 = call i32 @_PyObject_IsAbstract(%struct._object* %11)
  store i32 %call12, i32* %res, align 4
  %12 = load i32, i32* %res, align 4
  %cmp13 = icmp eq i32 %12, -1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.15:                                       ; preds = %if.end.11
  %13 = load i32, i32* %res, align 4
  %tobool16 = icmp ne i32 %13, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.else.15
  %14 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc18 = add i64 %14, 1
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc21 = add i64 %15, 1
  store i64 %inc21, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.17, %if.then.14, %if.then.8, %if.then.5, %if.then.1, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @_PyObject_IsAbstract(%struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139702}
!2 = !{i32 139542}
