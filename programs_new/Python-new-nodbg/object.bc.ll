; ModuleID = './object.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, {}*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, {}*, i32, {}* }
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
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.0, i32* }
%struct.anon.0 = type { i32 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@.str = private unnamed_addr constant [76 x i8] c"PyObject_CallFinalizerFromDealloc called on object with a non-zero refcount\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<nil>\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<refcnt %ld at %p>\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"backslashreplace\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"str() or repr() returned '%.100s'\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"object  : \00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\0Atype    : %s\0Arefcount: %ld\0Aaddress : %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"<%s object at %p>\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"__repr__ returned non-string (type %.200s)\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@_Py_CheckRecursionLimit = external global i32, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c" while getting the str of an object\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"__str__ returned non-string (type %.200s)\00", align 1
@PyBytes_Type = external global %struct._typeobject, align 8
@PyId___bytes__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), %struct._object* null }, align 8
@.str.15 = private unnamed_addr constant [43 x i8] c"__bytes__ returned non-bytes (type %.200s)\00", align 1
@_Py_SwappedOp = global [6 x i32] [i32 4, i32 5, i32 2, i32 3, i32 0, i32 1], align 16
@.str.16 = private unnamed_addr constant [17 x i8] c"Objects/object.c\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" in comparison\00", align 1
@PyBool_Type = external global %struct._typeobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"unhashable type: '%.200s'\00", align 1
@PyId___isabstractmethod__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [44 x i8] c"attribute name must be string, not '%.200s'\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"'%.50s' object has no attribute '%U'\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"'%.100s' object has no attributes (%s .%U)\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"assign to\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"'%.100s' object has only read-only attributes (%s .%U)\00", align 1
@PyId_builtins = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), %struct._object* null }, align 8
@.str.25 = private unnamed_addr constant [32 x i8] c"'%.200s' object is not iterable\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [38 x i8] c"'%.100s' object has no attribute '%U'\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"'%.50s' object attribute '%U' is read-only\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"This object has no __dict__\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"cannot delete __dict__\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"__dict__ must be set to a dictionary, not a '%.200s'\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_NoneStruct = global %struct._object { i64 1, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @_PyNone_Type to %struct._typeobject*) }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"NoneType\00", align 1
@none_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, i32 (%struct._object*)* @none_bool, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@_PyNone_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* @none_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @none_repr, %struct.PyNumberMethods* @none_as_number, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @none_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.32 = private unnamed_addr constant [19 x i8] c"NotImplementedType\00", align 1
@notimplemented_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @NotImplemented_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@_PyNotImplemented_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* @notimplemented_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @NotImplemented_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @notimplemented_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @notimplemented_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_Py_NotImplementedStruct = global %struct._object { i64 1, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @_PyNotImplemented_Type to %struct._typeobject*) }, align 8
@.str.33 = private unnamed_addr constant [27 x i8] c"Can't initialize type type\00", align 1
@_PyWeakref_RefType = external global %struct._typeobject, align 8
@.str.34 = private unnamed_addr constant [30 x i8] c"Can't initialize weakref type\00", align 1
@_PyWeakref_CallableProxyType = external global %struct._typeobject, align 8
@.str.35 = private unnamed_addr constant [45 x i8] c"Can't initialize callable weakref proxy type\00", align 1
@_PyWeakref_ProxyType = external global %struct._typeobject, align 8
@.str.36 = private unnamed_addr constant [36 x i8] c"Can't initialize weakref proxy type\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Can't initialize bool type\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.38 = private unnamed_addr constant [32 x i8] c"Can't initialize bytearray type\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Can't initialize 'str'\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@.str.40 = private unnamed_addr constant [27 x i8] c"Can't initialize list type\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Can't initialize None type\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Can't initialize NotImplemented type\00", align 1
@PyTraceBack_Type = external global %struct._typeobject, align 8
@.str.43 = private unnamed_addr constant [32 x i8] c"Can't initialize traceback type\00", align 1
@PySuper_Type = external global %struct._typeobject, align 8
@.str.44 = private unnamed_addr constant [28 x i8] c"Can't initialize super type\00", align 1
@PyBaseObject_Type = external global %struct._typeobject, align 8
@.str.45 = private unnamed_addr constant [29 x i8] c"Can't initialize object type\00", align 1
@PyRange_Type = external global %struct._typeobject, align 8
@.str.46 = private unnamed_addr constant [28 x i8] c"Can't initialize range type\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.47 = private unnamed_addr constant [27 x i8] c"Can't initialize dict type\00", align 1
@PySet_Type = external global %struct._typeobject, align 8
@.str.48 = private unnamed_addr constant [26 x i8] c"Can't initialize set type\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"Can't initialize str type\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.50 = private unnamed_addr constant [28 x i8] c"Can't initialize slice type\00", align 1
@PyStaticMethod_Type = external global %struct._typeobject, align 8
@.str.51 = private unnamed_addr constant [36 x i8] c"Can't initialize static method type\00", align 1
@PyComplex_Type = external global %struct._typeobject, align 8
@.str.52 = private unnamed_addr constant [30 x i8] c"Can't initialize complex type\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.53 = private unnamed_addr constant [28 x i8] c"Can't initialize float type\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.54 = private unnamed_addr constant [26 x i8] c"Can't initialize int type\00", align 1
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@.str.55 = private unnamed_addr constant [32 x i8] c"Can't initialize frozenset type\00", align 1
@PyProperty_Type = external global %struct._typeobject, align 8
@.str.56 = private unnamed_addr constant [31 x i8] c"Can't initialize property type\00", align 1
@_PyManagedBuffer_Type = external global %struct._typeobject, align 8
@.str.57 = private unnamed_addr constant [37 x i8] c"Can't initialize managed buffer type\00", align 1
@PyMemoryView_Type = external global %struct._typeobject, align 8
@.str.58 = private unnamed_addr constant [33 x i8] c"Can't initialize memoryview type\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.59 = private unnamed_addr constant [28 x i8] c"Can't initialize tuple type\00", align 1
@PyEnum_Type = external global %struct._typeobject, align 8
@.str.60 = private unnamed_addr constant [32 x i8] c"Can't initialize enumerate type\00", align 1
@PyReversed_Type = external global %struct._typeobject, align 8
@.str.61 = private unnamed_addr constant [31 x i8] c"Can't initialize reversed type\00", align 1
@PyStdPrinter_Type = external global %struct._typeobject, align 8
@.str.62 = private unnamed_addr constant [28 x i8] c"Can't initialize StdPrinter\00", align 1
@PyCode_Type = external global %struct._typeobject, align 8
@.str.63 = private unnamed_addr constant [27 x i8] c"Can't initialize code type\00", align 1
@PyFrame_Type = external global %struct._typeobject, align 8
@.str.64 = private unnamed_addr constant [28 x i8] c"Can't initialize frame type\00", align 1
@PyCFunction_Type = external global %struct._typeobject, align 8
@.str.65 = private unnamed_addr constant [39 x i8] c"Can't initialize builtin function type\00", align 1
@PyMethod_Type = external global %struct._typeobject, align 8
@.str.66 = private unnamed_addr constant [29 x i8] c"Can't initialize method type\00", align 1
@PyFunction_Type = external global %struct._typeobject, align 8
@.str.67 = private unnamed_addr constant [31 x i8] c"Can't initialize function type\00", align 1
@PyDictProxy_Type = external global %struct._typeobject, align 8
@.str.68 = private unnamed_addr constant [33 x i8] c"Can't initialize dict proxy type\00", align 1
@PyGen_Type = external global %struct._typeobject, align 8
@.str.69 = private unnamed_addr constant [32 x i8] c"Can't initialize generator type\00", align 1
@PyGetSetDescr_Type = external global %struct._typeobject, align 8
@.str.70 = private unnamed_addr constant [41 x i8] c"Can't initialize get-set descriptor type\00", align 1
@PyWrapperDescr_Type = external global %struct._typeobject, align 8
@.str.71 = private unnamed_addr constant [30 x i8] c"Can't initialize wrapper type\00", align 1
@_PyMethodWrapper_Type = external global %struct._typeobject, align 8
@.str.72 = private unnamed_addr constant [37 x i8] c"Can't initialize method wrapper type\00", align 1
@PyEllipsis_Type = external global %struct._typeobject, align 8
@.str.73 = private unnamed_addr constant [31 x i8] c"Can't initialize ellipsis type\00", align 1
@PyMemberDescr_Type = external global %struct._typeobject, align 8
@.str.74 = private unnamed_addr constant [40 x i8] c"Can't initialize member descriptor type\00", align 1
@_PyNamespace_Type = external global %struct._typeobject, align 8
@.str.75 = private unnamed_addr constant [32 x i8] c"Can't initialize namespace type\00", align 1
@PyCapsule_Type = external global %struct._typeobject, align 8
@.str.76 = private unnamed_addr constant [30 x i8] c"Can't initialize capsule type\00", align 1
@PyLongRangeIter_Type = external global %struct._typeobject, align 8
@.str.77 = private unnamed_addr constant [42 x i8] c"Can't initialize long range iterator type\00", align 1
@PyCell_Type = external global %struct._typeobject, align 8
@.str.78 = private unnamed_addr constant [27 x i8] c"Can't initialize cell type\00", align 1
@PyInstanceMethod_Type = external global %struct._typeobject, align 8
@.str.79 = private unnamed_addr constant [38 x i8] c"Can't initialize instance method type\00", align 1
@PyClassMethodDescr_Type = external global %struct._typeobject, align 8
@.str.80 = private unnamed_addr constant [41 x i8] c"Can't initialize class method descr type\00", align 1
@PyMethodDescr_Type = external global %struct._typeobject, align 8
@.str.81 = private unnamed_addr constant [35 x i8] c"Can't initialize method descr type\00", align 1
@PyCallIter_Type = external global %struct._typeobject, align 8
@.str.82 = private unnamed_addr constant [32 x i8] c"Can't initialize call iter type\00", align 1
@PySeqIter_Type = external global %struct._typeobject, align 8
@.str.83 = private unnamed_addr constant [40 x i8] c"Can't initialize sequence iterator type\00", align 1
@_PyCapsule_hack = global %struct._typeobject* @PyCapsule_Type, align 8
@_Py_abstract_hack = global i64 (%struct._object*)* @PyObject_Size, align 8
@PyId_Py_Repr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), %struct._object* null }, align 8
@_PyTrash_delete_nesting = global i32 0, align 4
@_PyTrash_delete_later = global %struct._object* null, align 8
@.str.84 = private unnamed_addr constant [10 x i8] c"__bytes__\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"unorderable types: %.100s() %s %.100s()\00", align 1
@opstrings = internal global [6 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0)], align 16
@.str.86 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"__isabstractmethod__\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.94 = private unnamed_addr constant [60 x i8] c"dir(): expected keys() of locals to be a list, not '%.200s'\00", align 1
@PyId___dir__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), %struct._object* null }, align 8
@.str.95 = private unnamed_addr constant [32 x i8] c"object does not provide __dir__\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"__dir__\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"deallocating None\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"NoneType takes no arguments\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"deallocating NotImplemented\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"NotImplemented\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"NotImplementedType takes no arguments\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"Py_Repr\00", align 1

; Function Attrs: nounwind uwtable
define void @Py_IncRef(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  store %struct._object* %0, %struct._object** %_py_xincref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @Py_DecRef(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  store %struct._object* %0, %struct._object** %_py_xdecref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
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
  %tp_dealloc4 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc4, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Init(%struct._object* %op, %struct._typeobject* %tp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %tp.addr = alloca %struct._typeobject*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  store %struct._typeobject* %1, %struct._typeobject** %ob_type, align 8
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @PyObject_InitVar(%struct.PyVarObject* %op, %struct._typeobject* %tp, i64 %size) #0 {
entry:
  %retval = alloca %struct.PyVarObject*, align 8
  %op.addr = alloca %struct.PyVarObject*, align 8
  %tp.addr = alloca %struct._typeobject*, align 8
  %size.addr = alloca i64, align 8
  store %struct.PyVarObject* %op, %struct.PyVarObject** %op.addr, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %cmp = icmp eq %struct.PyVarObject* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  %1 = bitcast %struct._object* %call to %struct.PyVarObject*
  store %struct.PyVarObject* %1, %struct.PyVarObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %3 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  store i64 %2, i64* %ob_size, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %5 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %6 = bitcast %struct.PyVarObject* %5 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  store %struct._typeobject* %4, %struct._typeobject** %ob_type, align 8
  %7 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  %8 = bitcast %struct.PyVarObject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %9 = load %struct.PyVarObject*, %struct.PyVarObject** %op.addr, align 8
  store %struct.PyVarObject* %9, %struct.PyVarObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct.PyVarObject*, %struct.PyVarObject** %retval
  ret %struct.PyVarObject* %10
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_New(%struct._typeobject* %tp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %tp.addr = alloca %struct._typeobject*, align 8
  %op = alloca %struct._object*, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 2
  %1 = load i64, i64* %tp_basicsize, align 8
  %call = call i8* @PyObject_Malloc(i64 %1)
  %2 = bitcast i8* %call to %struct._object*
  store %struct._object* %2, %struct._object** %op, align 8
  %3 = load %struct._object*, %struct._object** %op, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %5 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  store %struct._typeobject* %4, %struct._typeobject** %ob_type, align 8
  %6 = load %struct._object*, %struct._object** %op, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %op, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.PyVarObject* @_PyObject_NewVar(%struct._typeobject* %tp, i64 %nitems) #0 {
entry:
  %retval = alloca %struct.PyVarObject*, align 8
  %tp.addr = alloca %struct._typeobject*, align 8
  %nitems.addr = alloca i64, align 8
  %op = alloca %struct.PyVarObject*, align 8
  %size = alloca i64, align 8
  store %struct._typeobject* %tp, %struct._typeobject** %tp.addr, align 8
  store i64 %nitems, i64* %nitems.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 2
  %1 = load i64, i64* %tp_basicsize, align 8
  %2 = load i64, i64* %nitems.addr, align 8
  %3 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 3
  %4 = load i64, i64* %tp_itemsize, align 8
  %mul = mul i64 %2, %4
  %add = add i64 %1, %mul
  %add1 = add i64 %add, 7
  %and = and i64 %add1, -8
  store i64 %and, i64* %size, align 8
  %5 = load i64, i64* %size, align 8
  %call = call i8* @PyObject_Malloc(i64 %5)
  %6 = bitcast i8* %call to %struct.PyVarObject*
  store %struct.PyVarObject* %6, %struct.PyVarObject** %op, align 8
  %7 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %cmp = icmp eq %struct.PyVarObject* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyErr_NoMemory()
  %8 = bitcast %struct._object* %call2 to %struct.PyVarObject*
  store %struct.PyVarObject* %8, %struct.PyVarObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %nitems.addr, align 8
  %10 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  store i64 %9, i64* %ob_size, align 8
  %11 = load %struct._typeobject*, %struct._typeobject** %tp.addr, align 8
  %12 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %13 = bitcast %struct.PyVarObject* %12 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  store %struct._typeobject* %11, %struct._typeobject** %ob_type, align 8
  %14 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  %15 = bitcast %struct.PyVarObject* %14 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %16 = load %struct.PyVarObject*, %struct.PyVarObject** %op, align 8
  store %struct.PyVarObject* %16, %struct.PyVarObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct.PyVarObject*, %struct.PyVarObject** %retval
  ret %struct.PyVarObject* %17
}

; Function Attrs: nounwind uwtable
define void @PyObject_CallFinalizer(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 1
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_finalize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 47
  %tp_finalize1 = bitcast {}** %tp_finalize to void (%struct._object*)**
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_finalize1, align 8
  %cmp2 = icmp eq void (%struct._object*)* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.23

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags3, align 8
  %and4 = and i64 %7, 16384
  %cmp5 = icmp ne i64 %and4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %9, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %10 = load i64, i64* %gc_refs, align 8
  %and6 = and i64 %10, 1
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %if.end.23

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_finalize10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 47
  %tp_finalize11 = bitcast {}** %tp_finalize10 to void (%struct._object*)**
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_finalize11, align 8
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  call void %12(%struct._object* %13)
  %14 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_flags12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags12, align 8
  %and13 = and i64 %15, 16384
  %cmp14 = icmp ne i64 %and13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %union._gc_head*
  %add.ptr16 = getelementptr %union._gc_head, %union._gc_head* %17, i64 -1
  %gc17 = bitcast %union._gc_head* %add.ptr16 to %struct.anon*
  %gc_refs18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 2
  %18 = load i64, i64* %gc_refs18, align 8
  %and19 = and i64 %18, -2
  %or = or i64 %and19, 1
  %19 = load %struct._object*, %struct._object** %self.addr, align 8
  %20 = bitcast %struct._object* %19 to %union._gc_head*
  %add.ptr20 = getelementptr %union._gc_head, %union._gc_head* %20, i64 -1
  %gc21 = bitcast %union._gc_head* %add.ptr20 to %struct.anon*
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2
  store i64 %or, i64* %gc_refs22, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.23

if.end.23:                                        ; preds = %if.then, %if.then.8, %do.end, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %refcnt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  store i64 1, i64* %ob_refcnt1, align 8
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  call void @PyObject_CallFinalizer(%struct._object* %3)
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt2, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt2, align 8
  %cmp3 = icmp eq i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt6, align 8
  store i64 %7, i64* %refcnt, align 8
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  store i64 1, i64* %ob_refcnt7, align 8
  %9 = load i64, i64* %refcnt, align 8
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  store i64 %9, i64* %ob_refcnt8, align 8
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 16384
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.5
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.4
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyObject_Print(%struct._object* %op, %struct._IO_FILE* %fp, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save6 = alloca %struct._ts*, align 8
  %s = alloca %struct._object*, align 8
  %t = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %ret, align 4
  %call = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @clearerr(%struct._IO_FILE* %0) #6
  %1 = load %struct._object*, %struct._object** %op.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  br label %if.end.70

if.else:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sle i64 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.else
  %call7 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call7, %struct._ts** %_save6, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt8, align 8
  %9 = load %struct._object*, %struct._object** %op.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i64 %8, %struct._object* %9)
  %10 = load %struct._ts*, %struct._ts** %_save6, align 8
  call void @PyEval_RestoreThread(%struct._ts* %10)
  br label %if.end.69

if.else.10:                                       ; preds = %if.else
  %11 = load i32, i32* %flags.addr, align 4
  %and = and i32 %11, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.10
  %12 = load %struct._object*, %struct._object** %op.addr, align 8
  %call13 = call %struct._object* @PyObject_Str(%struct._object* %12)
  store %struct._object* %call13, %struct._object** %s, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %if.else.10
  %13 = load %struct._object*, %struct._object** %op.addr, align 8
  %call15 = call %struct._object* @PyObject_Repr(%struct._object* %13)
  store %struct._object* %call15, %struct._object** %s, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.12
  %14 = load %struct._object*, %struct._object** %s, align 8
  %cmp17 = icmp eq %struct._object* %14, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  store i32 -1, i32* %ret, align 4
  br label %if.end.51

if.else.19:                                       ; preds = %if.end.16
  %15 = load %struct._object*, %struct._object** %s, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags, align 8
  %and20 = and i64 %17, 134217728
  %cmp21 = icmp ne i64 %and20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else.19
  %18 = load %struct._object*, %struct._object** %s, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %19, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %20 = load %struct._object*, %struct._object** %s, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 %22, %struct._IO_FILE* %23)
  br label %if.end.50

if.else.24:                                       ; preds = %if.else.19
  %24 = load %struct._object*, %struct._object** %s, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19
  %26 = load i64, i64* %tp_flags26, align 8
  %and27 = and i64 %26, 268435456
  %cmp28 = icmp ne i64 %and27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.46

if.then.29:                                       ; preds = %if.else.24
  %27 = load %struct._object*, %struct._object** %s, align 8
  %call30 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* %call30, %struct._object** %t, align 8
  %28 = load %struct._object*, %struct._object** %t, align 8
  %cmp31 = icmp eq %struct._object* %28, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.then.29
  store i32 0, i32* %ret, align 4
  br label %if.end.45

if.else.33:                                       ; preds = %if.then.29
  %29 = load %struct._object*, %struct._object** %t, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyBytesObject*
  %ob_sval34 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %30, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval34, i32 0, i32 0
  %31 = load %struct._object*, %struct._object** %t, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size36 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size36, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call37 = call i64 @fwrite(i8* %arraydecay35, i64 1, i64 %33, %struct._IO_FILE* %34)
  br label %do.body

do.body:                                          ; preds = %if.else.33
  %35 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt38, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt38, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body
  br label %if.end.44

if.else.41:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %tp_dealloc43 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.44
  br label %if.end.45

if.end.45:                                        ; preds = %do.end, %if.then.32
  br label %if.end.49

if.else.46:                                       ; preds = %if.else.24
  %42 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %43 = load %struct._object*, %struct._object** %s, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 1
  %45 = load i8*, i8** %tp_name, align 8
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %45)
  store i32 -1, i32* %ret, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.end.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.22
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.18
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.51
  %46 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp53 = icmp ne %struct._object* %47, null
  br i1 %cmp53, label %if.then.54, label %if.end.67

if.then.54:                                       ; preds = %do.body.52
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp56, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %50, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.61:                                       ; preds = %do.body.55
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %tp_dealloc64 = bitcast {}** %tp_dealloc63 to void (%struct._object*)**
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %53(%struct._object* %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.52
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %if.then.5
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.1
  %55 = load i32, i32* %ret, align 4
  %cmp71 = icmp eq i32 %55, 0
  br i1 %cmp71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.end.70
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call73 = call i32 @ferror(%struct._IO_FILE* %56) #6
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.72
  %57 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call76 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @clearerr(%struct._IO_FILE* %58) #6
  store i32 -1, i32* %ret, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.then.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.70
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @PyErr_CheckSignals() #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #3

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Str(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val30 = alloca %struct._Py_atomic_address*, align 8
  %result32 = alloca i8*, align 8
  %volatile_data34 = alloca i8**, align 8
  %order37 = alloca i32, align 4
  %tmp44 = alloca i8*, align 8
  %atomic_val54 = alloca %struct._Py_atomic_address*, align 8
  %result56 = alloca i8*, align 8
  %volatile_data58 = alloca i8**, align 8
  %order61 = alloca i32, align 4
  %tmp68 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %call = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %2, @PyUnicode_Type
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon.0* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ]
  %cmp8 = icmp slt i32 %cond, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_str = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 15
  %12 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_str, align 8
  %cmp13 = icmp eq %struct._object* (%struct._object*)* %12, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %call15 = call %struct._object* @PyObject_Repr(%struct._object* %13)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %14 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %14, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %15 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %16 = bitcast %struct._Py_atomic_address* %15 to i8*
  %17 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %16, i32 %17)
  %18 = load i32, i32* %order, align 4
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.16, %if.end.16, %if.end.16
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %19 = load i8**, i8*** %volatile_data, align 8
  %20 = load volatile i8*, i8** %19, align 8
  store i8* %20, i8** %result, align 8
  %21 = load i32, i32* %order, align 4
  switch i32 %21, label %sw.default.18 [
    i32 1, label %sw.bb.17
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.17
  ]

sw.bb.17:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.19

sw.default.18:                                    ; preds = %sw.epilog
  br label %sw.epilog.19

sw.epilog.19:                                     ; preds = %sw.default.18, %sw.bb.17
  %22 = load i8*, i8** %result, align 8
  store i8* %22, i8** %tmp
  %23 = load i8*, i8** %tmp
  %24 = bitcast i8* %23 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 4
  %25 = load i32, i32* %recursion_depth, align 4
  %inc20 = add i32 %25, 1
  store i32 %inc20, i32* %recursion_depth, align 4
  %26 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp21 = icmp sgt i32 %inc20, %26
  br i1 %cmp21, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %sw.epilog.19
  %call22 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %sw.epilog.19
  %27 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_str27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 15
  %29 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_str27, align 8
  %30 = load %struct._object*, %struct._object** %v.addr, align 8
  %call28 = call %struct._object* %29(%struct._object* %30)
  store %struct._object* %call28, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.25
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val30, align 8
  %31 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val30, align 8
  %_value35 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %31, i32 0, i32 0
  store i8** %_value35, i8*** %volatile_data34, align 8
  store i32 0, i32* %order37, align 4
  %32 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val30, align 8
  %33 = bitcast %struct._Py_atomic_address* %32 to i8*
  %34 = load i32, i32* %order37, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %33, i32 %34)
  %35 = load i32, i32* %order37, align 4
  switch i32 %35, label %sw.default.39 [
    i32 2, label %sw.bb.38
    i32 3, label %sw.bb.38
    i32 4, label %sw.bb.38
  ]

sw.bb.38:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.40

sw.default.39:                                    ; preds = %do.body
  br label %sw.epilog.40

sw.epilog.40:                                     ; preds = %sw.default.39, %sw.bb.38
  %36 = load i8**, i8*** %volatile_data34, align 8
  %37 = load volatile i8*, i8** %36, align 8
  store i8* %37, i8** %result32, align 8
  %38 = load i32, i32* %order37, align 4
  switch i32 %38, label %sw.default.42 [
    i32 1, label %sw.bb.41
    i32 3, label %sw.bb.41
    i32 4, label %sw.bb.41
  ]

sw.bb.41:                                         ; preds = %sw.epilog.40, %sw.epilog.40, %sw.epilog.40
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.43

sw.default.42:                                    ; preds = %sw.epilog.40
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %sw.default.42, %sw.bb.41
  %39 = load i8*, i8** %result32, align 8
  store i8* %39, i8** %tmp44
  %40 = load i8*, i8** %tmp44
  %41 = bitcast i8* %40 to %struct._ts*
  %recursion_depth45 = getelementptr inbounds %struct._ts, %struct._ts* %41, i32 0, i32 4
  %42 = load i32, i32* %recursion_depth45, align 4
  %dec = add i32 %42, -1
  store i32 %dec, i32* %recursion_depth45, align 4
  %43 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp46 = icmp sgt i32 %43, 100
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %sw.epilog.43
  %44 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %44, 50
  br label %cond.end.49

cond.false.48:                                    ; preds = %sw.epilog.43
  %45 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %45, 2
  %mul = mul i32 3, %shr
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.47
  %cond50 = phi i32 [ %sub, %cond.true.47 ], [ %mul, %cond.false.48 ]
  %cmp51 = icmp slt i32 %dec, %cond50
  br i1 %cmp51, label %if.then.52, label %if.end.69

if.then.52:                                       ; preds = %cond.end.49
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val54, align 8
  %46 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val54, align 8
  %_value59 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %46, i32 0, i32 0
  store i8** %_value59, i8*** %volatile_data58, align 8
  store i32 0, i32* %order61, align 4
  %47 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val54, align 8
  %48 = bitcast %struct._Py_atomic_address* %47 to i8*
  %49 = load i32, i32* %order61, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %48, i32 %49)
  %50 = load i32, i32* %order61, align 4
  switch i32 %50, label %sw.default.63 [
    i32 2, label %sw.bb.62
    i32 3, label %sw.bb.62
    i32 4, label %sw.bb.62
  ]

sw.bb.62:                                         ; preds = %if.then.52, %if.then.52, %if.then.52
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.64

sw.default.63:                                    ; preds = %if.then.52
  br label %sw.epilog.64

sw.epilog.64:                                     ; preds = %sw.default.63, %sw.bb.62
  %51 = load i8**, i8*** %volatile_data58, align 8
  %52 = load volatile i8*, i8** %51, align 8
  store i8* %52, i8** %result56, align 8
  %53 = load i32, i32* %order61, align 4
  switch i32 %53, label %sw.default.66 [
    i32 1, label %sw.bb.65
    i32 3, label %sw.bb.65
    i32 4, label %sw.bb.65
  ]

sw.bb.65:                                         ; preds = %sw.epilog.64, %sw.epilog.64, %sw.epilog.64
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.67

sw.default.66:                                    ; preds = %sw.epilog.64
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %sw.default.66, %sw.bb.65
  %54 = load i8*, i8** %result56, align 8
  store i8* %54, i8** %tmp68
  %55 = load i8*, i8** %tmp68
  %56 = bitcast i8* %55 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %56, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %sw.epilog.67, %cond.end.49
  br label %do.end

do.end:                                           ; preds = %if.end.69
  %57 = load %struct._object*, %struct._object** %res, align 8
  %cmp70 = icmp eq %struct._object* %57, null
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.72:                                        ; preds = %do.end
  %58 = load %struct._object*, %struct._object** %res, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 19
  %60 = load i64, i64* %tp_flags, align 8
  %and = and i64 %60, 268435456
  %cmp74 = icmp ne i64 %and, 0
  br i1 %cmp74, label %if.end.88, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  %61 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %62 = load %struct._object*, %struct._object** %res, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 1
  %64 = load i8*, i8** %tp_name, align 8
  %call77 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* %64)
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.75
  %65 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %67, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.86

if.else:                                          ; preds = %do.body.78
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %tp_dealloc85 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %70(%struct._object* %71)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.then.83
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.88:                                        ; preds = %if.end.72
  %72 = load %struct._object*, %struct._object** %res, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyASCIIObject*
  %state89 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %73, i32 0, i32 3
  %74 = bitcast %struct.anon.0* %state89 to i32*
  %bf.load90 = load i32, i32* %74, align 4
  %bf.lshr91 = lshr i32 %bf.load90, 7
  %bf.clear92 = and i32 %bf.lshr91, 1
  %tobool93 = icmp ne i32 %bf.clear92, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %if.end.88
  br label %cond.end.97

cond.false.95:                                    ; preds = %if.end.88
  %75 = load %struct._object*, %struct._object** %res, align 8
  %call96 = call i32 @_PyUnicode_Ready(%struct._object* %75)
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.94
  %cond98 = phi i32 [ 0, %cond.true.94 ], [ %call96, %cond.false.95 ]
  %cmp99 = icmp slt i32 %cond98, 0
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %cond.end.97
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.101:                                       ; preds = %cond.end.97
  %76 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %76, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.101, %if.then.100, %do.end.87, %if.then.71, %if.then.24, %if.then.14, %if.end.10, %if.then.9, %if.then.1, %if.then
  %77 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %77
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Repr(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %call = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_repr = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 9
  %3 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_repr, align 8
  %cmp4 = icmp eq %struct._object* (%struct._object*)* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %call7 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %6, %struct._object* %7)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_repr10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 9
  %10 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_repr10, align 8
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %call11 = call %struct._object* %10(%struct._object* %11)
  store %struct._object* %call11, %struct._object** %res, align 8
  %12 = load %struct._object*, %struct._object** %res, align 8
  %cmp12 = icmp eq %struct._object* %12, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %res, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags, align 8
  %and = and i64 %15, 268435456
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.end.26, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %17 = load %struct._object*, %struct._object** %res, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_name19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 1
  %19 = load i8*, i8** %tp_name19, align 8
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), i8* %19)
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %20 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %tp_dealloc24 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.14
  %27 = load %struct._object*, %struct._object** %res, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 3
  %29 = bitcast %struct.anon.0* %state to i32*
  %bf.load = load i32, i32* %29, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool27 = icmp ne i32 %bf.clear, 0
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  %30 = load %struct._object*, %struct._object** %res, align 8
  %call28 = call i32 @_PyUnicode_Ready(%struct._object* %30)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call28, %cond.false ]
  %cmp29 = icmp slt i32 %cond, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %cond.end
  %31 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %do.end, %if.then.13, %if.then.5, %if.then.1, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_Py_BreakPoint() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyObject_Dump(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %gil = alloca i32, align 4
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %call2 = call i32 @PyGILState_Ensure()
  store i32 %call2, i32* %gil, align 4
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @PyObject_Print(%struct._object* %3, %struct._IO_FILE* %4, i32 0)
  %5 = load %struct._object*, %struct._object** %error_type, align 8
  %6 = load %struct._object*, %struct._object** %error_value, align 8
  %7 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %5, %struct._object* %6, %struct._object* %7)
  %8 = load i32, i32* %gil, align 4
  call void @PyGILState_Release(i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %11, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1
  %14 = load i8*, i8** %tp_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %cond.true ], [ %14, %cond.false ]
  %15 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %17 = load %struct._object*, %struct._object** %op.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* %cond, i64 %16, %struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

declare i32 @PyGILState_Ensure() #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyGILState_Release(i32) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !1
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @_Py_CheckRecursiveCall(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_ASCII(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %repr = alloca %struct._object*, align 8
  %ascii = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyObject_Repr(%struct._object* %0)
  store %struct._object* %call, %struct._object** %repr, align 8
  %1 = load %struct._object*, %struct._object** %repr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %repr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 3
  %4 = bitcast %struct.anon.0* %state to i32*
  %bf.load = load i32, i32* %4, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %repr, align 8
  %call3 = call %struct._object* @_PyUnicode_AsASCIIString(%struct._object* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %ascii, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %tp_dealloc6 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc6, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %14 = load %struct._object*, %struct._object** %ascii, align 8
  %cmp8 = icmp eq %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %do.end
  %15 = load %struct._object*, %struct._object** %ascii, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %17 = load %struct._object*, %struct._object** %ascii, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size, align 8
  %call11 = call %struct._object* @PyUnicode_DecodeASCII(i8* %arraydecay, i64 %19, i8* null)
  store %struct._object* %call11, %struct._object** %res, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %20 = load %struct._object*, %struct._object** %ascii, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp13, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %22, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.22

if.else.18:                                       ; preds = %do.body.12
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %tp_dealloc21 = bitcast {}** %tp_dealloc20 to void (%struct._object*)**
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %25(%struct._object* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.9, %if.then.1, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare %struct._object* @_PyUnicode_AsASCIIString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_DecodeASCII(i8*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Bytes(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyBytes_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyBytes_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %call4 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %6, %struct._Py_Identifier* @PyId___bytes__)
  store %struct._object* %call4, %struct._object** %func, align 8
  %7 = load %struct._object*, %struct._object** %func, align 8
  %cmp5 = icmp ne %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.else.35

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %func, align 8
  %call7 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %8, i8* null)
  store %struct._object* %call7, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %9 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt8, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt8, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %tp_dealloc12 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp14 = icmp eq %struct._object* %16, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %17 = load %struct._object*, %struct._object** %result, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags, align 8
  %and = and i64 %19, 134217728
  %cmp18 = icmp ne i64 %and, 0
  br i1 %cmp18, label %if.end.34, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %21 = load %struct._object*, %struct._object** %result, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 1
  %23 = load i8*, i8** %tp_name, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i8* %23)
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.19
  %24 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %26, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.32

if.else.28:                                       ; preds = %do.body.22
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %tp_dealloc31 = bitcast {}** %tp_dealloc30 to void (%struct._object*)**
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %29(%struct._object* %30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.16
  %31 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

if.else.35:                                       ; preds = %if.end.3
  %call36 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call36, null
  br i1 %tobool, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.else.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  %32 = load %struct._object*, %struct._object** %v.addr, align 8
  %call40 = call %struct._object* @PyBytes_FromObject(%struct._object* %32)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.37, %if.end.34, %do.end.33, %if.then.15, %if.then.2, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare %struct._object* @PyBytes_FromString(i8*) #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyBytes_FromObject(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_RichCompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val14 = alloca %struct._Py_atomic_address*, align 8
  %result16 = alloca i8*, align 8
  %volatile_data18 = alloca i8**, align 8
  %order21 = alloca i32, align 4
  %tmp28 = alloca i8*, align 8
  %atomic_val34 = alloca %struct._Py_atomic_address*, align 8
  %result36 = alloca i8*, align 8
  %volatile_data38 = alloca i8**, align 8
  %order41 = alloca i32, align 4
  %tmp48 = alloca i8*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end.3

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 696)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
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

sw.bb:                                            ; preds = %if.end.3, %if.end.3, %if.end.3
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.5 [
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.4
  ]

sw.bb.4:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.6

sw.default.5:                                     ; preds = %sw.epilog
  br label %sw.epilog.6

sw.epilog.6:                                      ; preds = %sw.default.5, %sw.bb.4
  %10 = load i8*, i8** %result, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 4
  %13 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %14 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp7 = icmp sgt i32 %inc, %14
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %sw.epilog.6
  %call8 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %sw.epilog.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %16 = load %struct._object*, %struct._object** %w.addr, align 8
  %17 = load i32, i32* %op.addr, align 4
  %call12 = call %struct._object* @do_richcompare(%struct._object* %15, %struct._object* %16, i32 %17)
  store %struct._object* %call12, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val14, align 8
  %18 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val14, align 8
  %_value19 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %18, i32 0, i32 0
  store i8** %_value19, i8*** %volatile_data18, align 8
  store i32 0, i32* %order21, align 4
  %19 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val14, align 8
  %20 = bitcast %struct._Py_atomic_address* %19 to i8*
  %21 = load i32, i32* %order21, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %20, i32 %21)
  %22 = load i32, i32* %order21, align 4
  switch i32 %22, label %sw.default.23 [
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.22
  ]

sw.bb.22:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.24

sw.default.23:                                    ; preds = %do.body
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %sw.default.23, %sw.bb.22
  %23 = load i8**, i8*** %volatile_data18, align 8
  %24 = load volatile i8*, i8** %23, align 8
  store i8* %24, i8** %result16, align 8
  %25 = load i32, i32* %order21, align 4
  switch i32 %25, label %sw.default.26 [
    i32 1, label %sw.bb.25
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.25
  ]

sw.bb.25:                                         ; preds = %sw.epilog.24, %sw.epilog.24, %sw.epilog.24
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.27

sw.default.26:                                    ; preds = %sw.epilog.24
  br label %sw.epilog.27

sw.epilog.27:                                     ; preds = %sw.default.26, %sw.bb.25
  %26 = load i8*, i8** %result16, align 8
  store i8* %26, i8** %tmp28
  %27 = load i8*, i8** %tmp28
  %28 = bitcast i8* %27 to %struct._ts*
  %recursion_depth29 = getelementptr inbounds %struct._ts, %struct._ts* %28, i32 0, i32 4
  %29 = load i32, i32* %recursion_depth29, align 4
  %dec = add i32 %29, -1
  store i32 %dec, i32* %recursion_depth29, align 4
  %30 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp30 = icmp sgt i32 %30, 100
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.27
  %31 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %31, 50
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.27
  %32 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %32, 2
  %mul = mul i32 3, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %mul, %cond.false ]
  %cmp31 = icmp slt i32 %dec, %cond
  br i1 %cmp31, label %if.then.32, label %if.end.49

if.then.32:                                       ; preds = %cond.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val34, align 8
  %33 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val34, align 8
  %_value39 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %33, i32 0, i32 0
  store i8** %_value39, i8*** %volatile_data38, align 8
  store i32 0, i32* %order41, align 4
  %34 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val34, align 8
  %35 = bitcast %struct._Py_atomic_address* %34 to i8*
  %36 = load i32, i32* %order41, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %35, i32 %36)
  %37 = load i32, i32* %order41, align 4
  switch i32 %37, label %sw.default.43 [
    i32 2, label %sw.bb.42
    i32 3, label %sw.bb.42
    i32 4, label %sw.bb.42
  ]

sw.bb.42:                                         ; preds = %if.then.32, %if.then.32, %if.then.32
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.44

sw.default.43:                                    ; preds = %if.then.32
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %sw.default.43, %sw.bb.42
  %38 = load i8**, i8*** %volatile_data38, align 8
  %39 = load volatile i8*, i8** %38, align 8
  store i8* %39, i8** %result36, align 8
  %40 = load i32, i32* %order41, align 4
  switch i32 %40, label %sw.default.46 [
    i32 1, label %sw.bb.45
    i32 3, label %sw.bb.45
    i32 4, label %sw.bb.45
  ]

sw.bb.45:                                         ; preds = %sw.epilog.44, %sw.epilog.44, %sw.epilog.44
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.47

sw.default.46:                                    ; preds = %sw.epilog.44
  br label %sw.epilog.47

sw.epilog.47:                                     ; preds = %sw.default.46, %sw.bb.45
  %41 = load i8*, i8** %result36, align 8
  store i8* %41, i8** %tmp48
  %42 = load i8*, i8** %tmp48
  %43 = bitcast i8* %42 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %43, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %sw.epilog.47, %cond.end
  br label %do.end

do.end:                                           ; preds = %if.end.49
  %44 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.10, %if.end
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %f = alloca %struct._object* (%struct._object*, %struct._object*, i32)*, align 8
  %res = alloca %struct._object*, align 8
  %checked_reverse_op = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 0, i32* %checked_reverse_op, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %2 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp = icmp ne %struct._typeobject* %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.4, label %if.end.15

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_richcompare = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 23
  %10 = load %struct._object* (%struct._object*, %struct._object*, i32)*, %struct._object* (%struct._object*, %struct._object*, i32)** %tp_richcompare, align 8
  store %struct._object* (%struct._object*, %struct._object*, i32)* %10, %struct._object* (%struct._object*, %struct._object*, i32)** %f, align 8
  %cmp6 = icmp ne %struct._object* (%struct._object*, %struct._object*, i32)* %10, null
  br i1 %cmp6, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true.4
  store i32 1, i32* %checked_reverse_op, align 4
  %11 = load %struct._object* (%struct._object*, %struct._object*, i32)*, %struct._object* (%struct._object*, %struct._object*, i32)** %f, align 8
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %14 = load i32, i32* %op.addr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr [6 x i32], [6 x i32]* @_Py_SwappedOp, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %call7 = call %struct._object* %11(%struct._object* %12, %struct._object* %13, i32 %15)
  store %struct._object* %call7, %struct._object** %res, align 8
  %16 = load %struct._object*, %struct._object** %res, align 8
  %cmp8 = icmp ne %struct._object* %16, @_Py_NotImplementedStruct
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %tp_dealloc13 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc13, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %land.lhs.true.4, %land.lhs.true, %entry
  %25 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_richcompare17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 23
  %27 = load %struct._object* (%struct._object*, %struct._object*, i32)*, %struct._object* (%struct._object*, %struct._object*, i32)** %tp_richcompare17, align 8
  store %struct._object* (%struct._object*, %struct._object*, i32)* %27, %struct._object* (%struct._object*, %struct._object*, i32)** %f, align 8
  %cmp18 = icmp ne %struct._object* (%struct._object*, %struct._object*, i32)* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.36

if.then.19:                                       ; preds = %if.end.15
  %28 = load %struct._object* (%struct._object*, %struct._object*, i32)*, %struct._object* (%struct._object*, %struct._object*, i32)** %f, align 8
  %29 = load %struct._object*, %struct._object** %v.addr, align 8
  %30 = load %struct._object*, %struct._object** %w.addr, align 8
  %31 = load i32, i32* %op.addr, align 4
  %call20 = call %struct._object* %28(%struct._object* %29, %struct._object* %30, i32 %31)
  store %struct._object* %call20, %struct._object** %res, align 8
  %32 = load %struct._object*, %struct._object** %res, align 8
  %cmp21 = icmp ne %struct._object* %32, @_Py_NotImplementedStruct
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %33 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %34 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp25, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %36, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.34

if.else.30:                                       ; preds = %do.body.24
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %tp_dealloc33 = bitcast {}** %tp_dealloc32 to void (%struct._object*)**
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %39(%struct._object* %40)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %if.end.15
  %41 = load i32, i32* %checked_reverse_op, align 4
  %tobool37 = icmp ne i32 %41, 0
  br i1 %tobool37, label %if.end.61, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %if.end.36
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_richcompare40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 23
  %44 = load %struct._object* (%struct._object*, %struct._object*, i32)*, %struct._object* (%struct._object*, %struct._object*, i32)** %tp_richcompare40, align 8
  store %struct._object* (%struct._object*, %struct._object*, i32)* %44, %struct._object* (%struct._object*, %struct._object*, i32)** %f, align 8
  %cmp41 = icmp ne %struct._object* (%struct._object*, %struct._object*, i32)* %44, null
  br i1 %cmp41, label %if.then.42, label %if.end.61

if.then.42:                                       ; preds = %land.lhs.true.38
  %45 = load %struct._object* (%struct._object*, %struct._object*, i32)*, %struct._object* (%struct._object*, %struct._object*, i32)** %f, align 8
  %46 = load %struct._object*, %struct._object** %w.addr, align 8
  %47 = load %struct._object*, %struct._object** %v.addr, align 8
  %48 = load i32, i32* %op.addr, align 4
  %idxprom43 = sext i32 %48 to i64
  %arrayidx44 = getelementptr [6 x i32], [6 x i32]* @_Py_SwappedOp, i32 0, i64 %idxprom43
  %49 = load i32, i32* %arrayidx44, align 4
  %call45 = call %struct._object* %45(%struct._object* %46, %struct._object* %47, i32 %49)
  store %struct._object* %call45, %struct._object** %res, align 8
  %50 = load %struct._object*, %struct._object** %res, align 8
  %cmp46 = icmp ne %struct._object* %50, @_Py_NotImplementedStruct
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.42
  %51 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %if.then.42
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %52 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp50, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %54, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.59

if.else.55:                                       ; preds = %do.body.49
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %tp_dealloc58 = bitcast {}** %tp_dealloc57 to void (%struct._object*)**
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %57(%struct._object* %58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %land.lhs.true.38, %if.end.36
  %59 = load i32, i32* %op.addr, align 4
  switch i32 %59, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.61
  %60 = load %struct._object*, %struct._object** %v.addr, align 8
  %61 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp62 = icmp eq %struct._object* %60, %61
  %cond = select i1 %cmp62, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.61
  %62 = load %struct._object*, %struct._object** %v.addr, align 8
  %63 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp64 = icmp ne %struct._object* %62, %63
  %cond65 = select i1 %cmp64, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond65, %struct._object** %res, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.61
  %64 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %65 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 1
  %67 = load i8*, i8** %tp_name, align 8
  %68 = load i32, i32* %op.addr, align 4
  %idxprom67 = sext i32 %68 to i64
  %arrayidx68 = getelementptr [6 x i8*], [6 x i8*]* @opstrings, i32 0, i64 %idxprom67
  %69 = load i8*, i8** %arrayidx68, align 8
  %70 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_name70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 1
  %72 = load i8*, i8** %tp_name70, align 8
  %call71 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0), i8* %67, i8* %69, i8* %72)
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.63, %sw.bb
  %73 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt72, align 8
  %inc = add i64 %74, 1
  store i64 %inc, i64* %ob_refcnt72, align 8
  %75 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %75, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.47, %if.then.22, %if.then.9
  %76 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %76
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_RichCompareBool(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp = icmp eq %struct._object* %0, %1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* %op.addr, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = load %struct._object*, %struct._object** %w.addr, align 8
  %6 = load i32, i32* %op.addr, align 4
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %4, %struct._object* %5, i32 %6)
  store %struct._object* %call, %struct._object** %res, align 8
  %7 = load %struct._object*, %struct._object** %res, align 8
  %cmp7 = icmp eq %struct._object* %7, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %res, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp10 = icmp eq %struct._typeobject* %9, @PyBool_Type
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** %res, align 8
  %cmp12 = icmp eq %struct._object* %10, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, i32* %ok, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %if.end.9
  %11 = load %struct._object*, %struct._object** %res, align 8
  %call14 = call i32 @PyObject_IsTrue(%struct._object* %11)
  store i32 %call14, i32* %ok, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.11
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %12 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body
  br label %if.end.22

if.else.19:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %tp_dealloc21 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %19 = load i32, i32* %ok, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8, %if.then.4, %if.then.2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_IsTrue(%struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %res = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp4 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp6 = icmp ne %struct.PyNumberMethods* %5, null
  br i1 %cmp6, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_number8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 10
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number8, align 8
  %nb_bool = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %8, i32 0, i32 9
  %9 = load i32 (%struct._object*)*, i32 (%struct._object*)** %nb_bool, align 8
  %cmp9 = icmp ne i32 (%struct._object*)* %9, null
  br i1 %cmp9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_as_number12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 10
  %12 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number12, align 8
  %nb_bool13 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %12, i32 0, i32 9
  %13 = load i32 (%struct._object*)*, i32 (%struct._object*)** %nb_bool13, align 8
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 %13(%struct._object* %14)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %res, align 8
  br label %if.end.45

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 12
  %17 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping, align 8
  %cmp16 = icmp ne %struct.PyMappingMethods* %17, null
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.28

land.lhs.true.18:                                 ; preds = %if.else.14
  %18 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_as_mapping20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 12
  %20 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping20, align 8
  %mp_length = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %20, i32 0, i32 0
  %21 = load i64 (%struct._object*)*, i64 (%struct._object*)** %mp_length, align 8
  %cmp21 = icmp ne i64 (%struct._object*)* %21, null
  br i1 %cmp21, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %land.lhs.true.18
  %22 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_as_mapping25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 12
  %24 = load %struct.PyMappingMethods*, %struct.PyMappingMethods** %tp_as_mapping25, align 8
  %mp_length26 = getelementptr inbounds %struct.PyMappingMethods, %struct.PyMappingMethods* %24, i32 0, i32 0
  %25 = load i64 (%struct._object*)*, i64 (%struct._object*)** %mp_length26, align 8
  %26 = load %struct._object*, %struct._object** %v.addr, align 8
  %call27 = call i64 %25(%struct._object* %26)
  store i64 %call27, i64* %res, align 8
  br label %if.end.44

if.else.28:                                       ; preds = %land.lhs.true.18, %if.else.14
  %27 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 11
  %29 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence, align 8
  %cmp30 = icmp ne %struct.PySequenceMethods* %29, null
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.42

land.lhs.true.32:                                 ; preds = %if.else.28
  %30 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_as_sequence34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 11
  %32 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence34, align 8
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %32, i32 0, i32 0
  %33 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length, align 8
  %cmp35 = icmp ne i64 (%struct._object*)* %33, null
  br i1 %cmp35, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %land.lhs.true.32
  %34 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_as_sequence39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 11
  %36 = load %struct.PySequenceMethods*, %struct.PySequenceMethods** %tp_as_sequence39, align 8
  %sq_length40 = getelementptr inbounds %struct.PySequenceMethods, %struct.PySequenceMethods* %36, i32 0, i32 0
  %37 = load i64 (%struct._object*)*, i64 (%struct._object*)** %sq_length40, align 8
  %38 = load %struct._object*, %struct._object** %v.addr, align 8
  %call41 = call i64 %37(%struct._object* %38)
  store i64 %call41, i64* %res, align 8
  br label %if.end.43

if.else.42:                                       ; preds = %land.lhs.true.32, %if.else.28
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.23
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.10
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  %39 = load i64, i64* %res, align 8
  %cmp47 = icmp sgt i64 %39, 0
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  %40 = load i64, i64* %res, align 8
  %conv49 = trunc i64 %40 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv49, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.42, %if.then.5, %if.then.2, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i64 @PyObject_HashNotImplemented(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1
  %3 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* %3)
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i64 @PyObject_Hash(%struct._object* %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_hash = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 13
  %3 = load i64 (%struct._object*)*, i64 (%struct._object*)** %tp_hash, align 8
  %cmp = icmp ne i64 (%struct._object*)* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_hash1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 13
  %5 = load i64 (%struct._object*)*, i64 (%struct._object*)** %tp_hash1, align 8
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 %5(%struct._object* %6)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 31
  %8 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp2 = icmp eq %struct._object* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %call4 = call i32 @PyType_Ready(%struct._typeobject* %9)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %10 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_hash8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 13
  %11 = load i64 (%struct._object*)*, i64 (%struct._object*)** %tp_hash8, align 8
  %cmp9 = icmp ne i64 (%struct._object*)* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.7
  %12 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_hash11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 13
  %13 = load i64 (%struct._object*)*, i64 (%struct._object*)** %tp_hash11, align 8
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %call12 = call i64 %13(%struct._object* %14)
  store i64 %call12, i64* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %call15 = call i64 @PyObject_HashNotImplemented(%struct._object* %15)
  store i64 %call15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then.6, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_GetAttrString(%struct._object* %v, i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %w = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_getattr = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 6
  %2 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %tp_getattr, align 8
  %cmp = icmp ne %struct._object* (%struct._object*, i8*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_getattr2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 6
  %5 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %tp_getattr2, align 8
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* %5(%struct._object* %6, i8* %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* %8)
  store %struct._object* %call3, %struct._object** %w, align 8
  %9 = load %struct._object*, %struct._object** %w, align 8
  %cmp4 = icmp eq %struct._object* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %11 = load %struct._object*, %struct._object** %w, align 8
  %call7 = call %struct._object* @PyObject_GetAttr(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call7, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %tp_dealloc11 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc11, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %19 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_GetAttr(%struct._object* %v, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %name_str = alloca i8*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_getattro = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 16
  %10 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %tp_getattro, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*, %struct._object*)* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_getattro5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 16
  %12 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %tp_getattro5, align 8
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %14 = load %struct._object*, %struct._object** %name.addr, align 8
  %call6 = call %struct._object* %12(%struct._object* %13, %struct._object* %14)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %15 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_getattr = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 6
  %16 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %tp_getattr, align 8
  %cmp8 = icmp ne %struct._object* (%struct._object*, i8*)* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %name.addr, align 8
  %call10 = call i8* @PyUnicode_AsUTF8(%struct._object* %17)
  store i8* %call10, i8** %name_str, align 8
  %18 = load i8*, i8** %name_str, align 8
  %cmp11 = icmp eq i8* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  %19 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_getattr14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 6
  %20 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %tp_getattr14, align 8
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  %22 = load i8*, i8** %name_str, align 8
  %call15 = call %struct._object* %20(%struct._object* %21, i8* %22)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.7
  %23 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %24 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_name17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 1
  %25 = load i8*, i8** %tp_name17, align 8
  %26 = load %struct._object*, %struct._object** %name.addr, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %25, %struct._object* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.13, %if.then.12, %if.then.4, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_HasAttrString(%struct._object* %v, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %0, i8* %1)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %tp_dealloc3 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc3, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %do.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_SetAttrString(%struct._object* %v, i8* %name, %struct._object* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %w.addr = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_setattr = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 7
  %2 = load i32 (%struct._object*, i8*, %struct._object*)*, i32 (%struct._object*, i8*, %struct._object*)** %tp_setattr, align 8
  %cmp = icmp ne i32 (%struct._object*, i8*, %struct._object*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_setattr2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 7
  %5 = load i32 (%struct._object*, i8*, %struct._object*)*, i32 (%struct._object*, i8*, %struct._object*)** %tp_setattr2, align 8
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call i32 %5(%struct._object* %6, i8* %7, %struct._object* %8)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* %9)
  store %struct._object* %call3, %struct._object** %s, align 8
  %10 = load %struct._object*, %struct._object** %s, align 8
  %cmp4 = icmp eq %struct._object* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %12 = load %struct._object*, %struct._object** %s, align 8
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %call7 = call i32 @PyObject_SetAttr(%struct._object* %11, %struct._object* %12, %struct._object* %13)
  store i32 %call7, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.15

if.else:                                          ; preds = %do.body.10
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %tp_dealloc14 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc14, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %do.body
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %23 = load i32, i32* %res, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.then.5, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_SetAttr(%struct._object* %v, %struct._object* %name, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %name_str = alloca i8*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %8)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  call void @PyUnicode_InternInPlace(%struct._object** %name.addr)
  %11 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_setattro = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 17
  %12 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_setattro, align 8
  %cmp3 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_setattro5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 17
  %14 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_setattro5, align 8
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %16 = load %struct._object*, %struct._object** %name.addr, align 8
  %17 = load %struct._object*, %struct._object** %value.addr, align 8
  %call6 = call i32 %14(%struct._object* %15, %struct._object* %16, %struct._object* %17)
  store i32 %call6, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %18 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %tp_dealloc11 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc11, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %25 = load i32, i32* %err, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %26 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_setattr = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 7
  %27 = load i32 (%struct._object*, i8*, %struct._object*)*, i32 (%struct._object*, i8*, %struct._object*)** %tp_setattr, align 8
  %cmp14 = icmp ne i32 (%struct._object*, i8*, %struct._object*)* %27, null
  br i1 %cmp14, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %if.end.13
  %28 = load %struct._object*, %struct._object** %name.addr, align 8
  %call16 = call i8* @PyUnicode_AsUTF8(%struct._object* %28)
  store i8* %call16, i8** %name_str, align 8
  %29 = load i8*, i8** %name_str, align 8
  %cmp17 = icmp eq i8* %29, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  %30 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_setattr20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 7
  %31 = load i32 (%struct._object*, i8*, %struct._object*)*, i32 (%struct._object*, i8*, %struct._object*)** %tp_setattr20, align 8
  %32 = load %struct._object*, %struct._object** %v.addr, align 8
  %33 = load i8*, i8** %name_str, align 8
  %34 = load %struct._object*, %struct._object** %value.addr, align 8
  %call21 = call i32 %31(%struct._object* %32, i8* %33, %struct._object* %34)
  store i32 %call21, i32* %err, align 4
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.19
  %35 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp23, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %37, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.32

if.else.28:                                       ; preds = %do.body.22
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %tp_dealloc31 = bitcast {}** %tp_dealloc30 to void (%struct._object*)**
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %40(%struct._object* %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %42 = load i32, i32* %err, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.13
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.34
  %43 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp36, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %45, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.45

if.else.41:                                       ; preds = %do.body.35
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %tp_dealloc44 = bitcast {}** %tp_dealloc43 to void (%struct._object*)**
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %48(%struct._object* %49)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %50 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_getattr = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 6
  %51 = load %struct._object* (%struct._object*, i8*)*, %struct._object* (%struct._object*, i8*)** %tp_getattr, align 8
  %cmp47 = icmp eq %struct._object* (%struct._object*, i8*)* %51, null
  br i1 %cmp47, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %do.end.46
  %52 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_getattro = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 16
  %53 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %tp_getattro, align 8
  %cmp48 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %53, null
  br i1 %cmp48, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %land.lhs.true
  %54 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %55 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_name50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 1
  %56 = load i8*, i8** %tp_name50, align 8
  %57 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp51 = icmp eq %struct._object* %57, null
  %cond = select i1 %cmp51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)
  %58 = load %struct._object*, %struct._object** %name.addr, align 8
  %call52 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* %56, i8* %cond, %struct._object* %58)
  br label %if.end.58

if.else.53:                                       ; preds = %land.lhs.true, %do.end.46
  %59 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %60 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_name54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 1
  %61 = load i8*, i8** %tp_name54, align 8
  %62 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp55 = icmp eq %struct._object* %62, null
  %cond56 = select i1 %cmp55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)
  %63 = load %struct._object*, %struct._object** %name.addr, align 8
  %call57 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %59, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0), i8* %61, i8* %cond56, %struct._object* %63)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.53, %if.then.49
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %do.end.33, %if.then.18, %do.end, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define i32 @_PyObject_IsAbstract(%struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %isabstract = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @PyId___isabstractmethod__)
  store %struct._object* %call, %struct._object** %isabstract, align 8
  %2 = load %struct._object*, %struct._object** %isabstract, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %isabstract, align 8
  %call7 = call i32 @PyObject_IsTrue(%struct._object* %4)
  store i32 %call7, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %5 = load %struct._object*, %struct._object** %isabstract, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %tp_dealloc10 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc10, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.5, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GetAttrId(%struct._object* %v, %struct._Py_Identifier* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %result = alloca %struct._object*, align 8
  %oname = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %oname, align 8
  %1 = load %struct._object*, %struct._object** %oname, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %oname, align 8
  %call1 = call %struct._object* @PyObject_GetAttr(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyObject_HasAttrId(%struct._object* %v, %struct._Py_Identifier* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %result = alloca i32, align 4
  %oname = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %oname, align 8
  %1 = load %struct._object*, %struct._object** %oname, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %oname, align 8
  %call1 = call i32 @PyObject_HasAttr(%struct._object* %2, %struct._object* %3)
  store i32 %call1, i32* %result, align 4
  %4 = load i32, i32* %result, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_HasAttr(%struct._object* %v, %struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %tp_dealloc3 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc3, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %do.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @_PyObject_SetAttrId(%struct._object* %v, %struct._Py_Identifier* %name, %struct._object* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %w.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %oname = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %oname, align 8
  %1 = load %struct._object*, %struct._object** %oname, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = load %struct._object*, %struct._object** %oname, align 8
  %4 = load %struct._object*, %struct._object** %w.addr, align 8
  %call1 = call i32 @PyObject_SetAttr(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  store i32 %call1, i32* %result, align 4
  %5 = load i32, i32* %result, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare void @PyUnicode_InternInPlace(%struct._object**) #1

; Function Attrs: nounwind uwtable
define %struct._object** @_PyObject_GetDictPtr(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object**, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dictoffset = alloca i64, align 8
  %tp = alloca %struct._typeobject*, align 8
  %tsize = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dictoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 34
  %3 = load i64, i64* %tp_dictoffset, align 8
  store i64 %3, i64* %dictoffset, align 8
  %4 = load i64, i64* %dictoffset, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object** null, %struct._object*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %dictoffset, align 8
  %cmp1 = icmp slt i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %tsize, align 8
  %9 = load i64, i64* %tsize, align 8
  %cmp3 = icmp slt i64 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %10 = load i64, i64* %tsize, align 8
  %sub = sub i64 0, %10
  store i64 %sub, i64* %tsize, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %11 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 2
  %12 = load i64, i64* %tp_basicsize, align 8
  %13 = load i64, i64* %tsize, align 8
  %14 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 3
  %15 = load i64, i64* %tp_itemsize, align 8
  %mul = mul i64 %13, %15
  %add = add i64 %12, %mul
  %add6 = add i64 %add, 7
  %and = and i64 %add6, -8
  store i64 %and, i64* %size, align 8
  %16 = load i64, i64* %size, align 8
  %17 = load i64, i64* %dictoffset, align 8
  %add7 = add i64 %17, %16
  store i64 %add7, i64* %dictoffset, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.5, %if.end
  %18 = load %struct._object*, %struct._object** %obj.addr, align 8
  %19 = bitcast %struct._object* %18 to i8*
  %20 = load i64, i64* %dictoffset, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %20
  %21 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %21, %struct._object*** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %22 = load %struct._object**, %struct._object*** %retval
  ret %struct._object** %22
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_SelfIter(%struct._object* %obj) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GetBuiltin(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %mod_name = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %attr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_builtins)
  store %struct._object* %call, %struct._object** %mod_name, align 8
  %0 = load %struct._object*, %struct._object** %mod_name, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mod_name, align 8
  %call1 = call %struct._object* @PyImport_Import(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %mod, align 8
  %2 = load %struct._object*, %struct._object** %mod, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %mod, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call5 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* %4)
  store %struct._object* %call5, %struct._object** %attr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %tp_dealloc8 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc8, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %12 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare %struct._object* @PyImport_Import(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_NextNotImplemented(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1
  %3 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i8* %3)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %obj, %struct._object* %name, %struct._object* %dict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %descr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %f = alloca %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, align 8
  %dictoffset = alloca i64, align 8
  %dictptr = alloca %struct._object**, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %tsize = alloca i64, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  store %struct._object* null, %struct._object** %descr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %11 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 31
  %12 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp3 = icmp eq %struct._object* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %call5 = call i32 @PyType_Ready(%struct._typeobject* %13)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  br label %done

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %14 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %15 = load %struct._object*, %struct._object** %name.addr, align 8
  %call10 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %14, %struct._object* %15)
  store %struct._object* %call10, %struct._object** %descr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %16, %struct._object** %_py_xincref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt13, align 8
  %inc14 = add i64 %19, 1
  store i64 %inc14, i64* %ob_refcnt13, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %20 = load %struct._object*, %struct._object** %descr, align 8
  %cmp16 = icmp ne %struct._object* %20, null
  br i1 %cmp16, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %descr, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_descr_get = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 32
  %23 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_get, align 8
  store %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %23, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %24 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %cmp19 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %24, null
  br i1 %cmp19, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.then.17
  %25 = load %struct._object*, %struct._object** %descr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_descr_set = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 33
  %27 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_set, align 8
  %cmp21 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %27, null
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %land.lhs.true
  %28 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %29 = load %struct._object*, %struct._object** %descr, align 8
  %30 = load %struct._object*, %struct._object** %obj.addr, align 8
  %31 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %33 = bitcast %struct._typeobject* %32 to %struct._object*
  %call24 = call %struct._object* %28(%struct._object* %29, %struct._object* %30, %struct._object* %33)
  store %struct._object* %call24, %struct._object** %res, align 8
  br label %done

if.end.25:                                        ; preds = %land.lhs.true, %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %do.end
  %34 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp27 = icmp eq %struct._object* %34, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.end.26
  %35 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dictoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 34
  %36 = load i64, i64* %tp_dictoffset, align 8
  store i64 %36, i64* %dictoffset, align 8
  %37 = load i64, i64* %dictoffset, align 8
  %cmp29 = icmp ne i64 %37, 0
  br i1 %cmp29, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %if.then.28
  %38 = load i64, i64* %dictoffset, align 8
  %cmp31 = icmp slt i64 %38, 0
  br i1 %cmp31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.then.30
  %39 = load %struct._object*, %struct._object** %obj.addr, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %40, i32 0, i32 1
  %41 = load i64, i64* %ob_size, align 8
  store i64 %41, i64* %tsize, align 8
  %42 = load i64, i64* %tsize, align 8
  %cmp33 = icmp slt i64 %42, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.32
  %43 = load i64, i64* %tsize, align 8
  %sub = sub i64 0, %43
  store i64 %sub, i64* %tsize, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.32
  %44 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 2
  %45 = load i64, i64* %tp_basicsize, align 8
  %46 = load i64, i64* %tsize, align 8
  %47 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 3
  %48 = load i64, i64* %tp_itemsize, align 8
  %mul = mul i64 %46, %48
  %add = add i64 %45, %mul
  %add36 = add i64 %add, 7
  %and37 = and i64 %add36, -8
  store i64 %and37, i64* %size, align 8
  %49 = load i64, i64* %size, align 8
  %50 = load i64, i64* %dictoffset, align 8
  %add38 = add i64 %50, %49
  store i64 %add38, i64* %dictoffset, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.35, %if.then.30
  %51 = load %struct._object*, %struct._object** %obj.addr, align 8
  %52 = bitcast %struct._object* %51 to i8*
  %53 = load i64, i64* %dictoffset, align 8
  %add.ptr = getelementptr i8, i8* %52, i64 %53
  %54 = bitcast i8* %add.ptr to %struct._object**
  store %struct._object** %54, %struct._object*** %dictptr, align 8
  %55 = load %struct._object**, %struct._object*** %dictptr, align 8
  %56 = load %struct._object*, %struct._object** %55, align 8
  store %struct._object* %56, %struct._object** %dict.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.26
  %57 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp42 = icmp ne %struct._object* %57, null
  br i1 %cmp42, label %if.then.43, label %if.end.73

if.then.43:                                       ; preds = %if.end.41
  %58 = load %struct._object*, %struct._object** %dict.addr, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt44, align 8
  %inc45 = add i64 %59, 1
  store i64 %inc45, i64* %ob_refcnt44, align 8
  %60 = load %struct._object*, %struct._object** %dict.addr, align 8
  %61 = load %struct._object*, %struct._object** %name.addr, align 8
  %call46 = call %struct._object* @PyDict_GetItem(%struct._object* %60, %struct._object* %61)
  store %struct._object* %call46, %struct._object** %res, align 8
  %62 = load %struct._object*, %struct._object** %res, align 8
  %cmp47 = icmp ne %struct._object* %62, null
  br i1 %cmp47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %if.then.43
  %63 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt49, align 8
  %inc50 = add i64 %64, 1
  store i64 %inc50, i64* %ob_refcnt49, align 8
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.48
  %65 = load %struct._object*, %struct._object** %dict.addr, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt52, align 8
  %dec = add i64 %67, -1
  store i64 %dec, i64* %ob_refcnt52, align 8
  %cmp53 = icmp ne i64 %dec, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.51
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.51
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %tp_dealloc57 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %70(%struct._object* %71)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %done

if.end.60:                                        ; preds = %if.then.43
  br label %do.body.61

do.body.61:                                       ; preds = %if.end.60
  %72 = load %struct._object*, %struct._object** %dict.addr, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp62, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %74, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.71

if.else.67:                                       ; preds = %do.body.61
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %tp_dealloc70 = bitcast {}** %tp_dealloc69 to void (%struct._object*)**
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %77(%struct._object* %78)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %if.end.41
  %79 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %cmp74 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %79, null
  br i1 %cmp74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.73
  %80 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %81 = load %struct._object*, %struct._object** %descr, align 8
  %82 = load %struct._object*, %struct._object** %obj.addr, align 8
  %83 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %85 = bitcast %struct._typeobject* %84 to %struct._object*
  %call77 = call %struct._object* %80(%struct._object* %81, %struct._object* %82, %struct._object* %85)
  store %struct._object* %call77, %struct._object** %res, align 8
  br label %done

if.end.78:                                        ; preds = %if.end.73
  %86 = load %struct._object*, %struct._object** %descr, align 8
  %cmp79 = icmp ne %struct._object* %86, null
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.78
  %87 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %87, %struct._object** %res, align 8
  store %struct._object* null, %struct._object** %descr, align 8
  br label %done

if.end.81:                                        ; preds = %if.end.78
  %88 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %89 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_name82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 1
  %90 = load i8*, i8** %tp_name82, align 8
  %91 = load %struct._object*, %struct._object** %name.addr, align 8
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %90, %struct._object* %91)
  br label %done

done:                                             ; preds = %if.end.81, %if.then.80, %if.then.75, %do.end.59, %if.then.22, %if.then.7
  br label %do.body.84

do.body.84:                                       ; preds = %done
  %92 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %92, %struct._object** %_py_xdecref_tmp, align 8
  %93 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp85 = icmp ne %struct._object* %93, null
  br i1 %cmp85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %do.body.84
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp88, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %96, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.93:                                       ; preds = %do.body.87
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %tp_dealloc96 = bitcast {}** %tp_dealloc95 to void (%struct._object*)**
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %99(%struct._object* %100)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %do.body.84
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %101 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp102, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %103, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.111

if.else.107:                                      ; preds = %do.body.101
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %tp_dealloc110 = bitcast {}** %tp_dealloc109 to void (%struct._object*)**
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %106(%struct._object* %107)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  %108 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %108, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.112, %if.then
  %109 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %109
}

declare %struct._object* @_PyType_Lookup(%struct._typeobject*, %struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_GenericGetAttr(%struct._object* %obj, %struct._object* %name) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %0, %struct._object* %1, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @_PyObject_GenericSetAttrWithDict(%struct._object* %obj, %struct._object* %name, %struct._object* %value, %struct._object* %dict) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %descr = alloca %struct._object*, align 8
  %f = alloca i32 (%struct._object*, %struct._object*, %struct._object*)*, align 8
  %dictptr = alloca %struct._object**, align 8
  %res = alloca i32, align 4
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %tp, align 8
  store i32 -1, i32* %res, align 4
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %8)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 31
  %10 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp3 = icmp eq %struct._object* %10, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %call4 = call i32 @PyType_Ready(%struct._typeobject* %11)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %15 = load %struct._object*, %struct._object** %name.addr, align 8
  %call8 = call %struct._object* @_PyType_Lookup(%struct._typeobject* %14, %struct._object* %15)
  store %struct._object* %call8, %struct._object** %descr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %16 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %16, %struct._object** %_py_xincref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %19, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store i32 (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %20 = load %struct._object*, %struct._object** %descr, align 8
  %cmp14 = icmp ne %struct._object* %20, null
  br i1 %cmp14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %descr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_descr_set = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 33
  %23 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_set, align 8
  store i32 (%struct._object*, %struct._object*, %struct._object*)* %23, i32 (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %24 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %cmp17 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %24, null
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.24

land.lhs.true.18:                                 ; preds = %if.then.15
  %25 = load %struct._object*, %struct._object** %descr, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_descr_set20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 33
  %27 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_descr_set20, align 8
  %cmp21 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %27, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %land.lhs.true.18
  %28 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %29 = load %struct._object*, %struct._object** %descr, align 8
  %30 = load %struct._object*, %struct._object** %obj.addr, align 8
  %31 = load %struct._object*, %struct._object** %value.addr, align 8
  %call23 = call i32 %28(%struct._object* %29, %struct._object* %30, %struct._object* %31)
  store i32 %call23, i32* %res, align 4
  br label %done

if.end.24:                                        ; preds = %land.lhs.true.18, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.end
  %32 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp26 = icmp eq %struct._object* %32, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.25
  %33 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call28 = call %struct._object** @_PyObject_GetDictPtr(%struct._object* %33)
  store %struct._object** %call28, %struct._object*** %dictptr, align 8
  %34 = load %struct._object**, %struct._object*** %dictptr, align 8
  %cmp29 = icmp ne %struct._object** %34, null
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.then.27
  %35 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %37 = load %struct._object**, %struct._object*** %dictptr, align 8
  %38 = load %struct._object*, %struct._object** %name.addr, align 8
  %39 = load %struct._object*, %struct._object** %value.addr, align 8
  %call32 = call i32 @_PyObjectDict_SetItem(%struct._typeobject* %36, %struct._object** %37, %struct._object* %38, %struct._object* %39)
  store i32 %call32, i32* %res, align 4
  %40 = load i32, i32* %res, align 4
  %cmp33 = icmp slt i32 %40, 0
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.37

land.lhs.true.34:                                 ; preds = %if.then.30
  %41 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call35 = call i32 @PyErr_ExceptionMatches(%struct._object* %41)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.34
  %42 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %43 = load %struct._object*, %struct._object** %name.addr, align 8
  call void @PyErr_SetObject(%struct._object* %42, %struct._object* %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.34, %if.then.30
  br label %done

if.end.38:                                        ; preds = %if.then.27
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.25
  %44 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp40 = icmp ne %struct._object* %44, null
  br i1 %cmp40, label %if.then.41, label %if.end.64

if.then.41:                                       ; preds = %if.end.39
  %45 = load %struct._object*, %struct._object** %dict.addr, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt42, align 8
  %inc43 = add i64 %46, 1
  store i64 %inc43, i64* %ob_refcnt42, align 8
  %47 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp44 = icmp eq %struct._object* %47, null
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.41
  %48 = load %struct._object*, %struct._object** %dict.addr, align 8
  %49 = load %struct._object*, %struct._object** %name.addr, align 8
  %call46 = call i32 @PyDict_DelItem(%struct._object* %48, %struct._object* %49)
  store i32 %call46, i32* %res, align 4
  br label %if.end.48

if.else:                                          ; preds = %if.then.41
  %50 = load %struct._object*, %struct._object** %dict.addr, align 8
  %51 = load %struct._object*, %struct._object** %name.addr, align 8
  %52 = load %struct._object*, %struct._object** %value.addr, align 8
  %call47 = call i32 @PyDict_SetItem(%struct._object* %50, %struct._object* %51, %struct._object* %52)
  store i32 %call47, i32* %res, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %53 = load %struct._object*, %struct._object** %dict.addr, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt50, align 8
  %dec = add i64 %55, -1
  store i64 %dec, i64* %ob_refcnt50, align 8
  %cmp51 = icmp ne i64 %dec, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.49
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.49
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %tp_dealloc55 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %58(%struct._object* %59)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %60 = load i32, i32* %res, align 4
  %cmp58 = icmp slt i32 %60, 0
  br i1 %cmp58, label %land.lhs.true.59, label %if.end.63

land.lhs.true.59:                                 ; preds = %do.end.57
  %61 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call60 = call i32 @PyErr_ExceptionMatches(%struct._object* %61)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.59
  %62 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %63 = load %struct._object*, %struct._object** %name.addr, align 8
  call void @PyErr_SetObject(%struct._object* %62, %struct._object* %63)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %land.lhs.true.59, %do.end.57
  br label %done

if.end.64:                                        ; preds = %if.end.39
  %64 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %cmp65 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %64, null
  br i1 %cmp65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.64
  %65 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %f, align 8
  %66 = load %struct._object*, %struct._object** %descr, align 8
  %67 = load %struct._object*, %struct._object** %obj.addr, align 8
  %68 = load %struct._object*, %struct._object** %value.addr, align 8
  %call67 = call i32 %65(%struct._object* %66, %struct._object* %67, %struct._object* %68)
  store i32 %call67, i32* %res, align 4
  br label %done

if.end.68:                                        ; preds = %if.end.64
  %69 = load %struct._object*, %struct._object** %descr, align 8
  %cmp69 = icmp eq %struct._object* %69, null
  br i1 %cmp69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.68
  %70 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %71 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_name71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 1
  %72 = load i8*, i8** %tp_name71, align 8
  %73 = load %struct._object*, %struct._object** %name.addr, align 8
  %call72 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), i8* %72, %struct._object* %73)
  br label %done

if.end.73:                                        ; preds = %if.end.68
  %74 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %75 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_name74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 1
  %76 = load i8*, i8** %tp_name74, align 8
  %77 = load %struct._object*, %struct._object** %name.addr, align 8
  %call75 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i8* %76, %struct._object* %77)
  br label %done

done:                                             ; preds = %if.end.73, %if.then.70, %if.then.66, %if.end.63, %if.end.37, %if.then.22
  br label %do.body.76

do.body.76:                                       ; preds = %done
  %78 = load %struct._object*, %struct._object** %descr, align 8
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp, align 8
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp77 = icmp ne %struct._object* %79, null
  br i1 %cmp77, label %if.then.78, label %if.end.91

if.then.78:                                       ; preds = %do.body.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp80, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %82, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.89

if.else.85:                                       ; preds = %do.body.79
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %tp_dealloc88 = bitcast {}** %tp_dealloc87 to void (%struct._object*)**
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %85(%struct._object* %86)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.91

if.end.91:                                        ; preds = %do.end.90, %do.body.76
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %87 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp94, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %89, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.99:                                       ; preds = %do.body.93
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %tp_dealloc102 = bitcast {}** %tp_dealloc101 to void (%struct._object*)**
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %92(%struct._object* %93)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  %94 = load i32, i32* %res, align 4
  store i32 %94, i32* %retval
  br label %return

return:                                           ; preds = %do.end.104, %if.then.6, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

declare i32 @_PyObjectDict_SetItem(%struct._typeobject*, %struct._object**, %struct._object*, %struct._object*) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_GenericSetAttr(%struct._object* %obj, %struct._object* %name, %struct._object* %value) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @_PyObject_GenericSetAttrWithDict(%struct._object* %0, %struct._object* %1, %struct._object* %2, %struct._object* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyObject_GenericSetDict(%struct._object* %obj, %struct._object* %value, i8* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  %dict = alloca %struct._object*, align 8
  %dictptr = alloca %struct._object**, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object** @_PyObject_GetDictPtr(%struct._object* %0)
  store %struct._object** %call, %struct._object*** %dictptr, align 8
  %1 = load %struct._object**, %struct._object*** %dictptr, align 8
  %cmp = icmp eq %struct._object** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 536870912
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i32 0, i32 0), i8* %11)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %12 = load %struct._object**, %struct._object*** %dictptr, align 8
  %13 = load %struct._object*, %struct._object** %12, align 8
  store %struct._object* %13, %struct._object** %dict, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %14 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %14, %struct._object** %_py_xincref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %18 = load %struct._object*, %struct._object** %value.addr, align 8
  %19 = load %struct._object**, %struct._object*** %dictptr, align 8
  store %struct._object* %18, %struct._object** %19, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %20 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %21, null
  br i1 %cmp13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %do.body.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.15
  br label %if.end.21

if.else:                                          ; preds = %do.body.15
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %tp_dealloc20 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.12
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.24, %if.then.5, %if.then.2, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_Not(%struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  store i32 %call, i32* %res, align 4
  %1 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %res, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %res, align 4
  %cmp1 = icmp eq i32 %3, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @PyCallable_Check(%struct._object* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_call = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 14
  %3 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %tp_call, align 8
  %cmp1 = icmp ne %struct._object* (%struct._object*, %struct._object*, %struct._object*)* %3, null
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyObject_Dir(%struct._object* %obj) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call %struct._object* @_dir_locals()
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call1 = call %struct._object* @_dir_object(%struct._object* %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct._object* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_dir_locals() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %names = alloca %struct._object*, align 8
  %locals = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyEval_GetLocals()
  store %struct._object* %call, %struct._object** %locals, align 8
  %0 = load %struct._object*, %struct._object** %locals, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %locals, align 8
  %call1 = call %struct._object* @PyMapping_Keys(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %names, align 8
  %2 = load %struct._object*, %struct._object** %names, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %names, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.end.13, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load %struct._object*, %struct._object** %names, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.94, i32 0, i32 0), i8* %9)
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %10 = load %struct._object*, %struct._object** %names, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %tp_dealloc11 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.3
  %17 = load %struct._object*, %struct._object** %names, align 8
  %call14 = call i32 @PyList_Sort(%struct._object* %17)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %if.end.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %18 = load %struct._object*, %struct._object** %names, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp18, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %20, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.27

if.else.23:                                       ; preds = %do.body.17
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %tp_dealloc26 = bitcast {}** %tp_dealloc25 to void (%struct._object*)**
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %23(%struct._object* %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.13
  %25 = load %struct._object*, %struct._object** %names, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %do.end.28, %do.end, %if.then.2, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_dir_object(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %sorted = alloca %struct._object*, align 8
  %dirfunc = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %0, %struct._Py_Identifier* @PyId___dir__)
  store %struct._object* %call, %struct._object** %dirfunc, align 8
  %1 = load %struct._object*, %struct._object** %dirfunc, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %3 = load %struct._object*, %struct._object** %dirfunc, align 8
  %call4 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %3, i8* null)
  store %struct._object* %call4, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %dirfunc, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %tp_dealloc7 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc7, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp9 = icmp eq %struct._object* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %12 = load %struct._object*, %struct._object** %result, align 8
  %call12 = call %struct._object* @PySequence_List(%struct._object* %12)
  store %struct._object* %call12, %struct._object** %sorted, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.11
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp14, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %15, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.23

if.else.19:                                       ; preds = %do.body.13
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %tp_dealloc22 = bitcast {}** %tp_dealloc21 to void (%struct._object*)**
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %18(%struct._object* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %20 = load %struct._object*, %struct._object** %sorted, align 8
  %cmp25 = icmp eq %struct._object* %20, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.24
  %21 = load %struct._object*, %struct._object** %sorted, align 8
  %call28 = call i32 @PyList_Sort(%struct._object* %21)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %if.end.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %22 = load %struct._object*, %struct._object** %sorted, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp32, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %24, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.41

if.else.37:                                       ; preds = %do.body.31
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %tp_dealloc40 = bitcast {}** %tp_dealloc39 to void (%struct._object*)**
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %27(%struct._object* %28)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.27
  %29 = load %struct._object*, %struct._object** %sorted, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %do.end.42, %if.then.26, %if.then.10, %if.end
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal void @none_dealloc(%struct._object* %ignore) #0 {
entry:
  %ignore.addr = alloca %struct._object*, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  call void @Py_FatalError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0)) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @none_repr(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @none_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i64 @PyDict_Size(%struct._object* %4)
  %tobool2 = icmp ne i64 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal void @notimplemented_dealloc(%struct._object* %ignore) #0 {
entry:
  %ignore.addr = alloca %struct._object*, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0)) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @NotImplemented_repr(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @notimplemented_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i64 @PyDict_Size(%struct._object* %4)
  %tobool2 = icmp ne i64 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.103, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define void @_Py_ReadyTypes() #0 {
entry:
  %call = call i32 @PyType_Ready(%struct._typeobject* @PyType_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @_PyWeakref_RefType)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0)) #5
  unreachable

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @PyType_Ready(%struct._typeobject* @_PyWeakref_CallableProxyType)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @Py_FatalError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0)) #5
  unreachable

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i32 @PyType_Ready(%struct._typeobject* @_PyWeakref_ProxyType)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  call void @Py_FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #5
  unreachable

if.end.12:                                        ; preds = %if.end.8
  %call13 = call i32 @PyType_Ready(%struct._typeobject* @PyBool_Type)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0)) #5
  unreachable

if.end.16:                                        ; preds = %if.end.12
  %call17 = call i32 @PyType_Ready(%struct._typeobject* @PyByteArray_Type)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0)) #5
  unreachable

if.end.20:                                        ; preds = %if.end.16
  %call21 = call i32 @PyType_Ready(%struct._typeobject* @PyBytes_Type)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  call void @Py_FatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0)) #5
  unreachable

if.end.24:                                        ; preds = %if.end.20
  %call25 = call i32 @PyType_Ready(%struct._typeobject* @PyList_Type)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0)) #5
  unreachable

if.end.28:                                        ; preds = %if.end.24
  %call29 = call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @_PyNone_Type to %struct._typeobject*))
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0)) #5
  unreachable

if.end.32:                                        ; preds = %if.end.28
  %call33 = call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @_PyNotImplemented_Type to %struct._typeobject*))
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0)) #5
  unreachable

if.end.36:                                        ; preds = %if.end.32
  %call37 = call i32 @PyType_Ready(%struct._typeobject* @PyTraceBack_Type)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0)) #5
  unreachable

if.end.40:                                        ; preds = %if.end.36
  %call41 = call i32 @PyType_Ready(%struct._typeobject* @PySuper_Type)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0)) #5
  unreachable

if.end.44:                                        ; preds = %if.end.40
  %call45 = call i32 @PyType_Ready(%struct._typeobject* @PyBaseObject_Type)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0)) #5
  unreachable

if.end.48:                                        ; preds = %if.end.44
  %call49 = call i32 @PyType_Ready(%struct._typeobject* @PyRange_Type)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0)) #5
  unreachable

if.end.52:                                        ; preds = %if.end.48
  %call53 = call i32 @PyType_Ready(%struct._typeobject* @PyDict_Type)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i32 0, i32 0)) #5
  unreachable

if.end.56:                                        ; preds = %if.end.52
  %call57 = call i32 @PyType_Ready(%struct._typeobject* @PySet_Type)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0)) #5
  unreachable

if.end.60:                                        ; preds = %if.end.56
  %call61 = call i32 @PyType_Ready(%struct._typeobject* @PyUnicode_Type)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0)) #5
  unreachable

if.end.64:                                        ; preds = %if.end.60
  %call65 = call i32 @PyType_Ready(%struct._typeobject* @PySlice_Type)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.64
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0)) #5
  unreachable

if.end.68:                                        ; preds = %if.end.64
  %call69 = call i32 @PyType_Ready(%struct._typeobject* @PyStaticMethod_Type)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  call void @Py_FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0)) #5
  unreachable

if.end.72:                                        ; preds = %if.end.68
  %call73 = call i32 @PyType_Ready(%struct._typeobject* @PyComplex_Type)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0)) #5
  unreachable

if.end.76:                                        ; preds = %if.end.72
  %call77 = call i32 @PyType_Ready(%struct._typeobject* @PyFloat_Type)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0)) #5
  unreachable

if.end.80:                                        ; preds = %if.end.76
  %call81 = call i32 @PyType_Ready(%struct._typeobject* @PyLong_Type)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0)) #5
  unreachable

if.end.84:                                        ; preds = %if.end.80
  %call85 = call i32 @PyType_Ready(%struct._typeobject* @PyFrozenSet_Type)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.84
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0)) #5
  unreachable

if.end.88:                                        ; preds = %if.end.84
  %call89 = call i32 @PyType_Ready(%struct._typeobject* @PyProperty_Type)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  call void @Py_FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0)) #5
  unreachable

if.end.92:                                        ; preds = %if.end.88
  %call93 = call i32 @PyType_Ready(%struct._typeobject* @_PyManagedBuffer_Type)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i32 0, i32 0)) #5
  unreachable

if.end.96:                                        ; preds = %if.end.92
  %call97 = call i32 @PyType_Ready(%struct._typeobject* @PyMemoryView_Type)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.96
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i32 0, i32 0)) #5
  unreachable

if.end.100:                                       ; preds = %if.end.96
  %call101 = call i32 @PyType_Ready(%struct._typeobject* @PyTuple_Type)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0)) #5
  unreachable

if.end.104:                                       ; preds = %if.end.100
  %call105 = call i32 @PyType_Ready(%struct._typeobject* @PyEnum_Type)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.104
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.108:                                       ; preds = %if.end.104
  %call109 = call i32 @PyType_Ready(%struct._typeobject* @PyReversed_Type)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  call void @Py_FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0)) #5
  unreachable

if.end.112:                                       ; preds = %if.end.108
  %call113 = call i32 @PyType_Ready(%struct._typeobject* @PyStdPrinter_Type)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0)) #5
  unreachable

if.end.116:                                       ; preds = %if.end.112
  %call117 = call i32 @PyType_Ready(%struct._typeobject* @PyCode_Type)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0)) #5
  unreachable

if.end.120:                                       ; preds = %if.end.116
  %call121 = call i32 @PyType_Ready(%struct._typeobject* @PyFrame_Type)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.120
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0)) #5
  unreachable

if.end.124:                                       ; preds = %if.end.120
  %call125 = call i32 @PyType_Ready(%struct._typeobject* @PyCFunction_Type)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  call void @Py_FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i32 0, i32 0)) #5
  unreachable

if.end.128:                                       ; preds = %if.end.124
  %call129 = call i32 @PyType_Ready(%struct._typeobject* @PyMethod_Type)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0)) #5
  unreachable

if.end.132:                                       ; preds = %if.end.128
  %call133 = call i32 @PyType_Ready(%struct._typeobject* @PyFunction_Type)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.132
  call void @Py_FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0)) #5
  unreachable

if.end.136:                                       ; preds = %if.end.132
  %call137 = call i32 @PyType_Ready(%struct._typeobject* @PyDictProxy_Type)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.136
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0)) #5
  unreachable

if.end.140:                                       ; preds = %if.end.136
  %call141 = call i32 @PyType_Ready(%struct._typeobject* @PyGen_Type)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.140
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i32 0, i32 0)) #5
  unreachable

if.end.144:                                       ; preds = %if.end.140
  %call145 = call i32 @PyType_Ready(%struct._typeobject* @PyGetSetDescr_Type)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.144
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.70, i32 0, i32 0)) #5
  unreachable

if.end.148:                                       ; preds = %if.end.144
  %call149 = call i32 @PyType_Ready(%struct._typeobject* @PyWrapperDescr_Type)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.148
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0)) #5
  unreachable

if.end.152:                                       ; preds = %if.end.148
  %call153 = call i32 @PyType_Ready(%struct._typeobject* @_PyMethodWrapper_Type)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.152
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.72, i32 0, i32 0)) #5
  unreachable

if.end.156:                                       ; preds = %if.end.152
  %call157 = call i32 @PyType_Ready(%struct._typeobject* @PyEllipsis_Type)
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.156
  call void @Py_FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.73, i32 0, i32 0)) #5
  unreachable

if.end.160:                                       ; preds = %if.end.156
  %call161 = call i32 @PyType_Ready(%struct._typeobject* @PyMemberDescr_Type)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.160
  call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.74, i32 0, i32 0)) #5
  unreachable

if.end.164:                                       ; preds = %if.end.160
  %call165 = call i32 @PyType_Ready(%struct._typeobject* @_PyNamespace_Type)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.164
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i32 0, i32 0)) #5
  unreachable

if.end.168:                                       ; preds = %if.end.164
  %call169 = call i32 @PyType_Ready(%struct._typeobject* @PyCapsule_Type)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.168
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0)) #5
  unreachable

if.end.172:                                       ; preds = %if.end.168
  %call173 = call i32 @PyType_Ready(%struct._typeobject* @PyLongRangeIter_Type)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.172
  call void @Py_FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i32 0, i32 0)) #5
  unreachable

if.end.176:                                       ; preds = %if.end.172
  %call177 = call i32 @PyType_Ready(%struct._typeobject* @PyCell_Type)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.176
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0)) #5
  unreachable

if.end.180:                                       ; preds = %if.end.176
  %call181 = call i32 @PyType_Ready(%struct._typeobject* @PyInstanceMethod_Type)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.180
  call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.79, i32 0, i32 0)) #5
  unreachable

if.end.184:                                       ; preds = %if.end.180
  %call185 = call i32 @PyType_Ready(%struct._typeobject* @PyClassMethodDescr_Type)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.184
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i32 0, i32 0)) #5
  unreachable

if.end.188:                                       ; preds = %if.end.184
  %call189 = call i32 @PyType_Ready(%struct._typeobject* @PyMethodDescr_Type)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.188
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0)) #5
  unreachable

if.end.192:                                       ; preds = %if.end.188
  %call193 = call i32 @PyType_Ready(%struct._typeobject* @PyCallIter_Type)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.192
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i32 0, i32 0)) #5
  unreachable

if.end.196:                                       ; preds = %if.end.192
  %call197 = call i32 @PyType_Ready(%struct._typeobject* @PySeqIter_Type)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.196
  call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i32 0, i32 0)) #5
  unreachable

if.end.200:                                       ; preds = %if.end.196
  ret void
}

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_PyObject_DebugTypeStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyCFunction_DebugMallocStats(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyDict_DebugMallocStats(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyFloat_DebugMallocStats(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyFrame_DebugMallocStats(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyList_DebugMallocStats(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyMethod_DebugMallocStats(%struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_PyTuple_DebugMallocStats(%struct._IO_FILE* %6)
  ret void
}

declare void @_PyCFunction_DebugMallocStats(%struct._IO_FILE*) #1

declare void @_PyDict_DebugMallocStats(%struct._IO_FILE*) #1

declare void @_PyFloat_DebugMallocStats(%struct._IO_FILE*) #1

declare void @_PyFrame_DebugMallocStats(%struct._IO_FILE*) #1

declare void @_PyList_DebugMallocStats(%struct._IO_FILE*) #1

declare void @_PyMethod_DebugMallocStats(%struct._IO_FILE*) #1

declare void @_PyTuple_DebugMallocStats(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @Py_ReprEnter(%struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyThreadState_GetDict()
  store %struct._object* %call, %struct._object** %dict, align 8
  %0 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %call1 = call %struct._object* @_PyDict_GetItemId(%struct._object* %1, %struct._Py_Identifier* @PyId_Py_Repr)
  store %struct._object* %call1, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.16

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call4, %struct._object** %list, align 8
  %3 = load %struct._object*, %struct._object** %list, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %5 = load %struct._object*, %struct._object** %list, align 8
  %call8 = call i32 @_PyDict_SetItemId(%struct._object* %4, %struct._Py_Identifier* @PyId_Py_Repr, %struct._object* %5)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %6 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %tp_dealloc14 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc14, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.end
  %13 = load %struct._object*, %struct._object** %list, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  store i64 %15, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.16
  %16 = load i64, i64* %i, align 8
  %dec17 = add i64 %16, -1
  store i64 %dec17, i64* %i, align 8
  %cmp18 = icmp sge i64 %dec17, 0
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i64, i64* %i, align 8
  %18 = load %struct._object*, %struct._object** %list, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %19, i32 0, i32 1
  %20 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %20, i64 %17
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8
  %22 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp19 = icmp eq %struct._object* %21, %22
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._object*, %struct._object** %list, align 8
  %24 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call22 = call i32 @PyList_Append(%struct._object* %23, %struct._object* %24)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.20, %if.then.10, %if.then.6, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare %struct._object* @PyThreadState_GetDict() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @_PyDict_SetItemId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define void @Py_ReprLeave(%struct._object* %obj) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %call = call %struct._object* @PyThreadState_GetDict()
  store %struct._object* %call, %struct._object** %dict, align 8
  %0 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %finally

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %call1 = call %struct._object* @_PyDict_GetItemId(%struct._object* %1, %struct._Py_Identifier* @PyId_Py_Repr)
  store %struct._object* %call1, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %list, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %finally

if.end.5:                                         ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %list, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end.5
  %9 = load i64, i64* %i, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %i, align 8
  %cmp6 = icmp sge i64 %dec, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %i, align 8
  %11 = load %struct._object*, %struct._object** %list, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %13, i64 %10
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp7 = icmp eq %struct._object* %14, %15
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %while.body
  %16 = load %struct._object*, %struct._object** %list, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %i, align 8
  %add = add i64 %18, 1
  %call9 = call i32 @PyList_SetSlice(%struct._object* %16, i64 %17, i64 %add, %struct._object* null)
  br label %while.end

if.end.10:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  br label %finally

finally:                                          ; preds = %while.end, %if.then.4, %if.then
  %19 = load %struct._object*, %struct._object** %error_type, align 8
  %20 = load %struct._object*, %struct._object** %error_value, align 8
  %21 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %19, %struct._object* %20, %struct._object* %21)
  ret void
}

declare i32 @PyList_SetSlice(%struct._object*, i64, i64, %struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_PyTrash_deposit_object(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** @_PyTrash_delete_later, align 8
  %1 = bitcast %struct._object* %0 to %union._gc_head*
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  store %union._gc_head* %1, %union._gc_head** %gc_prev, align 8
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  store %struct._object* %4, %struct._object** @_PyTrash_delete_later, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyTrash_thread_deposit_object(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 24
  %12 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %13 = bitcast %struct._object* %12 to %union._gc_head*
  %14 = load %struct._object*, %struct._object** %op.addr, align 8
  %15 = bitcast %struct._object* %14 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %15, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  store %union._gc_head* %13, %union._gc_head** %gc_prev, align 8
  %16 = load %struct._object*, %struct._object** %op.addr, align 8
  %17 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_later4 = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 24
  store %struct._object* %16, %struct._object** %trash_delete_later4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyTrash_destroy_chain() #0 {
entry:
  %op = alloca %struct._object*, align 8
  %dealloc = alloca void (%struct._object*)*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._object*, %struct._object** @_PyTrash_delete_later, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._object*, %struct._object** @_PyTrash_delete_later, align 8
  store %struct._object* %1, %struct._object** %op, align 8
  %2 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 4
  %tp_dealloc1 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1, align 8
  store void (%struct._object*)* %4, void (%struct._object*)** %dealloc, align 8
  %5 = load %struct._object*, %struct._object** %op, align 8
  %6 = bitcast %struct._object* %5 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  %7 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %8 = bitcast %union._gc_head* %7 to %struct._object*
  store %struct._object* %8, %struct._object** @_PyTrash_delete_later, align 8
  %9 = load i32, i32* @_PyTrash_delete_nesting, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* @_PyTrash_delete_nesting, align 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %dealloc, align 8
  %11 = load %struct._object*, %struct._object** %op, align 8
  call void %10(%struct._object* %11)
  %12 = load i32, i32* @_PyTrash_delete_nesting, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* @_PyTrash_delete_nesting, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyTrash_thread_destroy_chain() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %op = alloca %struct._object*, align 8
  %dealloc = alloca void (%struct._object*)*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog.3
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 24
  %12 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_later5 = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 24
  %14 = load %struct._object*, %struct._object** %trash_delete_later5, align 8
  store %struct._object* %14, %struct._object** %op, align 8
  %15 = load %struct._object*, %struct._object** %op, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %tp_dealloc7 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc7, align 8
  store void (%struct._object*)* %17, void (%struct._object*)** %dealloc, align 8
  %18 = load %struct._object*, %struct._object** %op, align 8
  %19 = bitcast %struct._object* %18 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %19, i64 -1
  %gc = bitcast %union._gc_head* %add.ptr to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 1
  %20 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %21 = bitcast %union._gc_head* %20 to %struct._object*
  %22 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_later8 = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 24
  store %struct._object* %21, %struct._object** %trash_delete_later8, align 8
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 23
  %24 = load i32, i32* %trash_delete_nesting, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %trash_delete_nesting, align 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %dealloc, align 8
  %26 = load %struct._object*, %struct._object** %op, align 8
  call void %25(%struct._object* %26)
  %27 = load %struct._ts*, %struct._ts** %tstate, align 8
  %trash_delete_nesting9 = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 23
  %28 = load i32, i32* %trash_delete_nesting9, align 4
  %dec = add i32 %28, -1
  store i32 %dec, i32* %trash_delete_nesting9, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_Dealloc(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 4
  %tp_dealloc1 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1, align 8
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  call void %2(%struct._object* %3)
  ret void
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyEval_GetLocals() #1

declare %struct._object* @PyMapping_Keys(%struct._object*) #1

declare i32 @PyList_Sort(%struct._object*) #1

declare %struct._object* @PySequence_List(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @none_bool(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  ret i32 0
}

declare i64 @PyDict_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @NotImplemented_reduce(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0))
  ret %struct._object* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139693}
!2 = !{i32 139533}
