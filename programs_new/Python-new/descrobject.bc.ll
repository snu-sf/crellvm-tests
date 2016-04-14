; ModuleID = 'programs_new/Python-new/descrobject.bc.ll'
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
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_xdecref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !579, metadata !1280), !dbg !1281
  br label %do.body, !dbg !1282

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1283
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !580, metadata !1280), !dbg !1285
  %1 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !1286, !tbaa !1276
  %2 = bitcast %struct.PyDescrObject* %1 to %union._gc_head*, !dbg !1287
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !1288
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1285, !tbaa !1276
  br label %do.body.1, !dbg !1289

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1290, !tbaa !1276
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !1293
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1294
  %4 = load i64, i64* %gc_refs, align 8, !dbg !1294, !tbaa !1295
  %and = and i64 %4, 1, !dbg !1298
  %or = or i64 %and, -4, !dbg !1299
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1300, !tbaa !1276
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !1301
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !1302
  store i64 %or, i64* %gc_refs3, align 8, !dbg !1303, !tbaa !1295
  br label %do.cond, !dbg !1304

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !1305

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1307, !tbaa !1276
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !1309
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !1310
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1310, !tbaa !1311
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1312, !tbaa !1276
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !1313
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !1314
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1314, !tbaa !1315
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1316
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !1317
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !1318, !tbaa !1311
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1319, !tbaa !1276
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !1320
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !1321
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !1321, !tbaa !1315
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1322, !tbaa !1276
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1323
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !1324
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !1324, !tbaa !1311
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !1325
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !1326
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !1327, !tbaa !1315
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1328, !tbaa !1276
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !1329
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !1330
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !1331, !tbaa !1311
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !1332
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1332
  br label %do.end.17, !dbg !1333

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !1334

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1335
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !1335
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !582, metadata !1280), !dbg !1337
  %17 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !1338, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %17, i32 0, i32 1, !dbg !1339
  %18 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1339, !tbaa !1340
  %19 = bitcast %struct._typeobject* %18 to %struct._object*, !dbg !1343
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1337, !tbaa !1276
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1344, !tbaa !1276
  %cmp = icmp ne %struct._object* %20, null, !dbg !1345
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !1346

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !1347

do.body.19:                                       ; preds = %if.then
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1349
  call void @llvm.lifetime.start(i64 8, i8* %21) #3, !dbg !1349
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !584, metadata !1280), !dbg !1351
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1352, !tbaa !1276
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !1351, !tbaa !1276
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1353, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1355
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !1356, !tbaa !1357
  %dec = add i64 %24, -1, !dbg !1356
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1356, !tbaa !1357
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1358
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !1359

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !1360

if.else:                                          ; preds = %do.body.19
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1362, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1364
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1364, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1366
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1366, !tbaa !1367
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1371, !tbaa !1276
  call void %27(%struct._object* %28), !dbg !1372
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1373
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1373
  br label %do.cond.22, !dbg !1375

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !1376

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !1378

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %30 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1380
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !1380
  br label %do.end.26, !dbg !1383

do.end.26:                                        ; preds = %if.end.24
  br label %do.body.27, !dbg !1384

do.body.27:                                       ; preds = %do.end.26
  %31 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !1385
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !1385
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp28, metadata !587, metadata !1280), !dbg !1387
  %32 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !1388, !tbaa !1276
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %32, i32 0, i32 2, !dbg !1389
  %33 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !1389, !tbaa !1390
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1387, !tbaa !1276
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1391, !tbaa !1276
  %cmp29 = icmp ne %struct._object* %34, null, !dbg !1392
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !1393

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31, !dbg !1394

do.body.31:                                       ; preds = %if.then.30
  %35 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1396
  call void @llvm.lifetime.start(i64 8, i8* %35) #3, !dbg !1396
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !589, metadata !1280), !dbg !1398
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1399, !tbaa !1276
  store %struct._object* %36, %struct._object** %_py_decref_tmp32, align 8, !dbg !1398, !tbaa !1276
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1400, !tbaa !1276
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1402
  %38 = load i64, i64* %ob_refcnt33, align 8, !dbg !1403, !tbaa !1357
  %dec34 = add i64 %38, -1, !dbg !1403
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1403, !tbaa !1357
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !1404
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !1405

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !1406

if.else.37:                                       ; preds = %do.body.31
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1408, !tbaa !1276
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1410
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1410, !tbaa !1365
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1411
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1411, !tbaa !1367
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1412, !tbaa !1276
  call void %41(%struct._object* %42), !dbg !1413
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %43 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !1414
  br label %do.cond.41, !dbg !1416

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !1417

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43, !dbg !1419

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  %44 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !1421
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !1421
  br label %do.end.45, !dbg !1422

do.end.45:                                        ; preds = %if.end.43
  br label %do.body.46, !dbg !1423

do.body.46:                                       ; preds = %do.end.45
  %45 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %45) #3, !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp47, metadata !592, metadata !1280), !dbg !1426
  %46 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !1427, !tbaa !1276
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %46, i32 0, i32 3, !dbg !1428
  %47 = load %struct._object*, %struct._object** %d_qualname, align 8, !dbg !1428, !tbaa !1429
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !1426, !tbaa !1276
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !1430, !tbaa !1276
  %cmp48 = icmp ne %struct._object* %48, null, !dbg !1431
  br i1 %cmp48, label %if.then.49, label %if.end.62, !dbg !1432

if.then.49:                                       ; preds = %do.body.46
  br label %do.body.50, !dbg !1433

do.body.50:                                       ; preds = %if.then.49
  %49 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 8, i8* %49) #3, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !594, metadata !1280), !dbg !1437
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !1438, !tbaa !1276
  store %struct._object* %50, %struct._object** %_py_decref_tmp51, align 8, !dbg !1437, !tbaa !1276
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1439, !tbaa !1276
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !1441
  %52 = load i64, i64* %ob_refcnt52, align 8, !dbg !1442, !tbaa !1357
  %dec53 = add i64 %52, -1, !dbg !1442
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !1442, !tbaa !1357
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !1443
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !1444

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !1445

if.else.56:                                       ; preds = %do.body.50
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1447, !tbaa !1276
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !1449
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1449, !tbaa !1365
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !1450
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !1450, !tbaa !1367
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !1451, !tbaa !1276
  call void %55(%struct._object* %56), !dbg !1452
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %57 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !1453
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !1453
  br label %do.cond.60, !dbg !1455

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !1456

do.end.61:                                        ; preds = %do.cond.60
  br label %if.end.62, !dbg !1458

if.end.62:                                        ; preds = %do.end.61, %do.body.46
  %58 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !1460
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !1460
  br label %do.end.64, !dbg !1461

do.end.64:                                        ; preds = %if.end.62
  %59 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !1462, !tbaa !1276
  %60 = bitcast %struct.PyDescrObject* %59 to i8*, !dbg !1462
  call void @PyObject_GC_Del(i8* %60), !dbg !1463
  ret void, !dbg !1464
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_repr(%struct.PyMethodDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !601, metadata !1280), !dbg !1465
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1466, !tbaa !1276
  %1 = bitcast %struct.PyMethodDescrObject* %0 to %struct.PyDescrObject*, !dbg !1467
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)), !dbg !1468
  ret %struct._object* %call, !dbg !1469
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !613, metadata !1280), !dbg !1470
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !614, metadata !1280), !dbg !1471
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !615, metadata !1280), !dbg !1472
  %0 = bitcast i64* %argc to i8*, !dbg !1473
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1473
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !616, metadata !1280), !dbg !1474
  %1 = bitcast %struct._object** %self to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !617, metadata !1280), !dbg !1476
  %2 = bitcast %struct._object** %func to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !618, metadata !1280), !dbg !1477
  %3 = bitcast %struct._object** %result to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !619, metadata !1280), !dbg !1478
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1479, !tbaa !1276
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*, !dbg !1480
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !1481
  %6 = load i64, i64* %ob_size, align 8, !dbg !1481, !tbaa !1482
  store i64 %6, i64* %argc, align 8, !dbg !1483, !tbaa !1484
  %7 = load i64, i64* %argc, align 8, !dbg !1485, !tbaa !1484
  %cmp = icmp slt i64 %7, 1, !dbg !1487
  br i1 %cmp, label %if.then, label %if.end, !dbg !1488

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1489, !tbaa !1276
  %9 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1491, !tbaa !1276
  %10 = bitcast %struct.PyMethodDescrObject* %9 to %struct.PyDescrObject*, !dbg !1492
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %10), !dbg !1493
  %11 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1494, !tbaa !1276
  %12 = bitcast %struct.PyMethodDescrObject* %11 to %struct.PyDescrObject*, !dbg !1495
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %12, i32 0, i32 1, !dbg !1496
  %13 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1496, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1, !dbg !1497
  %14 = load i8*, i8** %tp_name, align 8, !dbg !1497, !tbaa !1498
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %14), !dbg !1499
  store %struct._object* null, %struct._object** %retval, !dbg !1500
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1500

if.end:                                           ; preds = %entry
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1501, !tbaa !1276
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !1502
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1, !dbg !1503
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1504
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1504, !tbaa !1276
  store %struct._object* %17, %struct._object** %self, align 8, !dbg !1505, !tbaa !1276
  %18 = load %struct._object*, %struct._object** %self, align 8, !dbg !1506, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1508
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1508, !tbaa !1365
  %20 = bitcast %struct._typeobject* %19 to %struct._object*, !dbg !1509
  %21 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1510, !tbaa !1276
  %22 = bitcast %struct.PyMethodDescrObject* %21 to %struct.PyDescrObject*, !dbg !1511
  %d_type2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %22, i32 0, i32 1, !dbg !1512
  %23 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8, !dbg !1512, !tbaa !1340
  %24 = bitcast %struct._typeobject* %23 to %struct._object*, !dbg !1513
  %call3 = call i32 @_PyObject_RealIsSubclass(%struct._object* %20, %struct._object* %24), !dbg !1514
  %tobool = icmp ne i32 %call3, 0, !dbg !1514
  br i1 %tobool, label %if.end.11, label %if.then.4, !dbg !1515

if.then.4:                                        ; preds = %if.end
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1516, !tbaa !1276
  %26 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1518, !tbaa !1276
  %27 = bitcast %struct.PyMethodDescrObject* %26 to %struct.PyDescrObject*, !dbg !1519
  %call5 = call %struct._object* @descr_name(%struct.PyDescrObject* %27), !dbg !1520
  %28 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1521, !tbaa !1276
  %29 = bitcast %struct.PyMethodDescrObject* %28 to %struct.PyDescrObject*, !dbg !1522
  %d_type6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %29, i32 0, i32 1, !dbg !1523
  %30 = load %struct._typeobject*, %struct._typeobject** %d_type6, align 8, !dbg !1523, !tbaa !1340
  %tp_name7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 1, !dbg !1524
  %31 = load i8*, i8** %tp_name7, align 8, !dbg !1524, !tbaa !1498
  %32 = load %struct._object*, %struct._object** %self, align 8, !dbg !1525, !tbaa !1276
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1526
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1526, !tbaa !1365
  %tp_name9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 1, !dbg !1527
  %34 = load i8*, i8** %tp_name9, align 8, !dbg !1527, !tbaa !1498
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), %struct._object* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %31, i8* %34), !dbg !1528
  store %struct._object* null, %struct._object** %retval, !dbg !1529
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1529

if.end.11:                                        ; preds = %if.end
  %35 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1530, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %35, i32 0, i32 1, !dbg !1531
  %36 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1531, !tbaa !1532
  %37 = load %struct._object*, %struct._object** %self, align 8, !dbg !1534, !tbaa !1276
  %call12 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %36, %struct._object* %37, %struct._object* null), !dbg !1535
  store %struct._object* %call12, %struct._object** %func, align 8, !dbg !1536, !tbaa !1276
  %38 = load %struct._object*, %struct._object** %func, align 8, !dbg !1537, !tbaa !1276
  %cmp13 = icmp eq %struct._object* %38, null, !dbg !1539
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !1540

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !1541
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1541

if.end.15:                                        ; preds = %if.end.11
  %39 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1542, !tbaa !1276
  %40 = load i64, i64* %argc, align 8, !dbg !1543, !tbaa !1484
  %call16 = call %struct._object* @PyTuple_GetSlice(%struct._object* %39, i64 1, i64 %40), !dbg !1544
  store %struct._object* %call16, %struct._object** %args.addr, align 8, !dbg !1545, !tbaa !1276
  %41 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1546, !tbaa !1276
  %cmp17 = icmp eq %struct._object* %41, null, !dbg !1547
  br i1 %cmp17, label %if.then.18, label %if.end.23, !dbg !1548

if.then.18:                                       ; preds = %if.end.15
  br label %do.body, !dbg !1549

do.body:                                          ; preds = %if.then.18
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1550
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !1550
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !620, metadata !1280), !dbg !1552
  %43 = load %struct._object*, %struct._object** %func, align 8, !dbg !1553, !tbaa !1276
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8, !dbg !1552, !tbaa !1276
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1554, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !1556
  %45 = load i64, i64* %ob_refcnt, align 8, !dbg !1557, !tbaa !1357
  %dec = add i64 %45, -1, !dbg !1557
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1557, !tbaa !1357
  %cmp19 = icmp ne i64 %dec, 0, !dbg !1558
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !1559

if.then.20:                                       ; preds = %do.body
  br label %if.end.22, !dbg !1560

if.else:                                          ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1562, !tbaa !1276
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !1564
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1564, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !1565
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1565, !tbaa !1367
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1566, !tbaa !1276
  call void %48(%struct._object* %49), !dbg !1567
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1568
  call void @llvm.lifetime.end(i64 8, i8* %50) #3, !dbg !1568
  br label %do.cond, !dbg !1570

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !1571

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1573
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1573

if.end.23:                                        ; preds = %if.end.15
  %51 = load %struct._object*, %struct._object** %func, align 8, !dbg !1574, !tbaa !1276
  %52 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1575, !tbaa !1276
  %53 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1576, !tbaa !1276
  %call24 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %51, %struct._object* %52, %struct._object* %53), !dbg !1577
  store %struct._object* %call24, %struct._object** %result, align 8, !dbg !1578, !tbaa !1276
  br label %do.body.25, !dbg !1579

do.body.25:                                       ; preds = %if.end.23
  %54 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %54) #3, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !624, metadata !1280), !dbg !1582
  %55 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1583, !tbaa !1276
  store %struct._object* %55, %struct._object** %_py_decref_tmp26, align 8, !dbg !1582, !tbaa !1276
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1584, !tbaa !1276
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1586
  %57 = load i64, i64* %ob_refcnt27, align 8, !dbg !1587, !tbaa !1357
  %dec28 = add i64 %57, -1, !dbg !1587
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1587, !tbaa !1357
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !1588
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !1589

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !1590

if.else.31:                                       ; preds = %do.body.25
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1592, !tbaa !1276
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1594
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1594, !tbaa !1365
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1595
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1595, !tbaa !1367
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1596, !tbaa !1276
  call void %60(%struct._object* %61), !dbg !1597
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %62 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !1598
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !1598
  br label %do.cond.35, !dbg !1600

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !1601

do.end.36:                                        ; preds = %do.cond.35
  br label %do.body.37, !dbg !1603

do.body.37:                                       ; preds = %do.end.36
  %63 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !1604
  call void @llvm.lifetime.start(i64 8, i8* %63) #3, !dbg !1604
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !626, metadata !1280), !dbg !1606
  %64 = load %struct._object*, %struct._object** %func, align 8, !dbg !1607, !tbaa !1276
  store %struct._object* %64, %struct._object** %_py_decref_tmp38, align 8, !dbg !1606, !tbaa !1276
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1608, !tbaa !1276
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1610
  %66 = load i64, i64* %ob_refcnt39, align 8, !dbg !1611, !tbaa !1357
  %dec40 = add i64 %66, -1, !dbg !1611
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !1611, !tbaa !1357
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !1612
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !1613

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !1614

if.else.43:                                       ; preds = %do.body.37
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1616, !tbaa !1276
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1618
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1618, !tbaa !1365
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1619
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1619, !tbaa !1367
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1620, !tbaa !1276
  call void %69(%struct._object* %70), !dbg !1621
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %71 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !1622
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !1622
  br label %do.cond.47, !dbg !1623

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !1624

do.end.48:                                        ; preds = %do.cond.47
  %72 = load %struct._object*, %struct._object** %result, align 8, !dbg !1626, !tbaa !1276
  store %struct._object* %72, %struct._object** %retval, !dbg !1627
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1627

cleanup:                                          ; preds = %do.end.48, %do.end, %if.then.14, %if.then.4, %if.then
  %73 = bitcast %struct._object** %result to i8*, !dbg !1628
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !1628
  %74 = bitcast %struct._object** %func to i8*, !dbg !1628
  call void @llvm.lifetime.end(i64 8, i8* %74) #3, !dbg !1628
  %75 = bitcast %struct._object** %self to i8*, !dbg !1628
  call void @llvm.lifetime.end(i64 8, i8* %75) #3, !dbg !1628
  %76 = bitcast i64* %argc to i8*, !dbg !1628
  call void @llvm.lifetime.end(i64 8, i8* %76) #3, !dbg !1628
  %77 = load %struct._object*, %struct._object** %retval, !dbg !1628
  ret %struct._object* %77, !dbg !1628
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !635, metadata !1280), !dbg !1629
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !636, metadata !1280), !dbg !1630
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !637, metadata !1280), !dbg !1631
  %0 = bitcast %struct.PyDescrObject** %descr to i8*, !dbg !1632
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1632
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr, metadata !638, metadata !1280), !dbg !1633
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1634, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.PyDescrObject*, !dbg !1635
  store %struct.PyDescrObject* %2, %struct.PyDescrObject** %descr, align 8, !dbg !1633, !tbaa !1276
  br label %do.body, !dbg !1636

do.body:                                          ; preds = %entry
  %3 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !1637, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %3, i32 0, i32 1, !dbg !1639
  %4 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1639, !tbaa !1340
  %tobool = icmp ne %struct._typeobject* %4, null, !dbg !1640
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1641

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !1642
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !1642
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !639, metadata !1280), !dbg !1644
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1645, !tbaa !1276
  %7 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !1646, !tbaa !1276
  %d_type1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %7, i32 0, i32 1, !dbg !1647
  %8 = load %struct._typeobject*, %struct._typeobject** %d_type1, align 8, !dbg !1647, !tbaa !1340
  %9 = bitcast %struct._typeobject* %8 to %struct._object*, !dbg !1648
  %10 = load i8*, i8** %arg.addr, align 8, !dbg !1649, !tbaa !1276
  %call = call i32 %6(%struct._object* %9, i8* %10), !dbg !1645
  store i32 %call, i32* %vret, align 4, !dbg !1644, !tbaa !1650
  %11 = load i32, i32* %vret, align 4, !dbg !1651, !tbaa !1650
  %tobool2 = icmp ne i32 %11, 0, !dbg !1651
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1653

if.then.3:                                        ; preds = %if.then
  %12 = load i32, i32* %vret, align 4, !dbg !1654, !tbaa !1650
  store i32 %12, i32* %retval, !dbg !1656
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1656

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1657
  br label %cleanup, !dbg !1657

cleanup:                                          ; preds = %if.end, %if.then.3
  %13 = bitcast i32* %vret to i8*, !dbg !1659
  call void @llvm.lifetime.end(i64 4, i8* %13) #3, !dbg !1659
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.4, !dbg !1662

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !1663

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1666

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !1668
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5, !dbg !1668

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.5

cleanup.5:                                        ; preds = %NewDefault, %do.end
  %14 = bitcast %struct.PyDescrObject** %descr to i8*, !dbg !1669
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1669
  %15 = load i32, i32* %retval, !dbg !1669
  ret i32 %15, !dbg !1669
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get(%struct.PyMethodDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !679, metadata !1280), !dbg !1670
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !680, metadata !1280), !dbg !1671
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !681, metadata !1280), !dbg !1672
  %0 = bitcast %struct._object** %res to i8*, !dbg !1673
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1673
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !682, metadata !1280), !dbg !1674
  %1 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1675, !tbaa !1276
  %2 = bitcast %struct.PyMethodDescrObject* %1 to %struct.PyDescrObject*, !dbg !1677
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1678, !tbaa !1276
  %call = call i32 @descr_check(%struct.PyDescrObject* %2, %struct._object* %3, %struct._object** %res), !dbg !1679
  %tobool = icmp ne i32 %call, 0, !dbg !1679
  br i1 %tobool, label %if.then, label %if.end, !dbg !1680

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !1681, !tbaa !1276
  store %struct._object* %4, %struct._object** %retval, !dbg !1682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1682

if.end:                                           ; preds = %entry
  %5 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1683, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %5, i32 0, i32 1, !dbg !1684
  %6 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1684, !tbaa !1532
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1685, !tbaa !1276
  %call1 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %6, %struct._object* %7, %struct._object* null), !dbg !1686
  store %struct._object* %call1, %struct._object** %retval, !dbg !1687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1687

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._object** %res to i8*, !dbg !1688
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !1688
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1688
  ret %struct._object* %9, !dbg !1688
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !693, metadata !1280), !dbg !1689
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !694, metadata !1280), !dbg !1690
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !695, metadata !1280), !dbg !1691
  %0 = bitcast i64* %argc to i8*, !dbg !1692
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1692
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !696, metadata !1280), !dbg !1693
  %1 = bitcast %struct._object** %self to i8*, !dbg !1694
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !697, metadata !1280), !dbg !1695
  %2 = bitcast %struct._object** %func to i8*, !dbg !1694
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !698, metadata !1280), !dbg !1696
  %3 = bitcast %struct._object** %result to i8*, !dbg !1694
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !699, metadata !1280), !dbg !1697
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1698, !tbaa !1276
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*, !dbg !1699
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !1700
  %6 = load i64, i64* %ob_size, align 8, !dbg !1700, !tbaa !1482
  store i64 %6, i64* %argc, align 8, !dbg !1701, !tbaa !1484
  %7 = load i64, i64* %argc, align 8, !dbg !1702, !tbaa !1484
  %cmp = icmp slt i64 %7, 1, !dbg !1704
  br i1 %cmp, label %if.then, label %if.end, !dbg !1705

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1706, !tbaa !1276
  %9 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1708, !tbaa !1276
  %10 = bitcast %struct.PyMethodDescrObject* %9 to %struct.PyDescrObject*, !dbg !1709
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %10), !dbg !1710
  %11 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1711, !tbaa !1276
  %12 = bitcast %struct.PyMethodDescrObject* %11 to %struct.PyDescrObject*, !dbg !1712
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %12, i32 0, i32 1, !dbg !1713
  %13 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1713, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1, !dbg !1714
  %14 = load i8*, i8** %tp_name, align 8, !dbg !1714, !tbaa !1498
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %14), !dbg !1715
  store %struct._object* null, %struct._object** %retval, !dbg !1716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1716

if.end:                                           ; preds = %entry
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1717, !tbaa !1276
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !1718
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1, !dbg !1719
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1720
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1720, !tbaa !1276
  store %struct._object* %17, %struct._object** %self, align 8, !dbg !1721, !tbaa !1276
  %18 = load %struct._object*, %struct._object** %self, align 8, !dbg !1722, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1724
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1724, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !1725
  %20 = load i64, i64* %tp_flags, align 8, !dbg !1725, !tbaa !1726
  %and = and i64 %20, 2147483648, !dbg !1727
  %cmp2 = icmp ne i64 %and, 0, !dbg !1728
  br i1 %cmp2, label %if.end.10, label %if.then.3, !dbg !1729

if.then.3:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1730, !tbaa !1276
  %22 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1732, !tbaa !1276
  %23 = bitcast %struct.PyMethodDescrObject* %22 to %struct.PyDescrObject*, !dbg !1733
  %call4 = call %struct._object* @descr_name(%struct.PyDescrObject* %23), !dbg !1734
  %24 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1735, !tbaa !1276
  %25 = bitcast %struct.PyMethodDescrObject* %24 to %struct.PyDescrObject*, !dbg !1736
  %d_type5 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %25, i32 0, i32 1, !dbg !1737
  %26 = load %struct._typeobject*, %struct._typeobject** %d_type5, align 8, !dbg !1737, !tbaa !1340
  %tp_name6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 1, !dbg !1738
  %27 = load i8*, i8** %tp_name6, align 8, !dbg !1738, !tbaa !1498
  %28 = load %struct._object*, %struct._object** %self, align 8, !dbg !1739, !tbaa !1276
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1740
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1740, !tbaa !1365
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 1, !dbg !1741
  %30 = load i8*, i8** %tp_name8, align 8, !dbg !1741, !tbaa !1498
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i32 0, i32 0), %struct._object* %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %27, i8* %30), !dbg !1742
  store %struct._object* null, %struct._object** %retval, !dbg !1743
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1743

if.end.10:                                        ; preds = %if.end
  %31 = load %struct._object*, %struct._object** %self, align 8, !dbg !1744, !tbaa !1276
  %32 = bitcast %struct._object* %31 to %struct._typeobject*, !dbg !1746
  %33 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1747, !tbaa !1276
  %34 = bitcast %struct.PyMethodDescrObject* %33 to %struct.PyDescrObject*, !dbg !1748
  %d_type11 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %34, i32 0, i32 1, !dbg !1749
  %35 = load %struct._typeobject*, %struct._typeobject** %d_type11, align 8, !dbg !1749, !tbaa !1340
  %call12 = call i32 @PyType_IsSubtype(%struct._typeobject* %32, %struct._typeobject* %35), !dbg !1750
  %tobool = icmp ne i32 %call12, 0, !dbg !1750
  br i1 %tobool, label %if.end.20, label %if.then.13, !dbg !1751

if.then.13:                                       ; preds = %if.end.10
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1752, !tbaa !1276
  %37 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1754, !tbaa !1276
  %38 = bitcast %struct.PyMethodDescrObject* %37 to %struct.PyDescrObject*, !dbg !1755
  %call14 = call %struct._object* @descr_name(%struct.PyDescrObject* %38), !dbg !1756
  %39 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1757, !tbaa !1276
  %40 = bitcast %struct.PyMethodDescrObject* %39 to %struct.PyDescrObject*, !dbg !1758
  %d_type15 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %40, i32 0, i32 1, !dbg !1759
  %41 = load %struct._typeobject*, %struct._typeobject** %d_type15, align 8, !dbg !1759, !tbaa !1340
  %tp_name16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 1, !dbg !1760
  %42 = load i8*, i8** %tp_name16, align 8, !dbg !1760, !tbaa !1498
  %43 = load %struct._object*, %struct._object** %self, align 8, !dbg !1761, !tbaa !1276
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !1762
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1762, !tbaa !1365
  %tp_name18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 1, !dbg !1763
  %45 = load i8*, i8** %tp_name18, align 8, !dbg !1763, !tbaa !1498
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i32 0, i32 0), %struct._object* %call14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %42, i8* %45), !dbg !1764
  store %struct._object* null, %struct._object** %retval, !dbg !1765
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1765

if.end.20:                                        ; preds = %if.end.10
  %46 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1766, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %46, i32 0, i32 1, !dbg !1767
  %47 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1767, !tbaa !1532
  %48 = load %struct._object*, %struct._object** %self, align 8, !dbg !1768, !tbaa !1276
  %call21 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %47, %struct._object* %48, %struct._object* null), !dbg !1769
  store %struct._object* %call21, %struct._object** %func, align 8, !dbg !1770, !tbaa !1276
  %49 = load %struct._object*, %struct._object** %func, align 8, !dbg !1771, !tbaa !1276
  %cmp22 = icmp eq %struct._object* %49, null, !dbg !1773
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !1774

if.then.23:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval, !dbg !1775
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1775

if.end.24:                                        ; preds = %if.end.20
  %50 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1776, !tbaa !1276
  %51 = load i64, i64* %argc, align 8, !dbg !1777, !tbaa !1484
  %call25 = call %struct._object* @PyTuple_GetSlice(%struct._object* %50, i64 1, i64 %51), !dbg !1778
  store %struct._object* %call25, %struct._object** %args.addr, align 8, !dbg !1779, !tbaa !1276
  %52 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1780, !tbaa !1276
  %cmp26 = icmp eq %struct._object* %52, null, !dbg !1781
  br i1 %cmp26, label %if.then.27, label %if.end.32, !dbg !1782

if.then.27:                                       ; preds = %if.end.24
  br label %do.body, !dbg !1783

do.body:                                          ; preds = %if.then.27
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1784
  call void @llvm.lifetime.start(i64 8, i8* %53) #3, !dbg !1784
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !700, metadata !1280), !dbg !1786
  %54 = load %struct._object*, %struct._object** %func, align 8, !dbg !1787, !tbaa !1276
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8, !dbg !1786, !tbaa !1276
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1788, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !1790
  %56 = load i64, i64* %ob_refcnt, align 8, !dbg !1791, !tbaa !1357
  %dec = add i64 %56, -1, !dbg !1791
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1791, !tbaa !1357
  %cmp28 = icmp ne i64 %dec, 0, !dbg !1792
  br i1 %cmp28, label %if.then.29, label %if.else, !dbg !1793

if.then.29:                                       ; preds = %do.body
  br label %if.end.31, !dbg !1794

if.else:                                          ; preds = %do.body
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1796, !tbaa !1276
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1798
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !1798, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !1799
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1799, !tbaa !1367
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1800, !tbaa !1276
  call void %59(%struct._object* %60), !dbg !1801
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  %61 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1802
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !1802
  br label %do.cond, !dbg !1804

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !1805

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1807
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1807

if.end.32:                                        ; preds = %if.end.24
  %62 = load %struct._object*, %struct._object** %func, align 8, !dbg !1808, !tbaa !1276
  %63 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1809, !tbaa !1276
  %64 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1810, !tbaa !1276
  %call33 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %62, %struct._object* %63, %struct._object* %64), !dbg !1811
  store %struct._object* %call33, %struct._object** %result, align 8, !dbg !1812, !tbaa !1276
  br label %do.body.34, !dbg !1813

do.body.34:                                       ; preds = %if.end.32
  %65 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !1814
  call void @llvm.lifetime.start(i64 8, i8* %65) #3, !dbg !1814
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !704, metadata !1280), !dbg !1816
  %66 = load %struct._object*, %struct._object** %func, align 8, !dbg !1817, !tbaa !1276
  store %struct._object* %66, %struct._object** %_py_decref_tmp35, align 8, !dbg !1816, !tbaa !1276
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1818, !tbaa !1276
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !1820
  %68 = load i64, i64* %ob_refcnt36, align 8, !dbg !1821, !tbaa !1357
  %dec37 = add i64 %68, -1, !dbg !1821
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1821, !tbaa !1357
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !1822
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !1823

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !1824

if.else.40:                                       ; preds = %do.body.34
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1826, !tbaa !1276
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1, !dbg !1828
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1828, !tbaa !1365
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4, !dbg !1829
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1829, !tbaa !1367
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1830, !tbaa !1276
  call void %71(%struct._object* %72), !dbg !1831
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %73 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !1832
  br label %do.cond.44, !dbg !1834

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !1835

do.end.45:                                        ; preds = %do.cond.44
  br label %do.body.46, !dbg !1837

do.body.46:                                       ; preds = %do.end.45
  %74 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 8, i8* %74) #3, !dbg !1838
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp47, metadata !706, metadata !1280), !dbg !1840
  %75 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1841, !tbaa !1276
  store %struct._object* %75, %struct._object** %_py_decref_tmp47, align 8, !dbg !1840, !tbaa !1276
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !1842, !tbaa !1276
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !1844
  %77 = load i64, i64* %ob_refcnt48, align 8, !dbg !1845, !tbaa !1357
  %dec49 = add i64 %77, -1, !dbg !1845
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !1845, !tbaa !1357
  %cmp50 = icmp ne i64 %dec49, 0, !dbg !1846
  br i1 %cmp50, label %if.then.51, label %if.else.52, !dbg !1847

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55, !dbg !1848

if.else.52:                                       ; preds = %do.body.46
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !1850, !tbaa !1276
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !1852
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1852, !tbaa !1365
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4, !dbg !1853
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !1853, !tbaa !1367
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !1854, !tbaa !1276
  call void %80(%struct._object* %81), !dbg !1855
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %82 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !1856
  call void @llvm.lifetime.end(i64 8, i8* %82) #3, !dbg !1856
  br label %do.cond.56, !dbg !1857

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !1858

do.end.57:                                        ; preds = %do.cond.56
  %83 = load %struct._object*, %struct._object** %result, align 8, !dbg !1860, !tbaa !1276
  store %struct._object* %83, %struct._object** %retval, !dbg !1861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1861

cleanup:                                          ; preds = %do.end.57, %do.end, %if.then.23, %if.then.13, %if.then.3, %if.then
  %84 = bitcast %struct._object** %result to i8*, !dbg !1862
  call void @llvm.lifetime.end(i64 8, i8* %84) #3, !dbg !1862
  %85 = bitcast %struct._object** %func to i8*, !dbg !1862
  call void @llvm.lifetime.end(i64 8, i8* %85) #3, !dbg !1862
  %86 = bitcast %struct._object** %self to i8*, !dbg !1862
  call void @llvm.lifetime.end(i64 8, i8* %86) #3, !dbg !1862
  %87 = bitcast i64* %argc to i8*, !dbg !1862
  call void @llvm.lifetime.end(i64 8, i8* %87) #3, !dbg !1862
  %88 = load %struct._object*, %struct._object** %retval, !dbg !1862
  ret %struct._object* %88, !dbg !1862
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @classmethod_get(%struct.PyMethodDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !710, metadata !1280), !dbg !1863
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !711, metadata !1280), !dbg !1864
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !712, metadata !1280), !dbg !1865
  %0 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1866, !tbaa !1276
  %cmp = icmp eq %struct._object* %0, null, !dbg !1868
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1869

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1870, !tbaa !1276
  %cmp1 = icmp ne %struct._object* %1, null, !dbg !1873
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1874

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1875, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1876
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1876, !tbaa !1365
  %4 = bitcast %struct._typeobject* %3 to %struct._object*, !dbg !1877
  store %struct._object* %4, %struct._object** %type.addr, align 8, !dbg !1878, !tbaa !1276
  br label %if.end, !dbg !1879

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1880, !tbaa !1276
  %6 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1882, !tbaa !1276
  %7 = bitcast %struct.PyMethodDescrObject* %6 to %struct.PyDescrObject*, !dbg !1883
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %7), !dbg !1884
  %8 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1885, !tbaa !1276
  %9 = bitcast %struct.PyMethodDescrObject* %8 to %struct.PyDescrObject*, !dbg !1886
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 1, !dbg !1887
  %10 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !1887, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1, !dbg !1888
  %11 = load i8*, i8** %tp_name, align 8, !dbg !1888, !tbaa !1498
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %11), !dbg !1889
  store %struct._object* null, %struct._object** %retval, !dbg !1890
  br label %return, !dbg !1890

if.end:                                           ; preds = %if.then.2
  br label %if.end.4, !dbg !1891

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1892, !tbaa !1276
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1894
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1894, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19, !dbg !1895
  %14 = load i64, i64* %tp_flags, align 8, !dbg !1895, !tbaa !1726
  %and = and i64 %14, 2147483648, !dbg !1896
  %cmp6 = icmp ne i64 %and, 0, !dbg !1897
  br i1 %cmp6, label %if.end.14, label %if.then.7, !dbg !1898

if.then.7:                                        ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1899, !tbaa !1276
  %16 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1901, !tbaa !1276
  %17 = bitcast %struct.PyMethodDescrObject* %16 to %struct.PyDescrObject*, !dbg !1902
  %call8 = call %struct._object* @descr_name(%struct.PyDescrObject* %17), !dbg !1903
  %18 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1904, !tbaa !1276
  %19 = bitcast %struct.PyMethodDescrObject* %18 to %struct.PyDescrObject*, !dbg !1905
  %d_type9 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %19, i32 0, i32 1, !dbg !1906
  %20 = load %struct._typeobject*, %struct._typeobject** %d_type9, align 8, !dbg !1906, !tbaa !1340
  %tp_name10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1, !dbg !1907
  %21 = load i8*, i8** %tp_name10, align 8, !dbg !1907, !tbaa !1498
  %22 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1908, !tbaa !1276
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1909
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1909, !tbaa !1365
  %tp_name12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 1, !dbg !1910
  %24 = load i8*, i8** %tp_name12, align 8, !dbg !1910, !tbaa !1498
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i32 0, i32 0), %struct._object* %call8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %21, i8* %24), !dbg !1911
  store %struct._object* null, %struct._object** %retval, !dbg !1912
  br label %return, !dbg !1912

if.end.14:                                        ; preds = %if.end.4
  %25 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1913, !tbaa !1276
  %26 = bitcast %struct._object* %25 to %struct._typeobject*, !dbg !1915
  %27 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1916, !tbaa !1276
  %28 = bitcast %struct.PyMethodDescrObject* %27 to %struct.PyDescrObject*, !dbg !1917
  %d_type15 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %28, i32 0, i32 1, !dbg !1918
  %29 = load %struct._typeobject*, %struct._typeobject** %d_type15, align 8, !dbg !1918, !tbaa !1340
  %call16 = call i32 @PyType_IsSubtype(%struct._typeobject* %26, %struct._typeobject* %29), !dbg !1919
  %tobool = icmp ne i32 %call16, 0, !dbg !1919
  br i1 %tobool, label %if.end.23, label %if.then.17, !dbg !1920

if.then.17:                                       ; preds = %if.end.14
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1921, !tbaa !1276
  %31 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1923, !tbaa !1276
  %32 = bitcast %struct.PyMethodDescrObject* %31 to %struct.PyDescrObject*, !dbg !1924
  %call18 = call %struct._object* @descr_name(%struct.PyDescrObject* %32), !dbg !1925
  %33 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1926, !tbaa !1276
  %34 = bitcast %struct.PyMethodDescrObject* %33 to %struct.PyDescrObject*, !dbg !1927
  %d_type19 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %34, i32 0, i32 1, !dbg !1928
  %35 = load %struct._typeobject*, %struct._typeobject** %d_type19, align 8, !dbg !1928, !tbaa !1340
  %tp_name20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 1, !dbg !1929
  %36 = load i8*, i8** %tp_name20, align 8, !dbg !1929, !tbaa !1498
  %37 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1930, !tbaa !1276
  %38 = bitcast %struct._object* %37 to %struct._typeobject*, !dbg !1931
  %tp_name21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 1, !dbg !1932
  %39 = load i8*, i8** %tp_name21, align 8, !dbg !1932, !tbaa !1498
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i32 0, i32 0), %struct._object* %call18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %36, i8* %39), !dbg !1933
  store %struct._object* null, %struct._object** %retval, !dbg !1934
  br label %return, !dbg !1934

if.end.23:                                        ; preds = %if.end.14
  %40 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !1935, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %40, i32 0, i32 1, !dbg !1936
  %41 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !1936, !tbaa !1532
  %42 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1937, !tbaa !1276
  %call24 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %41, %struct._object* %42, %struct._object* null), !dbg !1938
  store %struct._object* %call24, %struct._object** %retval, !dbg !1939
  br label %return, !dbg !1939

return:                                           ; preds = %if.end.23, %if.then.17, %if.then.7, %if.else
  %43 = load %struct._object*, %struct._object** %retval, !dbg !1940
  ret %struct._object* %43, !dbg !1940
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_repr(%struct.PyMemberDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMemberDescrObject** %descr.addr, metadata !717, metadata !1280), !dbg !1941
  %0 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !1942, !tbaa !1276
  %1 = bitcast %struct.PyMemberDescrObject* %0 to %struct.PyDescrObject*, !dbg !1943
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0)), !dbg !1944
  ret %struct._object* %call, !dbg !1945
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_get(%struct.PyMemberDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMemberDescrObject** %descr.addr, metadata !728, metadata !1280), !dbg !1946
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !729, metadata !1280), !dbg !1947
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !730, metadata !1280), !dbg !1948
  %0 = bitcast %struct._object** %res to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !731, metadata !1280), !dbg !1950
  %1 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !1951, !tbaa !1276
  %2 = bitcast %struct.PyMemberDescrObject* %1 to %struct.PyDescrObject*, !dbg !1953
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1954, !tbaa !1276
  %call = call i32 @descr_check(%struct.PyDescrObject* %2, %struct._object* %3, %struct._object** %res), !dbg !1955
  %tobool = icmp ne i32 %call, 0, !dbg !1955
  br i1 %tobool, label %if.then, label %if.end, !dbg !1956

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !1957, !tbaa !1276
  store %struct._object* %4, %struct._object** %retval, !dbg !1958
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1958

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1959, !tbaa !1276
  %6 = bitcast %struct._object* %5 to i8*, !dbg !1960
  %7 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !1961, !tbaa !1276
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %7, i32 0, i32 1, !dbg !1962
  %8 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8, !dbg !1962, !tbaa !1532
  %call1 = call %struct._object* @PyMember_GetOne(i8* %6, %struct.PyMemberDef* %8), !dbg !1963
  store %struct._object* %call1, %struct._object** %retval, !dbg !1964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1964

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._object** %res to i8*, !dbg !1965
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !1965
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1965
  ret %struct._object* %10, !dbg !1965
}

; Function Attrs: nounwind uwtable
define internal i32 @member_set(%struct.PyMemberDescrObject* %descr, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMemberDescrObject** %descr.addr, metadata !736, metadata !1280), !dbg !1966
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !737, metadata !1280), !dbg !1967
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !738, metadata !1280), !dbg !1968
  %0 = bitcast i32* %res to i8*, !dbg !1969
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1969
  call void @llvm.dbg.declare(metadata i32* %res, metadata !739, metadata !1280), !dbg !1970
  %1 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !1971, !tbaa !1276
  %2 = bitcast %struct.PyMemberDescrObject* %1 to %struct.PyDescrObject*, !dbg !1973
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1974, !tbaa !1276
  %4 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1975, !tbaa !1276
  %call = call i32 @descr_setcheck(%struct.PyDescrObject* %2, %struct._object* %3, %struct._object* %4, i32* %res), !dbg !1976
  %tobool = icmp ne i32 %call, 0, !dbg !1976
  br i1 %tobool, label %if.then, label %if.end, !dbg !1977

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %res, align 4, !dbg !1978, !tbaa !1650
  store i32 %5, i32* %retval, !dbg !1979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1979

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1980, !tbaa !1276
  %7 = bitcast %struct._object* %6 to i8*, !dbg !1981
  %8 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !1982, !tbaa !1276
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %8, i32 0, i32 1, !dbg !1983
  %9 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8, !dbg !1983, !tbaa !1532
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1984, !tbaa !1276
  %call1 = call i32 @PyMember_SetOne(i8* %7, %struct.PyMemberDef* %9, %struct._object* %10), !dbg !1985
  store i32 %call1, i32* %retval, !dbg !1986
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1986

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %res to i8*, !dbg !1987
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !dbg !1987
  %12 = load i32, i32* %retval, !dbg !1987
  ret i32 %12, !dbg !1987
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_repr(%struct.PyGetSetDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyGetSetDescrObject** %descr.addr, metadata !753, metadata !1280), !dbg !1988
  %0 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !1989, !tbaa !1276
  %1 = bitcast %struct.PyGetSetDescrObject* %0 to %struct.PyDescrObject*, !dbg !1990
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)), !dbg !1991
  ret %struct._object* %call, !dbg !1992
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_get(%struct.PyGetSetDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyGetSetDescrObject** %descr.addr, metadata !764, metadata !1280), !dbg !1993
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !765, metadata !1280), !dbg !1994
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !766, metadata !1280), !dbg !1995
  %0 = bitcast %struct._object** %res to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1996
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !767, metadata !1280), !dbg !1997
  %1 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !1998, !tbaa !1276
  %2 = bitcast %struct.PyGetSetDescrObject* %1 to %struct.PyDescrObject*, !dbg !2000
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2001, !tbaa !1276
  %call = call i32 @descr_check(%struct.PyDescrObject* %2, %struct._object* %3, %struct._object** %res), !dbg !2002
  %tobool = icmp ne i32 %call, 0, !dbg !2002
  br i1 %tobool, label %if.then, label %if.end, !dbg !2003

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !2004, !tbaa !1276
  store %struct._object* %4, %struct._object** %retval, !dbg !2005
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2005

if.end:                                           ; preds = %entry
  %5 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2006, !tbaa !1276
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %5, i32 0, i32 1, !dbg !2008
  %6 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8, !dbg !2008, !tbaa !1532
  %get = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %6, i32 0, i32 1, !dbg !2009
  %7 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %get, align 8, !dbg !2009, !tbaa !2010
  %cmp = icmp ne %struct._object* (%struct._object*, i8*)* %7, null, !dbg !2012
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !2013

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2014, !tbaa !1276
  %d_getset2 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %8, i32 0, i32 1, !dbg !2015
  %9 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset2, align 8, !dbg !2015, !tbaa !1532
  %get3 = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %9, i32 0, i32 1, !dbg !2016
  %10 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %get3, align 8, !dbg !2016, !tbaa !2010
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2017, !tbaa !1276
  %12 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2018, !tbaa !1276
  %d_getset4 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %12, i32 0, i32 1, !dbg !2019
  %13 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset4, align 8, !dbg !2019, !tbaa !1532
  %closure = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %13, i32 0, i32 4, !dbg !2020
  %14 = load i8*, i8** %closure, align 8, !dbg !2020, !tbaa !2021
  %call5 = call %struct._object* %10(%struct._object* %11, i8* %14), !dbg !2014
  store %struct._object* %call5, %struct._object** %retval, !dbg !2022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2022

if.end.6:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !2023, !tbaa !1276
  %16 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2024, !tbaa !1276
  %17 = bitcast %struct.PyGetSetDescrObject* %16 to %struct.PyDescrObject*, !dbg !2025
  %call7 = call %struct._object* @descr_name(%struct.PyDescrObject* %17), !dbg !2026
  %18 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2027, !tbaa !1276
  %19 = bitcast %struct.PyGetSetDescrObject* %18 to %struct.PyDescrObject*, !dbg !2028
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %19, i32 0, i32 1, !dbg !2029
  %20 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !2029, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1, !dbg !2030
  %21 = load i8*, i8** %tp_name, align 8, !dbg !2030, !tbaa !1498
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0), %struct._object* %call7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %21), !dbg !2031
  store %struct._object* null, %struct._object** %retval, !dbg !2032
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2032

cleanup:                                          ; preds = %if.end.6, %if.then.1, %if.then
  %22 = bitcast %struct._object** %res to i8*, !dbg !2033
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2033
  %23 = load %struct._object*, %struct._object** %retval, !dbg !2033
  ret %struct._object* %23, !dbg !2033
}

; Function Attrs: nounwind uwtable
define internal i32 @getset_set(%struct.PyGetSetDescrObject* %descr, %struct._object* %obj, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyGetSetDescrObject** %descr.addr, metadata !772, metadata !1280), !dbg !2034
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !773, metadata !1280), !dbg !2035
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !774, metadata !1280), !dbg !2036
  %0 = bitcast i32* %res to i8*, !dbg !2037
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2037
  call void @llvm.dbg.declare(metadata i32* %res, metadata !775, metadata !1280), !dbg !2038
  %1 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2039, !tbaa !1276
  %2 = bitcast %struct.PyGetSetDescrObject* %1 to %struct.PyDescrObject*, !dbg !2041
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2042, !tbaa !1276
  %4 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2043, !tbaa !1276
  %call = call i32 @descr_setcheck(%struct.PyDescrObject* %2, %struct._object* %3, %struct._object* %4, i32* %res), !dbg !2044
  %tobool = icmp ne i32 %call, 0, !dbg !2044
  br i1 %tobool, label %if.then, label %if.end, !dbg !2045

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %res, align 4, !dbg !2046, !tbaa !1650
  store i32 %5, i32* %retval, !dbg !2047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2047

if.end:                                           ; preds = %entry
  %6 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2048, !tbaa !1276
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %6, i32 0, i32 1, !dbg !2050
  %7 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8, !dbg !2050, !tbaa !1532
  %set = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %7, i32 0, i32 2, !dbg !2051
  %8 = load i32 (%struct._object*, %struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)** %set, align 8, !dbg !2051, !tbaa !2052
  %cmp = icmp ne i32 (%struct._object*, %struct._object*, i8*)* %8, null, !dbg !2053
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !2054

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2055, !tbaa !1276
  %d_getset2 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %9, i32 0, i32 1, !dbg !2056
  %10 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset2, align 8, !dbg !2056, !tbaa !1532
  %set3 = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %10, i32 0, i32 2, !dbg !2057
  %11 = load i32 (%struct._object*, %struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)** %set3, align 8, !dbg !2057, !tbaa !2052
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2058, !tbaa !1276
  %13 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2059, !tbaa !1276
  %14 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2060, !tbaa !1276
  %d_getset4 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %14, i32 0, i32 1, !dbg !2061
  %15 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset4, align 8, !dbg !2061, !tbaa !1532
  %closure = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %15, i32 0, i32 4, !dbg !2062
  %16 = load i8*, i8** %closure, align 8, !dbg !2062, !tbaa !2021
  %call5 = call i32 %11(%struct._object* %12, %struct._object* %13, i8* %16), !dbg !2055
  store i32 %call5, i32* %retval, !dbg !2063
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2063

if.end.6:                                         ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !2064, !tbaa !1276
  %18 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2065, !tbaa !1276
  %19 = bitcast %struct.PyGetSetDescrObject* %18 to %struct.PyDescrObject*, !dbg !2066
  %call7 = call %struct._object* @descr_name(%struct.PyDescrObject* %19), !dbg !2067
  %20 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !2068, !tbaa !1276
  %21 = bitcast %struct.PyGetSetDescrObject* %20 to %struct.PyDescrObject*, !dbg !2069
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %21, i32 0, i32 1, !dbg !2070
  %22 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !2070, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 1, !dbg !2071
  %23 = load i8*, i8** %tp_name, align 8, !dbg !2071, !tbaa !1498
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0), %struct._object* %call7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %23), !dbg !2072
  store i32 -1, i32* %retval, !dbg !2073
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2073

cleanup:                                          ; preds = %if.end.6, %if.then.1, %if.then
  %24 = bitcast i32* %res to i8*, !dbg !2074
  call void @llvm.lifetime.end(i64 4, i8* %24) #3, !dbg !2074
  %25 = load i32, i32* %retval, !dbg !2074
  ret i32 %25, !dbg !2074
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_repr(%struct.PyWrapperDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr.addr, metadata !780, metadata !1280), !dbg !2075
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2076, !tbaa !1276
  %1 = bitcast %struct.PyWrapperDescrObject* %0 to %struct.PyDescrObject*, !dbg !2077
  %call = call %struct._object* @descr_repr(%struct.PyDescrObject* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0)), !dbg !2078
  ret %struct._object* %call, !dbg !2079
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr.addr, metadata !785, metadata !1280), !dbg !2080
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !786, metadata !1280), !dbg !2081
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !787, metadata !1280), !dbg !2082
  %0 = bitcast i64* %argc to i8*, !dbg !2083
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2083
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !788, metadata !1280), !dbg !2084
  %1 = bitcast %struct._object** %self to i8*, !dbg !2085
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2085
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !789, metadata !1280), !dbg !2086
  %2 = bitcast %struct._object** %func to i8*, !dbg !2085
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2085
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !790, metadata !1280), !dbg !2087
  %3 = bitcast %struct._object** %result to i8*, !dbg !2085
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2085
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !791, metadata !1280), !dbg !2088
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2089, !tbaa !1276
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*, !dbg !2090
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !2091
  %6 = load i64, i64* %ob_size, align 8, !dbg !2091, !tbaa !1482
  store i64 %6, i64* %argc, align 8, !dbg !2092, !tbaa !1484
  %7 = load i64, i64* %argc, align 8, !dbg !2093, !tbaa !1484
  %cmp = icmp slt i64 %7, 1, !dbg !2095
  br i1 %cmp, label %if.then, label %if.end, !dbg !2096

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2097, !tbaa !1276
  %9 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2099, !tbaa !1276
  %10 = bitcast %struct.PyWrapperDescrObject* %9 to %struct.PyDescrObject*, !dbg !2100
  %call = call %struct._object* @descr_name(%struct.PyDescrObject* %10), !dbg !2101
  %11 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2102, !tbaa !1276
  %12 = bitcast %struct.PyWrapperDescrObject* %11 to %struct.PyDescrObject*, !dbg !2103
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %12, i32 0, i32 1, !dbg !2104
  %13 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !2104, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1, !dbg !2105
  %14 = load i8*, i8** %tp_name, align 8, !dbg !2105, !tbaa !1498
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %14), !dbg !2106
  store %struct._object* null, %struct._object** %retval, !dbg !2107
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2107

if.end:                                           ; preds = %entry
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2108, !tbaa !1276
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*, !dbg !2109
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1, !dbg !2110
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2111
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2111, !tbaa !1276
  store %struct._object* %17, %struct._object** %self, align 8, !dbg !2112, !tbaa !1276
  %18 = load %struct._object*, %struct._object** %self, align 8, !dbg !2113, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2115
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2115, !tbaa !1365
  %20 = bitcast %struct._typeobject* %19 to %struct._object*, !dbg !2116
  %21 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2117, !tbaa !1276
  %22 = bitcast %struct.PyWrapperDescrObject* %21 to %struct.PyDescrObject*, !dbg !2118
  %d_type2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %22, i32 0, i32 1, !dbg !2119
  %23 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8, !dbg !2119, !tbaa !1340
  %24 = bitcast %struct._typeobject* %23 to %struct._object*, !dbg !2120
  %call3 = call i32 @_PyObject_RealIsSubclass(%struct._object* %20, %struct._object* %24), !dbg !2121
  %tobool = icmp ne i32 %call3, 0, !dbg !2121
  br i1 %tobool, label %if.end.11, label %if.then.4, !dbg !2122

if.then.4:                                        ; preds = %if.end
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2123, !tbaa !1276
  %26 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2125, !tbaa !1276
  %27 = bitcast %struct.PyWrapperDescrObject* %26 to %struct.PyDescrObject*, !dbg !2126
  %call5 = call %struct._object* @descr_name(%struct.PyDescrObject* %27), !dbg !2127
  %28 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2128, !tbaa !1276
  %29 = bitcast %struct.PyWrapperDescrObject* %28 to %struct.PyDescrObject*, !dbg !2129
  %d_type6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %29, i32 0, i32 1, !dbg !2130
  %30 = load %struct._typeobject*, %struct._typeobject** %d_type6, align 8, !dbg !2130, !tbaa !1340
  %tp_name7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 1, !dbg !2131
  %31 = load i8*, i8** %tp_name7, align 8, !dbg !2131, !tbaa !1498
  %32 = load %struct._object*, %struct._object** %self, align 8, !dbg !2132, !tbaa !1276
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2133
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !2133, !tbaa !1365
  %tp_name9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 1, !dbg !2134
  %34 = load i8*, i8** %tp_name9, align 8, !dbg !2134, !tbaa !1498
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), %struct._object* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %31, i8* %34), !dbg !2135
  store %struct._object* null, %struct._object** %retval, !dbg !2136
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2136

if.end.11:                                        ; preds = %if.end
  %35 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2137, !tbaa !1276
  %36 = bitcast %struct.PyWrapperDescrObject* %35 to %struct._object*, !dbg !2138
  %37 = load %struct._object*, %struct._object** %self, align 8, !dbg !2139, !tbaa !1276
  %call12 = call %struct._object* @PyWrapper_New(%struct._object* %36, %struct._object* %37), !dbg !2140
  store %struct._object* %call12, %struct._object** %func, align 8, !dbg !2141, !tbaa !1276
  %38 = load %struct._object*, %struct._object** %func, align 8, !dbg !2142, !tbaa !1276
  %cmp13 = icmp eq %struct._object* %38, null, !dbg !2144
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !2145

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !2146
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2146

if.end.15:                                        ; preds = %if.end.11
  %39 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2147, !tbaa !1276
  %40 = load i64, i64* %argc, align 8, !dbg !2148, !tbaa !1484
  %call16 = call %struct._object* @PyTuple_GetSlice(%struct._object* %39, i64 1, i64 %40), !dbg !2149
  store %struct._object* %call16, %struct._object** %args.addr, align 8, !dbg !2150, !tbaa !1276
  %41 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2151, !tbaa !1276
  %cmp17 = icmp eq %struct._object* %41, null, !dbg !2152
  br i1 %cmp17, label %if.then.18, label %if.end.23, !dbg !2153

if.then.18:                                       ; preds = %if.end.15
  br label %do.body, !dbg !2154

do.body:                                          ; preds = %if.then.18
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2155
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !2155
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !792, metadata !1280), !dbg !2157
  %43 = load %struct._object*, %struct._object** %func, align 8, !dbg !2158, !tbaa !1276
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8, !dbg !2157, !tbaa !1276
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2159, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !2161
  %45 = load i64, i64* %ob_refcnt, align 8, !dbg !2162, !tbaa !1357
  %dec = add i64 %45, -1, !dbg !2162
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2162, !tbaa !1357
  %cmp19 = icmp ne i64 %dec, 0, !dbg !2163
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !2164

if.then.20:                                       ; preds = %do.body
  br label %if.end.22, !dbg !2165

if.else:                                          ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2167, !tbaa !1276
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !2169
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !2169, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !2170
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2170, !tbaa !1367
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2171, !tbaa !1276
  call void %48(%struct._object* %49), !dbg !2172
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2173
  call void @llvm.lifetime.end(i64 8, i8* %50) #3, !dbg !2173
  br label %do.cond, !dbg !2175

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !2176

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2178
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2178

if.end.23:                                        ; preds = %if.end.15
  %51 = load %struct._object*, %struct._object** %func, align 8, !dbg !2179, !tbaa !1276
  %52 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2180, !tbaa !1276
  %53 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2181, !tbaa !1276
  %call24 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %51, %struct._object* %52, %struct._object* %53), !dbg !2182
  store %struct._object* %call24, %struct._object** %result, align 8, !dbg !2183, !tbaa !1276
  br label %do.body.25, !dbg !2184

do.body.25:                                       ; preds = %if.end.23
  %54 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2185
  call void @llvm.lifetime.start(i64 8, i8* %54) #3, !dbg !2185
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !796, metadata !1280), !dbg !2187
  %55 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2188, !tbaa !1276
  store %struct._object* %55, %struct._object** %_py_decref_tmp26, align 8, !dbg !2187, !tbaa !1276
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2189, !tbaa !1276
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !2191
  %57 = load i64, i64* %ob_refcnt27, align 8, !dbg !2192, !tbaa !1357
  %dec28 = add i64 %57, -1, !dbg !2192
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2192, !tbaa !1357
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !2193
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !2194

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !2195

if.else.31:                                       ; preds = %do.body.25
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2197, !tbaa !1276
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !2199
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !2199, !tbaa !1365
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !2200
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !2200, !tbaa !1367
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2201, !tbaa !1276
  call void %60(%struct._object* %61), !dbg !2202
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %62 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2203
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !2203
  br label %do.cond.35, !dbg !2205

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !2206

do.end.36:                                        ; preds = %do.cond.35
  br label %do.body.37, !dbg !2208

do.body.37:                                       ; preds = %do.end.36
  %63 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !2209
  call void @llvm.lifetime.start(i64 8, i8* %63) #3, !dbg !2209
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !798, metadata !1280), !dbg !2211
  %64 = load %struct._object*, %struct._object** %func, align 8, !dbg !2212, !tbaa !1276
  store %struct._object* %64, %struct._object** %_py_decref_tmp38, align 8, !dbg !2211, !tbaa !1276
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2213, !tbaa !1276
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !2215
  %66 = load i64, i64* %ob_refcnt39, align 8, !dbg !2216, !tbaa !1357
  %dec40 = add i64 %66, -1, !dbg !2216
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !2216, !tbaa !1357
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !2217
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !2218

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !2219

if.else.43:                                       ; preds = %do.body.37
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2221, !tbaa !1276
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !2223
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !2223, !tbaa !1365
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !2224
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !2224, !tbaa !1367
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2225, !tbaa !1276
  call void %69(%struct._object* %70), !dbg !2226
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %71 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !2227
  br label %do.cond.47, !dbg !2228

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !2229

do.end.48:                                        ; preds = %do.cond.47
  %72 = load %struct._object*, %struct._object** %result, align 8, !dbg !2231, !tbaa !1276
  store %struct._object* %72, %struct._object** %retval, !dbg !2232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2232

cleanup:                                          ; preds = %do.end.48, %do.end, %if.then.14, %if.then.4, %if.then
  %73 = bitcast %struct._object** %result to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !2233
  %74 = bitcast %struct._object** %func to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %74) #3, !dbg !2233
  %75 = bitcast %struct._object** %self to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %75) #3, !dbg !2233
  %76 = bitcast i64* %argc to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %76) #3, !dbg !2233
  %77 = load %struct._object*, %struct._object** %retval, !dbg !2233
  ret %struct._object* %77, !dbg !2233
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get(%struct.PyWrapperDescrObject* %descr, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr.addr, metadata !812, metadata !1280), !dbg !2234
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !813, metadata !1280), !dbg !2235
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !814, metadata !1280), !dbg !2236
  %0 = bitcast %struct._object** %res to i8*, !dbg !2237
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2237
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !815, metadata !1280), !dbg !2238
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2239, !tbaa !1276
  %2 = bitcast %struct.PyWrapperDescrObject* %1 to %struct.PyDescrObject*, !dbg !2241
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2242, !tbaa !1276
  %call = call i32 @descr_check(%struct.PyDescrObject* %2, %struct._object* %3, %struct._object** %res), !dbg !2243
  %tobool = icmp ne i32 %call, 0, !dbg !2243
  br i1 %tobool, label %if.then, label %if.end, !dbg !2244

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8, !dbg !2245, !tbaa !1276
  store %struct._object* %4, %struct._object** %retval, !dbg !2246
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2246

if.end:                                           ; preds = %entry
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !2247, !tbaa !1276
  %6 = bitcast %struct.PyWrapperDescrObject* %5 to %struct._object*, !dbg !2248
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2249, !tbaa !1276
  %call1 = call %struct._object* @PyWrapper_New(%struct._object* %6, %struct._object* %7), !dbg !2250
  store %struct._object* %call1, %struct._object** %retval, !dbg !2251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2251

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._object** %res to i8*, !dbg !2252
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !2252
  %9 = load %struct._object*, %struct._object** %retval, !dbg !2252
  ret %struct._object* %9, !dbg !2252
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewMethod(%struct._typeobject* %type, %struct.PyMethodDef* %method) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %method.addr = alloca %struct.PyMethodDef*, align 8
  %descr = alloca %struct.PyMethodDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !525, metadata !1280), !dbg !2253
  store %struct.PyMethodDef* %method, %struct.PyMethodDef** %method.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDef** %method.addr, metadata !526, metadata !1280), !dbg !2254
  %0 = bitcast %struct.PyMethodDescrObject** %descr to i8*, !dbg !2255
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2255
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr, metadata !527, metadata !1280), !dbg !2256
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2257, !tbaa !1276
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8, !dbg !2258, !tbaa !1276
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i32 0, i32 0, !dbg !2259
  %3 = load i8*, i8** %ml_name, align 8, !dbg !2259, !tbaa !2260
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyMethodDescr_Type, %struct._typeobject* %1, i8* %3), !dbg !2262
  %4 = bitcast %struct.PyDescrObject* %call to %struct.PyMethodDescrObject*, !dbg !2263
  store %struct.PyMethodDescrObject* %4, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2264, !tbaa !1276
  %5 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2265, !tbaa !1276
  %cmp = icmp ne %struct.PyMethodDescrObject* %5, null, !dbg !2267
  br i1 %cmp, label %if.then, label %if.end, !dbg !2268

if.then:                                          ; preds = %entry
  %6 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8, !dbg !2269, !tbaa !1276
  %7 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2270, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %7, i32 0, i32 1, !dbg !2271
  store %struct.PyMethodDef* %6, %struct.PyMethodDef** %d_method, align 8, !dbg !2272, !tbaa !1532
  br label %if.end, !dbg !2270

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2273, !tbaa !1276
  %9 = bitcast %struct.PyMethodDescrObject* %8 to %struct._object*, !dbg !2274
  %10 = bitcast %struct.PyMethodDescrObject** %descr to i8*, !dbg !2275
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2275
  ret %struct._object* %9, !dbg !2276
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define internal %struct.PyDescrObject* @descr_new(%struct._typeobject* %descrtype, %struct._typeobject* %type, i8* %name) #0 {
entry:
  %descrtype.addr = alloca %struct._typeobject*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %name.addr = alloca i8*, align 8
  %descr = alloca %struct.PyDescrObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %descrtype, %struct._typeobject** %descrtype.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %descrtype.addr, metadata !820, metadata !1280), !dbg !2277
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !821, metadata !1280), !dbg !2278
  store i8* %name, i8** %name.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !822, metadata !1280), !dbg !2279
  %0 = bitcast %struct.PyDescrObject** %descr to i8*, !dbg !2280
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2280
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr, metadata !823, metadata !1280), !dbg !2281
  %1 = load %struct._typeobject*, %struct._typeobject** %descrtype.addr, align 8, !dbg !2282, !tbaa !1276
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* %1, i64 0), !dbg !2283
  %2 = bitcast %struct._object* %call to %struct.PyDescrObject*, !dbg !2284
  store %struct.PyDescrObject* %2, %struct.PyDescrObject** %descr, align 8, !dbg !2285, !tbaa !1276
  %3 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2286, !tbaa !1276
  %cmp = icmp ne %struct.PyDescrObject* %3, null, !dbg !2287
  br i1 %cmp, label %if.then, label %if.end.16, !dbg !2288

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2289

do.body:                                          ; preds = %if.then
  %4 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2290
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2290
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !824, metadata !1280), !dbg !2292
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2293, !tbaa !1276
  %6 = bitcast %struct._typeobject* %5 to %struct._object*, !dbg !2294
  store %struct._object* %6, %struct._object** %_py_xincref_tmp, align 8, !dbg !2292, !tbaa !1276
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2295, !tbaa !1276
  %cmp1 = icmp ne %struct._object* %7, null, !dbg !2297
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2298

if.then.2:                                        ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2299, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2301
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2302, !tbaa !1357
  %inc = add i64 %9, 1, !dbg !2302
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2302, !tbaa !1357
  br label %if.end, !dbg !2303

if.end:                                           ; preds = %if.then.2, %do.body
  %10 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2304
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2304
  br label %do.cond, !dbg !2307

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2308

do.end:                                           ; preds = %do.cond
  %11 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2310, !tbaa !1276
  %12 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2311, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %12, i32 0, i32 1, !dbg !2312
  store %struct._typeobject* %11, %struct._typeobject** %d_type, align 8, !dbg !2313, !tbaa !1340
  %13 = load i8*, i8** %name.addr, align 8, !dbg !2314, !tbaa !1276
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* %13), !dbg !2315
  %14 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2316, !tbaa !1276
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %14, i32 0, i32 2, !dbg !2317
  store %struct._object* %call3, %struct._object** %d_name, align 8, !dbg !2318, !tbaa !1390
  %15 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2319, !tbaa !1276
  %d_name4 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %15, i32 0, i32 2, !dbg !2320
  %16 = load %struct._object*, %struct._object** %d_name4, align 8, !dbg !2320, !tbaa !1390
  %cmp5 = icmp eq %struct._object* %16, null, !dbg !2321
  br i1 %cmp5, label %if.then.6, label %if.else.14, !dbg !2322

if.then.6:                                        ; preds = %do.end
  br label %do.body.7, !dbg !2323

do.body.7:                                        ; preds = %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2324
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !2324
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !828, metadata !1280), !dbg !2326
  %18 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2327, !tbaa !1276
  %19 = bitcast %struct.PyDescrObject* %18 to %struct._object*, !dbg !2328
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !2326, !tbaa !1276
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2329, !tbaa !1276
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !2331
  %21 = load i64, i64* %ob_refcnt8, align 8, !dbg !2332, !tbaa !1357
  %dec = add i64 %21, -1, !dbg !2332
  store i64 %dec, i64* %ob_refcnt8, align 8, !dbg !2332, !tbaa !1357
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2333
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2334

if.then.10:                                       ; preds = %do.body.7
  br label %if.end.11, !dbg !2335

if.else:                                          ; preds = %do.body.7
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2337, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !2339
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2339, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !2340
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2340, !tbaa !1367
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2341, !tbaa !1276
  call void %24(%struct._object* %25), !dbg !2342
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2343
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !2343
  br label %do.cond.12, !dbg !2345

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !2346

do.end.13:                                        ; preds = %do.cond.12
  store %struct.PyDescrObject* null, %struct.PyDescrObject** %descr, align 8, !dbg !2348, !tbaa !1276
  br label %if.end.15, !dbg !2349

if.else.14:                                       ; preds = %do.end
  %27 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2350, !tbaa !1276
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %27, i32 0, i32 3, !dbg !2352
  store %struct._object* null, %struct._object** %d_qualname, align 8, !dbg !2353, !tbaa !1429
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %do.end.13
  br label %if.end.16, !dbg !2354

if.end.16:                                        ; preds = %if.end.15, %entry
  %28 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr, align 8, !dbg !2355, !tbaa !1276
  %29 = bitcast %struct.PyDescrObject** %descr to i8*, !dbg !2356
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2356
  ret %struct.PyDescrObject* %28, !dbg !2357
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewClassMethod(%struct._typeobject* %type, %struct.PyMethodDef* %method) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %method.addr = alloca %struct.PyMethodDef*, align 8
  %descr = alloca %struct.PyMethodDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !530, metadata !1280), !dbg !2358
  store %struct.PyMethodDef* %method, %struct.PyMethodDef** %method.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDef** %method.addr, metadata !531, metadata !1280), !dbg !2359
  %0 = bitcast %struct.PyMethodDescrObject** %descr to i8*, !dbg !2360
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2360
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr, metadata !532, metadata !1280), !dbg !2361
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2362, !tbaa !1276
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8, !dbg !2363, !tbaa !1276
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i32 0, i32 0, !dbg !2364
  %3 = load i8*, i8** %ml_name, align 8, !dbg !2364, !tbaa !2260
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyClassMethodDescr_Type, %struct._typeobject* %1, i8* %3), !dbg !2365
  %4 = bitcast %struct.PyDescrObject* %call to %struct.PyMethodDescrObject*, !dbg !2366
  store %struct.PyMethodDescrObject* %4, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2367, !tbaa !1276
  %5 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2368, !tbaa !1276
  %cmp = icmp ne %struct.PyMethodDescrObject* %5, null, !dbg !2370
  br i1 %cmp, label %if.then, label %if.end, !dbg !2371

if.then:                                          ; preds = %entry
  %6 = load %struct.PyMethodDef*, %struct.PyMethodDef** %method.addr, align 8, !dbg !2372, !tbaa !1276
  %7 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2373, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %7, i32 0, i32 1, !dbg !2374
  store %struct.PyMethodDef* %6, %struct.PyMethodDef** %d_method, align 8, !dbg !2375, !tbaa !1532
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr, align 8, !dbg !2376, !tbaa !1276
  %9 = bitcast %struct.PyMethodDescrObject* %8 to %struct._object*, !dbg !2377
  %10 = bitcast %struct.PyMethodDescrObject** %descr to i8*, !dbg !2378
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2378
  ret %struct._object* %9, !dbg !2379
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewMember(%struct._typeobject* %type, %struct.PyMemberDef* %member) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %member.addr = alloca %struct.PyMemberDef*, align 8
  %descr = alloca %struct.PyMemberDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !539, metadata !1280), !dbg !2380
  store %struct.PyMemberDef* %member, %struct.PyMemberDef** %member.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMemberDef** %member.addr, metadata !540, metadata !1280), !dbg !2381
  %0 = bitcast %struct.PyMemberDescrObject** %descr to i8*, !dbg !2382
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2382
  call void @llvm.dbg.declare(metadata %struct.PyMemberDescrObject** %descr, metadata !541, metadata !1280), !dbg !2383
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2384, !tbaa !1276
  %2 = load %struct.PyMemberDef*, %struct.PyMemberDef** %member.addr, align 8, !dbg !2385, !tbaa !1276
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %2, i32 0, i32 0, !dbg !2386
  %3 = load i8*, i8** %name, align 8, !dbg !2386, !tbaa !2387
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyMemberDescr_Type, %struct._typeobject* %1, i8* %3), !dbg !2389
  %4 = bitcast %struct.PyDescrObject* %call to %struct.PyMemberDescrObject*, !dbg !2390
  store %struct.PyMemberDescrObject* %4, %struct.PyMemberDescrObject** %descr, align 8, !dbg !2391, !tbaa !1276
  %5 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr, align 8, !dbg !2392, !tbaa !1276
  %cmp = icmp ne %struct.PyMemberDescrObject* %5, null, !dbg !2394
  br i1 %cmp, label %if.then, label %if.end, !dbg !2395

if.then:                                          ; preds = %entry
  %6 = load %struct.PyMemberDef*, %struct.PyMemberDef** %member.addr, align 8, !dbg !2396, !tbaa !1276
  %7 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr, align 8, !dbg !2397, !tbaa !1276
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %7, i32 0, i32 1, !dbg !2398
  store %struct.PyMemberDef* %6, %struct.PyMemberDef** %d_member, align 8, !dbg !2399, !tbaa !1532
  br label %if.end, !dbg !2397

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr, align 8, !dbg !2400, !tbaa !1276
  %9 = bitcast %struct.PyMemberDescrObject* %8 to %struct._object*, !dbg !2401
  %10 = bitcast %struct.PyMemberDescrObject** %descr to i8*, !dbg !2402
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2402
  ret %struct._object* %9, !dbg !2403
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewGetSet(%struct._typeobject* %type, %struct.PyGetSetDef* %getset) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %getset.addr = alloca %struct.PyGetSetDef*, align 8
  %descr = alloca %struct.PyGetSetDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !546, metadata !1280), !dbg !2404
  store %struct.PyGetSetDef* %getset, %struct.PyGetSetDef** %getset.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyGetSetDef** %getset.addr, metadata !547, metadata !1280), !dbg !2405
  %0 = bitcast %struct.PyGetSetDescrObject** %descr to i8*, !dbg !2406
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.PyGetSetDescrObject** %descr, metadata !548, metadata !1280), !dbg !2407
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2408, !tbaa !1276
  %2 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %getset.addr, align 8, !dbg !2409, !tbaa !1276
  %name = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %2, i32 0, i32 0, !dbg !2410
  %3 = load i8*, i8** %name, align 8, !dbg !2410, !tbaa !2411
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyGetSetDescr_Type, %struct._typeobject* %1, i8* %3), !dbg !2412
  %4 = bitcast %struct.PyDescrObject* %call to %struct.PyGetSetDescrObject*, !dbg !2413
  store %struct.PyGetSetDescrObject* %4, %struct.PyGetSetDescrObject** %descr, align 8, !dbg !2414, !tbaa !1276
  %5 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr, align 8, !dbg !2415, !tbaa !1276
  %cmp = icmp ne %struct.PyGetSetDescrObject* %5, null, !dbg !2417
  br i1 %cmp, label %if.then, label %if.end, !dbg !2418

if.then:                                          ; preds = %entry
  %6 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %getset.addr, align 8, !dbg !2419, !tbaa !1276
  %7 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr, align 8, !dbg !2420, !tbaa !1276
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %7, i32 0, i32 1, !dbg !2421
  store %struct.PyGetSetDef* %6, %struct.PyGetSetDef** %d_getset, align 8, !dbg !2422, !tbaa !1532
  br label %if.end, !dbg !2420

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr, align 8, !dbg !2423, !tbaa !1276
  %9 = bitcast %struct.PyGetSetDescrObject* %8 to %struct._object*, !dbg !2424
  %10 = bitcast %struct.PyGetSetDescrObject** %descr to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2425
  ret %struct._object* %9, !dbg !2426
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDescr_NewWrapper(%struct._typeobject* %type, %struct.wrapperbase* %base, i8* %wrapped) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %base.addr = alloca %struct.wrapperbase*, align 8
  %wrapped.addr = alloca i8*, align 8
  %descr = alloca %struct.PyWrapperDescrObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !553, metadata !1280), !dbg !2427
  store %struct.wrapperbase* %base, %struct.wrapperbase** %base.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperbase** %base.addr, metadata !554, metadata !1280), !dbg !2428
  store i8* %wrapped, i8** %wrapped.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %wrapped.addr, metadata !555, metadata !1280), !dbg !2429
  %0 = bitcast %struct.PyWrapperDescrObject** %descr to i8*, !dbg !2430
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2430
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr, metadata !556, metadata !1280), !dbg !2431
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2432, !tbaa !1276
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %base.addr, align 8, !dbg !2433, !tbaa !1276
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0, !dbg !2434
  %3 = load i8*, i8** %name, align 8, !dbg !2434, !tbaa !2435
  %call = call %struct.PyDescrObject* @descr_new(%struct._typeobject* @PyWrapperDescr_Type, %struct._typeobject* %1, i8* %3), !dbg !2437
  %4 = bitcast %struct.PyDescrObject* %call to %struct.PyWrapperDescrObject*, !dbg !2438
  store %struct.PyWrapperDescrObject* %4, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2439, !tbaa !1276
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2440, !tbaa !1276
  %cmp = icmp ne %struct.PyWrapperDescrObject* %5, null, !dbg !2442
  br i1 %cmp, label %if.then, label %if.end, !dbg !2443

if.then:                                          ; preds = %entry
  %6 = load %struct.wrapperbase*, %struct.wrapperbase** %base.addr, align 8, !dbg !2444, !tbaa !1276
  %7 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2446, !tbaa !1276
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %7, i32 0, i32 1, !dbg !2447
  store %struct.wrapperbase* %6, %struct.wrapperbase** %d_base, align 8, !dbg !2448, !tbaa !2449
  %8 = load i8*, i8** %wrapped.addr, align 8, !dbg !2451, !tbaa !1276
  %9 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2452, !tbaa !1276
  %d_wrapped = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %9, i32 0, i32 2, !dbg !2453
  store i8* %8, i8** %d_wrapped, align 8, !dbg !2454, !tbaa !2455
  br label %if.end, !dbg !2456

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2457, !tbaa !1276
  %11 = bitcast %struct.PyWrapperDescrObject* %10 to %struct._object*, !dbg !2458
  %12 = bitcast %struct.PyWrapperDescrObject** %descr to i8*, !dbg !2459
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !2459
  ret %struct._object* %11, !dbg !2460
}

; Function Attrs: nounwind uwtable
define internal void @mappingproxy_dealloc(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !836, metadata !1280), !dbg !2461
  br label %do.body, !dbg !2462

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !2463
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2463
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !837, metadata !1280), !dbg !2465
  %1 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !2466, !tbaa !1276
  %2 = bitcast %struct.mappingproxyobject* %1 to %union._gc_head*, !dbg !2467
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !2468
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2465, !tbaa !1276
  br label %do.body.1, !dbg !2469

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2470, !tbaa !1276
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !2473
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2474
  %4 = load i64, i64* %gc_refs, align 8, !dbg !2474, !tbaa !1295
  %and = and i64 %4, 1, !dbg !2475
  %or = or i64 %and, -4, !dbg !2476
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2477, !tbaa !1276
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !2478
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !2479
  store i64 %or, i64* %gc_refs3, align 8, !dbg !2480, !tbaa !1295
  br label %do.cond, !dbg !2481

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !2482

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2484, !tbaa !1276
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !2486
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !2487
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !2487, !tbaa !1311
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2488, !tbaa !1276
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !2489
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !2490
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2490, !tbaa !1315
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !2491
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !2492
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !2493, !tbaa !1311
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2494, !tbaa !1276
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !2495
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !2496
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !2496, !tbaa !1315
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2497, !tbaa !1276
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !2498
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !2499
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !2499, !tbaa !1311
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !2500
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !2501
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !2502, !tbaa !1315
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2503, !tbaa !1276
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !2504
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !2505
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !2506, !tbaa !1311
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !2507
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2507
  br label %do.end.17, !dbg !2508

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !2509

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2510
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !839, metadata !1280), !dbg !2512
  %17 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !2513, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %17, i32 0, i32 1, !dbg !2514
  %18 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2514, !tbaa !2515
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !2512, !tbaa !1276
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2517, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !2519
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !2520, !tbaa !1357
  %dec = add i64 %20, -1, !dbg !2520
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2520, !tbaa !1357
  %cmp = icmp ne i64 %dec, 0, !dbg !2521
  br i1 %cmp, label %if.then, label %if.else, !dbg !2522

if.then:                                          ; preds = %do.body.18
  br label %if.end, !dbg !2523

if.else:                                          ; preds = %do.body.18
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2525, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !2527
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2527, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !2528
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2528, !tbaa !1367
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2529, !tbaa !1276
  call void %23(%struct._object* %24), !dbg !2530
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2531
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2531
  br label %do.end.20, !dbg !2533

do.end.20:                                        ; preds = %if.end
  %26 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !2534, !tbaa !1276
  %27 = bitcast %struct.mappingproxyobject* %26 to i8*, !dbg !2534
  call void @PyObject_GC_Del(i8* %27), !dbg !2535
  ret void, !dbg !2536
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_repr(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !845, metadata !1280), !dbg !2537
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !2538, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !2539
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2539, !tbaa !2515
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), %struct._object* %1), !dbg !2540
  ret %struct._object* %call, !dbg !2541
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_str(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !865, metadata !1280), !dbg !2542
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !2543, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !2544
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2544, !tbaa !2515
  %call = call %struct._object* @PyObject_Str(%struct._object* %1), !dbg !2545
  ret %struct._object* %call, !dbg !2546
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !868, metadata !1280), !dbg !2547
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !869, metadata !1280), !dbg !2548
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !870, metadata !1280), !dbg !2549
  %0 = bitcast %struct.mappingproxyobject** %pp to i8*, !dbg !2550
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp, metadata !871, metadata !1280), !dbg !2551
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2552, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.mappingproxyobject*, !dbg !2553
  store %struct.mappingproxyobject* %2, %struct.mappingproxyobject** %pp, align 8, !dbg !2551, !tbaa !1276
  br label %do.body, !dbg !2554

do.body:                                          ; preds = %entry
  %3 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8, !dbg !2555, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %3, i32 0, i32 1, !dbg !2557
  %4 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2557, !tbaa !2515
  %tobool = icmp ne %struct._object* %4, null, !dbg !2558
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2559

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !2560
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !2560
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !872, metadata !1280), !dbg !2562
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2563, !tbaa !1276
  %7 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8, !dbg !2564, !tbaa !1276
  %mapping1 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %7, i32 0, i32 1, !dbg !2565
  %8 = load %struct._object*, %struct._object** %mapping1, align 8, !dbg !2565, !tbaa !2515
  %9 = load i8*, i8** %arg.addr, align 8, !dbg !2566, !tbaa !1276
  %call = call i32 %6(%struct._object* %8, i8* %9), !dbg !2563
  store i32 %call, i32* %vret, align 4, !dbg !2562, !tbaa !1650
  %10 = load i32, i32* %vret, align 4, !dbg !2567, !tbaa !1650
  %tobool2 = icmp ne i32 %10, 0, !dbg !2567
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2569

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %vret, align 4, !dbg !2570, !tbaa !1650
  store i32 %11, i32* %retval, !dbg !2572
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2572

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2573
  br label %cleanup, !dbg !2573

cleanup:                                          ; preds = %if.end, %if.then.3
  %12 = bitcast i32* %vret to i8*, !dbg !2575
  call void @llvm.lifetime.end(i64 4, i8* %12) #3, !dbg !2575
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.4, !dbg !2578

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !2579

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !2582

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !2584
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5, !dbg !2584

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.5

cleanup.5:                                        ; preds = %NewDefault, %do.end
  %13 = bitcast %struct.mappingproxyobject** %pp to i8*, !dbg !2585
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !2585
  %14 = load i32, i32* %retval, !dbg !2585
  ret i32 %14, !dbg !2585
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_richcompare(%struct.mappingproxyobject* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %v.addr = alloca %struct.mappingproxyobject*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct.mappingproxyobject* %v, %struct.mappingproxyobject** %v.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %v.addr, metadata !880, metadata !1280), !dbg !2586
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !881, metadata !1280), !dbg !2587
  store i32 %op, i32* %op.addr, align 4, !tbaa !1650
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !882, metadata !1280), !dbg !2588
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %v.addr, align 8, !dbg !2589, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !2590
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2590, !tbaa !2515
  %2 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2591, !tbaa !1276
  %3 = load i32, i32* %op.addr, align 4, !dbg !2592, !tbaa !1650
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 %3), !dbg !2593
  ret %struct._object* %call, !dbg !2594
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_getiter(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !885, metadata !1280), !dbg !2595
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !2596, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !2597
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2597, !tbaa !2515
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %1), !dbg !2598
  ret %struct._object* %call, !dbg !2599
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
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !908, metadata !1280), !dbg !2600
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !909, metadata !1280), !dbg !2601
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !910, metadata !1280), !dbg !2602
  %0 = bitcast %struct._object** %mapping to i8*, !dbg !2603
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2603
  call void @llvm.dbg.declare(metadata %struct._object** %mapping, metadata !911, metadata !1280), !dbg !2604
  %1 = bitcast %struct.mappingproxyobject** %mappingproxy to i8*, !dbg !2605
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2605
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %mappingproxy, metadata !912, metadata !1280), !dbg !2606
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2607, !tbaa !1276
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2609, !tbaa !1276
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @mappingproxy_new.kwlist, i32 0, i32 0), %struct._object** %mapping), !dbg !2610
  %tobool = icmp ne i32 %call, 0, !dbg !2610
  br i1 %tobool, label %if.end, label %if.then, !dbg !2611

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2612
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2612

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2613, !tbaa !1276
  %call1 = call i32 @mappingproxy_check_mapping(%struct._object* %4), !dbg !2615
  %cmp = icmp eq i32 %call1, -1, !dbg !2616
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2617

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2618
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2618

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyDictProxy_Type), !dbg !2619
  %5 = bitcast %struct._object* %call4 to %struct.mappingproxyobject*, !dbg !2620
  store %struct.mappingproxyobject* %5, %struct.mappingproxyobject** %mappingproxy, align 8, !dbg !2621, !tbaa !1276
  %6 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8, !dbg !2622, !tbaa !1276
  %cmp5 = icmp eq %struct.mappingproxyobject* %6, null, !dbg !2624
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2625

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2626
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2626

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2627, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2628
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2629, !tbaa !1357
  %inc = add i64 %8, 1, !dbg !2629
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2629, !tbaa !1357
  %9 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2630, !tbaa !1276
  %10 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8, !dbg !2631, !tbaa !1276
  %mapping8 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %10, i32 0, i32 1, !dbg !2632
  store %struct._object* %9, %struct._object** %mapping8, align 8, !dbg !2633, !tbaa !2515
  br label %do.body, !dbg !2634

do.body:                                          ; preds = %if.end.7
  %11 = bitcast %union._gc_head** %g to i8*, !dbg !2635
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !2635
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !913, metadata !1280), !dbg !2637
  %12 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8, !dbg !2638, !tbaa !1276
  %13 = bitcast %struct.mappingproxyobject* %12 to %union._gc_head*, !dbg !2639
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %13, i64 -1, !dbg !2640
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2637, !tbaa !1276
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2641, !tbaa !1276
  %gc = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !2643
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2644
  %15 = load i64, i64* %gc_refs, align 8, !dbg !2644, !tbaa !1295
  %shr = ashr i64 %15, 1, !dbg !2645
  %cmp9 = icmp ne i64 %shr, -2, !dbg !2646
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2647

if.then.10:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !2648
  unreachable, !dbg !2648

if.end.11:                                        ; preds = %do.body
  br label %do.body.12, !dbg !2650

do.body.12:                                       ; preds = %if.end.11
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2652, !tbaa !1276
  %gc13 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !2655
  %gc_refs14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 2, !dbg !2656
  %17 = load i64, i64* %gc_refs14, align 8, !dbg !2656, !tbaa !1295
  %and = and i64 %17, 1, !dbg !2657
  %or = or i64 %and, -6, !dbg !2658
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2659, !tbaa !1276
  %gc15 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !2660
  %gc_refs16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 2, !dbg !2661
  store i64 %or, i64* %gc_refs16, align 8, !dbg !2662, !tbaa !1295
  br label %do.cond, !dbg !2663

do.cond:                                          ; preds = %do.body.12
  br label %do.end, !dbg !2664

do.end:                                           ; preds = %do.cond
  %19 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2666, !tbaa !1276
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2668, !tbaa !1276
  %gc17 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !2669
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0, !dbg !2670
  store %union._gc_head* %19, %union._gc_head** %gc_next, align 8, !dbg !2671, !tbaa !1311
  %21 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2672, !tbaa !1276
  %gc18 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !2673
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 1, !dbg !2674
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2674, !tbaa !1315
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2675, !tbaa !1276
  %gc19 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !2676
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 1, !dbg !2677
  store %union._gc_head* %22, %union._gc_head** %gc_prev20, align 8, !dbg !2678, !tbaa !1315
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2679, !tbaa !1276
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2680, !tbaa !1276
  %gc21 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !2681
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1, !dbg !2682
  %26 = load %union._gc_head*, %union._gc_head** %gc_prev22, align 8, !dbg !2682, !tbaa !1315
  %gc23 = bitcast %union._gc_head* %26 to %struct.anon*, !dbg !2683
  %gc_next24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 0, !dbg !2684
  store %union._gc_head* %24, %union._gc_head** %gc_next24, align 8, !dbg !2685, !tbaa !1311
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2686, !tbaa !1276
  %28 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2687, !tbaa !1276
  %gc25 = bitcast %union._gc_head* %28 to %struct.anon*, !dbg !2688
  %gc_prev26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 1, !dbg !2689
  store %union._gc_head* %27, %union._gc_head** %gc_prev26, align 8, !dbg !2690, !tbaa !1315
  %29 = bitcast %union._gc_head** %g to i8*, !dbg !2691
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2691
  br label %do.cond.27, !dbg !2692

do.cond.27:                                       ; preds = %do.end
  br label %do.end.28, !dbg !2693

do.end.28:                                        ; preds = %do.cond.27
  %30 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %mappingproxy, align 8, !dbg !2695, !tbaa !1276
  %31 = bitcast %struct.mappingproxyobject* %30 to %struct._object*, !dbg !2696
  store %struct._object* %31, %struct._object** %retval, !dbg !2697
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2697

cleanup:                                          ; preds = %do.end.28, %if.then.6, %if.then.2, %if.then
  %32 = bitcast %struct.mappingproxyobject** %mappingproxy to i8*, !dbg !2698
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !2698
  %33 = bitcast %struct._object** %mapping to i8*, !dbg !2698
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !2698
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2698
  ret %struct._object* %34, !dbg !2698
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyDictProxy_New(%struct._object* %mapping) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mapping.addr = alloca %struct._object*, align 8
  %pp = alloca %struct.mappingproxyobject*, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %mapping, %struct._object** %mapping.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %mapping.addr, metadata !559, metadata !1280), !dbg !2699
  %0 = bitcast %struct.mappingproxyobject** %pp to i8*, !dbg !2700
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2700
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp, metadata !560, metadata !1280), !dbg !2701
  %1 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2702, !tbaa !1276
  %call = call i32 @mappingproxy_check_mapping(%struct._object* %1), !dbg !2704
  %cmp = icmp eq i32 %call, -1, !dbg !2705
  br i1 %cmp, label %if.then, label %if.end, !dbg !2706

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2707

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyDictProxy_Type), !dbg !2708
  %2 = bitcast %struct._object* %call1 to %struct.mappingproxyobject*, !dbg !2709
  store %struct.mappingproxyobject* %2, %struct.mappingproxyobject** %pp, align 8, !dbg !2710, !tbaa !1276
  %3 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8, !dbg !2711, !tbaa !1276
  %cmp2 = icmp ne %struct.mappingproxyobject* %3, null, !dbg !2712
  br i1 %cmp2, label %if.then.3, label %if.end.25, !dbg !2713

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2714, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !2715
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2716, !tbaa !1357
  %inc = add i64 %5, 1, !dbg !2716
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2716, !tbaa !1357
  %6 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2717, !tbaa !1276
  %7 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8, !dbg !2718, !tbaa !1276
  %mapping4 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %7, i32 0, i32 1, !dbg !2719
  store %struct._object* %6, %struct._object** %mapping4, align 8, !dbg !2720, !tbaa !2515
  br label %do.body, !dbg !2721

do.body:                                          ; preds = %if.then.3
  %8 = bitcast %union._gc_head** %g to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !2722
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !561, metadata !1280), !dbg !2724
  %9 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8, !dbg !2725, !tbaa !1276
  %10 = bitcast %struct.mappingproxyobject* %9 to %union._gc_head*, !dbg !2726
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %10, i64 -1, !dbg !2727
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2724, !tbaa !1276
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2728, !tbaa !1276
  %gc = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !2730
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2731
  %12 = load i64, i64* %gc_refs, align 8, !dbg !2731, !tbaa !1295
  %shr = ashr i64 %12, 1, !dbg !2732
  %cmp5 = icmp ne i64 %shr, -2, !dbg !2733
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2734

if.then.6:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !2735
  unreachable, !dbg !2735

if.end.7:                                         ; preds = %do.body
  br label %do.body.8, !dbg !2737

do.body.8:                                        ; preds = %if.end.7
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2739, !tbaa !1276
  %gc9 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !2742
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2, !dbg !2743
  %14 = load i64, i64* %gc_refs10, align 8, !dbg !2743, !tbaa !1295
  %and = and i64 %14, 1, !dbg !2744
  %or = or i64 %and, -6, !dbg !2745
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2746, !tbaa !1276
  %gc11 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !2747
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2, !dbg !2748
  store i64 %or, i64* %gc_refs12, align 8, !dbg !2749, !tbaa !1295
  br label %do.cond, !dbg !2750

do.cond:                                          ; preds = %do.body.8
  br label %do.end, !dbg !2751

do.end:                                           ; preds = %do.cond
  %16 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2753, !tbaa !1276
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2755, !tbaa !1276
  %gc13 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !2756
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0, !dbg !2757
  store %union._gc_head* %16, %union._gc_head** %gc_next, align 8, !dbg !2758, !tbaa !1311
  %18 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2759, !tbaa !1276
  %gc14 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !2760
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1, !dbg !2761
  %19 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2761, !tbaa !1315
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2762, !tbaa !1276
  %gc15 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !2763
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1, !dbg !2764
  store %union._gc_head* %19, %union._gc_head** %gc_prev16, align 8, !dbg !2765, !tbaa !1315
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2766, !tbaa !1276
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2767, !tbaa !1276
  %gc17 = bitcast %union._gc_head* %22 to %struct.anon*, !dbg !2768
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1, !dbg !2769
  %23 = load %union._gc_head*, %union._gc_head** %gc_prev18, align 8, !dbg !2769, !tbaa !1315
  %gc19 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !2770
  %gc_next20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 0, !dbg !2771
  store %union._gc_head* %21, %union._gc_head** %gc_next20, align 8, !dbg !2772, !tbaa !1311
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2773, !tbaa !1276
  %25 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !2774, !tbaa !1276
  %gc21 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !2775
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1, !dbg !2776
  store %union._gc_head* %24, %union._gc_head** %gc_prev22, align 8, !dbg !2777, !tbaa !1315
  %26 = bitcast %union._gc_head** %g to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !2778
  br label %do.cond.23, !dbg !2779

do.cond.23:                                       ; preds = %do.end
  br label %do.end.24, !dbg !2780

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !2782

if.end.25:                                        ; preds = %do.end.24, %if.end
  %27 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp, align 8, !dbg !2783, !tbaa !1276
  %28 = bitcast %struct.mappingproxyobject* %27 to %struct._object*, !dbg !2784
  store %struct._object* %28, %struct._object** %retval, !dbg !2785
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2785

cleanup:                                          ; preds = %if.end.25, %if.then
  %29 = bitcast %struct.mappingproxyobject** %pp to i8*, !dbg !2786
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2786
  %30 = load %struct._object*, %struct._object** %retval, !dbg !2786
  ret %struct._object* %30, !dbg !2786
}

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_check_mapping(%struct._object* %mapping) #0 {
entry:
  %retval = alloca i32, align 4
  %mapping.addr = alloca %struct._object*, align 8
  store %struct._object* %mapping, %struct._object** %mapping.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %mapping.addr, metadata !917, metadata !1280), !dbg !2787
  %0 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2788, !tbaa !1276
  %call = call i32 @PyMapping_Check(%struct._object* %0), !dbg !2790
  %tobool = icmp ne i32 %call, 0, !dbg !2790
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2791

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2792, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2794
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2794, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19, !dbg !2795
  %3 = load i64, i64* %tp_flags, align 8, !dbg !2795, !tbaa !1726
  %and = and i64 %3, 33554432, !dbg !2796
  %cmp = icmp ne i64 %and, 0, !dbg !2797
  br i1 %cmp, label %if.then, label %lor.lhs.false.1, !dbg !2798

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2799, !tbaa !1276
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2800
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2800, !tbaa !1365
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !2801
  %6 = load i64, i64* %tp_flags3, align 8, !dbg !2801, !tbaa !1726
  %and4 = and i64 %6, 67108864, !dbg !2802
  %cmp5 = icmp ne i64 %and4, 0, !dbg !2803
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2805, !tbaa !1276
  %8 = load %struct._object*, %struct._object** %mapping.addr, align 8, !dbg !2807, !tbaa !1276
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2808
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2808, !tbaa !1365
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1, !dbg !2809
  %10 = load i8*, i8** %tp_name, align 8, !dbg !2809, !tbaa !1498
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i32 0, i32 0), i8* %10), !dbg !2810
  store i32 -1, i32* %retval, !dbg !2811
  br label %return, !dbg !2811

if.end:                                           ; preds = %lor.lhs.false.1
  store i32 0, i32* %retval, !dbg !2812
  br label %return, !dbg !2812

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, !dbg !2813
  ret i32 %11, !dbg !2813
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

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
  %_py_xdecref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !922, metadata !1280), !dbg !2814
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2815, !tbaa !1276
  %1 = bitcast %struct.wrapperobject* %0 to i8*, !dbg !2815
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !2816
  br label %do.body, !dbg !2817

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._ts** %_tstate to i8*, !dbg !2818
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct._ts** %_tstate, metadata !923, metadata !1280), !dbg !2820
  %3 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2821
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2821
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !925, metadata !1280), !dbg !2822
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2822, !tbaa !1276
  %4 = bitcast i8** %result to i8*, !dbg !2823
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2823
  call void @llvm.dbg.declare(metadata i8** %result, metadata !932, metadata !1280), !dbg !2824
  %5 = bitcast i8*** %volatile_data to i8*, !dbg !2825
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2825
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !933, metadata !1280), !dbg !2826
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2827, !tbaa !1276
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %6, i32 0, i32 0, !dbg !2828
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2826, !tbaa !1276
  %7 = bitcast i32* %order to i8*, !dbg !2829
  call void @llvm.lifetime.start(i64 4, i8* %7) #3, !dbg !2829
  call void @llvm.dbg.declare(metadata i32* %order, metadata !936, metadata !1280), !dbg !2830
  store i32 0, i32* %order, align 4, !dbg !2830, !tbaa !2831
  %8 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2832, !tbaa !1276
  %9 = bitcast %struct._Py_atomic_address* %8 to i8*, !dbg !2832
  %10 = load i32, i32* %order, align 4, !dbg !2833, !tbaa !2831
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %9, i32 %10), !dbg !2834
  %11 = load i32, i32* %order, align 4, !dbg !2835, !tbaa !2831
  br label %LeafBlock

LeafBlock:                                        ; preds = %do.body
  %.off = add i32 %11, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2836
  br label %sw.epilog, !dbg !2841

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !2842

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %12 = load i8**, i8*** %volatile_data, align 8, !dbg !2844, !tbaa !1276
  %13 = load volatile i8*, i8** %12, align 8, !dbg !2847, !tbaa !1276
  store i8* %13, i8** %result, align 8, !dbg !2848, !tbaa !1276
  %14 = load i32, i32* %order, align 4, !dbg !2849, !tbaa !2831
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %14, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %14, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %14, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2850
  br label %sw.epilog.3, !dbg !2855

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !2856

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %15 = load i8*, i8** %result, align 8, !dbg !2858, !tbaa !1276
  store i8* %15, i8** %tmp, !dbg !2861, !tbaa !1276
  %16 = bitcast i32* %order to i8*, !dbg !2862
  call void @llvm.lifetime.end(i64 4, i8* %16) #3, !dbg !2862
  %17 = bitcast i8*** %volatile_data to i8*, !dbg !2862
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !2862
  %18 = bitcast i8** %result to i8*, !dbg !2862
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2862
  %19 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2862
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2862
  %20 = load i8*, i8** %tmp, !dbg !2863, !tbaa !1276
  %21 = bitcast i8* %20 to %struct._ts*, !dbg !2864
  store %struct._ts* %21, %struct._ts** %_tstate, align 8, !dbg !2820, !tbaa !1276
  %22 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !2865, !tbaa !1276
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 23, !dbg !2866
  %23 = load i32, i32* %trash_delete_nesting, align 4, !dbg !2866, !tbaa !2867
  %cmp = icmp slt i32 %23, 50, !dbg !2869
  br i1 %cmp, label %if.then, label %if.else.43, !dbg !2870

if.then:                                          ; preds = %sw.epilog.3
  %24 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !2871, !tbaa !1276
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 23, !dbg !2873
  %25 = load i32, i32* %trash_delete_nesting4, align 4, !dbg !2874, !tbaa !2867
  %inc = add i32 %25, 1, !dbg !2874
  store i32 %inc, i32* %trash_delete_nesting4, align 4, !dbg !2874, !tbaa !2867
  br label %do.body.5, !dbg !2875

do.body.5:                                        ; preds = %if.then
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2876
  call void @llvm.lifetime.start(i64 8, i8* %26) #3, !dbg !2876
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !938, metadata !1280), !dbg !2878
  %27 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2879, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %27, i32 0, i32 1, !dbg !2880
  %28 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2880, !tbaa !2881
  %29 = bitcast %struct.PyWrapperDescrObject* %28 to %struct._object*, !dbg !2883
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2878, !tbaa !1276
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2884, !tbaa !1276
  %cmp7 = icmp ne %struct._object* %30, null, !dbg !2885
  br i1 %cmp7, label %if.then.8, label %if.end.13, !dbg !2886

if.then.8:                                        ; preds = %do.body.5
  br label %do.body.9, !dbg !2887

do.body.9:                                        ; preds = %if.then.8
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2889
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !2889
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !942, metadata !1280), !dbg !2891
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2892, !tbaa !1276
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8, !dbg !2891, !tbaa !1276
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2893, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2895
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !2896, !tbaa !1357
  %dec = add i64 %34, -1, !dbg !2896
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2896, !tbaa !1357
  %cmp11 = icmp ne i64 %dec, 0, !dbg !2897
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !2898

if.then.12:                                       ; preds = %do.body.9
  br label %if.end, !dbg !2899

if.else:                                          ; preds = %do.body.9
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2901, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2903
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2903, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2904
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2904, !tbaa !1367
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2905, !tbaa !1276
  call void %37(%struct._object* %38), !dbg !2906
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  %39 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2907
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2907
  br label %do.cond, !dbg !2909

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2910

do.end:                                           ; preds = %do.cond
  br label %if.end.13, !dbg !2912

if.end.13:                                        ; preds = %do.end, %do.body.5
  %40 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2914
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !2914
  br label %do.cond.14, !dbg !2917

do.cond.14:                                       ; preds = %if.end.13
  br label %do.end.15, !dbg !2918

do.end.15:                                        ; preds = %do.cond.14
  br label %do.body.16, !dbg !2920

do.body.16:                                       ; preds = %do.end.15
  %41 = bitcast %struct._object** %_py_xdecref_tmp18 to i8*, !dbg !2921
  call void @llvm.lifetime.start(i64 8, i8* %41) #3, !dbg !2921
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp18, metadata !945, metadata !1280), !dbg !2923
  %42 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2924, !tbaa !1276
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %42, i32 0, i32 2, !dbg !2925
  %43 = load %struct._object*, %struct._object** %self, align 8, !dbg !2925, !tbaa !2926
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp18, align 8, !dbg !2923, !tbaa !1276
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp18, align 8, !dbg !2927, !tbaa !1276
  %cmp19 = icmp ne %struct._object* %44, null, !dbg !2928
  br i1 %cmp19, label %if.then.20, label %if.end.34, !dbg !2929

if.then.20:                                       ; preds = %do.body.16
  br label %do.body.21, !dbg !2930

do.body.21:                                       ; preds = %if.then.20
  %45 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !2932
  call void @llvm.lifetime.start(i64 8, i8* %45) #3, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !947, metadata !1280), !dbg !2934
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp18, align 8, !dbg !2935, !tbaa !1276
  store %struct._object* %46, %struct._object** %_py_decref_tmp23, align 8, !dbg !2934, !tbaa !1276
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2936, !tbaa !1276
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2938
  %48 = load i64, i64* %ob_refcnt24, align 8, !dbg !2939, !tbaa !1357
  %dec25 = add i64 %48, -1, !dbg !2939
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !2939, !tbaa !1357
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !2940
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !2941

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31, !dbg !2942

if.else.28:                                       ; preds = %do.body.21
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2944, !tbaa !1276
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !2946
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2946, !tbaa !1365
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !2947
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2947, !tbaa !1367
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2948, !tbaa !1276
  call void %51(%struct._object* %52), !dbg !2949
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %53 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !2950
  call void @llvm.lifetime.end(i64 8, i8* %53) #3, !dbg !2950
  br label %do.cond.32, !dbg !2952

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !2953

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34, !dbg !2955

if.end.34:                                        ; preds = %do.end.33, %do.body.16
  %54 = bitcast %struct._object** %_py_xdecref_tmp18 to i8*, !dbg !2957
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !2957
  br label %do.cond.35, !dbg !2958

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !2959

do.end.36:                                        ; preds = %do.cond.35
  %55 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2961, !tbaa !1276
  %56 = bitcast %struct.wrapperobject* %55 to i8*, !dbg !2961
  call void @PyObject_GC_Del(i8* %56), !dbg !2962
  %57 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !2963, !tbaa !1276
  %trash_delete_nesting37 = getelementptr inbounds %struct._ts, %struct._ts* %57, i32 0, i32 23, !dbg !2964
  %58 = load i32, i32* %trash_delete_nesting37, align 4, !dbg !2965, !tbaa !2867
  %dec38 = add i32 %58, -1, !dbg !2965
  store i32 %dec38, i32* %trash_delete_nesting37, align 4, !dbg !2965, !tbaa !2867
  %59 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !2966, !tbaa !1276
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %59, i32 0, i32 24, !dbg !2968
  %60 = load %struct._object*, %struct._object** %trash_delete_later, align 8, !dbg !2968, !tbaa !2969
  %tobool = icmp ne %struct._object* %60, null, !dbg !2966
  br i1 %tobool, label %land.lhs.true, label %if.end.42, !dbg !2970

land.lhs.true:                                    ; preds = %do.end.36
  %61 = load %struct._ts*, %struct._ts** %_tstate, align 8, !dbg !2971, !tbaa !1276
  %trash_delete_nesting39 = getelementptr inbounds %struct._ts, %struct._ts* %61, i32 0, i32 23, !dbg !2973
  %62 = load i32, i32* %trash_delete_nesting39, align 4, !dbg !2973, !tbaa !2867
  %cmp40 = icmp sle i32 %62, 0, !dbg !2974
  br i1 %cmp40, label %if.then.41, label %if.end.42, !dbg !2975

if.then.41:                                       ; preds = %land.lhs.true
  call void @_PyTrash_thread_destroy_chain(), !dbg !2976
  br label %if.end.42, !dbg !2976

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true, %do.end.36
  br label %if.end.44, !dbg !2978

if.else.43:                                       ; preds = %sw.epilog.3
  %63 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2982, !tbaa !1276
  %64 = bitcast %struct.wrapperobject* %63 to %struct._object*, !dbg !2983
  call void @_PyTrash_thread_deposit_object(%struct._object* %64), !dbg !2984
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.end.42
  %65 = bitcast %struct._ts** %_tstate to i8*, !dbg !2985
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !2985
  br label %do.end.46, !dbg !2987

do.end.46:                                        ; preds = %if.end.44
  ret void, !dbg !2988
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_repr(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !971, metadata !1280), !dbg !2989
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2990, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1, !dbg !2991
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !2991, !tbaa !2881
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1, !dbg !2992
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !2992, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0, !dbg !2993
  %3 = load i8*, i8** %name, align 8, !dbg !2993, !tbaa !2435
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2994, !tbaa !1276
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 2, !dbg !2995
  %5 = load %struct._object*, %struct._object** %self, align 8, !dbg !2995, !tbaa !2926
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2996
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2996, !tbaa !1365
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1, !dbg !2997
  %7 = load i8*, i8** %tp_name, align 8, !dbg !2997, !tbaa !1498
  %8 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !2998, !tbaa !1276
  %self1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %8, i32 0, i32 2, !dbg !2999
  %9 = load %struct._object*, %struct._object** %self1, align 8, !dbg !2999, !tbaa !2926
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0), i8* %3, i8* %7, %struct._object* %9), !dbg !3000
  ret %struct._object* %call, !dbg !3001
}

; Function Attrs: nounwind uwtable
define internal i64 @wrapper_hash(%struct.wrapperobject* %wp) #0 {
entry:
  %retval = alloca i64, align 8
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !976, metadata !1280), !dbg !3002
  %0 = bitcast i64* %x to i8*, !dbg !3003
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3003
  call void @llvm.dbg.declare(metadata i64* %x, metadata !977, metadata !1280), !dbg !3004
  %1 = bitcast i64* %y to i8*, !dbg !3003
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3003
  call void @llvm.dbg.declare(metadata i64* %y, metadata !978, metadata !1280), !dbg !3005
  %2 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3006, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %2, i32 0, i32 1, !dbg !3007
  %3 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3007, !tbaa !2881
  %4 = bitcast %struct.PyWrapperDescrObject* %3 to i8*, !dbg !3006
  %call = call i64 @_Py_HashPointer(i8* %4), !dbg !3008
  store i64 %call, i64* %x, align 8, !dbg !3009, !tbaa !1484
  %5 = load i64, i64* %x, align 8, !dbg !3010, !tbaa !1484
  %cmp = icmp eq i64 %5, -1, !dbg !3012
  br i1 %cmp, label %if.then, label %if.end, !dbg !3013

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, !dbg !3014
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3014

if.end:                                           ; preds = %entry
  %6 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3015, !tbaa !1276
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %6, i32 0, i32 2, !dbg !3016
  %7 = load %struct._object*, %struct._object** %self, align 8, !dbg !3016, !tbaa !2926
  %call1 = call i64 @PyObject_Hash(%struct._object* %7), !dbg !3017
  store i64 %call1, i64* %y, align 8, !dbg !3018, !tbaa !1484
  %8 = load i64, i64* %y, align 8, !dbg !3019, !tbaa !1484
  %cmp2 = icmp eq i64 %8, -1, !dbg !3021
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3022

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval, !dbg !3023
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3023

if.end.4:                                         ; preds = %if.end
  %9 = load i64, i64* %x, align 8, !dbg !3024, !tbaa !1484
  %10 = load i64, i64* %y, align 8, !dbg !3025, !tbaa !1484
  %xor = xor i64 %9, %10, !dbg !3026
  store i64 %xor, i64* %x, align 8, !dbg !3027, !tbaa !1484
  %11 = load i64, i64* %x, align 8, !dbg !3028, !tbaa !1484
  %cmp5 = icmp eq i64 %11, -1, !dbg !3030
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3031

if.then.6:                                        ; preds = %if.end.4
  store i64 -2, i64* %x, align 8, !dbg !3032, !tbaa !1484
  br label %if.end.7, !dbg !3033

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %12 = load i64, i64* %x, align 8, !dbg !3034, !tbaa !1484
  store i64 %12, i64* %retval, !dbg !3035
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3035

cleanup:                                          ; preds = %if.end.7, %if.then.3, %if.then
  %13 = bitcast i64* %y to i8*, !dbg !3036
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !3036
  %14 = bitcast i64* %x to i8*, !dbg !3036
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !3036
  %15 = load i64, i64* %retval, !dbg !3036
  ret i64 %15, !dbg !3036
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
  %cleanup.dest.slot = alloca i32
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !983, metadata !1280), !dbg !3037
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !984, metadata !1280), !dbg !3038
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !985, metadata !1280), !dbg !3039
  %0 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper to i8*, !dbg !3040
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3040
  call void @llvm.dbg.declare(metadata %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, metadata !986, metadata !1280), !dbg !3041
  %1 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3042, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %1, i32 0, i32 1, !dbg !3043
  %2 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3043, !tbaa !2881
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %2, i32 0, i32 1, !dbg !3044
  %3 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !3044, !tbaa !2449
  %wrapper1 = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %3, i32 0, i32 3, !dbg !3045
  %4 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper1, align 8, !dbg !3045, !tbaa !3046
  store %struct._object* (%struct._object*, %struct._object*, i8*)* %4, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, align 8, !dbg !3041, !tbaa !1276
  %5 = bitcast %struct._object** %self to i8*, !dbg !3047
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !3047
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !987, metadata !1280), !dbg !3048
  %6 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3049, !tbaa !1276
  %self2 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %6, i32 0, i32 2, !dbg !3050
  %7 = load %struct._object*, %struct._object** %self2, align 8, !dbg !3050, !tbaa !2926
  store %struct._object* %7, %struct._object** %self, align 8, !dbg !3048, !tbaa !1276
  %8 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3051, !tbaa !1276
  %descr3 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %8, i32 0, i32 1, !dbg !3052
  %9 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr3, align 8, !dbg !3052, !tbaa !2881
  %d_base4 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %9, i32 0, i32 1, !dbg !3053
  %10 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base4, align 8, !dbg !3053, !tbaa !2449
  %flags = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %10, i32 0, i32 5, !dbg !3054
  %11 = load i32, i32* %flags, align 4, !dbg !3054, !tbaa !3055
  %and = and i32 %11, 1, !dbg !3056
  %tobool = icmp ne i32 %and, 0, !dbg !3056
  br i1 %tobool, label %if.then, label %if.end, !dbg !3057

if.then:                                          ; preds = %entry
  %12 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk to i8*, !dbg !3058
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !3058
  call void @llvm.dbg.declare(metadata %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk, metadata !988, metadata !1280), !dbg !3059
  %13 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, align 8, !dbg !3060, !tbaa !1276
  %14 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*)* %13 to %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)*, !dbg !3061
  store %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)* %14, %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk, align 8, !dbg !3059, !tbaa !1276
  %15 = load %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk, align 8, !dbg !3062, !tbaa !1276
  %16 = load %struct._object*, %struct._object** %self, align 8, !dbg !3063, !tbaa !1276
  %17 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3064, !tbaa !1276
  %18 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3065, !tbaa !1276
  %descr5 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %18, i32 0, i32 1, !dbg !3066
  %19 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr5, align 8, !dbg !3066, !tbaa !2881
  %d_wrapped = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %19, i32 0, i32 2, !dbg !3067
  %20 = load i8*, i8** %d_wrapped, align 8, !dbg !3067, !tbaa !2455
  %21 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3068, !tbaa !1276
  %call = call %struct._object* %15(%struct._object* %16, %struct._object* %17, i8* %20, %struct._object* %21), !dbg !3069
  store %struct._object* %call, %struct._object** %retval, !dbg !3070
  store i32 1, i32* %cleanup.dest.slot
  %22 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*, %struct._object*)** %wk to i8*, !dbg !3071
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !3071
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3072, !tbaa !1276
  %cmp = icmp ne %struct._object* %23, null, !dbg !3074
  br i1 %cmp, label %land.lhs.true, label %if.end.14, !dbg !3075

land.lhs.true:                                    ; preds = %if.end
  %24 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3076, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3078
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3078, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !3079
  %26 = load i64, i64* %tp_flags, align 8, !dbg !3079, !tbaa !1726
  %and6 = and i64 %26, 536870912, !dbg !3080
  %cmp7 = icmp ne i64 %and6, 0, !dbg !3081
  br i1 %cmp7, label %lor.lhs.false, label %if.then.10, !dbg !3082

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3083, !tbaa !1276
  %call8 = call i64 @PyDict_Size(%struct._object* %27), !dbg !3085
  %cmp9 = icmp ne i64 %call8, 0, !dbg !3086
  br i1 %cmp9, label %if.then.10, label %if.end.14, !dbg !3087

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3088, !tbaa !1276
  %29 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3090, !tbaa !1276
  %descr11 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %29, i32 0, i32 1, !dbg !3091
  %30 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr11, align 8, !dbg !3091, !tbaa !2881
  %d_base12 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %30, i32 0, i32 1, !dbg !3092
  %31 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base12, align 8, !dbg !3092, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %31, i32 0, i32 0, !dbg !3093
  %32 = load i8*, i8** %name, align 8, !dbg !3093, !tbaa !2435
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0), i8* %32), !dbg !3094
  store %struct._object* null, %struct._object** %retval, !dbg !3095
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3095

if.end.14:                                        ; preds = %lor.lhs.false, %if.end
  %33 = load %struct._object* (%struct._object*, %struct._object*, i8*)*, %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper, align 8, !dbg !3096, !tbaa !1276
  %34 = load %struct._object*, %struct._object** %self, align 8, !dbg !3097, !tbaa !1276
  %35 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3098, !tbaa !1276
  %36 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !3099, !tbaa !1276
  %descr15 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %36, i32 0, i32 1, !dbg !3100
  %37 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr15, align 8, !dbg !3100, !tbaa !2881
  %d_wrapped16 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %37, i32 0, i32 2, !dbg !3101
  %38 = load i8*, i8** %d_wrapped16, align 8, !dbg !3101, !tbaa !2455
  %call17 = call %struct._object* %33(%struct._object* %34, %struct._object* %35, i8* %38), !dbg !3102
  store %struct._object* %call17, %struct._object** %retval, !dbg !3103
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3103

cleanup:                                          ; preds = %if.end.14, %if.then.10, %if.then
  %39 = bitcast %struct._object** %self to i8*, !dbg !3104
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !3104
  %40 = bitcast %struct._object* (%struct._object*, %struct._object*, i8*)** %wrapper to i8*, !dbg !3104
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !3104
  %41 = load %struct._object*, %struct._object** %retval, !dbg !3104
  ret %struct._object* %41, !dbg !3104
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
  %cleanup.dest.slot = alloca i32
  %vret9 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !993, metadata !1280), !dbg !3105
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !994, metadata !1280), !dbg !3106
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !995, metadata !1280), !dbg !3107
  %0 = bitcast %struct.wrapperobject** %wp to i8*, !dbg !3108
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3108
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp, metadata !996, metadata !1280), !dbg !3109
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3110, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.wrapperobject*, !dbg !3111
  store %struct.wrapperobject* %2, %struct.wrapperobject** %wp, align 8, !dbg !3109, !tbaa !1276
  br label %do.body, !dbg !3112

do.body:                                          ; preds = %entry
  %3 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3113, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %3, i32 0, i32 1, !dbg !3115
  %4 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3115, !tbaa !2881
  %tobool = icmp ne %struct.PyWrapperDescrObject* %4, null, !dbg !3116
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !3117

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !3118
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !3118
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !997, metadata !1280), !dbg !3120
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3121, !tbaa !1276
  %7 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3122, !tbaa !1276
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %7, i32 0, i32 1, !dbg !3123
  %8 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr1, align 8, !dbg !3123, !tbaa !2881
  %9 = bitcast %struct.PyWrapperDescrObject* %8 to %struct._object*, !dbg !3124
  %10 = load i8*, i8** %arg.addr, align 8, !dbg !3125, !tbaa !1276
  %call = call i32 %6(%struct._object* %9, i8* %10), !dbg !3121
  store i32 %call, i32* %vret, align 4, !dbg !3120, !tbaa !1650
  %11 = load i32, i32* %vret, align 4, !dbg !3126, !tbaa !1650
  %tobool2 = icmp ne i32 %11, 0, !dbg !3126
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3128

if.then.3:                                        ; preds = %if.then
  %12 = load i32, i32* %vret, align 4, !dbg !3129, !tbaa !1650
  store i32 %12, i32* %retval, !dbg !3131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3131

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !3132
  br label %cleanup, !dbg !3132

cleanup:                                          ; preds = %if.end, %if.then.3
  %13 = bitcast i32* %vret to i8*, !dbg !3134
  call void @llvm.lifetime.end(i64 4, i8* %13) #3, !dbg !3134
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.4, !dbg !3137

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !3138

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3141

do.end:                                           ; preds = %do.cond
  br label %do.body.5, !dbg !3143

do.body.5:                                        ; preds = %do.end
  %14 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3144, !tbaa !1276
  %self6 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %14, i32 0, i32 2, !dbg !3146
  %15 = load %struct._object*, %struct._object** %self6, align 8, !dbg !3146, !tbaa !2926
  %tobool7 = icmp ne %struct._object* %15, null, !dbg !3147
  br i1 %tobool7, label %if.then.8, label %if.end.18, !dbg !3148

if.then.8:                                        ; preds = %do.body.5
  %16 = bitcast i32* %vret9 to i8*, !dbg !3149
  call void @llvm.lifetime.start(i64 4, i8* %16) #3, !dbg !3149
  call void @llvm.dbg.declare(metadata i32* %vret9, metadata !1001, metadata !1280), !dbg !3151
  %17 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3152, !tbaa !1276
  %18 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3153, !tbaa !1276
  %self10 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %18, i32 0, i32 2, !dbg !3154
  %19 = load %struct._object*, %struct._object** %self10, align 8, !dbg !3154, !tbaa !2926
  %20 = load i8*, i8** %arg.addr, align 8, !dbg !3155, !tbaa !1276
  %call11 = call i32 %17(%struct._object* %19, i8* %20), !dbg !3152
  store i32 %call11, i32* %vret9, align 4, !dbg !3151, !tbaa !1650
  %21 = load i32, i32* %vret9, align 4, !dbg !3156, !tbaa !1650
  %tobool12 = icmp ne i32 %21, 0, !dbg !3156
  br i1 %tobool12, label %if.then.13, label %if.end.14, !dbg !3158

if.then.13:                                       ; preds = %if.then.8
  %22 = load i32, i32* %vret9, align 4, !dbg !3159, !tbaa !1650
  store i32 %22, i32* %retval, !dbg !3161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !3161

if.end.14:                                        ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot, !dbg !3162
  br label %cleanup.15, !dbg !3162

cleanup.15:                                       ; preds = %if.end.14, %if.then.13
  %23 = bitcast i32* %vret9 to i8*, !dbg !3164
  call void @llvm.lifetime.end(i64 4, i8* %23) #3, !dbg !3164
  %cleanup.dest.16 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.15
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.16, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.17, label %NewDefault.1

cleanup.cont.17:                                  ; preds = %LeafBlock.2
  br label %if.end.18, !dbg !3167

if.end.18:                                        ; preds = %cleanup.cont.17, %do.body.5
  br label %do.cond.19, !dbg !3168

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20, !dbg !3171

do.end.20:                                        ; preds = %do.cond.19
  store i32 0, i32* %retval, !dbg !3173
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21, !dbg !3173

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.21

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.21

cleanup.21:                                       ; preds = %NewDefault.1, %NewDefault, %do.end.20
  %24 = bitcast %struct.wrapperobject** %wp to i8*, !dbg !3174
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !3174
  %25 = load i32, i32* %retval, !dbg !3174
  ret i32 %25, !dbg !3174
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !1007, metadata !1280), !dbg !3175
  store %struct._object* %b, %struct._object** %b.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %b.addr, metadata !1008, metadata !1280), !dbg !3176
  store i32 %op, i32* %op.addr, align 4, !tbaa !1650
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !1009, metadata !1280), !dbg !3177
  %0 = bitcast i64* %result to i8*, !dbg !3178
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3178
  call void @llvm.dbg.declare(metadata i64* %result, metadata !1010, metadata !1280), !dbg !3179
  %1 = bitcast %struct._object** %v to i8*, !dbg !3180
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3180
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !1015, metadata !1280), !dbg !3181
  %2 = bitcast %struct.PyWrapperDescrObject** %a_descr to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3182
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %a_descr, metadata !1016, metadata !1280), !dbg !3183
  %3 = bitcast %struct.PyWrapperDescrObject** %b_descr to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3182
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %b_descr, metadata !1017, metadata !1280), !dbg !3184
  %4 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !3185, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3187
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3187, !tbaa !1365
  %cmp = icmp eq %struct._typeobject* %5, @_PyMethodWrapper_Type, !dbg !3188
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !3189

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !3190, !tbaa !1276
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !3192
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3192, !tbaa !1365
  %cmp2 = icmp eq %struct._typeobject* %7, @_PyMethodWrapper_Type, !dbg !3193
  br i1 %cmp2, label %if.end, label %if.then, !dbg !3194

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %v, align 8, !dbg !3195, !tbaa !1276
  %8 = load %struct._object*, %struct._object** %v, align 8, !dbg !3197, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3198
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3199, !tbaa !1357
  %inc = add i64 %9, 1, !dbg !3199
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3199, !tbaa !1357
  %10 = load %struct._object*, %struct._object** %v, align 8, !dbg !3200, !tbaa !1276
  store %struct._object* %10, %struct._object** %retval, !dbg !3201
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3201

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !3202, !tbaa !1276
  %12 = bitcast %struct._object* %11 to %struct.wrapperobject*, !dbg !3203
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %12, i32 0, i32 1, !dbg !3204
  %13 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3204, !tbaa !2881
  store %struct.PyWrapperDescrObject* %13, %struct.PyWrapperDescrObject** %a_descr, align 8, !dbg !3205, !tbaa !1276
  %14 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !3206, !tbaa !1276
  %15 = bitcast %struct._object* %14 to %struct.wrapperobject*, !dbg !3207
  %descr3 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %15, i32 0, i32 1, !dbg !3208
  %16 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr3, align 8, !dbg !3208, !tbaa !2881
  store %struct.PyWrapperDescrObject* %16, %struct.PyWrapperDescrObject** %b_descr, align 8, !dbg !3209, !tbaa !1276
  %17 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %a_descr, align 8, !dbg !3210, !tbaa !1276
  %18 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %b_descr, align 8, !dbg !3212, !tbaa !1276
  %cmp4 = icmp eq %struct.PyWrapperDescrObject* %17, %18, !dbg !3213
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !3214

if.then.5:                                        ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !3215, !tbaa !1276
  %20 = bitcast %struct._object* %19 to %struct.wrapperobject*, !dbg !3217
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %20, i32 0, i32 2, !dbg !3218
  %21 = load %struct._object*, %struct._object** %self, align 8, !dbg !3218, !tbaa !2926
  store %struct._object* %21, %struct._object** %a.addr, align 8, !dbg !3219, !tbaa !1276
  %22 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !3220, !tbaa !1276
  %23 = bitcast %struct._object* %22 to %struct.wrapperobject*, !dbg !3221
  %self6 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %23, i32 0, i32 2, !dbg !3222
  %24 = load %struct._object*, %struct._object** %self6, align 8, !dbg !3222, !tbaa !2926
  store %struct._object* %24, %struct._object** %b.addr, align 8, !dbg !3223, !tbaa !1276
  %25 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !3224, !tbaa !1276
  %26 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !3225, !tbaa !1276
  %27 = load i32, i32* %op.addr, align 4, !dbg !3226, !tbaa !1650
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %25, %struct._object* %26, i32 %27), !dbg !3227
  store %struct._object* %call, %struct._object** %retval, !dbg !3228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3228

if.end.7:                                         ; preds = %if.end
  %28 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %a_descr, align 8, !dbg !3229, !tbaa !1276
  %29 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %b_descr, align 8, !dbg !3230, !tbaa !1276
  %sub.ptr.lhs.cast = ptrtoint %struct.PyWrapperDescrObject* %28 to i64, !dbg !3231
  %sub.ptr.rhs.cast = ptrtoint %struct.PyWrapperDescrObject* %29 to i64, !dbg !3231
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3231
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56, !dbg !3231
  store i64 %sub.ptr.div, i64* %result, align 8, !dbg !3232, !tbaa !1484
  %30 = load i32, i32* %op.addr, align 4, !dbg !3233, !tbaa !1650
  br label %NodeBlock.9

NodeBlock.9:                                      ; preds = %if.end.7
  %Pivot.10 = icmp slt i32 %30, 3
  br i1 %Pivot.10, label %NodeBlock.1, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %30, 4
  br i1 %Pivot.8, label %sw.bb.9, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %30, 5
  br i1 %Pivot.6, label %sw.bb.21, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %30, 5
  br i1 %SwitchLeaf4, label %sw.bb.15, label %NewDefault

NodeBlock.1:                                      ; preds = %NodeBlock.9
  %Pivot.2 = icmp slt i32 %30, 1
  br i1 %Pivot.2, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.1
  %Pivot = icmp slt i32 %30, 2
  br i1 %Pivot, label %sw.bb.12, label %sw.bb

LeafBlock:                                        ; preds = %NodeBlock.1
  %SwitchLeaf = icmp eq i32 %30, 0
  br i1 %SwitchLeaf, label %sw.bb.18, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock
  %31 = load i64, i64* %result, align 8, !dbg !3234, !tbaa !1484
  %cmp8 = icmp eq i64 %31, 0, !dbg !3236
  %cond = select i1 %cmp8, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !3237
  store %struct._object* %cond, %struct._object** %v, align 8, !dbg !3238, !tbaa !1276
  br label %sw.epilog, !dbg !3239

sw.bb.9:                                          ; preds = %NodeBlock.7
  %32 = load i64, i64* %result, align 8, !dbg !3240, !tbaa !1484
  %cmp10 = icmp ne i64 %32, 0, !dbg !3241
  %cond11 = select i1 %cmp10, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !3242
  store %struct._object* %cond11, %struct._object** %v, align 8, !dbg !3243, !tbaa !1276
  br label %sw.epilog, !dbg !3244

sw.bb.12:                                         ; preds = %NodeBlock
  %33 = load i64, i64* %result, align 8, !dbg !3245, !tbaa !1484
  %cmp13 = icmp sle i64 %33, 0, !dbg !3246
  %cond14 = select i1 %cmp13, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !3247
  store %struct._object* %cond14, %struct._object** %v, align 8, !dbg !3248, !tbaa !1276
  br label %sw.epilog, !dbg !3249

sw.bb.15:                                         ; preds = %LeafBlock.3
  %34 = load i64, i64* %result, align 8, !dbg !3250, !tbaa !1484
  %cmp16 = icmp sge i64 %34, 0, !dbg !3251
  %cond17 = select i1 %cmp16, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !3252
  store %struct._object* %cond17, %struct._object** %v, align 8, !dbg !3253, !tbaa !1276
  br label %sw.epilog, !dbg !3254

sw.bb.18:                                         ; preds = %LeafBlock
  %35 = load i64, i64* %result, align 8, !dbg !3255, !tbaa !1484
  %cmp19 = icmp slt i64 %35, 0, !dbg !3256
  %cond20 = select i1 %cmp19, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !3257
  store %struct._object* %cond20, %struct._object** %v, align 8, !dbg !3258, !tbaa !1276
  br label %sw.epilog, !dbg !3259

sw.bb.21:                                         ; preds = %NodeBlock.5
  %36 = load i64, i64* %result, align 8, !dbg !3260, !tbaa !1484
  %cmp22 = icmp sgt i64 %36, 0, !dbg !3261
  %cond23 = select i1 %cmp22, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !3262
  store %struct._object* %cond23, %struct._object** %v, align 8, !dbg !3263, !tbaa !1276
  br label %sw.epilog, !dbg !3264

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %call24 = call i32 @PyErr_BadArgument(), !dbg !3265
  store %struct._object* null, %struct._object** %retval, !dbg !3266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3266

sw.epilog:                                        ; preds = %sw.bb.21, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !3267, !tbaa !1276
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !3268
  %38 = load i64, i64* %ob_refcnt25, align 8, !dbg !3269, !tbaa !1357
  %inc26 = add i64 %38, 1, !dbg !3269
  store i64 %inc26, i64* %ob_refcnt25, align 8, !dbg !3269, !tbaa !1357
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !3270, !tbaa !1276
  store %struct._object* %39, %struct._object** %retval, !dbg !3271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3271

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.5, %if.then
  %40 = bitcast %struct.PyWrapperDescrObject** %b_descr to i8*, !dbg !3272
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !3272
  %41 = bitcast %struct.PyWrapperDescrObject** %a_descr to i8*, !dbg !3272
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !3272
  %42 = bitcast %struct._object** %v to i8*, !dbg !3272
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !3272
  %43 = bitcast i64* %result to i8*, !dbg !3272
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !3272
  %44 = load %struct._object*, %struct._object** %retval, !dbg !3272
  ret %struct._object* %44, !dbg !3272
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyWrapper_New(%struct._object* %d, %struct._object* %self) #0 {
entry:
  %d.addr = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %wp = alloca %struct.wrapperobject*, align 8
  %descr = alloca %struct.PyWrapperDescrObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %d.addr, metadata !567, metadata !1280), !dbg !3273
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !568, metadata !1280), !dbg !3274
  %0 = bitcast %struct.wrapperobject** %wp to i8*, !dbg !3275
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3275
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp, metadata !569, metadata !1280), !dbg !3276
  %1 = bitcast %struct.PyWrapperDescrObject** %descr to i8*, !dbg !3277
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3277
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr, metadata !570, metadata !1280), !dbg !3278
  %2 = load %struct._object*, %struct._object** %d.addr, align 8, !dbg !3279, !tbaa !1276
  %3 = bitcast %struct._object* %2 to %struct.PyWrapperDescrObject*, !dbg !3280
  store %struct.PyWrapperDescrObject* %3, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3281, !tbaa !1276
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @_PyMethodWrapper_Type), !dbg !3282
  %4 = bitcast %struct._object* %call to %struct.wrapperobject*, !dbg !3283
  store %struct.wrapperobject* %4, %struct.wrapperobject** %wp, align 8, !dbg !3284, !tbaa !1276
  %5 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3285, !tbaa !1276
  %cmp = icmp ne %struct.wrapperobject* %5, null, !dbg !3286
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !3287

if.then:                                          ; preds = %entry
  %6 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3288, !tbaa !1276
  %7 = bitcast %struct.PyWrapperDescrObject* %6 to %struct._object*, !dbg !3289
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !3290
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !3291, !tbaa !1357
  %inc = add i64 %8, 1, !dbg !3291
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3291, !tbaa !1357
  %9 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !3292, !tbaa !1276
  %10 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3293, !tbaa !1276
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %10, i32 0, i32 1, !dbg !3294
  store %struct.PyWrapperDescrObject* %9, %struct.PyWrapperDescrObject** %descr1, align 8, !dbg !3295, !tbaa !2881
  %11 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3296, !tbaa !1276
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !3297
  %12 = load i64, i64* %ob_refcnt2, align 8, !dbg !3298, !tbaa !1357
  %inc3 = add i64 %12, 1, !dbg !3298
  store i64 %inc3, i64* %ob_refcnt2, align 8, !dbg !3298, !tbaa !1357
  %13 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3299, !tbaa !1276
  %14 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3300, !tbaa !1276
  %self4 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %14, i32 0, i32 2, !dbg !3301
  store %struct._object* %13, %struct._object** %self4, align 8, !dbg !3302, !tbaa !2926
  br label %do.body, !dbg !3303

do.body:                                          ; preds = %if.then
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !3304
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !3304
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !571, metadata !1280), !dbg !3306
  %16 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3307, !tbaa !1276
  %17 = bitcast %struct.wrapperobject* %16 to %union._gc_head*, !dbg !3308
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %17, i64 -1, !dbg !3309
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !3306, !tbaa !1276
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3310, !tbaa !1276
  %gc = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !3312
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !3313
  %19 = load i64, i64* %gc_refs, align 8, !dbg !3313, !tbaa !1295
  %shr = ashr i64 %19, 1, !dbg !3314
  %cmp5 = icmp ne i64 %shr, -2, !dbg !3315
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !3316

if.then.6:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !3317
  unreachable, !dbg !3317

if.end:                                           ; preds = %do.body
  br label %do.body.7, !dbg !3319

do.body.7:                                        ; preds = %if.end
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3321, !tbaa !1276
  %gc8 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !3324
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !3325
  %21 = load i64, i64* %gc_refs9, align 8, !dbg !3325, !tbaa !1295
  %and = and i64 %21, 1, !dbg !3326
  %or = or i64 %and, -6, !dbg !3327
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3328, !tbaa !1276
  %gc10 = bitcast %union._gc_head* %22 to %struct.anon*, !dbg !3329
  %gc_refs11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 2, !dbg !3330
  store i64 %or, i64* %gc_refs11, align 8, !dbg !3331, !tbaa !1295
  br label %do.cond, !dbg !3332

do.cond:                                          ; preds = %do.body.7
  br label %do.end, !dbg !3333

do.end:                                           ; preds = %do.cond
  %23 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !3335, !tbaa !1276
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3337, !tbaa !1276
  %gc12 = bitcast %union._gc_head* %24 to %struct.anon*, !dbg !3338
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0, !dbg !3339
  store %union._gc_head* %23, %union._gc_head** %gc_next, align 8, !dbg !3340, !tbaa !1311
  %25 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !3341, !tbaa !1276
  %gc13 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !3342
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1, !dbg !3343
  %26 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !3343, !tbaa !1315
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3344, !tbaa !1276
  %gc14 = bitcast %union._gc_head* %27 to %struct.anon*, !dbg !3345
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1, !dbg !3346
  store %union._gc_head* %26, %union._gc_head** %gc_prev15, align 8, !dbg !3347, !tbaa !1315
  %28 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3348, !tbaa !1276
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3349, !tbaa !1276
  %gc16 = bitcast %union._gc_head* %29 to %struct.anon*, !dbg !3350
  %gc_prev17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 1, !dbg !3351
  %30 = load %union._gc_head*, %union._gc_head** %gc_prev17, align 8, !dbg !3351, !tbaa !1315
  %gc18 = bitcast %union._gc_head* %30 to %struct.anon*, !dbg !3352
  %gc_next19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 0, !dbg !3353
  store %union._gc_head* %28, %union._gc_head** %gc_next19, align 8, !dbg !3354, !tbaa !1311
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3355, !tbaa !1276
  %32 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !3356, !tbaa !1276
  %gc20 = bitcast %union._gc_head* %32 to %struct.anon*, !dbg !3357
  %gc_prev21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 1, !dbg !3358
  store %union._gc_head* %31, %union._gc_head** %gc_prev21, align 8, !dbg !3359, !tbaa !1315
  %33 = bitcast %union._gc_head** %g to i8*, !dbg !3360
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !3360
  br label %do.cond.22, !dbg !3361

do.cond.22:                                       ; preds = %do.end
  br label %do.end.23, !dbg !3362

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !3364

if.end.24:                                        ; preds = %do.end.23, %entry
  %34 = load %struct.wrapperobject*, %struct.wrapperobject** %wp, align 8, !dbg !3365, !tbaa !1276
  %35 = bitcast %struct.wrapperobject* %34 to %struct._object*, !dbg !3366
  %36 = bitcast %struct.PyWrapperDescrObject** %descr to i8*, !dbg !3367
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !3367
  %37 = bitcast %struct.wrapperobject** %wp to i8*, !dbg !3367
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !3367
  ret %struct._object* %35, !dbg !3368
}

; Function Attrs: nounwind uwtable
define internal void @property_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %gs = alloca %struct.propertyobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_xdecref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1046, metadata !1280), !dbg !3369
  %0 = bitcast %struct.propertyobject** %gs to i8*, !dbg !3370
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3370
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %gs, metadata !1047, metadata !1280), !dbg !3371
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3372, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.propertyobject*, !dbg !3373
  store %struct.propertyobject* %2, %struct.propertyobject** %gs, align 8, !dbg !3371, !tbaa !1276
  br label %do.body, !dbg !3374

do.body:                                          ; preds = %entry
  %3 = bitcast %union._gc_head** %g to i8*, !dbg !3375
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3375
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !1048, metadata !1280), !dbg !3377
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3378, !tbaa !1276
  %5 = bitcast %struct._object* %4 to %union._gc_head*, !dbg !3379
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %5, i64 -1, !dbg !3380
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !3377, !tbaa !1276
  br label %do.body.1, !dbg !3381

do.body.1:                                        ; preds = %do.body
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3382, !tbaa !1276
  %gc = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !3385
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !3386
  %7 = load i64, i64* %gc_refs, align 8, !dbg !3386, !tbaa !1295
  %and = and i64 %7, 1, !dbg !3387
  %or = or i64 %and, -4, !dbg !3388
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3389, !tbaa !1276
  %gc2 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !3390
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3391
  store i64 %or, i64* %gc_refs3, align 8, !dbg !3392, !tbaa !1295
  br label %do.cond, !dbg !3393

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !3394

do.end:                                           ; preds = %do.cond
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3396, !tbaa !1276
  %gc4 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !3398
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !3399
  %10 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3399, !tbaa !1311
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3400, !tbaa !1276
  %gc5 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !3401
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !3402
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !3402, !tbaa !1315
  %gc6 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !3403
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !3404
  store %union._gc_head* %10, %union._gc_head** %gc_next7, align 8, !dbg !3405, !tbaa !1311
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3406, !tbaa !1276
  %gc8 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !3407
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !3408
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !3408, !tbaa !1315
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3409, !tbaa !1276
  %gc10 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !3410
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !3411
  %16 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !3411, !tbaa !1311
  %gc12 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !3412
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !3413
  store %union._gc_head* %14, %union._gc_head** %gc_prev13, align 8, !dbg !3414, !tbaa !1315
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3415, !tbaa !1276
  %gc14 = bitcast %union._gc_head* %17 to %struct.anon*, !dbg !3416
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !3417
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !3418, !tbaa !1311
  %18 = bitcast %union._gc_head** %g to i8*, !dbg !3419
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !3419
  br label %do.cond.16, !dbg !3420

do.cond.16:                                       ; preds = %do.end
  br label %do.end.17, !dbg !3421

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18, !dbg !3423

do.body.18:                                       ; preds = %do.end.17
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3424
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !3424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1050, metadata !1280), !dbg !3426
  %20 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3427, !tbaa !1276
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %20, i32 0, i32 1, !dbg !3428
  %21 = load %struct._object*, %struct._object** %prop_get, align 8, !dbg !3428, !tbaa !3429
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3426, !tbaa !1276
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3431, !tbaa !1276
  %cmp = icmp ne %struct._object* %22, null, !dbg !3432
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !3433

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !3434

do.body.19:                                       ; preds = %if.then
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3436
  call void @llvm.lifetime.start(i64 8, i8* %23) #3, !dbg !3436
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1052, metadata !1280), !dbg !3438
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3439, !tbaa !1276
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !3438, !tbaa !1276
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3440, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !3442
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !3443, !tbaa !1357
  %dec = add i64 %26, -1, !dbg !3443
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3443, !tbaa !1357
  %cmp20 = icmp ne i64 %dec, 0, !dbg !3444
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !3445

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !3446

if.else:                                          ; preds = %do.body.19
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3448, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !3450
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3450, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !3451
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3451, !tbaa !1367
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3452, !tbaa !1276
  call void %29(%struct._object* %30), !dbg !3453
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3454
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !3454
  br label %do.cond.22, !dbg !3456

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !3457

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !3459

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %32 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3461
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !3461
  br label %do.cond.25, !dbg !3464

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26, !dbg !3465

do.end.26:                                        ; preds = %do.cond.25
  br label %do.body.27, !dbg !3467

do.body.27:                                       ; preds = %do.end.26
  %33 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !3468
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !3468
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp28, metadata !1055, metadata !1280), !dbg !3470
  %34 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3471, !tbaa !1276
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %34, i32 0, i32 2, !dbg !3472
  %35 = load %struct._object*, %struct._object** %prop_set, align 8, !dbg !3472, !tbaa !3473
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !3470, !tbaa !1276
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !3474, !tbaa !1276
  %cmp29 = icmp ne %struct._object* %36, null, !dbg !3475
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !3476

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31, !dbg !3477

do.body.31:                                       ; preds = %if.then.30
  %37 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !3479
  call void @llvm.lifetime.start(i64 8, i8* %37) #3, !dbg !3479
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !1057, metadata !1280), !dbg !3481
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !3482, !tbaa !1276
  store %struct._object* %38, %struct._object** %_py_decref_tmp32, align 8, !dbg !3481, !tbaa !1276
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !3483, !tbaa !1276
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !3485
  %40 = load i64, i64* %ob_refcnt33, align 8, !dbg !3486, !tbaa !1357
  %dec34 = add i64 %40, -1, !dbg !3486
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !3486, !tbaa !1357
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !3487
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !3488

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !3489

if.else.37:                                       ; preds = %do.body.31
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !3491, !tbaa !1276
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !3493
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !3493, !tbaa !1365
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !3494
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !3494, !tbaa !1367
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !3495, !tbaa !1276
  call void %43(%struct._object* %44), !dbg !3496
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %45 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !3497
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !3497
  br label %do.cond.41, !dbg !3499

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !3500

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43, !dbg !3502

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  %46 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !3504
  call void @llvm.lifetime.end(i64 8, i8* %46) #3, !dbg !3504
  br label %do.cond.44, !dbg !3505

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !3506

do.end.45:                                        ; preds = %do.cond.44
  br label %do.body.46, !dbg !3508

do.body.46:                                       ; preds = %do.end.45
  %47 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !3509
  call void @llvm.lifetime.start(i64 8, i8* %47) #3, !dbg !3509
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp47, metadata !1060, metadata !1280), !dbg !3511
  %48 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3512, !tbaa !1276
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %48, i32 0, i32 3, !dbg !3513
  %49 = load %struct._object*, %struct._object** %prop_del, align 8, !dbg !3513, !tbaa !3514
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !3511, !tbaa !1276
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !3515, !tbaa !1276
  %cmp48 = icmp ne %struct._object* %50, null, !dbg !3516
  br i1 %cmp48, label %if.then.49, label %if.end.62, !dbg !3517

if.then.49:                                       ; preds = %do.body.46
  br label %do.body.50, !dbg !3518

do.body.50:                                       ; preds = %if.then.49
  %51 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !3520
  call void @llvm.lifetime.start(i64 8, i8* %51) #3, !dbg !3520
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !1062, metadata !1280), !dbg !3522
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !3523, !tbaa !1276
  store %struct._object* %52, %struct._object** %_py_decref_tmp51, align 8, !dbg !3522, !tbaa !1276
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !3524, !tbaa !1276
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !3526
  %54 = load i64, i64* %ob_refcnt52, align 8, !dbg !3527, !tbaa !1357
  %dec53 = add i64 %54, -1, !dbg !3527
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !3527, !tbaa !1357
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !3528
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !3529

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !3530

if.else.56:                                       ; preds = %do.body.50
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !3532, !tbaa !1276
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !3534
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !3534, !tbaa !1365
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !3535
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !3535, !tbaa !1367
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !3536, !tbaa !1276
  call void %57(%struct._object* %58), !dbg !3537
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %59 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !3538
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !3538
  br label %do.cond.60, !dbg !3540

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !3541

do.end.61:                                        ; preds = %do.cond.60
  br label %if.end.62, !dbg !3543

if.end.62:                                        ; preds = %do.end.61, %do.body.46
  %60 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !3545
  call void @llvm.lifetime.end(i64 8, i8* %60) #3, !dbg !3545
  br label %do.cond.63, !dbg !3546

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !3547

do.end.64:                                        ; preds = %do.cond.63
  br label %do.body.65, !dbg !3549

do.body.65:                                       ; preds = %do.end.64
  %61 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !3550
  call void @llvm.lifetime.start(i64 8, i8* %61) #3, !dbg !3550
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp66, metadata !1065, metadata !1280), !dbg !3552
  %62 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3553, !tbaa !1276
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %62, i32 0, i32 4, !dbg !3554
  %63 = load %struct._object*, %struct._object** %prop_doc, align 8, !dbg !3554, !tbaa !3555
  store %struct._object* %63, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !3552, !tbaa !1276
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !3556, !tbaa !1276
  %cmp67 = icmp ne %struct._object* %64, null, !dbg !3557
  br i1 %cmp67, label %if.then.68, label %if.end.81, !dbg !3558

if.then.68:                                       ; preds = %do.body.65
  br label %do.body.69, !dbg !3559

do.body.69:                                       ; preds = %if.then.68
  %65 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !3561
  call void @llvm.lifetime.start(i64 8, i8* %65) #3, !dbg !3561
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp70, metadata !1067, metadata !1280), !dbg !3563
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !3564, !tbaa !1276
  store %struct._object* %66, %struct._object** %_py_decref_tmp70, align 8, !dbg !3563, !tbaa !1276
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !3565, !tbaa !1276
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !3567
  %68 = load i64, i64* %ob_refcnt71, align 8, !dbg !3568, !tbaa !1357
  %dec72 = add i64 %68, -1, !dbg !3568
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !3568, !tbaa !1357
  %cmp73 = icmp ne i64 %dec72, 0, !dbg !3569
  br i1 %cmp73, label %if.then.74, label %if.else.75, !dbg !3570

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78, !dbg !3571

if.else.75:                                       ; preds = %do.body.69
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !3573, !tbaa !1276
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1, !dbg !3575
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !3575, !tbaa !1365
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4, !dbg !3576
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !3576, !tbaa !1367
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !3577, !tbaa !1276
  call void %71(%struct._object* %72), !dbg !3578
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  %73 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !3579
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !3579
  br label %do.cond.79, !dbg !3581

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !3582

do.end.80:                                        ; preds = %do.cond.79
  br label %if.end.81, !dbg !3584

if.end.81:                                        ; preds = %do.end.80, %do.body.65
  %74 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !3586
  call void @llvm.lifetime.end(i64 8, i8* %74) #3, !dbg !3586
  br label %do.cond.82, !dbg !3587

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !3588

do.end.83:                                        ; preds = %do.cond.82
  %75 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3590, !tbaa !1276
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !3591
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8, !dbg !3591, !tbaa !1365
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 38, !dbg !3592
  %77 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !3592, !tbaa !3593
  %78 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3594, !tbaa !1276
  %79 = bitcast %struct._object* %78 to i8*, !dbg !3594
  call void %77(i8* %79), !dbg !3590
  %80 = bitcast %struct.propertyobject** %gs to i8*, !dbg !3595
  call void @llvm.lifetime.end(i64 8, i8* %80) #3, !dbg !3595
  ret void, !dbg !3595
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
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  %vret23 = alloca i32, align 4
  %vret38 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1072, metadata !1280), !dbg !3596
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !1073, metadata !1280), !dbg !3597
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1074, metadata !1280), !dbg !3598
  %0 = bitcast %struct.propertyobject** %pp to i8*, !dbg !3599
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3599
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %pp, metadata !1075, metadata !1280), !dbg !3600
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3601, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.propertyobject*, !dbg !3602
  store %struct.propertyobject* %2, %struct.propertyobject** %pp, align 8, !dbg !3600, !tbaa !1276
  br label %do.body, !dbg !3603

do.body:                                          ; preds = %entry
  %3 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3604, !tbaa !1276
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %3, i32 0, i32 1, !dbg !3606
  %4 = load %struct._object*, %struct._object** %prop_get, align 8, !dbg !3606, !tbaa !3429
  %tobool = icmp ne %struct._object* %4, null, !dbg !3607
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !3608

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !3609
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !3609
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !1076, metadata !1280), !dbg !3611
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3612, !tbaa !1276
  %7 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3613, !tbaa !1276
  %prop_get1 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %7, i32 0, i32 1, !dbg !3614
  %8 = load %struct._object*, %struct._object** %prop_get1, align 8, !dbg !3614, !tbaa !3429
  %9 = load i8*, i8** %arg.addr, align 8, !dbg !3615, !tbaa !1276
  %call = call i32 %6(%struct._object* %8, i8* %9), !dbg !3612
  store i32 %call, i32* %vret, align 4, !dbg !3611, !tbaa !1650
  %10 = load i32, i32* %vret, align 4, !dbg !3616, !tbaa !1650
  %tobool2 = icmp ne i32 %10, 0, !dbg !3616
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3618

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %vret, align 4, !dbg !3619, !tbaa !1650
  store i32 %11, i32* %retval, !dbg !3621
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3621

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !3622
  br label %cleanup, !dbg !3622

cleanup:                                          ; preds = %if.end, %if.then.3
  %12 = bitcast i32* %vret to i8*, !dbg !3624
  call void @llvm.lifetime.end(i64 4, i8* %12) #3, !dbg !3624
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.4, !dbg !3627

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !3628

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3631

do.end:                                           ; preds = %do.cond
  br label %do.body.5, !dbg !3633

do.body.5:                                        ; preds = %do.end
  %13 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3634, !tbaa !1276
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %13, i32 0, i32 2, !dbg !3636
  %14 = load %struct._object*, %struct._object** %prop_set, align 8, !dbg !3636, !tbaa !3473
  %tobool6 = icmp ne %struct._object* %14, null, !dbg !3637
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !3638

if.then.7:                                        ; preds = %do.body.5
  %15 = bitcast i32* %vret8 to i8*, !dbg !3639
  call void @llvm.lifetime.start(i64 4, i8* %15) #3, !dbg !3639
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !1080, metadata !1280), !dbg !3641
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3642, !tbaa !1276
  %17 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3643, !tbaa !1276
  %prop_set9 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %17, i32 0, i32 2, !dbg !3644
  %18 = load %struct._object*, %struct._object** %prop_set9, align 8, !dbg !3644, !tbaa !3473
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !3645, !tbaa !1276
  %call10 = call i32 %16(%struct._object* %18, i8* %19), !dbg !3642
  store i32 %call10, i32* %vret8, align 4, !dbg !3641, !tbaa !1650
  %20 = load i32, i32* %vret8, align 4, !dbg !3646, !tbaa !1650
  %tobool11 = icmp ne i32 %20, 0, !dbg !3646
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !3648

if.then.12:                                       ; preds = %if.then.7
  %21 = load i32, i32* %vret8, align 4, !dbg !3649, !tbaa !1650
  store i32 %21, i32* %retval, !dbg !3651
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !3651

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !3652
  br label %cleanup.14, !dbg !3652

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %22 = bitcast i32* %vret8 to i8*, !dbg !3654
  call void @llvm.lifetime.end(i64 4, i8* %22) #3, !dbg !3654
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.14
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.15, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.16, label %NewDefault.1

cleanup.cont.16:                                  ; preds = %LeafBlock.2
  br label %if.end.17, !dbg !3657

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.cond.18, !dbg !3658

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !3661

do.end.19:                                        ; preds = %do.cond.18
  br label %do.body.20, !dbg !3663

do.body.20:                                       ; preds = %do.end.19
  %23 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3664, !tbaa !1276
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %23, i32 0, i32 3, !dbg !3666
  %24 = load %struct._object*, %struct._object** %prop_del, align 8, !dbg !3666, !tbaa !3514
  %tobool21 = icmp ne %struct._object* %24, null, !dbg !3667
  br i1 %tobool21, label %if.then.22, label %if.end.32, !dbg !3668

if.then.22:                                       ; preds = %do.body.20
  %25 = bitcast i32* %vret23 to i8*, !dbg !3669
  call void @llvm.lifetime.start(i64 4, i8* %25) #3, !dbg !3669
  call void @llvm.dbg.declare(metadata i32* %vret23, metadata !1084, metadata !1280), !dbg !3671
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3672, !tbaa !1276
  %27 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3673, !tbaa !1276
  %prop_del24 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %27, i32 0, i32 3, !dbg !3674
  %28 = load %struct._object*, %struct._object** %prop_del24, align 8, !dbg !3674, !tbaa !3514
  %29 = load i8*, i8** %arg.addr, align 8, !dbg !3675, !tbaa !1276
  %call25 = call i32 %26(%struct._object* %28, i8* %29), !dbg !3672
  store i32 %call25, i32* %vret23, align 4, !dbg !3671, !tbaa !1650
  %30 = load i32, i32* %vret23, align 4, !dbg !3676, !tbaa !1650
  %tobool26 = icmp ne i32 %30, 0, !dbg !3676
  br i1 %tobool26, label %if.then.27, label %if.end.28, !dbg !3678

if.then.27:                                       ; preds = %if.then.22
  %31 = load i32, i32* %vret23, align 4, !dbg !3679, !tbaa !1650
  store i32 %31, i32* %retval, !dbg !3681
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29, !dbg !3681

if.end.28:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot, !dbg !3682
  br label %cleanup.29, !dbg !3682

cleanup.29:                                       ; preds = %if.end.28, %if.then.27
  %32 = bitcast i32* %vret23 to i8*, !dbg !3684
  call void @llvm.lifetime.end(i64 4, i8* %32) #3, !dbg !3684
  %cleanup.dest.30 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.29
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.30, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.31, label %NewDefault.4

cleanup.cont.31:                                  ; preds = %LeafBlock.5
  br label %if.end.32, !dbg !3687

if.end.32:                                        ; preds = %cleanup.cont.31, %do.body.20
  br label %do.cond.33, !dbg !3688

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !3691

do.end.34:                                        ; preds = %do.cond.33
  br label %do.body.35, !dbg !3693

do.body.35:                                       ; preds = %do.end.34
  %33 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3694, !tbaa !1276
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %33, i32 0, i32 4, !dbg !3696
  %34 = load %struct._object*, %struct._object** %prop_doc, align 8, !dbg !3696, !tbaa !3555
  %tobool36 = icmp ne %struct._object* %34, null, !dbg !3697
  br i1 %tobool36, label %if.then.37, label %if.end.47, !dbg !3698

if.then.37:                                       ; preds = %do.body.35
  %35 = bitcast i32* %vret38 to i8*, !dbg !3699
  call void @llvm.lifetime.start(i64 4, i8* %35) #3, !dbg !3699
  call void @llvm.dbg.declare(metadata i32* %vret38, metadata !1088, metadata !1280), !dbg !3701
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3702, !tbaa !1276
  %37 = load %struct.propertyobject*, %struct.propertyobject** %pp, align 8, !dbg !3703, !tbaa !1276
  %prop_doc39 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %37, i32 0, i32 4, !dbg !3704
  %38 = load %struct._object*, %struct._object** %prop_doc39, align 8, !dbg !3704, !tbaa !3555
  %39 = load i8*, i8** %arg.addr, align 8, !dbg !3705, !tbaa !1276
  %call40 = call i32 %36(%struct._object* %38, i8* %39), !dbg !3702
  store i32 %call40, i32* %vret38, align 4, !dbg !3701, !tbaa !1650
  %40 = load i32, i32* %vret38, align 4, !dbg !3706, !tbaa !1650
  %tobool41 = icmp ne i32 %40, 0, !dbg !3706
  br i1 %tobool41, label %if.then.42, label %if.end.43, !dbg !3708

if.then.42:                                       ; preds = %if.then.37
  %41 = load i32, i32* %vret38, align 4, !dbg !3709, !tbaa !1650
  store i32 %41, i32* %retval, !dbg !3711
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44, !dbg !3711

if.end.43:                                        ; preds = %if.then.37
  store i32 0, i32* %cleanup.dest.slot, !dbg !3712
  br label %cleanup.44, !dbg !3712

cleanup.44:                                       ; preds = %if.end.43, %if.then.42
  %42 = bitcast i32* %vret38 to i8*, !dbg !3714
  call void @llvm.lifetime.end(i64 4, i8* %42) #3, !dbg !3714
  %cleanup.dest.45 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.8

LeafBlock.8:                                      ; preds = %cleanup.44
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest.45, 0
  br i1 %SwitchLeaf9, label %cleanup.cont.46, label %NewDefault.7

cleanup.cont.46:                                  ; preds = %LeafBlock.8
  br label %if.end.47, !dbg !3717

if.end.47:                                        ; preds = %cleanup.cont.46, %do.body.35
  br label %do.cond.48, !dbg !3718

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49, !dbg !3721

do.end.49:                                        ; preds = %do.cond.48
  store i32 0, i32* %retval, !dbg !3723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !3723

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.50

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.50

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.50

NewDefault.7:                                     ; preds = %LeafBlock.8
  br label %cleanup.50

cleanup.50:                                       ; preds = %NewDefault.7, %NewDefault.4, %NewDefault.1, %NewDefault, %do.end.49
  %43 = bitcast %struct.propertyobject** %pp to i8*, !dbg !3724
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !3724
  %44 = load i32, i32* %retval, !dbg !3724
  ret i32 %44, !dbg !3724
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %gs = alloca %struct.propertyobject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1148, metadata !1280), !dbg !3725
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !1149, metadata !1280), !dbg !3726
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !1150, metadata !1280), !dbg !3727
  %0 = bitcast %struct.propertyobject** %gs to i8*, !dbg !3728
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3728
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %gs, metadata !1151, metadata !1280), !dbg !3729
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3730, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.propertyobject*, !dbg !3731
  store %struct.propertyobject* %2, %struct.propertyobject** %gs, align 8, !dbg !3729, !tbaa !1276
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3732, !tbaa !1276
  %cmp = icmp eq %struct._object* %3, null, !dbg !3734
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3735

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3736, !tbaa !1276
  %cmp1 = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !3738
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3739

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3740, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !3742
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !3743, !tbaa !1357
  %inc = add i64 %6, 1, !dbg !3743
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3743, !tbaa !1357
  %7 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3744, !tbaa !1276
  store %struct._object* %7, %struct._object** %retval, !dbg !3745
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3745

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3746, !tbaa !1276
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %8, i32 0, i32 1, !dbg !3748
  %9 = load %struct._object*, %struct._object** %prop_get, align 8, !dbg !3748, !tbaa !3429
  %cmp2 = icmp eq %struct._object* %9, null, !dbg !3749
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3750

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !3751, !tbaa !1276
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0)), !dbg !3753
  store %struct._object* null, %struct._object** %retval, !dbg !3754
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3754

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3755, !tbaa !1276
  %prop_get5 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %11, i32 0, i32 1, !dbg !3756
  %12 = load %struct._object*, %struct._object** %prop_get5, align 8, !dbg !3756, !tbaa !3429
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3757, !tbaa !1276
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %12, %struct._object* %13, i8* null), !dbg !3758
  store %struct._object* %call, %struct._object** %retval, !dbg !3759
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3759

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %14 = bitcast %struct.propertyobject** %gs to i8*, !dbg !3760
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !3760
  %15 = load %struct._object*, %struct._object** %retval, !dbg !3760
  ret %struct._object* %15, !dbg !3760
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1154, metadata !1280), !dbg !3761
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !1155, metadata !1280), !dbg !3762
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !1156, metadata !1280), !dbg !3763
  %0 = bitcast %struct.propertyobject** %gs to i8*, !dbg !3764
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3764
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %gs, metadata !1157, metadata !1280), !dbg !3765
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3766, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.propertyobject*, !dbg !3767
  store %struct.propertyobject* %2, %struct.propertyobject** %gs, align 8, !dbg !3765, !tbaa !1276
  %3 = bitcast %struct._object** %func to i8*, !dbg !3768
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3768
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !1158, metadata !1280), !dbg !3769
  %4 = bitcast %struct._object** %res to i8*, !dbg !3768
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !3768
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !1159, metadata !1280), !dbg !3770
  %5 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3771, !tbaa !1276
  %cmp = icmp eq %struct._object* %5, null, !dbg !3773
  br i1 %cmp, label %if.then, label %if.else, !dbg !3774

if.then:                                          ; preds = %entry
  %6 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3775, !tbaa !1276
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %6, i32 0, i32 3, !dbg !3776
  %7 = load %struct._object*, %struct._object** %prop_del, align 8, !dbg !3776, !tbaa !3514
  store %struct._object* %7, %struct._object** %func, align 8, !dbg !3777, !tbaa !1276
  br label %if.end, !dbg !3778

if.else:                                          ; preds = %entry
  %8 = load %struct.propertyobject*, %struct.propertyobject** %gs, align 8, !dbg !3779, !tbaa !1276
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %8, i32 0, i32 2, !dbg !3780
  %9 = load %struct._object*, %struct._object** %prop_set, align 8, !dbg !3780, !tbaa !3473
  store %struct._object* %9, %struct._object** %func, align 8, !dbg !3781, !tbaa !1276
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._object*, %struct._object** %func, align 8, !dbg !3782, !tbaa !1276
  %cmp1 = icmp eq %struct._object* %10, null, !dbg !3784
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !3785

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !3786, !tbaa !1276
  %12 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3788, !tbaa !1276
  %cmp3 = icmp eq %struct._object* %12, null, !dbg !3789
  %cond = select i1 %cmp3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), !dbg !3788
  call void @PyErr_SetString(%struct._object* %11, i8* %cond), !dbg !3790
  store i32 -1, i32* %retval, !dbg !3791
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3791

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3792, !tbaa !1276
  %cmp5 = icmp eq %struct._object* %13, null, !dbg !3794
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !3795

if.then.6:                                        ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** %func, align 8, !dbg !3796, !tbaa !1276
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3797, !tbaa !1276
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %14, %struct._object* %15, i8* null), !dbg !3798
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !3799, !tbaa !1276
  br label %if.end.9, !dbg !3800

if.else.7:                                        ; preds = %if.end.4
  %16 = load %struct._object*, %struct._object** %func, align 8, !dbg !3801, !tbaa !1276
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3802, !tbaa !1276
  %18 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3803, !tbaa !1276
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %16, %struct._object* %17, %struct._object* %18, i8* null), !dbg !3804
  store %struct._object* %call8, %struct._object** %res, align 8, !dbg !3805, !tbaa !1276
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  %19 = load %struct._object*, %struct._object** %res, align 8, !dbg !3806, !tbaa !1276
  %cmp10 = icmp eq %struct._object* %19, null, !dbg !3808
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !3809

if.then.11:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval, !dbg !3810
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3810

if.end.12:                                        ; preds = %if.end.9
  br label %do.body, !dbg !3811

do.body:                                          ; preds = %if.end.12
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3812
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !3812
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1160, metadata !1280), !dbg !3814
  %21 = load %struct._object*, %struct._object** %res, align 8, !dbg !3815, !tbaa !1276
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !3814, !tbaa !1276
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3816, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3818
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !3819, !tbaa !1357
  %dec = add i64 %23, -1, !dbg !3819
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3819, !tbaa !1357
  %cmp13 = icmp ne i64 %dec, 0, !dbg !3820
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !3821

if.then.14:                                       ; preds = %do.body
  br label %if.end.16, !dbg !3822

if.else.15:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3824, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3826
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3826, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3827
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3827, !tbaa !1367
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3828, !tbaa !1276
  call void %26(%struct._object* %27), !dbg !3829
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3830
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !3830
  br label %do.cond, !dbg !3832

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !3833

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !3835
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3835

cleanup:                                          ; preds = %do.end, %if.then.11, %if.then.2
  %29 = bitcast %struct._object** %res to i8*, !dbg !3836
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !3836
  %30 = bitcast %struct._object** %func to i8*, !dbg !3836
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !3836
  %31 = bitcast %struct.propertyobject** %gs to i8*, !dbg !3836
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !3836
  %32 = load i32, i32* %retval, !dbg !3836
  ret i32 %32, !dbg !3836
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
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp13 = alloca %struct._object*, align 8
  %_py_xincref_tmp22 = alloca %struct._object*, align 8
  %_py_xincref_tmp31 = alloca %struct._object*, align 8
  %get_doc = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1164, metadata !1280), !dbg !3837
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1165, metadata !1280), !dbg !3838
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !1166, metadata !1280), !dbg !3839
  %0 = bitcast %struct._object** %get to i8*, !dbg !3840
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3840
  call void @llvm.dbg.declare(metadata %struct._object** %get, metadata !1167, metadata !1280), !dbg !3841
  store %struct._object* null, %struct._object** %get, align 8, !dbg !3841, !tbaa !1276
  %1 = bitcast %struct._object** %set to i8*, !dbg !3840
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3840
  call void @llvm.dbg.declare(metadata %struct._object** %set, metadata !1168, metadata !1280), !dbg !3842
  store %struct._object* null, %struct._object** %set, align 8, !dbg !3842, !tbaa !1276
  %2 = bitcast %struct._object** %del to i8*, !dbg !3840
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3840
  call void @llvm.dbg.declare(metadata %struct._object** %del, metadata !1169, metadata !1280), !dbg !3843
  store %struct._object* null, %struct._object** %del, align 8, !dbg !3843, !tbaa !1276
  %3 = bitcast %struct._object** %doc to i8*, !dbg !3840
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3840
  call void @llvm.dbg.declare(metadata %struct._object** %doc, metadata !1170, metadata !1280), !dbg !3844
  store %struct._object* null, %struct._object** %doc, align 8, !dbg !3844, !tbaa !1276
  %4 = bitcast %struct.propertyobject** %prop to i8*, !dbg !3845
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !3845
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %prop, metadata !1171, metadata !1280), !dbg !3846
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3847, !tbaa !1276
  %6 = bitcast %struct._object* %5 to %struct.propertyobject*, !dbg !3848
  store %struct.propertyobject* %6, %struct.propertyobject** %prop, align 8, !dbg !3846, !tbaa !1276
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3849, !tbaa !1276
  %8 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3851, !tbaa !1276
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @property_init.kwlist, i32 0, i32 0), %struct._object** %get, %struct._object** %set, %struct._object** %del, %struct._object** %doc), !dbg !3852
  %tobool = icmp ne i32 %call, 0, !dbg !3852
  br i1 %tobool, label %if.end, label %if.then, !dbg !3853

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3854
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94, !dbg !3854

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %get, align 8, !dbg !3855, !tbaa !1276
  %cmp = icmp eq %struct._object* %9, @_Py_NoneStruct, !dbg !3857
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !3858

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %get, align 8, !dbg !3859, !tbaa !1276
  br label %if.end.2, !dbg !3860

if.end.2:                                         ; preds = %if.then.1, %if.end
  %10 = load %struct._object*, %struct._object** %set, align 8, !dbg !3861, !tbaa !1276
  %cmp3 = icmp eq %struct._object* %10, @_Py_NoneStruct, !dbg !3863
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3864

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %set, align 8, !dbg !3865, !tbaa !1276
  br label %if.end.5, !dbg !3866

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %11 = load %struct._object*, %struct._object** %del, align 8, !dbg !3867, !tbaa !1276
  %cmp6 = icmp eq %struct._object* %11, @_Py_NoneStruct, !dbg !3869
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3870

if.then.7:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %del, align 8, !dbg !3871, !tbaa !1276
  br label %if.end.8, !dbg !3872

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  br label %do.body, !dbg !3873

do.body:                                          ; preds = %if.end.8
  %12 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3874
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !3874
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !1172, metadata !1280), !dbg !3876
  %13 = load %struct._object*, %struct._object** %get, align 8, !dbg !3877, !tbaa !1276
  store %struct._object* %13, %struct._object** %_py_xincref_tmp, align 8, !dbg !3876, !tbaa !1276
  %14 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3878, !tbaa !1276
  %cmp9 = icmp ne %struct._object* %14, null, !dbg !3880
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !3881

if.then.10:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3882, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3884
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3885, !tbaa !1357
  %inc = add i64 %16, 1, !dbg !3885
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3885, !tbaa !1357
  br label %if.end.11, !dbg !3886

if.end.11:                                        ; preds = %if.then.10, %do.body
  %17 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !3887
  br label %do.cond, !dbg !3890

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !3891

do.end:                                           ; preds = %do.cond
  br label %do.body.12, !dbg !3893

do.body.12:                                       ; preds = %do.end
  %18 = bitcast %struct._object** %_py_xincref_tmp13 to i8*, !dbg !3894
  call void @llvm.lifetime.start(i64 8, i8* %18) #3, !dbg !3894
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp13, metadata !1174, metadata !1280), !dbg !3896
  %19 = load %struct._object*, %struct._object** %set, align 8, !dbg !3897, !tbaa !1276
  store %struct._object* %19, %struct._object** %_py_xincref_tmp13, align 8, !dbg !3896, !tbaa !1276
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp13, align 8, !dbg !3898, !tbaa !1276
  %cmp14 = icmp ne %struct._object* %20, null, !dbg !3900
  br i1 %cmp14, label %if.then.15, label %if.end.18, !dbg !3901

if.then.15:                                       ; preds = %do.body.12
  %21 = load %struct._object*, %struct._object** %_py_xincref_tmp13, align 8, !dbg !3902, !tbaa !1276
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3904
  %22 = load i64, i64* %ob_refcnt16, align 8, !dbg !3905, !tbaa !1357
  %inc17 = add i64 %22, 1, !dbg !3905
  store i64 %inc17, i64* %ob_refcnt16, align 8, !dbg !3905, !tbaa !1357
  br label %if.end.18, !dbg !3906

if.end.18:                                        ; preds = %if.then.15, %do.body.12
  %23 = bitcast %struct._object** %_py_xincref_tmp13 to i8*, !dbg !3907
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !3907
  br label %do.cond.19, !dbg !3908

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20, !dbg !3909

do.end.20:                                        ; preds = %do.cond.19
  br label %do.body.21, !dbg !3911

do.body.21:                                       ; preds = %do.end.20
  %24 = bitcast %struct._object** %_py_xincref_tmp22 to i8*, !dbg !3912
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !3912
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp22, metadata !1176, metadata !1280), !dbg !3914
  %25 = load %struct._object*, %struct._object** %del, align 8, !dbg !3915, !tbaa !1276
  store %struct._object* %25, %struct._object** %_py_xincref_tmp22, align 8, !dbg !3914, !tbaa !1276
  %26 = load %struct._object*, %struct._object** %_py_xincref_tmp22, align 8, !dbg !3916, !tbaa !1276
  %cmp23 = icmp ne %struct._object* %26, null, !dbg !3918
  br i1 %cmp23, label %if.then.24, label %if.end.27, !dbg !3919

if.then.24:                                       ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_xincref_tmp22, align 8, !dbg !3920, !tbaa !1276
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !3922
  %28 = load i64, i64* %ob_refcnt25, align 8, !dbg !3923, !tbaa !1357
  %inc26 = add i64 %28, 1, !dbg !3923
  store i64 %inc26, i64* %ob_refcnt25, align 8, !dbg !3923, !tbaa !1357
  br label %if.end.27, !dbg !3924

if.end.27:                                        ; preds = %if.then.24, %do.body.21
  %29 = bitcast %struct._object** %_py_xincref_tmp22 to i8*, !dbg !3925
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !3925
  br label %do.cond.28, !dbg !3926

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !3927

do.end.29:                                        ; preds = %do.cond.28
  br label %do.body.30, !dbg !3929

do.body.30:                                       ; preds = %do.end.29
  %30 = bitcast %struct._object** %_py_xincref_tmp31 to i8*, !dbg !3930
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !3930
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp31, metadata !1178, metadata !1280), !dbg !3932
  %31 = load %struct._object*, %struct._object** %doc, align 8, !dbg !3933, !tbaa !1276
  store %struct._object* %31, %struct._object** %_py_xincref_tmp31, align 8, !dbg !3932, !tbaa !1276
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp31, align 8, !dbg !3934, !tbaa !1276
  %cmp32 = icmp ne %struct._object* %32, null, !dbg !3936
  br i1 %cmp32, label %if.then.33, label %if.end.36, !dbg !3937

if.then.33:                                       ; preds = %do.body.30
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp31, align 8, !dbg !3938, !tbaa !1276
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !3940
  %34 = load i64, i64* %ob_refcnt34, align 8, !dbg !3941, !tbaa !1357
  %inc35 = add i64 %34, 1, !dbg !3941
  store i64 %inc35, i64* %ob_refcnt34, align 8, !dbg !3941, !tbaa !1357
  br label %if.end.36, !dbg !3942

if.end.36:                                        ; preds = %if.then.33, %do.body.30
  %35 = bitcast %struct._object** %_py_xincref_tmp31 to i8*, !dbg !3943
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !3943
  br label %do.cond.37, !dbg !3944

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !3945

do.end.38:                                        ; preds = %do.cond.37
  %36 = load %struct._object*, %struct._object** %get, align 8, !dbg !3947, !tbaa !1276
  %37 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !3948, !tbaa !1276
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %37, i32 0, i32 1, !dbg !3949
  store %struct._object* %36, %struct._object** %prop_get, align 8, !dbg !3950, !tbaa !3429
  %38 = load %struct._object*, %struct._object** %set, align 8, !dbg !3951, !tbaa !1276
  %39 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !3952, !tbaa !1276
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %39, i32 0, i32 2, !dbg !3953
  store %struct._object* %38, %struct._object** %prop_set, align 8, !dbg !3954, !tbaa !3473
  %40 = load %struct._object*, %struct._object** %del, align 8, !dbg !3955, !tbaa !1276
  %41 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !3956, !tbaa !1276
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %41, i32 0, i32 3, !dbg !3957
  store %struct._object* %40, %struct._object** %prop_del, align 8, !dbg !3958, !tbaa !3514
  %42 = load %struct._object*, %struct._object** %doc, align 8, !dbg !3959, !tbaa !1276
  %43 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !3960, !tbaa !1276
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %43, i32 0, i32 4, !dbg !3961
  store %struct._object* %42, %struct._object** %prop_doc, align 8, !dbg !3962, !tbaa !3555
  %44 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !3963, !tbaa !1276
  %getter_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %44, i32 0, i32 5, !dbg !3964
  store i32 0, i32* %getter_doc, align 4, !dbg !3965, !tbaa !3966
  %45 = load %struct._object*, %struct._object** %doc, align 8, !dbg !3967, !tbaa !1276
  %cmp39 = icmp eq %struct._object* %45, null, !dbg !3968
  br i1 %cmp39, label %land.lhs.true, label %lor.lhs.false, !dbg !3969

lor.lhs.false:                                    ; preds = %do.end.38
  %46 = load %struct._object*, %struct._object** %doc, align 8, !dbg !3970, !tbaa !1276
  %cmp40 = icmp eq %struct._object* %46, @_Py_NoneStruct, !dbg !3972
  br i1 %cmp40, label %land.lhs.true, label %if.end.93, !dbg !3973

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end.38
  %47 = load %struct._object*, %struct._object** %get, align 8, !dbg !3974, !tbaa !1276
  %cmp41 = icmp ne %struct._object* %47, null, !dbg !3977
  br i1 %cmp41, label %if.then.42, label %if.end.93, !dbg !3978

if.then.42:                                       ; preds = %land.lhs.true
  %48 = bitcast %struct._object** %get_doc to i8*, !dbg !3979
  call void @llvm.lifetime.start(i64 8, i8* %48) #3, !dbg !3979
  call void @llvm.dbg.declare(metadata %struct._object** %get_doc, metadata !1180, metadata !1280), !dbg !3980
  %49 = load %struct._object*, %struct._object** %get, align 8, !dbg !3981, !tbaa !1276
  %call43 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %49, %struct._Py_Identifier* @property_init.PyId___doc__), !dbg !3982
  store %struct._object* %call43, %struct._object** %get_doc, align 8, !dbg !3980, !tbaa !1276
  %50 = load %struct._object*, %struct._object** %get_doc, align 8, !dbg !3983, !tbaa !1276
  %tobool44 = icmp ne %struct._object* %50, null, !dbg !3983
  br i1 %tobool44, label %if.then.45, label %if.else.83, !dbg !3984

if.then.45:                                       ; preds = %if.then.42
  %51 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3985, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !3986
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3986, !tbaa !1365
  %cmp46 = icmp eq %struct._typeobject* %52, @PyProperty_Type, !dbg !3987
  br i1 %cmp46, label %if.then.47, label %if.else.64, !dbg !3988

if.then.47:                                       ; preds = %if.then.45
  br label %do.body.48, !dbg !3989

do.body.48:                                       ; preds = %if.then.47
  %53 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3990
  call void @llvm.lifetime.start(i64 8, i8* %53) #3, !dbg !3990
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1183, metadata !1280), !dbg !3992
  %54 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !3993, !tbaa !1276
  %prop_doc49 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %54, i32 0, i32 4, !dbg !3994
  %55 = load %struct._object*, %struct._object** %prop_doc49, align 8, !dbg !3994, !tbaa !3555
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3992, !tbaa !1276
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3995, !tbaa !1276
  %cmp50 = icmp ne %struct._object* %56, null, !dbg !3996
  br i1 %cmp50, label %if.then.51, label %if.end.60, !dbg !3997

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52, !dbg !3998

do.body.52:                                       ; preds = %if.then.51
  %57 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %57) #3, !dbg !4000
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1189, metadata !1280), !dbg !4002
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4003, !tbaa !1276
  store %struct._object* %58, %struct._object** %_py_decref_tmp, align 8, !dbg !4002, !tbaa !1276
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4004, !tbaa !1276
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0, !dbg !4006
  %60 = load i64, i64* %ob_refcnt53, align 8, !dbg !4007, !tbaa !1357
  %dec = add i64 %60, -1, !dbg !4007
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !4007, !tbaa !1357
  %cmp54 = icmp ne i64 %dec, 0, !dbg !4008
  br i1 %cmp54, label %if.then.55, label %if.else, !dbg !4009

if.then.55:                                       ; preds = %do.body.52
  br label %if.end.57, !dbg !4010

if.else:                                          ; preds = %do.body.52
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4012, !tbaa !1276
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1, !dbg !4014
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !4014, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4, !dbg !4015
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4015, !tbaa !1367
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4016, !tbaa !1276
  call void %63(%struct._object* %64), !dbg !4017
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.55
  %65 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4018
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !4018
  br label %do.cond.58, !dbg !4020

do.cond.58:                                       ; preds = %if.end.57
  br label %do.end.59, !dbg !4021

do.end.59:                                        ; preds = %do.cond.58
  br label %if.end.60, !dbg !4023

if.end.60:                                        ; preds = %do.end.59, %do.body.48
  %66 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4025
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !4025
  br label %do.cond.61, !dbg !4028

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62, !dbg !4029

do.end.62:                                        ; preds = %do.cond.61
  %67 = load %struct._object*, %struct._object** %get_doc, align 8, !dbg !4031, !tbaa !1276
  %68 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !4032, !tbaa !1276
  %prop_doc63 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %68, i32 0, i32 4, !dbg !4033
  store %struct._object* %67, %struct._object** %prop_doc63, align 8, !dbg !4034, !tbaa !3555
  br label %if.end.81, !dbg !4035

if.else.64:                                       ; preds = %if.then.45
  %69 = bitcast i32* %err to i8*, !dbg !4036
  call void @llvm.lifetime.start(i64 4, i8* %69) #3, !dbg !4036
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1192, metadata !1280), !dbg !4037
  %70 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !4038, !tbaa !1276
  %71 = load %struct._object*, %struct._object** %get_doc, align 8, !dbg !4039, !tbaa !1276
  %call65 = call i32 @_PyObject_SetAttrId(%struct._object* %70, %struct._Py_Identifier* @property_init.PyId___doc__, %struct._object* %71), !dbg !4040
  store i32 %call65, i32* %err, align 4, !dbg !4037, !tbaa !1650
  br label %do.body.66, !dbg !4041

do.body.66:                                       ; preds = %if.else.64
  %72 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !4042
  call void @llvm.lifetime.start(i64 8, i8* %72) #3, !dbg !4042
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp67, metadata !1194, metadata !1280), !dbg !4044
  %73 = load %struct._object*, %struct._object** %get_doc, align 8, !dbg !4045, !tbaa !1276
  store %struct._object* %73, %struct._object** %_py_decref_tmp67, align 8, !dbg !4044, !tbaa !1276
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !4046, !tbaa !1276
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !4048
  %75 = load i64, i64* %ob_refcnt68, align 8, !dbg !4049, !tbaa !1357
  %dec69 = add i64 %75, -1, !dbg !4049
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !4049, !tbaa !1357
  %cmp70 = icmp ne i64 %dec69, 0, !dbg !4050
  br i1 %cmp70, label %if.then.71, label %if.else.72, !dbg !4051

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75, !dbg !4052

if.else.72:                                       ; preds = %do.body.66
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !4054, !tbaa !1276
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !4056
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8, !dbg !4056, !tbaa !1365
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4, !dbg !4057
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8, !dbg !4057, !tbaa !1367
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !4058, !tbaa !1276
  call void %78(%struct._object* %79), !dbg !4059
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  %80 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !4060
  call void @llvm.lifetime.end(i64 8, i8* %80) #3, !dbg !4060
  br label %do.cond.76, !dbg !4062

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77, !dbg !4063

do.end.77:                                        ; preds = %do.cond.76
  %81 = load i32, i32* %err, align 4, !dbg !4065, !tbaa !1650
  %cmp78 = icmp slt i32 %81, 0, !dbg !4067
  br i1 %cmp78, label %if.then.79, label %if.end.80, !dbg !4068

if.then.79:                                       ; preds = %do.end.77
  store i32 -1, i32* %retval, !dbg !4069
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4069

if.end.80:                                        ; preds = %do.end.77
  store i32 0, i32* %cleanup.dest.slot, !dbg !4070
  br label %cleanup, !dbg !4070

cleanup:                                          ; preds = %if.end.80, %if.then.79
  %82 = bitcast i32* %err to i8*, !dbg !4071
  call void @llvm.lifetime.end(i64 4, i8* %82) #3, !dbg !4071
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.81

if.end.81:                                        ; preds = %cleanup.cont, %do.end.62
  %83 = load %struct.propertyobject*, %struct.propertyobject** %prop, align 8, !dbg !4073, !tbaa !1276
  %getter_doc82 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %83, i32 0, i32 5, !dbg !4074
  store i32 1, i32* %getter_doc82, align 4, !dbg !4075, !tbaa !3966
  br label %if.end.89, !dbg !4076

if.else.83:                                       ; preds = %if.then.42
  %84 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !4077, !tbaa !1276
  %call84 = call i32 @PyErr_ExceptionMatches(%struct._object* %84), !dbg !4079
  %tobool85 = icmp ne i32 %call84, 0, !dbg !4079
  br i1 %tobool85, label %if.then.86, label %if.else.87, !dbg !4080

if.then.86:                                       ; preds = %if.else.83
  call void @PyErr_Clear(), !dbg !4081
  br label %if.end.88, !dbg !4083

if.else.87:                                       ; preds = %if.else.83
  store i32 -1, i32* %retval, !dbg !4084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !4084

if.end.88:                                        ; preds = %if.then.86
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.81
  store i32 0, i32* %cleanup.dest.slot, !dbg !4086
  br label %cleanup.90, !dbg !4086

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.90

cleanup.90:                                       ; preds = %NewDefault, %if.end.89, %if.else.87
  %85 = bitcast %struct._object** %get_doc to i8*, !dbg !4087
  call void @llvm.lifetime.end(i64 8, i8* %85) #3, !dbg !4087
  %cleanup.dest.91 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.90
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.91, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.92, label %NewDefault.1

cleanup.cont.92:                                  ; preds = %LeafBlock.2
  br label %if.end.93, !dbg !4088

if.end.93:                                        ; preds = %cleanup.cont.92, %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %retval, !dbg !4089
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94, !dbg !4089

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.94

cleanup.94:                                       ; preds = %NewDefault.1, %if.end.93, %if.then
  %86 = bitcast %struct.propertyobject** %prop to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 8, i8* %86) #3, !dbg !4090
  %87 = bitcast %struct._object** %doc to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 8, i8* %87) #3, !dbg !4090
  %88 = bitcast %struct._object** %del to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 8, i8* %88) #3, !dbg !4090
  %89 = bitcast %struct._object** %set to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 8, i8* %89) #3, !dbg !4090
  %90 = bitcast %struct._object** %get to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 8, i8* %90) #3, !dbg !4090
  %91 = load i32, i32* %retval, !dbg !4090
  ret i32 %91, !dbg !4090
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
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !606, metadata !1280), !dbg !4091
  store i8* %format, i8** %format.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !607, metadata !1280), !dbg !4092
  %0 = bitcast %struct._object** %name to i8*, !dbg !4093
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4093
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !608, metadata !1280), !dbg !4094
  store %struct._object* null, %struct._object** %name, align 8, !dbg !4094, !tbaa !1276
  %1 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4095, !tbaa !1276
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %1, i32 0, i32 2, !dbg !4097
  %2 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !4097, !tbaa !1390
  %cmp = icmp ne %struct._object* %2, null, !dbg !4098
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4099

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4100, !tbaa !1276
  %d_name1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %3, i32 0, i32 2, !dbg !4102
  %4 = load %struct._object*, %struct._object** %d_name1, align 8, !dbg !4102, !tbaa !1390
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !4103
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4103, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !4104
  %6 = load i64, i64* %tp_flags, align 8, !dbg !4104, !tbaa !1726
  %and = and i64 %6, 268435456, !dbg !4105
  %cmp2 = icmp ne i64 %and, 0, !dbg !4106
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4107

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4108, !tbaa !1276
  %d_name3 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %7, i32 0, i32 2, !dbg !4109
  %8 = load %struct._object*, %struct._object** %d_name3, align 8, !dbg !4109, !tbaa !1390
  store %struct._object* %8, %struct._object** %name, align 8, !dbg !4110, !tbaa !1276
  br label %if.end, !dbg !4111

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i8*, i8** %format.addr, align 8, !dbg !4112, !tbaa !1276
  %10 = load %struct._object*, %struct._object** %name, align 8, !dbg !4113, !tbaa !1276
  %11 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4114, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %11, i32 0, i32 1, !dbg !4115
  %12 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !4115, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1, !dbg !4116
  %13 = load i8*, i8** %tp_name, align 8, !dbg !4116, !tbaa !1498
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* %9, %struct._object* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %13), !dbg !4117
  %14 = bitcast %struct._object** %name to i8*, !dbg !4118
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !4118
  ret %struct._object* %call, !dbg !4119
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_name(%struct.PyDescrObject* %descr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !632, metadata !1280), !dbg !4120
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4121, !tbaa !1276
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %0, i32 0, i32 2, !dbg !4123
  %1 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !4123, !tbaa !1390
  %cmp = icmp ne %struct._object* %1, null, !dbg !4124
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4125

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4126, !tbaa !1276
  %d_name1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 2, !dbg !4128
  %3 = load %struct._object*, %struct._object** %d_name1, align 8, !dbg !4128, !tbaa !1390
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4129
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4129, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !4130
  %5 = load i64, i64* %tp_flags, align 8, !dbg !4130, !tbaa !1726
  %and = and i64 %5, 268435456, !dbg !4131
  %cmp2 = icmp ne i64 %and, 0, !dbg !4132
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4133

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4134, !tbaa !1276
  %d_name3 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 2, !dbg !4135
  %7 = load %struct._object*, %struct._object** %d_name3, align 8, !dbg !4135, !tbaa !1390
  store %struct._object* %7, %struct._object** %retval, !dbg !4136
  br label %return, !dbg !4136

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4137
  br label %return, !dbg !4137

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !4138
  ret %struct._object* %8, !dbg !4138
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
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !645, metadata !1280), !dbg !4139
  %0 = bitcast %struct._object** %builtins to i8*, !dbg !4140
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4140
  call void @llvm.dbg.declare(metadata %struct._object** %builtins, metadata !646, metadata !1280), !dbg !4141
  %1 = bitcast %struct._object** %getattr to i8*, !dbg !4142
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4142
  call void @llvm.dbg.declare(metadata %struct._object** %getattr, metadata !647, metadata !1280), !dbg !4143
  %call = call %struct._object* @PyEval_GetBuiltins(), !dbg !4144
  store %struct._object* %call, %struct._object** %builtins, align 8, !dbg !4145, !tbaa !1276
  %2 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !4146, !tbaa !1276
  %call1 = call %struct._object* @_PyDict_GetItemId(%struct._object* %2, %struct._Py_Identifier* @descr_reduce.PyId_getattr), !dbg !4147
  store %struct._object* %call1, %struct._object** %getattr, align 8, !dbg !4148, !tbaa !1276
  %3 = load %struct._object*, %struct._object** %getattr, align 8, !dbg !4149, !tbaa !1276
  %4 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4150, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %4, i32 0, i32 1, !dbg !4151
  %5 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !4151, !tbaa !1340
  %6 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4152, !tbaa !1276
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 2, !dbg !4153
  %7 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !4153, !tbaa !1390
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* %3, %struct._typeobject* %5, %struct._object* %7), !dbg !4154
  %8 = bitcast %struct._object** %getattr to i8*, !dbg !4155
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !4155
  %9 = bitcast %struct._object** %builtins to i8*, !dbg !4155
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !4155
  ret %struct._object* %call2, !dbg !4156
}

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_doc(%struct.PyMethodDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !652, metadata !1280), !dbg !4157
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !653, metadata !1280), !dbg !4158
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !4159, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %0, i32 0, i32 1, !dbg !4160
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !4160, !tbaa !1532
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0, !dbg !4161
  %2 = load i8*, i8** %ml_name, align 8, !dbg !4161, !tbaa !2260
  %3 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !4162, !tbaa !1276
  %d_method1 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %3, i32 0, i32 1, !dbg !4163
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method1, align 8, !dbg !4163, !tbaa !1532
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3, !dbg !4164
  %5 = load i8*, i8** %ml_doc, align 8, !dbg !4164, !tbaa !4165
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %5), !dbg !4166
  ret %struct._object* %call, !dbg !4167
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @descr_get_qualname(%struct.PyDescrObject* %descr) #0 {
entry:
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !656, metadata !1280), !dbg !4168
  %0 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4169, !tbaa !1276
  %d_qualname = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %0, i32 0, i32 3, !dbg !4171
  %1 = load %struct._object*, %struct._object** %d_qualname, align 8, !dbg !4171, !tbaa !1429
  %cmp = icmp eq %struct._object* %1, null, !dbg !4172
  br i1 %cmp, label %if.then, label %if.end, !dbg !4173

if.then:                                          ; preds = %entry
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4174, !tbaa !1276
  %call = call %struct._object* @calculate_qualname(%struct.PyDescrObject* %2), !dbg !4175
  %3 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4176, !tbaa !1276
  %d_qualname1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %3, i32 0, i32 3, !dbg !4177
  store %struct._object* %call, %struct._object** %d_qualname1, align 8, !dbg !4178, !tbaa !1429
  br label %if.end, !dbg !4176

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !4179

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !4180
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !4180
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !657, metadata !1280), !dbg !4182
  %5 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4183, !tbaa !1276
  %d_qualname2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %5, i32 0, i32 3, !dbg !4184
  %6 = load %struct._object*, %struct._object** %d_qualname2, align 8, !dbg !4184, !tbaa !1429
  store %struct._object* %6, %struct._object** %_py_xincref_tmp, align 8, !dbg !4182, !tbaa !1276
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !4185, !tbaa !1276
  %cmp3 = icmp ne %struct._object* %7, null, !dbg !4187
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !4188

if.then.4:                                        ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !4189, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4191
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4192, !tbaa !1357
  %inc = add i64 %9, 1, !dbg !4192
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4192, !tbaa !1357
  br label %if.end.5, !dbg !4193

if.end.5:                                         ; preds = %if.then.4, %do.body
  %10 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !4194
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !4194
  br label %do.end, !dbg !4197

do.end:                                           ; preds = %if.end.5
  %11 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4198, !tbaa !1276
  %d_qualname6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %11, i32 0, i32 3, !dbg !4199
  %12 = load %struct._object*, %struct._object** %d_qualname6, align 8, !dbg !4199, !tbaa !1429
  ret %struct._object* %12, !dbg !4200
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @method_get_text_signature(%struct.PyMethodDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyMethodDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyMethodDescrObject* %descr, %struct.PyMethodDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMethodDescrObject** %descr.addr, metadata !675, metadata !1280), !dbg !4201
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !676, metadata !1280), !dbg !4202
  %0 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !4203, !tbaa !1276
  %d_method = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %0, i32 0, i32 1, !dbg !4204
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method, align 8, !dbg !4204, !tbaa !1532
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0, !dbg !4205
  %2 = load i8*, i8** %ml_name, align 8, !dbg !4205, !tbaa !2260
  %3 = load %struct.PyMethodDescrObject*, %struct.PyMethodDescrObject** %descr.addr, align 8, !dbg !4206, !tbaa !1276
  %d_method1 = getelementptr inbounds %struct.PyMethodDescrObject, %struct.PyMethodDescrObject* %3, i32 0, i32 1, !dbg !4207
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %d_method1, align 8, !dbg !4207, !tbaa !1532
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3, !dbg !4208
  %5 = load i8*, i8** %ml_doc, align 8, !dbg !4208, !tbaa !4165
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %5), !dbg !4209
  ret %struct._object* %call, !dbg !4210
}

declare %struct._object* @_PyType_GetDocFromInternalDoc(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @calculate_qualname(%struct.PyDescrObject* %descr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyDescrObject*, align 8
  %type_qualname = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !661, metadata !1280), !dbg !4211
  %0 = bitcast %struct._object** %type_qualname to i8*, !dbg !4212
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4212
  call void @llvm.dbg.declare(metadata %struct._object** %type_qualname, metadata !662, metadata !1280), !dbg !4213
  %1 = bitcast %struct._object** %res to i8*, !dbg !4212
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4212
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !663, metadata !1280), !dbg !4214
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4215, !tbaa !1276
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 2, !dbg !4217
  %3 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !4217, !tbaa !1390
  %cmp = icmp eq %struct._object* %3, null, !dbg !4218
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4219

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4220, !tbaa !1276
  %d_name1 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %4, i32 0, i32 2, !dbg !4222
  %5 = load %struct._object*, %struct._object** %d_name1, align 8, !dbg !4222, !tbaa !1390
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !4223
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4223, !tbaa !1365
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !4224
  %7 = load i64, i64* %tp_flags, align 8, !dbg !4224, !tbaa !1726
  %and = and i64 %7, 268435456, !dbg !4225
  %cmp2 = icmp ne i64 %and, 0, !dbg !4226
  br i1 %cmp2, label %if.end, label %if.then, !dbg !4227

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4228, !tbaa !1276
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0)), !dbg !4230
  store %struct._object* null, %struct._object** %retval, !dbg !4231
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4231

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4232, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 1, !dbg !4233
  %10 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !4233, !tbaa !1340
  %11 = bitcast %struct._typeobject* %10 to %struct._object*, !dbg !4234
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %11, %struct._Py_Identifier* @calculate_qualname.PyId___qualname__), !dbg !4235
  store %struct._object* %call, %struct._object** %type_qualname, align 8, !dbg !4236, !tbaa !1276
  %12 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !4237, !tbaa !1276
  %cmp3 = icmp eq %struct._object* %12, null, !dbg !4239
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !4240

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4241
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4241

if.end.5:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !4242, !tbaa !1276
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4243
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !4243, !tbaa !1365
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19, !dbg !4244
  %15 = load i64, i64* %tp_flags7, align 8, !dbg !4244, !tbaa !1726
  %and8 = and i64 %15, 268435456, !dbg !4245
  %cmp9 = icmp ne i64 %and8, 0, !dbg !4246
  br i1 %cmp9, label %if.end.21, label %if.then.10, !dbg !4247

if.then.10:                                       ; preds = %if.end.5
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4248, !tbaa !1276
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i32 0, i32 0)), !dbg !4249
  br label %do.body, !dbg !4250

do.body:                                          ; preds = %if.then.10
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4251
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !4251
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !664, metadata !1280), !dbg !4253
  %18 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !4254, !tbaa !1276
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4253, !tbaa !1276
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4255, !tbaa !1276
  %cmp11 = icmp ne %struct._object* %19, null, !dbg !4256
  br i1 %cmp11, label %if.then.12, label %if.end.18, !dbg !4257

if.then.12:                                       ; preds = %do.body
  br label %do.body.13, !dbg !4258

do.body.13:                                       ; preds = %if.then.12
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4260
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !4260
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !668, metadata !1280), !dbg !4262
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4263, !tbaa !1276
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !4262, !tbaa !1276
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4264, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !4266
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !4267, !tbaa !1357
  %dec = add i64 %23, -1, !dbg !4267
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4267, !tbaa !1357
  %cmp14 = icmp ne i64 %dec, 0, !dbg !4268
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !4269

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17, !dbg !4270

if.else:                                          ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4272, !tbaa !1276
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !4274
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !4274, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !4275
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4275, !tbaa !1367
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4276, !tbaa !1276
  call void %26(%struct._object* %27), !dbg !4277
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4278
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !4278
  br label %do.cond, !dbg !4280

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !4281

do.end:                                           ; preds = %do.cond
  br label %if.end.18, !dbg !4283

if.end.18:                                        ; preds = %do.end, %do.body
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4285
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !4285
  br label %do.cond.19, !dbg !4288

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20, !dbg !4289

do.end.20:                                        ; preds = %do.cond.19
  store %struct._object* null, %struct._object** %retval, !dbg !4291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4291

if.end.21:                                        ; preds = %if.end.5
  %30 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !4292, !tbaa !1276
  %31 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4293, !tbaa !1276
  %d_name22 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %31, i32 0, i32 2, !dbg !4294
  %32 = load %struct._object*, %struct._object** %d_name22, align 8, !dbg !4294, !tbaa !1390
  %call23 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._object* %30, %struct._object* %32), !dbg !4295
  store %struct._object* %call23, %struct._object** %res, align 8, !dbg !4296, !tbaa !1276
  br label %do.body.24, !dbg !4297

do.body.24:                                       ; preds = %if.end.21
  %33 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !4298
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !4298
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !671, metadata !1280), !dbg !4300
  %34 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !4301, !tbaa !1276
  store %struct._object* %34, %struct._object** %_py_decref_tmp25, align 8, !dbg !4300, !tbaa !1276
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !4302, !tbaa !1276
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !4304
  %36 = load i64, i64* %ob_refcnt26, align 8, !dbg !4305, !tbaa !1357
  %dec27 = add i64 %36, -1, !dbg !4305
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !4305, !tbaa !1357
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !4306
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !4307

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !4308

if.else.30:                                       ; preds = %do.body.24
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !4310, !tbaa !1276
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !4312
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !4312, !tbaa !1365
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !4313
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !4313, !tbaa !1367
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !4314, !tbaa !1276
  call void %39(%struct._object* %40), !dbg !4315
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %41 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !4316
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !4316
  br label %do.cond.34, !dbg !4318

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !4319

do.end.35:                                        ; preds = %do.cond.34
  %42 = load %struct._object*, %struct._object** %res, align 8, !dbg !4321, !tbaa !1276
  store %struct._object* %42, %struct._object** %retval, !dbg !4322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4322

cleanup:                                          ; preds = %do.end.35, %do.end.20, %if.then.4, %if.then
  %43 = bitcast %struct._object** %res to i8*, !dbg !4323
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !4323
  %44 = bitcast %struct._object** %type_qualname to i8*, !dbg !4323
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !4323
  %45 = load %struct._object*, %struct._object** %retval, !dbg !4323
  ret %struct._object* %45, !dbg !4323
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
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !688, metadata !1280), !dbg !4324
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !689, metadata !1280), !dbg !4325
  store %struct._object** %pres, %struct._object*** %pres.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object*** %pres.addr, metadata !690, metadata !1280), !dbg !4326
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4327, !tbaa !1276
  %cmp = icmp eq %struct._object* %0, null, !dbg !4329
  br i1 %cmp, label %if.then, label %if.end, !dbg !4330

if.then:                                          ; preds = %entry
  %1 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4331, !tbaa !1276
  %2 = bitcast %struct.PyDescrObject* %1 to %struct._object*, !dbg !4333
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !4334
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !4335, !tbaa !1357
  %inc = add i64 %3, 1, !dbg !4335
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4335, !tbaa !1357
  %4 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4336, !tbaa !1276
  %5 = bitcast %struct.PyDescrObject* %4 to %struct._object*, !dbg !4337
  %6 = load %struct._object**, %struct._object*** %pres.addr, align 8, !dbg !4338, !tbaa !1276
  store %struct._object* %5, %struct._object** %6, align 8, !dbg !4339, !tbaa !1276
  store i32 1, i32* %retval, !dbg !4340
  br label %return, !dbg !4340

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4341, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !4343
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4343, !tbaa !1365
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4344, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %9, i32 0, i32 1, !dbg !4345
  %10 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !4345, !tbaa !1340
  %cmp1 = icmp eq %struct._typeobject* %8, %10, !dbg !4346
  br i1 %cmp1, label %if.end.10, label %lor.lhs.false, !dbg !4347

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4348, !tbaa !1276
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !4350
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !4350, !tbaa !1365
  %13 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4351, !tbaa !1276
  %d_type3 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %13, i32 0, i32 1, !dbg !4352
  %14 = load %struct._typeobject*, %struct._typeobject** %d_type3, align 8, !dbg !4352, !tbaa !1340
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* %14), !dbg !4353
  %tobool = icmp ne i32 %call, 0, !dbg !4353
  br i1 %tobool, label %if.end.10, label %if.then.4, !dbg !4354

if.then.4:                                        ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4355, !tbaa !1276
  %16 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4357, !tbaa !1276
  %call5 = call %struct._object* @descr_name(%struct.PyDescrObject* %16), !dbg !4358
  %17 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4359, !tbaa !1276
  %d_type6 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %17, i32 0, i32 1, !dbg !4360
  %18 = load %struct._typeobject*, %struct._typeobject** %d_type6, align 8, !dbg !4360, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 1, !dbg !4361
  %19 = load i8*, i8** %tp_name, align 8, !dbg !4361, !tbaa !1498
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4362, !tbaa !1276
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !4363
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4363, !tbaa !1365
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 1, !dbg !4364
  %22 = load i8*, i8** %tp_name8, align 8, !dbg !4364, !tbaa !1498
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i32 0, i32 0), %struct._object* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %19, i8* %22), !dbg !4365
  %23 = load %struct._object**, %struct._object*** %pres.addr, align 8, !dbg !4366, !tbaa !1276
  store %struct._object* null, %struct._object** %23, align 8, !dbg !4367, !tbaa !1276
  store i32 1, i32* %retval, !dbg !4368
  br label %return, !dbg !4368

if.end.10:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, !dbg !4369
  br label %return, !dbg !4369

return:                                           ; preds = %if.end.10, %if.then.4, %if.then
  %24 = load i32, i32* %retval, !dbg !4370
  ret i32 %24, !dbg !4370
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @member_get_doc(%struct.PyMemberDescrObject* %descr, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyMemberDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyMemberDescrObject* %descr, %struct.PyMemberDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyMemberDescrObject** %descr.addr, metadata !722, metadata !1280), !dbg !4371
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !723, metadata !1280), !dbg !4372
  %0 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !4373, !tbaa !1276
  %d_member = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %0, i32 0, i32 1, !dbg !4375
  %1 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member, align 8, !dbg !4375, !tbaa !1532
  %doc = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %1, i32 0, i32 4, !dbg !4376
  %2 = load i8*, i8** %doc, align 8, !dbg !4376, !tbaa !4377
  %cmp = icmp eq i8* %2, null, !dbg !4378
  br i1 %cmp, label %if.then, label %if.end, !dbg !4379

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4380, !tbaa !1357
  %inc = add i64 %3, 1, !dbg !4380
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4380, !tbaa !1357
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4382
  br label %return, !dbg !4382

if.end:                                           ; preds = %entry
  %4 = load %struct.PyMemberDescrObject*, %struct.PyMemberDescrObject** %descr.addr, align 8, !dbg !4383, !tbaa !1276
  %d_member1 = getelementptr inbounds %struct.PyMemberDescrObject, %struct.PyMemberDescrObject* %4, i32 0, i32 1, !dbg !4384
  %5 = load %struct.PyMemberDef*, %struct.PyMemberDef** %d_member1, align 8, !dbg !4384, !tbaa !1532
  %doc2 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %5, i32 0, i32 4, !dbg !4385
  %6 = load i8*, i8** %doc2, align 8, !dbg !4385, !tbaa !4377
  %call = call %struct._object* @PyUnicode_FromString(i8* %6), !dbg !4386
  store %struct._object* %call, %struct._object** %retval, !dbg !4387
  br label %return, !dbg !4387

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !4388
  ret %struct._object* %7, !dbg !4388
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
  store %struct.PyDescrObject* %descr, %struct.PyDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyDescrObject** %descr.addr, metadata !745, metadata !1280), !dbg !4389
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !746, metadata !1280), !dbg !4390
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !747, metadata !1280), !dbg !4391
  store i32* %pres, i32** %pres.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i32** %pres.addr, metadata !748, metadata !1280), !dbg !4392
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4393, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4395
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4395, !tbaa !1365
  %2 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4396, !tbaa !1276
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %2, i32 0, i32 1, !dbg !4397
  %3 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !4397, !tbaa !1340
  %cmp = icmp eq %struct._typeobject* %1, %3, !dbg !4398
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !4399

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4400, !tbaa !1276
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !4402
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4402, !tbaa !1365
  %6 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4403, !tbaa !1276
  %d_type2 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %6, i32 0, i32 1, !dbg !4404
  %7 = load %struct._typeobject*, %struct._typeobject** %d_type2, align 8, !dbg !4404, !tbaa !1340
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* %7), !dbg !4405
  %tobool = icmp ne i32 %call, 0, !dbg !4405
  br i1 %tobool, label %if.end, label %if.then, !dbg !4406

if.then:                                          ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4407, !tbaa !1276
  %9 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4409, !tbaa !1276
  %call3 = call %struct._object* @descr_name(%struct.PyDescrObject* %9), !dbg !4410
  %10 = load %struct.PyDescrObject*, %struct.PyDescrObject** %descr.addr, align 8, !dbg !4411, !tbaa !1276
  %d_type4 = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %10, i32 0, i32 1, !dbg !4412
  %11 = load %struct._typeobject*, %struct._typeobject** %d_type4, align 8, !dbg !4412, !tbaa !1340
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1, !dbg !4413
  %12 = load i8*, i8** %tp_name, align 8, !dbg !4413, !tbaa !1498
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !4414, !tbaa !1276
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4415
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !4415, !tbaa !1365
  %tp_name6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1, !dbg !4416
  %15 = load i8*, i8** %tp_name6, align 8, !dbg !4416, !tbaa !1498
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i32 0, i32 0), %struct._object* %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %12, i8* %15), !dbg !4417
  %16 = load i32*, i32** %pres.addr, align 8, !dbg !4418, !tbaa !1276
  store i32 -1, i32* %16, align 4, !dbg !4419, !tbaa !1650
  store i32 1, i32* %retval, !dbg !4420
  br label %return, !dbg !4420

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, !dbg !4421
  br label %return, !dbg !4421

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, !dbg !4422
  ret i32 %17, !dbg !4422
}

declare i32 @PyMember_SetOne(i8*, %struct.PyMemberDef*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @getset_get_doc(%struct.PyGetSetDescrObject* %descr, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.PyGetSetDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyGetSetDescrObject* %descr, %struct.PyGetSetDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyGetSetDescrObject** %descr.addr, metadata !758, metadata !1280), !dbg !4423
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !759, metadata !1280), !dbg !4424
  %0 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !4425, !tbaa !1276
  %d_getset = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %0, i32 0, i32 1, !dbg !4427
  %1 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset, align 8, !dbg !4427, !tbaa !1532
  %doc = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %1, i32 0, i32 3, !dbg !4428
  %2 = load i8*, i8** %doc, align 8, !dbg !4428, !tbaa !4429
  %cmp = icmp eq i8* %2, null, !dbg !4430
  br i1 %cmp, label %if.then, label %if.end, !dbg !4431

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4432, !tbaa !1357
  %inc = add i64 %3, 1, !dbg !4432
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4432, !tbaa !1357
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4434
  br label %return, !dbg !4434

if.end:                                           ; preds = %entry
  %4 = load %struct.PyGetSetDescrObject*, %struct.PyGetSetDescrObject** %descr.addr, align 8, !dbg !4435, !tbaa !1276
  %d_getset1 = getelementptr inbounds %struct.PyGetSetDescrObject, %struct.PyGetSetDescrObject* %4, i32 0, i32 1, !dbg !4436
  %5 = load %struct.PyGetSetDef*, %struct.PyGetSetDef** %d_getset1, align 8, !dbg !4436, !tbaa !1532
  %doc2 = getelementptr inbounds %struct.PyGetSetDef, %struct.PyGetSetDef* %5, i32 0, i32 3, !dbg !4437
  %6 = load i8*, i8** %doc2, align 8, !dbg !4437, !tbaa !4429
  %call = call %struct._object* @PyUnicode_FromString(i8* %6), !dbg !4438
  store %struct._object* %call, %struct._object** %retval, !dbg !4439
  br label %return, !dbg !4439

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !4440
  ret %struct._object* %7, !dbg !4440
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get_doc(%struct.PyWrapperDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr.addr, metadata !804, metadata !1280), !dbg !4441
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !805, metadata !1280), !dbg !4442
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !4443, !tbaa !1276
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i32 0, i32 1, !dbg !4444
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !4444, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i32 0, i32 0, !dbg !4445
  %2 = load i8*, i8** %name, align 8, !dbg !4445, !tbaa !2435
  %3 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !4446, !tbaa !1276
  %d_base1 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %3, i32 0, i32 1, !dbg !4447
  %4 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base1, align 8, !dbg !4447, !tbaa !2449
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %4, i32 0, i32 4, !dbg !4448
  %5 = load i8*, i8** %doc, align 8, !dbg !4448, !tbaa !4449
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %5), !dbg !4450
  ret %struct._object* %call, !dbg !4451
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapperdescr_get_text_signature(%struct.PyWrapperDescrObject* %descr, i8* %closure) #0 {
entry:
  %descr.addr = alloca %struct.PyWrapperDescrObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyWrapperDescrObject* %descr, %struct.PyWrapperDescrObject** %descr.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.PyWrapperDescrObject** %descr.addr, metadata !808, metadata !1280), !dbg !4452
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !809, metadata !1280), !dbg !4453
  %0 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !4454, !tbaa !1276
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %0, i32 0, i32 1, !dbg !4455
  %1 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !4455, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %1, i32 0, i32 0, !dbg !4456
  %2 = load i8*, i8** %name, align 8, !dbg !4456, !tbaa !2435
  %3 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr.addr, align 8, !dbg !4457, !tbaa !1276
  %d_base1 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %3, i32 0, i32 1, !dbg !4458
  %4 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base1, align 8, !dbg !4458, !tbaa !2449
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %4, i32 0, i32 4, !dbg !4459
  %5 = load i8*, i8** %doc, align 8, !dbg !4459, !tbaa !4449
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %5), !dbg !4460
  ret %struct._object* %call, !dbg !4461
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mappingproxy_contains(%struct.mappingproxyobject* %pp, %struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !850, metadata !1280), !dbg !4462
  store %struct._object* %key, %struct._object** %key.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %key.addr, metadata !851, metadata !1280), !dbg !4463
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4464, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4466
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4466, !tbaa !2515
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4467
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4467, !tbaa !1365
  %cmp = icmp eq %struct._typeobject* %2, @PyDict_Type, !dbg !4468
  br i1 %cmp, label %if.then, label %if.else, !dbg !4469

if.then:                                          ; preds = %entry
  %3 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4470, !tbaa !1276
  %mapping1 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %3, i32 0, i32 1, !dbg !4471
  %4 = load %struct._object*, %struct._object** %mapping1, align 8, !dbg !4471, !tbaa !2515
  %5 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !4472, !tbaa !1276
  %call = call i32 @PyDict_Contains(%struct._object* %4, %struct._object* %5), !dbg !4473
  store i32 %call, i32* %retval, !dbg !4474
  br label %return, !dbg !4474

if.else:                                          ; preds = %entry
  %6 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4475, !tbaa !1276
  %mapping2 = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %6, i32 0, i32 1, !dbg !4476
  %7 = load %struct._object*, %struct._object** %mapping2, align 8, !dbg !4476, !tbaa !2515
  %8 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !4477, !tbaa !1276
  %call3 = call i32 @PySequence_Contains(%struct._object* %7, %struct._object* %8), !dbg !4478
  store i32 %call3, i32* %retval, !dbg !4479
  br label %return, !dbg !4479

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, !dbg !4480
  ret i32 %9, !dbg !4480
}

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @mappingproxy_len(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !856, metadata !1280), !dbg !4481
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4482, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4483
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4483, !tbaa !2515
  %call = call i64 @PyObject_Size(%struct._object* %1), !dbg !4484
  ret i64 %call, !dbg !4485
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_getitem(%struct.mappingproxyobject* %pp, %struct._object* %key) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  %key.addr = alloca %struct._object*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !861, metadata !1280), !dbg !4486
  store %struct._object* %key, %struct._object** %key.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %key.addr, metadata !862, metadata !1280), !dbg !4487
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4488, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4489
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4489, !tbaa !2515
  %2 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !4490, !tbaa !1276
  %call = call %struct._object* @PyObject_GetItem(%struct._object* %1, %struct._object* %2), !dbg !4491
  ret %struct._object* %call, !dbg !4492
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
  %cleanup.dest.slot = alloca i32
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !888, metadata !1280), !dbg !4493
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !889, metadata !1280), !dbg !4494
  %0 = bitcast %struct._object** %key to i8*, !dbg !4495
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4495
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !890, metadata !1280), !dbg !4496
  %1 = bitcast %struct._object** %def to i8*, !dbg !4495
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4495
  call void @llvm.dbg.declare(metadata %struct._object** %def, metadata !891, metadata !1280), !dbg !4497
  store %struct._object* @_Py_NoneStruct, %struct._object** %def, align 8, !dbg !4497, !tbaa !1276
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4498, !tbaa !1276
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64 1, i64 2, %struct._object** %key, %struct._object** %def), !dbg !4500
  %tobool = icmp ne i32 %call, 0, !dbg !4500
  br i1 %tobool, label %if.end, label %if.then, !dbg !4501

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4502

if.end:                                           ; preds = %entry
  %3 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4503, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %3, i32 0, i32 1, !dbg !4504
  %4 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4504, !tbaa !2515
  %5 = load %struct._object*, %struct._object** %key, align 8, !dbg !4505, !tbaa !1276
  %6 = load %struct._object*, %struct._object** %def, align 8, !dbg !4506, !tbaa !1276
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %4, %struct._Py_Identifier* @mappingproxy_get.PyId_get, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), %struct._object* %5, %struct._object* %6), !dbg !4507
  store %struct._object* %call1, %struct._object** %retval, !dbg !4508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4508

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %def to i8*, !dbg !4509
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !4509
  %8 = bitcast %struct._object** %key to i8*, !dbg !4509
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !4509
  %9 = load %struct._object*, %struct._object** %retval, !dbg !4509
  ret %struct._object* %9, !dbg !4509
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_keys(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !894, metadata !1280), !dbg !4510
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4511, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4512
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4512, !tbaa !2515
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_keys.PyId_keys, i8* null), !dbg !4513
  ret %struct._object* %call, !dbg !4514
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_values(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !897, metadata !1280), !dbg !4515
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4516, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4517
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4517, !tbaa !2515
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_values.PyId_values, i8* null), !dbg !4518
  ret %struct._object* %call, !dbg !4519
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_items(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !900, metadata !1280), !dbg !4520
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4521, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4522
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4522, !tbaa !2515
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_items.PyId_items, i8* null), !dbg !4523
  ret %struct._object* %call, !dbg !4524
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mappingproxy_copy(%struct.mappingproxyobject* %pp) #0 {
entry:
  %pp.addr = alloca %struct.mappingproxyobject*, align 8
  store %struct.mappingproxyobject* %pp, %struct.mappingproxyobject** %pp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.mappingproxyobject** %pp.addr, metadata !903, metadata !1280), !dbg !4525
  %0 = load %struct.mappingproxyobject*, %struct.mappingproxyobject** %pp.addr, align 8, !dbg !4526, !tbaa !1276
  %mapping = getelementptr inbounds %struct.mappingproxyobject, %struct.mappingproxyobject* %0, i32 0, i32 1, !dbg !4527
  %1 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !4527, !tbaa !2515
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @mappingproxy_copy.PyId_copy, i8* null), !dbg !4528
  ret %struct._object* %call, !dbg !4529
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i32 @PyMapping_Check(%struct._object*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !957, metadata !1280), !dbg !4530
  store i32 %order, i32* %order.addr, align 4, !tbaa !2831
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !958, metadata !1280), !dbg !4531
  %0 = load i8*, i8** %address.addr, align 8, !dbg !4532, !tbaa !1276
  %1 = load i32, i32* %order.addr, align 4, !dbg !4533, !tbaa !2831
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %1, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %.off = add i32 %1, -2
  %SwitchLeaf2 = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf2, label %sw.bb, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp ule i32 %1, 1
  br i1 %SwitchLeaf, label %sw.bb.1, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.1
  br label %sw.epilog, !dbg !4534

sw.bb.1:                                          ; preds = %LeafBlock
  br label %sw.epilog, !dbg !4536

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !4537, !tbaa !2831
  br label %NodeBlock.13

NodeBlock.13:                                     ; preds = %sw.epilog
  %Pivot.14 = icmp slt i32 %2, 2
  br i1 %Pivot.14, label %NodeBlock.6, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %2, 3
  br i1 %Pivot.12, label %sw.bb.3, label %LeafBlock.8

LeafBlock.8:                                      ; preds = %NodeBlock.11
  %.off.9 = add i32 %2, -3
  %SwitchLeaf10 = icmp ule i32 %.off.9, 1
  br i1 %SwitchLeaf10, label %sw.bb.2, label %NewDefault.3

NodeBlock.6:                                      ; preds = %NodeBlock.13
  %Pivot.7 = icmp slt i32 %2, 1
  br i1 %Pivot.7, label %LeafBlock.4, label %sw.bb.2

LeafBlock.4:                                      ; preds = %NodeBlock.6
  %SwitchLeaf5 = icmp eq i32 %2, 0
  br i1 %SwitchLeaf5, label %sw.bb.3, label %NewDefault.3

sw.bb.2:                                          ; preds = %LeafBlock.8, %NodeBlock.6
  br label %sw.epilog.4, !dbg !4538

sw.bb.3:                                          ; preds = %NodeBlock.11, %LeafBlock.4
  br label %sw.epilog.4, !dbg !4540

NewDefault.3:                                     ; preds = %LeafBlock.8, %LeafBlock.4
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %NewDefault.3, %sw.bb.3, %sw.bb.2
  ret void, !dbg !4541
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !2831
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !963, metadata !1280), !dbg !4542
  %0 = load i32, i32* %order.addr, align 4, !dbg !4543, !tbaa !2831
  %cmp = icmp ne i32 %0, 0, !dbg !4545
  br i1 %cmp, label %if.then, label %if.end, !dbg !4546

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4547, !srcloc !4548
  br label %if.end, !dbg !4547

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4549
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !2831
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !966, metadata !1280), !dbg !4550
  %0 = load i32, i32* %order.addr, align 4, !dbg !4551, !tbaa !2831
  %cmp = icmp ne i32 %0, 0, !dbg !4553
  br i1 %cmp, label %if.then, label %if.end, !dbg !4554

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4555, !srcloc !4556
  br label %if.end, !dbg !4555

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4557
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
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !1020, metadata !1280), !dbg !4558
  %0 = bitcast %struct._object** %builtins to i8*, !dbg !4559
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4559
  call void @llvm.dbg.declare(metadata %struct._object** %builtins, metadata !1021, metadata !1280), !dbg !4560
  %1 = bitcast %struct._object** %getattr to i8*, !dbg !4561
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !4561
  call void @llvm.dbg.declare(metadata %struct._object** %getattr, metadata !1022, metadata !1280), !dbg !4562
  %call = call %struct._object* @PyEval_GetBuiltins(), !dbg !4563
  store %struct._object* %call, %struct._object** %builtins, align 8, !dbg !4564, !tbaa !1276
  %2 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !4565, !tbaa !1276
  %call1 = call %struct._object* @_PyDict_GetItemId(%struct._object* %2, %struct._Py_Identifier* @wrapper_reduce.PyId_getattr), !dbg !4566
  store %struct._object* %call1, %struct._object** %getattr, align 8, !dbg !4567, !tbaa !1276
  %3 = load %struct._object*, %struct._object** %getattr, align 8, !dbg !4568, !tbaa !1276
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4569, !tbaa !1276
  %self = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 2, !dbg !4570
  %5 = load %struct._object*, %struct._object** %self, align 8, !dbg !4570, !tbaa !2926
  %6 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4571, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %6, i32 0, i32 1, !dbg !4572
  %7 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !4572, !tbaa !2881
  %8 = bitcast %struct.PyWrapperDescrObject* %7 to %struct.PyDescrObject*, !dbg !4573
  %d_name = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %8, i32 0, i32 2, !dbg !4574
  %9 = load %struct._object*, %struct._object** %d_name, align 8, !dbg !4574, !tbaa !1390
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* %3, %struct._object* %5, %struct._object* %9), !dbg !4575
  %10 = bitcast %struct._object** %getattr to i8*, !dbg !4576
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !4576
  %11 = bitcast %struct._object** %builtins to i8*, !dbg !4576
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !4576
  ret %struct._object* %call2, !dbg !4577
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_objclass(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %c = alloca %struct._object*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !1025, metadata !1280), !dbg !4578
  %0 = bitcast %struct._object** %c to i8*, !dbg !4579
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4579
  call void @llvm.dbg.declare(metadata %struct._object** %c, metadata !1026, metadata !1280), !dbg !4580
  %1 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4581, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %1, i32 0, i32 1, !dbg !4582
  %2 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !4582, !tbaa !2881
  %3 = bitcast %struct.PyWrapperDescrObject* %2 to %struct.PyDescrObject*, !dbg !4583
  %d_type = getelementptr inbounds %struct.PyDescrObject, %struct.PyDescrObject* %3, i32 0, i32 1, !dbg !4584
  %4 = load %struct._typeobject*, %struct._typeobject** %d_type, align 8, !dbg !4584, !tbaa !1340
  %5 = bitcast %struct._typeobject* %4 to %struct._object*, !dbg !4585
  store %struct._object* %5, %struct._object** %c, align 8, !dbg !4580, !tbaa !1276
  %6 = load %struct._object*, %struct._object** %c, align 8, !dbg !4586, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !4587
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !4588, !tbaa !1357
  %inc = add i64 %7, 1, !dbg !4588
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4588, !tbaa !1357
  %8 = load %struct._object*, %struct._object** %c, align 8, !dbg !4589, !tbaa !1276
  %9 = bitcast %struct._object** %c to i8*, !dbg !4590
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !4590
  ret %struct._object* %8, !dbg !4591
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_name(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %s = alloca i8*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !1029, metadata !1280), !dbg !4592
  %0 = bitcast i8** %s to i8*, !dbg !4593
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4593
  call void @llvm.dbg.declare(metadata i8** %s, metadata !1030, metadata !1280), !dbg !4594
  %1 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4595, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %1, i32 0, i32 1, !dbg !4596
  %2 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !4596, !tbaa !2881
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %2, i32 0, i32 1, !dbg !4597
  %3 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !4597, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %3, i32 0, i32 0, !dbg !4598
  %4 = load i8*, i8** %name, align 8, !dbg !4598, !tbaa !2435
  store i8* %4, i8** %s, align 8, !dbg !4594, !tbaa !1276
  %5 = load i8*, i8** %s, align 8, !dbg !4599, !tbaa !1276
  %call = call %struct._object* @PyUnicode_FromString(i8* %5), !dbg !4600
  %6 = bitcast i8** %s to i8*, !dbg !4601
  call void @llvm.lifetime.end(i64 8, i8* %6) #3, !dbg !4601
  ret %struct._object* %call, !dbg !4602
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_qualname(%struct.wrapperobject* %wp) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !1033, metadata !1280), !dbg !4603
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4604, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1, !dbg !4605
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !4605, !tbaa !2881
  %2 = bitcast %struct.PyWrapperDescrObject* %1 to %struct.PyDescrObject*, !dbg !4606
  %call = call %struct._object* @descr_get_qualname(%struct.PyDescrObject* %2), !dbg !4607
  ret %struct._object* %call, !dbg !4608
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_doc(%struct.wrapperobject* %wp, i8* %closure) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !1038, metadata !1280), !dbg !4609
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !1039, metadata !1280), !dbg !4610
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4611, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1, !dbg !4612
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !4612, !tbaa !2881
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1, !dbg !4613
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !4613, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0, !dbg !4614
  %3 = load i8*, i8** %name, align 8, !dbg !4614, !tbaa !2435
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4615, !tbaa !1276
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 1, !dbg !4616
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr1, align 8, !dbg !4616, !tbaa !2881
  %d_base2 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %5, i32 0, i32 1, !dbg !4617
  %6 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base2, align 8, !dbg !4617, !tbaa !2449
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %6, i32 0, i32 4, !dbg !4618
  %7 = load i8*, i8** %doc, align 8, !dbg !4618, !tbaa !4449
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %3, i8* %7), !dbg !4619
  ret %struct._object* %call, !dbg !4620
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @wrapper_text_signature(%struct.wrapperobject* %wp, i8* %closure) #0 {
entry:
  %wp.addr = alloca %struct.wrapperobject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.wrapperobject* %wp, %struct.wrapperobject** %wp.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.wrapperobject** %wp.addr, metadata !1042, metadata !1280), !dbg !4621
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !1043, metadata !1280), !dbg !4622
  %0 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4623, !tbaa !1276
  %descr = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %0, i32 0, i32 1, !dbg !4624
  %1 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr, align 8, !dbg !4624, !tbaa !2881
  %d_base = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %1, i32 0, i32 1, !dbg !4625
  %2 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base, align 8, !dbg !4625, !tbaa !2449
  %name = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %2, i32 0, i32 0, !dbg !4626
  %3 = load i8*, i8** %name, align 8, !dbg !4626, !tbaa !2435
  %4 = load %struct.wrapperobject*, %struct.wrapperobject** %wp.addr, align 8, !dbg !4627, !tbaa !1276
  %descr1 = getelementptr inbounds %struct.wrapperobject, %struct.wrapperobject* %4, i32 0, i32 1, !dbg !4628
  %5 = load %struct.PyWrapperDescrObject*, %struct.PyWrapperDescrObject** %descr1, align 8, !dbg !4628, !tbaa !2881
  %d_base2 = getelementptr inbounds %struct.PyWrapperDescrObject, %struct.PyWrapperDescrObject* %5, i32 0, i32 1, !dbg !4629
  %6 = load %struct.wrapperbase*, %struct.wrapperbase** %d_base2, align 8, !dbg !4629, !tbaa !2449
  %doc = getelementptr inbounds %struct.wrapperbase, %struct.wrapperbase* %6, i32 0, i32 4, !dbg !4630
  %7 = load i8*, i8** %doc, align 8, !dbg !4630, !tbaa !4449
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %3, i8* %7), !dbg !4631
  ret %struct._object* %call, !dbg !4632
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_getter(%struct._object* %self, %struct._object* %getter) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %getter.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1094, metadata !1280), !dbg !4633
  store %struct._object* %getter, %struct._object** %getter.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %getter.addr, metadata !1095, metadata !1280), !dbg !4634
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !4635, !tbaa !1276
  %1 = load %struct._object*, %struct._object** %getter.addr, align 8, !dbg !4636, !tbaa !1276
  %call = call %struct._object* @property_copy(%struct._object* %0, %struct._object* %1, %struct._object* null, %struct._object* null), !dbg !4637
  ret %struct._object* %call, !dbg !4638
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_setter(%struct._object* %self, %struct._object* %setter) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %setter.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1133, metadata !1280), !dbg !4639
  store %struct._object* %setter, %struct._object** %setter.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %setter.addr, metadata !1134, metadata !1280), !dbg !4640
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !4641, !tbaa !1276
  %1 = load %struct._object*, %struct._object** %setter.addr, align 8, !dbg !4642, !tbaa !1276
  %call = call %struct._object* @property_copy(%struct._object* %0, %struct._object* null, %struct._object* %1, %struct._object* null), !dbg !4643
  ret %struct._object* %call, !dbg !4644
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @property_deleter(%struct._object* %self, %struct._object* %deleter) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %deleter.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !1137, metadata !1280), !dbg !4645
  store %struct._object* %deleter, %struct._object** %deleter.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %deleter.addr, metadata !1138, metadata !1280), !dbg !4646
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !4647, !tbaa !1276
  %1 = load %struct._object*, %struct._object** %deleter.addr, align 8, !dbg !4648, !tbaa !1276
  %call = call %struct._object* @property_copy(%struct._object* %0, %struct._object* null, %struct._object* null, %struct._object* %1), !dbg !4649
  ret %struct._object* %call, !dbg !4650
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_xdecref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  store %struct._object* %old, %struct._object** %old.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %old.addr, metadata !1100, metadata !1280), !dbg !4651
  store %struct._object* %get, %struct._object** %get.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %get.addr, metadata !1101, metadata !1280), !dbg !4652
  store %struct._object* %set, %struct._object** %set.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %set.addr, metadata !1102, metadata !1280), !dbg !4653
  store %struct._object* %del, %struct._object** %del.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct._object** %del.addr, metadata !1103, metadata !1280), !dbg !4654
  %0 = bitcast %struct.propertyobject** %pold to i8*, !dbg !4655
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !4655
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %pold, metadata !1104, metadata !1280), !dbg !4656
  %1 = load %struct._object*, %struct._object** %old.addr, align 8, !dbg !4657, !tbaa !1276
  %2 = bitcast %struct._object* %1 to %struct.propertyobject*, !dbg !4658
  store %struct.propertyobject* %2, %struct.propertyobject** %pold, align 8, !dbg !4656, !tbaa !1276
  %3 = bitcast %struct._object** %new to i8*, !dbg !4659
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !4659
  call void @llvm.dbg.declare(metadata %struct._object** %new, metadata !1105, metadata !1280), !dbg !4660
  %4 = bitcast %struct._object** %type to i8*, !dbg !4659
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !4659
  call void @llvm.dbg.declare(metadata %struct._object** %type, metadata !1106, metadata !1280), !dbg !4661
  %5 = bitcast %struct._object** %doc to i8*, !dbg !4659
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !4659
  call void @llvm.dbg.declare(metadata %struct._object** %doc, metadata !1107, metadata !1280), !dbg !4662
  %6 = load %struct._object*, %struct._object** %old.addr, align 8, !dbg !4663, !tbaa !1276
  %call = call %struct._object* @PyObject_Type(%struct._object* %6), !dbg !4664
  store %struct._object* %call, %struct._object** %type, align 8, !dbg !4665, !tbaa !1276
  %7 = load %struct._object*, %struct._object** %type, align 8, !dbg !4666, !tbaa !1276
  %cmp = icmp eq %struct._object* %7, null, !dbg !4668
  br i1 %cmp, label %if.then, label %if.end, !dbg !4669

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4670

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %get.addr, align 8, !dbg !4671, !tbaa !1276
  %cmp1 = icmp eq %struct._object* %8, null, !dbg !4672
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !4673

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %get.addr, align 8, !dbg !4674, !tbaa !1276
  %cmp2 = icmp eq %struct._object* %9, @_Py_NoneStruct, !dbg !4676
  br i1 %cmp2, label %if.then.3, label %if.end.14, !dbg !4677

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !4678

do.body:                                          ; preds = %if.then.3
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4679
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !4679
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1108, metadata !1280), !dbg !4681
  %11 = load %struct._object*, %struct._object** %get.addr, align 8, !dbg !4682, !tbaa !1276
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4681, !tbaa !1276
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4683, !tbaa !1276
  %cmp4 = icmp ne %struct._object* %12, null, !dbg !4684
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !4685

if.then.5:                                        ; preds = %do.body
  br label %do.body.6, !dbg !4686

do.body.6:                                        ; preds = %if.then.5
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4688
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !4688
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1112, metadata !1280), !dbg !4690
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4691, !tbaa !1276
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !4690, !tbaa !1276
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4692, !tbaa !1276
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !4694
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !4695, !tbaa !1357
  %dec = add i64 %16, -1, !dbg !4695
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4695, !tbaa !1357
  %cmp7 = icmp ne i64 %dec, 0, !dbg !4696
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !4697

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9, !dbg !4698

if.else:                                          ; preds = %do.body.6
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4700, !tbaa !1276
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !4702
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4702, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !4703
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4703, !tbaa !1367
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4704, !tbaa !1276
  call void %19(%struct._object* %20), !dbg !4705
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4706
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !4706
  br label %do.cond, !dbg !4708

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !4709

do.end:                                           ; preds = %do.cond
  br label %if.end.10, !dbg !4711

if.end.10:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4713
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !4713
  br label %do.cond.11, !dbg !4716

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12, !dbg !4717

do.end.12:                                        ; preds = %do.cond.11
  %23 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4719, !tbaa !1276
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %23, i32 0, i32 1, !dbg !4720
  %24 = load %struct._object*, %struct._object** %prop_get, align 8, !dbg !4720, !tbaa !3429
  %tobool = icmp ne %struct._object* %24, null, !dbg !4719
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4719

cond.true:                                        ; preds = %do.end.12
  %25 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4721, !tbaa !1276
  %prop_get13 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %25, i32 0, i32 1, !dbg !4723
  %26 = load %struct._object*, %struct._object** %prop_get13, align 8, !dbg !4723, !tbaa !3429
  br label %cond.end, !dbg !4719

cond.false:                                       ; preds = %do.end.12
  br label %cond.end, !dbg !4724

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %26, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4719
  store %struct._object* %cond, %struct._object** %get.addr, align 8, !dbg !4726, !tbaa !1276
  br label %if.end.14, !dbg !4728

if.end.14:                                        ; preds = %cond.end, %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %set.addr, align 8, !dbg !4729, !tbaa !1276
  %cmp15 = icmp eq %struct._object* %27, null, !dbg !4730
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16, !dbg !4731

lor.lhs.false.16:                                 ; preds = %if.end.14
  %28 = load %struct._object*, %struct._object** %set.addr, align 8, !dbg !4732, !tbaa !1276
  %cmp17 = icmp eq %struct._object* %28, @_Py_NoneStruct, !dbg !4734
  br i1 %cmp17, label %if.then.18, label %if.end.44, !dbg !4735

if.then.18:                                       ; preds = %lor.lhs.false.16, %if.end.14
  br label %do.body.19, !dbg !4736

do.body.19:                                       ; preds = %if.then.18
  %29 = bitcast %struct._object** %_py_xdecref_tmp20 to i8*, !dbg !4737
  call void @llvm.lifetime.start(i64 8, i8* %29) #3, !dbg !4737
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp20, metadata !1115, metadata !1280), !dbg !4739
  %30 = load %struct._object*, %struct._object** %set.addr, align 8, !dbg !4740, !tbaa !1276
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp20, align 8, !dbg !4739, !tbaa !1276
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp20, align 8, !dbg !4741, !tbaa !1276
  %cmp21 = icmp ne %struct._object* %31, null, !dbg !4742
  br i1 %cmp21, label %if.then.22, label %if.end.35, !dbg !4743

if.then.22:                                       ; preds = %do.body.19
  br label %do.body.23, !dbg !4744

do.body.23:                                       ; preds = %if.then.22
  %32 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !4746
  call void @llvm.lifetime.start(i64 8, i8* %32) #3, !dbg !4746
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !1119, metadata !1280), !dbg !4748
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp20, align 8, !dbg !4749, !tbaa !1276
  store %struct._object* %33, %struct._object** %_py_decref_tmp24, align 8, !dbg !4748, !tbaa !1276
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !4750, !tbaa !1276
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !4752
  %35 = load i64, i64* %ob_refcnt25, align 8, !dbg !4753, !tbaa !1357
  %dec26 = add i64 %35, -1, !dbg !4753
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !4753, !tbaa !1357
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !4754
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !4755

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !4756

if.else.29:                                       ; preds = %do.body.23
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !4758, !tbaa !1276
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !4760
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !4760, !tbaa !1365
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !4761
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !4761, !tbaa !1367
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !4762, !tbaa !1276
  call void %38(%struct._object* %39), !dbg !4763
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %40 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !4764
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !4764
  br label %do.cond.33, !dbg !4766

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !4767

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35, !dbg !4769

if.end.35:                                        ; preds = %do.end.34, %do.body.19
  %41 = bitcast %struct._object** %_py_xdecref_tmp20 to i8*, !dbg !4771
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !4771
  br label %do.cond.36, !dbg !4774

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !4775

do.end.37:                                        ; preds = %do.cond.36
  %42 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4777, !tbaa !1276
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %42, i32 0, i32 2, !dbg !4778
  %43 = load %struct._object*, %struct._object** %prop_set, align 8, !dbg !4778, !tbaa !3473
  %tobool38 = icmp ne %struct._object* %43, null, !dbg !4777
  br i1 %tobool38, label %cond.true.39, label %cond.false.41, !dbg !4777

cond.true.39:                                     ; preds = %do.end.37
  %44 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4779, !tbaa !1276
  %prop_set40 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %44, i32 0, i32 2, !dbg !4781
  %45 = load %struct._object*, %struct._object** %prop_set40, align 8, !dbg !4781, !tbaa !3473
  br label %cond.end.42, !dbg !4777

cond.false.41:                                    ; preds = %do.end.37
  br label %cond.end.42, !dbg !4782

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi %struct._object* [ %45, %cond.true.39 ], [ @_Py_NoneStruct, %cond.false.41 ], !dbg !4777
  store %struct._object* %cond43, %struct._object** %set.addr, align 8, !dbg !4784, !tbaa !1276
  br label %if.end.44, !dbg !4786

if.end.44:                                        ; preds = %cond.end.42, %lor.lhs.false.16
  %46 = load %struct._object*, %struct._object** %del.addr, align 8, !dbg !4787, !tbaa !1276
  %cmp45 = icmp eq %struct._object* %46, null, !dbg !4788
  br i1 %cmp45, label %if.then.48, label %lor.lhs.false.46, !dbg !4789

lor.lhs.false.46:                                 ; preds = %if.end.44
  %47 = load %struct._object*, %struct._object** %del.addr, align 8, !dbg !4790, !tbaa !1276
  %cmp47 = icmp eq %struct._object* %47, @_Py_NoneStruct, !dbg !4792
  br i1 %cmp47, label %if.then.48, label %if.end.74, !dbg !4793

if.then.48:                                       ; preds = %lor.lhs.false.46, %if.end.44
  br label %do.body.49, !dbg !4794

do.body.49:                                       ; preds = %if.then.48
  %48 = bitcast %struct._object** %_py_xdecref_tmp50 to i8*, !dbg !4795
  call void @llvm.lifetime.start(i64 8, i8* %48) #3, !dbg !4795
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp50, metadata !1122, metadata !1280), !dbg !4797
  %49 = load %struct._object*, %struct._object** %del.addr, align 8, !dbg !4798, !tbaa !1276
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp50, align 8, !dbg !4797, !tbaa !1276
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8, !dbg !4799, !tbaa !1276
  %cmp51 = icmp ne %struct._object* %50, null, !dbg !4800
  br i1 %cmp51, label %if.then.52, label %if.end.65, !dbg !4801

if.then.52:                                       ; preds = %do.body.49
  br label %do.body.53, !dbg !4802

do.body.53:                                       ; preds = %if.then.52
  %51 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !4804
  call void @llvm.lifetime.start(i64 8, i8* %51) #3, !dbg !4804
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !1126, metadata !1280), !dbg !4806
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8, !dbg !4807, !tbaa !1276
  store %struct._object* %52, %struct._object** %_py_decref_tmp54, align 8, !dbg !4806, !tbaa !1276
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !4808, !tbaa !1276
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !4810
  %54 = load i64, i64* %ob_refcnt55, align 8, !dbg !4811, !tbaa !1357
  %dec56 = add i64 %54, -1, !dbg !4811
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !4811, !tbaa !1357
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !4812
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !4813

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !4814

if.else.59:                                       ; preds = %do.body.53
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !4816, !tbaa !1276
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !4818
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !4818, !tbaa !1365
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !4819
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !4819, !tbaa !1367
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !4820, !tbaa !1276
  call void %57(%struct._object* %58), !dbg !4821
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %59 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !4822
  br label %do.cond.63, !dbg !4824

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !4825

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65, !dbg !4827

if.end.65:                                        ; preds = %do.end.64, %do.body.49
  %60 = bitcast %struct._object** %_py_xdecref_tmp50 to i8*, !dbg !4829
  call void @llvm.lifetime.end(i64 8, i8* %60) #3, !dbg !4829
  br label %do.cond.66, !dbg !4832

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !4833

do.end.67:                                        ; preds = %do.cond.66
  %61 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4835, !tbaa !1276
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %61, i32 0, i32 3, !dbg !4836
  %62 = load %struct._object*, %struct._object** %prop_del, align 8, !dbg !4836, !tbaa !3514
  %tobool68 = icmp ne %struct._object* %62, null, !dbg !4835
  br i1 %tobool68, label %cond.true.69, label %cond.false.71, !dbg !4835

cond.true.69:                                     ; preds = %do.end.67
  %63 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4837, !tbaa !1276
  %prop_del70 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %63, i32 0, i32 3, !dbg !4839
  %64 = load %struct._object*, %struct._object** %prop_del70, align 8, !dbg !4839, !tbaa !3514
  br label %cond.end.72, !dbg !4835

cond.false.71:                                    ; preds = %do.end.67
  br label %cond.end.72, !dbg !4840

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.69
  %cond73 = phi %struct._object* [ %64, %cond.true.69 ], [ @_Py_NoneStruct, %cond.false.71 ], !dbg !4835
  store %struct._object* %cond73, %struct._object** %del.addr, align 8, !dbg !4842, !tbaa !1276
  br label %if.end.74, !dbg !4844

if.end.74:                                        ; preds = %cond.end.72, %lor.lhs.false.46
  %65 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4845, !tbaa !1276
  %getter_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %65, i32 0, i32 5, !dbg !4847
  %66 = load i32, i32* %getter_doc, align 4, !dbg !4847, !tbaa !3966
  %tobool75 = icmp ne i32 %66, 0, !dbg !4845
  br i1 %tobool75, label %land.lhs.true, label %if.else.78, !dbg !4848

land.lhs.true:                                    ; preds = %if.end.74
  %67 = load %struct._object*, %struct._object** %get.addr, align 8, !dbg !4849, !tbaa !1276
  %cmp76 = icmp ne %struct._object* %67, @_Py_NoneStruct, !dbg !4851
  br i1 %cmp76, label %if.then.77, label %if.else.78, !dbg !4852

if.then.77:                                       ; preds = %land.lhs.true
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8, !dbg !4853, !tbaa !1276
  br label %if.end.85, !dbg !4855

if.else.78:                                       ; preds = %land.lhs.true, %if.end.74
  %68 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4856, !tbaa !1276
  %prop_doc = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %68, i32 0, i32 4, !dbg !4858
  %69 = load %struct._object*, %struct._object** %prop_doc, align 8, !dbg !4858, !tbaa !3555
  %tobool79 = icmp ne %struct._object* %69, null, !dbg !4856
  br i1 %tobool79, label %cond.true.80, label %cond.false.82, !dbg !4856

cond.true.80:                                     ; preds = %if.else.78
  %70 = load %struct.propertyobject*, %struct.propertyobject** %pold, align 8, !dbg !4859, !tbaa !1276
  %prop_doc81 = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %70, i32 0, i32 4, !dbg !4861
  %71 = load %struct._object*, %struct._object** %prop_doc81, align 8, !dbg !4861, !tbaa !3555
  br label %cond.end.83, !dbg !4856

cond.false.82:                                    ; preds = %if.else.78
  br label %cond.end.83, !dbg !4862

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.80
  %cond84 = phi %struct._object* [ %71, %cond.true.80 ], [ @_Py_NoneStruct, %cond.false.82 ], !dbg !4856
  store %struct._object* %cond84, %struct._object** %doc, align 8, !dbg !4864, !tbaa !1276
  br label %if.end.85

if.end.85:                                        ; preds = %cond.end.83, %if.then.77
  %72 = load %struct._object*, %struct._object** %type, align 8, !dbg !4867, !tbaa !1276
  %73 = load %struct._object*, %struct._object** %get.addr, align 8, !dbg !4868, !tbaa !1276
  %74 = load %struct._object*, %struct._object** %set.addr, align 8, !dbg !4869, !tbaa !1276
  %75 = load %struct._object*, %struct._object** %del.addr, align 8, !dbg !4870, !tbaa !1276
  %76 = load %struct._object*, %struct._object** %doc, align 8, !dbg !4871, !tbaa !1276
  %call86 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), %struct._object* %73, %struct._object* %74, %struct._object* %75, %struct._object* %76), !dbg !4872
  store %struct._object* %call86, %struct._object** %new, align 8, !dbg !4873, !tbaa !1276
  br label %do.body.87, !dbg !4874

do.body.87:                                       ; preds = %if.end.85
  %77 = bitcast %struct._object** %_py_decref_tmp88 to i8*, !dbg !4875
  call void @llvm.lifetime.start(i64 8, i8* %77) #3, !dbg !4875
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp88, metadata !1129, metadata !1280), !dbg !4877
  %78 = load %struct._object*, %struct._object** %type, align 8, !dbg !4878, !tbaa !1276
  store %struct._object* %78, %struct._object** %_py_decref_tmp88, align 8, !dbg !4877, !tbaa !1276
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8, !dbg !4879, !tbaa !1276
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !4881
  %80 = load i64, i64* %ob_refcnt89, align 8, !dbg !4882, !tbaa !1357
  %dec90 = add i64 %80, -1, !dbg !4882
  store i64 %dec90, i64* %ob_refcnt89, align 8, !dbg !4882, !tbaa !1357
  %cmp91 = icmp ne i64 %dec90, 0, !dbg !4883
  br i1 %cmp91, label %if.then.92, label %if.else.93, !dbg !4884

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.96, !dbg !4885

if.else.93:                                       ; preds = %do.body.87
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8, !dbg !4887, !tbaa !1276
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !4889
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8, !dbg !4889, !tbaa !1365
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !4890
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8, !dbg !4890, !tbaa !1367
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8, !dbg !4891, !tbaa !1276
  call void %83(%struct._object* %84), !dbg !4892
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  %85 = bitcast %struct._object** %_py_decref_tmp88 to i8*, !dbg !4893
  call void @llvm.lifetime.end(i64 8, i8* %85) #3, !dbg !4893
  br label %do.cond.97, !dbg !4895

do.cond.97:                                       ; preds = %if.end.96
  br label %do.end.98, !dbg !4896

do.end.98:                                        ; preds = %do.cond.97
  %86 = load %struct._object*, %struct._object** %new, align 8, !dbg !4898, !tbaa !1276
  %cmp99 = icmp eq %struct._object* %86, null, !dbg !4900
  br i1 %cmp99, label %if.then.100, label %if.end.101, !dbg !4901

if.then.100:                                      ; preds = %do.end.98
  store %struct._object* null, %struct._object** %retval, !dbg !4902
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4902

if.end.101:                                       ; preds = %do.end.98
  %87 = load %struct._object*, %struct._object** %new, align 8, !dbg !4903, !tbaa !1276
  store %struct._object* %87, %struct._object** %retval, !dbg !4904
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4904

cleanup:                                          ; preds = %if.end.101, %if.then.100, %if.then
  %88 = bitcast %struct._object** %doc to i8*, !dbg !4905
  call void @llvm.lifetime.end(i64 8, i8* %88) #3, !dbg !4905
  %89 = bitcast %struct._object** %type to i8*, !dbg !4905
  call void @llvm.lifetime.end(i64 8, i8* %89) #3, !dbg !4905
  %90 = bitcast %struct._object** %new to i8*, !dbg !4905
  call void @llvm.lifetime.end(i64 8, i8* %90) #3, !dbg !4905
  %91 = bitcast %struct.propertyobject** %pold to i8*, !dbg !4905
  call void @llvm.lifetime.end(i64 8, i8* %91) #3, !dbg !4905
  %92 = load %struct._object*, %struct._object** %retval, !dbg !4905
  ret %struct._object* %92, !dbg !4905
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
  %cleanup.dest.slot = alloca i32
  store %struct.propertyobject* %prop, %struct.propertyobject** %prop.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata %struct.propertyobject** %prop.addr, metadata !1143, metadata !1280), !dbg !4906
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1276
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !1144, metadata !1280), !dbg !4907
  %0 = bitcast i32* %res to i8*, !dbg !4908
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !4908
  call void @llvm.dbg.declare(metadata i32* %res, metadata !1145, metadata !1280), !dbg !4909
  %1 = load %struct.propertyobject*, %struct.propertyobject** %prop.addr, align 8, !dbg !4910, !tbaa !1276
  %prop_get = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %1, i32 0, i32 1, !dbg !4911
  %2 = load %struct._object*, %struct._object** %prop_get, align 8, !dbg !4911, !tbaa !3429
  %call = call i32 @_PyObject_IsAbstract(%struct._object* %2), !dbg !4912
  store i32 %call, i32* %res, align 4, !dbg !4909, !tbaa !1650
  %3 = load i32, i32* %res, align 4, !dbg !4913, !tbaa !1650
  %cmp = icmp eq i32 %3, -1, !dbg !4915
  br i1 %cmp, label %if.then, label %if.else, !dbg !4916

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4917
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4917

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %res, align 4, !dbg !4919, !tbaa !1650
  %tobool = icmp ne i32 %4, 0, !dbg !4919
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !4921

if.then.1:                                        ; preds = %if.else
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4922, !tbaa !1357
  %inc = add i64 %5, 1, !dbg !4922
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4922, !tbaa !1357
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4924

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %6 = load %struct.propertyobject*, %struct.propertyobject** %prop.addr, align 8, !dbg !4925, !tbaa !1276
  %prop_set = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %6, i32 0, i32 2, !dbg !4926
  %7 = load %struct._object*, %struct._object** %prop_set, align 8, !dbg !4926, !tbaa !3473
  %call3 = call i32 @_PyObject_IsAbstract(%struct._object* %7), !dbg !4927
  store i32 %call3, i32* %res, align 4, !dbg !4928, !tbaa !1650
  %8 = load i32, i32* %res, align 4, !dbg !4929, !tbaa !1650
  %cmp4 = icmp eq i32 %8, -1, !dbg !4931
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !4932

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval, !dbg !4933
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4933

if.else.6:                                        ; preds = %if.end.2
  %9 = load i32, i32* %res, align 4, !dbg !4935, !tbaa !1650
  %tobool7 = icmp ne i32 %9, 0, !dbg !4935
  br i1 %tobool7, label %if.then.8, label %if.end.10, !dbg !4937

if.then.8:                                        ; preds = %if.else.6
  %10 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4938, !tbaa !1357
  %inc9 = add i64 %10, 1, !dbg !4938
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4938, !tbaa !1357
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4940
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4940

if.end.10:                                        ; preds = %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10
  %11 = load %struct.propertyobject*, %struct.propertyobject** %prop.addr, align 8, !dbg !4941, !tbaa !1276
  %prop_del = getelementptr inbounds %struct.propertyobject, %struct.propertyobject* %11, i32 0, i32 3, !dbg !4942
  %12 = load %struct._object*, %struct._object** %prop_del, align 8, !dbg !4942, !tbaa !3514
  %call12 = call i32 @_PyObject_IsAbstract(%struct._object* %12), !dbg !4943
  store i32 %call12, i32* %res, align 4, !dbg !4944, !tbaa !1650
  %13 = load i32, i32* %res, align 4, !dbg !4945, !tbaa !1650
  %cmp13 = icmp eq i32 %13, -1, !dbg !4947
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !4948

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !4949
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4949

if.else.15:                                       ; preds = %if.end.11
  %14 = load i32, i32* %res, align 4, !dbg !4951, !tbaa !1650
  %tobool16 = icmp ne i32 %14, 0, !dbg !4951
  br i1 %tobool16, label %if.then.17, label %if.end.19, !dbg !4953

if.then.17:                                       ; preds = %if.else.15
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4954, !tbaa !1357
  %inc18 = add i64 %15, 1, !dbg !4954
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4954, !tbaa !1357
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4956

if.end.19:                                        ; preds = %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  %16 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4957, !tbaa !1357
  %inc21 = add i64 %16, 1, !dbg !4957
  store i64 %inc21, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4957, !tbaa !1357
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4958
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4958

cleanup:                                          ; preds = %if.end.20, %if.then.17, %if.then.14, %if.then.8, %if.then.5, %if.then.1, %if.then
  %17 = bitcast i32* %res to i8*, !dbg !4959
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !4959
  %18 = load %struct._object*, %struct._object** %retval, !dbg !4959
  ret %struct._object* %18, !dbg !4959
}

declare i32 @_PyObject_IsAbstract(%struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1273, !1274}
!llvm.ident = !{!1275}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !520, globals: !1196)
!1 = !DIFile(filename: "descrobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !107, !55, !375, !381, !389, !410, !417, !112, !431, !438, !439, !440, !368, !69, !448, !506, !510}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDescrObject", file: !14, line: 56, baseType: !15)
!14 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 53, size: 384, align: 64, elements: !16)
!16 = !{!17, !372}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "d_common", scope: !15, file: !14, line: 54, baseType: !18, size: 320, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDescrObject", file: !14, line: 46, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 41, size: 320, align: 64, elements: !20)
!20 = !{!21, !367, !370, !371}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !14, line: 42, baseType: !22, size: 128, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !23, line: 109, baseType: !24)
!23 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !23, line: 105, size: 128, align: 64, elements: !25)
!25 = !{!26, !34}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !24, file: !23, line: 107, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !28, line: 177, baseType: !29)
!28 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 102, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !32, line: 181, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!113 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!299 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!300 = !{!301, !302, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !298, file: !299, line: 41, baseType: !45, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !298, file: !299, line: 42, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !299, line: 18, baseType: !143)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !298, file: !299, line: 43, baseType: !61, size: 32, align: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !298, file: !299, line: 45, baseType: !45, size: 64, align: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !36, file: !23, line: 390, baseType: !307, size: 64, align: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !309, line: 18, size: 320, align: 64, elements: !310)
!309 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mappingproxyobject", file: !412, line: 771, baseType: !413)
!412 = !DIFile(filename: "Objects/descrobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!413 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 768, size: 192, align: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !413, file: !412, line: 769, baseType: !22, size: 128, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !413, file: !412, line: 770, baseType: !55, size: 64, align: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !419, line: 253, baseType: !420)
!419 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!420 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !419, line: 246, size: 192, align: 64, elements: !421)
!421 = !{!422, !429}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !420, file: !419, line: 251, baseType: !423, size: 192, align: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !419, line: 247, size: 192, align: 64, elements: !424)
!424 = !{!425, !427, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !423, file: !419, line: 248, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !423, file: !419, line: 249, baseType: !426, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !423, file: !419, line: 250, baseType: !27, size: 64, align: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !420, file: !419, line: 252, baseType: !430, size: 64, align: 64)
!430 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "wrapperobject", file: !412, line: 1016, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 1012, size: 256, align: 64, elements: !434)
!434 = !{!435, !436, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !433, file: !412, line: 1013, baseType: !22, size: 128, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descr", scope: !433, file: !412, line: 1014, baseType: !389, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !433, file: !412, line: 1015, baseType: !55, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !442, line: 33, baseType: !443)
!442 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!443 = !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 25, size: 256, align: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !443, file: !442, line: 26, baseType: !39, size: 192, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !443, file: !442, line: 27, baseType: !447, size: 64, align: 64, offset: 192)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 64, elements: !99)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !450, line: 139, baseType: !451)
!450 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !450, line: 69, size: 1536, align: 64, elements: !452)
!452 = !{!453, !455, !456, !476, !479, !480, !481, !482, !483, !484, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !451, file: !450, line: 72, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !450, line: 73, baseType: !454, size: 64, align: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !451, file: !450, line: 74, baseType: !457, size: 64, align: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !450, line: 44, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !450, line: 19, size: 832, align: 64, elements: !460)
!460 = !{!461, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !450, line: 21, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !459, file: !450, line: 22, baseType: !454, size: 64, align: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !459, file: !450, line: 24, baseType: !55, size: 64, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !459, file: !450, line: 25, baseType: !55, size: 64, align: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !459, file: !450, line: 26, baseType: !55, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !459, file: !450, line: 27, baseType: !55, size: 64, align: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !459, file: !450, line: 28, baseType: !55, size: 64, align: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !459, file: !450, line: 30, baseType: !55, size: 64, align: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !459, file: !450, line: 31, baseType: !55, size: 64, align: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !459, file: !450, line: 32, baseType: !55, size: 64, align: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !459, file: !450, line: 33, baseType: !61, size: 32, align: 32, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !459, file: !450, line: 34, baseType: !61, size: 32, align: 32, offset: 672)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !459, file: !450, line: 37, baseType: !61, size: 32, align: 32, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !459, file: !450, line: 43, baseType: !55, size: 64, align: 64, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !451, file: !450, line: 76, baseType: !477, size: 64, align: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !450, line: 50, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !451, file: !450, line: 77, baseType: !61, size: 32, align: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !451, file: !450, line: 78, baseType: !47, size: 8, align: 8, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !451, file: !450, line: 80, baseType: !47, size: 8, align: 8, offset: 296)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !451, file: !450, line: 85, baseType: !61, size: 32, align: 32, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !451, file: !450, line: 86, baseType: !61, size: 32, align: 32, offset: 352)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !451, file: !450, line: 88, baseType: !485, size: 64, align: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !450, line: 54, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!61, !55, !477, !61, !55}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !451, file: !450, line: 89, baseType: !485, size: 64, align: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !451, file: !450, line: 90, baseType: !55, size: 64, align: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !451, file: !450, line: 91, baseType: !55, size: 64, align: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !451, file: !450, line: 93, baseType: !55, size: 64, align: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !451, file: !450, line: 94, baseType: !55, size: 64, align: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !451, file: !450, line: 95, baseType: !55, size: 64, align: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !451, file: !450, line: 97, baseType: !55, size: 64, align: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !451, file: !450, line: 98, baseType: !55, size: 64, align: 64, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !451, file: !450, line: 99, baseType: !55, size: 64, align: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !451, file: !450, line: 101, baseType: !55, size: 64, align: 64, offset: 1024)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !451, file: !450, line: 103, baseType: !61, size: 32, align: 32, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !451, file: !450, line: 105, baseType: !55, size: 64, align: 64, offset: 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !451, file: !450, line: 106, baseType: !33, size: 64, align: 64, offset: 1216)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !451, file: !450, line: 108, baseType: !61, size: 32, align: 32, offset: 1280)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !451, file: !450, line: 109, baseType: !55, size: 64, align: 64, offset: 1344)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !451, file: !450, line: 134, baseType: !354, size: 64, align: 64, offset: 1408)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !451, file: !450, line: 135, baseType: !107, size: 64, align: 64, offset: 1472)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "wrapperfunc_kwds", file: !14, line: 23, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!55, !55, !55, !107, !55}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "propertyobject", file: !412, line: 1307, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 1300, size: 448, align: 64, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !512, file: !412, line: 1301, baseType: !22, size: 128, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prop_get", scope: !512, file: !412, line: 1302, baseType: !55, size: 64, align: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "prop_set", scope: !512, file: !412, line: 1303, baseType: !55, size: 64, align: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "prop_del", scope: !512, file: !412, line: 1304, baseType: !55, size: 64, align: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "prop_doc", scope: !512, file: !412, line: 1305, baseType: !55, size: 64, align: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "getter_doc", scope: !512, file: !412, line: 1306, baseType: !61, size: 32, align: 32, offset: 384)
!520 = !{!521, !528, !533, !542, !549, !557, !565, !575, !597, !602, !609, !628, !633, !643, !648, !654, !659, !673, !677, !683, !691, !708, !713, !718, !724, !732, !740, !749, !754, !760, !768, !776, !781, !800, !806, !810, !816, !832, !841, !846, !852, !857, !863, !866, !876, !883, !886, !892, !895, !898, !901, !904, !915, !918, !950, !959, !964, !967, !972, !979, !991, !1005, !1018, !1023, !1027, !1031, !1034, !1040, !1044, !1070, !1092, !1096, !1131, !1135, !1139, !1146, !1152, !1162}
!521 = !DISubprogram(name: "PyDescr_NewMethod", scope: !412, file: !412, line: 701, type: !522, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyMethodDef*)* @PyDescr_NewMethod, variables: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!55, !368, !373}
!524 = !{!525, !526, !527}
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !521, file: !412, line: 701, type: !368)
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "method", arg: 2, scope: !521, file: !412, line: 701, type: !373)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !521, file: !412, line: 703, type: !12)
!528 = !DISubprogram(name: "PyDescr_NewClassMethod", scope: !412, file: !412, line: 713, type: !522, isLocal: false, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyMethodDef*)* @PyDescr_NewClassMethod, variables: !529)
!529 = !{!530, !531, !532}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !528, file: !412, line: 713, type: !368)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "method", arg: 2, scope: !528, file: !412, line: 713, type: !373)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !528, file: !412, line: 715, type: !12)
!533 = !DISubprogram(name: "PyDescr_NewMember", scope: !412, file: !412, line: 725, type: !534, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyMemberDef*)* @PyDescr_NewMember, variables: !538)
!534 = !DISubroutineType(types: !535)
!535 = !{!55, !368, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !309, line: 24, baseType: !308)
!538 = !{!539, !540, !541}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !533, file: !412, line: 725, type: !368)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "member", arg: 2, scope: !533, file: !412, line: 725, type: !536)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !533, file: !412, line: 727, type: !375)
!542 = !DISubprogram(name: "PyDescr_NewGetSet", scope: !412, file: !412, line: 737, type: !543, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.PyGetSetDef*)* @PyDescr_NewGetSet, variables: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!55, !368, !387}
!545 = !{!546, !547, !548}
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !542, file: !412, line: 737, type: !368)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "getset", arg: 2, scope: !542, file: !412, line: 737, type: !387)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !542, file: !412, line: 739, type: !381)
!549 = !DISubprogram(name: "PyDescr_NewWrapper", scope: !412, file: !412, line: 749, type: !550, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct.wrapperbase*, i8*)* @PyDescr_NewWrapper, variables: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!55, !368, !395, !107}
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !549, file: !412, line: 749, type: !368)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !549, file: !412, line: 749, type: !395)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wrapped", arg: 3, scope: !549, file: !412, line: 749, type: !107)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !549, file: !412, line: 751, type: !389)
!557 = !DISubprogram(name: "PyDictProxy_New", scope: !412, file: !412, line: 990, type: !134, isLocal: false, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyDictProxy_New, variables: !558)
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mapping", arg: 1, scope: !557, file: !412, line: 990, type: !55)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !557, file: !412, line: 992, type: !410)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !562, file: !412, line: 1001, type: !417)
!562 = distinct !DILexicalBlock(scope: !563, file: !412, line: 1001, column: 12)
!563 = distinct !DILexicalBlock(scope: !564, file: !412, line: 998, column: 27)
!564 = distinct !DILexicalBlock(scope: !557, file: !412, line: 998, column: 9)
!565 = !DISubprogram(name: "PyWrapper_New", scope: !412, file: !412, line: 1246, type: !144, isLocal: false, isDefinition: true, scopeLine: 1247, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyWrapper_New, variables: !566)
!566 = !{!567, !568, !569, !570, !571}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !565, file: !412, line: 1246, type: !55)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !565, file: !412, line: 1246, type: !55)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !565, file: !412, line: 1248, type: !431)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !565, file: !412, line: 1249, type: !389)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !572, file: !412, line: 1262, type: !417)
!572 = distinct !DILexicalBlock(scope: !573, file: !412, line: 1262, column: 12)
!573 = distinct !DILexicalBlock(scope: !574, file: !412, line: 1257, column: 27)
!574 = distinct !DILexicalBlock(scope: !565, file: !412, line: 1257, column: 9)
!575 = !DISubprogram(name: "descr_dealloc", scope: !412, file: !412, line: 7, type: !576, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyDescrObject*)* @descr_dealloc, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !438}
!578 = !{!579, !580, !582, !584, !587, !589, !592, !594}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !575, file: !412, line: 7, type: !438)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !581, file: !412, line: 9, type: !417)
!581 = distinct !DILexicalBlock(scope: !575, file: !412, line: 9, column: 8)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !583, file: !412, line: 10, type: !55)
!583 = distinct !DILexicalBlock(scope: !575, file: !412, line: 10, column: 8)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !412, line: 10, type: !55)
!585 = distinct !DILexicalBlock(scope: !586, file: !412, line: 10, column: 105)
!586 = distinct !DILexicalBlock(scope: !583, file: !412, line: 10, column: 71)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !588, file: !412, line: 11, type: !55)
!588 = distinct !DILexicalBlock(scope: !575, file: !412, line: 11, column: 8)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !412, line: 11, type: !55)
!590 = distinct !DILexicalBlock(scope: !591, file: !412, line: 11, column: 105)
!591 = distinct !DILexicalBlock(scope: !588, file: !412, line: 11, column: 71)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !593, file: !412, line: 12, type: !55)
!593 = distinct !DILexicalBlock(scope: !575, file: !412, line: 12, column: 8)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !595, file: !412, line: 12, type: !55)
!595 = distinct !DILexicalBlock(scope: !596, file: !412, line: 12, column: 109)
!596 = distinct !DILexicalBlock(scope: !593, file: !412, line: 12, column: 75)
!597 = !DISubprogram(name: "method_repr", scope: !412, file: !412, line: 35, type: !598, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*)* @method_repr, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!55, !12}
!600 = !{!601}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !597, file: !412, line: 35, type: !12)
!602 = !DISubprogram(name: "descr_repr", scope: !412, file: !412, line: 25, type: !603, isLocal: true, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*, i8*)* @descr_repr, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!55, !438, !69}
!605 = !{!606, !607, !608}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !602, file: !412, line: 25, type: !438)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !602, file: !412, line: 25, type: !69)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !602, file: !412, line: 27, type: !55)
!609 = !DISubprogram(name: "methoddescr_call", scope: !412, file: !412, line: 213, type: !610, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @methoddescr_call, variables: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!55, !12, !55, !55}
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !624, !626}
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !609, file: !412, line: 213, type: !12)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !609, file: !412, line: 213, type: !55)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !609, file: !412, line: 213, type: !55)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argc", scope: !609, file: !412, line: 215, type: !27)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !609, file: !412, line: 216, type: !55)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !609, file: !412, line: 216, type: !55)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !609, file: !412, line: 216, type: !55)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !621, file: !412, line: 247, type: !55)
!621 = distinct !DILexicalBlock(scope: !622, file: !412, line: 247, column: 12)
!622 = distinct !DILexicalBlock(scope: !623, file: !412, line: 246, column: 29)
!623 = distinct !DILexicalBlock(scope: !609, file: !412, line: 246, column: 9)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !625, file: !412, line: 251, type: !55)
!625 = distinct !DILexicalBlock(scope: !609, file: !412, line: 251, column: 8)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !627, file: !412, line: 252, type: !55)
!627 = distinct !DILexicalBlock(scope: !609, file: !412, line: 252, column: 8)
!628 = !DISubprogram(name: "descr_name", scope: !412, file: !412, line: 17, type: !629, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*)* @descr_name, variables: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!55, !438}
!631 = !{!632}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !628, file: !412, line: 17, type: !438)
!633 = !DISubprogram(name: "descr_traverse", scope: !412, file: !412, line: 486, type: !279, isLocal: true, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @descr_traverse, variables: !634)
!634 = !{!635, !636, !637, !638, !639}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !633, file: !412, line: 486, type: !55)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !633, file: !412, line: 486, type: !281)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !633, file: !412, line: 486, type: !107)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !633, file: !412, line: 488, type: !438)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !640, file: !412, line: 489, type: !61)
!640 = distinct !DILexicalBlock(scope: !641, file: !412, line: 489, column: 29)
!641 = distinct !DILexicalBlock(scope: !642, file: !412, line: 489, column: 14)
!642 = distinct !DILexicalBlock(scope: !633, file: !412, line: 489, column: 8)
!643 = !DISubprogram(name: "descr_reduce", scope: !412, file: !412, line: 404, type: !629, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*)* @descr_reduce, variables: !644)
!644 = !{!645, !646, !647}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !643, file: !412, line: 404, type: !438)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !643, file: !412, line: 406, type: !55)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !643, file: !412, line: 407, type: !55)
!648 = !DISubprogram(name: "method_get_doc", scope: !412, file: !412, line: 354, type: !649, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, i8*)* @method_get_doc, variables: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{!55, !12, !107}
!651 = !{!652, !653}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !648, file: !412, line: 354, type: !12)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !648, file: !412, line: 354, type: !107)
!654 = !DISubprogram(name: "descr_get_qualname", scope: !412, file: !412, line: 395, type: !629, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*)* @descr_get_qualname, variables: !655)
!655 = !{!656, !657}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !654, file: !412, line: 395, type: !438)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !658, file: !412, line: 399, type: !55)
!658 = distinct !DILexicalBlock(scope: !654, file: !412, line: 399, column: 8)
!659 = !DISubprogram(name: "calculate_qualname", scope: !412, file: !412, line: 366, type: !629, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyDescrObject*)* @calculate_qualname, variables: !660)
!660 = !{!661, !662, !663, !664, !668, !671}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !659, file: !412, line: 366, type: !438)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type_qualname", scope: !659, file: !412, line: 368, type: !55)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !659, file: !412, line: 368, type: !55)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !665, file: !412, line: 385, type: !55)
!665 = distinct !DILexicalBlock(scope: !666, file: !412, line: 385, column: 12)
!666 = distinct !DILexicalBlock(scope: !667, file: !412, line: 382, column: 88)
!667 = distinct !DILexicalBlock(scope: !659, file: !412, line: 382, column: 9)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !669, file: !412, line: 385, type: !55)
!669 = distinct !DILexicalBlock(scope: !670, file: !412, line: 385, column: 109)
!670 = distinct !DILexicalBlock(scope: !665, file: !412, line: 385, column: 75)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !672, file: !412, line: 390, type: !55)
!672 = distinct !DILexicalBlock(scope: !659, file: !412, line: 390, column: 8)
!673 = !DISubprogram(name: "method_get_text_signature", scope: !412, file: !412, line: 360, type: !649, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, i8*)* @method_get_text_signature, variables: !674)
!674 = !{!675, !676}
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !673, file: !412, line: 360, type: !12)
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !673, file: !412, line: 360, type: !107)
!677 = !DISubprogram(name: "method_get", scope: !412, file: !412, line: 122, type: !610, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @method_get, variables: !678)
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !677, file: !412, line: 122, type: !12)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !677, file: !412, line: 122, type: !55)
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !677, file: !412, line: 122, type: !55)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !677, file: !412, line: 124, type: !55)
!683 = !DISubprogram(name: "descr_check", scope: !412, file: !412, line: 63, type: !684, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyDescrObject*, %struct._object*, %struct._object**)* @descr_check, variables: !687)
!684 = !DISubroutineType(types: !685)
!685 = !{!61, !438, !55, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!687 = !{!688, !689, !690}
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !683, file: !412, line: 63, type: !438)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !683, file: !412, line: 63, type: !55)
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pres", arg: 3, scope: !683, file: !412, line: 63, type: !686)
!691 = !DISubprogram(name: "classmethoddescr_call", scope: !412, file: !412, line: 257, type: !610, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @classmethoddescr_call, variables: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !704, !706}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !691, file: !412, line: 257, type: !12)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !691, file: !412, line: 257, type: !55)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !691, file: !412, line: 258, type: !55)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argc", scope: !691, file: !412, line: 260, type: !27)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !691, file: !412, line: 261, type: !55)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !691, file: !412, line: 261, type: !55)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !691, file: !412, line: 261, type: !55)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !412, line: 300, type: !55)
!701 = distinct !DILexicalBlock(scope: !702, file: !412, line: 300, column: 12)
!702 = distinct !DILexicalBlock(scope: !703, file: !412, line: 299, column: 29)
!703 = distinct !DILexicalBlock(scope: !691, file: !412, line: 299, column: 9)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !705, file: !412, line: 304, type: !55)
!705 = distinct !DILexicalBlock(scope: !691, file: !412, line: 304, column: 8)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !707, file: !412, line: 305, type: !55)
!707 = distinct !DILexicalBlock(scope: !691, file: !412, line: 305, column: 8)
!708 = !DISubprogram(name: "classmethod_get", scope: !412, file: !412, line: 84, type: !610, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDescrObject*, %struct._object*, %struct._object*)* @classmethod_get, variables: !709)
!709 = !{!710, !711, !712}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !708, file: !412, line: 84, type: !12)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !708, file: !412, line: 84, type: !55)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !708, file: !412, line: 84, type: !55)
!713 = !DISubprogram(name: "member_repr", scope: !412, file: !412, line: 42, type: !714, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMemberDescrObject*)* @member_repr, variables: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!55, !375}
!716 = !{!717}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !713, file: !412, line: 42, type: !375)
!718 = !DISubprogram(name: "member_get_doc", scope: !412, file: !412, line: 435, type: !719, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMemberDescrObject*, i8*)* @member_get_doc, variables: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!55, !375, !107}
!721 = !{!722, !723}
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !718, file: !412, line: 435, type: !375)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !718, file: !412, line: 435, type: !107)
!724 = !DISubprogram(name: "member_get", scope: !412, file: !412, line: 132, type: !725, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMemberDescrObject*, %struct._object*, %struct._object*)* @member_get, variables: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!55, !375, !55, !55}
!727 = !{!728, !729, !730, !731}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !724, file: !412, line: 132, type: !375)
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !724, file: !412, line: 132, type: !55)
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !724, file: !412, line: 132, type: !55)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !724, file: !412, line: 134, type: !55)
!732 = !DISubprogram(name: "member_set", scope: !412, file: !412, line: 186, type: !733, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyMemberDescrObject*, %struct._object*, %struct._object*)* @member_set, variables: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!61, !375, !55, !55}
!735 = !{!736, !737, !738, !739}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !732, file: !412, line: 186, type: !375)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !732, file: !412, line: 186, type: !55)
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !732, file: !412, line: 186, type: !55)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !732, file: !412, line: 188, type: !61)
!740 = !DISubprogram(name: "descr_setcheck", scope: !412, file: !412, line: 168, type: !741, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyDescrObject*, %struct._object*, %struct._object*, i32*)* @descr_setcheck, variables: !744)
!741 = !DISubroutineType(types: !742)
!742 = !{!61, !438, !55, !55, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!744 = !{!745, !746, !747, !748}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !740, file: !412, line: 168, type: !438)
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !740, file: !412, line: 168, type: !55)
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !740, file: !412, line: 168, type: !55)
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pres", arg: 4, scope: !740, file: !412, line: 169, type: !743)
!749 = !DISubprogram(name: "getset_repr", scope: !412, file: !412, line: 49, type: !750, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGetSetDescrObject*)* @getset_repr, variables: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!55, !381}
!752 = !{!753}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !749, file: !412, line: 49, type: !381)
!754 = !DISubprogram(name: "getset_get_doc", scope: !412, file: !412, line: 451, type: !755, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGetSetDescrObject*, i8*)* @getset_get_doc, variables: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!55, !381, !107}
!757 = !{!758, !759}
!758 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !754, file: !412, line: 451, type: !381)
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !754, file: !412, line: 451, type: !107)
!760 = !DISubprogram(name: "getset_get", scope: !412, file: !412, line: 142, type: !761, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGetSetDescrObject*, %struct._object*, %struct._object*)* @getset_get, variables: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!55, !381, !55, !55}
!763 = !{!764, !765, !766, !767}
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !760, file: !412, line: 142, type: !381)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !760, file: !412, line: 142, type: !55)
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !760, file: !412, line: 142, type: !55)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !760, file: !412, line: 144, type: !55)
!768 = !DISubprogram(name: "getset_set", scope: !412, file: !412, line: 196, type: !769, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyGetSetDescrObject*, %struct._object*, %struct._object*)* @getset_set, variables: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{!61, !381, !55, !55}
!771 = !{!772, !773, !774, !775}
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !768, file: !412, line: 196, type: !381)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !768, file: !412, line: 196, type: !55)
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !768, file: !412, line: 196, type: !55)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !768, file: !412, line: 198, type: !61)
!776 = !DISubprogram(name: "wrapperdescr_repr", scope: !412, file: !412, line: 56, type: !777, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*)* @wrapperdescr_repr, variables: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{!55, !389}
!779 = !{!780}
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !776, file: !412, line: 56, type: !389)
!781 = !DISubprogram(name: "wrapperdescr_call", scope: !412, file: !412, line: 310, type: !782, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, %struct._object*, %struct._object*)* @wrapperdescr_call, variables: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!55, !389, !55, !55}
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !796, !798}
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !781, file: !412, line: 310, type: !389)
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !781, file: !412, line: 310, type: !55)
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !781, file: !412, line: 310, type: !55)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argc", scope: !781, file: !412, line: 312, type: !27)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !781, file: !412, line: 313, type: !55)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !781, file: !412, line: 313, type: !55)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !781, file: !412, line: 313, type: !55)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !793, file: !412, line: 344, type: !55)
!793 = distinct !DILexicalBlock(scope: !794, file: !412, line: 344, column: 12)
!794 = distinct !DILexicalBlock(scope: !795, file: !412, line: 343, column: 29)
!795 = distinct !DILexicalBlock(scope: !781, file: !412, line: 343, column: 9)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !797, file: !412, line: 348, type: !55)
!797 = distinct !DILexicalBlock(scope: !781, file: !412, line: 348, column: 8)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !799, file: !412, line: 349, type: !55)
!799 = distinct !DILexicalBlock(scope: !781, file: !412, line: 349, column: 8)
!800 = !DISubprogram(name: "wrapperdescr_get_doc", scope: !412, file: !412, line: 467, type: !801, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, i8*)* @wrapperdescr_get_doc, variables: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!55, !389, !107}
!803 = !{!804, !805}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !800, file: !412, line: 467, type: !389)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !800, file: !412, line: 467, type: !107)
!806 = !DISubprogram(name: "wrapperdescr_get_text_signature", scope: !412, file: !412, line: 473, type: !801, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, i8*)* @wrapperdescr_get_text_signature, variables: !807)
!807 = !{!808, !809}
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !806, file: !412, line: 473, type: !389)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !806, file: !412, line: 473, type: !107)
!810 = !DISubprogram(name: "wrapperdescr_get", scope: !412, file: !412, line: 158, type: !782, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyWrapperDescrObject*, %struct._object*, %struct._object*)* @wrapperdescr_get, variables: !811)
!811 = !{!812, !813, !814, !815}
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 1, scope: !810, file: !412, line: 158, type: !389)
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !810, file: !412, line: 158, type: !55)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !810, file: !412, line: 158, type: !55)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !810, file: !412, line: 160, type: !55)
!816 = !DISubprogram(name: "descr_new", scope: !412, file: !412, line: 680, type: !817, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyDescrObject* (%struct._typeobject*, %struct._typeobject*, i8*)* @descr_new, variables: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!438, !368, !368, !45}
!819 = !{!820, !821, !822, !823, !824, !828}
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descrtype", arg: 1, scope: !816, file: !412, line: 680, type: !368)
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !816, file: !412, line: 680, type: !368)
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !816, file: !412, line: 680, type: !45)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !816, file: !412, line: 682, type: !438)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !825, file: !412, line: 686, type: !55)
!825 = distinct !DILexicalBlock(scope: !826, file: !412, line: 686, column: 12)
!826 = distinct !DILexicalBlock(scope: !827, file: !412, line: 685, column: 30)
!827 = distinct !DILexicalBlock(scope: !816, file: !412, line: 685, column: 9)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !829, file: !412, line: 690, type: !55)
!829 = distinct !DILexicalBlock(scope: !830, file: !412, line: 690, column: 16)
!830 = distinct !DILexicalBlock(scope: !831, file: !412, line: 689, column: 42)
!831 = distinct !DILexicalBlock(scope: !826, file: !412, line: 689, column: 13)
!832 = !DISubprogram(name: "mappingproxy_dealloc", scope: !412, file: !412, line: 871, type: !833, isLocal: true, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mappingproxyobject*)* @mappingproxy_dealloc, variables: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !410}
!835 = !{!836, !837, !839}
!836 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !832, file: !412, line: 871, type: !410)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !838, file: !412, line: 873, type: !417)
!838 = distinct !DILexicalBlock(scope: !832, file: !412, line: 873, column: 8)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !840, file: !412, line: 874, type: !55)
!840 = distinct !DILexicalBlock(scope: !832, file: !412, line: 874, column: 8)
!841 = !DISubprogram(name: "mappingproxy_repr", scope: !412, file: !412, line: 891, type: !842, isLocal: true, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_repr, variables: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!55, !410}
!844 = !{!845}
!845 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !841, file: !412, line: 891, type: !410)
!846 = !DISubprogram(name: "mappingproxy_contains", scope: !412, file: !412, line: 792, type: !847, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_contains, variables: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!61, !410, !55}
!849 = !{!850, !851}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !846, file: !412, line: 792, type: !410)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !846, file: !412, line: 792, type: !55)
!852 = !DISubprogram(name: "mappingproxy_len", scope: !412, file: !412, line: 774, type: !853, isLocal: true, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.mappingproxyobject*)* @mappingproxy_len, variables: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!27, !410}
!855 = !{!856}
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !852, file: !412, line: 774, type: !410)
!857 = !DISubprogram(name: "mappingproxy_getitem", scope: !412, file: !412, line: 780, type: !858, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_getitem, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!55, !410, !55}
!860 = !{!861, !862}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !857, file: !412, line: 780, type: !410)
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !857, file: !412, line: 780, type: !55)
!863 = !DISubprogram(name: "mappingproxy_str", scope: !412, file: !412, line: 885, type: !842, isLocal: true, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_str, variables: !864)
!864 = !{!865}
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !863, file: !412, line: 885, type: !410)
!866 = !DISubprogram(name: "mappingproxy_traverse", scope: !412, file: !412, line: 897, type: !279, isLocal: true, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @mappingproxy_traverse, variables: !867)
!867 = !{!868, !869, !870, !871, !872}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !866, file: !412, line: 897, type: !55)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !866, file: !412, line: 897, type: !281)
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !866, file: !412, line: 897, type: !107)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !866, file: !412, line: 899, type: !410)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !873, file: !412, line: 900, type: !61)
!873 = distinct !DILexicalBlock(scope: !874, file: !412, line: 900, column: 27)
!874 = distinct !DILexicalBlock(scope: !875, file: !412, line: 900, column: 14)
!875 = distinct !DILexicalBlock(scope: !866, file: !412, line: 900, column: 8)
!876 = !DISubprogram(name: "mappingproxy_richcompare", scope: !412, file: !412, line: 905, type: !877, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*, %struct._object*, i32)* @mappingproxy_richcompare, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!55, !410, !55, !61}
!879 = !{!880, !881, !882}
!880 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !876, file: !412, line: 905, type: !410)
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !876, file: !412, line: 905, type: !55)
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !876, file: !412, line: 905, type: !61)
!883 = !DISubprogram(name: "mappingproxy_getiter", scope: !412, file: !412, line: 879, type: !842, isLocal: true, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_getiter, variables: !884)
!884 = !{!885}
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !883, file: !412, line: 879, type: !410)
!886 = !DISubprogram(name: "mappingproxy_get", scope: !412, file: !412, line: 814, type: !858, isLocal: true, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*, %struct._object*)* @mappingproxy_get, variables: !887)
!887 = !{!888, !889, !890, !891}
!888 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !886, file: !412, line: 814, type: !410)
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !886, file: !412, line: 814, type: !55)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !886, file: !412, line: 816, type: !55)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "def", scope: !886, file: !412, line: 816, type: !55)
!892 = !DISubprogram(name: "mappingproxy_keys", scope: !412, file: !412, line: 825, type: !842, isLocal: true, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_keys, variables: !893)
!893 = !{!894}
!894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !892, file: !412, line: 825, type: !410)
!895 = !DISubprogram(name: "mappingproxy_values", scope: !412, file: !412, line: 832, type: !842, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_values, variables: !896)
!896 = !{!897}
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !895, file: !412, line: 832, type: !410)
!898 = !DISubprogram(name: "mappingproxy_items", scope: !412, file: !412, line: 839, type: !842, isLocal: true, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_items, variables: !899)
!899 = !{!900}
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !898, file: !412, line: 839, type: !410)
!901 = !DISubprogram(name: "mappingproxy_copy", scope: !412, file: !412, line: 846, type: !842, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mappingproxyobject*)* @mappingproxy_copy, variables: !902)
!902 = !{!903}
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pp", arg: 1, scope: !901, file: !412, line: 846, type: !410)
!904 = !DISubprogram(name: "mappingproxy_new", scope: !412, file: !412, line: 925, type: !905, isLocal: true, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mappingproxy_new, variables: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{!55, !368, !55, !55}
!907 = !{!908, !909, !910, !911, !912, !913}
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !904, file: !412, line: 925, type: !368)
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !904, file: !412, line: 925, type: !55)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !904, file: !412, line: 925, type: !55)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !904, file: !412, line: 928, type: !55)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mappingproxy", scope: !904, file: !412, line: 929, type: !410)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !914, file: !412, line: 943, type: !417)
!914 = distinct !DILexicalBlock(scope: !904, file: !412, line: 943, column: 8)
!915 = !DISubprogram(name: "mappingproxy_check_mapping", scope: !412, file: !412, line: 911, type: !162, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @mappingproxy_check_mapping, variables: !916)
!916 = !{!917}
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mapping", arg: 1, scope: !915, file: !412, line: 911, type: !55)
!918 = !DISubprogram(name: "wrapper_dealloc", scope: !412, file: !412, line: 1021, type: !919, isLocal: true, isDefinition: true, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.wrapperobject*)* @wrapper_dealloc, variables: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !431}
!921 = !{!922, !923, !925, !932, !933, !936, !938, !942, !945, !947}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !918, file: !412, line: 1021, type: !431)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_tstate", scope: !924, file: !412, line: 1024, type: !448)
!924 = distinct !DILexicalBlock(scope: !918, file: !412, line: 1024, column: 8)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !926, file: !412, line: 1024, type: !927)
!926 = distinct !DILexicalBlock(scope: !924, file: !412, line: 1024, column: 67)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64, align: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !929)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !929, file: !4, line: 32, baseType: !107, size: 64, align: 64)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !926, file: !412, line: 1024, type: !107)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !926, file: !412, line: 1024, type: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64, align: 64)
!935 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !926, file: !412, line: 1024, type: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !939, file: !412, line: 1025, type: !55)
!939 = distinct !DILexicalBlock(scope: !940, file: !412, line: 1025, column: 8)
!940 = distinct !DILexicalBlock(scope: !941, file: !412, line: 1024, column: 797)
!941 = distinct !DILexicalBlock(scope: !924, file: !412, line: 1024, column: 761)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !943, file: !412, line: 1025, type: !55)
!943 = distinct !DILexicalBlock(scope: !944, file: !412, line: 1025, column: 101)
!944 = distinct !DILexicalBlock(scope: !939, file: !412, line: 1025, column: 67)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !946, file: !412, line: 1026, type: !55)
!946 = distinct !DILexicalBlock(scope: !940, file: !412, line: 1026, column: 8)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !948, file: !412, line: 1026, type: !55)
!948 = distinct !DILexicalBlock(scope: !949, file: !412, line: 1026, column: 100)
!949 = distinct !DILexicalBlock(scope: !946, file: !412, line: 1026, column: 66)
!950 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !951, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !956)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !953, !937}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, align: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!956 = !{!957, !958}
!957 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !950, file: !4, line: 59, type: !953)
!958 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !950, file: !4, line: 59, type: !937)
!959 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !960, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !962)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !937}
!962 = !{!963}
!963 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !959, file: !4, line: 51, type: !937)
!964 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !960, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !965)
!965 = !{!966}
!966 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !964, file: !4, line: 44, type: !937)
!967 = !DISubprogram(name: "wrapper_repr", scope: !412, file: !412, line: 1104, type: !968, isLocal: true, isDefinition: true, scopeLine: 1105, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_repr, variables: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!55, !431}
!970 = !{!971}
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !967, file: !412, line: 1104, type: !431)
!972 = !DISubprogram(name: "wrapper_hash", scope: !412, file: !412, line: 1088, type: !973, isLocal: true, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.wrapperobject*)* @wrapper_hash, variables: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!236, !431}
!975 = !{!976, !977, !978}
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !972, file: !412, line: 1088, type: !431)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !972, file: !412, line: 1090, type: !236)
!978 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !972, file: !412, line: 1090, type: !236)
!979 = !DISubprogram(name: "wrapper_call", scope: !412, file: !412, line: 1179, type: !980, isLocal: true, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*, %struct._object*, %struct._object*)* @wrapper_call, variables: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!55, !431, !55, !55}
!982 = !{!983, !984, !985, !986, !987, !988}
!983 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !979, file: !412, line: 1179, type: !431)
!984 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !979, file: !412, line: 1179, type: !55)
!985 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !979, file: !412, line: 1179, type: !55)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wrapper", scope: !979, file: !412, line: 1181, type: !402)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !979, file: !412, line: 1182, type: !55)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wk", scope: !989, file: !412, line: 1185, type: !506)
!989 = distinct !DILexicalBlock(scope: !990, file: !412, line: 1184, column: 39)
!990 = distinct !DILexicalBlock(scope: !979, file: !412, line: 1184, column: 9)
!991 = !DISubprogram(name: "wrapper_traverse", scope: !412, file: !412, line: 1199, type: !279, isLocal: true, isDefinition: true, scopeLine: 1200, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @wrapper_traverse, variables: !992)
!992 = !{!993, !994, !995, !996, !997, !1001}
!993 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !991, file: !412, line: 1199, type: !55)
!994 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !991, file: !412, line: 1199, type: !281)
!995 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !991, file: !412, line: 1199, type: !107)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !991, file: !412, line: 1201, type: !431)
!997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !998, file: !412, line: 1202, type: !61)
!998 = distinct !DILexicalBlock(scope: !999, file: !412, line: 1202, column: 25)
!999 = distinct !DILexicalBlock(scope: !1000, file: !412, line: 1202, column: 14)
!1000 = distinct !DILexicalBlock(scope: !991, file: !412, line: 1202, column: 8)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1002, file: !412, line: 1203, type: !61)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !412, line: 1203, column: 24)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !412, line: 1203, column: 14)
!1004 = distinct !DILexicalBlock(scope: !991, file: !412, line: 1203, column: 8)
!1005 = !DISubprogram(name: "wrapper_richcompare", scope: !412, file: !412, line: 1034, type: !289, isLocal: true, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @wrapper_richcompare, variables: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1015, !1016, !1017}
!1007 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !1005, file: !412, line: 1034, type: !55)
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !1005, file: !412, line: 1034, type: !55)
!1009 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !1005, file: !412, line: 1034, type: !61)
!1010 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1005, file: !412, line: 1036, type: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_intptr_t", file: !28, line: 154, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1013, line: 267, baseType: !1014)
!1013 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !32, line: 195, baseType: !33)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !1005, file: !412, line: 1037, type: !55)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a_descr", scope: !1005, file: !412, line: 1038, type: !389)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b_descr", scope: !1005, file: !412, line: 1038, type: !389)
!1018 = !DISubprogram(name: "wrapper_reduce", scope: !412, file: !412, line: 1113, type: !968, isLocal: true, isDefinition: true, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_reduce, variables: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1018, file: !412, line: 1113, type: !431)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !1018, file: !412, line: 1115, type: !55)
!1022 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !1018, file: !412, line: 1116, type: !55)
!1023 = !DISubprogram(name: "wrapper_objclass", scope: !412, file: !412, line: 1135, type: !968, isLocal: true, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_objclass, variables: !1024)
!1024 = !{!1025, !1026}
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1023, file: !412, line: 1135, type: !431)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !1023, file: !412, line: 1137, type: !55)
!1027 = !DISubprogram(name: "wrapper_name", scope: !412, file: !412, line: 1144, type: !968, isLocal: true, isDefinition: true, scopeLine: 1145, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_name, variables: !1028)
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1027, file: !412, line: 1144, type: !431)
!1030 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !1027, file: !412, line: 1146, type: !45)
!1031 = !DISubprogram(name: "wrapper_qualname", scope: !412, file: !412, line: 1164, type: !968, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*)* @wrapper_qualname, variables: !1032)
!1032 = !{!1033}
!1033 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1031, file: !412, line: 1164, type: !431)
!1034 = !DISubprogram(name: "wrapper_doc", scope: !412, file: !412, line: 1152, type: !1035, isLocal: true, isDefinition: true, scopeLine: 1153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*, i8*)* @wrapper_doc, variables: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!55, !431, !107}
!1037 = !{!1038, !1039}
!1038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1034, file: !412, line: 1152, type: !431)
!1039 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !1034, file: !412, line: 1152, type: !107)
!1040 = !DISubprogram(name: "wrapper_text_signature", scope: !412, file: !412, line: 1158, type: !1035, isLocal: true, isDefinition: true, scopeLine: 1159, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.wrapperobject*, i8*)* @wrapper_text_signature, variables: !1041)
!1041 = !{!1042, !1043}
!1042 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wp", arg: 1, scope: !1040, file: !412, line: 1158, type: !431)
!1043 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !1040, file: !412, line: 1158, type: !107)
!1044 = !DISubprogram(name: "property_dealloc", scope: !412, file: !412, line: 1360, type: !53, isLocal: true, isDefinition: true, scopeLine: 1361, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @property_dealloc, variables: !1045)
!1045 = !{!1046, !1047, !1048, !1050, !1052, !1055, !1057, !1060, !1062, !1065, !1067}
!1046 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1044, file: !412, line: 1360, type: !55)
!1047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !1044, file: !412, line: 1362, type: !510)
!1048 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !1049, file: !412, line: 1364, type: !417)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !412, line: 1364, column: 8)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1051, file: !412, line: 1365, type: !55)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !412, line: 1365, column: 8)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1053, file: !412, line: 1365, type: !55)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !412, line: 1365, column: 104)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !412, line: 1365, column: 70)
!1055 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1056, file: !412, line: 1366, type: !55)
!1056 = distinct !DILexicalBlock(scope: !1044, file: !412, line: 1366, column: 8)
!1057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1058, file: !412, line: 1366, type: !55)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !412, line: 1366, column: 104)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !412, line: 1366, column: 70)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1061, file: !412, line: 1367, type: !55)
!1061 = distinct !DILexicalBlock(scope: !1044, file: !412, line: 1367, column: 8)
!1062 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1063, file: !412, line: 1367, type: !55)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !412, line: 1367, column: 104)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !412, line: 1367, column: 70)
!1065 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1066, file: !412, line: 1368, type: !55)
!1066 = distinct !DILexicalBlock(scope: !1044, file: !412, line: 1368, column: 8)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1068, file: !412, line: 1368, type: !55)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !412, line: 1368, column: 104)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !412, line: 1368, column: 70)
!1070 = !DISubprogram(name: "property_traverse", scope: !412, file: !412, line: 1577, type: !279, isLocal: true, isDefinition: true, scopeLine: 1578, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @property_traverse, variables: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1080, !1084, !1088}
!1072 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1070, file: !412, line: 1577, type: !55)
!1073 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !1070, file: !412, line: 1577, type: !281)
!1074 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !1070, file: !412, line: 1577, type: !107)
!1075 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !1070, file: !412, line: 1579, type: !510)
!1076 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1077, file: !412, line: 1580, type: !61)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !412, line: 1580, column: 28)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !412, line: 1580, column: 14)
!1079 = distinct !DILexicalBlock(scope: !1070, file: !412, line: 1580, column: 8)
!1080 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1081, file: !412, line: 1581, type: !61)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !412, line: 1581, column: 28)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !412, line: 1581, column: 14)
!1083 = distinct !DILexicalBlock(scope: !1070, file: !412, line: 1581, column: 8)
!1084 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1085, file: !412, line: 1582, type: !61)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !412, line: 1582, column: 28)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !412, line: 1582, column: 14)
!1087 = distinct !DILexicalBlock(scope: !1070, file: !412, line: 1582, column: 8)
!1088 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1089, file: !412, line: 1583, type: !61)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !412, line: 1583, column: 28)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !412, line: 1583, column: 14)
!1091 = distinct !DILexicalBlock(scope: !1070, file: !412, line: 1583, column: 8)
!1092 = !DISubprogram(name: "property_getter", scope: !412, file: !412, line: 1325, type: !144, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @property_getter, variables: !1093)
!1093 = !{!1094, !1095}
!1094 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1092, file: !412, line: 1325, type: !55)
!1095 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "getter", arg: 2, scope: !1092, file: !412, line: 1325, type: !55)
!1096 = !DISubprogram(name: "property_copy", scope: !412, file: !412, line: 1416, type: !1097, isLocal: true, isDefinition: true, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*, %struct._object*)* @property_copy, variables: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!55, !55, !55, !55, !55}
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1112, !1115, !1119, !1122, !1126, !1129}
!1100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 1, scope: !1096, file: !412, line: 1416, type: !55)
!1101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "get", arg: 2, scope: !1096, file: !412, line: 1416, type: !55)
!1102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set", arg: 3, scope: !1096, file: !412, line: 1416, type: !55)
!1103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "del", arg: 4, scope: !1096, file: !412, line: 1416, type: !55)
!1104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pold", scope: !1096, file: !412, line: 1418, type: !510)
!1105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !1096, file: !412, line: 1419, type: !55)
!1106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !1096, file: !412, line: 1419, type: !55)
!1107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !1096, file: !412, line: 1419, type: !55)
!1108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1109, file: !412, line: 1426, type: !55)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !412, line: 1426, column: 12)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !412, line: 1425, column: 56)
!1111 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1425, column: 9)
!1112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1113, file: !412, line: 1426, type: !55)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !412, line: 1426, column: 99)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !412, line: 1426, column: 65)
!1115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1116, file: !412, line: 1430, type: !55)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !412, line: 1430, column: 12)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !412, line: 1429, column: 56)
!1118 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1429, column: 9)
!1119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1120, file: !412, line: 1430, type: !55)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !412, line: 1430, column: 99)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !412, line: 1430, column: 65)
!1122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1123, file: !412, line: 1434, type: !55)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !412, line: 1434, column: 12)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !412, line: 1433, column: 56)
!1125 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1433, column: 9)
!1126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1127, file: !412, line: 1434, type: !55)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !412, line: 1434, column: 99)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !412, line: 1434, column: 65)
!1129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1130, file: !412, line: 1446, type: !55)
!1130 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1446, column: 8)
!1131 = !DISubprogram(name: "property_setter", scope: !412, file: !412, line: 1335, type: !144, isLocal: true, isDefinition: true, scopeLine: 1336, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @property_setter, variables: !1132)
!1132 = !{!1133, !1134}
!1133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1131, file: !412, line: 1335, type: !55)
!1134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "setter", arg: 2, scope: !1131, file: !412, line: 1335, type: !55)
!1135 = !DISubprogram(name: "property_deleter", scope: !412, file: !412, line: 1345, type: !144, isLocal: true, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @property_deleter, variables: !1136)
!1136 = !{!1137, !1138}
!1137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1135, file: !412, line: 1345, type: !55)
!1138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deleter", arg: 2, scope: !1135, file: !412, line: 1345, type: !55)
!1139 = !DISubprogram(name: "property_get___isabstractmethod__", scope: !412, file: !412, line: 1514, type: !1140, isLocal: true, isDefinition: true, scopeLine: 1515, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.propertyobject*, i8*)* @property_get___isabstractmethod__, variables: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!55, !510, !107}
!1142 = !{!1143, !1144, !1145}
!1143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prop", arg: 1, scope: !1139, file: !412, line: 1514, type: !510)
!1144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !1139, file: !412, line: 1514, type: !107)
!1145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1139, file: !412, line: 1516, type: !61)
!1146 = !DISubprogram(name: "property_descr_get", scope: !412, file: !412, line: 1373, type: !153, isLocal: true, isDefinition: true, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @property_descr_get, variables: !1147)
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1146, file: !412, line: 1373, type: !55)
!1149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !1146, file: !412, line: 1373, type: !55)
!1150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !1146, file: !412, line: 1373, type: !55)
!1151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !1146, file: !412, line: 1375, type: !510)
!1152 = !DISubprogram(name: "property_descr_set", scope: !412, file: !412, line: 1389, type: !229, isLocal: true, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @property_descr_set, variables: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160}
!1154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1152, file: !412, line: 1389, type: !55)
!1155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !1152, file: !412, line: 1389, type: !55)
!1156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !1152, file: !412, line: 1389, type: !55)
!1157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !1152, file: !412, line: 1391, type: !510)
!1158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !1152, file: !412, line: 1392, type: !55)
!1159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1152, file: !412, line: 1392, type: !55)
!1160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1161, file: !412, line: 1411, type: !55)
!1161 = distinct !DILexicalBlock(scope: !1152, file: !412, line: 1411, column: 8)
!1162 = !DISubprogram(name: "property_init", scope: !412, file: !412, line: 1453, type: !229, isLocal: true, isDefinition: true, scopeLine: 1454, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @property_init, variables: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1174, !1176, !1178, !1180, !1183, !1189, !1192, !1194}
!1164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1162, file: !412, line: 1453, type: !55)
!1165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1162, file: !412, line: 1453, type: !55)
!1166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !1162, file: !412, line: 1453, type: !55)
!1167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get", scope: !1162, file: !412, line: 1455, type: !55)
!1168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !1162, file: !412, line: 1455, type: !55)
!1169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "del", scope: !1162, file: !412, line: 1455, type: !55)
!1170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !1162, file: !412, line: 1455, type: !55)
!1171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prop", scope: !1162, file: !412, line: 1457, type: !510)
!1172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1173, file: !412, line: 1470, type: !55)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1470, column: 8)
!1174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1175, file: !412, line: 1471, type: !55)
!1175 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1471, column: 8)
!1176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1177, file: !412, line: 1472, type: !55)
!1177 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1472, column: 8)
!1178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1179, file: !412, line: 1473, type: !55)
!1179 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1473, column: 8)
!1180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "get_doc", scope: !1181, file: !412, line: 1484, type: !55)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !412, line: 1482, column: 79)
!1182 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1482, column: 9)
!1183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1184, file: !412, line: 1487, type: !55)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !412, line: 1487, column: 20)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !412, line: 1486, column: 69)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !412, line: 1486, column: 17)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !412, line: 1485, column: 22)
!1188 = distinct !DILexicalBlock(scope: !1181, file: !412, line: 1485, column: 13)
!1189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1190, file: !412, line: 1487, type: !55)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !412, line: 1487, column: 118)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !412, line: 1487, column: 84)
!1192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1193, file: !412, line: 1495, type: !61)
!1193 = distinct !DILexicalBlock(scope: !1186, file: !412, line: 1490, column: 18)
!1194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1195, file: !412, line: 1496, type: !55)
!1195 = distinct !DILexicalBlock(scope: !1193, file: !412, line: 1496, column: 20)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209, !1217, !1221, !1225, !1226, !1228, !1229, !1230, !1231, !1232, !1236, !1237, !1238, !1239, !1240, !1241, !1243, !1244, !1245, !1247, !1249, !1253, !1255, !1259, !1260, !1264, !1268, !1270, !1272}
!1197 = !DIGlobalVariable(name: "PyMethodDescr_Type", scope: !0, file: !412, line: 493, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyMethodDescr_Type)
!1198 = !DIGlobalVariable(name: "PyClassMethodDescr_Type", scope: !0, file: !412, line: 531, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyClassMethodDescr_Type)
!1199 = !DIGlobalVariable(name: "PyMemberDescr_Type", scope: !0, file: !412, line: 568, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyMemberDescr_Type)
!1200 = !DIGlobalVariable(name: "PyGetSetDescr_Type", scope: !0, file: !412, line: 605, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyGetSetDescr_Type)
!1201 = !DIGlobalVariable(name: "PyWrapperDescr_Type", scope: !0, file: !412, line: 642, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyWrapperDescr_Type)
!1202 = !DIGlobalVariable(name: "PyDictProxy_Type", scope: !0, file: !412, line: 947, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyDictProxy_Type)
!1203 = !DIGlobalVariable(name: "_PyMethodWrapper_Type", scope: !0, file: !412, line: 1207, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyMethodWrapper_Type)
!1204 = !DIGlobalVariable(name: "PyProperty_Type", scope: !0, file: !412, line: 1587, type: !369, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyProperty_Type)
!1205 = !DIGlobalVariable(name: "descr_methods", scope: !0, file: !412, line: 416, type: !1206, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @descr_methods)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 512, align: 64, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 2)
!1209 = !DIGlobalVariable(name: "PyId_getattr", scope: !643, file: !412, line: 408, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @descr_reduce.PyId_getattr)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !23, line: 144, baseType: !1211)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !23, line: 140, size: 192, align: 64, elements: !1212)
!1212 = !{!1213, !1215, !1216}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1211, file: !23, line: 141, baseType: !1214, size: 64, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1211, file: !23, line: 142, baseType: !45, size: 64, align: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1211, file: !23, line: 143, baseType: !55, size: 64, align: 64, offset: 128)
!1217 = !DIGlobalVariable(name: "descr_members", scope: !0, file: !412, line: 421, type: !1218, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @descr_members)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 960, align: 64, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 3)
!1221 = !DIGlobalVariable(name: "method_getset", scope: !0, file: !412, line: 427, type: !1222, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @method_getset)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1280, align: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 4)
!1225 = !DIGlobalVariable(name: "PyId___qualname__", scope: !659, file: !412, line: 369, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @calculate_qualname.PyId___qualname__)
!1226 = !DIGlobalVariable(name: "member_getset", scope: !0, file: !412, line: 444, type: !1227, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @member_getset)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 960, align: 64, elements: !1219)
!1228 = !DIGlobalVariable(name: "getset_getset", scope: !0, file: !412, line: 460, type: !1227, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @getset_getset)
!1229 = !DIGlobalVariable(name: "wrapperdescr_getset", scope: !0, file: !412, line: 478, type: !1222, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @wrapperdescr_getset)
!1230 = !DIGlobalVariable(name: "mappingproxy_as_sequence", scope: !0, file: !412, line: 800, type: !190, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @mappingproxy_as_sequence)
!1231 = !DIGlobalVariable(name: "mappingproxy_as_mapping", scope: !0, file: !412, line: 785, type: !221, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @mappingproxy_as_mapping)
!1232 = !DIGlobalVariable(name: "mappingproxy_methods", scope: !0, file: !412, line: 855, type: !1233, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @mappingproxy_methods)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1536, align: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 6)
!1236 = !DIGlobalVariable(name: "PyId_get", scope: !886, file: !412, line: 817, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_get.PyId_get)
!1237 = !DIGlobalVariable(name: "PyId_keys", scope: !892, file: !412, line: 827, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_keys.PyId_keys)
!1238 = !DIGlobalVariable(name: "PyId_values", scope: !895, file: !412, line: 834, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_values.PyId_values)
!1239 = !DIGlobalVariable(name: "PyId_items", scope: !898, file: !412, line: 841, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_items.PyId_items)
!1240 = !DIGlobalVariable(name: "PyId_copy", scope: !901, file: !412, line: 848, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mappingproxy_copy.PyId_copy)
!1241 = !DIGlobalVariable(name: "kwlist", scope: !904, file: !412, line: 927, type: !1242, isLocal: true, isDefinition: true, variable: [2 x i8*]* @mappingproxy_new.kwlist)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !1207)
!1243 = !DIGlobalVariable(name: "wrapper_methods", scope: !0, file: !412, line: 1124, type: !1206, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @wrapper_methods)
!1244 = !DIGlobalVariable(name: "PyId_getattr", scope: !1018, file: !412, line: 1117, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @wrapper_reduce.PyId_getattr)
!1245 = !DIGlobalVariable(name: "wrapper_members", scope: !0, file: !412, line: 1129, type: !1246, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @wrapper_members)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 640, align: 64, elements: !1207)
!1247 = !DIGlobalVariable(name: "wrapper_getsets", scope: !0, file: !412, line: 1169, type: !1248, isLocal: true, isDefinition: true, variable: [6 x %struct.PyGetSetDef]* @wrapper_getsets)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1920, align: 64, elements: !1234)
!1249 = !DIGlobalVariable(name: "property_doc", scope: !0, file: !412, line: 1550, type: !1250, isLocal: true, isDefinition: true, variable: [760 x i8]* @property_doc)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 6080, align: 8, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 760)
!1253 = !DIGlobalVariable(name: "property_methods", scope: !0, file: !412, line: 1351, type: !1254, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @property_methods)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1024, align: 64, elements: !1223)
!1255 = !DIGlobalVariable(name: "getter_doc", scope: !0, file: !412, line: 1321, type: !1256, isLocal: true, isDefinition: true, variable: [47 x i8]* @getter_doc)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 376, align: 8, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 47)
!1259 = !DIGlobalVariable(name: "setter_doc", scope: !0, file: !412, line: 1331, type: !1256, isLocal: true, isDefinition: true, variable: [47 x i8]* @setter_doc)
!1260 = !DIGlobalVariable(name: "deleter_doc", scope: !0, file: !412, line: 1341, type: !1261, isLocal: true, isDefinition: true, variable: [48 x i8]* @deleter_doc)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 384, align: 8, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 48)
!1264 = !DIGlobalVariable(name: "property_members", scope: !0, file: !412, line: 1312, type: !1265, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMemberDef]* @property_members)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 1600, align: 64, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 5)
!1268 = !DIGlobalVariable(name: "property_getsetlist", scope: !0, file: !412, line: 1542, type: !1269, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @property_getsetlist)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 640, align: 64, elements: !1207)
!1270 = !DIGlobalVariable(name: "kwlist", scope: !1162, file: !412, line: 1456, type: !1271, isLocal: true, isDefinition: true, variable: [5 x i8*]* @property_init.kwlist)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 320, align: 64, elements: !1266)
!1272 = !DIGlobalVariable(name: "PyId___doc__", scope: !1162, file: !412, line: 1483, type: !1210, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @property_init.PyId___doc__)
!1273 = !{i32 2, !"Dwarf Version", i32 4}
!1274 = !{i32 2, !"Debug Info Version", i32 3}
!1275 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1276 = !{!1277, !1277, i64 0}
!1277 = !{!"any pointer", !1278, i64 0}
!1278 = !{!"omnipotent char", !1279, i64 0}
!1279 = !{!"Simple C/C++ TBAA"}
!1280 = !DIExpression()
!1281 = !DILocation(line: 7, column: 30, scope: !575)
!1282 = !DILocation(line: 9, column: 5, scope: !575)
!1283 = !DILocation(line: 9, column: 10, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !581, file: !412, discriminator: 1)
!1285 = !DILocation(line: 9, column: 21, scope: !581)
!1286 = !DILocation(line: 9, column: 40, scope: !581)
!1287 = !DILocation(line: 9, column: 26, scope: !581)
!1288 = !DILocation(line: 9, column: 46, scope: !581)
!1289 = !DILocation(line: 9, column: 65, scope: !581)
!1290 = !DILocation(line: 9, column: 90, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1292, file: !412, discriminator: 2)
!1292 = distinct !DILexicalBlock(scope: !581, file: !412, line: 9, column: 68)
!1293 = !DILocation(line: 9, column: 94, scope: !1292)
!1294 = !DILocation(line: 9, column: 97, scope: !1292)
!1295 = !{!1296, !1297, i64 16}
!1296 = !{!"", !1277, i64 0, !1277, i64 8, !1297, i64 16}
!1297 = !{!"long", !1278, i64 0}
!1298 = !DILocation(line: 9, column: 105, scope: !1292)
!1299 = !DILocation(line: 9, column: 132, scope: !1292)
!1300 = !DILocation(line: 9, column: 71, scope: !1292)
!1301 = !DILocation(line: 9, column: 75, scope: !1292)
!1302 = !DILocation(line: 9, column: 78, scope: !1292)
!1303 = !DILocation(line: 9, column: 86, scope: !1292)
!1304 = !DILocation(line: 9, column: 161, scope: !1292)
!1305 = !DILocation(line: 9, column: 161, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1292, file: !412, discriminator: 3)
!1307 = !DILocation(line: 9, column: 202, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !581, file: !412, discriminator: 4)
!1309 = !DILocation(line: 9, column: 205, scope: !581)
!1310 = !DILocation(line: 9, column: 208, scope: !581)
!1311 = !{!1296, !1277, i64 0}
!1312 = !DILocation(line: 9, column: 174, scope: !581)
!1313 = !DILocation(line: 9, column: 177, scope: !581)
!1314 = !DILocation(line: 9, column: 180, scope: !581)
!1315 = !{!1296, !1277, i64 8}
!1316 = !DILocation(line: 9, column: 189, scope: !581)
!1317 = !DILocation(line: 9, column: 192, scope: !581)
!1318 = !DILocation(line: 9, column: 200, scope: !581)
!1319 = !DILocation(line: 9, column: 245, scope: !581)
!1320 = !DILocation(line: 9, column: 248, scope: !581)
!1321 = !DILocation(line: 9, column: 251, scope: !581)
!1322 = !DILocation(line: 9, column: 217, scope: !581)
!1323 = !DILocation(line: 9, column: 220, scope: !581)
!1324 = !DILocation(line: 9, column: 223, scope: !581)
!1325 = !DILocation(line: 9, column: 232, scope: !581)
!1326 = !DILocation(line: 9, column: 235, scope: !581)
!1327 = !DILocation(line: 9, column: 243, scope: !581)
!1328 = !DILocation(line: 9, column: 260, scope: !581)
!1329 = !DILocation(line: 9, column: 263, scope: !581)
!1330 = !DILocation(line: 9, column: 266, scope: !581)
!1331 = !DILocation(line: 9, column: 274, scope: !581)
!1332 = !DILocation(line: 9, column: 288, scope: !575)
!1333 = !DILocation(line: 9, column: 288, scope: !581)
!1334 = !DILocation(line: 10, column: 5, scope: !575)
!1335 = !DILocation(line: 10, column: 10, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !583, file: !412, discriminator: 1)
!1337 = !DILocation(line: 10, column: 20, scope: !583)
!1338 = !DILocation(line: 10, column: 51, scope: !583)
!1339 = !DILocation(line: 10, column: 58, scope: !583)
!1340 = !{!1341, !1277, i64 16}
!1341 = !{!"", !1342, i64 0, !1277, i64 16, !1277, i64 24, !1277, i64 32}
!1342 = !{!"_object", !1297, i64 0, !1277, i64 8}
!1343 = !DILocation(line: 10, column: 38, scope: !583)
!1344 = !DILocation(line: 10, column: 71, scope: !586)
!1345 = !DILocation(line: 10, column: 87, scope: !586)
!1346 = !DILocation(line: 10, column: 71, scope: !583)
!1347 = !DILocation(line: 10, column: 102, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !586, file: !412, discriminator: 2)
!1349 = !DILocation(line: 10, column: 107, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !585, file: !412, discriminator: 4)
!1351 = !DILocation(line: 10, column: 117, scope: !585)
!1352 = !DILocation(line: 10, column: 147, scope: !585)
!1353 = !DILocation(line: 10, column: 173, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !585, file: !412, line: 10, column: 170)
!1355 = !DILocation(line: 10, column: 190, scope: !1354)
!1356 = !DILocation(line: 10, column: 170, scope: !1354)
!1357 = !{!1342, !1297, i64 0}
!1358 = !DILocation(line: 10, column: 200, scope: !1354)
!1359 = !DILocation(line: 10, column: 170, scope: !585)
!1360 = !DILocation(line: 10, column: 170, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !585, file: !412, discriminator: 5)
!1362 = !DILocation(line: 10, column: 231, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1354, file: !412, discriminator: 6)
!1364 = !DILocation(line: 10, column: 249, scope: !1354)
!1365 = !{!1342, !1277, i64 8}
!1366 = !DILocation(line: 10, column: 259, scope: !1354)
!1367 = !{!1368, !1277, i64 48}
!1368 = !{!"_typeobject", !1369, i64 0, !1277, i64 24, !1297, i64 32, !1297, i64 40, !1277, i64 48, !1277, i64 56, !1277, i64 64, !1277, i64 72, !1277, i64 80, !1277, i64 88, !1277, i64 96, !1277, i64 104, !1277, i64 112, !1277, i64 120, !1277, i64 128, !1277, i64 136, !1277, i64 144, !1277, i64 152, !1277, i64 160, !1297, i64 168, !1277, i64 176, !1277, i64 184, !1277, i64 192, !1277, i64 200, !1297, i64 208, !1277, i64 216, !1277, i64 224, !1277, i64 232, !1277, i64 240, !1277, i64 248, !1277, i64 256, !1277, i64 264, !1277, i64 272, !1277, i64 280, !1297, i64 288, !1277, i64 296, !1277, i64 304, !1277, i64 312, !1277, i64 320, !1277, i64 328, !1277, i64 336, !1277, i64 344, !1277, i64 352, !1277, i64 360, !1277, i64 368, !1277, i64 376, !1370, i64 384, !1277, i64 392}
!1369 = !{!"", !1342, i64 0, !1297, i64 16}
!1370 = !{!"int", !1278, i64 0}
!1371 = !DILocation(line: 10, column: 284, scope: !1354)
!1372 = !DILocation(line: 10, column: 215, scope: !1354)
!1373 = !DILocation(line: 10, column: 303, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !586, file: !412, discriminator: 7)
!1375 = !DILocation(line: 10, column: 303, scope: !585)
!1376 = !DILocation(line: 10, column: 303, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !585, file: !412, discriminator: 8)
!1378 = !DILocation(line: 10, column: 303, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !585, file: !412, discriminator: 9)
!1380 = !DILocation(line: 10, column: 316, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1382, file: !412, discriminator: 10)
!1382 = !DILexicalBlockFile(scope: !575, file: !412, discriminator: 3)
!1383 = !DILocation(line: 10, column: 316, scope: !583)
!1384 = !DILocation(line: 11, column: 5, scope: !575)
!1385 = !DILocation(line: 11, column: 10, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !588, file: !412, discriminator: 1)
!1387 = !DILocation(line: 11, column: 20, scope: !588)
!1388 = !DILocation(line: 11, column: 51, scope: !588)
!1389 = !DILocation(line: 11, column: 58, scope: !588)
!1390 = !{!1341, !1277, i64 24}
!1391 = !DILocation(line: 11, column: 71, scope: !591)
!1392 = !DILocation(line: 11, column: 87, scope: !591)
!1393 = !DILocation(line: 11, column: 71, scope: !588)
!1394 = !DILocation(line: 11, column: 102, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !591, file: !412, discriminator: 2)
!1396 = !DILocation(line: 11, column: 107, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !590, file: !412, discriminator: 4)
!1398 = !DILocation(line: 11, column: 117, scope: !590)
!1399 = !DILocation(line: 11, column: 147, scope: !590)
!1400 = !DILocation(line: 11, column: 173, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !590, file: !412, line: 11, column: 170)
!1402 = !DILocation(line: 11, column: 190, scope: !1401)
!1403 = !DILocation(line: 11, column: 170, scope: !1401)
!1404 = !DILocation(line: 11, column: 200, scope: !1401)
!1405 = !DILocation(line: 11, column: 170, scope: !590)
!1406 = !DILocation(line: 11, column: 170, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !590, file: !412, discriminator: 5)
!1408 = !DILocation(line: 11, column: 231, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1401, file: !412, discriminator: 6)
!1410 = !DILocation(line: 11, column: 249, scope: !1401)
!1411 = !DILocation(line: 11, column: 259, scope: !1401)
!1412 = !DILocation(line: 11, column: 284, scope: !1401)
!1413 = !DILocation(line: 11, column: 215, scope: !1401)
!1414 = !DILocation(line: 11, column: 303, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !591, file: !412, discriminator: 7)
!1416 = !DILocation(line: 11, column: 303, scope: !590)
!1417 = !DILocation(line: 11, column: 303, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !590, file: !412, discriminator: 8)
!1419 = !DILocation(line: 11, column: 303, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !590, file: !412, discriminator: 9)
!1421 = !DILocation(line: 11, column: 316, scope: !1381)
!1422 = !DILocation(line: 11, column: 316, scope: !588)
!1423 = !DILocation(line: 12, column: 5, scope: !575)
!1424 = !DILocation(line: 12, column: 10, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !593, file: !412, discriminator: 1)
!1426 = !DILocation(line: 12, column: 20, scope: !593)
!1427 = !DILocation(line: 12, column: 51, scope: !593)
!1428 = !DILocation(line: 12, column: 58, scope: !593)
!1429 = !{!1341, !1277, i64 32}
!1430 = !DILocation(line: 12, column: 75, scope: !596)
!1431 = !DILocation(line: 12, column: 91, scope: !596)
!1432 = !DILocation(line: 12, column: 75, scope: !593)
!1433 = !DILocation(line: 12, column: 106, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !596, file: !412, discriminator: 2)
!1435 = !DILocation(line: 12, column: 111, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !595, file: !412, discriminator: 4)
!1437 = !DILocation(line: 12, column: 121, scope: !595)
!1438 = !DILocation(line: 12, column: 151, scope: !595)
!1439 = !DILocation(line: 12, column: 177, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !595, file: !412, line: 12, column: 174)
!1441 = !DILocation(line: 12, column: 194, scope: !1440)
!1442 = !DILocation(line: 12, column: 174, scope: !1440)
!1443 = !DILocation(line: 12, column: 204, scope: !1440)
!1444 = !DILocation(line: 12, column: 174, scope: !595)
!1445 = !DILocation(line: 12, column: 174, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !595, file: !412, discriminator: 5)
!1447 = !DILocation(line: 12, column: 235, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1440, file: !412, discriminator: 6)
!1449 = !DILocation(line: 12, column: 253, scope: !1440)
!1450 = !DILocation(line: 12, column: 263, scope: !1440)
!1451 = !DILocation(line: 12, column: 288, scope: !1440)
!1452 = !DILocation(line: 12, column: 219, scope: !1440)
!1453 = !DILocation(line: 12, column: 307, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !596, file: !412, discriminator: 7)
!1455 = !DILocation(line: 12, column: 307, scope: !595)
!1456 = !DILocation(line: 12, column: 307, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !595, file: !412, discriminator: 8)
!1458 = !DILocation(line: 12, column: 307, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !595, file: !412, discriminator: 9)
!1460 = !DILocation(line: 12, column: 320, scope: !1381)
!1461 = !DILocation(line: 12, column: 320, scope: !593)
!1462 = !DILocation(line: 13, column: 21, scope: !575)
!1463 = !DILocation(line: 13, column: 5, scope: !575)
!1464 = !DILocation(line: 14, column: 1, scope: !575)
!1465 = !DILocation(line: 35, column: 34, scope: !597)
!1466 = !DILocation(line: 37, column: 40, scope: !597)
!1467 = !DILocation(line: 37, column: 23, scope: !597)
!1468 = !DILocation(line: 37, column: 12, scope: !597)
!1469 = !DILocation(line: 37, column: 5, scope: !597)
!1470 = !DILocation(line: 213, column: 39, scope: !609)
!1471 = !DILocation(line: 213, column: 56, scope: !609)
!1472 = !DILocation(line: 213, column: 72, scope: !609)
!1473 = !DILocation(line: 215, column: 5, scope: !609)
!1474 = !DILocation(line: 215, column: 16, scope: !609)
!1475 = !DILocation(line: 216, column: 5, scope: !609)
!1476 = !DILocation(line: 216, column: 15, scope: !609)
!1477 = !DILocation(line: 216, column: 22, scope: !609)
!1478 = !DILocation(line: 216, column: 29, scope: !609)
!1479 = !DILocation(line: 220, column: 29, scope: !609)
!1480 = !DILocation(line: 220, column: 14, scope: !609)
!1481 = !DILocation(line: 220, column: 37, scope: !609)
!1482 = !{!1369, !1297, i64 16}
!1483 = !DILocation(line: 220, column: 10, scope: !609)
!1484 = !{!1297, !1297, i64 0}
!1485 = !DILocation(line: 221, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !609, file: !412, line: 221, column: 9)
!1487 = !DILocation(line: 221, column: 14, scope: !1486)
!1488 = !DILocation(line: 221, column: 9, scope: !609)
!1489 = !DILocation(line: 222, column: 22, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !412, line: 221, column: 19)
!1491 = !DILocation(line: 225, column: 50, scope: !1490)
!1492 = !DILocation(line: 225, column: 33, scope: !1490)
!1493 = !DILocation(line: 225, column: 22, scope: !1490)
!1494 = !DILocation(line: 226, column: 42, scope: !1490)
!1495 = !DILocation(line: 226, column: 24, scope: !1490)
!1496 = !DILocation(line: 226, column: 51, scope: !1490)
!1497 = !DILocation(line: 226, column: 60, scope: !1490)
!1498 = !{!1368, !1277, i64 24}
!1499 = !DILocation(line: 222, column: 9, scope: !1490)
!1500 = !DILocation(line: 227, column: 9, scope: !1490)
!1501 = !DILocation(line: 229, column: 32, scope: !609)
!1502 = !DILocation(line: 229, column: 14, scope: !609)
!1503 = !DILocation(line: 229, column: 40, scope: !609)
!1504 = !DILocation(line: 229, column: 13, scope: !609)
!1505 = !DILocation(line: 229, column: 10, scope: !609)
!1506 = !DILocation(line: 230, column: 61, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !609, file: !412, line: 230, column: 9)
!1508 = !DILocation(line: 230, column: 69, scope: !1507)
!1509 = !DILocation(line: 230, column: 35, scope: !1507)
!1510 = !DILocation(line: 231, column: 67, scope: !1507)
!1511 = !DILocation(line: 231, column: 49, scope: !1507)
!1512 = !DILocation(line: 231, column: 76, scope: !1507)
!1513 = !DILocation(line: 231, column: 35, scope: !1507)
!1514 = !DILocation(line: 230, column: 10, scope: !1507)
!1515 = !DILocation(line: 230, column: 9, scope: !609)
!1516 = !DILocation(line: 232, column: 22, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1507, file: !412, line: 231, column: 86)
!1518 = !DILocation(line: 236, column: 50, scope: !1517)
!1519 = !DILocation(line: 236, column: 33, scope: !1517)
!1520 = !DILocation(line: 236, column: 22, scope: !1517)
!1521 = !DILocation(line: 237, column: 42, scope: !1517)
!1522 = !DILocation(line: 237, column: 24, scope: !1517)
!1523 = !DILocation(line: 237, column: 51, scope: !1517)
!1524 = !DILocation(line: 237, column: 60, scope: !1517)
!1525 = !DILocation(line: 238, column: 22, scope: !1517)
!1526 = !DILocation(line: 238, column: 28, scope: !1517)
!1527 = !DILocation(line: 238, column: 37, scope: !1517)
!1528 = !DILocation(line: 232, column: 9, scope: !1517)
!1529 = !DILocation(line: 239, column: 9, scope: !1517)
!1530 = !DILocation(line: 242, column: 30, scope: !609)
!1531 = !DILocation(line: 242, column: 37, scope: !609)
!1532 = !{!1533, !1277, i64 40}
!1533 = !{!"", !1341, i64 0, !1277, i64 40}
!1534 = !DILocation(line: 242, column: 47, scope: !609)
!1535 = !DILocation(line: 242, column: 12, scope: !609)
!1536 = !DILocation(line: 242, column: 10, scope: !609)
!1537 = !DILocation(line: 243, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !609, file: !412, line: 243, column: 9)
!1539 = !DILocation(line: 243, column: 14, scope: !1538)
!1540 = !DILocation(line: 243, column: 9, scope: !609)
!1541 = !DILocation(line: 244, column: 9, scope: !1538)
!1542 = !DILocation(line: 245, column: 29, scope: !609)
!1543 = !DILocation(line: 245, column: 38, scope: !609)
!1544 = !DILocation(line: 245, column: 12, scope: !609)
!1545 = !DILocation(line: 245, column: 10, scope: !609)
!1546 = !DILocation(line: 246, column: 9, scope: !623)
!1547 = !DILocation(line: 246, column: 14, scope: !623)
!1548 = !DILocation(line: 246, column: 9, scope: !609)
!1549 = !DILocation(line: 247, column: 9, scope: !622)
!1550 = !DILocation(line: 247, column: 14, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !621, file: !412, discriminator: 1)
!1552 = !DILocation(line: 247, column: 24, scope: !621)
!1553 = !DILocation(line: 247, column: 54, scope: !621)
!1554 = !DILocation(line: 247, column: 69, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !621, file: !412, line: 247, column: 66)
!1556 = !DILocation(line: 247, column: 86, scope: !1555)
!1557 = !DILocation(line: 247, column: 66, scope: !1555)
!1558 = !DILocation(line: 247, column: 96, scope: !1555)
!1559 = !DILocation(line: 247, column: 66, scope: !621)
!1560 = !DILocation(line: 247, column: 66, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !621, file: !412, discriminator: 2)
!1562 = !DILocation(line: 247, column: 127, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1555, file: !412, discriminator: 3)
!1564 = !DILocation(line: 247, column: 145, scope: !1555)
!1565 = !DILocation(line: 247, column: 155, scope: !1555)
!1566 = !DILocation(line: 247, column: 180, scope: !1555)
!1567 = !DILocation(line: 247, column: 111, scope: !1555)
!1568 = !DILocation(line: 247, column: 199, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !622, file: !412, discriminator: 4)
!1570 = !DILocation(line: 247, column: 199, scope: !621)
!1571 = !DILocation(line: 247, column: 199, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !621, file: !412, discriminator: 5)
!1573 = !DILocation(line: 248, column: 9, scope: !622)
!1574 = !DILocation(line: 250, column: 44, scope: !609)
!1575 = !DILocation(line: 250, column: 50, scope: !609)
!1576 = !DILocation(line: 250, column: 56, scope: !609)
!1577 = !DILocation(line: 250, column: 14, scope: !609)
!1578 = !DILocation(line: 250, column: 12, scope: !609)
!1579 = !DILocation(line: 251, column: 5, scope: !609)
!1580 = !DILocation(line: 251, column: 10, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !625, file: !412, discriminator: 1)
!1582 = !DILocation(line: 251, column: 20, scope: !625)
!1583 = !DILocation(line: 251, column: 50, scope: !625)
!1584 = !DILocation(line: 251, column: 65, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !625, file: !412, line: 251, column: 62)
!1586 = !DILocation(line: 251, column: 82, scope: !1585)
!1587 = !DILocation(line: 251, column: 62, scope: !1585)
!1588 = !DILocation(line: 251, column: 92, scope: !1585)
!1589 = !DILocation(line: 251, column: 62, scope: !625)
!1590 = !DILocation(line: 251, column: 62, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !625, file: !412, discriminator: 2)
!1592 = !DILocation(line: 251, column: 123, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1585, file: !412, discriminator: 3)
!1594 = !DILocation(line: 251, column: 141, scope: !1585)
!1595 = !DILocation(line: 251, column: 151, scope: !1585)
!1596 = !DILocation(line: 251, column: 176, scope: !1585)
!1597 = !DILocation(line: 251, column: 107, scope: !1585)
!1598 = !DILocation(line: 251, column: 195, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !609, file: !412, discriminator: 4)
!1600 = !DILocation(line: 251, column: 195, scope: !625)
!1601 = !DILocation(line: 251, column: 195, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !625, file: !412, discriminator: 5)
!1603 = !DILocation(line: 252, column: 5, scope: !609)
!1604 = !DILocation(line: 252, column: 10, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !627, file: !412, discriminator: 1)
!1606 = !DILocation(line: 252, column: 20, scope: !627)
!1607 = !DILocation(line: 252, column: 50, scope: !627)
!1608 = !DILocation(line: 252, column: 65, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !627, file: !412, line: 252, column: 62)
!1610 = !DILocation(line: 252, column: 82, scope: !1609)
!1611 = !DILocation(line: 252, column: 62, scope: !1609)
!1612 = !DILocation(line: 252, column: 92, scope: !1609)
!1613 = !DILocation(line: 252, column: 62, scope: !627)
!1614 = !DILocation(line: 252, column: 62, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !627, file: !412, discriminator: 2)
!1616 = !DILocation(line: 252, column: 123, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1609, file: !412, discriminator: 3)
!1618 = !DILocation(line: 252, column: 141, scope: !1609)
!1619 = !DILocation(line: 252, column: 151, scope: !1609)
!1620 = !DILocation(line: 252, column: 176, scope: !1609)
!1621 = !DILocation(line: 252, column: 107, scope: !1609)
!1622 = !DILocation(line: 252, column: 195, scope: !1599)
!1623 = !DILocation(line: 252, column: 195, scope: !627)
!1624 = !DILocation(line: 252, column: 195, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !627, file: !412, discriminator: 5)
!1626 = !DILocation(line: 253, column: 12, scope: !609)
!1627 = !DILocation(line: 253, column: 5, scope: !609)
!1628 = !DILocation(line: 254, column: 1, scope: !609)
!1629 = !DILocation(line: 486, column: 26, scope: !633)
!1630 = !DILocation(line: 486, column: 42, scope: !633)
!1631 = !DILocation(line: 486, column: 55, scope: !633)
!1632 = !DILocation(line: 488, column: 5, scope: !633)
!1633 = !DILocation(line: 488, column: 20, scope: !633)
!1634 = !DILocation(line: 488, column: 45, scope: !633)
!1635 = !DILocation(line: 488, column: 28, scope: !633)
!1636 = !DILocation(line: 489, column: 5, scope: !633)
!1637 = !DILocation(line: 489, column: 14, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !641, file: !412, discriminator: 1)
!1639 = !DILocation(line: 489, column: 21, scope: !641)
!1640 = !DILocation(line: 489, column: 14, scope: !641)
!1641 = !DILocation(line: 489, column: 14, scope: !642)
!1642 = !DILocation(line: 489, column: 31, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !640, file: !412, discriminator: 2)
!1644 = !DILocation(line: 489, column: 35, scope: !640)
!1645 = !DILocation(line: 489, column: 42, scope: !640)
!1646 = !DILocation(line: 489, column: 61, scope: !640)
!1647 = !DILocation(line: 489, column: 68, scope: !640)
!1648 = !DILocation(line: 489, column: 48, scope: !640)
!1649 = !DILocation(line: 489, column: 77, scope: !640)
!1650 = !{!1370, !1370, i64 0}
!1651 = !DILocation(line: 489, column: 87, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !640, file: !412, line: 489, column: 87)
!1653 = !DILocation(line: 489, column: 87, scope: !640)
!1654 = !DILocation(line: 489, column: 100, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1652, file: !412, discriminator: 4)
!1656 = !DILocation(line: 489, column: 93, scope: !1652)
!1657 = !DILocation(line: 489, column: 106, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !641, file: !412, discriminator: 5)
!1659 = !DILocation(line: 489, column: 106, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !412, discriminator: 7)
!1661 = !DILexicalBlockFile(scope: !641, file: !412, discriminator: 6)
!1662 = !DILocation(line: 489, column: 106, scope: !640)
!1663 = !DILocation(line: 489, column: 108, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1665, file: !412, discriminator: 8)
!1665 = !DILexicalBlockFile(scope: !642, file: !412, discriminator: 3)
!1666 = !DILocation(line: 489, column: 108, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !642, file: !412, discriminator: 9)
!1668 = !DILocation(line: 490, column: 5, scope: !633)
!1669 = !DILocation(line: 491, column: 1, scope: !633)
!1670 = !DILocation(line: 122, column: 33, scope: !677)
!1671 = !DILocation(line: 122, column: 50, scope: !677)
!1672 = !DILocation(line: 122, column: 65, scope: !677)
!1673 = !DILocation(line: 124, column: 5, scope: !677)
!1674 = !DILocation(line: 124, column: 15, scope: !677)
!1675 = !DILocation(line: 126, column: 38, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !677, file: !412, line: 126, column: 9)
!1677 = !DILocation(line: 126, column: 21, scope: !1676)
!1678 = !DILocation(line: 126, column: 45, scope: !1676)
!1679 = !DILocation(line: 126, column: 9, scope: !1676)
!1680 = !DILocation(line: 126, column: 9, scope: !677)
!1681 = !DILocation(line: 127, column: 16, scope: !1676)
!1682 = !DILocation(line: 127, column: 9, scope: !1676)
!1683 = !DILocation(line: 128, column: 30, scope: !677)
!1684 = !DILocation(line: 128, column: 37, scope: !677)
!1685 = !DILocation(line: 128, column: 47, scope: !677)
!1686 = !DILocation(line: 128, column: 12, scope: !677)
!1687 = !DILocation(line: 128, column: 5, scope: !677)
!1688 = !DILocation(line: 129, column: 1, scope: !677)
!1689 = !DILocation(line: 257, column: 44, scope: !691)
!1690 = !DILocation(line: 257, column: 61, scope: !691)
!1691 = !DILocation(line: 258, column: 33, scope: !691)
!1692 = !DILocation(line: 260, column: 5, scope: !691)
!1693 = !DILocation(line: 260, column: 16, scope: !691)
!1694 = !DILocation(line: 261, column: 5, scope: !691)
!1695 = !DILocation(line: 261, column: 15, scope: !691)
!1696 = !DILocation(line: 261, column: 22, scope: !691)
!1697 = !DILocation(line: 261, column: 29, scope: !691)
!1698 = !DILocation(line: 265, column: 29, scope: !691)
!1699 = !DILocation(line: 265, column: 14, scope: !691)
!1700 = !DILocation(line: 265, column: 37, scope: !691)
!1701 = !DILocation(line: 265, column: 10, scope: !691)
!1702 = !DILocation(line: 266, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !691, file: !412, line: 266, column: 9)
!1704 = !DILocation(line: 266, column: 14, scope: !1703)
!1705 = !DILocation(line: 266, column: 9, scope: !691)
!1706 = !DILocation(line: 267, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !412, line: 266, column: 19)
!1708 = !DILocation(line: 270, column: 50, scope: !1707)
!1709 = !DILocation(line: 270, column: 33, scope: !1707)
!1710 = !DILocation(line: 270, column: 22, scope: !1707)
!1711 = !DILocation(line: 271, column: 42, scope: !1707)
!1712 = !DILocation(line: 271, column: 24, scope: !1707)
!1713 = !DILocation(line: 271, column: 51, scope: !1707)
!1714 = !DILocation(line: 271, column: 60, scope: !1707)
!1715 = !DILocation(line: 267, column: 9, scope: !1707)
!1716 = !DILocation(line: 272, column: 9, scope: !1707)
!1717 = !DILocation(line: 274, column: 32, scope: !691)
!1718 = !DILocation(line: 274, column: 14, scope: !691)
!1719 = !DILocation(line: 274, column: 40, scope: !691)
!1720 = !DILocation(line: 274, column: 13, scope: !691)
!1721 = !DILocation(line: 274, column: 10, scope: !691)
!1722 = !DILocation(line: 275, column: 27, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !691, file: !412, line: 275, column: 9)
!1724 = !DILocation(line: 275, column: 35, scope: !1723)
!1725 = !DILocation(line: 275, column: 46, scope: !1723)
!1726 = !{!1368, !1297, i64 168}
!1727 = !DILocation(line: 275, column: 55, scope: !1723)
!1728 = !DILocation(line: 275, column: 72, scope: !1723)
!1729 = !DILocation(line: 275, column: 9, scope: !691)
!1730 = !DILocation(line: 276, column: 22, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1723, file: !412, line: 275, column: 79)
!1732 = !DILocation(line: 279, column: 50, scope: !1731)
!1733 = !DILocation(line: 279, column: 33, scope: !1731)
!1734 = !DILocation(line: 279, column: 22, scope: !1731)
!1735 = !DILocation(line: 280, column: 42, scope: !1731)
!1736 = !DILocation(line: 280, column: 24, scope: !1731)
!1737 = !DILocation(line: 280, column: 51, scope: !1731)
!1738 = !DILocation(line: 280, column: 60, scope: !1731)
!1739 = !DILocation(line: 281, column: 22, scope: !1731)
!1740 = !DILocation(line: 281, column: 28, scope: !1731)
!1741 = !DILocation(line: 281, column: 37, scope: !1731)
!1742 = !DILocation(line: 276, column: 9, scope: !1731)
!1743 = !DILocation(line: 282, column: 9, scope: !1731)
!1744 = !DILocation(line: 284, column: 43, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !691, file: !412, line: 284, column: 9)
!1746 = !DILocation(line: 284, column: 27, scope: !1745)
!1747 = !DILocation(line: 284, column: 69, scope: !1745)
!1748 = !DILocation(line: 284, column: 51, scope: !1745)
!1749 = !DILocation(line: 284, column: 78, scope: !1745)
!1750 = !DILocation(line: 284, column: 10, scope: !1745)
!1751 = !DILocation(line: 284, column: 9, scope: !691)
!1752 = !DILocation(line: 285, column: 22, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1745, file: !412, line: 284, column: 88)
!1754 = !DILocation(line: 289, column: 50, scope: !1753)
!1755 = !DILocation(line: 289, column: 33, scope: !1753)
!1756 = !DILocation(line: 289, column: 22, scope: !1753)
!1757 = !DILocation(line: 290, column: 42, scope: !1753)
!1758 = !DILocation(line: 290, column: 24, scope: !1753)
!1759 = !DILocation(line: 290, column: 51, scope: !1753)
!1760 = !DILocation(line: 290, column: 60, scope: !1753)
!1761 = !DILocation(line: 291, column: 22, scope: !1753)
!1762 = !DILocation(line: 291, column: 28, scope: !1753)
!1763 = !DILocation(line: 291, column: 37, scope: !1753)
!1764 = !DILocation(line: 285, column: 9, scope: !1753)
!1765 = !DILocation(line: 292, column: 9, scope: !1753)
!1766 = !DILocation(line: 295, column: 30, scope: !691)
!1767 = !DILocation(line: 295, column: 37, scope: !691)
!1768 = !DILocation(line: 295, column: 47, scope: !691)
!1769 = !DILocation(line: 295, column: 12, scope: !691)
!1770 = !DILocation(line: 295, column: 10, scope: !691)
!1771 = !DILocation(line: 296, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !691, file: !412, line: 296, column: 9)
!1773 = !DILocation(line: 296, column: 14, scope: !1772)
!1774 = !DILocation(line: 296, column: 9, scope: !691)
!1775 = !DILocation(line: 297, column: 9, scope: !1772)
!1776 = !DILocation(line: 298, column: 29, scope: !691)
!1777 = !DILocation(line: 298, column: 38, scope: !691)
!1778 = !DILocation(line: 298, column: 12, scope: !691)
!1779 = !DILocation(line: 298, column: 10, scope: !691)
!1780 = !DILocation(line: 299, column: 9, scope: !703)
!1781 = !DILocation(line: 299, column: 14, scope: !703)
!1782 = !DILocation(line: 299, column: 9, scope: !691)
!1783 = !DILocation(line: 300, column: 9, scope: !702)
!1784 = !DILocation(line: 300, column: 14, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !701, file: !412, discriminator: 1)
!1786 = !DILocation(line: 300, column: 24, scope: !701)
!1787 = !DILocation(line: 300, column: 54, scope: !701)
!1788 = !DILocation(line: 300, column: 69, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !701, file: !412, line: 300, column: 66)
!1790 = !DILocation(line: 300, column: 86, scope: !1789)
!1791 = !DILocation(line: 300, column: 66, scope: !1789)
!1792 = !DILocation(line: 300, column: 96, scope: !1789)
!1793 = !DILocation(line: 300, column: 66, scope: !701)
!1794 = !DILocation(line: 300, column: 66, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !701, file: !412, discriminator: 2)
!1796 = !DILocation(line: 300, column: 127, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1789, file: !412, discriminator: 3)
!1798 = !DILocation(line: 300, column: 145, scope: !1789)
!1799 = !DILocation(line: 300, column: 155, scope: !1789)
!1800 = !DILocation(line: 300, column: 180, scope: !1789)
!1801 = !DILocation(line: 300, column: 111, scope: !1789)
!1802 = !DILocation(line: 300, column: 199, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !702, file: !412, discriminator: 4)
!1804 = !DILocation(line: 300, column: 199, scope: !701)
!1805 = !DILocation(line: 300, column: 199, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !701, file: !412, discriminator: 5)
!1807 = !DILocation(line: 301, column: 9, scope: !702)
!1808 = !DILocation(line: 303, column: 44, scope: !691)
!1809 = !DILocation(line: 303, column: 50, scope: !691)
!1810 = !DILocation(line: 303, column: 56, scope: !691)
!1811 = !DILocation(line: 303, column: 14, scope: !691)
!1812 = !DILocation(line: 303, column: 12, scope: !691)
!1813 = !DILocation(line: 304, column: 5, scope: !691)
!1814 = !DILocation(line: 304, column: 10, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !705, file: !412, discriminator: 1)
!1816 = !DILocation(line: 304, column: 20, scope: !705)
!1817 = !DILocation(line: 304, column: 50, scope: !705)
!1818 = !DILocation(line: 304, column: 65, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !705, file: !412, line: 304, column: 62)
!1820 = !DILocation(line: 304, column: 82, scope: !1819)
!1821 = !DILocation(line: 304, column: 62, scope: !1819)
!1822 = !DILocation(line: 304, column: 92, scope: !1819)
!1823 = !DILocation(line: 304, column: 62, scope: !705)
!1824 = !DILocation(line: 304, column: 62, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !705, file: !412, discriminator: 2)
!1826 = !DILocation(line: 304, column: 123, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1819, file: !412, discriminator: 3)
!1828 = !DILocation(line: 304, column: 141, scope: !1819)
!1829 = !DILocation(line: 304, column: 151, scope: !1819)
!1830 = !DILocation(line: 304, column: 176, scope: !1819)
!1831 = !DILocation(line: 304, column: 107, scope: !1819)
!1832 = !DILocation(line: 304, column: 195, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !691, file: !412, discriminator: 4)
!1834 = !DILocation(line: 304, column: 195, scope: !705)
!1835 = !DILocation(line: 304, column: 195, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !705, file: !412, discriminator: 5)
!1837 = !DILocation(line: 305, column: 5, scope: !691)
!1838 = !DILocation(line: 305, column: 10, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !707, file: !412, discriminator: 1)
!1840 = !DILocation(line: 305, column: 20, scope: !707)
!1841 = !DILocation(line: 305, column: 50, scope: !707)
!1842 = !DILocation(line: 305, column: 65, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !707, file: !412, line: 305, column: 62)
!1844 = !DILocation(line: 305, column: 82, scope: !1843)
!1845 = !DILocation(line: 305, column: 62, scope: !1843)
!1846 = !DILocation(line: 305, column: 92, scope: !1843)
!1847 = !DILocation(line: 305, column: 62, scope: !707)
!1848 = !DILocation(line: 305, column: 62, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !707, file: !412, discriminator: 2)
!1850 = !DILocation(line: 305, column: 123, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1843, file: !412, discriminator: 3)
!1852 = !DILocation(line: 305, column: 141, scope: !1843)
!1853 = !DILocation(line: 305, column: 151, scope: !1843)
!1854 = !DILocation(line: 305, column: 176, scope: !1843)
!1855 = !DILocation(line: 305, column: 107, scope: !1843)
!1856 = !DILocation(line: 305, column: 195, scope: !1833)
!1857 = !DILocation(line: 305, column: 195, scope: !707)
!1858 = !DILocation(line: 305, column: 195, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !707, file: !412, discriminator: 5)
!1860 = !DILocation(line: 306, column: 12, scope: !691)
!1861 = !DILocation(line: 306, column: 5, scope: !691)
!1862 = !DILocation(line: 307, column: 1, scope: !691)
!1863 = !DILocation(line: 84, column: 38, scope: !708)
!1864 = !DILocation(line: 84, column: 55, scope: !708)
!1865 = !DILocation(line: 84, column: 70, scope: !708)
!1866 = !DILocation(line: 87, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !708, file: !412, line: 87, column: 9)
!1868 = !DILocation(line: 87, column: 14, scope: !1867)
!1869 = !DILocation(line: 87, column: 9, scope: !708)
!1870 = !DILocation(line: 88, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !412, line: 88, column: 13)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !412, line: 87, column: 29)
!1873 = !DILocation(line: 88, column: 17, scope: !1871)
!1874 = !DILocation(line: 88, column: 13, scope: !1872)
!1875 = !DILocation(line: 89, column: 32, scope: !1871)
!1876 = !DILocation(line: 89, column: 37, scope: !1871)
!1877 = !DILocation(line: 89, column: 20, scope: !1871)
!1878 = !DILocation(line: 89, column: 18, scope: !1871)
!1879 = !DILocation(line: 89, column: 13, scope: !1871)
!1880 = !DILocation(line: 92, column: 26, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1871, file: !412, line: 90, column: 14)
!1882 = !DILocation(line: 95, column: 54, scope: !1881)
!1883 = !DILocation(line: 95, column: 37, scope: !1881)
!1884 = !DILocation(line: 95, column: 26, scope: !1881)
!1885 = !DILocation(line: 96, column: 46, scope: !1881)
!1886 = !DILocation(line: 96, column: 28, scope: !1881)
!1887 = !DILocation(line: 96, column: 55, scope: !1881)
!1888 = !DILocation(line: 96, column: 64, scope: !1881)
!1889 = !DILocation(line: 92, column: 13, scope: !1881)
!1890 = !DILocation(line: 97, column: 13, scope: !1881)
!1891 = !DILocation(line: 99, column: 5, scope: !1872)
!1892 = !DILocation(line: 100, column: 27, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !708, file: !412, line: 100, column: 9)
!1894 = !DILocation(line: 100, column: 35, scope: !1893)
!1895 = !DILocation(line: 100, column: 46, scope: !1893)
!1896 = !DILocation(line: 100, column: 55, scope: !1893)
!1897 = !DILocation(line: 100, column: 72, scope: !1893)
!1898 = !DILocation(line: 100, column: 9, scope: !708)
!1899 = !DILocation(line: 101, column: 22, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !412, line: 100, column: 79)
!1901 = !DILocation(line: 104, column: 50, scope: !1900)
!1902 = !DILocation(line: 104, column: 33, scope: !1900)
!1903 = !DILocation(line: 104, column: 22, scope: !1900)
!1904 = !DILocation(line: 105, column: 42, scope: !1900)
!1905 = !DILocation(line: 105, column: 24, scope: !1900)
!1906 = !DILocation(line: 105, column: 51, scope: !1900)
!1907 = !DILocation(line: 105, column: 60, scope: !1900)
!1908 = !DILocation(line: 106, column: 22, scope: !1900)
!1909 = !DILocation(line: 106, column: 28, scope: !1900)
!1910 = !DILocation(line: 106, column: 37, scope: !1900)
!1911 = !DILocation(line: 101, column: 9, scope: !1900)
!1912 = !DILocation(line: 107, column: 9, scope: !1900)
!1913 = !DILocation(line: 109, column: 43, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !708, file: !412, line: 109, column: 9)
!1915 = !DILocation(line: 109, column: 27, scope: !1914)
!1916 = !DILocation(line: 109, column: 69, scope: !1914)
!1917 = !DILocation(line: 109, column: 51, scope: !1914)
!1918 = !DILocation(line: 109, column: 78, scope: !1914)
!1919 = !DILocation(line: 109, column: 10, scope: !1914)
!1920 = !DILocation(line: 109, column: 9, scope: !708)
!1921 = !DILocation(line: 110, column: 22, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1914, file: !412, line: 109, column: 88)
!1923 = !DILocation(line: 113, column: 50, scope: !1922)
!1924 = !DILocation(line: 113, column: 33, scope: !1922)
!1925 = !DILocation(line: 113, column: 22, scope: !1922)
!1926 = !DILocation(line: 114, column: 42, scope: !1922)
!1927 = !DILocation(line: 114, column: 24, scope: !1922)
!1928 = !DILocation(line: 114, column: 51, scope: !1922)
!1929 = !DILocation(line: 114, column: 60, scope: !1922)
!1930 = !DILocation(line: 115, column: 39, scope: !1922)
!1931 = !DILocation(line: 115, column: 23, scope: !1922)
!1932 = !DILocation(line: 115, column: 46, scope: !1922)
!1933 = !DILocation(line: 110, column: 9, scope: !1922)
!1934 = !DILocation(line: 116, column: 9, scope: !1922)
!1935 = !DILocation(line: 118, column: 30, scope: !708)
!1936 = !DILocation(line: 118, column: 37, scope: !708)
!1937 = !DILocation(line: 118, column: 47, scope: !708)
!1938 = !DILocation(line: 118, column: 12, scope: !708)
!1939 = !DILocation(line: 118, column: 5, scope: !708)
!1940 = !DILocation(line: 119, column: 1, scope: !708)
!1941 = !DILocation(line: 42, column: 34, scope: !713)
!1942 = !DILocation(line: 44, column: 40, scope: !713)
!1943 = !DILocation(line: 44, column: 23, scope: !713)
!1944 = !DILocation(line: 44, column: 12, scope: !713)
!1945 = !DILocation(line: 44, column: 5, scope: !713)
!1946 = !DILocation(line: 132, column: 33, scope: !724)
!1947 = !DILocation(line: 132, column: 50, scope: !724)
!1948 = !DILocation(line: 132, column: 65, scope: !724)
!1949 = !DILocation(line: 134, column: 5, scope: !724)
!1950 = !DILocation(line: 134, column: 15, scope: !724)
!1951 = !DILocation(line: 136, column: 38, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !724, file: !412, line: 136, column: 9)
!1953 = !DILocation(line: 136, column: 21, scope: !1952)
!1954 = !DILocation(line: 136, column: 45, scope: !1952)
!1955 = !DILocation(line: 136, column: 9, scope: !1952)
!1956 = !DILocation(line: 136, column: 9, scope: !724)
!1957 = !DILocation(line: 137, column: 16, scope: !1952)
!1958 = !DILocation(line: 137, column: 9, scope: !1952)
!1959 = !DILocation(line: 138, column: 36, scope: !724)
!1960 = !DILocation(line: 138, column: 28, scope: !724)
!1961 = !DILocation(line: 138, column: 41, scope: !724)
!1962 = !DILocation(line: 138, column: 48, scope: !724)
!1963 = !DILocation(line: 138, column: 12, scope: !724)
!1964 = !DILocation(line: 138, column: 5, scope: !724)
!1965 = !DILocation(line: 139, column: 1, scope: !724)
!1966 = !DILocation(line: 186, column: 33, scope: !732)
!1967 = !DILocation(line: 186, column: 50, scope: !732)
!1968 = !DILocation(line: 186, column: 65, scope: !732)
!1969 = !DILocation(line: 188, column: 5, scope: !732)
!1970 = !DILocation(line: 188, column: 9, scope: !732)
!1971 = !DILocation(line: 190, column: 41, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !732, file: !412, line: 190, column: 9)
!1973 = !DILocation(line: 190, column: 24, scope: !1972)
!1974 = !DILocation(line: 190, column: 48, scope: !1972)
!1975 = !DILocation(line: 190, column: 53, scope: !1972)
!1976 = !DILocation(line: 190, column: 9, scope: !1972)
!1977 = !DILocation(line: 190, column: 9, scope: !732)
!1978 = !DILocation(line: 191, column: 16, scope: !1972)
!1979 = !DILocation(line: 191, column: 9, scope: !1972)
!1980 = !DILocation(line: 192, column: 36, scope: !732)
!1981 = !DILocation(line: 192, column: 28, scope: !732)
!1982 = !DILocation(line: 192, column: 41, scope: !732)
!1983 = !DILocation(line: 192, column: 48, scope: !732)
!1984 = !DILocation(line: 192, column: 58, scope: !732)
!1985 = !DILocation(line: 192, column: 12, scope: !732)
!1986 = !DILocation(line: 192, column: 5, scope: !732)
!1987 = !DILocation(line: 193, column: 1, scope: !732)
!1988 = !DILocation(line: 49, column: 34, scope: !749)
!1989 = !DILocation(line: 51, column: 40, scope: !749)
!1990 = !DILocation(line: 51, column: 23, scope: !749)
!1991 = !DILocation(line: 51, column: 12, scope: !749)
!1992 = !DILocation(line: 51, column: 5, scope: !749)
!1993 = !DILocation(line: 142, column: 33, scope: !760)
!1994 = !DILocation(line: 142, column: 50, scope: !760)
!1995 = !DILocation(line: 142, column: 65, scope: !760)
!1996 = !DILocation(line: 144, column: 5, scope: !760)
!1997 = !DILocation(line: 144, column: 15, scope: !760)
!1998 = !DILocation(line: 146, column: 38, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !760, file: !412, line: 146, column: 9)
!2000 = !DILocation(line: 146, column: 21, scope: !1999)
!2001 = !DILocation(line: 146, column: 45, scope: !1999)
!2002 = !DILocation(line: 146, column: 9, scope: !1999)
!2003 = !DILocation(line: 146, column: 9, scope: !760)
!2004 = !DILocation(line: 147, column: 16, scope: !1999)
!2005 = !DILocation(line: 147, column: 9, scope: !1999)
!2006 = !DILocation(line: 148, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !760, file: !412, line: 148, column: 9)
!2008 = !DILocation(line: 148, column: 16, scope: !2007)
!2009 = !DILocation(line: 148, column: 26, scope: !2007)
!2010 = !{!2011, !1277, i64 8}
!2011 = !{!"PyGetSetDef", !1277, i64 0, !1277, i64 8, !1277, i64 16, !1277, i64 24, !1277, i64 32}
!2012 = !DILocation(line: 148, column: 30, scope: !2007)
!2013 = !DILocation(line: 148, column: 9, scope: !760)
!2014 = !DILocation(line: 149, column: 16, scope: !2007)
!2015 = !DILocation(line: 149, column: 23, scope: !2007)
!2016 = !DILocation(line: 149, column: 33, scope: !2007)
!2017 = !DILocation(line: 149, column: 37, scope: !2007)
!2018 = !DILocation(line: 149, column: 42, scope: !2007)
!2019 = !DILocation(line: 149, column: 49, scope: !2007)
!2020 = !DILocation(line: 149, column: 59, scope: !2007)
!2021 = !{!2011, !1277, i64 32}
!2022 = !DILocation(line: 149, column: 9, scope: !2007)
!2023 = !DILocation(line: 150, column: 18, scope: !760)
!2024 = !DILocation(line: 152, column: 46, scope: !760)
!2025 = !DILocation(line: 152, column: 29, scope: !760)
!2026 = !DILocation(line: 152, column: 18, scope: !760)
!2027 = !DILocation(line: 153, column: 38, scope: !760)
!2028 = !DILocation(line: 153, column: 20, scope: !760)
!2029 = !DILocation(line: 153, column: 47, scope: !760)
!2030 = !DILocation(line: 153, column: 56, scope: !760)
!2031 = !DILocation(line: 150, column: 5, scope: !760)
!2032 = !DILocation(line: 154, column: 5, scope: !760)
!2033 = !DILocation(line: 155, column: 1, scope: !760)
!2034 = !DILocation(line: 196, column: 33, scope: !768)
!2035 = !DILocation(line: 196, column: 50, scope: !768)
!2036 = !DILocation(line: 196, column: 65, scope: !768)
!2037 = !DILocation(line: 198, column: 5, scope: !768)
!2038 = !DILocation(line: 198, column: 9, scope: !768)
!2039 = !DILocation(line: 200, column: 41, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !768, file: !412, line: 200, column: 9)
!2041 = !DILocation(line: 200, column: 24, scope: !2040)
!2042 = !DILocation(line: 200, column: 48, scope: !2040)
!2043 = !DILocation(line: 200, column: 53, scope: !2040)
!2044 = !DILocation(line: 200, column: 9, scope: !2040)
!2045 = !DILocation(line: 200, column: 9, scope: !768)
!2046 = !DILocation(line: 201, column: 16, scope: !2040)
!2047 = !DILocation(line: 201, column: 9, scope: !2040)
!2048 = !DILocation(line: 202, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !768, file: !412, line: 202, column: 9)
!2050 = !DILocation(line: 202, column: 16, scope: !2049)
!2051 = !DILocation(line: 202, column: 26, scope: !2049)
!2052 = !{!2011, !1277, i64 16}
!2053 = !DILocation(line: 202, column: 30, scope: !2049)
!2054 = !DILocation(line: 202, column: 9, scope: !768)
!2055 = !DILocation(line: 203, column: 16, scope: !2049)
!2056 = !DILocation(line: 203, column: 23, scope: !2049)
!2057 = !DILocation(line: 203, column: 33, scope: !2049)
!2058 = !DILocation(line: 203, column: 37, scope: !2049)
!2059 = !DILocation(line: 203, column: 42, scope: !2049)
!2060 = !DILocation(line: 204, column: 37, scope: !2049)
!2061 = !DILocation(line: 204, column: 44, scope: !2049)
!2062 = !DILocation(line: 204, column: 54, scope: !2049)
!2063 = !DILocation(line: 203, column: 9, scope: !2049)
!2064 = !DILocation(line: 205, column: 18, scope: !768)
!2065 = !DILocation(line: 207, column: 46, scope: !768)
!2066 = !DILocation(line: 207, column: 29, scope: !768)
!2067 = !DILocation(line: 207, column: 18, scope: !768)
!2068 = !DILocation(line: 208, column: 38, scope: !768)
!2069 = !DILocation(line: 208, column: 20, scope: !768)
!2070 = !DILocation(line: 208, column: 47, scope: !768)
!2071 = !DILocation(line: 208, column: 56, scope: !768)
!2072 = !DILocation(line: 205, column: 5, scope: !768)
!2073 = !DILocation(line: 209, column: 5, scope: !768)
!2074 = !DILocation(line: 210, column: 1, scope: !768)
!2075 = !DILocation(line: 56, column: 41, scope: !776)
!2076 = !DILocation(line: 58, column: 40, scope: !776)
!2077 = !DILocation(line: 58, column: 23, scope: !776)
!2078 = !DILocation(line: 58, column: 12, scope: !776)
!2079 = !DILocation(line: 58, column: 5, scope: !776)
!2080 = !DILocation(line: 310, column: 41, scope: !781)
!2081 = !DILocation(line: 310, column: 58, scope: !781)
!2082 = !DILocation(line: 310, column: 74, scope: !781)
!2083 = !DILocation(line: 312, column: 5, scope: !781)
!2084 = !DILocation(line: 312, column: 16, scope: !781)
!2085 = !DILocation(line: 313, column: 5, scope: !781)
!2086 = !DILocation(line: 313, column: 15, scope: !781)
!2087 = !DILocation(line: 313, column: 22, scope: !781)
!2088 = !DILocation(line: 313, column: 29, scope: !781)
!2089 = !DILocation(line: 317, column: 29, scope: !781)
!2090 = !DILocation(line: 317, column: 14, scope: !781)
!2091 = !DILocation(line: 317, column: 37, scope: !781)
!2092 = !DILocation(line: 317, column: 10, scope: !781)
!2093 = !DILocation(line: 318, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !781, file: !412, line: 318, column: 9)
!2095 = !DILocation(line: 318, column: 14, scope: !2094)
!2096 = !DILocation(line: 318, column: 9, scope: !781)
!2097 = !DILocation(line: 319, column: 22, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !412, line: 318, column: 19)
!2099 = !DILocation(line: 322, column: 50, scope: !2098)
!2100 = !DILocation(line: 322, column: 33, scope: !2098)
!2101 = !DILocation(line: 322, column: 22, scope: !2098)
!2102 = !DILocation(line: 323, column: 42, scope: !2098)
!2103 = !DILocation(line: 323, column: 24, scope: !2098)
!2104 = !DILocation(line: 323, column: 51, scope: !2098)
!2105 = !DILocation(line: 323, column: 60, scope: !2098)
!2106 = !DILocation(line: 319, column: 9, scope: !2098)
!2107 = !DILocation(line: 324, column: 9, scope: !2098)
!2108 = !DILocation(line: 326, column: 32, scope: !781)
!2109 = !DILocation(line: 326, column: 14, scope: !781)
!2110 = !DILocation(line: 326, column: 40, scope: !781)
!2111 = !DILocation(line: 326, column: 13, scope: !781)
!2112 = !DILocation(line: 326, column: 10, scope: !781)
!2113 = !DILocation(line: 327, column: 61, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !781, file: !412, line: 327, column: 9)
!2115 = !DILocation(line: 327, column: 69, scope: !2114)
!2116 = !DILocation(line: 327, column: 35, scope: !2114)
!2117 = !DILocation(line: 328, column: 67, scope: !2114)
!2118 = !DILocation(line: 328, column: 49, scope: !2114)
!2119 = !DILocation(line: 328, column: 76, scope: !2114)
!2120 = !DILocation(line: 328, column: 35, scope: !2114)
!2121 = !DILocation(line: 327, column: 10, scope: !2114)
!2122 = !DILocation(line: 327, column: 9, scope: !781)
!2123 = !DILocation(line: 329, column: 22, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2114, file: !412, line: 328, column: 86)
!2125 = !DILocation(line: 333, column: 50, scope: !2124)
!2126 = !DILocation(line: 333, column: 33, scope: !2124)
!2127 = !DILocation(line: 333, column: 22, scope: !2124)
!2128 = !DILocation(line: 334, column: 42, scope: !2124)
!2129 = !DILocation(line: 334, column: 24, scope: !2124)
!2130 = !DILocation(line: 334, column: 51, scope: !2124)
!2131 = !DILocation(line: 334, column: 60, scope: !2124)
!2132 = !DILocation(line: 335, column: 22, scope: !2124)
!2133 = !DILocation(line: 335, column: 28, scope: !2124)
!2134 = !DILocation(line: 335, column: 37, scope: !2124)
!2135 = !DILocation(line: 329, column: 9, scope: !2124)
!2136 = !DILocation(line: 336, column: 9, scope: !2124)
!2137 = !DILocation(line: 339, column: 38, scope: !781)
!2138 = !DILocation(line: 339, column: 26, scope: !781)
!2139 = !DILocation(line: 339, column: 45, scope: !781)
!2140 = !DILocation(line: 339, column: 12, scope: !781)
!2141 = !DILocation(line: 339, column: 10, scope: !781)
!2142 = !DILocation(line: 340, column: 9, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !781, file: !412, line: 340, column: 9)
!2144 = !DILocation(line: 340, column: 14, scope: !2143)
!2145 = !DILocation(line: 340, column: 9, scope: !781)
!2146 = !DILocation(line: 341, column: 9, scope: !2143)
!2147 = !DILocation(line: 342, column: 29, scope: !781)
!2148 = !DILocation(line: 342, column: 38, scope: !781)
!2149 = !DILocation(line: 342, column: 12, scope: !781)
!2150 = !DILocation(line: 342, column: 10, scope: !781)
!2151 = !DILocation(line: 343, column: 9, scope: !795)
!2152 = !DILocation(line: 343, column: 14, scope: !795)
!2153 = !DILocation(line: 343, column: 9, scope: !781)
!2154 = !DILocation(line: 344, column: 9, scope: !794)
!2155 = !DILocation(line: 344, column: 14, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !793, file: !412, discriminator: 1)
!2157 = !DILocation(line: 344, column: 24, scope: !793)
!2158 = !DILocation(line: 344, column: 54, scope: !793)
!2159 = !DILocation(line: 344, column: 69, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !793, file: !412, line: 344, column: 66)
!2161 = !DILocation(line: 344, column: 86, scope: !2160)
!2162 = !DILocation(line: 344, column: 66, scope: !2160)
!2163 = !DILocation(line: 344, column: 96, scope: !2160)
!2164 = !DILocation(line: 344, column: 66, scope: !793)
!2165 = !DILocation(line: 344, column: 66, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !793, file: !412, discriminator: 2)
!2167 = !DILocation(line: 344, column: 127, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2160, file: !412, discriminator: 3)
!2169 = !DILocation(line: 344, column: 145, scope: !2160)
!2170 = !DILocation(line: 344, column: 155, scope: !2160)
!2171 = !DILocation(line: 344, column: 180, scope: !2160)
!2172 = !DILocation(line: 344, column: 111, scope: !2160)
!2173 = !DILocation(line: 344, column: 199, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !794, file: !412, discriminator: 4)
!2175 = !DILocation(line: 344, column: 199, scope: !793)
!2176 = !DILocation(line: 344, column: 199, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !793, file: !412, discriminator: 5)
!2178 = !DILocation(line: 345, column: 9, scope: !794)
!2179 = !DILocation(line: 347, column: 44, scope: !781)
!2180 = !DILocation(line: 347, column: 50, scope: !781)
!2181 = !DILocation(line: 347, column: 56, scope: !781)
!2182 = !DILocation(line: 347, column: 14, scope: !781)
!2183 = !DILocation(line: 347, column: 12, scope: !781)
!2184 = !DILocation(line: 348, column: 5, scope: !781)
!2185 = !DILocation(line: 348, column: 10, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !797, file: !412, discriminator: 1)
!2187 = !DILocation(line: 348, column: 20, scope: !797)
!2188 = !DILocation(line: 348, column: 50, scope: !797)
!2189 = !DILocation(line: 348, column: 65, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !797, file: !412, line: 348, column: 62)
!2191 = !DILocation(line: 348, column: 82, scope: !2190)
!2192 = !DILocation(line: 348, column: 62, scope: !2190)
!2193 = !DILocation(line: 348, column: 92, scope: !2190)
!2194 = !DILocation(line: 348, column: 62, scope: !797)
!2195 = !DILocation(line: 348, column: 62, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !797, file: !412, discriminator: 2)
!2197 = !DILocation(line: 348, column: 123, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2190, file: !412, discriminator: 3)
!2199 = !DILocation(line: 348, column: 141, scope: !2190)
!2200 = !DILocation(line: 348, column: 151, scope: !2190)
!2201 = !DILocation(line: 348, column: 176, scope: !2190)
!2202 = !DILocation(line: 348, column: 107, scope: !2190)
!2203 = !DILocation(line: 348, column: 195, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !781, file: !412, discriminator: 4)
!2205 = !DILocation(line: 348, column: 195, scope: !797)
!2206 = !DILocation(line: 348, column: 195, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !797, file: !412, discriminator: 5)
!2208 = !DILocation(line: 349, column: 5, scope: !781)
!2209 = !DILocation(line: 349, column: 10, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !799, file: !412, discriminator: 1)
!2211 = !DILocation(line: 349, column: 20, scope: !799)
!2212 = !DILocation(line: 349, column: 50, scope: !799)
!2213 = !DILocation(line: 349, column: 65, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !799, file: !412, line: 349, column: 62)
!2215 = !DILocation(line: 349, column: 82, scope: !2214)
!2216 = !DILocation(line: 349, column: 62, scope: !2214)
!2217 = !DILocation(line: 349, column: 92, scope: !2214)
!2218 = !DILocation(line: 349, column: 62, scope: !799)
!2219 = !DILocation(line: 349, column: 62, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !799, file: !412, discriminator: 2)
!2221 = !DILocation(line: 349, column: 123, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2214, file: !412, discriminator: 3)
!2223 = !DILocation(line: 349, column: 141, scope: !2214)
!2224 = !DILocation(line: 349, column: 151, scope: !2214)
!2225 = !DILocation(line: 349, column: 176, scope: !2214)
!2226 = !DILocation(line: 349, column: 107, scope: !2214)
!2227 = !DILocation(line: 349, column: 195, scope: !2204)
!2228 = !DILocation(line: 349, column: 195, scope: !799)
!2229 = !DILocation(line: 349, column: 195, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !799, file: !412, discriminator: 5)
!2231 = !DILocation(line: 350, column: 12, scope: !781)
!2232 = !DILocation(line: 350, column: 5, scope: !781)
!2233 = !DILocation(line: 351, column: 1, scope: !781)
!2234 = !DILocation(line: 158, column: 40, scope: !810)
!2235 = !DILocation(line: 158, column: 57, scope: !810)
!2236 = !DILocation(line: 158, column: 72, scope: !810)
!2237 = !DILocation(line: 160, column: 5, scope: !810)
!2238 = !DILocation(line: 160, column: 15, scope: !810)
!2239 = !DILocation(line: 162, column: 38, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !810, file: !412, line: 162, column: 9)
!2241 = !DILocation(line: 162, column: 21, scope: !2240)
!2242 = !DILocation(line: 162, column: 45, scope: !2240)
!2243 = !DILocation(line: 162, column: 9, scope: !2240)
!2244 = !DILocation(line: 162, column: 9, scope: !810)
!2245 = !DILocation(line: 163, column: 16, scope: !2240)
!2246 = !DILocation(line: 163, column: 9, scope: !2240)
!2247 = !DILocation(line: 164, column: 38, scope: !810)
!2248 = !DILocation(line: 164, column: 26, scope: !810)
!2249 = !DILocation(line: 164, column: 45, scope: !810)
!2250 = !DILocation(line: 164, column: 12, scope: !810)
!2251 = !DILocation(line: 164, column: 5, scope: !810)
!2252 = !DILocation(line: 165, column: 1, scope: !810)
!2253 = !DILocation(line: 701, column: 33, scope: !521)
!2254 = !DILocation(line: 701, column: 52, scope: !521)
!2255 = !DILocation(line: 703, column: 5, scope: !521)
!2256 = !DILocation(line: 703, column: 26, scope: !521)
!2257 = !DILocation(line: 706, column: 46, scope: !521)
!2258 = !DILocation(line: 706, column: 52, scope: !521)
!2259 = !DILocation(line: 706, column: 60, scope: !521)
!2260 = !{!2261, !1277, i64 0}
!2261 = !{!"PyMethodDef", !1277, i64 0, !1277, i64 8, !1370, i64 16, !1277, i64 24}
!2262 = !DILocation(line: 705, column: 36, scope: !521)
!2263 = !DILocation(line: 705, column: 13, scope: !521)
!2264 = !DILocation(line: 705, column: 11, scope: !521)
!2265 = !DILocation(line: 707, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !521, file: !412, line: 707, column: 9)
!2267 = !DILocation(line: 707, column: 15, scope: !2266)
!2268 = !DILocation(line: 707, column: 9, scope: !521)
!2269 = !DILocation(line: 708, column: 27, scope: !2266)
!2270 = !DILocation(line: 708, column: 9, scope: !2266)
!2271 = !DILocation(line: 708, column: 16, scope: !2266)
!2272 = !DILocation(line: 708, column: 25, scope: !2266)
!2273 = !DILocation(line: 709, column: 24, scope: !521)
!2274 = !DILocation(line: 709, column: 12, scope: !521)
!2275 = !DILocation(line: 710, column: 1, scope: !521)
!2276 = !DILocation(line: 709, column: 5, scope: !521)
!2277 = !DILocation(line: 680, column: 25, scope: !816)
!2278 = !DILocation(line: 680, column: 50, scope: !816)
!2279 = !DILocation(line: 680, column: 68, scope: !816)
!2280 = !DILocation(line: 682, column: 5, scope: !816)
!2281 = !DILocation(line: 682, column: 20, scope: !816)
!2282 = !DILocation(line: 684, column: 50, scope: !816)
!2283 = !DILocation(line: 684, column: 30, scope: !816)
!2284 = !DILocation(line: 684, column: 13, scope: !816)
!2285 = !DILocation(line: 684, column: 11, scope: !816)
!2286 = !DILocation(line: 685, column: 9, scope: !827)
!2287 = !DILocation(line: 685, column: 15, scope: !827)
!2288 = !DILocation(line: 685, column: 9, scope: !816)
!2289 = !DILocation(line: 686, column: 9, scope: !826)
!2290 = !DILocation(line: 686, column: 14, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !825, file: !412, discriminator: 1)
!2292 = !DILocation(line: 686, column: 24, scope: !825)
!2293 = !DILocation(line: 686, column: 55, scope: !825)
!2294 = !DILocation(line: 686, column: 42, scope: !825)
!2295 = !DILocation(line: 686, column: 66, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !825, file: !412, line: 686, column: 66)
!2297 = !DILocation(line: 686, column: 82, scope: !2296)
!2298 = !DILocation(line: 686, column: 66, scope: !825)
!2299 = !DILocation(line: 686, column: 113, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2296, file: !412, discriminator: 2)
!2301 = !DILocation(line: 686, column: 132, scope: !2296)
!2302 = !DILocation(line: 686, column: 141, scope: !2296)
!2303 = !DILocation(line: 686, column: 97, scope: !2296)
!2304 = !DILocation(line: 686, column: 146, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !412, discriminator: 4)
!2306 = !DILexicalBlockFile(scope: !826, file: !412, discriminator: 3)
!2307 = !DILocation(line: 686, column: 146, scope: !825)
!2308 = !DILocation(line: 686, column: 146, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !825, file: !412, discriminator: 5)
!2310 = !DILocation(line: 687, column: 25, scope: !826)
!2311 = !DILocation(line: 687, column: 9, scope: !826)
!2312 = !DILocation(line: 687, column: 16, scope: !826)
!2313 = !DILocation(line: 687, column: 23, scope: !826)
!2314 = !DILocation(line: 688, column: 52, scope: !826)
!2315 = !DILocation(line: 688, column: 25, scope: !826)
!2316 = !DILocation(line: 688, column: 9, scope: !826)
!2317 = !DILocation(line: 688, column: 16, scope: !826)
!2318 = !DILocation(line: 688, column: 23, scope: !826)
!2319 = !DILocation(line: 689, column: 13, scope: !831)
!2320 = !DILocation(line: 689, column: 20, scope: !831)
!2321 = !DILocation(line: 689, column: 27, scope: !831)
!2322 = !DILocation(line: 689, column: 13, scope: !826)
!2323 = !DILocation(line: 690, column: 13, scope: !830)
!2324 = !DILocation(line: 690, column: 18, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !829, file: !412, discriminator: 1)
!2326 = !DILocation(line: 690, column: 28, scope: !829)
!2327 = !DILocation(line: 690, column: 58, scope: !829)
!2328 = !DILocation(line: 690, column: 45, scope: !829)
!2329 = !DILocation(line: 690, column: 74, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !829, file: !412, line: 690, column: 71)
!2331 = !DILocation(line: 690, column: 91, scope: !2330)
!2332 = !DILocation(line: 690, column: 71, scope: !2330)
!2333 = !DILocation(line: 690, column: 101, scope: !2330)
!2334 = !DILocation(line: 690, column: 71, scope: !829)
!2335 = !DILocation(line: 690, column: 71, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !829, file: !412, discriminator: 2)
!2337 = !DILocation(line: 690, column: 132, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2330, file: !412, discriminator: 3)
!2339 = !DILocation(line: 690, column: 150, scope: !2330)
!2340 = !DILocation(line: 690, column: 160, scope: !2330)
!2341 = !DILocation(line: 690, column: 185, scope: !2330)
!2342 = !DILocation(line: 690, column: 116, scope: !2330)
!2343 = !DILocation(line: 690, column: 204, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !830, file: !412, discriminator: 4)
!2345 = !DILocation(line: 690, column: 204, scope: !829)
!2346 = !DILocation(line: 690, column: 204, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !829, file: !412, discriminator: 5)
!2348 = !DILocation(line: 691, column: 19, scope: !830)
!2349 = !DILocation(line: 692, column: 9, scope: !830)
!2350 = !DILocation(line: 694, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !831, file: !412, line: 693, column: 14)
!2352 = !DILocation(line: 694, column: 20, scope: !2351)
!2353 = !DILocation(line: 694, column: 31, scope: !2351)
!2354 = !DILocation(line: 696, column: 5, scope: !826)
!2355 = !DILocation(line: 697, column: 12, scope: !816)
!2356 = !DILocation(line: 698, column: 1, scope: !816)
!2357 = !DILocation(line: 697, column: 5, scope: !816)
!2358 = !DILocation(line: 713, column: 38, scope: !528)
!2359 = !DILocation(line: 713, column: 57, scope: !528)
!2360 = !DILocation(line: 715, column: 5, scope: !528)
!2361 = !DILocation(line: 715, column: 26, scope: !528)
!2362 = !DILocation(line: 718, column: 46, scope: !528)
!2363 = !DILocation(line: 718, column: 52, scope: !528)
!2364 = !DILocation(line: 718, column: 60, scope: !528)
!2365 = !DILocation(line: 717, column: 36, scope: !528)
!2366 = !DILocation(line: 717, column: 13, scope: !528)
!2367 = !DILocation(line: 717, column: 11, scope: !528)
!2368 = !DILocation(line: 719, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !528, file: !412, line: 719, column: 9)
!2370 = !DILocation(line: 719, column: 15, scope: !2369)
!2371 = !DILocation(line: 719, column: 9, scope: !528)
!2372 = !DILocation(line: 720, column: 27, scope: !2369)
!2373 = !DILocation(line: 720, column: 9, scope: !2369)
!2374 = !DILocation(line: 720, column: 16, scope: !2369)
!2375 = !DILocation(line: 720, column: 25, scope: !2369)
!2376 = !DILocation(line: 721, column: 24, scope: !528)
!2377 = !DILocation(line: 721, column: 12, scope: !528)
!2378 = !DILocation(line: 722, column: 1, scope: !528)
!2379 = !DILocation(line: 721, column: 5, scope: !528)
!2380 = !DILocation(line: 725, column: 33, scope: !533)
!2381 = !DILocation(line: 725, column: 52, scope: !533)
!2382 = !DILocation(line: 727, column: 5, scope: !533)
!2383 = !DILocation(line: 727, column: 26, scope: !533)
!2384 = !DILocation(line: 730, column: 46, scope: !533)
!2385 = !DILocation(line: 730, column: 52, scope: !533)
!2386 = !DILocation(line: 730, column: 60, scope: !533)
!2387 = !{!2388, !1277, i64 0}
!2388 = !{!"PyMemberDef", !1277, i64 0, !1370, i64 8, !1297, i64 16, !1370, i64 24, !1277, i64 32}
!2389 = !DILocation(line: 729, column: 36, scope: !533)
!2390 = !DILocation(line: 729, column: 13, scope: !533)
!2391 = !DILocation(line: 729, column: 11, scope: !533)
!2392 = !DILocation(line: 731, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !533, file: !412, line: 731, column: 9)
!2394 = !DILocation(line: 731, column: 15, scope: !2393)
!2395 = !DILocation(line: 731, column: 9, scope: !533)
!2396 = !DILocation(line: 732, column: 27, scope: !2393)
!2397 = !DILocation(line: 732, column: 9, scope: !2393)
!2398 = !DILocation(line: 732, column: 16, scope: !2393)
!2399 = !DILocation(line: 732, column: 25, scope: !2393)
!2400 = !DILocation(line: 733, column: 24, scope: !533)
!2401 = !DILocation(line: 733, column: 12, scope: !533)
!2402 = !DILocation(line: 734, column: 1, scope: !533)
!2403 = !DILocation(line: 733, column: 5, scope: !533)
!2404 = !DILocation(line: 737, column: 33, scope: !542)
!2405 = !DILocation(line: 737, column: 52, scope: !542)
!2406 = !DILocation(line: 739, column: 5, scope: !542)
!2407 = !DILocation(line: 739, column: 26, scope: !542)
!2408 = !DILocation(line: 742, column: 46, scope: !542)
!2409 = !DILocation(line: 742, column: 52, scope: !542)
!2410 = !DILocation(line: 742, column: 60, scope: !542)
!2411 = !{!2011, !1277, i64 0}
!2412 = !DILocation(line: 741, column: 36, scope: !542)
!2413 = !DILocation(line: 741, column: 13, scope: !542)
!2414 = !DILocation(line: 741, column: 11, scope: !542)
!2415 = !DILocation(line: 743, column: 9, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !542, file: !412, line: 743, column: 9)
!2417 = !DILocation(line: 743, column: 15, scope: !2416)
!2418 = !DILocation(line: 743, column: 9, scope: !542)
!2419 = !DILocation(line: 744, column: 27, scope: !2416)
!2420 = !DILocation(line: 744, column: 9, scope: !2416)
!2421 = !DILocation(line: 744, column: 16, scope: !2416)
!2422 = !DILocation(line: 744, column: 25, scope: !2416)
!2423 = !DILocation(line: 745, column: 24, scope: !542)
!2424 = !DILocation(line: 745, column: 12, scope: !542)
!2425 = !DILocation(line: 746, column: 1, scope: !542)
!2426 = !DILocation(line: 745, column: 5, scope: !542)
!2427 = !DILocation(line: 749, column: 34, scope: !549)
!2428 = !DILocation(line: 749, column: 60, scope: !549)
!2429 = !DILocation(line: 749, column: 72, scope: !549)
!2430 = !DILocation(line: 751, column: 5, scope: !549)
!2431 = !DILocation(line: 751, column: 27, scope: !549)
!2432 = !DILocation(line: 754, column: 46, scope: !549)
!2433 = !DILocation(line: 754, column: 52, scope: !549)
!2434 = !DILocation(line: 754, column: 58, scope: !549)
!2435 = !{!2436, !1277, i64 0}
!2436 = !{!"wrapperbase", !1277, i64 0, !1370, i64 8, !1277, i64 16, !1277, i64 24, !1277, i64 32, !1370, i64 40, !1277, i64 48}
!2437 = !DILocation(line: 753, column: 37, scope: !549)
!2438 = !DILocation(line: 753, column: 13, scope: !549)
!2439 = !DILocation(line: 753, column: 11, scope: !549)
!2440 = !DILocation(line: 755, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !549, file: !412, line: 755, column: 9)
!2442 = !DILocation(line: 755, column: 15, scope: !2441)
!2443 = !DILocation(line: 755, column: 9, scope: !549)
!2444 = !DILocation(line: 756, column: 25, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !412, line: 755, column: 30)
!2446 = !DILocation(line: 756, column: 9, scope: !2445)
!2447 = !DILocation(line: 756, column: 16, scope: !2445)
!2448 = !DILocation(line: 756, column: 23, scope: !2445)
!2449 = !{!2450, !1277, i64 40}
!2450 = !{!"", !1341, i64 0, !1277, i64 40, !1277, i64 48}
!2451 = !DILocation(line: 757, column: 28, scope: !2445)
!2452 = !DILocation(line: 757, column: 9, scope: !2445)
!2453 = !DILocation(line: 757, column: 16, scope: !2445)
!2454 = !DILocation(line: 757, column: 26, scope: !2445)
!2455 = !{!2450, !1277, i64 48}
!2456 = !DILocation(line: 758, column: 5, scope: !2445)
!2457 = !DILocation(line: 759, column: 24, scope: !549)
!2458 = !DILocation(line: 759, column: 12, scope: !549)
!2459 = !DILocation(line: 760, column: 1, scope: !549)
!2460 = !DILocation(line: 759, column: 5, scope: !549)
!2461 = !DILocation(line: 871, column: 42, scope: !832)
!2462 = !DILocation(line: 873, column: 5, scope: !832)
!2463 = !DILocation(line: 873, column: 10, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !838, file: !412, discriminator: 1)
!2465 = !DILocation(line: 873, column: 21, scope: !838)
!2466 = !DILocation(line: 873, column: 40, scope: !838)
!2467 = !DILocation(line: 873, column: 26, scope: !838)
!2468 = !DILocation(line: 873, column: 43, scope: !838)
!2469 = !DILocation(line: 873, column: 62, scope: !838)
!2470 = !DILocation(line: 873, column: 87, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2472, file: !412, discriminator: 2)
!2472 = distinct !DILexicalBlock(scope: !838, file: !412, line: 873, column: 65)
!2473 = !DILocation(line: 873, column: 91, scope: !2472)
!2474 = !DILocation(line: 873, column: 94, scope: !2472)
!2475 = !DILocation(line: 873, column: 102, scope: !2472)
!2476 = !DILocation(line: 873, column: 129, scope: !2472)
!2477 = !DILocation(line: 873, column: 68, scope: !2472)
!2478 = !DILocation(line: 873, column: 72, scope: !2472)
!2479 = !DILocation(line: 873, column: 75, scope: !2472)
!2480 = !DILocation(line: 873, column: 83, scope: !2472)
!2481 = !DILocation(line: 873, column: 158, scope: !2472)
!2482 = !DILocation(line: 873, column: 158, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2472, file: !412, discriminator: 3)
!2484 = !DILocation(line: 873, column: 199, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !838, file: !412, discriminator: 4)
!2486 = !DILocation(line: 873, column: 202, scope: !838)
!2487 = !DILocation(line: 873, column: 205, scope: !838)
!2488 = !DILocation(line: 873, column: 171, scope: !838)
!2489 = !DILocation(line: 873, column: 174, scope: !838)
!2490 = !DILocation(line: 873, column: 177, scope: !838)
!2491 = !DILocation(line: 873, column: 186, scope: !838)
!2492 = !DILocation(line: 873, column: 189, scope: !838)
!2493 = !DILocation(line: 873, column: 197, scope: !838)
!2494 = !DILocation(line: 873, column: 242, scope: !838)
!2495 = !DILocation(line: 873, column: 245, scope: !838)
!2496 = !DILocation(line: 873, column: 248, scope: !838)
!2497 = !DILocation(line: 873, column: 214, scope: !838)
!2498 = !DILocation(line: 873, column: 217, scope: !838)
!2499 = !DILocation(line: 873, column: 220, scope: !838)
!2500 = !DILocation(line: 873, column: 229, scope: !838)
!2501 = !DILocation(line: 873, column: 232, scope: !838)
!2502 = !DILocation(line: 873, column: 240, scope: !838)
!2503 = !DILocation(line: 873, column: 257, scope: !838)
!2504 = !DILocation(line: 873, column: 260, scope: !838)
!2505 = !DILocation(line: 873, column: 263, scope: !838)
!2506 = !DILocation(line: 873, column: 271, scope: !838)
!2507 = !DILocation(line: 873, column: 285, scope: !832)
!2508 = !DILocation(line: 873, column: 285, scope: !838)
!2509 = !DILocation(line: 874, column: 5, scope: !832)
!2510 = !DILocation(line: 874, column: 10, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !840, file: !412, discriminator: 1)
!2512 = !DILocation(line: 874, column: 20, scope: !840)
!2513 = !DILocation(line: 874, column: 50, scope: !840)
!2514 = !DILocation(line: 874, column: 54, scope: !840)
!2515 = !{!2516, !1277, i64 16}
!2516 = !{!"", !1342, i64 0, !1277, i64 16}
!2517 = !DILocation(line: 874, column: 72, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !840, file: !412, line: 874, column: 69)
!2519 = !DILocation(line: 874, column: 89, scope: !2518)
!2520 = !DILocation(line: 874, column: 69, scope: !2518)
!2521 = !DILocation(line: 874, column: 99, scope: !2518)
!2522 = !DILocation(line: 874, column: 69, scope: !840)
!2523 = !DILocation(line: 874, column: 69, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !840, file: !412, discriminator: 2)
!2525 = !DILocation(line: 874, column: 130, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2518, file: !412, discriminator: 3)
!2527 = !DILocation(line: 874, column: 148, scope: !2518)
!2528 = !DILocation(line: 874, column: 158, scope: !2518)
!2529 = !DILocation(line: 874, column: 183, scope: !2518)
!2530 = !DILocation(line: 874, column: 114, scope: !2518)
!2531 = !DILocation(line: 874, column: 202, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !832, file: !412, discriminator: 4)
!2533 = !DILocation(line: 874, column: 202, scope: !840)
!2534 = !DILocation(line: 875, column: 21, scope: !832)
!2535 = !DILocation(line: 875, column: 5, scope: !832)
!2536 = !DILocation(line: 876, column: 1, scope: !832)
!2537 = !DILocation(line: 891, column: 39, scope: !841)
!2538 = !DILocation(line: 893, column: 53, scope: !841)
!2539 = !DILocation(line: 893, column: 57, scope: !841)
!2540 = !DILocation(line: 893, column: 12, scope: !841)
!2541 = !DILocation(line: 893, column: 5, scope: !841)
!2542 = !DILocation(line: 885, column: 38, scope: !863)
!2543 = !DILocation(line: 887, column: 25, scope: !863)
!2544 = !DILocation(line: 887, column: 29, scope: !863)
!2545 = !DILocation(line: 887, column: 12, scope: !863)
!2546 = !DILocation(line: 887, column: 5, scope: !863)
!2547 = !DILocation(line: 897, column: 33, scope: !866)
!2548 = !DILocation(line: 897, column: 49, scope: !866)
!2549 = !DILocation(line: 897, column: 62, scope: !866)
!2550 = !DILocation(line: 899, column: 5, scope: !866)
!2551 = !DILocation(line: 899, column: 25, scope: !866)
!2552 = !DILocation(line: 899, column: 52, scope: !866)
!2553 = !DILocation(line: 899, column: 30, scope: !866)
!2554 = !DILocation(line: 900, column: 5, scope: !866)
!2555 = !DILocation(line: 900, column: 14, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !874, file: !412, discriminator: 1)
!2557 = !DILocation(line: 900, column: 18, scope: !874)
!2558 = !DILocation(line: 900, column: 14, scope: !874)
!2559 = !DILocation(line: 900, column: 14, scope: !875)
!2560 = !DILocation(line: 900, column: 29, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !873, file: !412, discriminator: 2)
!2562 = !DILocation(line: 900, column: 33, scope: !873)
!2563 = !DILocation(line: 900, column: 40, scope: !873)
!2564 = !DILocation(line: 900, column: 59, scope: !873)
!2565 = !DILocation(line: 900, column: 63, scope: !873)
!2566 = !DILocation(line: 900, column: 73, scope: !873)
!2567 = !DILocation(line: 900, column: 83, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !873, file: !412, line: 900, column: 83)
!2569 = !DILocation(line: 900, column: 83, scope: !873)
!2570 = !DILocation(line: 900, column: 96, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2568, file: !412, discriminator: 4)
!2572 = !DILocation(line: 900, column: 89, scope: !2568)
!2573 = !DILocation(line: 900, column: 102, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !874, file: !412, discriminator: 5)
!2575 = !DILocation(line: 900, column: 102, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2577, file: !412, discriminator: 7)
!2577 = !DILexicalBlockFile(scope: !874, file: !412, discriminator: 6)
!2578 = !DILocation(line: 900, column: 102, scope: !873)
!2579 = !DILocation(line: 900, column: 104, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2581, file: !412, discriminator: 8)
!2581 = !DILexicalBlockFile(scope: !875, file: !412, discriminator: 3)
!2582 = !DILocation(line: 900, column: 104, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !875, file: !412, discriminator: 9)
!2584 = !DILocation(line: 901, column: 5, scope: !866)
!2585 = !DILocation(line: 902, column: 1, scope: !866)
!2586 = !DILocation(line: 905, column: 46, scope: !876)
!2587 = !DILocation(line: 905, column: 59, scope: !876)
!2588 = !DILocation(line: 905, column: 66, scope: !876)
!2589 = !DILocation(line: 907, column: 33, scope: !876)
!2590 = !DILocation(line: 907, column: 36, scope: !876)
!2591 = !DILocation(line: 907, column: 45, scope: !876)
!2592 = !DILocation(line: 907, column: 48, scope: !876)
!2593 = !DILocation(line: 907, column: 12, scope: !876)
!2594 = !DILocation(line: 907, column: 5, scope: !876)
!2595 = !DILocation(line: 879, column: 42, scope: !883)
!2596 = !DILocation(line: 881, column: 29, scope: !883)
!2597 = !DILocation(line: 881, column: 33, scope: !883)
!2598 = !DILocation(line: 881, column: 12, scope: !883)
!2599 = !DILocation(line: 881, column: 5, scope: !883)
!2600 = !DILocation(line: 925, column: 32, scope: !904)
!2601 = !DILocation(line: 925, column: 48, scope: !904)
!2602 = !DILocation(line: 925, column: 64, scope: !904)
!2603 = !DILocation(line: 928, column: 5, scope: !904)
!2604 = !DILocation(line: 928, column: 15, scope: !904)
!2605 = !DILocation(line: 929, column: 5, scope: !904)
!2606 = !DILocation(line: 929, column: 25, scope: !904)
!2607 = !DILocation(line: 931, column: 38, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !904, file: !412, line: 931, column: 9)
!2609 = !DILocation(line: 931, column: 44, scope: !2608)
!2610 = !DILocation(line: 931, column: 10, scope: !2608)
!2611 = !DILocation(line: 931, column: 9, scope: !904)
!2612 = !DILocation(line: 933, column: 9, scope: !2608)
!2613 = !DILocation(line: 935, column: 36, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !904, file: !412, line: 935, column: 9)
!2615 = !DILocation(line: 935, column: 9, scope: !2614)
!2616 = !DILocation(line: 935, column: 45, scope: !2614)
!2617 = !DILocation(line: 935, column: 9, scope: !904)
!2618 = !DILocation(line: 936, column: 9, scope: !2614)
!2619 = !DILocation(line: 938, column: 45, scope: !904)
!2620 = !DILocation(line: 938, column: 22, scope: !904)
!2621 = !DILocation(line: 938, column: 18, scope: !904)
!2622 = !DILocation(line: 939, column: 9, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !904, file: !412, line: 939, column: 9)
!2624 = !DILocation(line: 939, column: 22, scope: !2623)
!2625 = !DILocation(line: 939, column: 9, scope: !904)
!2626 = !DILocation(line: 940, column: 9, scope: !2623)
!2627 = !DILocation(line: 941, column: 21, scope: !904)
!2628 = !DILocation(line: 941, column: 32, scope: !904)
!2629 = !DILocation(line: 941, column: 41, scope: !904)
!2630 = !DILocation(line: 942, column: 29, scope: !904)
!2631 = !DILocation(line: 942, column: 5, scope: !904)
!2632 = !DILocation(line: 942, column: 19, scope: !904)
!2633 = !DILocation(line: 942, column: 27, scope: !904)
!2634 = !DILocation(line: 943, column: 5, scope: !904)
!2635 = !DILocation(line: 943, column: 10, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !914, file: !412, discriminator: 1)
!2637 = !DILocation(line: 943, column: 21, scope: !914)
!2638 = !DILocation(line: 943, column: 40, scope: !914)
!2639 = !DILocation(line: 943, column: 26, scope: !914)
!2640 = !DILocation(line: 943, column: 53, scope: !914)
!2641 = !DILocation(line: 943, column: 64, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !914, file: !412, line: 943, column: 62)
!2643 = !DILocation(line: 943, column: 68, scope: !2642)
!2644 = !DILocation(line: 943, column: 71, scope: !2642)
!2645 = !DILocation(line: 943, column: 79, scope: !2642)
!2646 = !DILocation(line: 943, column: 87, scope: !2642)
!2647 = !DILocation(line: 943, column: 62, scope: !914)
!2648 = !DILocation(line: 943, column: 96, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2642, file: !412, discriminator: 2)
!2650 = !DILocation(line: 943, column: 140, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !914, file: !412, discriminator: 3)
!2652 = !DILocation(line: 943, column: 165, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !412, discriminator: 4)
!2654 = distinct !DILexicalBlock(scope: !914, file: !412, line: 943, column: 143)
!2655 = !DILocation(line: 943, column: 169, scope: !2654)
!2656 = !DILocation(line: 943, column: 172, scope: !2654)
!2657 = !DILocation(line: 943, column: 180, scope: !2654)
!2658 = !DILocation(line: 943, column: 207, scope: !2654)
!2659 = !DILocation(line: 943, column: 146, scope: !2654)
!2660 = !DILocation(line: 943, column: 150, scope: !2654)
!2661 = !DILocation(line: 943, column: 153, scope: !2654)
!2662 = !DILocation(line: 943, column: 161, scope: !2654)
!2663 = !DILocation(line: 943, column: 236, scope: !2654)
!2664 = !DILocation(line: 943, column: 236, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2654, file: !412, discriminator: 5)
!2666 = !DILocation(line: 943, column: 265, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !914, file: !412, discriminator: 6)
!2668 = !DILocation(line: 943, column: 249, scope: !914)
!2669 = !DILocation(line: 943, column: 252, scope: !914)
!2670 = !DILocation(line: 943, column: 255, scope: !914)
!2671 = !DILocation(line: 943, column: 263, scope: !914)
!2672 = !DILocation(line: 943, column: 300, scope: !914)
!2673 = !DILocation(line: 943, column: 319, scope: !914)
!2674 = !DILocation(line: 943, column: 322, scope: !914)
!2675 = !DILocation(line: 943, column: 284, scope: !914)
!2676 = !DILocation(line: 943, column: 287, scope: !914)
!2677 = !DILocation(line: 943, column: 290, scope: !914)
!2678 = !DILocation(line: 943, column: 298, scope: !914)
!2679 = !DILocation(line: 943, column: 359, scope: !914)
!2680 = !DILocation(line: 943, column: 331, scope: !914)
!2681 = !DILocation(line: 943, column: 334, scope: !914)
!2682 = !DILocation(line: 943, column: 337, scope: !914)
!2683 = !DILocation(line: 943, column: 346, scope: !914)
!2684 = !DILocation(line: 943, column: 349, scope: !914)
!2685 = !DILocation(line: 943, column: 357, scope: !914)
!2686 = !DILocation(line: 943, column: 394, scope: !914)
!2687 = !DILocation(line: 943, column: 362, scope: !914)
!2688 = !DILocation(line: 943, column: 381, scope: !914)
!2689 = !DILocation(line: 943, column: 384, scope: !914)
!2690 = !DILocation(line: 943, column: 392, scope: !914)
!2691 = !DILocation(line: 943, column: 397, scope: !904)
!2692 = !DILocation(line: 943, column: 397, scope: !914)
!2693 = !DILocation(line: 943, column: 397, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !914, file: !412, discriminator: 7)
!2695 = !DILocation(line: 944, column: 24, scope: !904)
!2696 = !DILocation(line: 944, column: 12, scope: !904)
!2697 = !DILocation(line: 944, column: 5, scope: !904)
!2698 = !DILocation(line: 945, column: 1, scope: !904)
!2699 = !DILocation(line: 990, column: 27, scope: !557)
!2700 = !DILocation(line: 992, column: 5, scope: !557)
!2701 = !DILocation(line: 992, column: 25, scope: !557)
!2702 = !DILocation(line: 994, column: 36, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !557, file: !412, line: 994, column: 9)
!2704 = !DILocation(line: 994, column: 9, scope: !2703)
!2705 = !DILocation(line: 994, column: 45, scope: !2703)
!2706 = !DILocation(line: 994, column: 9, scope: !557)
!2707 = !DILocation(line: 995, column: 9, scope: !2703)
!2708 = !DILocation(line: 997, column: 35, scope: !557)
!2709 = !DILocation(line: 997, column: 12, scope: !557)
!2710 = !DILocation(line: 997, column: 8, scope: !557)
!2711 = !DILocation(line: 998, column: 9, scope: !564)
!2712 = !DILocation(line: 998, column: 12, scope: !564)
!2713 = !DILocation(line: 998, column: 9, scope: !557)
!2714 = !DILocation(line: 999, column: 25, scope: !563)
!2715 = !DILocation(line: 999, column: 36, scope: !563)
!2716 = !DILocation(line: 999, column: 45, scope: !563)
!2717 = !DILocation(line: 1000, column: 23, scope: !563)
!2718 = !DILocation(line: 1000, column: 9, scope: !563)
!2719 = !DILocation(line: 1000, column: 13, scope: !563)
!2720 = !DILocation(line: 1000, column: 21, scope: !563)
!2721 = !DILocation(line: 1001, column: 9, scope: !563)
!2722 = !DILocation(line: 1001, column: 14, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !562, file: !412, discriminator: 1)
!2724 = !DILocation(line: 1001, column: 25, scope: !562)
!2725 = !DILocation(line: 1001, column: 44, scope: !562)
!2726 = !DILocation(line: 1001, column: 30, scope: !562)
!2727 = !DILocation(line: 1001, column: 47, scope: !562)
!2728 = !DILocation(line: 1001, column: 58, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !562, file: !412, line: 1001, column: 56)
!2730 = !DILocation(line: 1001, column: 62, scope: !2729)
!2731 = !DILocation(line: 1001, column: 65, scope: !2729)
!2732 = !DILocation(line: 1001, column: 73, scope: !2729)
!2733 = !DILocation(line: 1001, column: 81, scope: !2729)
!2734 = !DILocation(line: 1001, column: 56, scope: !562)
!2735 = !DILocation(line: 1001, column: 90, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2729, file: !412, discriminator: 2)
!2737 = !DILocation(line: 1001, column: 134, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !562, file: !412, discriminator: 3)
!2739 = !DILocation(line: 1001, column: 159, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2741, file: !412, discriminator: 4)
!2741 = distinct !DILexicalBlock(scope: !562, file: !412, line: 1001, column: 137)
!2742 = !DILocation(line: 1001, column: 163, scope: !2741)
!2743 = !DILocation(line: 1001, column: 166, scope: !2741)
!2744 = !DILocation(line: 1001, column: 174, scope: !2741)
!2745 = !DILocation(line: 1001, column: 201, scope: !2741)
!2746 = !DILocation(line: 1001, column: 140, scope: !2741)
!2747 = !DILocation(line: 1001, column: 144, scope: !2741)
!2748 = !DILocation(line: 1001, column: 147, scope: !2741)
!2749 = !DILocation(line: 1001, column: 155, scope: !2741)
!2750 = !DILocation(line: 1001, column: 230, scope: !2741)
!2751 = !DILocation(line: 1001, column: 230, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2741, file: !412, discriminator: 5)
!2753 = !DILocation(line: 1001, column: 259, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !562, file: !412, discriminator: 6)
!2755 = !DILocation(line: 1001, column: 243, scope: !562)
!2756 = !DILocation(line: 1001, column: 246, scope: !562)
!2757 = !DILocation(line: 1001, column: 249, scope: !562)
!2758 = !DILocation(line: 1001, column: 257, scope: !562)
!2759 = !DILocation(line: 1001, column: 294, scope: !562)
!2760 = !DILocation(line: 1001, column: 313, scope: !562)
!2761 = !DILocation(line: 1001, column: 316, scope: !562)
!2762 = !DILocation(line: 1001, column: 278, scope: !562)
!2763 = !DILocation(line: 1001, column: 281, scope: !562)
!2764 = !DILocation(line: 1001, column: 284, scope: !562)
!2765 = !DILocation(line: 1001, column: 292, scope: !562)
!2766 = !DILocation(line: 1001, column: 353, scope: !562)
!2767 = !DILocation(line: 1001, column: 325, scope: !562)
!2768 = !DILocation(line: 1001, column: 328, scope: !562)
!2769 = !DILocation(line: 1001, column: 331, scope: !562)
!2770 = !DILocation(line: 1001, column: 340, scope: !562)
!2771 = !DILocation(line: 1001, column: 343, scope: !562)
!2772 = !DILocation(line: 1001, column: 351, scope: !562)
!2773 = !DILocation(line: 1001, column: 388, scope: !562)
!2774 = !DILocation(line: 1001, column: 356, scope: !562)
!2775 = !DILocation(line: 1001, column: 375, scope: !562)
!2776 = !DILocation(line: 1001, column: 378, scope: !562)
!2777 = !DILocation(line: 1001, column: 386, scope: !562)
!2778 = !DILocation(line: 1001, column: 391, scope: !563)
!2779 = !DILocation(line: 1001, column: 391, scope: !562)
!2780 = !DILocation(line: 1001, column: 391, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !562, file: !412, discriminator: 7)
!2782 = !DILocation(line: 1002, column: 5, scope: !563)
!2783 = !DILocation(line: 1003, column: 24, scope: !557)
!2784 = !DILocation(line: 1003, column: 12, scope: !557)
!2785 = !DILocation(line: 1003, column: 5, scope: !557)
!2786 = !DILocation(line: 1004, column: 1, scope: !557)
!2787 = !DILocation(line: 911, column: 38, scope: !915)
!2788 = !DILocation(line: 913, column: 26, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !915, file: !412, line: 913, column: 9)
!2790 = !DILocation(line: 913, column: 10, scope: !2789)
!2791 = !DILocation(line: 914, column: 9, scope: !2789)
!2792 = !DILocation(line: 914, column: 29, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2789, file: !412, discriminator: 1)
!2794 = !DILocation(line: 914, column: 40, scope: !2789)
!2795 = !DILocation(line: 914, column: 51, scope: !2789)
!2796 = !DILocation(line: 914, column: 60, scope: !2789)
!2797 = !DILocation(line: 914, column: 77, scope: !2789)
!2798 = !DILocation(line: 915, column: 9, scope: !2789)
!2799 = !DILocation(line: 915, column: 29, scope: !2793)
!2800 = !DILocation(line: 915, column: 40, scope: !2789)
!2801 = !DILocation(line: 915, column: 51, scope: !2789)
!2802 = !DILocation(line: 915, column: 60, scope: !2789)
!2803 = !DILocation(line: 915, column: 77, scope: !2789)
!2804 = !DILocation(line: 913, column: 9, scope: !915)
!2805 = !DILocation(line: 916, column: 22, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2789, file: !412, line: 915, column: 84)
!2807 = !DILocation(line: 918, column: 35, scope: !2806)
!2808 = !DILocation(line: 918, column: 46, scope: !2806)
!2809 = !DILocation(line: 918, column: 56, scope: !2806)
!2810 = !DILocation(line: 916, column: 9, scope: !2806)
!2811 = !DILocation(line: 919, column: 9, scope: !2806)
!2812 = !DILocation(line: 921, column: 5, scope: !915)
!2813 = !DILocation(line: 922, column: 1, scope: !915)
!2814 = !DILocation(line: 1021, column: 32, scope: !918)
!2815 = !DILocation(line: 1023, column: 25, scope: !918)
!2816 = !DILocation(line: 1023, column: 5, scope: !918)
!2817 = !DILocation(line: 1024, column: 5, scope: !918)
!2818 = !DILocation(line: 1024, column: 10, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !924, file: !412, discriminator: 1)
!2820 = !DILocation(line: 1024, column: 25, scope: !924)
!2821 = !DILocation(line: 1024, column: 69, scope: !926)
!2822 = !DILocation(line: 1024, column: 105, scope: !926)
!2823 = !DILocation(line: 1024, column: 143, scope: !926)
!2824 = !DILocation(line: 1024, column: 174, scope: !926)
!2825 = !DILocation(line: 1024, column: 182, scope: !926)
!2826 = !DILocation(line: 1024, column: 211, scope: !926)
!2827 = !DILocation(line: 1024, column: 228, scope: !926)
!2828 = !DILocation(line: 1024, column: 240, scope: !926)
!2829 = !DILocation(line: 1024, column: 248, scope: !926)
!2830 = !DILocation(line: 1024, column: 265, scope: !926)
!2831 = !{!1278, !1278, i64 0}
!2832 = !DILocation(line: 1024, column: 325, scope: !926)
!2833 = !DILocation(line: 1024, column: 337, scope: !926)
!2834 = !DILocation(line: 1024, column: 299, scope: !926)
!2835 = !DILocation(line: 1024, column: 354, scope: !926)
!2836 = !DILocation(line: 1024, column: 456, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2838, file: !412, discriminator: 5)
!2838 = !DILexicalBlockFile(scope: !2839, file: !412, discriminator: 4)
!2839 = !DILexicalBlockFile(scope: !2840, file: !412, discriminator: 3)
!2840 = distinct !DILexicalBlock(scope: !926, file: !412, line: 1024, column: 361)
!2841 = !DILocation(line: 1024, column: 507, scope: !2840)
!2842 = !DILocation(line: 1024, column: 523, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2840, file: !412, discriminator: 2)
!2844 = !DILocation(line: 1024, column: 542, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2846, file: !412, discriminator: 7)
!2846 = !DILexicalBlockFile(scope: !926, file: !412, discriminator: 6)
!2847 = !DILocation(line: 1024, column: 541, scope: !926)
!2848 = !DILocation(line: 1024, column: 539, scope: !926)
!2849 = !DILocation(line: 1024, column: 564, scope: !926)
!2850 = !DILocation(line: 1024, column: 666, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2852, file: !412, discriminator: 11)
!2852 = !DILexicalBlockFile(scope: !2853, file: !412, discriminator: 10)
!2853 = !DILexicalBlockFile(scope: !2854, file: !412, discriminator: 9)
!2854 = distinct !DILexicalBlock(scope: !926, file: !412, line: 1024, column: 571)
!2855 = !DILocation(line: 1024, column: 717, scope: !2854)
!2856 = !DILocation(line: 1024, column: 733, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2854, file: !412, discriminator: 8)
!2858 = !DILocation(line: 1024, column: 744, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2860, file: !412, discriminator: 13)
!2860 = !DILexicalBlockFile(scope: !926, file: !412, discriminator: 12)
!2861 = !DILocation(line: 1024, column: 740, scope: !2854)
!2862 = !DILocation(line: 1024, column: 752, scope: !924)
!2863 = !DILocation(line: 1024, column: 752, scope: !926)
!2864 = !DILocation(line: 1024, column: 36, scope: !924)
!2865 = !DILocation(line: 1024, column: 761, scope: !941)
!2866 = !DILocation(line: 1024, column: 770, scope: !941)
!2867 = !{!2868, !1370, i64 160}
!2868 = !{!"_ts", !1277, i64 0, !1277, i64 8, !1277, i64 16, !1277, i64 24, !1370, i64 32, !1278, i64 36, !1278, i64 37, !1370, i64 40, !1370, i64 44, !1277, i64 48, !1277, i64 56, !1277, i64 64, !1277, i64 72, !1277, i64 80, !1277, i64 88, !1277, i64 96, !1277, i64 104, !1277, i64 112, !1277, i64 120, !1277, i64 128, !1370, i64 136, !1277, i64 144, !1297, i64 152, !1370, i64 160, !1277, i64 168, !1277, i64 176, !1277, i64 184}
!2869 = !DILocation(line: 1024, column: 791, scope: !941)
!2870 = !DILocation(line: 1024, column: 761, scope: !924)
!2871 = !DILocation(line: 1024, column: 801, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 14)
!2873 = !DILocation(line: 1024, column: 810, scope: !940)
!2874 = !DILocation(line: 1024, column: 799, scope: !940)
!2875 = !DILocation(line: 1025, column: 5, scope: !940)
!2876 = !DILocation(line: 1025, column: 10, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !939, file: !412, discriminator: 1)
!2878 = !DILocation(line: 1025, column: 20, scope: !939)
!2879 = !DILocation(line: 1025, column: 51, scope: !939)
!2880 = !DILocation(line: 1025, column: 55, scope: !939)
!2881 = !{!2882, !1277, i64 16}
!2882 = !{!"", !1342, i64 0, !1277, i64 16, !1277, i64 24}
!2883 = !DILocation(line: 1025, column: 38, scope: !939)
!2884 = !DILocation(line: 1025, column: 67, scope: !944)
!2885 = !DILocation(line: 1025, column: 83, scope: !944)
!2886 = !DILocation(line: 1025, column: 67, scope: !939)
!2887 = !DILocation(line: 1025, column: 98, scope: !2888)
!2888 = !DILexicalBlockFile(scope: !944, file: !412, discriminator: 2)
!2889 = !DILocation(line: 1025, column: 103, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !943, file: !412, discriminator: 4)
!2891 = !DILocation(line: 1025, column: 113, scope: !943)
!2892 = !DILocation(line: 1025, column: 143, scope: !943)
!2893 = !DILocation(line: 1025, column: 169, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !943, file: !412, line: 1025, column: 166)
!2895 = !DILocation(line: 1025, column: 186, scope: !2894)
!2896 = !DILocation(line: 1025, column: 166, scope: !2894)
!2897 = !DILocation(line: 1025, column: 196, scope: !2894)
!2898 = !DILocation(line: 1025, column: 166, scope: !943)
!2899 = !DILocation(line: 1025, column: 166, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !943, file: !412, discriminator: 5)
!2901 = !DILocation(line: 1025, column: 227, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2894, file: !412, discriminator: 6)
!2903 = !DILocation(line: 1025, column: 245, scope: !2894)
!2904 = !DILocation(line: 1025, column: 255, scope: !2894)
!2905 = !DILocation(line: 1025, column: 280, scope: !2894)
!2906 = !DILocation(line: 1025, column: 211, scope: !2894)
!2907 = !DILocation(line: 1025, column: 299, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !944, file: !412, discriminator: 7)
!2909 = !DILocation(line: 1025, column: 299, scope: !943)
!2910 = !DILocation(line: 1025, column: 299, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !943, file: !412, discriminator: 8)
!2912 = !DILocation(line: 1025, column: 299, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !943, file: !412, discriminator: 9)
!2914 = !DILocation(line: 1025, column: 312, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2916, file: !412, discriminator: 10)
!2916 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 3)
!2917 = !DILocation(line: 1025, column: 312, scope: !939)
!2918 = !DILocation(line: 1025, column: 312, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !939, file: !412, discriminator: 11)
!2920 = !DILocation(line: 1026, column: 5, scope: !940)
!2921 = !DILocation(line: 1026, column: 10, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !946, file: !412, discriminator: 1)
!2923 = !DILocation(line: 1026, column: 20, scope: !946)
!2924 = !DILocation(line: 1026, column: 51, scope: !946)
!2925 = !DILocation(line: 1026, column: 55, scope: !946)
!2926 = !{!2882, !1277, i64 24}
!2927 = !DILocation(line: 1026, column: 66, scope: !949)
!2928 = !DILocation(line: 1026, column: 82, scope: !949)
!2929 = !DILocation(line: 1026, column: 66, scope: !946)
!2930 = !DILocation(line: 1026, column: 97, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !949, file: !412, discriminator: 2)
!2932 = !DILocation(line: 1026, column: 102, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !948, file: !412, discriminator: 4)
!2934 = !DILocation(line: 1026, column: 112, scope: !948)
!2935 = !DILocation(line: 1026, column: 142, scope: !948)
!2936 = !DILocation(line: 1026, column: 168, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !948, file: !412, line: 1026, column: 165)
!2938 = !DILocation(line: 1026, column: 185, scope: !2937)
!2939 = !DILocation(line: 1026, column: 165, scope: !2937)
!2940 = !DILocation(line: 1026, column: 195, scope: !2937)
!2941 = !DILocation(line: 1026, column: 165, scope: !948)
!2942 = !DILocation(line: 1026, column: 165, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !948, file: !412, discriminator: 5)
!2944 = !DILocation(line: 1026, column: 226, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !2937, file: !412, discriminator: 6)
!2946 = !DILocation(line: 1026, column: 244, scope: !2937)
!2947 = !DILocation(line: 1026, column: 254, scope: !2937)
!2948 = !DILocation(line: 1026, column: 279, scope: !2937)
!2949 = !DILocation(line: 1026, column: 210, scope: !2937)
!2950 = !DILocation(line: 1026, column: 298, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !949, file: !412, discriminator: 7)
!2952 = !DILocation(line: 1026, column: 298, scope: !948)
!2953 = !DILocation(line: 1026, column: 298, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !948, file: !412, discriminator: 8)
!2955 = !DILocation(line: 1026, column: 298, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !948, file: !412, discriminator: 9)
!2957 = !DILocation(line: 1026, column: 311, scope: !2915)
!2958 = !DILocation(line: 1026, column: 311, scope: !946)
!2959 = !DILocation(line: 1026, column: 311, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !946, file: !412, discriminator: 11)
!2961 = !DILocation(line: 1027, column: 21, scope: !940)
!2962 = !DILocation(line: 1027, column: 5, scope: !940)
!2963 = !DILocation(line: 1028, column: 7, scope: !940)
!2964 = !DILocation(line: 1028, column: 16, scope: !940)
!2965 = !DILocation(line: 1028, column: 5, scope: !940)
!2966 = !DILocation(line: 1028, column: 42, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !940, file: !412, line: 1028, column: 42)
!2968 = !DILocation(line: 1028, column: 51, scope: !2967)
!2969 = !{!2868, !1277, i64 168}
!2970 = !DILocation(line: 1028, column: 70, scope: !2967)
!2971 = !DILocation(line: 1028, column: 73, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2967, file: !412, discriminator: 1)
!2973 = !DILocation(line: 1028, column: 82, scope: !2967)
!2974 = !DILocation(line: 1028, column: 103, scope: !2967)
!2975 = !DILocation(line: 1028, column: 42, scope: !940)
!2976 = !DILocation(line: 1028, column: 109, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2967, file: !412, discriminator: 3)
!2978 = !DILocation(line: 1028, column: 142, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2980, file: !412, discriminator: 5)
!2980 = !DILexicalBlockFile(scope: !2981, file: !412, discriminator: 4)
!2981 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 2)
!2982 = !DILocation(line: 1028, column: 191, scope: !941)
!2983 = !DILocation(line: 1028, column: 180, scope: !941)
!2984 = !DILocation(line: 1028, column: 149, scope: !941)
!2985 = !DILocation(line: 1028, column: 196, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !918, file: !412, discriminator: 6)
!2987 = !DILocation(line: 1028, column: 196, scope: !924)
!2988 = !DILocation(line: 1029, column: 1, scope: !918)
!2989 = !DILocation(line: 1104, column: 29, scope: !967)
!2990 = !DILocation(line: 1107, column: 32, scope: !967)
!2991 = !DILocation(line: 1107, column: 36, scope: !967)
!2992 = !DILocation(line: 1107, column: 43, scope: !967)
!2993 = !DILocation(line: 1107, column: 51, scope: !967)
!2994 = !DILocation(line: 1108, column: 32, scope: !967)
!2995 = !DILocation(line: 1108, column: 36, scope: !967)
!2996 = !DILocation(line: 1108, column: 42, scope: !967)
!2997 = !DILocation(line: 1108, column: 51, scope: !967)
!2998 = !DILocation(line: 1109, column: 32, scope: !967)
!2999 = !DILocation(line: 1109, column: 36, scope: !967)
!3000 = !DILocation(line: 1106, column: 12, scope: !967)
!3001 = !DILocation(line: 1106, column: 5, scope: !967)
!3002 = !DILocation(line: 1088, column: 29, scope: !972)
!3003 = !DILocation(line: 1090, column: 5, scope: !972)
!3004 = !DILocation(line: 1090, column: 15, scope: !972)
!3005 = !DILocation(line: 1090, column: 18, scope: !972)
!3006 = !DILocation(line: 1091, column: 25, scope: !972)
!3007 = !DILocation(line: 1091, column: 29, scope: !972)
!3008 = !DILocation(line: 1091, column: 9, scope: !972)
!3009 = !DILocation(line: 1091, column: 7, scope: !972)
!3010 = !DILocation(line: 1092, column: 9, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !972, file: !412, line: 1092, column: 9)
!3012 = !DILocation(line: 1092, column: 11, scope: !3011)
!3013 = !DILocation(line: 1092, column: 9, scope: !972)
!3014 = !DILocation(line: 1093, column: 9, scope: !3011)
!3015 = !DILocation(line: 1094, column: 23, scope: !972)
!3016 = !DILocation(line: 1094, column: 27, scope: !972)
!3017 = !DILocation(line: 1094, column: 9, scope: !972)
!3018 = !DILocation(line: 1094, column: 7, scope: !972)
!3019 = !DILocation(line: 1095, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !972, file: !412, line: 1095, column: 9)
!3021 = !DILocation(line: 1095, column: 11, scope: !3020)
!3022 = !DILocation(line: 1095, column: 9, scope: !972)
!3023 = !DILocation(line: 1096, column: 9, scope: !3020)
!3024 = !DILocation(line: 1097, column: 9, scope: !972)
!3025 = !DILocation(line: 1097, column: 13, scope: !972)
!3026 = !DILocation(line: 1097, column: 11, scope: !972)
!3027 = !DILocation(line: 1097, column: 7, scope: !972)
!3028 = !DILocation(line: 1098, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !972, file: !412, line: 1098, column: 9)
!3030 = !DILocation(line: 1098, column: 11, scope: !3029)
!3031 = !DILocation(line: 1098, column: 9, scope: !972)
!3032 = !DILocation(line: 1099, column: 11, scope: !3029)
!3033 = !DILocation(line: 1099, column: 9, scope: !3029)
!3034 = !DILocation(line: 1100, column: 12, scope: !972)
!3035 = !DILocation(line: 1100, column: 5, scope: !972)
!3036 = !DILocation(line: 1101, column: 1, scope: !972)
!3037 = !DILocation(line: 1179, column: 29, scope: !979)
!3038 = !DILocation(line: 1179, column: 43, scope: !979)
!3039 = !DILocation(line: 1179, column: 59, scope: !979)
!3040 = !DILocation(line: 1181, column: 5, scope: !979)
!3041 = !DILocation(line: 1181, column: 17, scope: !979)
!3042 = !DILocation(line: 1181, column: 27, scope: !979)
!3043 = !DILocation(line: 1181, column: 31, scope: !979)
!3044 = !DILocation(line: 1181, column: 38, scope: !979)
!3045 = !DILocation(line: 1181, column: 46, scope: !979)
!3046 = !{!2436, !1277, i64 24}
!3047 = !DILocation(line: 1182, column: 5, scope: !979)
!3048 = !DILocation(line: 1182, column: 15, scope: !979)
!3049 = !DILocation(line: 1182, column: 22, scope: !979)
!3050 = !DILocation(line: 1182, column: 26, scope: !979)
!3051 = !DILocation(line: 1184, column: 9, scope: !990)
!3052 = !DILocation(line: 1184, column: 13, scope: !990)
!3053 = !DILocation(line: 1184, column: 20, scope: !990)
!3054 = !DILocation(line: 1184, column: 28, scope: !990)
!3055 = !{!2436, !1370, i64 40}
!3056 = !DILocation(line: 1184, column: 34, scope: !990)
!3057 = !DILocation(line: 1184, column: 9, scope: !979)
!3058 = !DILocation(line: 1185, column: 9, scope: !989)
!3059 = !DILocation(line: 1185, column: 26, scope: !989)
!3060 = !DILocation(line: 1185, column: 49, scope: !989)
!3061 = !DILocation(line: 1185, column: 31, scope: !989)
!3062 = !DILocation(line: 1186, column: 18, scope: !989)
!3063 = !DILocation(line: 1186, column: 22, scope: !989)
!3064 = !DILocation(line: 1186, column: 28, scope: !989)
!3065 = !DILocation(line: 1186, column: 34, scope: !989)
!3066 = !DILocation(line: 1186, column: 38, scope: !989)
!3067 = !DILocation(line: 1186, column: 45, scope: !989)
!3068 = !DILocation(line: 1186, column: 56, scope: !989)
!3069 = !DILocation(line: 1186, column: 16, scope: !989)
!3070 = !DILocation(line: 1186, column: 9, scope: !989)
!3071 = !DILocation(line: 1187, column: 5, scope: !990)
!3072 = !DILocation(line: 1189, column: 9, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !979, file: !412, line: 1189, column: 9)
!3074 = !DILocation(line: 1189, column: 14, scope: !3073)
!3075 = !DILocation(line: 1189, column: 28, scope: !3073)
!3076 = !DILocation(line: 1189, column: 50, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !3073, file: !412, discriminator: 1)
!3078 = !DILocation(line: 1189, column: 58, scope: !3073)
!3079 = !DILocation(line: 1189, column: 69, scope: !3073)
!3080 = !DILocation(line: 1189, column: 78, scope: !3073)
!3081 = !DILocation(line: 1189, column: 95, scope: !3073)
!3082 = !DILocation(line: 1189, column: 101, scope: !3073)
!3083 = !DILocation(line: 1189, column: 116, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3073, file: !412, discriminator: 2)
!3085 = !DILocation(line: 1189, column: 104, scope: !3073)
!3086 = !DILocation(line: 1189, column: 122, scope: !3073)
!3087 = !DILocation(line: 1189, column: 9, scope: !979)
!3088 = !DILocation(line: 1190, column: 22, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3073, file: !412, line: 1189, column: 129)
!3090 = !DILocation(line: 1192, column: 22, scope: !3089)
!3091 = !DILocation(line: 1192, column: 26, scope: !3089)
!3092 = !DILocation(line: 1192, column: 33, scope: !3089)
!3093 = !DILocation(line: 1192, column: 41, scope: !3089)
!3094 = !DILocation(line: 1190, column: 9, scope: !3089)
!3095 = !DILocation(line: 1193, column: 9, scope: !3089)
!3096 = !DILocation(line: 1195, column: 14, scope: !979)
!3097 = !DILocation(line: 1195, column: 23, scope: !979)
!3098 = !DILocation(line: 1195, column: 29, scope: !979)
!3099 = !DILocation(line: 1195, column: 35, scope: !979)
!3100 = !DILocation(line: 1195, column: 39, scope: !979)
!3101 = !DILocation(line: 1195, column: 46, scope: !979)
!3102 = !DILocation(line: 1195, column: 12, scope: !979)
!3103 = !DILocation(line: 1195, column: 5, scope: !979)
!3104 = !DILocation(line: 1196, column: 1, scope: !979)
!3105 = !DILocation(line: 1199, column: 28, scope: !991)
!3106 = !DILocation(line: 1199, column: 44, scope: !991)
!3107 = !DILocation(line: 1199, column: 57, scope: !991)
!3108 = !DILocation(line: 1201, column: 5, scope: !991)
!3109 = !DILocation(line: 1201, column: 20, scope: !991)
!3110 = !DILocation(line: 1201, column: 42, scope: !991)
!3111 = !DILocation(line: 1201, column: 25, scope: !991)
!3112 = !DILocation(line: 1202, column: 5, scope: !991)
!3113 = !DILocation(line: 1202, column: 14, scope: !3114)
!3114 = !DILexicalBlockFile(scope: !999, file: !412, discriminator: 1)
!3115 = !DILocation(line: 1202, column: 18, scope: !999)
!3116 = !DILocation(line: 1202, column: 14, scope: !999)
!3117 = !DILocation(line: 1202, column: 14, scope: !1000)
!3118 = !DILocation(line: 1202, column: 27, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !998, file: !412, discriminator: 2)
!3120 = !DILocation(line: 1202, column: 31, scope: !998)
!3121 = !DILocation(line: 1202, column: 38, scope: !998)
!3122 = !DILocation(line: 1202, column: 57, scope: !998)
!3123 = !DILocation(line: 1202, column: 61, scope: !998)
!3124 = !DILocation(line: 1202, column: 44, scope: !998)
!3125 = !DILocation(line: 1202, column: 69, scope: !998)
!3126 = !DILocation(line: 1202, column: 79, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !998, file: !412, line: 1202, column: 79)
!3128 = !DILocation(line: 1202, column: 79, scope: !998)
!3129 = !DILocation(line: 1202, column: 92, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3127, file: !412, discriminator: 4)
!3131 = !DILocation(line: 1202, column: 85, scope: !3127)
!3132 = !DILocation(line: 1202, column: 98, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !999, file: !412, discriminator: 5)
!3134 = !DILocation(line: 1202, column: 98, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3136, file: !412, discriminator: 7)
!3136 = !DILexicalBlockFile(scope: !999, file: !412, discriminator: 6)
!3137 = !DILocation(line: 1202, column: 98, scope: !998)
!3138 = !DILocation(line: 1202, column: 100, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3140, file: !412, discriminator: 8)
!3140 = !DILexicalBlockFile(scope: !1000, file: !412, discriminator: 3)
!3141 = !DILocation(line: 1202, column: 100, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !1000, file: !412, discriminator: 9)
!3143 = !DILocation(line: 1203, column: 5, scope: !991)
!3144 = !DILocation(line: 1203, column: 14, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !1003, file: !412, discriminator: 1)
!3146 = !DILocation(line: 1203, column: 18, scope: !1003)
!3147 = !DILocation(line: 1203, column: 14, scope: !1003)
!3148 = !DILocation(line: 1203, column: 14, scope: !1004)
!3149 = !DILocation(line: 1203, column: 26, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !1002, file: !412, discriminator: 2)
!3151 = !DILocation(line: 1203, column: 30, scope: !1002)
!3152 = !DILocation(line: 1203, column: 37, scope: !1002)
!3153 = !DILocation(line: 1203, column: 56, scope: !1002)
!3154 = !DILocation(line: 1203, column: 60, scope: !1002)
!3155 = !DILocation(line: 1203, column: 67, scope: !1002)
!3156 = !DILocation(line: 1203, column: 77, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !1002, file: !412, line: 1203, column: 77)
!3158 = !DILocation(line: 1203, column: 77, scope: !1002)
!3159 = !DILocation(line: 1203, column: 90, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3157, file: !412, discriminator: 4)
!3161 = !DILocation(line: 1203, column: 83, scope: !3157)
!3162 = !DILocation(line: 1203, column: 96, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !1003, file: !412, discriminator: 5)
!3164 = !DILocation(line: 1203, column: 96, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3166, file: !412, discriminator: 7)
!3166 = !DILexicalBlockFile(scope: !1003, file: !412, discriminator: 6)
!3167 = !DILocation(line: 1203, column: 96, scope: !1002)
!3168 = !DILocation(line: 1203, column: 98, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3170, file: !412, discriminator: 8)
!3170 = !DILexicalBlockFile(scope: !1004, file: !412, discriminator: 3)
!3171 = !DILocation(line: 1203, column: 98, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !1004, file: !412, discriminator: 9)
!3173 = !DILocation(line: 1204, column: 5, scope: !991)
!3174 = !DILocation(line: 1205, column: 1, scope: !991)
!3175 = !DILocation(line: 1034, column: 31, scope: !1005)
!3176 = !DILocation(line: 1034, column: 44, scope: !1005)
!3177 = !DILocation(line: 1034, column: 51, scope: !1005)
!3178 = !DILocation(line: 1036, column: 5, scope: !1005)
!3179 = !DILocation(line: 1036, column: 17, scope: !1005)
!3180 = !DILocation(line: 1037, column: 5, scope: !1005)
!3181 = !DILocation(line: 1037, column: 15, scope: !1005)
!3182 = !DILocation(line: 1038, column: 5, scope: !1005)
!3183 = !DILocation(line: 1038, column: 27, scope: !1005)
!3184 = !DILocation(line: 1038, column: 37, scope: !1005)
!3185 = !DILocation(line: 1043, column: 25, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !1005, file: !412, line: 1043, column: 9)
!3187 = !DILocation(line: 1043, column: 30, scope: !3186)
!3188 = !DILocation(line: 1043, column: 39, scope: !3186)
!3189 = !DILocation(line: 1043, column: 66, scope: !3186)
!3190 = !DILocation(line: 1043, column: 85, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3186, file: !412, discriminator: 1)
!3192 = !DILocation(line: 1043, column: 90, scope: !3186)
!3193 = !DILocation(line: 1043, column: 99, scope: !3186)
!3194 = !DILocation(line: 1043, column: 9, scope: !1005)
!3195 = !DILocation(line: 1044, column: 11, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3186, file: !412, line: 1043, column: 127)
!3197 = !DILocation(line: 1045, column: 25, scope: !3196)
!3198 = !DILocation(line: 1045, column: 30, scope: !3196)
!3199 = !DILocation(line: 1045, column: 39, scope: !3196)
!3200 = !DILocation(line: 1046, column: 16, scope: !3196)
!3201 = !DILocation(line: 1046, column: 9, scope: !3196)
!3202 = !DILocation(line: 1051, column: 33, scope: !1005)
!3203 = !DILocation(line: 1051, column: 16, scope: !1005)
!3204 = !DILocation(line: 1051, column: 37, scope: !1005)
!3205 = !DILocation(line: 1051, column: 13, scope: !1005)
!3206 = !DILocation(line: 1052, column: 33, scope: !1005)
!3207 = !DILocation(line: 1052, column: 16, scope: !1005)
!3208 = !DILocation(line: 1052, column: 37, scope: !1005)
!3209 = !DILocation(line: 1052, column: 13, scope: !1005)
!3210 = !DILocation(line: 1053, column: 9, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !1005, file: !412, line: 1053, column: 9)
!3212 = !DILocation(line: 1053, column: 20, scope: !3211)
!3213 = !DILocation(line: 1053, column: 17, scope: !3211)
!3214 = !DILocation(line: 1053, column: 9, scope: !1005)
!3215 = !DILocation(line: 1054, column: 31, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !412, line: 1053, column: 29)
!3217 = !DILocation(line: 1054, column: 14, scope: !3216)
!3218 = !DILocation(line: 1054, column: 35, scope: !3216)
!3219 = !DILocation(line: 1054, column: 11, scope: !3216)
!3220 = !DILocation(line: 1055, column: 31, scope: !3216)
!3221 = !DILocation(line: 1055, column: 14, scope: !3216)
!3222 = !DILocation(line: 1055, column: 35, scope: !3216)
!3223 = !DILocation(line: 1055, column: 11, scope: !3216)
!3224 = !DILocation(line: 1056, column: 37, scope: !3216)
!3225 = !DILocation(line: 1056, column: 40, scope: !3216)
!3226 = !DILocation(line: 1056, column: 43, scope: !3216)
!3227 = !DILocation(line: 1056, column: 16, scope: !3216)
!3228 = !DILocation(line: 1056, column: 9, scope: !3216)
!3229 = !DILocation(line: 1059, column: 14, scope: !1005)
!3230 = !DILocation(line: 1059, column: 24, scope: !1005)
!3231 = !DILocation(line: 1059, column: 22, scope: !1005)
!3232 = !DILocation(line: 1059, column: 12, scope: !1005)
!3233 = !DILocation(line: 1060, column: 13, scope: !1005)
!3234 = !DILocation(line: 1062, column: 15, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !1005, file: !412, line: 1060, column: 17)
!3236 = !DILocation(line: 1062, column: 22, scope: !3235)
!3237 = !DILocation(line: 1062, column: 14, scope: !3235)
!3238 = !DILocation(line: 1062, column: 11, scope: !3235)
!3239 = !DILocation(line: 1063, column: 9, scope: !3235)
!3240 = !DILocation(line: 1065, column: 15, scope: !3235)
!3241 = !DILocation(line: 1065, column: 22, scope: !3235)
!3242 = !DILocation(line: 1065, column: 14, scope: !3235)
!3243 = !DILocation(line: 1065, column: 11, scope: !3235)
!3244 = !DILocation(line: 1066, column: 9, scope: !3235)
!3245 = !DILocation(line: 1068, column: 15, scope: !3235)
!3246 = !DILocation(line: 1068, column: 22, scope: !3235)
!3247 = !DILocation(line: 1068, column: 14, scope: !3235)
!3248 = !DILocation(line: 1068, column: 11, scope: !3235)
!3249 = !DILocation(line: 1069, column: 9, scope: !3235)
!3250 = !DILocation(line: 1071, column: 15, scope: !3235)
!3251 = !DILocation(line: 1071, column: 22, scope: !3235)
!3252 = !DILocation(line: 1071, column: 14, scope: !3235)
!3253 = !DILocation(line: 1071, column: 11, scope: !3235)
!3254 = !DILocation(line: 1072, column: 9, scope: !3235)
!3255 = !DILocation(line: 1074, column: 15, scope: !3235)
!3256 = !DILocation(line: 1074, column: 22, scope: !3235)
!3257 = !DILocation(line: 1074, column: 14, scope: !3235)
!3258 = !DILocation(line: 1074, column: 11, scope: !3235)
!3259 = !DILocation(line: 1075, column: 9, scope: !3235)
!3260 = !DILocation(line: 1077, column: 15, scope: !3235)
!3261 = !DILocation(line: 1077, column: 22, scope: !3235)
!3262 = !DILocation(line: 1077, column: 14, scope: !3235)
!3263 = !DILocation(line: 1077, column: 11, scope: !3235)
!3264 = !DILocation(line: 1078, column: 9, scope: !3235)
!3265 = !DILocation(line: 1080, column: 9, scope: !3235)
!3266 = !DILocation(line: 1081, column: 9, scope: !3235)
!3267 = !DILocation(line: 1083, column: 21, scope: !1005)
!3268 = !DILocation(line: 1083, column: 26, scope: !1005)
!3269 = !DILocation(line: 1083, column: 35, scope: !1005)
!3270 = !DILocation(line: 1084, column: 12, scope: !1005)
!3271 = !DILocation(line: 1084, column: 5, scope: !1005)
!3272 = !DILocation(line: 1085, column: 1, scope: !1005)
!3273 = !DILocation(line: 1246, column: 25, scope: !565)
!3274 = !DILocation(line: 1246, column: 38, scope: !565)
!3275 = !DILocation(line: 1248, column: 5, scope: !565)
!3276 = !DILocation(line: 1248, column: 20, scope: !565)
!3277 = !DILocation(line: 1249, column: 5, scope: !565)
!3278 = !DILocation(line: 1249, column: 27, scope: !565)
!3279 = !DILocation(line: 1252, column: 37, scope: !565)
!3280 = !DILocation(line: 1252, column: 13, scope: !565)
!3281 = !DILocation(line: 1252, column: 11, scope: !565)
!3282 = !DILocation(line: 1256, column: 30, scope: !565)
!3283 = !DILocation(line: 1256, column: 12, scope: !565)
!3284 = !DILocation(line: 1256, column: 8, scope: !565)
!3285 = !DILocation(line: 1257, column: 9, scope: !574)
!3286 = !DILocation(line: 1257, column: 12, scope: !574)
!3287 = !DILocation(line: 1257, column: 9, scope: !565)
!3288 = !DILocation(line: 1258, column: 25, scope: !573)
!3289 = !DILocation(line: 1258, column: 12, scope: !573)
!3290 = !DILocation(line: 1258, column: 34, scope: !573)
!3291 = !DILocation(line: 1258, column: 43, scope: !573)
!3292 = !DILocation(line: 1259, column: 21, scope: !573)
!3293 = !DILocation(line: 1259, column: 9, scope: !573)
!3294 = !DILocation(line: 1259, column: 13, scope: !573)
!3295 = !DILocation(line: 1259, column: 19, scope: !573)
!3296 = !DILocation(line: 1260, column: 25, scope: !573)
!3297 = !DILocation(line: 1260, column: 33, scope: !573)
!3298 = !DILocation(line: 1260, column: 42, scope: !573)
!3299 = !DILocation(line: 1261, column: 20, scope: !573)
!3300 = !DILocation(line: 1261, column: 9, scope: !573)
!3301 = !DILocation(line: 1261, column: 13, scope: !573)
!3302 = !DILocation(line: 1261, column: 18, scope: !573)
!3303 = !DILocation(line: 1262, column: 9, scope: !573)
!3304 = !DILocation(line: 1262, column: 14, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !572, file: !412, discriminator: 1)
!3306 = !DILocation(line: 1262, column: 25, scope: !572)
!3307 = !DILocation(line: 1262, column: 44, scope: !572)
!3308 = !DILocation(line: 1262, column: 30, scope: !572)
!3309 = !DILocation(line: 1262, column: 47, scope: !572)
!3310 = !DILocation(line: 1262, column: 58, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !572, file: !412, line: 1262, column: 56)
!3312 = !DILocation(line: 1262, column: 62, scope: !3311)
!3313 = !DILocation(line: 1262, column: 65, scope: !3311)
!3314 = !DILocation(line: 1262, column: 73, scope: !3311)
!3315 = !DILocation(line: 1262, column: 81, scope: !3311)
!3316 = !DILocation(line: 1262, column: 56, scope: !572)
!3317 = !DILocation(line: 1262, column: 90, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3311, file: !412, discriminator: 2)
!3319 = !DILocation(line: 1262, column: 134, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !572, file: !412, discriminator: 3)
!3321 = !DILocation(line: 1262, column: 159, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3323, file: !412, discriminator: 4)
!3323 = distinct !DILexicalBlock(scope: !572, file: !412, line: 1262, column: 137)
!3324 = !DILocation(line: 1262, column: 163, scope: !3323)
!3325 = !DILocation(line: 1262, column: 166, scope: !3323)
!3326 = !DILocation(line: 1262, column: 174, scope: !3323)
!3327 = !DILocation(line: 1262, column: 201, scope: !3323)
!3328 = !DILocation(line: 1262, column: 140, scope: !3323)
!3329 = !DILocation(line: 1262, column: 144, scope: !3323)
!3330 = !DILocation(line: 1262, column: 147, scope: !3323)
!3331 = !DILocation(line: 1262, column: 155, scope: !3323)
!3332 = !DILocation(line: 1262, column: 230, scope: !3323)
!3333 = !DILocation(line: 1262, column: 230, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !3323, file: !412, discriminator: 5)
!3335 = !DILocation(line: 1262, column: 259, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !572, file: !412, discriminator: 6)
!3337 = !DILocation(line: 1262, column: 243, scope: !572)
!3338 = !DILocation(line: 1262, column: 246, scope: !572)
!3339 = !DILocation(line: 1262, column: 249, scope: !572)
!3340 = !DILocation(line: 1262, column: 257, scope: !572)
!3341 = !DILocation(line: 1262, column: 294, scope: !572)
!3342 = !DILocation(line: 1262, column: 313, scope: !572)
!3343 = !DILocation(line: 1262, column: 316, scope: !572)
!3344 = !DILocation(line: 1262, column: 278, scope: !572)
!3345 = !DILocation(line: 1262, column: 281, scope: !572)
!3346 = !DILocation(line: 1262, column: 284, scope: !572)
!3347 = !DILocation(line: 1262, column: 292, scope: !572)
!3348 = !DILocation(line: 1262, column: 353, scope: !572)
!3349 = !DILocation(line: 1262, column: 325, scope: !572)
!3350 = !DILocation(line: 1262, column: 328, scope: !572)
!3351 = !DILocation(line: 1262, column: 331, scope: !572)
!3352 = !DILocation(line: 1262, column: 340, scope: !572)
!3353 = !DILocation(line: 1262, column: 343, scope: !572)
!3354 = !DILocation(line: 1262, column: 351, scope: !572)
!3355 = !DILocation(line: 1262, column: 388, scope: !572)
!3356 = !DILocation(line: 1262, column: 356, scope: !572)
!3357 = !DILocation(line: 1262, column: 375, scope: !572)
!3358 = !DILocation(line: 1262, column: 378, scope: !572)
!3359 = !DILocation(line: 1262, column: 386, scope: !572)
!3360 = !DILocation(line: 1262, column: 391, scope: !573)
!3361 = !DILocation(line: 1262, column: 391, scope: !572)
!3362 = !DILocation(line: 1262, column: 391, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !572, file: !412, discriminator: 7)
!3364 = !DILocation(line: 1263, column: 5, scope: !573)
!3365 = !DILocation(line: 1264, column: 24, scope: !565)
!3366 = !DILocation(line: 1264, column: 12, scope: !565)
!3367 = !DILocation(line: 1265, column: 1, scope: !565)
!3368 = !DILocation(line: 1264, column: 5, scope: !565)
!3369 = !DILocation(line: 1360, column: 28, scope: !1044)
!3370 = !DILocation(line: 1362, column: 5, scope: !1044)
!3371 = !DILocation(line: 1362, column: 21, scope: !1044)
!3372 = !DILocation(line: 1362, column: 44, scope: !1044)
!3373 = !DILocation(line: 1362, column: 26, scope: !1044)
!3374 = !DILocation(line: 1364, column: 5, scope: !1044)
!3375 = !DILocation(line: 1364, column: 10, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !1049, file: !412, discriminator: 1)
!3377 = !DILocation(line: 1364, column: 21, scope: !1049)
!3378 = !DILocation(line: 1364, column: 40, scope: !1049)
!3379 = !DILocation(line: 1364, column: 26, scope: !1049)
!3380 = !DILocation(line: 1364, column: 45, scope: !1049)
!3381 = !DILocation(line: 1364, column: 64, scope: !1049)
!3382 = !DILocation(line: 1364, column: 89, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3384, file: !412, discriminator: 2)
!3384 = distinct !DILexicalBlock(scope: !1049, file: !412, line: 1364, column: 67)
!3385 = !DILocation(line: 1364, column: 93, scope: !3384)
!3386 = !DILocation(line: 1364, column: 96, scope: !3384)
!3387 = !DILocation(line: 1364, column: 104, scope: !3384)
!3388 = !DILocation(line: 1364, column: 131, scope: !3384)
!3389 = !DILocation(line: 1364, column: 70, scope: !3384)
!3390 = !DILocation(line: 1364, column: 74, scope: !3384)
!3391 = !DILocation(line: 1364, column: 77, scope: !3384)
!3392 = !DILocation(line: 1364, column: 85, scope: !3384)
!3393 = !DILocation(line: 1364, column: 160, scope: !3384)
!3394 = !DILocation(line: 1364, column: 160, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3384, file: !412, discriminator: 3)
!3396 = !DILocation(line: 1364, column: 201, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !1049, file: !412, discriminator: 4)
!3398 = !DILocation(line: 1364, column: 204, scope: !1049)
!3399 = !DILocation(line: 1364, column: 207, scope: !1049)
!3400 = !DILocation(line: 1364, column: 173, scope: !1049)
!3401 = !DILocation(line: 1364, column: 176, scope: !1049)
!3402 = !DILocation(line: 1364, column: 179, scope: !1049)
!3403 = !DILocation(line: 1364, column: 188, scope: !1049)
!3404 = !DILocation(line: 1364, column: 191, scope: !1049)
!3405 = !DILocation(line: 1364, column: 199, scope: !1049)
!3406 = !DILocation(line: 1364, column: 244, scope: !1049)
!3407 = !DILocation(line: 1364, column: 247, scope: !1049)
!3408 = !DILocation(line: 1364, column: 250, scope: !1049)
!3409 = !DILocation(line: 1364, column: 216, scope: !1049)
!3410 = !DILocation(line: 1364, column: 219, scope: !1049)
!3411 = !DILocation(line: 1364, column: 222, scope: !1049)
!3412 = !DILocation(line: 1364, column: 231, scope: !1049)
!3413 = !DILocation(line: 1364, column: 234, scope: !1049)
!3414 = !DILocation(line: 1364, column: 242, scope: !1049)
!3415 = !DILocation(line: 1364, column: 259, scope: !1049)
!3416 = !DILocation(line: 1364, column: 262, scope: !1049)
!3417 = !DILocation(line: 1364, column: 265, scope: !1049)
!3418 = !DILocation(line: 1364, column: 273, scope: !1049)
!3419 = !DILocation(line: 1364, column: 287, scope: !1044)
!3420 = !DILocation(line: 1364, column: 287, scope: !1049)
!3421 = !DILocation(line: 1364, column: 287, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !1049, file: !412, discriminator: 5)
!3423 = !DILocation(line: 1365, column: 5, scope: !1044)
!3424 = !DILocation(line: 1365, column: 10, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !1051, file: !412, discriminator: 1)
!3426 = !DILocation(line: 1365, column: 20, scope: !1051)
!3427 = !DILocation(line: 1365, column: 51, scope: !1051)
!3428 = !DILocation(line: 1365, column: 55, scope: !1051)
!3429 = !{!3430, !1277, i64 16}
!3430 = !{!"", !1342, i64 0, !1277, i64 16, !1277, i64 24, !1277, i64 32, !1277, i64 40, !1370, i64 48}
!3431 = !DILocation(line: 1365, column: 70, scope: !1054)
!3432 = !DILocation(line: 1365, column: 86, scope: !1054)
!3433 = !DILocation(line: 1365, column: 70, scope: !1051)
!3434 = !DILocation(line: 1365, column: 101, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !1054, file: !412, discriminator: 2)
!3436 = !DILocation(line: 1365, column: 106, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !1053, file: !412, discriminator: 4)
!3438 = !DILocation(line: 1365, column: 116, scope: !1053)
!3439 = !DILocation(line: 1365, column: 146, scope: !1053)
!3440 = !DILocation(line: 1365, column: 172, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !1053, file: !412, line: 1365, column: 169)
!3442 = !DILocation(line: 1365, column: 189, scope: !3441)
!3443 = !DILocation(line: 1365, column: 169, scope: !3441)
!3444 = !DILocation(line: 1365, column: 199, scope: !3441)
!3445 = !DILocation(line: 1365, column: 169, scope: !1053)
!3446 = !DILocation(line: 1365, column: 169, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !1053, file: !412, discriminator: 5)
!3448 = !DILocation(line: 1365, column: 230, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3441, file: !412, discriminator: 6)
!3450 = !DILocation(line: 1365, column: 248, scope: !3441)
!3451 = !DILocation(line: 1365, column: 258, scope: !3441)
!3452 = !DILocation(line: 1365, column: 283, scope: !3441)
!3453 = !DILocation(line: 1365, column: 214, scope: !3441)
!3454 = !DILocation(line: 1365, column: 302, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !1054, file: !412, discriminator: 7)
!3456 = !DILocation(line: 1365, column: 302, scope: !1053)
!3457 = !DILocation(line: 1365, column: 302, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !1053, file: !412, discriminator: 8)
!3459 = !DILocation(line: 1365, column: 302, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !1053, file: !412, discriminator: 9)
!3461 = !DILocation(line: 1365, column: 315, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3463, file: !412, discriminator: 10)
!3463 = !DILexicalBlockFile(scope: !1044, file: !412, discriminator: 3)
!3464 = !DILocation(line: 1365, column: 315, scope: !1051)
!3465 = !DILocation(line: 1365, column: 315, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !1051, file: !412, discriminator: 11)
!3467 = !DILocation(line: 1366, column: 5, scope: !1044)
!3468 = !DILocation(line: 1366, column: 10, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !1056, file: !412, discriminator: 1)
!3470 = !DILocation(line: 1366, column: 20, scope: !1056)
!3471 = !DILocation(line: 1366, column: 51, scope: !1056)
!3472 = !DILocation(line: 1366, column: 55, scope: !1056)
!3473 = !{!3430, !1277, i64 24}
!3474 = !DILocation(line: 1366, column: 70, scope: !1059)
!3475 = !DILocation(line: 1366, column: 86, scope: !1059)
!3476 = !DILocation(line: 1366, column: 70, scope: !1056)
!3477 = !DILocation(line: 1366, column: 101, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !1059, file: !412, discriminator: 2)
!3479 = !DILocation(line: 1366, column: 106, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !1058, file: !412, discriminator: 4)
!3481 = !DILocation(line: 1366, column: 116, scope: !1058)
!3482 = !DILocation(line: 1366, column: 146, scope: !1058)
!3483 = !DILocation(line: 1366, column: 172, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !1058, file: !412, line: 1366, column: 169)
!3485 = !DILocation(line: 1366, column: 189, scope: !3484)
!3486 = !DILocation(line: 1366, column: 169, scope: !3484)
!3487 = !DILocation(line: 1366, column: 199, scope: !3484)
!3488 = !DILocation(line: 1366, column: 169, scope: !1058)
!3489 = !DILocation(line: 1366, column: 169, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !1058, file: !412, discriminator: 5)
!3491 = !DILocation(line: 1366, column: 230, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3484, file: !412, discriminator: 6)
!3493 = !DILocation(line: 1366, column: 248, scope: !3484)
!3494 = !DILocation(line: 1366, column: 258, scope: !3484)
!3495 = !DILocation(line: 1366, column: 283, scope: !3484)
!3496 = !DILocation(line: 1366, column: 214, scope: !3484)
!3497 = !DILocation(line: 1366, column: 302, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !1059, file: !412, discriminator: 7)
!3499 = !DILocation(line: 1366, column: 302, scope: !1058)
!3500 = !DILocation(line: 1366, column: 302, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !1058, file: !412, discriminator: 8)
!3502 = !DILocation(line: 1366, column: 302, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !1058, file: !412, discriminator: 9)
!3504 = !DILocation(line: 1366, column: 315, scope: !3462)
!3505 = !DILocation(line: 1366, column: 315, scope: !1056)
!3506 = !DILocation(line: 1366, column: 315, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !1056, file: !412, discriminator: 11)
!3508 = !DILocation(line: 1367, column: 5, scope: !1044)
!3509 = !DILocation(line: 1367, column: 10, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !1061, file: !412, discriminator: 1)
!3511 = !DILocation(line: 1367, column: 20, scope: !1061)
!3512 = !DILocation(line: 1367, column: 51, scope: !1061)
!3513 = !DILocation(line: 1367, column: 55, scope: !1061)
!3514 = !{!3430, !1277, i64 32}
!3515 = !DILocation(line: 1367, column: 70, scope: !1064)
!3516 = !DILocation(line: 1367, column: 86, scope: !1064)
!3517 = !DILocation(line: 1367, column: 70, scope: !1061)
!3518 = !DILocation(line: 1367, column: 101, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !1064, file: !412, discriminator: 2)
!3520 = !DILocation(line: 1367, column: 106, scope: !3521)
!3521 = !DILexicalBlockFile(scope: !1063, file: !412, discriminator: 4)
!3522 = !DILocation(line: 1367, column: 116, scope: !1063)
!3523 = !DILocation(line: 1367, column: 146, scope: !1063)
!3524 = !DILocation(line: 1367, column: 172, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !1063, file: !412, line: 1367, column: 169)
!3526 = !DILocation(line: 1367, column: 189, scope: !3525)
!3527 = !DILocation(line: 1367, column: 169, scope: !3525)
!3528 = !DILocation(line: 1367, column: 199, scope: !3525)
!3529 = !DILocation(line: 1367, column: 169, scope: !1063)
!3530 = !DILocation(line: 1367, column: 169, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !1063, file: !412, discriminator: 5)
!3532 = !DILocation(line: 1367, column: 230, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3525, file: !412, discriminator: 6)
!3534 = !DILocation(line: 1367, column: 248, scope: !3525)
!3535 = !DILocation(line: 1367, column: 258, scope: !3525)
!3536 = !DILocation(line: 1367, column: 283, scope: !3525)
!3537 = !DILocation(line: 1367, column: 214, scope: !3525)
!3538 = !DILocation(line: 1367, column: 302, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !1064, file: !412, discriminator: 7)
!3540 = !DILocation(line: 1367, column: 302, scope: !1063)
!3541 = !DILocation(line: 1367, column: 302, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !1063, file: !412, discriminator: 8)
!3543 = !DILocation(line: 1367, column: 302, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !1063, file: !412, discriminator: 9)
!3545 = !DILocation(line: 1367, column: 315, scope: !3462)
!3546 = !DILocation(line: 1367, column: 315, scope: !1061)
!3547 = !DILocation(line: 1367, column: 315, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !1061, file: !412, discriminator: 11)
!3549 = !DILocation(line: 1368, column: 5, scope: !1044)
!3550 = !DILocation(line: 1368, column: 10, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !1066, file: !412, discriminator: 1)
!3552 = !DILocation(line: 1368, column: 20, scope: !1066)
!3553 = !DILocation(line: 1368, column: 51, scope: !1066)
!3554 = !DILocation(line: 1368, column: 55, scope: !1066)
!3555 = !{!3430, !1277, i64 40}
!3556 = !DILocation(line: 1368, column: 70, scope: !1069)
!3557 = !DILocation(line: 1368, column: 86, scope: !1069)
!3558 = !DILocation(line: 1368, column: 70, scope: !1066)
!3559 = !DILocation(line: 1368, column: 101, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !1069, file: !412, discriminator: 2)
!3561 = !DILocation(line: 1368, column: 106, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !1068, file: !412, discriminator: 4)
!3563 = !DILocation(line: 1368, column: 116, scope: !1068)
!3564 = !DILocation(line: 1368, column: 146, scope: !1068)
!3565 = !DILocation(line: 1368, column: 172, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !1068, file: !412, line: 1368, column: 169)
!3567 = !DILocation(line: 1368, column: 189, scope: !3566)
!3568 = !DILocation(line: 1368, column: 169, scope: !3566)
!3569 = !DILocation(line: 1368, column: 199, scope: !3566)
!3570 = !DILocation(line: 1368, column: 169, scope: !1068)
!3571 = !DILocation(line: 1368, column: 169, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !1068, file: !412, discriminator: 5)
!3573 = !DILocation(line: 1368, column: 230, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3566, file: !412, discriminator: 6)
!3575 = !DILocation(line: 1368, column: 248, scope: !3566)
!3576 = !DILocation(line: 1368, column: 258, scope: !3566)
!3577 = !DILocation(line: 1368, column: 283, scope: !3566)
!3578 = !DILocation(line: 1368, column: 214, scope: !3566)
!3579 = !DILocation(line: 1368, column: 302, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !1069, file: !412, discriminator: 7)
!3581 = !DILocation(line: 1368, column: 302, scope: !1068)
!3582 = !DILocation(line: 1368, column: 302, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !1068, file: !412, discriminator: 8)
!3584 = !DILocation(line: 1368, column: 302, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !1068, file: !412, discriminator: 9)
!3586 = !DILocation(line: 1368, column: 315, scope: !3462)
!3587 = !DILocation(line: 1368, column: 315, scope: !1066)
!3588 = !DILocation(line: 1368, column: 315, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !1066, file: !412, discriminator: 11)
!3590 = !DILocation(line: 1369, column: 5, scope: !1044)
!3591 = !DILocation(line: 1369, column: 11, scope: !1044)
!3592 = !DILocation(line: 1369, column: 20, scope: !1044)
!3593 = !{!1368, !1277, i64 320}
!3594 = !DILocation(line: 1369, column: 28, scope: !1044)
!3595 = !DILocation(line: 1370, column: 1, scope: !1044)
!3596 = !DILocation(line: 1577, column: 29, scope: !1070)
!3597 = !DILocation(line: 1577, column: 45, scope: !1070)
!3598 = !DILocation(line: 1577, column: 58, scope: !1070)
!3599 = !DILocation(line: 1579, column: 5, scope: !1070)
!3600 = !DILocation(line: 1579, column: 21, scope: !1070)
!3601 = !DILocation(line: 1579, column: 44, scope: !1070)
!3602 = !DILocation(line: 1579, column: 26, scope: !1070)
!3603 = !DILocation(line: 1580, column: 5, scope: !1070)
!3604 = !DILocation(line: 1580, column: 14, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !1078, file: !412, discriminator: 1)
!3606 = !DILocation(line: 1580, column: 18, scope: !1078)
!3607 = !DILocation(line: 1580, column: 14, scope: !1078)
!3608 = !DILocation(line: 1580, column: 14, scope: !1079)
!3609 = !DILocation(line: 1580, column: 30, scope: !3610)
!3610 = !DILexicalBlockFile(scope: !1077, file: !412, discriminator: 2)
!3611 = !DILocation(line: 1580, column: 34, scope: !1077)
!3612 = !DILocation(line: 1580, column: 41, scope: !1077)
!3613 = !DILocation(line: 1580, column: 60, scope: !1077)
!3614 = !DILocation(line: 1580, column: 64, scope: !1077)
!3615 = !DILocation(line: 1580, column: 75, scope: !1077)
!3616 = !DILocation(line: 1580, column: 85, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !1077, file: !412, line: 1580, column: 85)
!3618 = !DILocation(line: 1580, column: 85, scope: !1077)
!3619 = !DILocation(line: 1580, column: 98, scope: !3620)
!3620 = !DILexicalBlockFile(scope: !3617, file: !412, discriminator: 4)
!3621 = !DILocation(line: 1580, column: 91, scope: !3617)
!3622 = !DILocation(line: 1580, column: 104, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !1078, file: !412, discriminator: 5)
!3624 = !DILocation(line: 1580, column: 104, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3626, file: !412, discriminator: 7)
!3626 = !DILexicalBlockFile(scope: !1078, file: !412, discriminator: 6)
!3627 = !DILocation(line: 1580, column: 104, scope: !1077)
!3628 = !DILocation(line: 1580, column: 106, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3630, file: !412, discriminator: 8)
!3630 = !DILexicalBlockFile(scope: !1079, file: !412, discriminator: 3)
!3631 = !DILocation(line: 1580, column: 106, scope: !3632)
!3632 = !DILexicalBlockFile(scope: !1079, file: !412, discriminator: 9)
!3633 = !DILocation(line: 1581, column: 5, scope: !1070)
!3634 = !DILocation(line: 1581, column: 14, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !1082, file: !412, discriminator: 1)
!3636 = !DILocation(line: 1581, column: 18, scope: !1082)
!3637 = !DILocation(line: 1581, column: 14, scope: !1082)
!3638 = !DILocation(line: 1581, column: 14, scope: !1083)
!3639 = !DILocation(line: 1581, column: 30, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !1081, file: !412, discriminator: 2)
!3641 = !DILocation(line: 1581, column: 34, scope: !1081)
!3642 = !DILocation(line: 1581, column: 41, scope: !1081)
!3643 = !DILocation(line: 1581, column: 60, scope: !1081)
!3644 = !DILocation(line: 1581, column: 64, scope: !1081)
!3645 = !DILocation(line: 1581, column: 75, scope: !1081)
!3646 = !DILocation(line: 1581, column: 85, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !1081, file: !412, line: 1581, column: 85)
!3648 = !DILocation(line: 1581, column: 85, scope: !1081)
!3649 = !DILocation(line: 1581, column: 98, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3647, file: !412, discriminator: 4)
!3651 = !DILocation(line: 1581, column: 91, scope: !3647)
!3652 = !DILocation(line: 1581, column: 104, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !1082, file: !412, discriminator: 5)
!3654 = !DILocation(line: 1581, column: 104, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3656, file: !412, discriminator: 7)
!3656 = !DILexicalBlockFile(scope: !1082, file: !412, discriminator: 6)
!3657 = !DILocation(line: 1581, column: 104, scope: !1081)
!3658 = !DILocation(line: 1581, column: 106, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3660, file: !412, discriminator: 8)
!3660 = !DILexicalBlockFile(scope: !1083, file: !412, discriminator: 3)
!3661 = !DILocation(line: 1581, column: 106, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !1083, file: !412, discriminator: 9)
!3663 = !DILocation(line: 1582, column: 5, scope: !1070)
!3664 = !DILocation(line: 1582, column: 14, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !1086, file: !412, discriminator: 1)
!3666 = !DILocation(line: 1582, column: 18, scope: !1086)
!3667 = !DILocation(line: 1582, column: 14, scope: !1086)
!3668 = !DILocation(line: 1582, column: 14, scope: !1087)
!3669 = !DILocation(line: 1582, column: 30, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !1085, file: !412, discriminator: 2)
!3671 = !DILocation(line: 1582, column: 34, scope: !1085)
!3672 = !DILocation(line: 1582, column: 41, scope: !1085)
!3673 = !DILocation(line: 1582, column: 60, scope: !1085)
!3674 = !DILocation(line: 1582, column: 64, scope: !1085)
!3675 = !DILocation(line: 1582, column: 75, scope: !1085)
!3676 = !DILocation(line: 1582, column: 85, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !1085, file: !412, line: 1582, column: 85)
!3678 = !DILocation(line: 1582, column: 85, scope: !1085)
!3679 = !DILocation(line: 1582, column: 98, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3677, file: !412, discriminator: 4)
!3681 = !DILocation(line: 1582, column: 91, scope: !3677)
!3682 = !DILocation(line: 1582, column: 104, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !1086, file: !412, discriminator: 5)
!3684 = !DILocation(line: 1582, column: 104, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3686, file: !412, discriminator: 7)
!3686 = !DILexicalBlockFile(scope: !1086, file: !412, discriminator: 6)
!3687 = !DILocation(line: 1582, column: 104, scope: !1085)
!3688 = !DILocation(line: 1582, column: 106, scope: !3689)
!3689 = !DILexicalBlockFile(scope: !3690, file: !412, discriminator: 8)
!3690 = !DILexicalBlockFile(scope: !1087, file: !412, discriminator: 3)
!3691 = !DILocation(line: 1582, column: 106, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !1087, file: !412, discriminator: 9)
!3693 = !DILocation(line: 1583, column: 5, scope: !1070)
!3694 = !DILocation(line: 1583, column: 14, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !1090, file: !412, discriminator: 1)
!3696 = !DILocation(line: 1583, column: 18, scope: !1090)
!3697 = !DILocation(line: 1583, column: 14, scope: !1090)
!3698 = !DILocation(line: 1583, column: 14, scope: !1091)
!3699 = !DILocation(line: 1583, column: 30, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !1089, file: !412, discriminator: 2)
!3701 = !DILocation(line: 1583, column: 34, scope: !1089)
!3702 = !DILocation(line: 1583, column: 41, scope: !1089)
!3703 = !DILocation(line: 1583, column: 60, scope: !1089)
!3704 = !DILocation(line: 1583, column: 64, scope: !1089)
!3705 = !DILocation(line: 1583, column: 75, scope: !1089)
!3706 = !DILocation(line: 1583, column: 85, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !1089, file: !412, line: 1583, column: 85)
!3708 = !DILocation(line: 1583, column: 85, scope: !1089)
!3709 = !DILocation(line: 1583, column: 98, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3707, file: !412, discriminator: 4)
!3711 = !DILocation(line: 1583, column: 91, scope: !3707)
!3712 = !DILocation(line: 1583, column: 104, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !1090, file: !412, discriminator: 5)
!3714 = !DILocation(line: 1583, column: 104, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3716, file: !412, discriminator: 7)
!3716 = !DILexicalBlockFile(scope: !1090, file: !412, discriminator: 6)
!3717 = !DILocation(line: 1583, column: 104, scope: !1089)
!3718 = !DILocation(line: 1583, column: 106, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3720, file: !412, discriminator: 8)
!3720 = !DILexicalBlockFile(scope: !1091, file: !412, discriminator: 3)
!3721 = !DILocation(line: 1583, column: 106, scope: !3722)
!3722 = !DILexicalBlockFile(scope: !1091, file: !412, discriminator: 9)
!3723 = !DILocation(line: 1584, column: 5, scope: !1070)
!3724 = !DILocation(line: 1585, column: 1, scope: !1070)
!3725 = !DILocation(line: 1373, column: 30, scope: !1146)
!3726 = !DILocation(line: 1373, column: 46, scope: !1146)
!3727 = !DILocation(line: 1373, column: 61, scope: !1146)
!3728 = !DILocation(line: 1375, column: 5, scope: !1146)
!3729 = !DILocation(line: 1375, column: 21, scope: !1146)
!3730 = !DILocation(line: 1375, column: 44, scope: !1146)
!3731 = !DILocation(line: 1375, column: 26, scope: !1146)
!3732 = !DILocation(line: 1377, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !1146, file: !412, line: 1377, column: 9)
!3734 = !DILocation(line: 1377, column: 13, scope: !3733)
!3735 = !DILocation(line: 1377, column: 27, scope: !3733)
!3736 = !DILocation(line: 1377, column: 30, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3733, file: !412, discriminator: 1)
!3738 = !DILocation(line: 1377, column: 34, scope: !3733)
!3739 = !DILocation(line: 1377, column: 9, scope: !1146)
!3740 = !DILocation(line: 1378, column: 25, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3733, file: !412, line: 1377, column: 56)
!3742 = !DILocation(line: 1378, column: 33, scope: !3741)
!3743 = !DILocation(line: 1378, column: 42, scope: !3741)
!3744 = !DILocation(line: 1379, column: 16, scope: !3741)
!3745 = !DILocation(line: 1379, column: 9, scope: !3741)
!3746 = !DILocation(line: 1381, column: 9, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !1146, file: !412, line: 1381, column: 9)
!3748 = !DILocation(line: 1381, column: 13, scope: !3747)
!3749 = !DILocation(line: 1381, column: 22, scope: !3747)
!3750 = !DILocation(line: 1381, column: 9, scope: !1146)
!3751 = !DILocation(line: 1382, column: 25, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !412, line: 1381, column: 37)
!3753 = !DILocation(line: 1382, column: 9, scope: !3752)
!3754 = !DILocation(line: 1383, column: 9, scope: !3752)
!3755 = !DILocation(line: 1385, column: 41, scope: !1146)
!3756 = !DILocation(line: 1385, column: 45, scope: !1146)
!3757 = !DILocation(line: 1385, column: 55, scope: !1146)
!3758 = !DILocation(line: 1385, column: 12, scope: !1146)
!3759 = !DILocation(line: 1385, column: 5, scope: !1146)
!3760 = !DILocation(line: 1386, column: 1, scope: !1146)
!3761 = !DILocation(line: 1389, column: 30, scope: !1152)
!3762 = !DILocation(line: 1389, column: 46, scope: !1152)
!3763 = !DILocation(line: 1389, column: 61, scope: !1152)
!3764 = !DILocation(line: 1391, column: 5, scope: !1152)
!3765 = !DILocation(line: 1391, column: 21, scope: !1152)
!3766 = !DILocation(line: 1391, column: 44, scope: !1152)
!3767 = !DILocation(line: 1391, column: 26, scope: !1152)
!3768 = !DILocation(line: 1392, column: 5, scope: !1152)
!3769 = !DILocation(line: 1392, column: 15, scope: !1152)
!3770 = !DILocation(line: 1392, column: 22, scope: !1152)
!3771 = !DILocation(line: 1394, column: 9, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !1152, file: !412, line: 1394, column: 9)
!3773 = !DILocation(line: 1394, column: 15, scope: !3772)
!3774 = !DILocation(line: 1394, column: 9, scope: !1152)
!3775 = !DILocation(line: 1395, column: 16, scope: !3772)
!3776 = !DILocation(line: 1395, column: 20, scope: !3772)
!3777 = !DILocation(line: 1395, column: 14, scope: !3772)
!3778 = !DILocation(line: 1395, column: 9, scope: !3772)
!3779 = !DILocation(line: 1397, column: 16, scope: !3772)
!3780 = !DILocation(line: 1397, column: 20, scope: !3772)
!3781 = !DILocation(line: 1397, column: 14, scope: !3772)
!3782 = !DILocation(line: 1398, column: 9, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !1152, file: !412, line: 1398, column: 9)
!3784 = !DILocation(line: 1398, column: 14, scope: !3783)
!3785 = !DILocation(line: 1398, column: 9, scope: !1152)
!3786 = !DILocation(line: 1399, column: 25, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3783, file: !412, line: 1398, column: 29)
!3788 = !DILocation(line: 1400, column: 25, scope: !3787)
!3789 = !DILocation(line: 1400, column: 31, scope: !3787)
!3790 = !DILocation(line: 1399, column: 9, scope: !3787)
!3791 = !DILocation(line: 1403, column: 9, scope: !3787)
!3792 = !DILocation(line: 1405, column: 9, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !1152, file: !412, line: 1405, column: 9)
!3794 = !DILocation(line: 1405, column: 15, scope: !3793)
!3795 = !DILocation(line: 1405, column: 9, scope: !1152)
!3796 = !DILocation(line: 1406, column: 44, scope: !3793)
!3797 = !DILocation(line: 1406, column: 50, scope: !3793)
!3798 = !DILocation(line: 1406, column: 15, scope: !3793)
!3799 = !DILocation(line: 1406, column: 13, scope: !3793)
!3800 = !DILocation(line: 1406, column: 9, scope: !3793)
!3801 = !DILocation(line: 1408, column: 44, scope: !3793)
!3802 = !DILocation(line: 1408, column: 50, scope: !3793)
!3803 = !DILocation(line: 1408, column: 55, scope: !3793)
!3804 = !DILocation(line: 1408, column: 15, scope: !3793)
!3805 = !DILocation(line: 1408, column: 13, scope: !3793)
!3806 = !DILocation(line: 1409, column: 9, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !1152, file: !412, line: 1409, column: 9)
!3808 = !DILocation(line: 1409, column: 13, scope: !3807)
!3809 = !DILocation(line: 1409, column: 9, scope: !1152)
!3810 = !DILocation(line: 1410, column: 9, scope: !3807)
!3811 = !DILocation(line: 1411, column: 5, scope: !1152)
!3812 = !DILocation(line: 1411, column: 10, scope: !3813)
!3813 = !DILexicalBlockFile(scope: !1161, file: !412, discriminator: 1)
!3814 = !DILocation(line: 1411, column: 20, scope: !1161)
!3815 = !DILocation(line: 1411, column: 50, scope: !1161)
!3816 = !DILocation(line: 1411, column: 64, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !1161, file: !412, line: 1411, column: 61)
!3818 = !DILocation(line: 1411, column: 81, scope: !3817)
!3819 = !DILocation(line: 1411, column: 61, scope: !3817)
!3820 = !DILocation(line: 1411, column: 91, scope: !3817)
!3821 = !DILocation(line: 1411, column: 61, scope: !1161)
!3822 = !DILocation(line: 1411, column: 61, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !1161, file: !412, discriminator: 2)
!3824 = !DILocation(line: 1411, column: 122, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3817, file: !412, discriminator: 3)
!3826 = !DILocation(line: 1411, column: 140, scope: !3817)
!3827 = !DILocation(line: 1411, column: 150, scope: !3817)
!3828 = !DILocation(line: 1411, column: 175, scope: !3817)
!3829 = !DILocation(line: 1411, column: 106, scope: !3817)
!3830 = !DILocation(line: 1411, column: 194, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !1152, file: !412, discriminator: 4)
!3832 = !DILocation(line: 1411, column: 194, scope: !1161)
!3833 = !DILocation(line: 1411, column: 194, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !1161, file: !412, discriminator: 5)
!3835 = !DILocation(line: 1412, column: 5, scope: !1152)
!3836 = !DILocation(line: 1413, column: 1, scope: !1152)
!3837 = !DILocation(line: 1453, column: 25, scope: !1162)
!3838 = !DILocation(line: 1453, column: 41, scope: !1162)
!3839 = !DILocation(line: 1453, column: 57, scope: !1162)
!3840 = !DILocation(line: 1455, column: 5, scope: !1162)
!3841 = !DILocation(line: 1455, column: 15, scope: !1162)
!3842 = !DILocation(line: 1455, column: 34, scope: !1162)
!3843 = !DILocation(line: 1455, column: 53, scope: !1162)
!3844 = !DILocation(line: 1455, column: 72, scope: !1162)
!3845 = !DILocation(line: 1457, column: 5, scope: !1162)
!3846 = !DILocation(line: 1457, column: 21, scope: !1162)
!3847 = !DILocation(line: 1457, column: 46, scope: !1162)
!3848 = !DILocation(line: 1457, column: 28, scope: !1162)
!3849 = !DILocation(line: 1459, column: 38, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1459, column: 9)
!3851 = !DILocation(line: 1459, column: 44, scope: !3850)
!3852 = !DILocation(line: 1459, column: 10, scope: !3850)
!3853 = !DILocation(line: 1459, column: 9, scope: !1162)
!3854 = !DILocation(line: 1461, column: 9, scope: !3850)
!3855 = !DILocation(line: 1463, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1463, column: 9)
!3857 = !DILocation(line: 1463, column: 13, scope: !3856)
!3858 = !DILocation(line: 1463, column: 9, scope: !1162)
!3859 = !DILocation(line: 1464, column: 13, scope: !3856)
!3860 = !DILocation(line: 1464, column: 9, scope: !3856)
!3861 = !DILocation(line: 1465, column: 9, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1465, column: 9)
!3863 = !DILocation(line: 1465, column: 13, scope: !3862)
!3864 = !DILocation(line: 1465, column: 9, scope: !1162)
!3865 = !DILocation(line: 1466, column: 13, scope: !3862)
!3866 = !DILocation(line: 1466, column: 9, scope: !3862)
!3867 = !DILocation(line: 1467, column: 9, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !1162, file: !412, line: 1467, column: 9)
!3869 = !DILocation(line: 1467, column: 13, scope: !3868)
!3870 = !DILocation(line: 1467, column: 9, scope: !1162)
!3871 = !DILocation(line: 1468, column: 13, scope: !3868)
!3872 = !DILocation(line: 1468, column: 9, scope: !3868)
!3873 = !DILocation(line: 1470, column: 5, scope: !1162)
!3874 = !DILocation(line: 1470, column: 10, scope: !3875)
!3875 = !DILexicalBlockFile(scope: !1173, file: !412, discriminator: 1)
!3876 = !DILocation(line: 1470, column: 20, scope: !1173)
!3877 = !DILocation(line: 1470, column: 51, scope: !1173)
!3878 = !DILocation(line: 1470, column: 61, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !1173, file: !412, line: 1470, column: 61)
!3880 = !DILocation(line: 1470, column: 77, scope: !3879)
!3881 = !DILocation(line: 1470, column: 61, scope: !1173)
!3882 = !DILocation(line: 1470, column: 108, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3879, file: !412, discriminator: 2)
!3884 = !DILocation(line: 1470, column: 127, scope: !3879)
!3885 = !DILocation(line: 1470, column: 136, scope: !3879)
!3886 = !DILocation(line: 1470, column: 92, scope: !3879)
!3887 = !DILocation(line: 1470, column: 141, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3889, file: !412, discriminator: 4)
!3889 = !DILexicalBlockFile(scope: !1162, file: !412, discriminator: 3)
!3890 = !DILocation(line: 1470, column: 141, scope: !1173)
!3891 = !DILocation(line: 1470, column: 141, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !1173, file: !412, discriminator: 5)
!3893 = !DILocation(line: 1471, column: 5, scope: !1162)
!3894 = !DILocation(line: 1471, column: 10, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !1175, file: !412, discriminator: 1)
!3896 = !DILocation(line: 1471, column: 20, scope: !1175)
!3897 = !DILocation(line: 1471, column: 51, scope: !1175)
!3898 = !DILocation(line: 1471, column: 61, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !1175, file: !412, line: 1471, column: 61)
!3900 = !DILocation(line: 1471, column: 77, scope: !3899)
!3901 = !DILocation(line: 1471, column: 61, scope: !1175)
!3902 = !DILocation(line: 1471, column: 108, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3899, file: !412, discriminator: 2)
!3904 = !DILocation(line: 1471, column: 127, scope: !3899)
!3905 = !DILocation(line: 1471, column: 136, scope: !3899)
!3906 = !DILocation(line: 1471, column: 92, scope: !3899)
!3907 = !DILocation(line: 1471, column: 141, scope: !3888)
!3908 = !DILocation(line: 1471, column: 141, scope: !1175)
!3909 = !DILocation(line: 1471, column: 141, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !1175, file: !412, discriminator: 5)
!3911 = !DILocation(line: 1472, column: 5, scope: !1162)
!3912 = !DILocation(line: 1472, column: 10, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !1177, file: !412, discriminator: 1)
!3914 = !DILocation(line: 1472, column: 20, scope: !1177)
!3915 = !DILocation(line: 1472, column: 51, scope: !1177)
!3916 = !DILocation(line: 1472, column: 61, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !1177, file: !412, line: 1472, column: 61)
!3918 = !DILocation(line: 1472, column: 77, scope: !3917)
!3919 = !DILocation(line: 1472, column: 61, scope: !1177)
!3920 = !DILocation(line: 1472, column: 108, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !3917, file: !412, discriminator: 2)
!3922 = !DILocation(line: 1472, column: 127, scope: !3917)
!3923 = !DILocation(line: 1472, column: 136, scope: !3917)
!3924 = !DILocation(line: 1472, column: 92, scope: !3917)
!3925 = !DILocation(line: 1472, column: 141, scope: !3888)
!3926 = !DILocation(line: 1472, column: 141, scope: !1177)
!3927 = !DILocation(line: 1472, column: 141, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !1177, file: !412, discriminator: 5)
!3929 = !DILocation(line: 1473, column: 5, scope: !1162)
!3930 = !DILocation(line: 1473, column: 10, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !1179, file: !412, discriminator: 1)
!3932 = !DILocation(line: 1473, column: 20, scope: !1179)
!3933 = !DILocation(line: 1473, column: 51, scope: !1179)
!3934 = !DILocation(line: 1473, column: 61, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !1179, file: !412, line: 1473, column: 61)
!3936 = !DILocation(line: 1473, column: 77, scope: !3935)
!3937 = !DILocation(line: 1473, column: 61, scope: !1179)
!3938 = !DILocation(line: 1473, column: 108, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3935, file: !412, discriminator: 2)
!3940 = !DILocation(line: 1473, column: 127, scope: !3935)
!3941 = !DILocation(line: 1473, column: 136, scope: !3935)
!3942 = !DILocation(line: 1473, column: 92, scope: !3935)
!3943 = !DILocation(line: 1473, column: 141, scope: !3888)
!3944 = !DILocation(line: 1473, column: 141, scope: !1179)
!3945 = !DILocation(line: 1473, column: 141, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !1179, file: !412, discriminator: 5)
!3947 = !DILocation(line: 1475, column: 22, scope: !1162)
!3948 = !DILocation(line: 1475, column: 5, scope: !1162)
!3949 = !DILocation(line: 1475, column: 11, scope: !1162)
!3950 = !DILocation(line: 1475, column: 20, scope: !1162)
!3951 = !DILocation(line: 1476, column: 22, scope: !1162)
!3952 = !DILocation(line: 1476, column: 5, scope: !1162)
!3953 = !DILocation(line: 1476, column: 11, scope: !1162)
!3954 = !DILocation(line: 1476, column: 20, scope: !1162)
!3955 = !DILocation(line: 1477, column: 22, scope: !1162)
!3956 = !DILocation(line: 1477, column: 5, scope: !1162)
!3957 = !DILocation(line: 1477, column: 11, scope: !1162)
!3958 = !DILocation(line: 1477, column: 20, scope: !1162)
!3959 = !DILocation(line: 1478, column: 22, scope: !1162)
!3960 = !DILocation(line: 1478, column: 5, scope: !1162)
!3961 = !DILocation(line: 1478, column: 11, scope: !1162)
!3962 = !DILocation(line: 1478, column: 20, scope: !1162)
!3963 = !DILocation(line: 1479, column: 5, scope: !1162)
!3964 = !DILocation(line: 1479, column: 11, scope: !1162)
!3965 = !DILocation(line: 1479, column: 22, scope: !1162)
!3966 = !{!3430, !1370, i64 48}
!3967 = !DILocation(line: 1482, column: 10, scope: !1182)
!3968 = !DILocation(line: 1482, column: 14, scope: !1182)
!3969 = !DILocation(line: 1482, column: 28, scope: !1182)
!3970 = !DILocation(line: 1482, column: 31, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !1182, file: !412, discriminator: 2)
!3972 = !DILocation(line: 1482, column: 35, scope: !1182)
!3973 = !DILocation(line: 1482, column: 57, scope: !1182)
!3974 = !DILocation(line: 1482, column: 60, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3976, file: !412, discriminator: 3)
!3976 = !DILexicalBlockFile(scope: !1182, file: !412, discriminator: 1)
!3977 = !DILocation(line: 1482, column: 64, scope: !1182)
!3978 = !DILocation(line: 1482, column: 9, scope: !1162)
!3979 = !DILocation(line: 1484, column: 9, scope: !1181)
!3980 = !DILocation(line: 1484, column: 19, scope: !1181)
!3981 = !DILocation(line: 1484, column: 49, scope: !1181)
!3982 = !DILocation(line: 1484, column: 29, scope: !1181)
!3983 = !DILocation(line: 1485, column: 13, scope: !1188)
!3984 = !DILocation(line: 1485, column: 13, scope: !1181)
!3985 = !DILocation(line: 1486, column: 31, scope: !1186)
!3986 = !DILocation(line: 1486, column: 39, scope: !1186)
!3987 = !DILocation(line: 1486, column: 48, scope: !1186)
!3988 = !DILocation(line: 1486, column: 17, scope: !1187)
!3989 = !DILocation(line: 1487, column: 17, scope: !1185)
!3990 = !DILocation(line: 1487, column: 22, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !1184, file: !412, discriminator: 1)
!3992 = !DILocation(line: 1487, column: 32, scope: !1184)
!3993 = !DILocation(line: 1487, column: 63, scope: !1184)
!3994 = !DILocation(line: 1487, column: 69, scope: !1184)
!3995 = !DILocation(line: 1487, column: 84, scope: !1191)
!3996 = !DILocation(line: 1487, column: 100, scope: !1191)
!3997 = !DILocation(line: 1487, column: 84, scope: !1184)
!3998 = !DILocation(line: 1487, column: 115, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !1191, file: !412, discriminator: 2)
!4000 = !DILocation(line: 1487, column: 120, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !1190, file: !412, discriminator: 4)
!4002 = !DILocation(line: 1487, column: 130, scope: !1190)
!4003 = !DILocation(line: 1487, column: 160, scope: !1190)
!4004 = !DILocation(line: 1487, column: 186, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !1190, file: !412, line: 1487, column: 183)
!4006 = !DILocation(line: 1487, column: 203, scope: !4005)
!4007 = !DILocation(line: 1487, column: 183, scope: !4005)
!4008 = !DILocation(line: 1487, column: 213, scope: !4005)
!4009 = !DILocation(line: 1487, column: 183, scope: !1190)
!4010 = !DILocation(line: 1487, column: 183, scope: !4011)
!4011 = !DILexicalBlockFile(scope: !1190, file: !412, discriminator: 5)
!4012 = !DILocation(line: 1487, column: 244, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4005, file: !412, discriminator: 6)
!4014 = !DILocation(line: 1487, column: 262, scope: !4005)
!4015 = !DILocation(line: 1487, column: 272, scope: !4005)
!4016 = !DILocation(line: 1487, column: 297, scope: !4005)
!4017 = !DILocation(line: 1487, column: 228, scope: !4005)
!4018 = !DILocation(line: 1487, column: 316, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !1191, file: !412, discriminator: 7)
!4020 = !DILocation(line: 1487, column: 316, scope: !1190)
!4021 = !DILocation(line: 1487, column: 316, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !1190, file: !412, discriminator: 8)
!4023 = !DILocation(line: 1487, column: 316, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !1190, file: !412, discriminator: 9)
!4025 = !DILocation(line: 1487, column: 329, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !4027, file: !412, discriminator: 10)
!4027 = !DILexicalBlockFile(scope: !1185, file: !412, discriminator: 3)
!4028 = !DILocation(line: 1487, column: 329, scope: !1184)
!4029 = !DILocation(line: 1487, column: 329, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !1184, file: !412, discriminator: 11)
!4031 = !DILocation(line: 1488, column: 34, scope: !1185)
!4032 = !DILocation(line: 1488, column: 17, scope: !1185)
!4033 = !DILocation(line: 1488, column: 23, scope: !1185)
!4034 = !DILocation(line: 1488, column: 32, scope: !1185)
!4035 = !DILocation(line: 1489, column: 13, scope: !1185)
!4036 = !DILocation(line: 1495, column: 17, scope: !1193)
!4037 = !DILocation(line: 1495, column: 21, scope: !1193)
!4038 = !DILocation(line: 1495, column: 47, scope: !1193)
!4039 = !DILocation(line: 1495, column: 68, scope: !1193)
!4040 = !DILocation(line: 1495, column: 27, scope: !1193)
!4041 = !DILocation(line: 1496, column: 17, scope: !1193)
!4042 = !DILocation(line: 1496, column: 22, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !1195, file: !412, discriminator: 1)
!4044 = !DILocation(line: 1496, column: 32, scope: !1195)
!4045 = !DILocation(line: 1496, column: 62, scope: !1195)
!4046 = !DILocation(line: 1496, column: 80, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !1195, file: !412, line: 1496, column: 77)
!4048 = !DILocation(line: 1496, column: 97, scope: !4047)
!4049 = !DILocation(line: 1496, column: 77, scope: !4047)
!4050 = !DILocation(line: 1496, column: 107, scope: !4047)
!4051 = !DILocation(line: 1496, column: 77, scope: !1195)
!4052 = !DILocation(line: 1496, column: 77, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !1195, file: !412, discriminator: 2)
!4054 = !DILocation(line: 1496, column: 138, scope: !4055)
!4055 = !DILexicalBlockFile(scope: !4047, file: !412, discriminator: 3)
!4056 = !DILocation(line: 1496, column: 156, scope: !4047)
!4057 = !DILocation(line: 1496, column: 166, scope: !4047)
!4058 = !DILocation(line: 1496, column: 191, scope: !4047)
!4059 = !DILocation(line: 1496, column: 122, scope: !4047)
!4060 = !DILocation(line: 1496, column: 210, scope: !4061)
!4061 = !DILexicalBlockFile(scope: !1193, file: !412, discriminator: 4)
!4062 = !DILocation(line: 1496, column: 210, scope: !1195)
!4063 = !DILocation(line: 1496, column: 210, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !1195, file: !412, discriminator: 5)
!4065 = !DILocation(line: 1497, column: 21, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !1193, file: !412, line: 1497, column: 21)
!4067 = !DILocation(line: 1497, column: 25, scope: !4066)
!4068 = !DILocation(line: 1497, column: 21, scope: !1193)
!4069 = !DILocation(line: 1498, column: 21, scope: !4066)
!4070 = !DILocation(line: 1499, column: 13, scope: !1186)
!4071 = !DILocation(line: 1499, column: 13, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !1186, file: !412, discriminator: 1)
!4073 = !DILocation(line: 1500, column: 13, scope: !1187)
!4074 = !DILocation(line: 1500, column: 19, scope: !1187)
!4075 = !DILocation(line: 1500, column: 30, scope: !1187)
!4076 = !DILocation(line: 1501, column: 9, scope: !1187)
!4077 = !DILocation(line: 1502, column: 41, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !1188, file: !412, line: 1502, column: 18)
!4079 = !DILocation(line: 1502, column: 18, scope: !4078)
!4080 = !DILocation(line: 1502, column: 18, scope: !1188)
!4081 = !DILocation(line: 1503, column: 13, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4078, file: !412, line: 1502, column: 59)
!4083 = !DILocation(line: 1504, column: 9, scope: !4082)
!4084 = !DILocation(line: 1506, column: 13, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4078, file: !412, line: 1505, column: 14)
!4086 = !DILocation(line: 1508, column: 5, scope: !1182)
!4087 = !DILocation(line: 1508, column: 5, scope: !3976)
!4088 = !DILocation(line: 1508, column: 5, scope: !1181)
!4089 = !DILocation(line: 1510, column: 5, scope: !1162)
!4090 = !DILocation(line: 1511, column: 1, scope: !1162)
!4091 = !DILocation(line: 25, column: 27, scope: !602)
!4092 = !DILocation(line: 25, column: 40, scope: !602)
!4093 = !DILocation(line: 27, column: 5, scope: !602)
!4094 = !DILocation(line: 27, column: 15, scope: !602)
!4095 = !DILocation(line: 28, column: 9, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !602, file: !412, line: 28, column: 9)
!4097 = !DILocation(line: 28, column: 16, scope: !4096)
!4098 = !DILocation(line: 28, column: 23, scope: !4096)
!4099 = !DILocation(line: 28, column: 37, scope: !4096)
!4100 = !DILocation(line: 28, column: 57, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !4096, file: !412, discriminator: 1)
!4102 = !DILocation(line: 28, column: 64, scope: !4096)
!4103 = !DILocation(line: 28, column: 74, scope: !4096)
!4104 = !DILocation(line: 28, column: 85, scope: !4096)
!4105 = !DILocation(line: 28, column: 94, scope: !4096)
!4106 = !DILocation(line: 28, column: 111, scope: !4096)
!4107 = !DILocation(line: 28, column: 9, scope: !602)
!4108 = !DILocation(line: 29, column: 16, scope: !4096)
!4109 = !DILocation(line: 29, column: 23, scope: !4096)
!4110 = !DILocation(line: 29, column: 14, scope: !4096)
!4111 = !DILocation(line: 29, column: 9, scope: !4096)
!4112 = !DILocation(line: 31, column: 33, scope: !602)
!4113 = !DILocation(line: 31, column: 41, scope: !602)
!4114 = !DILocation(line: 31, column: 52, scope: !602)
!4115 = !DILocation(line: 31, column: 59, scope: !602)
!4116 = !DILocation(line: 31, column: 67, scope: !602)
!4117 = !DILocation(line: 31, column: 12, scope: !602)
!4118 = !DILocation(line: 32, column: 1, scope: !602)
!4119 = !DILocation(line: 31, column: 5, scope: !602)
!4120 = !DILocation(line: 17, column: 27, scope: !628)
!4121 = !DILocation(line: 19, column: 9, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !628, file: !412, line: 19, column: 9)
!4123 = !DILocation(line: 19, column: 16, scope: !4122)
!4124 = !DILocation(line: 19, column: 23, scope: !4122)
!4125 = !DILocation(line: 19, column: 37, scope: !4122)
!4126 = !DILocation(line: 19, column: 57, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !4122, file: !412, discriminator: 1)
!4128 = !DILocation(line: 19, column: 64, scope: !4122)
!4129 = !DILocation(line: 19, column: 74, scope: !4122)
!4130 = !DILocation(line: 19, column: 85, scope: !4122)
!4131 = !DILocation(line: 19, column: 94, scope: !4122)
!4132 = !DILocation(line: 19, column: 111, scope: !4122)
!4133 = !DILocation(line: 19, column: 9, scope: !628)
!4134 = !DILocation(line: 20, column: 16, scope: !4122)
!4135 = !DILocation(line: 20, column: 23, scope: !4122)
!4136 = !DILocation(line: 20, column: 9, scope: !4122)
!4137 = !DILocation(line: 21, column: 5, scope: !628)
!4138 = !DILocation(line: 22, column: 1, scope: !628)
!4139 = !DILocation(line: 404, column: 29, scope: !643)
!4140 = !DILocation(line: 406, column: 5, scope: !643)
!4141 = !DILocation(line: 406, column: 15, scope: !643)
!4142 = !DILocation(line: 407, column: 5, scope: !643)
!4143 = !DILocation(line: 407, column: 15, scope: !643)
!4144 = !DILocation(line: 410, column: 16, scope: !643)
!4145 = !DILocation(line: 410, column: 14, scope: !643)
!4146 = !DILocation(line: 411, column: 33, scope: !643)
!4147 = !DILocation(line: 411, column: 15, scope: !643)
!4148 = !DILocation(line: 411, column: 13, scope: !643)
!4149 = !DILocation(line: 412, column: 35, scope: !643)
!4150 = !DILocation(line: 412, column: 64, scope: !643)
!4151 = !DILocation(line: 412, column: 73, scope: !643)
!4152 = !DILocation(line: 413, column: 46, scope: !643)
!4153 = !DILocation(line: 413, column: 55, scope: !643)
!4154 = !DILocation(line: 412, column: 12, scope: !643)
!4155 = !DILocation(line: 414, column: 1, scope: !643)
!4156 = !DILocation(line: 412, column: 5, scope: !643)
!4157 = !DILocation(line: 354, column: 37, scope: !648)
!4158 = !DILocation(line: 354, column: 50, scope: !648)
!4159 = !DILocation(line: 356, column: 42, scope: !648)
!4160 = !DILocation(line: 356, column: 49, scope: !648)
!4161 = !DILocation(line: 356, column: 59, scope: !648)
!4162 = !DILocation(line: 356, column: 68, scope: !648)
!4163 = !DILocation(line: 356, column: 75, scope: !648)
!4164 = !DILocation(line: 356, column: 85, scope: !648)
!4165 = !{!2261, !1277, i64 24}
!4166 = !DILocation(line: 356, column: 12, scope: !648)
!4167 = !DILocation(line: 356, column: 5, scope: !648)
!4168 = !DILocation(line: 395, column: 35, scope: !654)
!4169 = !DILocation(line: 397, column: 9, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !654, file: !412, line: 397, column: 9)
!4171 = !DILocation(line: 397, column: 16, scope: !4170)
!4172 = !DILocation(line: 397, column: 27, scope: !4170)
!4173 = !DILocation(line: 397, column: 9, scope: !654)
!4174 = !DILocation(line: 398, column: 48, scope: !4170)
!4175 = !DILocation(line: 398, column: 29, scope: !4170)
!4176 = !DILocation(line: 398, column: 9, scope: !4170)
!4177 = !DILocation(line: 398, column: 16, scope: !4170)
!4178 = !DILocation(line: 398, column: 27, scope: !4170)
!4179 = !DILocation(line: 399, column: 5, scope: !654)
!4180 = !DILocation(line: 399, column: 10, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !658, file: !412, discriminator: 1)
!4182 = !DILocation(line: 399, column: 20, scope: !658)
!4183 = !DILocation(line: 399, column: 51, scope: !658)
!4184 = !DILocation(line: 399, column: 58, scope: !658)
!4185 = !DILocation(line: 399, column: 75, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !658, file: !412, line: 399, column: 75)
!4187 = !DILocation(line: 399, column: 91, scope: !4186)
!4188 = !DILocation(line: 399, column: 75, scope: !658)
!4189 = !DILocation(line: 399, column: 122, scope: !4190)
!4190 = !DILexicalBlockFile(scope: !4186, file: !412, discriminator: 2)
!4191 = !DILocation(line: 399, column: 141, scope: !4186)
!4192 = !DILocation(line: 399, column: 150, scope: !4186)
!4193 = !DILocation(line: 399, column: 106, scope: !4186)
!4194 = !DILocation(line: 399, column: 155, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !4196, file: !412, discriminator: 4)
!4196 = !DILexicalBlockFile(scope: !654, file: !412, discriminator: 3)
!4197 = !DILocation(line: 399, column: 155, scope: !658)
!4198 = !DILocation(line: 400, column: 12, scope: !654)
!4199 = !DILocation(line: 400, column: 19, scope: !654)
!4200 = !DILocation(line: 400, column: 5, scope: !654)
!4201 = !DILocation(line: 360, column: 48, scope: !673)
!4202 = !DILocation(line: 360, column: 61, scope: !673)
!4203 = !DILocation(line: 362, column: 52, scope: !673)
!4204 = !DILocation(line: 362, column: 59, scope: !673)
!4205 = !DILocation(line: 362, column: 69, scope: !673)
!4206 = !DILocation(line: 362, column: 78, scope: !673)
!4207 = !DILocation(line: 362, column: 85, scope: !673)
!4208 = !DILocation(line: 362, column: 95, scope: !673)
!4209 = !DILocation(line: 362, column: 12, scope: !673)
!4210 = !DILocation(line: 362, column: 5, scope: !673)
!4211 = !DILocation(line: 366, column: 35, scope: !659)
!4212 = !DILocation(line: 368, column: 5, scope: !659)
!4213 = !DILocation(line: 368, column: 15, scope: !659)
!4214 = !DILocation(line: 368, column: 31, scope: !659)
!4215 = !DILocation(line: 371, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !659, file: !412, line: 371, column: 9)
!4217 = !DILocation(line: 371, column: 16, scope: !4216)
!4218 = !DILocation(line: 371, column: 23, scope: !4216)
!4219 = !DILocation(line: 371, column: 37, scope: !4216)
!4220 = !DILocation(line: 371, column: 58, scope: !4221)
!4221 = !DILexicalBlockFile(scope: !4216, file: !412, discriminator: 1)
!4222 = !DILocation(line: 371, column: 65, scope: !4216)
!4223 = !DILocation(line: 371, column: 75, scope: !4216)
!4224 = !DILocation(line: 371, column: 86, scope: !4216)
!4225 = !DILocation(line: 371, column: 95, scope: !4216)
!4226 = !DILocation(line: 371, column: 112, scope: !4216)
!4227 = !DILocation(line: 371, column: 9, scope: !659)
!4228 = !DILocation(line: 372, column: 25, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4216, file: !412, line: 371, column: 119)
!4230 = !DILocation(line: 372, column: 9, scope: !4229)
!4231 = !DILocation(line: 374, column: 9, scope: !4229)
!4232 = !DILocation(line: 377, column: 53, scope: !659)
!4233 = !DILocation(line: 377, column: 60, scope: !659)
!4234 = !DILocation(line: 377, column: 41, scope: !659)
!4235 = !DILocation(line: 377, column: 21, scope: !659)
!4236 = !DILocation(line: 377, column: 19, scope: !659)
!4237 = !DILocation(line: 379, column: 9, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !659, file: !412, line: 379, column: 9)
!4239 = !DILocation(line: 379, column: 23, scope: !4238)
!4240 = !DILocation(line: 379, column: 9, scope: !659)
!4241 = !DILocation(line: 380, column: 9, scope: !4238)
!4242 = !DILocation(line: 382, column: 27, scope: !667)
!4243 = !DILocation(line: 382, column: 44, scope: !667)
!4244 = !DILocation(line: 382, column: 55, scope: !667)
!4245 = !DILocation(line: 382, column: 64, scope: !667)
!4246 = !DILocation(line: 382, column: 81, scope: !667)
!4247 = !DILocation(line: 382, column: 9, scope: !659)
!4248 = !DILocation(line: 383, column: 25, scope: !666)
!4249 = !DILocation(line: 383, column: 9, scope: !666)
!4250 = !DILocation(line: 385, column: 9, scope: !666)
!4251 = !DILocation(line: 385, column: 14, scope: !4252)
!4252 = !DILexicalBlockFile(scope: !665, file: !412, discriminator: 1)
!4253 = !DILocation(line: 385, column: 24, scope: !665)
!4254 = !DILocation(line: 385, column: 55, scope: !665)
!4255 = !DILocation(line: 385, column: 75, scope: !670)
!4256 = !DILocation(line: 385, column: 91, scope: !670)
!4257 = !DILocation(line: 385, column: 75, scope: !665)
!4258 = !DILocation(line: 385, column: 106, scope: !4259)
!4259 = !DILexicalBlockFile(scope: !670, file: !412, discriminator: 2)
!4260 = !DILocation(line: 385, column: 111, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !669, file: !412, discriminator: 4)
!4262 = !DILocation(line: 385, column: 121, scope: !669)
!4263 = !DILocation(line: 385, column: 151, scope: !669)
!4264 = !DILocation(line: 385, column: 177, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !669, file: !412, line: 385, column: 174)
!4266 = !DILocation(line: 385, column: 194, scope: !4265)
!4267 = !DILocation(line: 385, column: 174, scope: !4265)
!4268 = !DILocation(line: 385, column: 204, scope: !4265)
!4269 = !DILocation(line: 385, column: 174, scope: !669)
!4270 = !DILocation(line: 385, column: 174, scope: !4271)
!4271 = !DILexicalBlockFile(scope: !669, file: !412, discriminator: 5)
!4272 = !DILocation(line: 385, column: 235, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !4265, file: !412, discriminator: 6)
!4274 = !DILocation(line: 385, column: 253, scope: !4265)
!4275 = !DILocation(line: 385, column: 263, scope: !4265)
!4276 = !DILocation(line: 385, column: 288, scope: !4265)
!4277 = !DILocation(line: 385, column: 219, scope: !4265)
!4278 = !DILocation(line: 385, column: 307, scope: !4279)
!4279 = !DILexicalBlockFile(scope: !670, file: !412, discriminator: 7)
!4280 = !DILocation(line: 385, column: 307, scope: !669)
!4281 = !DILocation(line: 385, column: 307, scope: !4282)
!4282 = !DILexicalBlockFile(scope: !669, file: !412, discriminator: 8)
!4283 = !DILocation(line: 385, column: 307, scope: !4284)
!4284 = !DILexicalBlockFile(scope: !669, file: !412, discriminator: 9)
!4285 = !DILocation(line: 385, column: 320, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !4287, file: !412, discriminator: 10)
!4287 = !DILexicalBlockFile(scope: !666, file: !412, discriminator: 3)
!4288 = !DILocation(line: 385, column: 320, scope: !665)
!4289 = !DILocation(line: 385, column: 320, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !665, file: !412, discriminator: 11)
!4291 = !DILocation(line: 386, column: 9, scope: !666)
!4292 = !DILocation(line: 389, column: 41, scope: !659)
!4293 = !DILocation(line: 389, column: 56, scope: !659)
!4294 = !DILocation(line: 389, column: 63, scope: !659)
!4295 = !DILocation(line: 389, column: 11, scope: !659)
!4296 = !DILocation(line: 389, column: 9, scope: !659)
!4297 = !DILocation(line: 390, column: 5, scope: !659)
!4298 = !DILocation(line: 390, column: 10, scope: !4299)
!4299 = !DILexicalBlockFile(scope: !672, file: !412, discriminator: 1)
!4300 = !DILocation(line: 390, column: 20, scope: !672)
!4301 = !DILocation(line: 390, column: 50, scope: !672)
!4302 = !DILocation(line: 390, column: 74, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !672, file: !412, line: 390, column: 71)
!4304 = !DILocation(line: 390, column: 91, scope: !4303)
!4305 = !DILocation(line: 390, column: 71, scope: !4303)
!4306 = !DILocation(line: 390, column: 101, scope: !4303)
!4307 = !DILocation(line: 390, column: 71, scope: !672)
!4308 = !DILocation(line: 390, column: 71, scope: !4309)
!4309 = !DILexicalBlockFile(scope: !672, file: !412, discriminator: 2)
!4310 = !DILocation(line: 390, column: 132, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4303, file: !412, discriminator: 3)
!4312 = !DILocation(line: 390, column: 150, scope: !4303)
!4313 = !DILocation(line: 390, column: 160, scope: !4303)
!4314 = !DILocation(line: 390, column: 185, scope: !4303)
!4315 = !DILocation(line: 390, column: 116, scope: !4303)
!4316 = !DILocation(line: 390, column: 204, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !659, file: !412, discriminator: 4)
!4318 = !DILocation(line: 390, column: 204, scope: !672)
!4319 = !DILocation(line: 390, column: 204, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !672, file: !412, discriminator: 5)
!4321 = !DILocation(line: 391, column: 12, scope: !659)
!4322 = !DILocation(line: 391, column: 5, scope: !659)
!4323 = !DILocation(line: 392, column: 1, scope: !659)
!4324 = !DILocation(line: 63, column: 28, scope: !683)
!4325 = !DILocation(line: 63, column: 45, scope: !683)
!4326 = !DILocation(line: 63, column: 61, scope: !683)
!4327 = !DILocation(line: 65, column: 9, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !683, file: !412, line: 65, column: 9)
!4329 = !DILocation(line: 65, column: 13, scope: !4328)
!4330 = !DILocation(line: 65, column: 9, scope: !683)
!4331 = !DILocation(line: 66, column: 25, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !412, line: 65, column: 28)
!4333 = !DILocation(line: 66, column: 12, scope: !4332)
!4334 = !DILocation(line: 66, column: 34, scope: !4332)
!4335 = !DILocation(line: 66, column: 43, scope: !4332)
!4336 = !DILocation(line: 67, column: 29, scope: !4332)
!4337 = !DILocation(line: 67, column: 17, scope: !4332)
!4338 = !DILocation(line: 67, column: 10, scope: !4332)
!4339 = !DILocation(line: 67, column: 15, scope: !4332)
!4340 = !DILocation(line: 68, column: 9, scope: !4332)
!4341 = !DILocation(line: 70, column: 25, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !683, file: !412, line: 70, column: 9)
!4343 = !DILocation(line: 70, column: 32, scope: !4342)
!4344 = !DILocation(line: 70, column: 45, scope: !4342)
!4345 = !DILocation(line: 70, column: 52, scope: !4342)
!4346 = !DILocation(line: 70, column: 41, scope: !4342)
!4347 = !DILocation(line: 70, column: 60, scope: !4342)
!4348 = !DILocation(line: 70, column: 94, scope: !4349)
!4349 = !DILexicalBlockFile(scope: !4342, file: !412, discriminator: 1)
!4350 = !DILocation(line: 70, column: 101, scope: !4342)
!4351 = !DILocation(line: 70, column: 112, scope: !4342)
!4352 = !DILocation(line: 70, column: 119, scope: !4342)
!4353 = !DILocation(line: 70, column: 63, scope: !4342)
!4354 = !DILocation(line: 70, column: 9, scope: !683)
!4355 = !DILocation(line: 71, column: 22, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4342, file: !412, line: 70, column: 130)
!4357 = !DILocation(line: 74, column: 50, scope: !4356)
!4358 = !DILocation(line: 74, column: 22, scope: !4356)
!4359 = !DILocation(line: 75, column: 22, scope: !4356)
!4360 = !DILocation(line: 75, column: 29, scope: !4356)
!4361 = !DILocation(line: 75, column: 37, scope: !4356)
!4362 = !DILocation(line: 76, column: 22, scope: !4356)
!4363 = !DILocation(line: 76, column: 27, scope: !4356)
!4364 = !DILocation(line: 76, column: 36, scope: !4356)
!4365 = !DILocation(line: 71, column: 9, scope: !4356)
!4366 = !DILocation(line: 77, column: 10, scope: !4356)
!4367 = !DILocation(line: 77, column: 15, scope: !4356)
!4368 = !DILocation(line: 78, column: 9, scope: !4356)
!4369 = !DILocation(line: 80, column: 5, scope: !683)
!4370 = !DILocation(line: 81, column: 1, scope: !683)
!4371 = !DILocation(line: 435, column: 37, scope: !718)
!4372 = !DILocation(line: 435, column: 50, scope: !718)
!4373 = !DILocation(line: 437, column: 9, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !718, file: !412, line: 437, column: 9)
!4375 = !DILocation(line: 437, column: 16, scope: !4374)
!4376 = !DILocation(line: 437, column: 26, scope: !4374)
!4377 = !{!2388, !1277, i64 32}
!4378 = !DILocation(line: 437, column: 30, scope: !4374)
!4379 = !DILocation(line: 437, column: 9, scope: !718)
!4380 = !DILocation(line: 438, column: 55, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4374, file: !412, line: 437, column: 45)
!4382 = !DILocation(line: 439, column: 9, scope: !4381)
!4383 = !DILocation(line: 441, column: 33, scope: !718)
!4384 = !DILocation(line: 441, column: 40, scope: !718)
!4385 = !DILocation(line: 441, column: 50, scope: !718)
!4386 = !DILocation(line: 441, column: 12, scope: !718)
!4387 = !DILocation(line: 441, column: 5, scope: !718)
!4388 = !DILocation(line: 442, column: 1, scope: !718)
!4389 = !DILocation(line: 168, column: 31, scope: !740)
!4390 = !DILocation(line: 168, column: 48, scope: !740)
!4391 = !DILocation(line: 168, column: 63, scope: !740)
!4392 = !DILocation(line: 169, column: 21, scope: !740)
!4393 = !DILocation(line: 172, column: 25, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !740, file: !412, line: 172, column: 9)
!4395 = !DILocation(line: 172, column: 32, scope: !4394)
!4396 = !DILocation(line: 172, column: 45, scope: !4394)
!4397 = !DILocation(line: 172, column: 52, scope: !4394)
!4398 = !DILocation(line: 172, column: 41, scope: !4394)
!4399 = !DILocation(line: 172, column: 60, scope: !4394)
!4400 = !DILocation(line: 172, column: 94, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !4394, file: !412, discriminator: 1)
!4402 = !DILocation(line: 172, column: 101, scope: !4394)
!4403 = !DILocation(line: 172, column: 112, scope: !4394)
!4404 = !DILocation(line: 172, column: 119, scope: !4394)
!4405 = !DILocation(line: 172, column: 63, scope: !4394)
!4406 = !DILocation(line: 172, column: 9, scope: !740)
!4407 = !DILocation(line: 173, column: 22, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4394, file: !412, line: 172, column: 130)
!4409 = !DILocation(line: 176, column: 33, scope: !4408)
!4410 = !DILocation(line: 176, column: 22, scope: !4408)
!4411 = !DILocation(line: 177, column: 22, scope: !4408)
!4412 = !DILocation(line: 177, column: 29, scope: !4408)
!4413 = !DILocation(line: 177, column: 37, scope: !4408)
!4414 = !DILocation(line: 178, column: 22, scope: !4408)
!4415 = !DILocation(line: 178, column: 27, scope: !4408)
!4416 = !DILocation(line: 178, column: 36, scope: !4408)
!4417 = !DILocation(line: 173, column: 9, scope: !4408)
!4418 = !DILocation(line: 179, column: 10, scope: !4408)
!4419 = !DILocation(line: 179, column: 15, scope: !4408)
!4420 = !DILocation(line: 180, column: 9, scope: !4408)
!4421 = !DILocation(line: 182, column: 5, scope: !740)
!4422 = !DILocation(line: 183, column: 1, scope: !740)
!4423 = !DILocation(line: 451, column: 37, scope: !754)
!4424 = !DILocation(line: 451, column: 50, scope: !754)
!4425 = !DILocation(line: 453, column: 9, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !754, file: !412, line: 453, column: 9)
!4427 = !DILocation(line: 453, column: 16, scope: !4426)
!4428 = !DILocation(line: 453, column: 26, scope: !4426)
!4429 = !{!2011, !1277, i64 24}
!4430 = !DILocation(line: 453, column: 30, scope: !4426)
!4431 = !DILocation(line: 453, column: 9, scope: !754)
!4432 = !DILocation(line: 454, column: 55, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4426, file: !412, line: 453, column: 45)
!4434 = !DILocation(line: 455, column: 9, scope: !4433)
!4435 = !DILocation(line: 457, column: 33, scope: !754)
!4436 = !DILocation(line: 457, column: 40, scope: !754)
!4437 = !DILocation(line: 457, column: 50, scope: !754)
!4438 = !DILocation(line: 457, column: 12, scope: !754)
!4439 = !DILocation(line: 457, column: 5, scope: !754)
!4440 = !DILocation(line: 458, column: 1, scope: !754)
!4441 = !DILocation(line: 467, column: 44, scope: !800)
!4442 = !DILocation(line: 467, column: 57, scope: !800)
!4443 = !DILocation(line: 469, column: 42, scope: !800)
!4444 = !DILocation(line: 469, column: 49, scope: !800)
!4445 = !DILocation(line: 469, column: 57, scope: !800)
!4446 = !DILocation(line: 469, column: 63, scope: !800)
!4447 = !DILocation(line: 469, column: 70, scope: !800)
!4448 = !DILocation(line: 469, column: 78, scope: !800)
!4449 = !{!2436, !1277, i64 32}
!4450 = !DILocation(line: 469, column: 12, scope: !800)
!4451 = !DILocation(line: 469, column: 5, scope: !800)
!4452 = !DILocation(line: 473, column: 55, scope: !806)
!4453 = !DILocation(line: 473, column: 68, scope: !806)
!4454 = !DILocation(line: 475, column: 52, scope: !806)
!4455 = !DILocation(line: 475, column: 59, scope: !806)
!4456 = !DILocation(line: 475, column: 67, scope: !806)
!4457 = !DILocation(line: 475, column: 73, scope: !806)
!4458 = !DILocation(line: 475, column: 80, scope: !806)
!4459 = !DILocation(line: 475, column: 88, scope: !806)
!4460 = !DILocation(line: 475, column: 12, scope: !806)
!4461 = !DILocation(line: 475, column: 5, scope: !806)
!4462 = !DILocation(line: 792, column: 43, scope: !846)
!4463 = !DILocation(line: 792, column: 57, scope: !846)
!4464 = !DILocation(line: 794, column: 24, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !846, file: !412, line: 794, column: 9)
!4466 = !DILocation(line: 794, column: 28, scope: !4465)
!4467 = !DILocation(line: 794, column: 39, scope: !4465)
!4468 = !DILocation(line: 794, column: 48, scope: !4465)
!4469 = !DILocation(line: 794, column: 9, scope: !846)
!4470 = !DILocation(line: 795, column: 32, scope: !4465)
!4471 = !DILocation(line: 795, column: 36, scope: !4465)
!4472 = !DILocation(line: 795, column: 45, scope: !4465)
!4473 = !DILocation(line: 795, column: 16, scope: !4465)
!4474 = !DILocation(line: 795, column: 9, scope: !4465)
!4475 = !DILocation(line: 797, column: 36, scope: !4465)
!4476 = !DILocation(line: 797, column: 40, scope: !4465)
!4477 = !DILocation(line: 797, column: 49, scope: !4465)
!4478 = !DILocation(line: 797, column: 16, scope: !4465)
!4479 = !DILocation(line: 797, column: 9, scope: !4465)
!4480 = !DILocation(line: 798, column: 1, scope: !846)
!4481 = !DILocation(line: 774, column: 38, scope: !852)
!4482 = !DILocation(line: 776, column: 26, scope: !852)
!4483 = !DILocation(line: 776, column: 30, scope: !852)
!4484 = !DILocation(line: 776, column: 12, scope: !852)
!4485 = !DILocation(line: 776, column: 5, scope: !852)
!4486 = !DILocation(line: 780, column: 42, scope: !857)
!4487 = !DILocation(line: 780, column: 56, scope: !857)
!4488 = !DILocation(line: 782, column: 29, scope: !857)
!4489 = !DILocation(line: 782, column: 33, scope: !857)
!4490 = !DILocation(line: 782, column: 42, scope: !857)
!4491 = !DILocation(line: 782, column: 12, scope: !857)
!4492 = !DILocation(line: 782, column: 5, scope: !857)
!4493 = !DILocation(line: 814, column: 38, scope: !886)
!4494 = !DILocation(line: 814, column: 52, scope: !886)
!4495 = !DILocation(line: 816, column: 5, scope: !886)
!4496 = !DILocation(line: 816, column: 15, scope: !886)
!4497 = !DILocation(line: 816, column: 21, scope: !886)
!4498 = !DILocation(line: 819, column: 28, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !886, file: !412, line: 819, column: 9)
!4500 = !DILocation(line: 819, column: 10, scope: !4499)
!4501 = !DILocation(line: 819, column: 9, scope: !886)
!4502 = !DILocation(line: 820, column: 9, scope: !4499)
!4503 = !DILocation(line: 821, column: 35, scope: !886)
!4504 = !DILocation(line: 821, column: 39, scope: !886)
!4505 = !DILocation(line: 821, column: 67, scope: !886)
!4506 = !DILocation(line: 821, column: 72, scope: !886)
!4507 = !DILocation(line: 821, column: 12, scope: !886)
!4508 = !DILocation(line: 821, column: 5, scope: !886)
!4509 = !DILocation(line: 822, column: 1, scope: !886)
!4510 = !DILocation(line: 825, column: 39, scope: !892)
!4511 = !DILocation(line: 828, column: 35, scope: !892)
!4512 = !DILocation(line: 828, column: 39, scope: !892)
!4513 = !DILocation(line: 828, column: 12, scope: !892)
!4514 = !DILocation(line: 828, column: 5, scope: !892)
!4515 = !DILocation(line: 832, column: 41, scope: !895)
!4516 = !DILocation(line: 835, column: 35, scope: !895)
!4517 = !DILocation(line: 835, column: 39, scope: !895)
!4518 = !DILocation(line: 835, column: 12, scope: !895)
!4519 = !DILocation(line: 835, column: 5, scope: !895)
!4520 = !DILocation(line: 839, column: 40, scope: !898)
!4521 = !DILocation(line: 842, column: 35, scope: !898)
!4522 = !DILocation(line: 842, column: 39, scope: !898)
!4523 = !DILocation(line: 842, column: 12, scope: !898)
!4524 = !DILocation(line: 842, column: 5, scope: !898)
!4525 = !DILocation(line: 846, column: 39, scope: !901)
!4526 = !DILocation(line: 849, column: 35, scope: !901)
!4527 = !DILocation(line: 849, column: 39, scope: !901)
!4528 = !DILocation(line: 849, column: 12, scope: !901)
!4529 = !DILocation(line: 849, column: 5, scope: !901)
!4530 = !DILocation(line: 59, column: 48, scope: !950)
!4531 = !DILocation(line: 59, column: 74, scope: !950)
!4532 = !DILocation(line: 61, column: 11, scope: !950)
!4533 = !DILocation(line: 62, column: 12, scope: !950)
!4534 = !DILocation(line: 67, column: 9, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !950, file: !4, line: 62, column: 19)
!4536 = !DILocation(line: 70, column: 9, scope: !4535)
!4537 = !DILocation(line: 72, column: 12, scope: !950)
!4538 = !DILocation(line: 77, column: 9, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !950, file: !4, line: 72, column: 19)
!4540 = !DILocation(line: 80, column: 9, scope: !4539)
!4541 = !DILocation(line: 82, column: 1, scope: !950)
!4542 = !DILocation(line: 51, column: 42, scope: !959)
!4543 = !DILocation(line: 53, column: 9, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !959, file: !4, line: 53, column: 9)
!4545 = !DILocation(line: 53, column: 15, scope: !4544)
!4546 = !DILocation(line: 53, column: 9, scope: !959)
!4547 = !DILocation(line: 54, column: 9, scope: !4544)
!4548 = !{i32 154975}
!4549 = !DILocation(line: 55, column: 1, scope: !959)
!4550 = !DILocation(line: 44, column: 42, scope: !964)
!4551 = !DILocation(line: 46, column: 9, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !964, file: !4, line: 46, column: 9)
!4553 = !DILocation(line: 46, column: 15, scope: !4552)
!4554 = !DILocation(line: 46, column: 9, scope: !964)
!4555 = !DILocation(line: 47, column: 9, scope: !4552)
!4556 = !{i32 154815}
!4557 = !DILocation(line: 48, column: 1, scope: !964)
!4558 = !DILocation(line: 1113, column: 31, scope: !1018)
!4559 = !DILocation(line: 1115, column: 5, scope: !1018)
!4560 = !DILocation(line: 1115, column: 15, scope: !1018)
!4561 = !DILocation(line: 1116, column: 5, scope: !1018)
!4562 = !DILocation(line: 1116, column: 15, scope: !1018)
!4563 = !DILocation(line: 1119, column: 16, scope: !1018)
!4564 = !DILocation(line: 1119, column: 14, scope: !1018)
!4565 = !DILocation(line: 1120, column: 33, scope: !1018)
!4566 = !DILocation(line: 1120, column: 15, scope: !1018)
!4567 = !DILocation(line: 1120, column: 13, scope: !1018)
!4568 = !DILocation(line: 1121, column: 35, scope: !1018)
!4569 = !DILocation(line: 1121, column: 44, scope: !1018)
!4570 = !DILocation(line: 1121, column: 48, scope: !1018)
!4571 = !DILocation(line: 1121, column: 74, scope: !1018)
!4572 = !DILocation(line: 1121, column: 78, scope: !1018)
!4573 = !DILocation(line: 1121, column: 56, scope: !1018)
!4574 = !DILocation(line: 1121, column: 87, scope: !1018)
!4575 = !DILocation(line: 1121, column: 12, scope: !1018)
!4576 = !DILocation(line: 1122, column: 1, scope: !1018)
!4577 = !DILocation(line: 1121, column: 5, scope: !1018)
!4578 = !DILocation(line: 1135, column: 33, scope: !1023)
!4579 = !DILocation(line: 1137, column: 5, scope: !1023)
!4580 = !DILocation(line: 1137, column: 15, scope: !1023)
!4581 = !DILocation(line: 1137, column: 51, scope: !1023)
!4582 = !DILocation(line: 1137, column: 55, scope: !1023)
!4583 = !DILocation(line: 1137, column: 33, scope: !1023)
!4584 = !DILocation(line: 1137, column: 64, scope: !1023)
!4585 = !DILocation(line: 1137, column: 19, scope: !1023)
!4586 = !DILocation(line: 1139, column: 21, scope: !1023)
!4587 = !DILocation(line: 1139, column: 26, scope: !1023)
!4588 = !DILocation(line: 1139, column: 35, scope: !1023)
!4589 = !DILocation(line: 1140, column: 12, scope: !1023)
!4590 = !DILocation(line: 1141, column: 1, scope: !1023)
!4591 = !DILocation(line: 1140, column: 5, scope: !1023)
!4592 = !DILocation(line: 1144, column: 29, scope: !1027)
!4593 = !DILocation(line: 1146, column: 5, scope: !1027)
!4594 = !DILocation(line: 1146, column: 17, scope: !1027)
!4595 = !DILocation(line: 1146, column: 21, scope: !1027)
!4596 = !DILocation(line: 1146, column: 25, scope: !1027)
!4597 = !DILocation(line: 1146, column: 32, scope: !1027)
!4598 = !DILocation(line: 1146, column: 40, scope: !1027)
!4599 = !DILocation(line: 1148, column: 33, scope: !1027)
!4600 = !DILocation(line: 1148, column: 12, scope: !1027)
!4601 = !DILocation(line: 1149, column: 1, scope: !1027)
!4602 = !DILocation(line: 1148, column: 5, scope: !1027)
!4603 = !DILocation(line: 1164, column: 33, scope: !1031)
!4604 = !DILocation(line: 1166, column: 48, scope: !1031)
!4605 = !DILocation(line: 1166, column: 52, scope: !1031)
!4606 = !DILocation(line: 1166, column: 31, scope: !1031)
!4607 = !DILocation(line: 1166, column: 12, scope: !1031)
!4608 = !DILocation(line: 1166, column: 5, scope: !1031)
!4609 = !DILocation(line: 1152, column: 28, scope: !1034)
!4610 = !DILocation(line: 1152, column: 38, scope: !1034)
!4611 = !DILocation(line: 1154, column: 42, scope: !1034)
!4612 = !DILocation(line: 1154, column: 46, scope: !1034)
!4613 = !DILocation(line: 1154, column: 53, scope: !1034)
!4614 = !DILocation(line: 1154, column: 61, scope: !1034)
!4615 = !DILocation(line: 1154, column: 67, scope: !1034)
!4616 = !DILocation(line: 1154, column: 71, scope: !1034)
!4617 = !DILocation(line: 1154, column: 78, scope: !1034)
!4618 = !DILocation(line: 1154, column: 86, scope: !1034)
!4619 = !DILocation(line: 1154, column: 12, scope: !1034)
!4620 = !DILocation(line: 1154, column: 5, scope: !1034)
!4621 = !DILocation(line: 1158, column: 39, scope: !1040)
!4622 = !DILocation(line: 1158, column: 49, scope: !1040)
!4623 = !DILocation(line: 1160, column: 52, scope: !1040)
!4624 = !DILocation(line: 1160, column: 56, scope: !1040)
!4625 = !DILocation(line: 1160, column: 63, scope: !1040)
!4626 = !DILocation(line: 1160, column: 71, scope: !1040)
!4627 = !DILocation(line: 1160, column: 77, scope: !1040)
!4628 = !DILocation(line: 1160, column: 81, scope: !1040)
!4629 = !DILocation(line: 1160, column: 88, scope: !1040)
!4630 = !DILocation(line: 1160, column: 96, scope: !1040)
!4631 = !DILocation(line: 1160, column: 12, scope: !1040)
!4632 = !DILocation(line: 1160, column: 5, scope: !1040)
!4633 = !DILocation(line: 1325, column: 27, scope: !1092)
!4634 = !DILocation(line: 1325, column: 43, scope: !1092)
!4635 = !DILocation(line: 1327, column: 26, scope: !1092)
!4636 = !DILocation(line: 1327, column: 32, scope: !1092)
!4637 = !DILocation(line: 1327, column: 12, scope: !1092)
!4638 = !DILocation(line: 1327, column: 5, scope: !1092)
!4639 = !DILocation(line: 1335, column: 27, scope: !1131)
!4640 = !DILocation(line: 1335, column: 43, scope: !1131)
!4641 = !DILocation(line: 1337, column: 26, scope: !1131)
!4642 = !DILocation(line: 1337, column: 44, scope: !1131)
!4643 = !DILocation(line: 1337, column: 12, scope: !1131)
!4644 = !DILocation(line: 1337, column: 5, scope: !1131)
!4645 = !DILocation(line: 1345, column: 28, scope: !1135)
!4646 = !DILocation(line: 1345, column: 44, scope: !1135)
!4647 = !DILocation(line: 1347, column: 26, scope: !1135)
!4648 = !DILocation(line: 1347, column: 56, scope: !1135)
!4649 = !DILocation(line: 1347, column: 12, scope: !1135)
!4650 = !DILocation(line: 1347, column: 5, scope: !1135)
!4651 = !DILocation(line: 1416, column: 25, scope: !1096)
!4652 = !DILocation(line: 1416, column: 40, scope: !1096)
!4653 = !DILocation(line: 1416, column: 55, scope: !1096)
!4654 = !DILocation(line: 1416, column: 70, scope: !1096)
!4655 = !DILocation(line: 1418, column: 5, scope: !1096)
!4656 = !DILocation(line: 1418, column: 21, scope: !1096)
!4657 = !DILocation(line: 1418, column: 46, scope: !1096)
!4658 = !DILocation(line: 1418, column: 28, scope: !1096)
!4659 = !DILocation(line: 1419, column: 5, scope: !1096)
!4660 = !DILocation(line: 1419, column: 15, scope: !1096)
!4661 = !DILocation(line: 1419, column: 21, scope: !1096)
!4662 = !DILocation(line: 1419, column: 28, scope: !1096)
!4663 = !DILocation(line: 1421, column: 26, scope: !1096)
!4664 = !DILocation(line: 1421, column: 12, scope: !1096)
!4665 = !DILocation(line: 1421, column: 10, scope: !1096)
!4666 = !DILocation(line: 1422, column: 9, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1422, column: 9)
!4668 = !DILocation(line: 1422, column: 14, scope: !4667)
!4669 = !DILocation(line: 1422, column: 9, scope: !1096)
!4670 = !DILocation(line: 1423, column: 9, scope: !4667)
!4671 = !DILocation(line: 1425, column: 9, scope: !1111)
!4672 = !DILocation(line: 1425, column: 13, scope: !1111)
!4673 = !DILocation(line: 1425, column: 27, scope: !1111)
!4674 = !DILocation(line: 1425, column: 30, scope: !4675)
!4675 = !DILexicalBlockFile(scope: !1111, file: !412, discriminator: 1)
!4676 = !DILocation(line: 1425, column: 34, scope: !1111)
!4677 = !DILocation(line: 1425, column: 9, scope: !1096)
!4678 = !DILocation(line: 1426, column: 9, scope: !1110)
!4679 = !DILocation(line: 1426, column: 14, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !1109, file: !412, discriminator: 1)
!4681 = !DILocation(line: 1426, column: 24, scope: !1109)
!4682 = !DILocation(line: 1426, column: 55, scope: !1109)
!4683 = !DILocation(line: 1426, column: 65, scope: !1114)
!4684 = !DILocation(line: 1426, column: 81, scope: !1114)
!4685 = !DILocation(line: 1426, column: 65, scope: !1109)
!4686 = !DILocation(line: 1426, column: 96, scope: !4687)
!4687 = !DILexicalBlockFile(scope: !1114, file: !412, discriminator: 2)
!4688 = !DILocation(line: 1426, column: 101, scope: !4689)
!4689 = !DILexicalBlockFile(scope: !1113, file: !412, discriminator: 4)
!4690 = !DILocation(line: 1426, column: 111, scope: !1113)
!4691 = !DILocation(line: 1426, column: 141, scope: !1113)
!4692 = !DILocation(line: 1426, column: 167, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !1113, file: !412, line: 1426, column: 164)
!4694 = !DILocation(line: 1426, column: 184, scope: !4693)
!4695 = !DILocation(line: 1426, column: 164, scope: !4693)
!4696 = !DILocation(line: 1426, column: 194, scope: !4693)
!4697 = !DILocation(line: 1426, column: 164, scope: !1113)
!4698 = !DILocation(line: 1426, column: 164, scope: !4699)
!4699 = !DILexicalBlockFile(scope: !1113, file: !412, discriminator: 5)
!4700 = !DILocation(line: 1426, column: 225, scope: !4701)
!4701 = !DILexicalBlockFile(scope: !4693, file: !412, discriminator: 6)
!4702 = !DILocation(line: 1426, column: 243, scope: !4693)
!4703 = !DILocation(line: 1426, column: 253, scope: !4693)
!4704 = !DILocation(line: 1426, column: 278, scope: !4693)
!4705 = !DILocation(line: 1426, column: 209, scope: !4693)
!4706 = !DILocation(line: 1426, column: 297, scope: !4707)
!4707 = !DILexicalBlockFile(scope: !1114, file: !412, discriminator: 7)
!4708 = !DILocation(line: 1426, column: 297, scope: !1113)
!4709 = !DILocation(line: 1426, column: 297, scope: !4710)
!4710 = !DILexicalBlockFile(scope: !1113, file: !412, discriminator: 8)
!4711 = !DILocation(line: 1426, column: 297, scope: !4712)
!4712 = !DILexicalBlockFile(scope: !1113, file: !412, discriminator: 9)
!4713 = !DILocation(line: 1426, column: 310, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4715, file: !412, discriminator: 10)
!4715 = !DILexicalBlockFile(scope: !1110, file: !412, discriminator: 3)
!4716 = !DILocation(line: 1426, column: 310, scope: !1109)
!4717 = !DILocation(line: 1426, column: 310, scope: !4718)
!4718 = !DILexicalBlockFile(scope: !1109, file: !412, discriminator: 11)
!4719 = !DILocation(line: 1427, column: 15, scope: !1110)
!4720 = !DILocation(line: 1427, column: 21, scope: !1110)
!4721 = !DILocation(line: 1427, column: 32, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !1110, file: !412, discriminator: 1)
!4723 = !DILocation(line: 1427, column: 38, scope: !1110)
!4724 = !DILocation(line: 1427, column: 15, scope: !4725)
!4725 = !DILexicalBlockFile(scope: !1110, file: !412, discriminator: 2)
!4726 = !DILocation(line: 1427, column: 13, scope: !4727)
!4727 = !DILexicalBlockFile(scope: !4715, file: !412, discriminator: 4)
!4728 = !DILocation(line: 1428, column: 5, scope: !1110)
!4729 = !DILocation(line: 1429, column: 9, scope: !1118)
!4730 = !DILocation(line: 1429, column: 13, scope: !1118)
!4731 = !DILocation(line: 1429, column: 27, scope: !1118)
!4732 = !DILocation(line: 1429, column: 30, scope: !4733)
!4733 = !DILexicalBlockFile(scope: !1118, file: !412, discriminator: 1)
!4734 = !DILocation(line: 1429, column: 34, scope: !1118)
!4735 = !DILocation(line: 1429, column: 9, scope: !1096)
!4736 = !DILocation(line: 1430, column: 9, scope: !1117)
!4737 = !DILocation(line: 1430, column: 14, scope: !4738)
!4738 = !DILexicalBlockFile(scope: !1116, file: !412, discriminator: 1)
!4739 = !DILocation(line: 1430, column: 24, scope: !1116)
!4740 = !DILocation(line: 1430, column: 55, scope: !1116)
!4741 = !DILocation(line: 1430, column: 65, scope: !1121)
!4742 = !DILocation(line: 1430, column: 81, scope: !1121)
!4743 = !DILocation(line: 1430, column: 65, scope: !1116)
!4744 = !DILocation(line: 1430, column: 96, scope: !4745)
!4745 = !DILexicalBlockFile(scope: !1121, file: !412, discriminator: 2)
!4746 = !DILocation(line: 1430, column: 101, scope: !4747)
!4747 = !DILexicalBlockFile(scope: !1120, file: !412, discriminator: 4)
!4748 = !DILocation(line: 1430, column: 111, scope: !1120)
!4749 = !DILocation(line: 1430, column: 141, scope: !1120)
!4750 = !DILocation(line: 1430, column: 167, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !1120, file: !412, line: 1430, column: 164)
!4752 = !DILocation(line: 1430, column: 184, scope: !4751)
!4753 = !DILocation(line: 1430, column: 164, scope: !4751)
!4754 = !DILocation(line: 1430, column: 194, scope: !4751)
!4755 = !DILocation(line: 1430, column: 164, scope: !1120)
!4756 = !DILocation(line: 1430, column: 164, scope: !4757)
!4757 = !DILexicalBlockFile(scope: !1120, file: !412, discriminator: 5)
!4758 = !DILocation(line: 1430, column: 225, scope: !4759)
!4759 = !DILexicalBlockFile(scope: !4751, file: !412, discriminator: 6)
!4760 = !DILocation(line: 1430, column: 243, scope: !4751)
!4761 = !DILocation(line: 1430, column: 253, scope: !4751)
!4762 = !DILocation(line: 1430, column: 278, scope: !4751)
!4763 = !DILocation(line: 1430, column: 209, scope: !4751)
!4764 = !DILocation(line: 1430, column: 297, scope: !4765)
!4765 = !DILexicalBlockFile(scope: !1121, file: !412, discriminator: 7)
!4766 = !DILocation(line: 1430, column: 297, scope: !1120)
!4767 = !DILocation(line: 1430, column: 297, scope: !4768)
!4768 = !DILexicalBlockFile(scope: !1120, file: !412, discriminator: 8)
!4769 = !DILocation(line: 1430, column: 297, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !1120, file: !412, discriminator: 9)
!4771 = !DILocation(line: 1430, column: 310, scope: !4772)
!4772 = !DILexicalBlockFile(scope: !4773, file: !412, discriminator: 10)
!4773 = !DILexicalBlockFile(scope: !1117, file: !412, discriminator: 3)
!4774 = !DILocation(line: 1430, column: 310, scope: !1116)
!4775 = !DILocation(line: 1430, column: 310, scope: !4776)
!4776 = !DILexicalBlockFile(scope: !1116, file: !412, discriminator: 11)
!4777 = !DILocation(line: 1431, column: 15, scope: !1117)
!4778 = !DILocation(line: 1431, column: 21, scope: !1117)
!4779 = !DILocation(line: 1431, column: 32, scope: !4780)
!4780 = !DILexicalBlockFile(scope: !1117, file: !412, discriminator: 1)
!4781 = !DILocation(line: 1431, column: 38, scope: !1117)
!4782 = !DILocation(line: 1431, column: 15, scope: !4783)
!4783 = !DILexicalBlockFile(scope: !1117, file: !412, discriminator: 2)
!4784 = !DILocation(line: 1431, column: 13, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4773, file: !412, discriminator: 4)
!4786 = !DILocation(line: 1432, column: 5, scope: !1117)
!4787 = !DILocation(line: 1433, column: 9, scope: !1125)
!4788 = !DILocation(line: 1433, column: 13, scope: !1125)
!4789 = !DILocation(line: 1433, column: 27, scope: !1125)
!4790 = !DILocation(line: 1433, column: 30, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !1125, file: !412, discriminator: 1)
!4792 = !DILocation(line: 1433, column: 34, scope: !1125)
!4793 = !DILocation(line: 1433, column: 9, scope: !1096)
!4794 = !DILocation(line: 1434, column: 9, scope: !1124)
!4795 = !DILocation(line: 1434, column: 14, scope: !4796)
!4796 = !DILexicalBlockFile(scope: !1123, file: !412, discriminator: 1)
!4797 = !DILocation(line: 1434, column: 24, scope: !1123)
!4798 = !DILocation(line: 1434, column: 55, scope: !1123)
!4799 = !DILocation(line: 1434, column: 65, scope: !1128)
!4800 = !DILocation(line: 1434, column: 81, scope: !1128)
!4801 = !DILocation(line: 1434, column: 65, scope: !1123)
!4802 = !DILocation(line: 1434, column: 96, scope: !4803)
!4803 = !DILexicalBlockFile(scope: !1128, file: !412, discriminator: 2)
!4804 = !DILocation(line: 1434, column: 101, scope: !4805)
!4805 = !DILexicalBlockFile(scope: !1127, file: !412, discriminator: 4)
!4806 = !DILocation(line: 1434, column: 111, scope: !1127)
!4807 = !DILocation(line: 1434, column: 141, scope: !1127)
!4808 = !DILocation(line: 1434, column: 167, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !1127, file: !412, line: 1434, column: 164)
!4810 = !DILocation(line: 1434, column: 184, scope: !4809)
!4811 = !DILocation(line: 1434, column: 164, scope: !4809)
!4812 = !DILocation(line: 1434, column: 194, scope: !4809)
!4813 = !DILocation(line: 1434, column: 164, scope: !1127)
!4814 = !DILocation(line: 1434, column: 164, scope: !4815)
!4815 = !DILexicalBlockFile(scope: !1127, file: !412, discriminator: 5)
!4816 = !DILocation(line: 1434, column: 225, scope: !4817)
!4817 = !DILexicalBlockFile(scope: !4809, file: !412, discriminator: 6)
!4818 = !DILocation(line: 1434, column: 243, scope: !4809)
!4819 = !DILocation(line: 1434, column: 253, scope: !4809)
!4820 = !DILocation(line: 1434, column: 278, scope: !4809)
!4821 = !DILocation(line: 1434, column: 209, scope: !4809)
!4822 = !DILocation(line: 1434, column: 297, scope: !4823)
!4823 = !DILexicalBlockFile(scope: !1128, file: !412, discriminator: 7)
!4824 = !DILocation(line: 1434, column: 297, scope: !1127)
!4825 = !DILocation(line: 1434, column: 297, scope: !4826)
!4826 = !DILexicalBlockFile(scope: !1127, file: !412, discriminator: 8)
!4827 = !DILocation(line: 1434, column: 297, scope: !4828)
!4828 = !DILexicalBlockFile(scope: !1127, file: !412, discriminator: 9)
!4829 = !DILocation(line: 1434, column: 310, scope: !4830)
!4830 = !DILexicalBlockFile(scope: !4831, file: !412, discriminator: 10)
!4831 = !DILexicalBlockFile(scope: !1124, file: !412, discriminator: 3)
!4832 = !DILocation(line: 1434, column: 310, scope: !1123)
!4833 = !DILocation(line: 1434, column: 310, scope: !4834)
!4834 = !DILexicalBlockFile(scope: !1123, file: !412, discriminator: 11)
!4835 = !DILocation(line: 1435, column: 15, scope: !1124)
!4836 = !DILocation(line: 1435, column: 21, scope: !1124)
!4837 = !DILocation(line: 1435, column: 32, scope: !4838)
!4838 = !DILexicalBlockFile(scope: !1124, file: !412, discriminator: 1)
!4839 = !DILocation(line: 1435, column: 38, scope: !1124)
!4840 = !DILocation(line: 1435, column: 15, scope: !4841)
!4841 = !DILexicalBlockFile(scope: !1124, file: !412, discriminator: 2)
!4842 = !DILocation(line: 1435, column: 13, scope: !4843)
!4843 = !DILexicalBlockFile(scope: !4831, file: !412, discriminator: 4)
!4844 = !DILocation(line: 1436, column: 5, scope: !1124)
!4845 = !DILocation(line: 1437, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1437, column: 9)
!4847 = !DILocation(line: 1437, column: 15, scope: !4846)
!4848 = !DILocation(line: 1437, column: 26, scope: !4846)
!4849 = !DILocation(line: 1437, column: 29, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !4846, file: !412, discriminator: 1)
!4851 = !DILocation(line: 1437, column: 33, scope: !4846)
!4852 = !DILocation(line: 1437, column: 9, scope: !1096)
!4853 = !DILocation(line: 1439, column: 13, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4846, file: !412, line: 1437, column: 55)
!4855 = !DILocation(line: 1440, column: 5, scope: !4854)
!4856 = !DILocation(line: 1442, column: 15, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4846, file: !412, line: 1441, column: 10)
!4858 = !DILocation(line: 1442, column: 21, scope: !4857)
!4859 = !DILocation(line: 1442, column: 32, scope: !4860)
!4860 = !DILexicalBlockFile(scope: !4857, file: !412, discriminator: 1)
!4861 = !DILocation(line: 1442, column: 38, scope: !4857)
!4862 = !DILocation(line: 1442, column: 15, scope: !4863)
!4863 = !DILexicalBlockFile(scope: !4857, file: !412, discriminator: 2)
!4864 = !DILocation(line: 1442, column: 13, scope: !4865)
!4865 = !DILexicalBlockFile(scope: !4866, file: !412, discriminator: 4)
!4866 = !DILexicalBlockFile(scope: !4857, file: !412, discriminator: 3)
!4867 = !DILocation(line: 1445, column: 33, scope: !1096)
!4868 = !DILocation(line: 1445, column: 47, scope: !1096)
!4869 = !DILocation(line: 1445, column: 52, scope: !1096)
!4870 = !DILocation(line: 1445, column: 57, scope: !1096)
!4871 = !DILocation(line: 1445, column: 62, scope: !1096)
!4872 = !DILocation(line: 1445, column: 11, scope: !1096)
!4873 = !DILocation(line: 1445, column: 9, scope: !1096)
!4874 = !DILocation(line: 1446, column: 5, scope: !1096)
!4875 = !DILocation(line: 1446, column: 10, scope: !4876)
!4876 = !DILexicalBlockFile(scope: !1130, file: !412, discriminator: 1)
!4877 = !DILocation(line: 1446, column: 20, scope: !1130)
!4878 = !DILocation(line: 1446, column: 50, scope: !1130)
!4879 = !DILocation(line: 1446, column: 65, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !1130, file: !412, line: 1446, column: 62)
!4881 = !DILocation(line: 1446, column: 82, scope: !4880)
!4882 = !DILocation(line: 1446, column: 62, scope: !4880)
!4883 = !DILocation(line: 1446, column: 92, scope: !4880)
!4884 = !DILocation(line: 1446, column: 62, scope: !1130)
!4885 = !DILocation(line: 1446, column: 62, scope: !4886)
!4886 = !DILexicalBlockFile(scope: !1130, file: !412, discriminator: 2)
!4887 = !DILocation(line: 1446, column: 123, scope: !4888)
!4888 = !DILexicalBlockFile(scope: !4880, file: !412, discriminator: 3)
!4889 = !DILocation(line: 1446, column: 141, scope: !4880)
!4890 = !DILocation(line: 1446, column: 151, scope: !4880)
!4891 = !DILocation(line: 1446, column: 176, scope: !4880)
!4892 = !DILocation(line: 1446, column: 107, scope: !4880)
!4893 = !DILocation(line: 1446, column: 195, scope: !4894)
!4894 = !DILexicalBlockFile(scope: !1096, file: !412, discriminator: 4)
!4895 = !DILocation(line: 1446, column: 195, scope: !1130)
!4896 = !DILocation(line: 1446, column: 195, scope: !4897)
!4897 = !DILexicalBlockFile(scope: !1130, file: !412, discriminator: 5)
!4898 = !DILocation(line: 1447, column: 9, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !1096, file: !412, line: 1447, column: 9)
!4900 = !DILocation(line: 1447, column: 13, scope: !4899)
!4901 = !DILocation(line: 1447, column: 9, scope: !1096)
!4902 = !DILocation(line: 1448, column: 9, scope: !4899)
!4903 = !DILocation(line: 1449, column: 12, scope: !1096)
!4904 = !DILocation(line: 1449, column: 5, scope: !1096)
!4905 = !DILocation(line: 1450, column: 1, scope: !1096)
!4906 = !DILocation(line: 1514, column: 51, scope: !1139)
!4907 = !DILocation(line: 1514, column: 63, scope: !1139)
!4908 = !DILocation(line: 1516, column: 5, scope: !1139)
!4909 = !DILocation(line: 1516, column: 9, scope: !1139)
!4910 = !DILocation(line: 1516, column: 36, scope: !1139)
!4911 = !DILocation(line: 1516, column: 42, scope: !1139)
!4912 = !DILocation(line: 1516, column: 15, scope: !1139)
!4913 = !DILocation(line: 1517, column: 9, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !1139, file: !412, line: 1517, column: 9)
!4915 = !DILocation(line: 1517, column: 13, scope: !4914)
!4916 = !DILocation(line: 1517, column: 9, scope: !1139)
!4917 = !DILocation(line: 1518, column: 9, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4914, file: !412, line: 1517, column: 20)
!4919 = !DILocation(line: 1520, column: 14, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4914, file: !412, line: 1520, column: 14)
!4921 = !DILocation(line: 1520, column: 14, scope: !4914)
!4922 = !DILocation(line: 1521, column: 75, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4920, file: !412, line: 1520, column: 19)
!4924 = !DILocation(line: 1521, column: 9, scope: !4923)
!4925 = !DILocation(line: 1524, column: 32, scope: !1139)
!4926 = !DILocation(line: 1524, column: 38, scope: !1139)
!4927 = !DILocation(line: 1524, column: 11, scope: !1139)
!4928 = !DILocation(line: 1524, column: 9, scope: !1139)
!4929 = !DILocation(line: 1525, column: 9, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !1139, file: !412, line: 1525, column: 9)
!4931 = !DILocation(line: 1525, column: 13, scope: !4930)
!4932 = !DILocation(line: 1525, column: 9, scope: !1139)
!4933 = !DILocation(line: 1526, column: 9, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4930, file: !412, line: 1525, column: 20)
!4935 = !DILocation(line: 1528, column: 14, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4930, file: !412, line: 1528, column: 14)
!4937 = !DILocation(line: 1528, column: 14, scope: !4930)
!4938 = !DILocation(line: 1529, column: 75, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4936, file: !412, line: 1528, column: 19)
!4940 = !DILocation(line: 1529, column: 9, scope: !4939)
!4941 = !DILocation(line: 1532, column: 32, scope: !1139)
!4942 = !DILocation(line: 1532, column: 38, scope: !1139)
!4943 = !DILocation(line: 1532, column: 11, scope: !1139)
!4944 = !DILocation(line: 1532, column: 9, scope: !1139)
!4945 = !DILocation(line: 1533, column: 9, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !1139, file: !412, line: 1533, column: 9)
!4947 = !DILocation(line: 1533, column: 13, scope: !4946)
!4948 = !DILocation(line: 1533, column: 9, scope: !1139)
!4949 = !DILocation(line: 1534, column: 9, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !412, line: 1533, column: 20)
!4951 = !DILocation(line: 1536, column: 14, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4946, file: !412, line: 1536, column: 14)
!4953 = !DILocation(line: 1536, column: 14, scope: !4946)
!4954 = !DILocation(line: 1537, column: 75, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4952, file: !412, line: 1536, column: 19)
!4956 = !DILocation(line: 1537, column: 9, scope: !4955)
!4957 = !DILocation(line: 1539, column: 72, scope: !1139)
!4958 = !DILocation(line: 1539, column: 5, scope: !1139)
!4959 = !DILocation(line: 1540, column: 1, scope: !1139)
