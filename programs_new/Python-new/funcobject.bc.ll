; ModuleID = 'irs-onlybc/funcobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, {}*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyFunctionObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.classmethod = type { %struct._object, %struct._object*, %struct._object* }
%struct.staticmethod = type { %struct._object, %struct._object*, %struct._object* }

@PyFunction_NewWithQualName.__name__ = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Objects/funcobject.c\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"non-tuple default args\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"non-dict keyword only default args\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"expected tuple for closure, got '%.100s'\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"non-dict annotations\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@func_doc = internal global [318 x i8] c"function(code, globals[, name[, argdefs[, closure]]])\0A\0ACreate a function object from a code object and a dictionary.\0AThe optional name string overrides the name from the code object.\0AThe optional argdefs tuple specifies the default argument values.\0AThe optional closure tuple supplies the bindings for free variables.\00", align 16
@func_memberlist = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 6, i64 48, i32 7, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 6, i64 56, i32 4, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 24, i32 7, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 6, i64 88, i32 4, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@func_getsetlist = internal global [8 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_get_code to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_code to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_get_defaults to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_defaults to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_get_kwdefaults to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_kwdefaults to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_get_annotations to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_annotations to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyObject_GenericGetDict, i32 (%struct._object*, %struct._object*, i8*)* @PyObject_GenericSetDict, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_get_name to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_name to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_get_qualname to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_qualname to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyFunction_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.PyFunctionObject*)* @func_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyFunctionObject*)* @func_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @function_call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([318 x i8], [318 x i8]* @func_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @func_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 80, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @func_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([8 x %struct.PyGetSetDef], [8 x %struct.PyGetSetDef]* @func_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @func_descr_get, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 72, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @func_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"classmethod\00", align 1
@classmethod_doc = internal global [666 x i8] c"classmethod(function) -> method\0A\0AConvert a function to be a class method.\0A\0AA class method receives the class as implicit first argument,\0Ajust like an instance method receives the instance.\0ATo declare a class method, use this idiom:\0A\0A  class C:\0A      def f(cls, arg1, arg2, ...): ...\0A      f = classmethod(f)\0A\0AIt can be called either on the class (e.g. C.f()) or on an instance\0A(e.g. C().f()).  The instance is ignored except for its class.\0AIf a class method is called for a derived class, the derived class\0Aobject is passed as the implied first argument.\0A\0AClass methods are different than C++ or Java static methods.\0AIf you want those, see the staticmethod builtin.\00", align 16
@cm_memberlist = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@cm_getsetlist = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.classmethod*, i8*)* @cm_get___isabstractmethod__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyObject_GenericGetDict, i32 (%struct._object*, %struct._object*, i8*)* @PyObject_GenericSetDict, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyClassMethod_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.classmethod*)* @cm_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([666 x i8], [666 x i8]* @classmethod_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.classmethod*, i32 (%struct._object*, i8*)*, i8*)* @cm_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.classmethod*)* @cm_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @cm_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @cm_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @cm_descr_get, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 24, i32 (%struct._object*, %struct._object*, %struct._object*)* @cm_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"staticmethod\00", align 1
@staticmethod_doc = internal global [514 x i8] c"staticmethod(function) -> method\0A\0AConvert a function to be a static method.\0A\0AA static method does not receive an implicit first argument.\0ATo declare a static method, use this idiom:\0A\0A     class C:\0A     def f(arg1, arg2, ...): ...\0A     f = staticmethod(f)\0A\0AIt can be called either on the class (e.g. C.f()) or on an instance\0A(e.g. C().f()).  The instance is ignored except for its class.\0A\0AStatic methods in Python are similar to those found in Java or C++.\0AFor a more advanced concept, see the classmethod builtin.\00", align 16
@sm_memberlist = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@sm_getsetlist = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.staticmethod*, i8*)* @sm_get___isabstractmethod__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyObject_GenericGetDict, i32 (%struct._object*, %struct._object*, i8*)* @PyObject_GenericSetDict, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyStaticMethod_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.staticmethod*)* @sm_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([514 x i8], [514 x i8]* @staticmethod_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.staticmethod*, i32 (%struct._object*, i8*)*, i8*)* @sm_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.staticmethod*)* @sm_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @sm_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @sm_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @sm_descr_get, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 24, i32 (%struct._object*, %struct._object*, %struct._object*)* @sm_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"<function %U at %p>\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"__closure__\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"__globals__\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"__module__\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__code__\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"__defaults__\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"__kwdefaults__\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"__annotations__\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"__qualname__\00", align 1
@PyCode_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.21 = private unnamed_addr constant [38 x i8] c"__code__ must be set to a code object\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.22 = private unnamed_addr constant [56 x i8] c"%U() requires a code object with %zd free vars, not %zd\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"__defaults__ must be set to a tuple object\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"__kwdefaults__ must be set to a dict object\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"__annotations__ must be set to a dict object\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"__name__ must be set to a string object\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"__qualname__ must be set to a string object\00", align 1
@func_new.kwlist = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.28 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"globals\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"argdefs\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"closure\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"O!O!|OOO:function\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.34 = private unnamed_addr constant [36 x i8] c"arg 3 (name) must be None or string\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"arg 4 (defaults) must be None or tuple\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"arg 5 (closure) must be tuple\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"arg 5 (closure) must be None or tuple\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"%U requires closure of length %zd, not %zd\00", align 1
@PyCell_Type = external global %struct._typeobject, align 8
@.str.39 = private unnamed_addr constant [40 x i8] c"arg 5 (closure) expected cell, found %s\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"__func__\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"__isabstractmethod__\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.42 = private unnamed_addr constant [33 x i8] c"uninitialized classmethod object\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"uninitialized staticmethod object\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_NewWithQualName(%struct._object* %code, %struct._object* %globals, %struct._object* %qualname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %code.addr = alloca %struct._object*, align 8
  %globals.addr = alloca %struct._object*, align 8
  %qualname.addr = alloca %struct._object*, align 8
  %op = alloca %struct.PyFunctionObject*, align 8
  %doc = alloca %struct._object*, align 8
  %consts = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %code, %struct._object** %code.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %code.addr, metadata !435, metadata !942), !dbg !943
  store %struct._object* %globals, %struct._object** %globals.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %globals.addr, metadata !436, metadata !942), !dbg !944
  store %struct._object* %qualname, %struct._object** %qualname.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %qualname.addr, metadata !437, metadata !942), !dbg !945
  %0 = bitcast %struct.PyFunctionObject** %op to i8*, !dbg !946
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !946
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op, metadata !438, metadata !942), !dbg !947
  %1 = bitcast %struct._object** %doc to i8*, !dbg !948
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !948
  call void @llvm.dbg.declare(metadata %struct._object** %doc, metadata !439, metadata !942), !dbg !949
  %2 = bitcast %struct._object** %consts to i8*, !dbg !948
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !948
  call void @llvm.dbg.declare(metadata %struct._object** %consts, metadata !440, metadata !942), !dbg !950
  %3 = bitcast %struct._object** %module to i8*, !dbg !948
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !948
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !441, metadata !942), !dbg !951
  %4 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !952, !tbaa !938
  %cmp = icmp eq %struct._object* %4, null, !dbg !954
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !955

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)), !dbg !956
  store %struct._object* %call, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !958, !tbaa !938
  %5 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !959, !tbaa !938
  %cmp1 = icmp eq %struct._object* %5, null, !dbg !961
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !962

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !963
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !963

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !964

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)), !dbg !965
  %6 = bitcast %struct._object* %call4 to %struct.PyFunctionObject*, !dbg !966
  store %struct.PyFunctionObject* %6, %struct.PyFunctionObject** %op, align 8, !dbg !967, !tbaa !938
  %7 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !968, !tbaa !938
  %cmp5 = icmp eq %struct.PyFunctionObject* %7, null, !dbg !970
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !971

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !972
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !972

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !973, !tbaa !938
  %func_weakreflist = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %8, i32 0, i32 9, !dbg !974
  store %struct._object* null, %struct._object** %func_weakreflist, align 8, !dbg !975, !tbaa !976
  %9 = load %struct._object*, %struct._object** %code.addr, align 8, !dbg !980, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !981
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !982, !tbaa !983
  %inc = add i64 %10, 1, !dbg !982
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !982, !tbaa !983
  %11 = load %struct._object*, %struct._object** %code.addr, align 8, !dbg !984, !tbaa !938
  %12 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !985, !tbaa !938
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %12, i32 0, i32 1, !dbg !986
  store %struct._object* %11, %struct._object** %func_code, align 8, !dbg !987, !tbaa !988
  %13 = load %struct._object*, %struct._object** %globals.addr, align 8, !dbg !989, !tbaa !938
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !990
  %14 = load i64, i64* %ob_refcnt8, align 8, !dbg !991, !tbaa !983
  %inc9 = add i64 %14, 1, !dbg !991
  store i64 %inc9, i64* %ob_refcnt8, align 8, !dbg !991, !tbaa !983
  %15 = load %struct._object*, %struct._object** %globals.addr, align 8, !dbg !992, !tbaa !938
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !993, !tbaa !938
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 2, !dbg !994
  store %struct._object* %15, %struct._object** %func_globals, align 8, !dbg !995, !tbaa !996
  %17 = load %struct._object*, %struct._object** %code.addr, align 8, !dbg !997, !tbaa !938
  %18 = bitcast %struct._object* %17 to %struct.PyCodeObject*, !dbg !998
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %18, i32 0, i32 14, !dbg !999
  %19 = load %struct._object*, %struct._object** %co_name, align 8, !dbg !999, !tbaa !1000
  %20 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1003, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %20, i32 0, i32 7, !dbg !1004
  store %struct._object* %19, %struct._object** %func_name, align 8, !dbg !1005, !tbaa !1006
  %21 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1007, !tbaa !938
  %func_name10 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %21, i32 0, i32 7, !dbg !1008
  %22 = load %struct._object*, %struct._object** %func_name10, align 8, !dbg !1008, !tbaa !1006
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1009
  %23 = load i64, i64* %ob_refcnt11, align 8, !dbg !1010, !tbaa !983
  %inc12 = add i64 %23, 1, !dbg !1010
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !1010, !tbaa !983
  %24 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1011, !tbaa !938
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %24, i32 0, i32 3, !dbg !1012
  store %struct._object* null, %struct._object** %func_defaults, align 8, !dbg !1013, !tbaa !1014
  %25 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1015, !tbaa !938
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %25, i32 0, i32 4, !dbg !1016
  store %struct._object* null, %struct._object** %func_kwdefaults, align 8, !dbg !1017, !tbaa !1018
  %26 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1019, !tbaa !938
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %26, i32 0, i32 5, !dbg !1020
  store %struct._object* null, %struct._object** %func_closure, align 8, !dbg !1021, !tbaa !1022
  %27 = load %struct._object*, %struct._object** %code.addr, align 8, !dbg !1023, !tbaa !938
  %28 = bitcast %struct._object* %27 to %struct.PyCodeObject*, !dbg !1024
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %28, i32 0, i32 7, !dbg !1025
  %29 = load %struct._object*, %struct._object** %co_consts, align 8, !dbg !1025, !tbaa !1026
  store %struct._object* %29, %struct._object** %consts, align 8, !dbg !1027, !tbaa !938
  %30 = load %struct._object*, %struct._object** %consts, align 8, !dbg !1028, !tbaa !938
  %call13 = call i64 @PyTuple_Size(%struct._object* %30), !dbg !1030
  %cmp14 = icmp sge i64 %call13, 1, !dbg !1031
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !1032

if.then.15:                                       ; preds = %if.end.7
  %31 = load %struct._object*, %struct._object** %consts, align 8, !dbg !1033, !tbaa !938
  %call16 = call %struct._object* @PyTuple_GetItem(%struct._object* %31, i64 0), !dbg !1035
  store %struct._object* %call16, %struct._object** %doc, align 8, !dbg !1036, !tbaa !938
  %32 = load %struct._object*, %struct._object** %doc, align 8, !dbg !1037, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1039
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1039, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19, !dbg !1041
  %34 = load i64, i64* %tp_flags, align 8, !dbg !1041, !tbaa !1042
  %and = and i64 %34, 268435456, !dbg !1045
  %cmp17 = icmp ne i64 %and, 0, !dbg !1046
  br i1 %cmp17, label %if.end.19, label %if.then.18, !dbg !1047

if.then.18:                                       ; preds = %if.then.15
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8, !dbg !1048, !tbaa !938
  br label %if.end.19, !dbg !1049

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  br label %if.end.20, !dbg !1050

if.else:                                          ; preds = %if.end.7
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8, !dbg !1051, !tbaa !938
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %35 = load %struct._object*, %struct._object** %doc, align 8, !dbg !1052, !tbaa !938
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1053
  %36 = load i64, i64* %ob_refcnt21, align 8, !dbg !1054, !tbaa !983
  %inc22 = add i64 %36, 1, !dbg !1054
  store i64 %inc22, i64* %ob_refcnt21, align 8, !dbg !1054, !tbaa !983
  %37 = load %struct._object*, %struct._object** %doc, align 8, !dbg !1055, !tbaa !938
  %38 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1056, !tbaa !938
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %38, i32 0, i32 6, !dbg !1057
  store %struct._object* %37, %struct._object** %func_doc, align 8, !dbg !1058, !tbaa !1059
  %39 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1060, !tbaa !938
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %39, i32 0, i32 8, !dbg !1061
  store %struct._object* null, %struct._object** %func_dict, align 8, !dbg !1062, !tbaa !1063
  %40 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1064, !tbaa !938
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %40, i32 0, i32 10, !dbg !1065
  store %struct._object* null, %struct._object** %func_module, align 8, !dbg !1066, !tbaa !1067
  %41 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1068, !tbaa !938
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %41, i32 0, i32 11, !dbg !1069
  store %struct._object* null, %struct._object** %func_annotations, align 8, !dbg !1070, !tbaa !1071
  %42 = load %struct._object*, %struct._object** %globals.addr, align 8, !dbg !1072, !tbaa !938
  %43 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !1073, !tbaa !938
  %call23 = call %struct._object* @PyDict_GetItem(%struct._object* %42, %struct._object* %43), !dbg !1074
  store %struct._object* %call23, %struct._object** %module, align 8, !dbg !1075, !tbaa !938
  %44 = load %struct._object*, %struct._object** %module, align 8, !dbg !1076, !tbaa !938
  %tobool = icmp ne %struct._object* %44, null, !dbg !1076
  br i1 %tobool, label %if.then.24, label %if.end.28, !dbg !1078

if.then.24:                                       ; preds = %if.end.20
  %45 = load %struct._object*, %struct._object** %module, align 8, !dbg !1079, !tbaa !938
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !1081
  %46 = load i64, i64* %ob_refcnt25, align 8, !dbg !1082, !tbaa !983
  %inc26 = add i64 %46, 1, !dbg !1082
  store i64 %inc26, i64* %ob_refcnt25, align 8, !dbg !1082, !tbaa !983
  %47 = load %struct._object*, %struct._object** %module, align 8, !dbg !1083, !tbaa !938
  %48 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1084, !tbaa !938
  %func_module27 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %48, i32 0, i32 10, !dbg !1085
  store %struct._object* %47, %struct._object** %func_module27, align 8, !dbg !1086, !tbaa !1067
  br label %if.end.28, !dbg !1087

if.end.28:                                        ; preds = %if.then.24, %if.end.20
  %49 = load %struct._object*, %struct._object** %qualname.addr, align 8, !dbg !1088, !tbaa !938
  %tobool29 = icmp ne %struct._object* %49, null, !dbg !1088
  br i1 %tobool29, label %if.then.30, label %if.else.31, !dbg !1090

if.then.30:                                       ; preds = %if.end.28
  %50 = load %struct._object*, %struct._object** %qualname.addr, align 8, !dbg !1091, !tbaa !938
  %51 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1092, !tbaa !938
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %51, i32 0, i32 12, !dbg !1093
  store %struct._object* %50, %struct._object** %func_qualname, align 8, !dbg !1094, !tbaa !1095
  br label %if.end.34, !dbg !1092

if.else.31:                                       ; preds = %if.end.28
  %52 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1096, !tbaa !938
  %func_name32 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %52, i32 0, i32 7, !dbg !1097
  %53 = load %struct._object*, %struct._object** %func_name32, align 8, !dbg !1097, !tbaa !1006
  %54 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1098, !tbaa !938
  %func_qualname33 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %54, i32 0, i32 12, !dbg !1099
  store %struct._object* %53, %struct._object** %func_qualname33, align 8, !dbg !1100, !tbaa !1095
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %55 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1101, !tbaa !938
  %func_qualname35 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %55, i32 0, i32 12, !dbg !1102
  %56 = load %struct._object*, %struct._object** %func_qualname35, align 8, !dbg !1102, !tbaa !1095
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1103
  %57 = load i64, i64* %ob_refcnt36, align 8, !dbg !1104, !tbaa !983
  %inc37 = add i64 %57, 1, !dbg !1104
  store i64 %inc37, i64* %ob_refcnt36, align 8, !dbg !1104, !tbaa !983
  br label %do.body, !dbg !1105

do.body:                                          ; preds = %if.end.34
  %58 = bitcast %union._gc_head** %g to i8*, !dbg !1106
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !1106
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !442, metadata !942), !dbg !1108
  %59 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1109, !tbaa !938
  %60 = bitcast %struct.PyFunctionObject* %59 to %union._gc_head*, !dbg !1110
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %60, i64 -1, !dbg !1111
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1108, !tbaa !938
  %61 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1112, !tbaa !938
  %gc = bitcast %union._gc_head* %61 to %struct.anon*, !dbg !1114
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1115
  %62 = load i64, i64* %gc_refs, align 8, !dbg !1115, !tbaa !1116
  %shr = ashr i64 %62, 1, !dbg !1118
  %cmp38 = icmp ne i64 %shr, -2, !dbg !1119
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !1120

if.then.39:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !1121
  unreachable, !dbg !1121

if.end.40:                                        ; preds = %do.body
  br label %do.body.41, !dbg !1123

do.body.41:                                       ; preds = %if.end.40
  %63 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1125, !tbaa !938
  %gc42 = bitcast %union._gc_head* %63 to %struct.anon*, !dbg !1128
  %gc_refs43 = getelementptr inbounds %struct.anon, %struct.anon* %gc42, i32 0, i32 2, !dbg !1129
  %64 = load i64, i64* %gc_refs43, align 8, !dbg !1129, !tbaa !1116
  %and44 = and i64 %64, 1, !dbg !1130
  %or = or i64 %and44, -6, !dbg !1131
  %65 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1132, !tbaa !938
  %gc45 = bitcast %union._gc_head* %65 to %struct.anon*, !dbg !1133
  %gc_refs46 = getelementptr inbounds %struct.anon, %struct.anon* %gc45, i32 0, i32 2, !dbg !1134
  store i64 %or, i64* %gc_refs46, align 8, !dbg !1135, !tbaa !1116
  br label %do.cond, !dbg !1136

do.cond:                                          ; preds = %do.body.41
  br label %do.end, !dbg !1137

do.end:                                           ; preds = %do.cond
  %66 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1139, !tbaa !938
  %67 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1141, !tbaa !938
  %gc47 = bitcast %union._gc_head* %67 to %struct.anon*, !dbg !1142
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc47, i32 0, i32 0, !dbg !1143
  store %union._gc_head* %66, %union._gc_head** %gc_next, align 8, !dbg !1144, !tbaa !1145
  %68 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1146, !tbaa !938
  %gc48 = bitcast %union._gc_head* %68 to %struct.anon*, !dbg !1147
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc48, i32 0, i32 1, !dbg !1148
  %69 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1148, !tbaa !1149
  %70 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1150, !tbaa !938
  %gc49 = bitcast %union._gc_head* %70 to %struct.anon*, !dbg !1151
  %gc_prev50 = getelementptr inbounds %struct.anon, %struct.anon* %gc49, i32 0, i32 1, !dbg !1152
  store %union._gc_head* %69, %union._gc_head** %gc_prev50, align 8, !dbg !1153, !tbaa !1149
  %71 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1154, !tbaa !938
  %72 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1155, !tbaa !938
  %gc51 = bitcast %union._gc_head* %72 to %struct.anon*, !dbg !1156
  %gc_prev52 = getelementptr inbounds %struct.anon, %struct.anon* %gc51, i32 0, i32 1, !dbg !1157
  %73 = load %union._gc_head*, %union._gc_head** %gc_prev52, align 8, !dbg !1157, !tbaa !1149
  %gc53 = bitcast %union._gc_head* %73 to %struct.anon*, !dbg !1158
  %gc_next54 = getelementptr inbounds %struct.anon, %struct.anon* %gc53, i32 0, i32 0, !dbg !1159
  store %union._gc_head* %71, %union._gc_head** %gc_next54, align 8, !dbg !1160, !tbaa !1145
  %74 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1161, !tbaa !938
  %75 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !1162, !tbaa !938
  %gc55 = bitcast %union._gc_head* %75 to %struct.anon*, !dbg !1163
  %gc_prev56 = getelementptr inbounds %struct.anon, %struct.anon* %gc55, i32 0, i32 1, !dbg !1164
  store %union._gc_head* %74, %union._gc_head** %gc_prev56, align 8, !dbg !1165, !tbaa !1149
  %76 = bitcast %union._gc_head** %g to i8*, !dbg !1166
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !1166
  br label %do.cond.57, !dbg !1167

do.cond.57:                                       ; preds = %do.end
  br label %do.end.58, !dbg !1168

do.end.58:                                        ; preds = %do.cond.57
  %77 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8, !dbg !1170, !tbaa !938
  %78 = bitcast %struct.PyFunctionObject* %77 to %struct._object*, !dbg !1171
  store %struct._object* %78, %struct._object** %retval, !dbg !1172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1172

cleanup:                                          ; preds = %do.end.58, %if.then.6, %if.then.2
  %79 = bitcast %struct._object** %module to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1173
  %80 = bitcast %struct._object** %consts to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !1173
  %81 = bitcast %struct._object** %doc to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !1173
  %82 = bitcast %struct.PyFunctionObject** %op to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !1173
  %83 = load %struct._object*, %struct._object** %retval, !dbg !1173
  ret %struct._object* %83, !dbg !1173
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare i64 @PyTuple_Size(%struct._object*) #3

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_New(%struct._object* %code, %struct._object* %globals) #0 {
entry:
  %code.addr = alloca %struct._object*, align 8
  %globals.addr = alloca %struct._object*, align 8
  store %struct._object* %code, %struct._object** %code.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %code.addr, metadata !446, metadata !942), !dbg !1174
  store %struct._object* %globals, %struct._object** %globals.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %globals.addr, metadata !447, metadata !942), !dbg !1175
  %0 = load %struct._object*, %struct._object** %code.addr, align 8, !dbg !1176, !tbaa !938
  %1 = load %struct._object*, %struct._object** %globals.addr, align 8, !dbg !1177, !tbaa !938
  %call = call %struct._object* @PyFunction_NewWithQualName(%struct._object* %0, %struct._object* %1, %struct._object* null), !dbg !1178
  ret %struct._object* %call, !dbg !1179
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetCode(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !450, metadata !942), !dbg !1180
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1181, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1183
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1183, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1184
  br i1 %cmp, label %if.end, label %if.then, !dbg !1185

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 78), !dbg !1186
  store %struct._object* null, %struct._object** %retval, !dbg !1188
  br label %return, !dbg !1188

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1189, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1190
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 1, !dbg !1191
  %4 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !1191, !tbaa !988
  store %struct._object* %4, %struct._object** %retval, !dbg !1192
  br label %return, !dbg !1192

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1193
  ret %struct._object* %5, !dbg !1193
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetGlobals(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !453, metadata !942), !dbg !1194
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1195, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1197
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1197, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1198
  br i1 %cmp, label %if.end, label %if.then, !dbg !1199

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 88), !dbg !1200
  store %struct._object* null, %struct._object** %retval, !dbg !1202
  br label %return, !dbg !1202

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1203, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1204
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 2, !dbg !1205
  %4 = load %struct._object*, %struct._object** %func_globals, align 8, !dbg !1205, !tbaa !996
  store %struct._object* %4, %struct._object** %retval, !dbg !1206
  br label %return, !dbg !1206

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1207
  ret %struct._object* %5, !dbg !1207
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetModule(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !456, metadata !942), !dbg !1208
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1209, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1211
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1211, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1212
  br i1 %cmp, label %if.end, label %if.then, !dbg !1213

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 98), !dbg !1214
  store %struct._object* null, %struct._object** %retval, !dbg !1216
  br label %return, !dbg !1216

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1217, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1218
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 10, !dbg !1219
  %4 = load %struct._object*, %struct._object** %func_module, align 8, !dbg !1219, !tbaa !1067
  store %struct._object* %4, %struct._object** %retval, !dbg !1220
  br label %return, !dbg !1220

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1221
  ret %struct._object* %5, !dbg !1221
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetDefaults(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !459, metadata !942), !dbg !1222
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1223, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1225
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1225, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1226
  br i1 %cmp, label %if.end, label %if.then, !dbg !1227

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 108), !dbg !1228
  store %struct._object* null, %struct._object** %retval, !dbg !1230
  br label %return, !dbg !1230

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1231, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1232
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 3, !dbg !1233
  %4 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !1233, !tbaa !1014
  store %struct._object* %4, %struct._object** %retval, !dbg !1234
  br label %return, !dbg !1234

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1235
  ret %struct._object* %5, !dbg !1235
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetDefaults(%struct._object* %op, %struct._object* %defaults) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %defaults.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !462, metadata !942), !dbg !1236
  store %struct._object* %defaults, %struct._object** %defaults.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %defaults.addr, metadata !463, metadata !942), !dbg !1237
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1238, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1240
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1240, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1241
  br i1 %cmp, label %if.end, label %if.then, !dbg !1242

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 118), !dbg !1243
  store i32 -1, i32* %retval, !dbg !1245
  br label %return, !dbg !1245

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1246, !tbaa !938
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !1248
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1249

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %defaults.addr, align 8, !dbg !1250, !tbaa !938
  br label %if.end.8, !dbg !1251

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1252, !tbaa !938
  %tobool = icmp ne %struct._object* %3, null, !dbg !1252
  br i1 %tobool, label %land.lhs.true, label %if.else.6, !dbg !1254

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1255, !tbaa !938
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1257
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1257, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !1258
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1258, !tbaa !1042
  %and = and i64 %6, 67108864, !dbg !1259
  %cmp4 = icmp ne i64 %and, 0, !dbg !1260
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !1261

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1262, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1264
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1265, !tbaa !983
  %inc = add i64 %8, 1, !dbg !1265
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1265, !tbaa !983
  br label %if.end.7, !dbg !1266

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1267, !tbaa !938
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)), !dbg !1269
  store i32 -1, i32* %retval, !dbg !1270
  br label %return, !dbg !1270

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  br label %do.body, !dbg !1271

do.body:                                          ; preds = %if.end.8
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1272
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1272
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !464, metadata !942), !dbg !1274
  %11 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1275, !tbaa !938
  %12 = bitcast %struct._object* %11 to %struct.PyFunctionObject*, !dbg !1276
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %12, i32 0, i32 3, !dbg !1277
  %13 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !1277, !tbaa !1014
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1274, !tbaa !938
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1278, !tbaa !938
  %cmp9 = icmp ne %struct._object* %14, null, !dbg !1279
  br i1 %cmp9, label %if.then.10, label %if.end.18, !dbg !1280

if.then.10:                                       ; preds = %do.body
  br label %do.body.11, !dbg !1281

do.body.11:                                       ; preds = %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1283
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !466, metadata !942), !dbg !1285
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1286, !tbaa !938
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !1285, !tbaa !938
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1287, !tbaa !938
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1289
  %18 = load i64, i64* %ob_refcnt12, align 8, !dbg !1290, !tbaa !983
  %dec = add i64 %18, -1, !dbg !1290
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1290, !tbaa !983
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1291
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !1292

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17, !dbg !1293

if.else.15:                                       ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1295, !tbaa !938
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1297
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1297, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !1298
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1298, !tbaa !1299
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1300, !tbaa !938
  call void %21(%struct._object* %22), !dbg !1301
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1302
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1302
  br label %do.cond, !dbg !1304

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1305

do.end:                                           ; preds = %do.cond
  br label %if.end.18, !dbg !1307

if.end.18:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1309
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1309
  br label %do.end.20, !dbg !1312

do.end.20:                                        ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1313, !tbaa !938
  %26 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1314, !tbaa !938
  %27 = bitcast %struct._object* %26 to %struct.PyFunctionObject*, !dbg !1315
  %func_defaults21 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %27, i32 0, i32 3, !dbg !1316
  store %struct._object* %25, %struct._object** %func_defaults21, align 8, !dbg !1317, !tbaa !1014
  store i32 0, i32* %retval, !dbg !1318
  br label %return, !dbg !1318

return:                                           ; preds = %do.end.20, %if.else.6, %if.then
  %28 = load i32, i32* %retval, !dbg !1319
  ret i32 %28, !dbg !1319
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetKwDefaults(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !471, metadata !942), !dbg !1320
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1321, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1323
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1323, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1324
  br i1 %cmp, label %if.end, label %if.then, !dbg !1325

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 139), !dbg !1326
  store %struct._object* null, %struct._object** %retval, !dbg !1328
  br label %return, !dbg !1328

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1329, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1330
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 4, !dbg !1331
  %4 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !1331, !tbaa !1018
  store %struct._object* %4, %struct._object** %retval, !dbg !1332
  br label %return, !dbg !1332

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1333
  ret %struct._object* %5, !dbg !1333
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetKwDefaults(%struct._object* %op, %struct._object* %defaults) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %defaults.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !474, metadata !942), !dbg !1334
  store %struct._object* %defaults, %struct._object** %defaults.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %defaults.addr, metadata !475, metadata !942), !dbg !1335
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1336, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1338
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1338, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1339
  br i1 %cmp, label %if.end, label %if.then, !dbg !1340

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 149), !dbg !1341
  store i32 -1, i32* %retval, !dbg !1343
  br label %return, !dbg !1343

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1344, !tbaa !938
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !1346
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1347

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %defaults.addr, align 8, !dbg !1348, !tbaa !938
  br label %if.end.8, !dbg !1349

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1350, !tbaa !938
  %tobool = icmp ne %struct._object* %3, null, !dbg !1350
  br i1 %tobool, label %land.lhs.true, label %if.else.6, !dbg !1352

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1353, !tbaa !938
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1355
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1355, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !1356
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1356, !tbaa !1042
  %and = and i64 %6, 536870912, !dbg !1357
  %cmp4 = icmp ne i64 %and, 0, !dbg !1358
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !1359

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1360, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1362
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1363, !tbaa !983
  %inc = add i64 %8, 1, !dbg !1363
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1363, !tbaa !983
  br label %if.end.7, !dbg !1364

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1365, !tbaa !938
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0)), !dbg !1367
  store i32 -1, i32* %retval, !dbg !1368
  br label %return, !dbg !1368

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  br label %do.body, !dbg !1369

do.body:                                          ; preds = %if.end.8
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1370
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1370
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !476, metadata !942), !dbg !1372
  %11 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1373, !tbaa !938
  %12 = bitcast %struct._object* %11 to %struct.PyFunctionObject*, !dbg !1374
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %12, i32 0, i32 4, !dbg !1375
  %13 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !1375, !tbaa !1018
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1372, !tbaa !938
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1376, !tbaa !938
  %cmp9 = icmp ne %struct._object* %14, null, !dbg !1377
  br i1 %cmp9, label %if.then.10, label %if.end.18, !dbg !1378

if.then.10:                                       ; preds = %do.body
  br label %do.body.11, !dbg !1379

do.body.11:                                       ; preds = %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1381
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1381
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !478, metadata !942), !dbg !1383
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1384, !tbaa !938
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !1383, !tbaa !938
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1385, !tbaa !938
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1387
  %18 = load i64, i64* %ob_refcnt12, align 8, !dbg !1388, !tbaa !983
  %dec = add i64 %18, -1, !dbg !1388
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1388, !tbaa !983
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1389
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !1390

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17, !dbg !1391

if.else.15:                                       ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1393, !tbaa !938
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1395
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1395, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !1396
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1396, !tbaa !1299
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1397, !tbaa !938
  call void %21(%struct._object* %22), !dbg !1398
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1399
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1399
  br label %do.cond, !dbg !1401

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1402

do.end:                                           ; preds = %do.cond
  br label %if.end.18, !dbg !1404

if.end.18:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1406
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1406
  br label %do.end.20, !dbg !1409

do.end.20:                                        ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %defaults.addr, align 8, !dbg !1410, !tbaa !938
  %26 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1411, !tbaa !938
  %27 = bitcast %struct._object* %26 to %struct.PyFunctionObject*, !dbg !1412
  %func_kwdefaults21 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %27, i32 0, i32 4, !dbg !1413
  store %struct._object* %25, %struct._object** %func_kwdefaults21, align 8, !dbg !1414, !tbaa !1018
  store i32 0, i32* %retval, !dbg !1415
  br label %return, !dbg !1415

return:                                           ; preds = %do.end.20, %if.else.6, %if.then
  %28 = load i32, i32* %retval, !dbg !1416
  ret i32 %28, !dbg !1416
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetClosure(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !483, metadata !942), !dbg !1417
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1418, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1420
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1420, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1421
  br i1 %cmp, label %if.end, label %if.then, !dbg !1422

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 171), !dbg !1423
  store %struct._object* null, %struct._object** %retval, !dbg !1425
  br label %return, !dbg !1425

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1426, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1427
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 5, !dbg !1428
  %4 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !1428, !tbaa !1022
  store %struct._object* %4, %struct._object** %retval, !dbg !1429
  br label %return, !dbg !1429

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1430
  ret %struct._object* %5, !dbg !1430
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetClosure(%struct._object* %op, %struct._object* %closure) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %closure.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !486, metadata !942), !dbg !1431
  store %struct._object* %closure, %struct._object** %closure.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %closure.addr, metadata !487, metadata !942), !dbg !1432
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1433, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1435
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1435, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1436
  br i1 %cmp, label %if.end, label %if.then, !dbg !1437

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 181), !dbg !1438
  store i32 -1, i32* %retval, !dbg !1440
  br label %return, !dbg !1440

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %closure.addr, align 8, !dbg !1441, !tbaa !938
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !1443
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1444

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %closure.addr, align 8, !dbg !1445, !tbaa !938
  br label %if.end.9, !dbg !1446

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %closure.addr, align 8, !dbg !1447, !tbaa !938
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1449
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1449, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !1450
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1450, !tbaa !1042
  %and = and i64 %5, 67108864, !dbg !1451
  %cmp4 = icmp ne i64 %and, 0, !dbg !1452
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !1453

if.then.5:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %closure.addr, align 8, !dbg !1454, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1456
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1457, !tbaa !983
  %inc = add i64 %7, 1, !dbg !1457
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1457, !tbaa !983
  br label %if.end.8, !dbg !1458

if.else.6:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1459, !tbaa !938
  %9 = load %struct._object*, %struct._object** %closure.addr, align 8, !dbg !1461, !tbaa !938
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1462
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1462, !tbaa !1040
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1, !dbg !1463
  %11 = load i8*, i8** %tp_name, align 8, !dbg !1463, !tbaa !1464
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* %11), !dbg !1465
  store i32 -1, i32* %retval, !dbg !1466
  br label %return, !dbg !1466

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  br label %do.body, !dbg !1467

do.body:                                          ; preds = %if.end.9
  %12 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1468
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1468
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !488, metadata !942), !dbg !1470
  %13 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1471, !tbaa !938
  %14 = bitcast %struct._object* %13 to %struct.PyFunctionObject*, !dbg !1472
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %14, i32 0, i32 5, !dbg !1473
  %15 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !1473, !tbaa !1022
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1470, !tbaa !938
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1474, !tbaa !938
  %cmp10 = icmp ne %struct._object* %16, null, !dbg !1475
  br i1 %cmp10, label %if.then.11, label %if.end.19, !dbg !1476

if.then.11:                                       ; preds = %do.body
  br label %do.body.12, !dbg !1477

do.body.12:                                       ; preds = %if.then.11
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1479
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !1479
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !490, metadata !942), !dbg !1481
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1482, !tbaa !938
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !1481, !tbaa !938
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1483, !tbaa !938
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !1485
  %20 = load i64, i64* %ob_refcnt13, align 8, !dbg !1486, !tbaa !983
  %dec = add i64 %20, -1, !dbg !1486
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !1486, !tbaa !983
  %cmp14 = icmp ne i64 %dec, 0, !dbg !1487
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !1488

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.18, !dbg !1489

if.else.16:                                       ; preds = %do.body.12
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1491, !tbaa !938
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1493
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1493, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !1494
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1494, !tbaa !1299
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1495, !tbaa !938
  call void %23(%struct._object* %24), !dbg !1496
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1497
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1497
  br label %do.cond, !dbg !1499

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !1500

do.end:                                           ; preds = %do.cond
  br label %if.end.19, !dbg !1502

if.end.19:                                        ; preds = %do.end, %do.body
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1504
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1504
  br label %do.end.21, !dbg !1507

do.end.21:                                        ; preds = %if.end.19
  %27 = load %struct._object*, %struct._object** %closure.addr, align 8, !dbg !1508, !tbaa !938
  %28 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1509, !tbaa !938
  %29 = bitcast %struct._object* %28 to %struct.PyFunctionObject*, !dbg !1510
  %func_closure22 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %29, i32 0, i32 5, !dbg !1511
  store %struct._object* %27, %struct._object** %func_closure22, align 8, !dbg !1512, !tbaa !1022
  store i32 0, i32* %retval, !dbg !1513
  br label %return, !dbg !1513

return:                                           ; preds = %do.end.21, %if.else.6, %if.then
  %30 = load i32, i32* %retval, !dbg !1514
  ret i32 %30, !dbg !1514
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetAnnotations(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !495, metadata !942), !dbg !1515
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1516, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1518
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1518, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1519
  br i1 %cmp, label %if.end, label %if.then, !dbg !1520

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 204), !dbg !1521
  store %struct._object* null, %struct._object** %retval, !dbg !1523
  br label %return, !dbg !1523

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1524, !tbaa !938
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*, !dbg !1525
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 11, !dbg !1526
  %4 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !1526, !tbaa !1071
  store %struct._object* %4, %struct._object** %retval, !dbg !1527
  br label %return, !dbg !1527

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1528
  ret %struct._object* %5, !dbg !1528
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetAnnotations(%struct._object* %op, %struct._object* %annotations) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %annotations.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !498, metadata !942), !dbg !1529
  store %struct._object* %annotations, %struct._object** %annotations.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %annotations.addr, metadata !499, metadata !942), !dbg !1530
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1531, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1533
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1533, !tbaa !1040
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1534
  br i1 %cmp, label %if.end, label %if.then, !dbg !1535

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 214), !dbg !1536
  store i32 -1, i32* %retval, !dbg !1538
  br label %return, !dbg !1538

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %annotations.addr, align 8, !dbg !1539, !tbaa !938
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !1541
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1542

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %annotations.addr, align 8, !dbg !1543, !tbaa !938
  br label %if.end.8, !dbg !1544

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %annotations.addr, align 8, !dbg !1545, !tbaa !938
  %tobool = icmp ne %struct._object* %3, null, !dbg !1545
  br i1 %tobool, label %land.lhs.true, label %if.else.6, !dbg !1547

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %annotations.addr, align 8, !dbg !1548, !tbaa !938
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1550
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1550, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !1551
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1551, !tbaa !1042
  %and = and i64 %6, 536870912, !dbg !1552
  %cmp4 = icmp ne i64 %and, 0, !dbg !1553
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !1554

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %annotations.addr, align 8, !dbg !1555, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1557
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1558, !tbaa !983
  %inc = add i64 %8, 1, !dbg !1558
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1558, !tbaa !983
  br label %if.end.7, !dbg !1559

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1560, !tbaa !938
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)), !dbg !1562
  store i32 -1, i32* %retval, !dbg !1563
  br label %return, !dbg !1563

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  br label %do.body, !dbg !1564

do.body:                                          ; preds = %if.end.8
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1565
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1565
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !500, metadata !942), !dbg !1567
  %11 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1568, !tbaa !938
  %12 = bitcast %struct._object* %11 to %struct.PyFunctionObject*, !dbg !1569
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %12, i32 0, i32 11, !dbg !1570
  %13 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !1570, !tbaa !1071
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1567, !tbaa !938
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1571, !tbaa !938
  %cmp9 = icmp ne %struct._object* %14, null, !dbg !1572
  br i1 %cmp9, label %if.then.10, label %if.end.18, !dbg !1573

if.then.10:                                       ; preds = %do.body
  br label %do.body.11, !dbg !1574

do.body.11:                                       ; preds = %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1576
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1576
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !502, metadata !942), !dbg !1578
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1579, !tbaa !938
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !1578, !tbaa !938
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1580, !tbaa !938
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1582
  %18 = load i64, i64* %ob_refcnt12, align 8, !dbg !1583, !tbaa !983
  %dec = add i64 %18, -1, !dbg !1583
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1583, !tbaa !983
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1584
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !1585

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17, !dbg !1586

if.else.15:                                       ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1588, !tbaa !938
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1590
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1590, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !1591
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1591, !tbaa !1299
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1592, !tbaa !938
  call void %21(%struct._object* %22), !dbg !1593
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1594
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1594
  br label %do.cond, !dbg !1596

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1597

do.end:                                           ; preds = %do.cond
  br label %if.end.18, !dbg !1599

if.end.18:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1601
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1601
  br label %do.end.20, !dbg !1604

do.end.20:                                        ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %annotations.addr, align 8, !dbg !1605, !tbaa !938
  %26 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1606, !tbaa !938
  %27 = bitcast %struct._object* %26 to %struct.PyFunctionObject*, !dbg !1607
  %func_annotations21 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %27, i32 0, i32 11, !dbg !1608
  store %struct._object* %25, %struct._object** %func_annotations21, align 8, !dbg !1609, !tbaa !1071
  store i32 0, i32* %retval, !dbg !1610
  br label %return, !dbg !1610

return:                                           ; preds = %do.end.20, %if.else.6, %if.then
  %28 = load i32, i32* %retval, !dbg !1611
  ret i32 %28, !dbg !1611
}

; Function Attrs: nounwind uwtable
define internal void @func_dealloc(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_xdecref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_xdecref_tmp86 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  %_py_xdecref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_xdecref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_xdecref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp147 = alloca %struct._object*, align 8
  %_py_xdecref_tmp162 = alloca %struct._object*, align 8
  %_py_decref_tmp166 = alloca %struct._object*, align 8
  %_py_xdecref_tmp181 = alloca %struct._object*, align 8
  %_py_decref_tmp185 = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !517, metadata !942), !dbg !1612
  br label %do.body, !dbg !1613

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !1614
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1614
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !518, metadata !942), !dbg !1616
  %1 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1617, !tbaa !938
  %2 = bitcast %struct.PyFunctionObject* %1 to %union._gc_head*, !dbg !1618
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !1619
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !1616, !tbaa !938
  br label %do.body.1, !dbg !1620

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1621, !tbaa !938
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !1624
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !1625
  %4 = load i64, i64* %gc_refs, align 8, !dbg !1625, !tbaa !1116
  %and = and i64 %4, 1, !dbg !1626
  %or = or i64 %and, -4, !dbg !1627
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1628, !tbaa !938
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !1629
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !1630
  store i64 %or, i64* %gc_refs3, align 8, !dbg !1631, !tbaa !1116
  br label %do.cond, !dbg !1632

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !1633

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1635, !tbaa !938
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !1637
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !1638
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !1638, !tbaa !1145
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1639, !tbaa !938
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !1640
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !1641
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1641, !tbaa !1149
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !1642
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !1643
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !1644, !tbaa !1145
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1645, !tbaa !938
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !1646
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !1647
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !1647, !tbaa !1149
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1648, !tbaa !938
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !1649
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !1650
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !1650, !tbaa !1145
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !1651
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !1652
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !1653, !tbaa !1149
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !1654, !tbaa !938
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !1655
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !1656
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !1657, !tbaa !1145
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !1658
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1658
  br label %do.end.17, !dbg !1659

do.end.17:                                        ; preds = %do.end
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1660, !tbaa !938
  %func_weakreflist = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 9, !dbg !1662
  %17 = load %struct._object*, %struct._object** %func_weakreflist, align 8, !dbg !1662, !tbaa !976
  %cmp = icmp ne %struct._object* %17, null, !dbg !1663
  br i1 %cmp, label %if.then, label %if.end, !dbg !1664

if.then:                                          ; preds = %do.end.17
  %18 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1665, !tbaa !938
  %19 = bitcast %struct.PyFunctionObject* %18 to %struct._object*, !dbg !1666
  call void @PyObject_ClearWeakRefs(%struct._object* %19), !dbg !1667
  br label %if.end, !dbg !1667

if.end:                                           ; preds = %if.then, %do.end.17
  br label %do.body.18, !dbg !1668

do.body.18:                                       ; preds = %if.end
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1669
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1669
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !520, metadata !942), !dbg !1671
  %21 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1672, !tbaa !938
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %21, i32 0, i32 1, !dbg !1673
  %22 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !1673, !tbaa !988
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !1671, !tbaa !938
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1674, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1676
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !1677, !tbaa !983
  %dec = add i64 %24, -1, !dbg !1677
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1677, !tbaa !983
  %cmp19 = icmp ne i64 %dec, 0, !dbg !1678
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !1679

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.21, !dbg !1680

if.else:                                          ; preds = %do.body.18
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1682, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1684
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1684, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1685
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1685, !tbaa !1299
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1686, !tbaa !938
  call void %27(%struct._object* %28), !dbg !1687
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1688
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1688
  br label %do.end.23, !dbg !1690

do.end.23:                                        ; preds = %if.end.21
  br label %do.body.24, !dbg !1691

do.body.24:                                       ; preds = %do.end.23
  %30 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !1692
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1692
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !522, metadata !942), !dbg !1694
  %31 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1695, !tbaa !938
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %31, i32 0, i32 2, !dbg !1696
  %32 = load %struct._object*, %struct._object** %func_globals, align 8, !dbg !1696, !tbaa !996
  store %struct._object* %32, %struct._object** %_py_decref_tmp25, align 8, !dbg !1694, !tbaa !938
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1697, !tbaa !938
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1699
  %34 = load i64, i64* %ob_refcnt26, align 8, !dbg !1700, !tbaa !983
  %dec27 = add i64 %34, -1, !dbg !1700
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !1700, !tbaa !983
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !1701
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !1702

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !1703

if.else.30:                                       ; preds = %do.body.24
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1705, !tbaa !938
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !1707
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1707, !tbaa !1040
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !1708
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !1708, !tbaa !1299
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1709, !tbaa !938
  call void %37(%struct._object* %38), !dbg !1710
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %39 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1711
  br label %do.end.35, !dbg !1712

do.end.35:                                        ; preds = %if.end.33
  br label %do.body.36, !dbg !1713

do.body.36:                                       ; preds = %do.end.35
  %40 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !1714
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !524, metadata !942), !dbg !1716
  %41 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1717, !tbaa !938
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %41, i32 0, i32 10, !dbg !1718
  %42 = load %struct._object*, %struct._object** %func_module, align 8, !dbg !1718, !tbaa !1067
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1716, !tbaa !938
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1719, !tbaa !938
  %cmp37 = icmp ne %struct._object* %43, null, !dbg !1720
  br i1 %cmp37, label %if.then.38, label %if.end.51, !dbg !1721

if.then.38:                                       ; preds = %do.body.36
  br label %do.body.39, !dbg !1722

do.body.39:                                       ; preds = %if.then.38
  %44 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !1724
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !1724
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !526, metadata !942), !dbg !1726
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1727, !tbaa !938
  store %struct._object* %45, %struct._object** %_py_decref_tmp40, align 8, !dbg !1726, !tbaa !938
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !1728, !tbaa !938
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !1730
  %47 = load i64, i64* %ob_refcnt41, align 8, !dbg !1731, !tbaa !983
  %dec42 = add i64 %47, -1, !dbg !1731
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !1731, !tbaa !983
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !1732
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !1733

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !1734

if.else.45:                                       ; preds = %do.body.39
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !1736, !tbaa !938
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !1738
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !1738, !tbaa !1040
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !1739
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !1739, !tbaa !1299
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !1740, !tbaa !938
  call void %50(%struct._object* %51), !dbg !1741
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %52 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !1742
  br label %do.cond.49, !dbg !1744

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !1745

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51, !dbg !1747

if.end.51:                                        ; preds = %do.end.50, %do.body.36
  %53 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1749
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !1749
  br label %do.end.53, !dbg !1752

do.end.53:                                        ; preds = %if.end.51
  br label %do.body.54, !dbg !1753

do.body.54:                                       ; preds = %do.end.53
  %54 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1754
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !1754
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !529, metadata !942), !dbg !1756
  %55 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1757, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %55, i32 0, i32 7, !dbg !1758
  %56 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !1758, !tbaa !1006
  store %struct._object* %56, %struct._object** %_py_decref_tmp55, align 8, !dbg !1756, !tbaa !938
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1759, !tbaa !938
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !1761
  %58 = load i64, i64* %ob_refcnt56, align 8, !dbg !1762, !tbaa !983
  %dec57 = add i64 %58, -1, !dbg !1762
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1762, !tbaa !983
  %cmp58 = icmp ne i64 %dec57, 0, !dbg !1763
  br i1 %cmp58, label %if.then.59, label %if.else.60, !dbg !1764

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63, !dbg !1765

if.else.60:                                       ; preds = %do.body.54
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1767, !tbaa !938
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !1769
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1769, !tbaa !1040
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !1770
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1770, !tbaa !1299
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1771, !tbaa !938
  call void %61(%struct._object* %62), !dbg !1772
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  %63 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !1773
  br label %do.end.65, !dbg !1774

do.end.65:                                        ; preds = %if.end.63
  br label %do.body.66, !dbg !1775

do.body.66:                                       ; preds = %do.end.65
  %64 = bitcast %struct._object** %_py_xdecref_tmp67 to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !1776
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp67, metadata !531, metadata !942), !dbg !1778
  %65 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1779, !tbaa !938
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %65, i32 0, i32 3, !dbg !1780
  %66 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !1780, !tbaa !1014
  store %struct._object* %66, %struct._object** %_py_xdecref_tmp67, align 8, !dbg !1778, !tbaa !938
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp67, align 8, !dbg !1781, !tbaa !938
  %cmp68 = icmp ne %struct._object* %67, null, !dbg !1782
  br i1 %cmp68, label %if.then.69, label %if.end.82, !dbg !1783

if.then.69:                                       ; preds = %do.body.66
  br label %do.body.70, !dbg !1784

do.body.70:                                       ; preds = %if.then.69
  %68 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !1786
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp71, metadata !533, metadata !942), !dbg !1788
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp67, align 8, !dbg !1789, !tbaa !938
  store %struct._object* %69, %struct._object** %_py_decref_tmp71, align 8, !dbg !1788, !tbaa !938
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1790, !tbaa !938
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !1792
  %71 = load i64, i64* %ob_refcnt72, align 8, !dbg !1793, !tbaa !983
  %dec73 = add i64 %71, -1, !dbg !1793
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !1793, !tbaa !983
  %cmp74 = icmp ne i64 %dec73, 0, !dbg !1794
  br i1 %cmp74, label %if.then.75, label %if.else.76, !dbg !1795

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79, !dbg !1796

if.else.76:                                       ; preds = %do.body.70
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1798, !tbaa !938
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !1800
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !1800, !tbaa !1040
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !1801
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !1801, !tbaa !1299
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1802, !tbaa !938
  call void %74(%struct._object* %75), !dbg !1803
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  %76 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1804
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !1804
  br label %do.cond.80, !dbg !1806

do.cond.80:                                       ; preds = %if.end.79
  br label %do.end.81, !dbg !1807

do.end.81:                                        ; preds = %do.cond.80
  br label %if.end.82, !dbg !1809

if.end.82:                                        ; preds = %do.end.81, %do.body.66
  %77 = bitcast %struct._object** %_py_xdecref_tmp67 to i8*, !dbg !1811
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !1811
  br label %do.end.84, !dbg !1812

do.end.84:                                        ; preds = %if.end.82
  br label %do.body.85, !dbg !1813

do.body.85:                                       ; preds = %do.end.84
  %78 = bitcast %struct._object** %_py_xdecref_tmp86 to i8*, !dbg !1814
  call void @llvm.lifetime.start(i64 8, i8* %78) #2, !dbg !1814
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp86, metadata !536, metadata !942), !dbg !1816
  %79 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1817, !tbaa !938
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %79, i32 0, i32 4, !dbg !1818
  %80 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !1818, !tbaa !1018
  store %struct._object* %80, %struct._object** %_py_xdecref_tmp86, align 8, !dbg !1816, !tbaa !938
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp86, align 8, !dbg !1819, !tbaa !938
  %cmp87 = icmp ne %struct._object* %81, null, !dbg !1820
  br i1 %cmp87, label %if.then.88, label %if.end.101, !dbg !1821

if.then.88:                                       ; preds = %do.body.85
  br label %do.body.89, !dbg !1822

do.body.89:                                       ; preds = %if.then.88
  %82 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !1824
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !1824
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp90, metadata !538, metadata !942), !dbg !1826
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp86, align 8, !dbg !1827, !tbaa !938
  store %struct._object* %83, %struct._object** %_py_decref_tmp90, align 8, !dbg !1826, !tbaa !938
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1828, !tbaa !938
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0, !dbg !1830
  %85 = load i64, i64* %ob_refcnt91, align 8, !dbg !1831, !tbaa !983
  %dec92 = add i64 %85, -1, !dbg !1831
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !1831, !tbaa !983
  %cmp93 = icmp ne i64 %dec92, 0, !dbg !1832
  br i1 %cmp93, label %if.then.94, label %if.else.95, !dbg !1833

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98, !dbg !1834

if.else.95:                                       ; preds = %do.body.89
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1836, !tbaa !938
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1, !dbg !1838
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !1838, !tbaa !1040
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4, !dbg !1839
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !1839, !tbaa !1299
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1840, !tbaa !938
  call void %88(%struct._object* %89), !dbg !1841
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  %90 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !1842
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !1842
  br label %do.cond.99, !dbg !1844

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100, !dbg !1845

do.end.100:                                       ; preds = %do.cond.99
  br label %if.end.101, !dbg !1847

if.end.101:                                       ; preds = %do.end.100, %do.body.85
  %91 = bitcast %struct._object** %_py_xdecref_tmp86 to i8*, !dbg !1849
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !1849
  br label %do.end.103, !dbg !1850

do.end.103:                                       ; preds = %if.end.101
  br label %do.body.104, !dbg !1851

do.body.104:                                      ; preds = %do.end.103
  %92 = bitcast %struct._object** %_py_xdecref_tmp105 to i8*, !dbg !1852
  call void @llvm.lifetime.start(i64 8, i8* %92) #2, !dbg !1852
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp105, metadata !541, metadata !942), !dbg !1854
  %93 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1855, !tbaa !938
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %93, i32 0, i32 6, !dbg !1856
  %94 = load %struct._object*, %struct._object** %func_doc, align 8, !dbg !1856, !tbaa !1059
  store %struct._object* %94, %struct._object** %_py_xdecref_tmp105, align 8, !dbg !1854, !tbaa !938
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp105, align 8, !dbg !1857, !tbaa !938
  %cmp106 = icmp ne %struct._object* %95, null, !dbg !1858
  br i1 %cmp106, label %if.then.107, label %if.end.120, !dbg !1859

if.then.107:                                      ; preds = %do.body.104
  br label %do.body.108, !dbg !1860

do.body.108:                                      ; preds = %if.then.107
  %96 = bitcast %struct._object** %_py_decref_tmp109 to i8*, !dbg !1862
  call void @llvm.lifetime.start(i64 8, i8* %96) #2, !dbg !1862
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp109, metadata !543, metadata !942), !dbg !1864
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp105, align 8, !dbg !1865, !tbaa !938
  store %struct._object* %97, %struct._object** %_py_decref_tmp109, align 8, !dbg !1864, !tbaa !938
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8, !dbg !1866, !tbaa !938
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0, !dbg !1868
  %99 = load i64, i64* %ob_refcnt110, align 8, !dbg !1869, !tbaa !983
  %dec111 = add i64 %99, -1, !dbg !1869
  store i64 %dec111, i64* %ob_refcnt110, align 8, !dbg !1869, !tbaa !983
  %cmp112 = icmp ne i64 %dec111, 0, !dbg !1870
  br i1 %cmp112, label %if.then.113, label %if.else.114, !dbg !1871

if.then.113:                                      ; preds = %do.body.108
  br label %if.end.117, !dbg !1872

if.else.114:                                      ; preds = %do.body.108
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8, !dbg !1874, !tbaa !938
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1, !dbg !1876
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8, !dbg !1876, !tbaa !1040
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4, !dbg !1877
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8, !dbg !1877, !tbaa !1299
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8, !dbg !1878, !tbaa !938
  call void %102(%struct._object* %103), !dbg !1879
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  %104 = bitcast %struct._object** %_py_decref_tmp109 to i8*, !dbg !1880
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !1880
  br label %do.cond.118, !dbg !1882

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119, !dbg !1883

do.end.119:                                       ; preds = %do.cond.118
  br label %if.end.120, !dbg !1885

if.end.120:                                       ; preds = %do.end.119, %do.body.104
  %105 = bitcast %struct._object** %_py_xdecref_tmp105 to i8*, !dbg !1887
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !1887
  br label %do.end.122, !dbg !1888

do.end.122:                                       ; preds = %if.end.120
  br label %do.body.123, !dbg !1889

do.body.123:                                      ; preds = %do.end.122
  %106 = bitcast %struct._object** %_py_xdecref_tmp124 to i8*, !dbg !1890
  call void @llvm.lifetime.start(i64 8, i8* %106) #2, !dbg !1890
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp124, metadata !546, metadata !942), !dbg !1892
  %107 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1893, !tbaa !938
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %107, i32 0, i32 8, !dbg !1894
  %108 = load %struct._object*, %struct._object** %func_dict, align 8, !dbg !1894, !tbaa !1063
  store %struct._object* %108, %struct._object** %_py_xdecref_tmp124, align 8, !dbg !1892, !tbaa !938
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp124, align 8, !dbg !1895, !tbaa !938
  %cmp125 = icmp ne %struct._object* %109, null, !dbg !1896
  br i1 %cmp125, label %if.then.126, label %if.end.139, !dbg !1897

if.then.126:                                      ; preds = %do.body.123
  br label %do.body.127, !dbg !1898

do.body.127:                                      ; preds = %if.then.126
  %110 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !1900
  call void @llvm.lifetime.start(i64 8, i8* %110) #2, !dbg !1900
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp128, metadata !548, metadata !942), !dbg !1902
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp124, align 8, !dbg !1903, !tbaa !938
  store %struct._object* %111, %struct._object** %_py_decref_tmp128, align 8, !dbg !1902, !tbaa !938
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !1904, !tbaa !938
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0, !dbg !1906
  %113 = load i64, i64* %ob_refcnt129, align 8, !dbg !1907, !tbaa !983
  %dec130 = add i64 %113, -1, !dbg !1907
  store i64 %dec130, i64* %ob_refcnt129, align 8, !dbg !1907, !tbaa !983
  %cmp131 = icmp ne i64 %dec130, 0, !dbg !1908
  br i1 %cmp131, label %if.then.132, label %if.else.133, !dbg !1909

if.then.132:                                      ; preds = %do.body.127
  br label %if.end.136, !dbg !1910

if.else.133:                                      ; preds = %do.body.127
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !1912, !tbaa !938
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1, !dbg !1914
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8, !dbg !1914, !tbaa !1040
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4, !dbg !1915
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8, !dbg !1915, !tbaa !1299
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !1916, !tbaa !938
  call void %116(%struct._object* %117), !dbg !1917
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  %118 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !1918
  call void @llvm.lifetime.end(i64 8, i8* %118) #2, !dbg !1918
  br label %do.cond.137, !dbg !1920

do.cond.137:                                      ; preds = %if.end.136
  br label %do.end.138, !dbg !1921

do.end.138:                                       ; preds = %do.cond.137
  br label %if.end.139, !dbg !1923

if.end.139:                                       ; preds = %do.end.138, %do.body.123
  %119 = bitcast %struct._object** %_py_xdecref_tmp124 to i8*, !dbg !1925
  call void @llvm.lifetime.end(i64 8, i8* %119) #2, !dbg !1925
  br label %do.end.141, !dbg !1926

do.end.141:                                       ; preds = %if.end.139
  br label %do.body.142, !dbg !1927

do.body.142:                                      ; preds = %do.end.141
  %120 = bitcast %struct._object** %_py_xdecref_tmp143 to i8*, !dbg !1928
  call void @llvm.lifetime.start(i64 8, i8* %120) #2, !dbg !1928
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp143, metadata !551, metadata !942), !dbg !1930
  %121 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1931, !tbaa !938
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %121, i32 0, i32 5, !dbg !1932
  %122 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !1932, !tbaa !1022
  store %struct._object* %122, %struct._object** %_py_xdecref_tmp143, align 8, !dbg !1930, !tbaa !938
  %123 = load %struct._object*, %struct._object** %_py_xdecref_tmp143, align 8, !dbg !1933, !tbaa !938
  %cmp144 = icmp ne %struct._object* %123, null, !dbg !1934
  br i1 %cmp144, label %if.then.145, label %if.end.158, !dbg !1935

if.then.145:                                      ; preds = %do.body.142
  br label %do.body.146, !dbg !1936

do.body.146:                                      ; preds = %if.then.145
  %124 = bitcast %struct._object** %_py_decref_tmp147 to i8*, !dbg !1938
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !1938
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp147, metadata !553, metadata !942), !dbg !1940
  %125 = load %struct._object*, %struct._object** %_py_xdecref_tmp143, align 8, !dbg !1941, !tbaa !938
  store %struct._object* %125, %struct._object** %_py_decref_tmp147, align 8, !dbg !1940, !tbaa !938
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8, !dbg !1942, !tbaa !938
  %ob_refcnt148 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0, !dbg !1944
  %127 = load i64, i64* %ob_refcnt148, align 8, !dbg !1945, !tbaa !983
  %dec149 = add i64 %127, -1, !dbg !1945
  store i64 %dec149, i64* %ob_refcnt148, align 8, !dbg !1945, !tbaa !983
  %cmp150 = icmp ne i64 %dec149, 0, !dbg !1946
  br i1 %cmp150, label %if.then.151, label %if.else.152, !dbg !1947

if.then.151:                                      ; preds = %do.body.146
  br label %if.end.155, !dbg !1948

if.else.152:                                      ; preds = %do.body.146
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8, !dbg !1950, !tbaa !938
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1, !dbg !1952
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8, !dbg !1952, !tbaa !1040
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4, !dbg !1953
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8, !dbg !1953, !tbaa !1299
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp147, align 8, !dbg !1954, !tbaa !938
  call void %130(%struct._object* %131), !dbg !1955
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.152, %if.then.151
  %132 = bitcast %struct._object** %_py_decref_tmp147 to i8*, !dbg !1956
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !1956
  br label %do.cond.156, !dbg !1958

do.cond.156:                                      ; preds = %if.end.155
  br label %do.end.157, !dbg !1959

do.end.157:                                       ; preds = %do.cond.156
  br label %if.end.158, !dbg !1961

if.end.158:                                       ; preds = %do.end.157, %do.body.142
  %133 = bitcast %struct._object** %_py_xdecref_tmp143 to i8*, !dbg !1963
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !1963
  br label %do.end.160, !dbg !1964

do.end.160:                                       ; preds = %if.end.158
  br label %do.body.161, !dbg !1965

do.body.161:                                      ; preds = %do.end.160
  %134 = bitcast %struct._object** %_py_xdecref_tmp162 to i8*, !dbg !1966
  call void @llvm.lifetime.start(i64 8, i8* %134) #2, !dbg !1966
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp162, metadata !556, metadata !942), !dbg !1968
  %135 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !1969, !tbaa !938
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %135, i32 0, i32 11, !dbg !1970
  %136 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !1970, !tbaa !1071
  store %struct._object* %136, %struct._object** %_py_xdecref_tmp162, align 8, !dbg !1968, !tbaa !938
  %137 = load %struct._object*, %struct._object** %_py_xdecref_tmp162, align 8, !dbg !1971, !tbaa !938
  %cmp163 = icmp ne %struct._object* %137, null, !dbg !1972
  br i1 %cmp163, label %if.then.164, label %if.end.177, !dbg !1973

if.then.164:                                      ; preds = %do.body.161
  br label %do.body.165, !dbg !1974

do.body.165:                                      ; preds = %if.then.164
  %138 = bitcast %struct._object** %_py_decref_tmp166 to i8*, !dbg !1976
  call void @llvm.lifetime.start(i64 8, i8* %138) #2, !dbg !1976
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp166, metadata !558, metadata !942), !dbg !1978
  %139 = load %struct._object*, %struct._object** %_py_xdecref_tmp162, align 8, !dbg !1979, !tbaa !938
  store %struct._object* %139, %struct._object** %_py_decref_tmp166, align 8, !dbg !1978, !tbaa !938
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8, !dbg !1980, !tbaa !938
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0, !dbg !1982
  %141 = load i64, i64* %ob_refcnt167, align 8, !dbg !1983, !tbaa !983
  %dec168 = add i64 %141, -1, !dbg !1983
  store i64 %dec168, i64* %ob_refcnt167, align 8, !dbg !1983, !tbaa !983
  %cmp169 = icmp ne i64 %dec168, 0, !dbg !1984
  br i1 %cmp169, label %if.then.170, label %if.else.171, !dbg !1985

if.then.170:                                      ; preds = %do.body.165
  br label %if.end.174, !dbg !1986

if.else.171:                                      ; preds = %do.body.165
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8, !dbg !1988, !tbaa !938
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1, !dbg !1990
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8, !dbg !1990, !tbaa !1040
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4, !dbg !1991
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8, !dbg !1991, !tbaa !1299
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8, !dbg !1992, !tbaa !938
  call void %144(%struct._object* %145), !dbg !1993
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  %146 = bitcast %struct._object** %_py_decref_tmp166 to i8*, !dbg !1994
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !1994
  br label %do.cond.175, !dbg !1996

do.cond.175:                                      ; preds = %if.end.174
  br label %do.end.176, !dbg !1997

do.end.176:                                       ; preds = %do.cond.175
  br label %if.end.177, !dbg !1999

if.end.177:                                       ; preds = %do.end.176, %do.body.161
  %147 = bitcast %struct._object** %_py_xdecref_tmp162 to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !2001
  br label %do.end.179, !dbg !2002

do.end.179:                                       ; preds = %if.end.177
  br label %do.body.180, !dbg !2003

do.body.180:                                      ; preds = %do.end.179
  %148 = bitcast %struct._object** %_py_xdecref_tmp181 to i8*, !dbg !2004
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !2004
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp181, metadata !561, metadata !942), !dbg !2006
  %149 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !2007, !tbaa !938
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %149, i32 0, i32 12, !dbg !2008
  %150 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !2008, !tbaa !1095
  store %struct._object* %150, %struct._object** %_py_xdecref_tmp181, align 8, !dbg !2006, !tbaa !938
  %151 = load %struct._object*, %struct._object** %_py_xdecref_tmp181, align 8, !dbg !2009, !tbaa !938
  %cmp182 = icmp ne %struct._object* %151, null, !dbg !2010
  br i1 %cmp182, label %if.then.183, label %if.end.196, !dbg !2011

if.then.183:                                      ; preds = %do.body.180
  br label %do.body.184, !dbg !2012

do.body.184:                                      ; preds = %if.then.183
  %152 = bitcast %struct._object** %_py_decref_tmp185 to i8*, !dbg !2014
  call void @llvm.lifetime.start(i64 8, i8* %152) #2, !dbg !2014
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp185, metadata !563, metadata !942), !dbg !2016
  %153 = load %struct._object*, %struct._object** %_py_xdecref_tmp181, align 8, !dbg !2017, !tbaa !938
  store %struct._object* %153, %struct._object** %_py_decref_tmp185, align 8, !dbg !2016, !tbaa !938
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8, !dbg !2018, !tbaa !938
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0, !dbg !2020
  %155 = load i64, i64* %ob_refcnt186, align 8, !dbg !2021, !tbaa !983
  %dec187 = add i64 %155, -1, !dbg !2021
  store i64 %dec187, i64* %ob_refcnt186, align 8, !dbg !2021, !tbaa !983
  %cmp188 = icmp ne i64 %dec187, 0, !dbg !2022
  br i1 %cmp188, label %if.then.189, label %if.else.190, !dbg !2023

if.then.189:                                      ; preds = %do.body.184
  br label %if.end.193, !dbg !2024

if.else.190:                                      ; preds = %do.body.184
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8, !dbg !2026, !tbaa !938
  %ob_type191 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1, !dbg !2028
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type191, align 8, !dbg !2028, !tbaa !1040
  %tp_dealloc192 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4, !dbg !2029
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc192, align 8, !dbg !2029, !tbaa !1299
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8, !dbg !2030, !tbaa !938
  call void %158(%struct._object* %159), !dbg !2031
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.189
  %160 = bitcast %struct._object** %_py_decref_tmp185 to i8*, !dbg !2032
  call void @llvm.lifetime.end(i64 8, i8* %160) #2, !dbg !2032
  br label %do.cond.194, !dbg !2034

do.cond.194:                                      ; preds = %if.end.193
  br label %do.end.195, !dbg !2035

do.end.195:                                       ; preds = %do.cond.194
  br label %if.end.196, !dbg !2037

if.end.196:                                       ; preds = %do.end.195, %do.body.180
  %161 = bitcast %struct._object** %_py_xdecref_tmp181 to i8*, !dbg !2039
  call void @llvm.lifetime.end(i64 8, i8* %161) #2, !dbg !2039
  br label %do.end.198, !dbg !2040

do.end.198:                                       ; preds = %if.end.196
  %162 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !2041, !tbaa !938
  %163 = bitcast %struct.PyFunctionObject* %162 to i8*, !dbg !2041
  call void @PyObject_GC_Del(i8* %163), !dbg !2042
  ret void, !dbg !2043
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_repr(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !570, metadata !942), !dbg !2044
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !2045, !tbaa !938
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 12, !dbg !2046
  %1 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !2046, !tbaa !1095
  %2 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !2047, !tbaa !938
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), %struct._object* %1, %struct.PyFunctionObject* %2), !dbg !2048
  ret %struct._object* %call, !dbg !2049
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @function_call(%struct._object* %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %argdefs = alloca %struct._object*, align 8
  %kwtuple = alloca %struct._object*, align 8
  %d = alloca %struct._object**, align 8
  %k = alloca %struct._object**, align 8
  %nk = alloca i64, align 8
  %nd = alloca i64, align 8
  %pos = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !573, metadata !942), !dbg !2050
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !574, metadata !942), !dbg !2051
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !575, metadata !942), !dbg !2052
  %0 = bitcast %struct._object** %result to i8*, !dbg !2053
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2053
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !576, metadata !942), !dbg !2054
  %1 = bitcast %struct._object** %argdefs to i8*, !dbg !2055
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2055
  call void @llvm.dbg.declare(metadata %struct._object** %argdefs, metadata !577, metadata !942), !dbg !2056
  %2 = bitcast %struct._object** %kwtuple to i8*, !dbg !2057
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2057
  call void @llvm.dbg.declare(metadata %struct._object** %kwtuple, metadata !578, metadata !942), !dbg !2058
  store %struct._object* null, %struct._object** %kwtuple, align 8, !dbg !2058, !tbaa !938
  %3 = bitcast %struct._object*** %d to i8*, !dbg !2059
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2059
  call void @llvm.dbg.declare(metadata %struct._object*** %d, metadata !579, metadata !942), !dbg !2060
  %4 = bitcast %struct._object*** %k to i8*, !dbg !2059
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2059
  call void @llvm.dbg.declare(metadata %struct._object*** %k, metadata !581, metadata !942), !dbg !2061
  %5 = bitcast i64* %nk to i8*, !dbg !2062
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2062
  call void @llvm.dbg.declare(metadata i64* %nk, metadata !582, metadata !942), !dbg !2063
  %6 = bitcast i64* %nd to i8*, !dbg !2062
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2062
  call void @llvm.dbg.declare(metadata i64* %nd, metadata !583, metadata !942), !dbg !2064
  %7 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2065, !tbaa !938
  %8 = bitcast %struct._object* %7 to %struct.PyFunctionObject*, !dbg !2066
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %8, i32 0, i32 3, !dbg !2067
  %9 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !2067, !tbaa !1014
  store %struct._object* %9, %struct._object** %argdefs, align 8, !dbg !2068, !tbaa !938
  %10 = load %struct._object*, %struct._object** %argdefs, align 8, !dbg !2069, !tbaa !938
  %cmp = icmp ne %struct._object* %10, null, !dbg !2071
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2072

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._object*, %struct._object** %argdefs, align 8, !dbg !2073, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2075
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2075, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !2076
  %13 = load i64, i64* %tp_flags, align 8, !dbg !2076, !tbaa !1042
  %and = and i64 %13, 67108864, !dbg !2077
  %cmp1 = icmp ne i64 %and, 0, !dbg !2078
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2079

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** %argdefs, align 8, !dbg !2080, !tbaa !938
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*, !dbg !2082
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1, !dbg !2083
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2084
  store %struct._object** %arrayidx, %struct._object*** %d, align 8, !dbg !2085, !tbaa !938
  %16 = load %struct._object*, %struct._object** %argdefs, align 8, !dbg !2086, !tbaa !938
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*, !dbg !2087
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1, !dbg !2088
  %18 = load i64, i64* %ob_size, align 8, !dbg !2088, !tbaa !2089
  store i64 %18, i64* %nd, align 8, !dbg !2090, !tbaa !2091
  br label %if.end, !dbg !2092

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct._object** null, %struct._object*** %d, align 8, !dbg !2093, !tbaa !938
  store i64 0, i64* %nd, align 8, !dbg !2095, !tbaa !2091
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2096, !tbaa !938
  %cmp2 = icmp ne %struct._object* %19, null, !dbg !2097
  br i1 %cmp2, label %land.lhs.true.3, label %if.else.25, !dbg !2098

land.lhs.true.3:                                  ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2099, !tbaa !938
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !2101
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !2101, !tbaa !1040
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19, !dbg !2102
  %22 = load i64, i64* %tp_flags5, align 8, !dbg !2102, !tbaa !1042
  %and6 = and i64 %22, 536870912, !dbg !2103
  %cmp7 = icmp ne i64 %and6, 0, !dbg !2104
  br i1 %cmp7, label %if.then.8, label %if.else.25, !dbg !2105

if.then.8:                                        ; preds = %land.lhs.true.3
  %23 = bitcast i64* %pos to i8*, !dbg !2106
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !2106
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !584, metadata !942), !dbg !2107
  %24 = bitcast i64* %i to i8*, !dbg !2106
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !2106
  call void @llvm.dbg.declare(metadata i64* %i, metadata !587, metadata !942), !dbg !2108
  %25 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2109, !tbaa !938
  %call = call i64 @PyDict_Size(%struct._object* %25), !dbg !2110
  store i64 %call, i64* %nk, align 8, !dbg !2111, !tbaa !2091
  %26 = load i64, i64* %nk, align 8, !dbg !2112, !tbaa !2091
  %mul = mul i64 2, %26, !dbg !2113
  %call9 = call %struct._object* @PyTuple_New(i64 %mul), !dbg !2114
  store %struct._object* %call9, %struct._object** %kwtuple, align 8, !dbg !2115, !tbaa !938
  %27 = load %struct._object*, %struct._object** %kwtuple, align 8, !dbg !2116, !tbaa !938
  %cmp10 = icmp eq %struct._object* %27, null, !dbg !2118
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !2119

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval, !dbg !2120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2120

if.end.12:                                        ; preds = %if.then.8
  %28 = load %struct._object*, %struct._object** %kwtuple, align 8, !dbg !2121, !tbaa !938
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !2122
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !2123
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 0, !dbg !2124
  store %struct._object** %arrayidx14, %struct._object*** %k, align 8, !dbg !2125, !tbaa !938
  store i64 0, i64* %i, align 8, !dbg !2126, !tbaa !2091
  store i64 0, i64* %pos, align 8, !dbg !2127, !tbaa !2091
  br label %while.cond, !dbg !2128

while.cond:                                       ; preds = %while.body, %if.end.12
  %30 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2129, !tbaa !938
  %31 = load i64, i64* %i, align 8, !dbg !2132, !tbaa !2091
  %32 = load %struct._object**, %struct._object*** %k, align 8, !dbg !2133, !tbaa !938
  %arrayidx15 = getelementptr %struct._object*, %struct._object** %32, i64 %31, !dbg !2133
  %33 = load i64, i64* %i, align 8, !dbg !2134, !tbaa !2091
  %add = add i64 %33, 1, !dbg !2135
  %34 = load %struct._object**, %struct._object*** %k, align 8, !dbg !2136, !tbaa !938
  %arrayidx16 = getelementptr %struct._object*, %struct._object** %34, i64 %add, !dbg !2136
  %call17 = call i32 @PyDict_Next(%struct._object* %30, i64* %pos, %struct._object** %arrayidx15, %struct._object** %arrayidx16), !dbg !2137
  %tobool = icmp ne i32 %call17, 0, !dbg !2128
  br i1 %tobool, label %while.body, label %while.end, !dbg !2128

while.body:                                       ; preds = %while.cond
  %35 = load i64, i64* %i, align 8, !dbg !2138, !tbaa !2091
  %36 = load %struct._object**, %struct._object*** %k, align 8, !dbg !2140, !tbaa !938
  %arrayidx18 = getelementptr %struct._object*, %struct._object** %36, i64 %35, !dbg !2140
  %37 = load %struct._object*, %struct._object** %arrayidx18, align 8, !dbg !2140, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2141
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !2142, !tbaa !983
  %inc = add i64 %38, 1, !dbg !2142
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2142, !tbaa !983
  %39 = load i64, i64* %i, align 8, !dbg !2143, !tbaa !2091
  %add19 = add i64 %39, 1, !dbg !2144
  %40 = load %struct._object**, %struct._object*** %k, align 8, !dbg !2145, !tbaa !938
  %arrayidx20 = getelementptr %struct._object*, %struct._object** %40, i64 %add19, !dbg !2145
  %41 = load %struct._object*, %struct._object** %arrayidx20, align 8, !dbg !2145, !tbaa !938
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2146
  %42 = load i64, i64* %ob_refcnt21, align 8, !dbg !2147, !tbaa !983
  %inc22 = add i64 %42, 1, !dbg !2147
  store i64 %inc22, i64* %ob_refcnt21, align 8, !dbg !2147, !tbaa !983
  %43 = load i64, i64* %i, align 8, !dbg !2148, !tbaa !2091
  %add23 = add i64 %43, 2, !dbg !2148
  store i64 %add23, i64* %i, align 8, !dbg !2148, !tbaa !2091
  br label %while.cond, !dbg !2128

while.end:                                        ; preds = %while.cond
  %44 = load i64, i64* %i, align 8, !dbg !2149, !tbaa !2091
  %div = sdiv i64 %44, 2, !dbg !2150
  store i64 %div, i64* %nk, align 8, !dbg !2151, !tbaa !2091
  store i32 0, i32* %cleanup.dest.slot, !dbg !2152
  br label %cleanup, !dbg !2152

cleanup:                                          ; preds = %while.end, %if.then.11
  %45 = bitcast i64* %i to i8*, !dbg !2153
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !2153
  %46 = bitcast i64* %pos to i8*, !dbg !2153
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !2153
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26, !dbg !2154

if.else.25:                                       ; preds = %land.lhs.true.3, %if.end
  store %struct._object** null, %struct._object*** %k, align 8, !dbg !2155, !tbaa !938
  store i64 0, i64* %nk, align 8, !dbg !2157, !tbaa !2091
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %cleanup.cont
  %47 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2158, !tbaa !938
  %48 = bitcast %struct._object* %47 to %struct.PyFunctionObject*, !dbg !2159
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %48, i32 0, i32 1, !dbg !2160
  %49 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !2160, !tbaa !988
  %50 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2161, !tbaa !938
  %51 = bitcast %struct._object* %50 to %struct.PyFunctionObject*, !dbg !2162
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %51, i32 0, i32 2, !dbg !2163
  %52 = load %struct._object*, %struct._object** %func_globals, align 8, !dbg !2163, !tbaa !996
  %53 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2164, !tbaa !938
  %54 = bitcast %struct._object* %53 to %struct.PyTupleObject*, !dbg !2165
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %54, i32 0, i32 1, !dbg !2166
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 0, !dbg !2167
  %55 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2168, !tbaa !938
  %56 = bitcast %struct._object* %55 to %struct.PyVarObject*, !dbg !2169
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %56, i32 0, i32 1, !dbg !2170
  %57 = load i64, i64* %ob_size29, align 8, !dbg !2170, !tbaa !2089
  %conv = trunc i64 %57 to i32, !dbg !2171
  %58 = load %struct._object**, %struct._object*** %k, align 8, !dbg !2172, !tbaa !938
  %59 = load i64, i64* %nk, align 8, !dbg !2173, !tbaa !2091
  %conv30 = trunc i64 %59 to i32, !dbg !2173
  %60 = load %struct._object**, %struct._object*** %d, align 8, !dbg !2174, !tbaa !938
  %61 = load i64, i64* %nd, align 8, !dbg !2175, !tbaa !2091
  %conv31 = trunc i64 %61 to i32, !dbg !2175
  %62 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2176, !tbaa !938
  %63 = bitcast %struct._object* %62 to %struct.PyFunctionObject*, !dbg !2177
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %63, i32 0, i32 4, !dbg !2178
  %64 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !2178, !tbaa !1018
  %65 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2179, !tbaa !938
  %66 = bitcast %struct._object* %65 to %struct.PyFunctionObject*, !dbg !2180
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %66, i32 0, i32 5, !dbg !2181
  %67 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !2181, !tbaa !1022
  %call32 = call %struct._object* @PyEval_EvalCodeEx(%struct._object* %49, %struct._object* %52, %struct._object* null, %struct._object** %arrayidx28, i32 %conv, %struct._object** %58, i32 %conv30, %struct._object** %60, i32 %conv31, %struct._object* %64, %struct._object* %67), !dbg !2182
  store %struct._object* %call32, %struct._object** %result, align 8, !dbg !2183, !tbaa !938
  br label %do.body, !dbg !2184

do.body:                                          ; preds = %if.end.26
  %68 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2185
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !2185
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !588, metadata !942), !dbg !2187
  %69 = load %struct._object*, %struct._object** %kwtuple, align 8, !dbg !2188, !tbaa !938
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2187, !tbaa !938
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2189, !tbaa !938
  %cmp33 = icmp ne %struct._object* %70, null, !dbg !2190
  br i1 %cmp33, label %if.then.35, label %if.end.44, !dbg !2191

if.then.35:                                       ; preds = %do.body
  br label %do.body.36, !dbg !2192

do.body.36:                                       ; preds = %if.then.35
  %71 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2194
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !2194
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !590, metadata !942), !dbg !2196
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2197, !tbaa !938
  store %struct._object* %72, %struct._object** %_py_decref_tmp, align 8, !dbg !2196, !tbaa !938
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2198, !tbaa !938
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !2200
  %74 = load i64, i64* %ob_refcnt37, align 8, !dbg !2201, !tbaa !983
  %dec = add i64 %74, -1, !dbg !2201
  store i64 %dec, i64* %ob_refcnt37, align 8, !dbg !2201, !tbaa !983
  %cmp38 = icmp ne i64 %dec, 0, !dbg !2202
  br i1 %cmp38, label %if.then.40, label %if.else.41, !dbg !2203

if.then.40:                                       ; preds = %do.body.36
  br label %if.end.43, !dbg !2204

if.else.41:                                       ; preds = %do.body.36
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2206, !tbaa !938
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !2208
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !2208, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !2209
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2209, !tbaa !1299
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2210, !tbaa !938
  call void %77(%struct._object* %78), !dbg !2211
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  %79 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2212
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !2212
  br label %do.cond, !dbg !2214

do.cond:                                          ; preds = %if.end.43
  br label %do.end, !dbg !2215

do.end:                                           ; preds = %do.cond
  br label %if.end.44, !dbg !2217

if.end.44:                                        ; preds = %do.end, %do.body
  %80 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2219
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !2219
  br label %do.cond.45, !dbg !2222

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !2223

do.end.46:                                        ; preds = %do.cond.45
  %81 = load %struct._object*, %struct._object** %result, align 8, !dbg !2225, !tbaa !938
  store %struct._object* %81, %struct._object** %retval, !dbg !2226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47, !dbg !2226

cleanup.47:                                       ; preds = %do.end.46, %cleanup
  %82 = bitcast i64* %nd to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !2227
  %83 = bitcast i64* %nk to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %83) #2, !dbg !2227
  %84 = bitcast %struct._object*** %k to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !2227
  %85 = bitcast %struct._object*** %d to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !2227
  %86 = bitcast %struct._object** %kwtuple to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !2227
  %87 = bitcast %struct._object** %argdefs to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !2227
  %88 = bitcast %struct._object** %result to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !2227
  %89 = load %struct._object*, %struct._object** %retval, !dbg !2227
  ret %struct._object* %89, !dbg !2227
}

; Function Attrs: nounwind uwtable
define internal i32 @func_traverse(%struct.PyFunctionObject* %f, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.PyFunctionObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  %vret22 = alloca i32, align 4
  %vret36 = alloca i32, align 4
  %vret50 = alloca i32, align 4
  %vret64 = alloca i32, align 4
  %vret78 = alloca i32, align 4
  %vret92 = alloca i32, align 4
  %vret106 = alloca i32, align 4
  %vret120 = alloca i32, align 4
  %vret134 = alloca i32, align 4
  store %struct.PyFunctionObject* %f, %struct.PyFunctionObject** %f.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %f.addr, metadata !597, metadata !942), !dbg !2228
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !598, metadata !942), !dbg !2229
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !599, metadata !942), !dbg !2230
  br label %do.body, !dbg !2231

do.body:                                          ; preds = %entry
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2232, !tbaa !938
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 1, !dbg !2234
  %1 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !2234, !tbaa !988
  %tobool = icmp ne %struct._object* %1, null, !dbg !2235
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2236

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !2237
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2237
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !600, metadata !942), !dbg !2239
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2240, !tbaa !938
  %4 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2241, !tbaa !938
  %func_code1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %4, i32 0, i32 1, !dbg !2242
  %5 = load %struct._object*, %struct._object** %func_code1, align 8, !dbg !2242, !tbaa !988
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !2243, !tbaa !938
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !2240
  store i32 %call, i32* %vret, align 4, !dbg !2239, !tbaa !2244
  %7 = load i32, i32* %vret, align 4, !dbg !2245, !tbaa !2244
  %tobool2 = icmp ne i32 %7, 0, !dbg !2245
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2247

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !2248, !tbaa !2244
  store i32 %8, i32* %retval, !dbg !2250
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2250

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2251
  br label %cleanup, !dbg !2251

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !2253
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !2253
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !2256

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2257

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !2260

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2261, !tbaa !938
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %10, i32 0, i32 2, !dbg !2263
  %11 = load %struct._object*, %struct._object** %func_globals, align 8, !dbg !2263, !tbaa !996
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !2264
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !2265

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !2266
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !2266
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !604, metadata !942), !dbg !2268
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2269, !tbaa !938
  %14 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2270, !tbaa !938
  %func_globals9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %14, i32 0, i32 2, !dbg !2271
  %15 = load %struct._object*, %struct._object** %func_globals9, align 8, !dbg !2271, !tbaa !996
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !2272, !tbaa !938
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !2269
  store i32 %call10, i32* %vret8, align 4, !dbg !2268, !tbaa !2244
  %17 = load i32, i32* %vret8, align 4, !dbg !2273, !tbaa !2244
  %tobool11 = icmp ne i32 %17, 0, !dbg !2273
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2275

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !2276, !tbaa !2244
  store i32 %18, i32* %retval, !dbg !2278
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !2278

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !2279
  br label %cleanup.14, !dbg !2279

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !2281
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !2281
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !2284

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !2285

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19, !dbg !2288

do.body.19:                                       ; preds = %do.end.18
  %20 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2289, !tbaa !938
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %20, i32 0, i32 10, !dbg !2291
  %21 = load %struct._object*, %struct._object** %func_module, align 8, !dbg !2291, !tbaa !1067
  %tobool20 = icmp ne %struct._object* %21, null, !dbg !2292
  br i1 %tobool20, label %if.then.21, label %if.end.31, !dbg !2293

if.then.21:                                       ; preds = %do.body.19
  %22 = bitcast i32* %vret22 to i8*, !dbg !2294
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !2294
  call void @llvm.dbg.declare(metadata i32* %vret22, metadata !608, metadata !942), !dbg !2296
  %23 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2297, !tbaa !938
  %24 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2298, !tbaa !938
  %func_module23 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %24, i32 0, i32 10, !dbg !2299
  %25 = load %struct._object*, %struct._object** %func_module23, align 8, !dbg !2299, !tbaa !1067
  %26 = load i8*, i8** %arg.addr, align 8, !dbg !2300, !tbaa !938
  %call24 = call i32 %23(%struct._object* %25, i8* %26), !dbg !2297
  store i32 %call24, i32* %vret22, align 4, !dbg !2296, !tbaa !2244
  %27 = load i32, i32* %vret22, align 4, !dbg !2301, !tbaa !2244
  %tobool25 = icmp ne i32 %27, 0, !dbg !2301
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !2303

if.then.26:                                       ; preds = %if.then.21
  %28 = load i32, i32* %vret22, align 4, !dbg !2304, !tbaa !2244
  store i32 %28, i32* %retval, !dbg !2306
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28, !dbg !2306

if.end.27:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot, !dbg !2307
  br label %cleanup.28, !dbg !2307

cleanup.28:                                       ; preds = %if.end.27, %if.then.26
  %29 = bitcast i32* %vret22 to i8*, !dbg !2309
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !2309
  %cleanup.dest.29 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.29, label %unreachable [
    i32 0, label %cleanup.cont.30
    i32 1, label %return
  ]

cleanup.cont.30:                                  ; preds = %cleanup.28
  br label %if.end.31, !dbg !2312

if.end.31:                                        ; preds = %cleanup.cont.30, %do.body.19
  br label %do.end.32, !dbg !2313

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33, !dbg !2316

do.body.33:                                       ; preds = %do.end.32
  %30 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2317, !tbaa !938
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %30, i32 0, i32 3, !dbg !2319
  %31 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !2319, !tbaa !1014
  %tobool34 = icmp ne %struct._object* %31, null, !dbg !2320
  br i1 %tobool34, label %if.then.35, label %if.end.45, !dbg !2321

if.then.35:                                       ; preds = %do.body.33
  %32 = bitcast i32* %vret36 to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 4, i8* %32) #2, !dbg !2322
  call void @llvm.dbg.declare(metadata i32* %vret36, metadata !612, metadata !942), !dbg !2324
  %33 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2325, !tbaa !938
  %34 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2326, !tbaa !938
  %func_defaults37 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %34, i32 0, i32 3, !dbg !2327
  %35 = load %struct._object*, %struct._object** %func_defaults37, align 8, !dbg !2327, !tbaa !1014
  %36 = load i8*, i8** %arg.addr, align 8, !dbg !2328, !tbaa !938
  %call38 = call i32 %33(%struct._object* %35, i8* %36), !dbg !2325
  store i32 %call38, i32* %vret36, align 4, !dbg !2324, !tbaa !2244
  %37 = load i32, i32* %vret36, align 4, !dbg !2329, !tbaa !2244
  %tobool39 = icmp ne i32 %37, 0, !dbg !2329
  br i1 %tobool39, label %if.then.40, label %if.end.41, !dbg !2331

if.then.40:                                       ; preds = %if.then.35
  %38 = load i32, i32* %vret36, align 4, !dbg !2332, !tbaa !2244
  store i32 %38, i32* %retval, !dbg !2334
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !2334

if.end.41:                                        ; preds = %if.then.35
  store i32 0, i32* %cleanup.dest.slot, !dbg !2335
  br label %cleanup.42, !dbg !2335

cleanup.42:                                       ; preds = %if.end.41, %if.then.40
  %39 = bitcast i32* %vret36 to i8*, !dbg !2337
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !2337
  %cleanup.dest.43 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.43, label %unreachable [
    i32 0, label %cleanup.cont.44
    i32 1, label %return
  ]

cleanup.cont.44:                                  ; preds = %cleanup.42
  br label %if.end.45, !dbg !2340

if.end.45:                                        ; preds = %cleanup.cont.44, %do.body.33
  br label %do.end.46, !dbg !2341

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47, !dbg !2344

do.body.47:                                       ; preds = %do.end.46
  %40 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2345, !tbaa !938
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %40, i32 0, i32 4, !dbg !2347
  %41 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !2347, !tbaa !1018
  %tobool48 = icmp ne %struct._object* %41, null, !dbg !2348
  br i1 %tobool48, label %if.then.49, label %if.end.59, !dbg !2349

if.then.49:                                       ; preds = %do.body.47
  %42 = bitcast i32* %vret50 to i8*, !dbg !2350
  call void @llvm.lifetime.start(i64 4, i8* %42) #2, !dbg !2350
  call void @llvm.dbg.declare(metadata i32* %vret50, metadata !616, metadata !942), !dbg !2352
  %43 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2353, !tbaa !938
  %44 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2354, !tbaa !938
  %func_kwdefaults51 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %44, i32 0, i32 4, !dbg !2355
  %45 = load %struct._object*, %struct._object** %func_kwdefaults51, align 8, !dbg !2355, !tbaa !1018
  %46 = load i8*, i8** %arg.addr, align 8, !dbg !2356, !tbaa !938
  %call52 = call i32 %43(%struct._object* %45, i8* %46), !dbg !2353
  store i32 %call52, i32* %vret50, align 4, !dbg !2352, !tbaa !2244
  %47 = load i32, i32* %vret50, align 4, !dbg !2357, !tbaa !2244
  %tobool53 = icmp ne i32 %47, 0, !dbg !2357
  br i1 %tobool53, label %if.then.54, label %if.end.55, !dbg !2359

if.then.54:                                       ; preds = %if.then.49
  %48 = load i32, i32* %vret50, align 4, !dbg !2360, !tbaa !2244
  store i32 %48, i32* %retval, !dbg !2362
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56, !dbg !2362

if.end.55:                                        ; preds = %if.then.49
  store i32 0, i32* %cleanup.dest.slot, !dbg !2363
  br label %cleanup.56, !dbg !2363

cleanup.56:                                       ; preds = %if.end.55, %if.then.54
  %49 = bitcast i32* %vret50 to i8*, !dbg !2365
  call void @llvm.lifetime.end(i64 4, i8* %49) #2, !dbg !2365
  %cleanup.dest.57 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.57, label %unreachable [
    i32 0, label %cleanup.cont.58
    i32 1, label %return
  ]

cleanup.cont.58:                                  ; preds = %cleanup.56
  br label %if.end.59, !dbg !2368

if.end.59:                                        ; preds = %cleanup.cont.58, %do.body.47
  br label %do.end.60, !dbg !2369

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61, !dbg !2372

do.body.61:                                       ; preds = %do.end.60
  %50 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2373, !tbaa !938
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %50, i32 0, i32 6, !dbg !2375
  %51 = load %struct._object*, %struct._object** %func_doc, align 8, !dbg !2375, !tbaa !1059
  %tobool62 = icmp ne %struct._object* %51, null, !dbg !2376
  br i1 %tobool62, label %if.then.63, label %if.end.73, !dbg !2377

if.then.63:                                       ; preds = %do.body.61
  %52 = bitcast i32* %vret64 to i8*, !dbg !2378
  call void @llvm.lifetime.start(i64 4, i8* %52) #2, !dbg !2378
  call void @llvm.dbg.declare(metadata i32* %vret64, metadata !620, metadata !942), !dbg !2380
  %53 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2381, !tbaa !938
  %54 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2382, !tbaa !938
  %func_doc65 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %54, i32 0, i32 6, !dbg !2383
  %55 = load %struct._object*, %struct._object** %func_doc65, align 8, !dbg !2383, !tbaa !1059
  %56 = load i8*, i8** %arg.addr, align 8, !dbg !2384, !tbaa !938
  %call66 = call i32 %53(%struct._object* %55, i8* %56), !dbg !2381
  store i32 %call66, i32* %vret64, align 4, !dbg !2380, !tbaa !2244
  %57 = load i32, i32* %vret64, align 4, !dbg !2385, !tbaa !2244
  %tobool67 = icmp ne i32 %57, 0, !dbg !2385
  br i1 %tobool67, label %if.then.68, label %if.end.69, !dbg !2387

if.then.68:                                       ; preds = %if.then.63
  %58 = load i32, i32* %vret64, align 4, !dbg !2388, !tbaa !2244
  store i32 %58, i32* %retval, !dbg !2390
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2390

if.end.69:                                        ; preds = %if.then.63
  store i32 0, i32* %cleanup.dest.slot, !dbg !2391
  br label %cleanup.70, !dbg !2391

cleanup.70:                                       ; preds = %if.end.69, %if.then.68
  %59 = bitcast i32* %vret64 to i8*, !dbg !2393
  call void @llvm.lifetime.end(i64 4, i8* %59) #2, !dbg !2393
  %cleanup.dest.71 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.71, label %unreachable [
    i32 0, label %cleanup.cont.72
    i32 1, label %return
  ]

cleanup.cont.72:                                  ; preds = %cleanup.70
  br label %if.end.73, !dbg !2396

if.end.73:                                        ; preds = %cleanup.cont.72, %do.body.61
  br label %do.end.74, !dbg !2397

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75, !dbg !2400

do.body.75:                                       ; preds = %do.end.74
  %60 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2401, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %60, i32 0, i32 7, !dbg !2403
  %61 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !2403, !tbaa !1006
  %tobool76 = icmp ne %struct._object* %61, null, !dbg !2404
  br i1 %tobool76, label %if.then.77, label %if.end.87, !dbg !2405

if.then.77:                                       ; preds = %do.body.75
  %62 = bitcast i32* %vret78 to i8*, !dbg !2406
  call void @llvm.lifetime.start(i64 4, i8* %62) #2, !dbg !2406
  call void @llvm.dbg.declare(metadata i32* %vret78, metadata !624, metadata !942), !dbg !2408
  %63 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2409, !tbaa !938
  %64 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2410, !tbaa !938
  %func_name79 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %64, i32 0, i32 7, !dbg !2411
  %65 = load %struct._object*, %struct._object** %func_name79, align 8, !dbg !2411, !tbaa !1006
  %66 = load i8*, i8** %arg.addr, align 8, !dbg !2412, !tbaa !938
  %call80 = call i32 %63(%struct._object* %65, i8* %66), !dbg !2409
  store i32 %call80, i32* %vret78, align 4, !dbg !2408, !tbaa !2244
  %67 = load i32, i32* %vret78, align 4, !dbg !2413, !tbaa !2244
  %tobool81 = icmp ne i32 %67, 0, !dbg !2413
  br i1 %tobool81, label %if.then.82, label %if.end.83, !dbg !2415

if.then.82:                                       ; preds = %if.then.77
  %68 = load i32, i32* %vret78, align 4, !dbg !2416, !tbaa !2244
  store i32 %68, i32* %retval, !dbg !2418
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !2418

if.end.83:                                        ; preds = %if.then.77
  store i32 0, i32* %cleanup.dest.slot, !dbg !2419
  br label %cleanup.84, !dbg !2419

cleanup.84:                                       ; preds = %if.end.83, %if.then.82
  %69 = bitcast i32* %vret78 to i8*, !dbg !2421
  call void @llvm.lifetime.end(i64 4, i8* %69) #2, !dbg !2421
  %cleanup.dest.85 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.85, label %unreachable [
    i32 0, label %cleanup.cont.86
    i32 1, label %return
  ]

cleanup.cont.86:                                  ; preds = %cleanup.84
  br label %if.end.87, !dbg !2424

if.end.87:                                        ; preds = %cleanup.cont.86, %do.body.75
  br label %do.end.88, !dbg !2425

do.end.88:                                        ; preds = %if.end.87
  br label %do.body.89, !dbg !2428

do.body.89:                                       ; preds = %do.end.88
  %70 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2429, !tbaa !938
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %70, i32 0, i32 8, !dbg !2431
  %71 = load %struct._object*, %struct._object** %func_dict, align 8, !dbg !2431, !tbaa !1063
  %tobool90 = icmp ne %struct._object* %71, null, !dbg !2432
  br i1 %tobool90, label %if.then.91, label %if.end.101, !dbg !2433

if.then.91:                                       ; preds = %do.body.89
  %72 = bitcast i32* %vret92 to i8*, !dbg !2434
  call void @llvm.lifetime.start(i64 4, i8* %72) #2, !dbg !2434
  call void @llvm.dbg.declare(metadata i32* %vret92, metadata !628, metadata !942), !dbg !2436
  %73 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2437, !tbaa !938
  %74 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2438, !tbaa !938
  %func_dict93 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %74, i32 0, i32 8, !dbg !2439
  %75 = load %struct._object*, %struct._object** %func_dict93, align 8, !dbg !2439, !tbaa !1063
  %76 = load i8*, i8** %arg.addr, align 8, !dbg !2440, !tbaa !938
  %call94 = call i32 %73(%struct._object* %75, i8* %76), !dbg !2437
  store i32 %call94, i32* %vret92, align 4, !dbg !2436, !tbaa !2244
  %77 = load i32, i32* %vret92, align 4, !dbg !2441, !tbaa !2244
  %tobool95 = icmp ne i32 %77, 0, !dbg !2441
  br i1 %tobool95, label %if.then.96, label %if.end.97, !dbg !2443

if.then.96:                                       ; preds = %if.then.91
  %78 = load i32, i32* %vret92, align 4, !dbg !2444, !tbaa !2244
  store i32 %78, i32* %retval, !dbg !2446
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98, !dbg !2446

if.end.97:                                        ; preds = %if.then.91
  store i32 0, i32* %cleanup.dest.slot, !dbg !2447
  br label %cleanup.98, !dbg !2447

cleanup.98:                                       ; preds = %if.end.97, %if.then.96
  %79 = bitcast i32* %vret92 to i8*, !dbg !2449
  call void @llvm.lifetime.end(i64 4, i8* %79) #2, !dbg !2449
  %cleanup.dest.99 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.99, label %unreachable [
    i32 0, label %cleanup.cont.100
    i32 1, label %return
  ]

cleanup.cont.100:                                 ; preds = %cleanup.98
  br label %if.end.101, !dbg !2452

if.end.101:                                       ; preds = %cleanup.cont.100, %do.body.89
  br label %do.end.102, !dbg !2453

do.end.102:                                       ; preds = %if.end.101
  br label %do.body.103, !dbg !2456

do.body.103:                                      ; preds = %do.end.102
  %80 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2457, !tbaa !938
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %80, i32 0, i32 5, !dbg !2459
  %81 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !2459, !tbaa !1022
  %tobool104 = icmp ne %struct._object* %81, null, !dbg !2460
  br i1 %tobool104, label %if.then.105, label %if.end.115, !dbg !2461

if.then.105:                                      ; preds = %do.body.103
  %82 = bitcast i32* %vret106 to i8*, !dbg !2462
  call void @llvm.lifetime.start(i64 4, i8* %82) #2, !dbg !2462
  call void @llvm.dbg.declare(metadata i32* %vret106, metadata !632, metadata !942), !dbg !2464
  %83 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2465, !tbaa !938
  %84 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2466, !tbaa !938
  %func_closure107 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %84, i32 0, i32 5, !dbg !2467
  %85 = load %struct._object*, %struct._object** %func_closure107, align 8, !dbg !2467, !tbaa !1022
  %86 = load i8*, i8** %arg.addr, align 8, !dbg !2468, !tbaa !938
  %call108 = call i32 %83(%struct._object* %85, i8* %86), !dbg !2465
  store i32 %call108, i32* %vret106, align 4, !dbg !2464, !tbaa !2244
  %87 = load i32, i32* %vret106, align 4, !dbg !2469, !tbaa !2244
  %tobool109 = icmp ne i32 %87, 0, !dbg !2469
  br i1 %tobool109, label %if.then.110, label %if.end.111, !dbg !2471

if.then.110:                                      ; preds = %if.then.105
  %88 = load i32, i32* %vret106, align 4, !dbg !2472, !tbaa !2244
  store i32 %88, i32* %retval, !dbg !2474
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112, !dbg !2474

if.end.111:                                       ; preds = %if.then.105
  store i32 0, i32* %cleanup.dest.slot, !dbg !2475
  br label %cleanup.112, !dbg !2475

cleanup.112:                                      ; preds = %if.end.111, %if.then.110
  %89 = bitcast i32* %vret106 to i8*, !dbg !2477
  call void @llvm.lifetime.end(i64 4, i8* %89) #2, !dbg !2477
  %cleanup.dest.113 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.113, label %unreachable [
    i32 0, label %cleanup.cont.114
    i32 1, label %return
  ]

cleanup.cont.114:                                 ; preds = %cleanup.112
  br label %if.end.115, !dbg !2480

if.end.115:                                       ; preds = %cleanup.cont.114, %do.body.103
  br label %do.end.116, !dbg !2481

do.end.116:                                       ; preds = %if.end.115
  br label %do.body.117, !dbg !2484

do.body.117:                                      ; preds = %do.end.116
  %90 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2485, !tbaa !938
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %90, i32 0, i32 11, !dbg !2487
  %91 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !2487, !tbaa !1071
  %tobool118 = icmp ne %struct._object* %91, null, !dbg !2488
  br i1 %tobool118, label %if.then.119, label %if.end.129, !dbg !2489

if.then.119:                                      ; preds = %do.body.117
  %92 = bitcast i32* %vret120 to i8*, !dbg !2490
  call void @llvm.lifetime.start(i64 4, i8* %92) #2, !dbg !2490
  call void @llvm.dbg.declare(metadata i32* %vret120, metadata !636, metadata !942), !dbg !2492
  %93 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2493, !tbaa !938
  %94 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2494, !tbaa !938
  %func_annotations121 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %94, i32 0, i32 11, !dbg !2495
  %95 = load %struct._object*, %struct._object** %func_annotations121, align 8, !dbg !2495, !tbaa !1071
  %96 = load i8*, i8** %arg.addr, align 8, !dbg !2496, !tbaa !938
  %call122 = call i32 %93(%struct._object* %95, i8* %96), !dbg !2493
  store i32 %call122, i32* %vret120, align 4, !dbg !2492, !tbaa !2244
  %97 = load i32, i32* %vret120, align 4, !dbg !2497, !tbaa !2244
  %tobool123 = icmp ne i32 %97, 0, !dbg !2497
  br i1 %tobool123, label %if.then.124, label %if.end.125, !dbg !2499

if.then.124:                                      ; preds = %if.then.119
  %98 = load i32, i32* %vret120, align 4, !dbg !2500, !tbaa !2244
  store i32 %98, i32* %retval, !dbg !2502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.126, !dbg !2502

if.end.125:                                       ; preds = %if.then.119
  store i32 0, i32* %cleanup.dest.slot, !dbg !2503
  br label %cleanup.126, !dbg !2503

cleanup.126:                                      ; preds = %if.end.125, %if.then.124
  %99 = bitcast i32* %vret120 to i8*, !dbg !2505
  call void @llvm.lifetime.end(i64 4, i8* %99) #2, !dbg !2505
  %cleanup.dest.127 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.127, label %unreachable [
    i32 0, label %cleanup.cont.128
    i32 1, label %return
  ]

cleanup.cont.128:                                 ; preds = %cleanup.126
  br label %if.end.129, !dbg !2508

if.end.129:                                       ; preds = %cleanup.cont.128, %do.body.117
  br label %do.end.130, !dbg !2509

do.end.130:                                       ; preds = %if.end.129
  br label %do.body.131, !dbg !2512

do.body.131:                                      ; preds = %do.end.130
  %100 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2513, !tbaa !938
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %100, i32 0, i32 12, !dbg !2515
  %101 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !2515, !tbaa !1095
  %tobool132 = icmp ne %struct._object* %101, null, !dbg !2516
  br i1 %tobool132, label %if.then.133, label %if.end.143, !dbg !2517

if.then.133:                                      ; preds = %do.body.131
  %102 = bitcast i32* %vret134 to i8*, !dbg !2518
  call void @llvm.lifetime.start(i64 4, i8* %102) #2, !dbg !2518
  call void @llvm.dbg.declare(metadata i32* %vret134, metadata !640, metadata !942), !dbg !2520
  %103 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2521, !tbaa !938
  %104 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8, !dbg !2522, !tbaa !938
  %func_qualname135 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %104, i32 0, i32 12, !dbg !2523
  %105 = load %struct._object*, %struct._object** %func_qualname135, align 8, !dbg !2523, !tbaa !1095
  %106 = load i8*, i8** %arg.addr, align 8, !dbg !2524, !tbaa !938
  %call136 = call i32 %103(%struct._object* %105, i8* %106), !dbg !2521
  store i32 %call136, i32* %vret134, align 4, !dbg !2520, !tbaa !2244
  %107 = load i32, i32* %vret134, align 4, !dbg !2525, !tbaa !2244
  %tobool137 = icmp ne i32 %107, 0, !dbg !2525
  br i1 %tobool137, label %if.then.138, label %if.end.139, !dbg !2527

if.then.138:                                      ; preds = %if.then.133
  %108 = load i32, i32* %vret134, align 4, !dbg !2528, !tbaa !2244
  store i32 %108, i32* %retval, !dbg !2530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140, !dbg !2530

if.end.139:                                       ; preds = %if.then.133
  store i32 0, i32* %cleanup.dest.slot, !dbg !2531
  br label %cleanup.140, !dbg !2531

cleanup.140:                                      ; preds = %if.end.139, %if.then.138
  %109 = bitcast i32* %vret134 to i8*, !dbg !2533
  call void @llvm.lifetime.end(i64 4, i8* %109) #2, !dbg !2533
  %cleanup.dest.141 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.141, label %unreachable [
    i32 0, label %cleanup.cont.142
    i32 1, label %return
  ]

cleanup.cont.142:                                 ; preds = %cleanup.140
  br label %if.end.143, !dbg !2536

if.end.143:                                       ; preds = %cleanup.cont.142, %do.body.131
  br label %do.end.144, !dbg !2537

do.end.144:                                       ; preds = %if.end.143
  store i32 0, i32* %retval, !dbg !2540
  br label %return, !dbg !2540

return:                                           ; preds = %do.end.144, %cleanup.140, %cleanup.126, %cleanup.112, %cleanup.98, %cleanup.84, %cleanup.70, %cleanup.56, %cleanup.42, %cleanup.28, %cleanup.14, %cleanup
  %110 = load i32, i32* %retval, !dbg !2541
  ret i32 %110, !dbg !2541

unreachable:                                      ; preds = %cleanup.140, %cleanup.126, %cleanup.112, %cleanup.98, %cleanup.84, %cleanup.70, %cleanup.56, %cleanup.42, %cleanup.28, %cleanup.14, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_descr_get(%struct._object* %func, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !725, metadata !942), !dbg !2542
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !726, metadata !942), !dbg !2543
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !727, metadata !942), !dbg !2544
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2545, !tbaa !938
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !2547
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2548

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2549, !tbaa !938
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !2551
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2552

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2553, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !2555
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2556, !tbaa !983
  %inc = add i64 %3, 1, !dbg !2556
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2556, !tbaa !983
  %4 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2557, !tbaa !938
  store %struct._object* %4, %struct._object** %retval, !dbg !2558
  br label %return, !dbg !2558

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2559, !tbaa !938
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2560, !tbaa !938
  %call = call %struct._object* @PyMethod_New(%struct._object* %5, %struct._object* %6), !dbg !2561
  store %struct._object* %call, %struct._object** %retval, !dbg !2562
  br label %return, !dbg !2562

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2563
  ret %struct._object* %7, !dbg !2563
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %code = alloca %struct.PyCodeObject*, align 8
  %globals = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %defaults = alloca %struct._object*, align 8
  %closure = alloca %struct._object*, align 8
  %newfunc = alloca %struct.PyFunctionObject*, align 8
  %nfree = alloca i64, align 8
  %nclosure = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !734, metadata !942), !dbg !2564
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !735, metadata !942), !dbg !2565
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !736, metadata !942), !dbg !2566
  %0 = bitcast %struct.PyCodeObject** %code to i8*, !dbg !2567
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.PyCodeObject** %code, metadata !737, metadata !942), !dbg !2568
  %1 = bitcast %struct._object** %globals to i8*, !dbg !2569
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct._object** %globals, metadata !738, metadata !942), !dbg !2570
  %2 = bitcast %struct._object** %name to i8*, !dbg !2571
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2571
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !739, metadata !942), !dbg !2572
  store %struct._object* @_Py_NoneStruct, %struct._object** %name, align 8, !dbg !2572, !tbaa !938
  %3 = bitcast %struct._object** %defaults to i8*, !dbg !2573
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2573
  call void @llvm.dbg.declare(metadata %struct._object** %defaults, metadata !740, metadata !942), !dbg !2574
  store %struct._object* @_Py_NoneStruct, %struct._object** %defaults, align 8, !dbg !2574, !tbaa !938
  %4 = bitcast %struct._object** %closure to i8*, !dbg !2575
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2575
  call void @llvm.dbg.declare(metadata %struct._object** %closure, metadata !741, metadata !942), !dbg !2576
  store %struct._object* @_Py_NoneStruct, %struct._object** %closure, align 8, !dbg !2576, !tbaa !938
  %5 = bitcast %struct.PyFunctionObject** %newfunc to i8*, !dbg !2577
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2577
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %newfunc, metadata !742, metadata !942), !dbg !2578
  %6 = bitcast i64* %nfree to i8*, !dbg !2579
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2579
  call void @llvm.dbg.declare(metadata i64* %nfree, metadata !743, metadata !942), !dbg !2580
  %7 = bitcast i64* %nclosure to i8*, !dbg !2579
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2579
  call void @llvm.dbg.declare(metadata i64* %nclosure, metadata !744, metadata !942), !dbg !2581
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2582, !tbaa !938
  %9 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2584, !tbaa !938
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @func_new.kwlist, i32 0, i32 0), %struct._typeobject* @PyCode_Type, %struct.PyCodeObject** %code, %struct._typeobject* @PyDict_Type, %struct._object** %globals, %struct._object** %name, %struct._object** %defaults, %struct._object** %closure), !dbg !2585
  %tobool = icmp ne i32 %call, 0, !dbg !2585
  br i1 %tobool, label %if.end, label %if.then, !dbg !2586

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2587
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2587

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %name, align 8, !dbg !2588, !tbaa !938
  %cmp = icmp ne %struct._object* %10, @_Py_NoneStruct, !dbg !2590
  br i1 %cmp, label %land.lhs.true, label %if.end.3, !dbg !2591

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %name, align 8, !dbg !2592, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2594
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2594, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !2595
  %13 = load i64, i64* %tp_flags, align 8, !dbg !2595, !tbaa !1042
  %and = and i64 %13, 268435456, !dbg !2596
  %cmp1 = icmp ne i64 %and, 0, !dbg !2597
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !2598

if.then.2:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2599, !tbaa !938
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0)), !dbg !2601
  store %struct._object* null, %struct._object** %retval, !dbg !2602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2602

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %15 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !2603, !tbaa !938
  %cmp4 = icmp ne %struct._object* %15, @_Py_NoneStruct, !dbg !2605
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.11, !dbg !2606

land.lhs.true.5:                                  ; preds = %if.end.3
  %16 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !2607, !tbaa !938
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2609
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2609, !tbaa !1040
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19, !dbg !2610
  %18 = load i64, i64* %tp_flags7, align 8, !dbg !2610, !tbaa !1042
  %and8 = and i64 %18, 67108864, !dbg !2611
  %cmp9 = icmp ne i64 %and8, 0, !dbg !2612
  br i1 %cmp9, label %if.end.11, label %if.then.10, !dbg !2613

if.then.10:                                       ; preds = %land.lhs.true.5
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2614, !tbaa !938
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0)), !dbg !2616
  store %struct._object* null, %struct._object** %retval, !dbg !2617
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2617

if.end.11:                                        ; preds = %land.lhs.true.5, %if.end.3
  %20 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !2618, !tbaa !938
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %20, i32 0, i32 10, !dbg !2619
  %21 = load %struct._object*, %struct._object** %co_freevars, align 8, !dbg !2619, !tbaa !2620
  %22 = bitcast %struct._object* %21 to %struct.PyVarObject*, !dbg !2621
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1, !dbg !2622
  %23 = load i64, i64* %ob_size, align 8, !dbg !2622, !tbaa !2089
  store i64 %23, i64* %nfree, align 8, !dbg !2623, !tbaa !2091
  %24 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2624, !tbaa !938
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2626
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2626, !tbaa !1040
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !2627
  %26 = load i64, i64* %tp_flags13, align 8, !dbg !2627, !tbaa !1042
  %and14 = and i64 %26, 67108864, !dbg !2628
  %cmp15 = icmp ne i64 %and14, 0, !dbg !2629
  br i1 %cmp15, label %if.end.25, label %if.then.16, !dbg !2630

if.then.16:                                       ; preds = %if.end.11
  %27 = load i64, i64* %nfree, align 8, !dbg !2631, !tbaa !2091
  %tobool17 = icmp ne i64 %27, 0, !dbg !2631
  br i1 %tobool17, label %land.lhs.true.18, label %if.else, !dbg !2634

land.lhs.true.18:                                 ; preds = %if.then.16
  %28 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2635, !tbaa !938
  %cmp19 = icmp eq %struct._object* %28, @_Py_NoneStruct, !dbg !2637
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !2638

if.then.20:                                       ; preds = %land.lhs.true.18
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2639, !tbaa !938
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0)), !dbg !2641
  store %struct._object* null, %struct._object** %retval, !dbg !2642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2642

if.else:                                          ; preds = %land.lhs.true.18, %if.then.16
  %30 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2643, !tbaa !938
  %cmp21 = icmp ne %struct._object* %30, @_Py_NoneStruct, !dbg !2645
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !2646

if.then.22:                                       ; preds = %if.else
  %31 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2647, !tbaa !938
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0)), !dbg !2649
  store %struct._object* null, %struct._object** %retval, !dbg !2650
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2650

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %if.end.25, !dbg !2651

if.end.25:                                        ; preds = %if.end.24, %if.end.11
  %32 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2652, !tbaa !938
  %cmp26 = icmp eq %struct._object* %32, @_Py_NoneStruct, !dbg !2653
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !2652

cond.true:                                        ; preds = %if.end.25
  br label %cond.end, !dbg !2654

cond.false:                                       ; preds = %if.end.25
  %33 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2656, !tbaa !938
  %34 = bitcast %struct._object* %33 to %struct.PyVarObject*, !dbg !2658
  %ob_size27 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1, !dbg !2659
  %35 = load i64, i64* %ob_size27, align 8, !dbg !2659, !tbaa !2089
  br label %cond.end, !dbg !2652

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %35, %cond.false ], !dbg !2652
  store i64 %cond, i64* %nclosure, align 8, !dbg !2660, !tbaa !2091
  %36 = load i64, i64* %nfree, align 8, !dbg !2663, !tbaa !2091
  %37 = load i64, i64* %nclosure, align 8, !dbg !2665, !tbaa !2091
  %cmp28 = icmp ne i64 %36, %37, !dbg !2666
  br i1 %cmp28, label %if.then.29, label %if.end.31, !dbg !2667

if.then.29:                                       ; preds = %cond.end
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2668, !tbaa !938
  %39 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !2669, !tbaa !938
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %39, i32 0, i32 14, !dbg !2670
  %40 = load %struct._object*, %struct._object** %co_name, align 8, !dbg !2670, !tbaa !1000
  %41 = load i64, i64* %nfree, align 8, !dbg !2671, !tbaa !2091
  %42 = load i64, i64* %nclosure, align 8, !dbg !2672, !tbaa !2091
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0), %struct._object* %40, i64 %41, i64 %42), !dbg !2673
  store %struct._object* %call30, %struct._object** %retval, !dbg !2674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2674

if.end.31:                                        ; preds = %cond.end
  %43 = load i64, i64* %nclosure, align 8, !dbg !2675, !tbaa !2091
  %tobool32 = icmp ne i64 %43, 0, !dbg !2675
  br i1 %tobool32, label %if.then.33, label %if.end.44, !dbg !2676

if.then.33:                                       ; preds = %if.end.31
  %44 = bitcast i64* %i to i8*, !dbg !2677
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !2677
  call void @llvm.dbg.declare(metadata i64* %i, metadata !745, metadata !942), !dbg !2678
  store i64 0, i64* %i, align 8, !dbg !2679, !tbaa !2091
  br label %for.cond, !dbg !2680

for.cond:                                         ; preds = %for.inc, %if.then.33
  %45 = load i64, i64* %i, align 8, !dbg !2681, !tbaa !2091
  %46 = load i64, i64* %nclosure, align 8, !dbg !2684, !tbaa !2091
  %cmp34 = icmp slt i64 %45, %46, !dbg !2685
  br i1 %cmp34, label %for.body, label %for.end, !dbg !2686

for.body:                                         ; preds = %for.cond
  %47 = bitcast %struct._object** %o to i8*, !dbg !2687
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !2687
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !748, metadata !942), !dbg !2688
  %48 = load i64, i64* %i, align 8, !dbg !2689, !tbaa !2091
  %49 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2690, !tbaa !938
  %50 = bitcast %struct._object* %49 to %struct.PyTupleObject*, !dbg !2691
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %50, i32 0, i32 1, !dbg !2692
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %48, !dbg !2693
  %51 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2693, !tbaa !938
  store %struct._object* %51, %struct._object** %o, align 8, !dbg !2688, !tbaa !938
  %52 = load %struct._object*, %struct._object** %o, align 8, !dbg !2694, !tbaa !938
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !2696
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !2696, !tbaa !1040
  %cmp36 = icmp eq %struct._typeobject* %53, @PyCell_Type, !dbg !2697
  br i1 %cmp36, label %if.end.40, label %if.then.37, !dbg !2698

if.then.37:                                       ; preds = %for.body
  %54 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2699, !tbaa !938
  %55 = load %struct._object*, %struct._object** %o, align 8, !dbg !2701, !tbaa !938
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !2702
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2702, !tbaa !1040
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 1, !dbg !2703
  %57 = load i8*, i8** %tp_name, align 8, !dbg !2703, !tbaa !1464
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0), i8* %57), !dbg !2704
  store %struct._object* %call39, %struct._object** %retval, !dbg !2705
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2705

if.end.40:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, !dbg !2706
  br label %cleanup, !dbg !2706

cleanup:                                          ; preds = %if.end.40, %if.then.37
  %58 = bitcast %struct._object** %o to i8*, !dbg !2707
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !2707
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2708

for.inc:                                          ; preds = %cleanup.cont
  %59 = load i64, i64* %i, align 8, !dbg !2709, !tbaa !2091
  %inc = add i64 %59, 1, !dbg !2709
  store i64 %inc, i64* %i, align 8, !dbg !2709, !tbaa !2091
  br label %for.cond, !dbg !2710

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !2711
  br label %cleanup.41, !dbg !2711

cleanup.41:                                       ; preds = %for.end, %cleanup
  %60 = bitcast i64* %i to i8*, !dbg !2712
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !2712
  %cleanup.dest.42 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.42, label %cleanup.70 [
    i32 0, label %cleanup.cont.43
  ]

cleanup.cont.43:                                  ; preds = %cleanup.41
  br label %if.end.44, !dbg !2714

if.end.44:                                        ; preds = %cleanup.cont.43, %if.end.31
  %61 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !2715, !tbaa !938
  %62 = bitcast %struct.PyCodeObject* %61 to %struct._object*, !dbg !2716
  %63 = load %struct._object*, %struct._object** %globals, align 8, !dbg !2717, !tbaa !938
  %call45 = call %struct._object* @PyFunction_New(%struct._object* %62, %struct._object* %63), !dbg !2718
  %64 = bitcast %struct._object* %call45 to %struct.PyFunctionObject*, !dbg !2719
  store %struct.PyFunctionObject* %64, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2720, !tbaa !938
  %65 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2721, !tbaa !938
  %cmp46 = icmp eq %struct.PyFunctionObject* %65, null, !dbg !2723
  br i1 %cmp46, label %if.then.47, label %if.end.48, !dbg !2724

if.then.47:                                       ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval, !dbg !2725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2725

if.end.48:                                        ; preds = %if.end.44
  %66 = load %struct._object*, %struct._object** %name, align 8, !dbg !2726, !tbaa !938
  %cmp49 = icmp ne %struct._object* %66, @_Py_NoneStruct, !dbg !2727
  br i1 %cmp49, label %if.then.50, label %if.end.59, !dbg !2728

if.then.50:                                       ; preds = %if.end.48
  %67 = load %struct._object*, %struct._object** %name, align 8, !dbg !2729, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !2730
  %68 = load i64, i64* %ob_refcnt, align 8, !dbg !2731, !tbaa !983
  %inc51 = add i64 %68, 1, !dbg !2731
  store i64 %inc51, i64* %ob_refcnt, align 8, !dbg !2731, !tbaa !983
  br label %do.body, !dbg !2732

do.body:                                          ; preds = %if.then.50
  %69 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2733
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !2733
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !752, metadata !942), !dbg !2735
  %70 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2736, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %70, i32 0, i32 7, !dbg !2737
  %71 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !2737, !tbaa !1006
  store %struct._object* %71, %struct._object** %_py_decref_tmp, align 8, !dbg !2735, !tbaa !938
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2738, !tbaa !938
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !2740
  %73 = load i64, i64* %ob_refcnt52, align 8, !dbg !2741, !tbaa !983
  %dec = add i64 %73, -1, !dbg !2741
  store i64 %dec, i64* %ob_refcnt52, align 8, !dbg !2741, !tbaa !983
  %cmp53 = icmp ne i64 %dec, 0, !dbg !2742
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !2743

if.then.54:                                       ; preds = %do.body
  br label %if.end.57, !dbg !2744

if.else.55:                                       ; preds = %do.body
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2746, !tbaa !938
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !2748
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !2748, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !2749
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2749, !tbaa !1299
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2750, !tbaa !938
  call void %76(%struct._object* %77), !dbg !2751
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  %78 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2752
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2752
  br label %do.cond, !dbg !2754

do.cond:                                          ; preds = %if.end.57
  br label %do.end, !dbg !2755

do.end:                                           ; preds = %do.cond
  %79 = load %struct._object*, %struct._object** %name, align 8, !dbg !2757, !tbaa !938
  %80 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2758, !tbaa !938
  %func_name58 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %80, i32 0, i32 7, !dbg !2759
  store %struct._object* %79, %struct._object** %func_name58, align 8, !dbg !2760, !tbaa !1006
  br label %if.end.59, !dbg !2761

if.end.59:                                        ; preds = %do.end, %if.end.48
  %81 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !2762, !tbaa !938
  %cmp60 = icmp ne %struct._object* %81, @_Py_NoneStruct, !dbg !2764
  br i1 %cmp60, label %if.then.61, label %if.end.64, !dbg !2765

if.then.61:                                       ; preds = %if.end.59
  %82 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !2766, !tbaa !938
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0, !dbg !2768
  %83 = load i64, i64* %ob_refcnt62, align 8, !dbg !2769, !tbaa !983
  %inc63 = add i64 %83, 1, !dbg !2769
  store i64 %inc63, i64* %ob_refcnt62, align 8, !dbg !2769, !tbaa !983
  %84 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !2770, !tbaa !938
  %85 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2771, !tbaa !938
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %85, i32 0, i32 3, !dbg !2772
  store %struct._object* %84, %struct._object** %func_defaults, align 8, !dbg !2773, !tbaa !1014
  br label %if.end.64, !dbg !2774

if.end.64:                                        ; preds = %if.then.61, %if.end.59
  %86 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2775, !tbaa !938
  %cmp65 = icmp ne %struct._object* %86, @_Py_NoneStruct, !dbg !2777
  br i1 %cmp65, label %if.then.66, label %if.end.69, !dbg !2778

if.then.66:                                       ; preds = %if.end.64
  %87 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2779, !tbaa !938
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0, !dbg !2781
  %88 = load i64, i64* %ob_refcnt67, align 8, !dbg !2782, !tbaa !983
  %inc68 = add i64 %88, 1, !dbg !2782
  store i64 %inc68, i64* %ob_refcnt67, align 8, !dbg !2782, !tbaa !983
  %89 = load %struct._object*, %struct._object** %closure, align 8, !dbg !2783, !tbaa !938
  %90 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2784, !tbaa !938
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %90, i32 0, i32 5, !dbg !2785
  store %struct._object* %89, %struct._object** %func_closure, align 8, !dbg !2786, !tbaa !1022
  br label %if.end.69, !dbg !2787

if.end.69:                                        ; preds = %if.then.66, %if.end.64
  %91 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8, !dbg !2788, !tbaa !938
  %92 = bitcast %struct.PyFunctionObject* %91 to %struct._object*, !dbg !2789
  store %struct._object* %92, %struct._object** %retval, !dbg !2790
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70, !dbg !2790

cleanup.70:                                       ; preds = %if.end.69, %if.then.47, %cleanup.41, %if.then.29, %if.then.22, %if.then.20, %if.then.10, %if.then.2, %if.then
  %93 = bitcast i64* %nclosure to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !2791
  %94 = bitcast i64* %nfree to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !2791
  %95 = bitcast %struct.PyFunctionObject** %newfunc to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !2791
  %96 = bitcast %struct._object** %closure to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !2791
  %97 = bitcast %struct._object** %defaults to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !2791
  %98 = bitcast %struct._object** %name to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !2791
  %99 = bitcast %struct._object** %globals to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !2791
  %100 = bitcast %struct.PyCodeObject** %code to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !2791
  %101 = load %struct._object*, %struct._object** %retval, !dbg !2791
  ret %struct._object* %101, !dbg !2791
}

; Function Attrs: nounwind uwtable
define internal void @cm_dealloc(%struct.classmethod* %cm) #0 {
entry:
  %cm.addr = alloca %struct.classmethod*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm.addr, metadata !760, metadata !942), !dbg !2792
  br label %do.body, !dbg !2793

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !2794
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2794
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !761, metadata !942), !dbg !2796
  %1 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2797, !tbaa !938
  %2 = bitcast %struct.classmethod* %1 to %struct._object*, !dbg !2798
  %3 = bitcast %struct._object* %2 to %union._gc_head*, !dbg !2799
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1, !dbg !2800
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !2796, !tbaa !938
  br label %do.body.1, !dbg !2801

do.body.1:                                        ; preds = %do.body
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2802, !tbaa !938
  %gc = bitcast %union._gc_head* %4 to %struct.anon*, !dbg !2805
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !2806
  %5 = load i64, i64* %gc_refs, align 8, !dbg !2806, !tbaa !1116
  %and = and i64 %5, 1, !dbg !2807
  %or = or i64 %and, -4, !dbg !2808
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2809, !tbaa !938
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !2810
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !2811
  store i64 %or, i64* %gc_refs3, align 8, !dbg !2812, !tbaa !1116
  br label %do.cond, !dbg !2813

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !2814

do.end:                                           ; preds = %do.cond
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2816, !tbaa !938
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !2818
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !2819
  %8 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !2819, !tbaa !1145
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2820, !tbaa !938
  %gc5 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !2821
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !2822
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !2822, !tbaa !1149
  %gc6 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !2823
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !2824
  store %union._gc_head* %8, %union._gc_head** %gc_next7, align 8, !dbg !2825, !tbaa !1145
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2826, !tbaa !938
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !2827
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !2828
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !2828, !tbaa !1149
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2829, !tbaa !938
  %gc10 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !2830
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !2831
  %14 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !2831, !tbaa !1145
  %gc12 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !2832
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !2833
  store %union._gc_head* %12, %union._gc_head** %gc_prev13, align 8, !dbg !2834, !tbaa !1149
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !2835, !tbaa !938
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !2836
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !2837
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !2838, !tbaa !1145
  %16 = bitcast %union._gc_head** %g to i8*, !dbg !2839
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2839
  br label %do.end.17, !dbg !2840

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !2841

do.body.18:                                       ; preds = %do.end.17
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !2842
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !763, metadata !942), !dbg !2844
  %18 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2845, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %18, i32 0, i32 1, !dbg !2846
  %19 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !2846, !tbaa !2847
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2844, !tbaa !938
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2849, !tbaa !938
  %cmp = icmp ne %struct._object* %20, null, !dbg !2850
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !2851

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !2852

do.body.19:                                       ; preds = %if.then
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2854
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !2854
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !765, metadata !942), !dbg !2856
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2857, !tbaa !938
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !2856, !tbaa !938
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2858, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !2860
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !2861, !tbaa !983
  %dec = add i64 %24, -1, !dbg !2861
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2861, !tbaa !983
  %cmp20 = icmp ne i64 %dec, 0, !dbg !2862
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !2863

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !2864

if.else:                                          ; preds = %do.body.19
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2866, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !2868
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2868, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !2869
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2869, !tbaa !1299
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2870, !tbaa !938
  call void %27(%struct._object* %28), !dbg !2871
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2872
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2872
  br label %do.cond.22, !dbg !2874

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !2875

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !2877

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %30 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2879
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2879
  br label %do.end.26, !dbg !2882

do.end.26:                                        ; preds = %if.end.24
  br label %do.body.27, !dbg !2883

do.body.27:                                       ; preds = %do.end.26
  %31 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !2884
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !2884
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp28, metadata !768, metadata !942), !dbg !2886
  %32 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2887, !tbaa !938
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %32, i32 0, i32 2, !dbg !2888
  %33 = load %struct._object*, %struct._object** %cm_dict, align 8, !dbg !2888, !tbaa !2889
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !2886, !tbaa !938
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !2890, !tbaa !938
  %cmp29 = icmp ne %struct._object* %34, null, !dbg !2891
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !2892

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31, !dbg !2893

do.body.31:                                       ; preds = %if.then.30
  %35 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !2895
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !2895
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !770, metadata !942), !dbg !2897
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !2898, !tbaa !938
  store %struct._object* %36, %struct._object** %_py_decref_tmp32, align 8, !dbg !2897, !tbaa !938
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !2899, !tbaa !938
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2901
  %38 = load i64, i64* %ob_refcnt33, align 8, !dbg !2902, !tbaa !983
  %dec34 = add i64 %38, -1, !dbg !2902
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !2902, !tbaa !983
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !2903
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !2904

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !2905

if.else.37:                                       ; preds = %do.body.31
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !2907, !tbaa !938
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2909
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2909, !tbaa !1040
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !2910
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !2910, !tbaa !1299
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !2911, !tbaa !938
  call void %41(%struct._object* %42), !dbg !2912
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %43 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !2913
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !2913
  br label %do.cond.41, !dbg !2915

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !2916

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43, !dbg !2918

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  %44 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !2920
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !2920
  br label %do.end.45, !dbg !2921

do.end.45:                                        ; preds = %if.end.43
  %45 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2922, !tbaa !938
  %46 = bitcast %struct.classmethod* %45 to %struct._object*, !dbg !2923
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !2924
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !2924, !tbaa !1040
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 38, !dbg !2925
  %48 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !2925, !tbaa !2926
  %49 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2927, !tbaa !938
  %50 = bitcast %struct.classmethod* %49 to %struct._object*, !dbg !2928
  %51 = bitcast %struct._object* %50 to i8*, !dbg !2928
  call void %48(i8* %51), !dbg !2929
  ret void, !dbg !2930
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_traverse(%struct.classmethod* %cm, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cm.addr = alloca %struct.classmethod*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm.addr, metadata !777, metadata !942), !dbg !2931
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !778, metadata !942), !dbg !2932
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !779, metadata !942), !dbg !2933
  br label %do.body, !dbg !2934

do.body:                                          ; preds = %entry
  %0 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2935, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %0, i32 0, i32 1, !dbg !2937
  %1 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !2937, !tbaa !2847
  %tobool = icmp ne %struct._object* %1, null, !dbg !2938
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2939

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !2940
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2940
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !780, metadata !942), !dbg !2942
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2943, !tbaa !938
  %4 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2944, !tbaa !938
  %cm_callable1 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %4, i32 0, i32 1, !dbg !2945
  %5 = load %struct._object*, %struct._object** %cm_callable1, align 8, !dbg !2945, !tbaa !2847
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !2946, !tbaa !938
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !2943
  store i32 %call, i32* %vret, align 4, !dbg !2942, !tbaa !2244
  %7 = load i32, i32* %vret, align 4, !dbg !2947, !tbaa !2244
  %tobool2 = icmp ne i32 %7, 0, !dbg !2947
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2949

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !2950, !tbaa !2244
  store i32 %8, i32* %retval, !dbg !2952
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2952

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2953
  br label %cleanup, !dbg !2953

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !2955
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !2955
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !2958

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2959

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !2962

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2963, !tbaa !938
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %10, i32 0, i32 2, !dbg !2965
  %11 = load %struct._object*, %struct._object** %cm_dict, align 8, !dbg !2965, !tbaa !2889
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !2966
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !2967

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !2968
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !2968
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !784, metadata !942), !dbg !2970
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2971, !tbaa !938
  %14 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2972, !tbaa !938
  %cm_dict9 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %14, i32 0, i32 2, !dbg !2973
  %15 = load %struct._object*, %struct._object** %cm_dict9, align 8, !dbg !2973, !tbaa !2889
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !2974, !tbaa !938
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !2971
  store i32 %call10, i32* %vret8, align 4, !dbg !2970, !tbaa !2244
  %17 = load i32, i32* %vret8, align 4, !dbg !2975, !tbaa !2244
  %tobool11 = icmp ne i32 %17, 0, !dbg !2975
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2977

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !2978, !tbaa !2244
  store i32 %18, i32* %retval, !dbg !2980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !2980

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !2981
  br label %cleanup.14, !dbg !2981

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !2983
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !2983
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !2986

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !2987

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !2990
  br label %return, !dbg !2990

return:                                           ; preds = %do.end.18, %cleanup.14, %cleanup
  %20 = load i32, i32* %retval, !dbg !2991
  ret i32 %20, !dbg !2991

unreachable:                                      ; preds = %cleanup.14, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_clear(%struct.classmethod* %cm) #0 {
entry:
  %cm.addr = alloca %struct.classmethod*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm.addr, metadata !792, metadata !942), !dbg !2992
  br label %do.body, !dbg !2993

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2994
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2994
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !793, metadata !942), !dbg !2996
  %1 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !2997, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %1, i32 0, i32 1, !dbg !2998
  %2 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !2998, !tbaa !2847
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !2996, !tbaa !938
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2999, !tbaa !938
  %cmp = icmp ne %struct._object* %3, null, !dbg !3000
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3001

if.then:                                          ; preds = %do.body
  %4 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !3002, !tbaa !938
  %cm_callable1 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %4, i32 0, i32 1, !dbg !3004
  store %struct._object* null, %struct._object** %cm_callable1, align 8, !dbg !3005, !tbaa !2847
  br label %do.body.2, !dbg !3006

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3007
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3007
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !795, metadata !942), !dbg !3009
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3010, !tbaa !938
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !3009, !tbaa !938
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3011, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !3013
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !3014, !tbaa !983
  %dec = add i64 %8, -1, !dbg !3014
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3014, !tbaa !983
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3015
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3016

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !3017

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3019, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !3021
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3021, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !3022
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3022, !tbaa !1299
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3023, !tbaa !938
  call void %11(%struct._object* %12), !dbg !3024
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3025
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3025
  br label %do.cond, !dbg !3027

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3028

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3030

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3032
  br label %do.end.7, !dbg !3035

do.end.7:                                         ; preds = %if.end.5
  br label %do.body.8, !dbg !3036

do.body.8:                                        ; preds = %do.end.7
  %15 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !3037
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !3037
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !799, metadata !942), !dbg !3039
  %16 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !3040, !tbaa !938
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %16, i32 0, i32 2, !dbg !3041
  %17 = load %struct._object*, %struct._object** %cm_dict, align 8, !dbg !3041, !tbaa !2889
  store %struct._object* %17, %struct._object** %_py_tmp9, align 8, !dbg !3039, !tbaa !938
  %18 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !3042, !tbaa !938
  %cmp10 = icmp ne %struct._object* %18, null, !dbg !3043
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !3044

if.then.11:                                       ; preds = %do.body.8
  %19 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !3045, !tbaa !938
  %cm_dict12 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %19, i32 0, i32 2, !dbg !3047
  store %struct._object* null, %struct._object** %cm_dict12, align 8, !dbg !3048, !tbaa !2889
  br label %do.body.13, !dbg !3049

do.body.13:                                       ; preds = %if.then.11
  %20 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3050
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3050
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !801, metadata !942), !dbg !3052
  %21 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !3053, !tbaa !938
  store %struct._object* %21, %struct._object** %_py_decref_tmp14, align 8, !dbg !3052, !tbaa !938
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3054, !tbaa !938
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3056
  %23 = load i64, i64* %ob_refcnt15, align 8, !dbg !3057, !tbaa !983
  %dec16 = add i64 %23, -1, !dbg !3057
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !3057, !tbaa !983
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !3058
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !3059

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !3060

if.else.19:                                       ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3062, !tbaa !938
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3064
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !3064, !tbaa !1040
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3065
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !3065, !tbaa !1299
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3066, !tbaa !938
  call void %26(%struct._object* %27), !dbg !3067
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3068
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3068
  br label %do.cond.23, !dbg !3070

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !3071

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !3073

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %29 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !3075
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3075
  br label %do.end.27, !dbg !3076

do.end.27:                                        ; preds = %if.end.25
  ret i32 0, !dbg !3077
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cm_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %cm = alloca %struct.classmethod*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !814, metadata !942), !dbg !3078
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !815, metadata !942), !dbg !3079
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !816, metadata !942), !dbg !3080
  %0 = bitcast %struct.classmethod** %cm to i8*, !dbg !3081
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3081
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm, metadata !817, metadata !942), !dbg !3082
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3083, !tbaa !938
  %2 = bitcast %struct._object* %1 to %struct.classmethod*, !dbg !3084
  store %struct.classmethod* %2, %struct.classmethod** %cm, align 8, !dbg !3082, !tbaa !938
  %3 = load %struct.classmethod*, %struct.classmethod** %cm, align 8, !dbg !3085, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %3, i32 0, i32 1, !dbg !3087
  %4 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !3087, !tbaa !2847
  %cmp = icmp eq %struct._object* %4, null, !dbg !3088
  br i1 %cmp, label %if.then, label %if.end, !dbg !3089

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3090, !tbaa !938
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0)), !dbg !3092
  store %struct._object* null, %struct._object** %retval, !dbg !3093
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3093

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !3094, !tbaa !938
  %cmp1 = icmp eq %struct._object* %6, null, !dbg !3096
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3097

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3098, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3099
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3099, !tbaa !1040
  %9 = bitcast %struct._typeobject* %8 to %struct._object*, !dbg !3100
  store %struct._object* %9, %struct._object** %type.addr, align 8, !dbg !3101, !tbaa !938
  br label %if.end.3, !dbg !3102

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct.classmethod*, %struct.classmethod** %cm, align 8, !dbg !3103, !tbaa !938
  %cm_callable4 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %10, i32 0, i32 1, !dbg !3104
  %11 = load %struct._object*, %struct._object** %cm_callable4, align 8, !dbg !3104, !tbaa !2847
  %12 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !3105, !tbaa !938
  %call = call %struct._object* @PyMethod_New(%struct._object* %11, %struct._object* %12), !dbg !3106
  store %struct._object* %call, %struct._object** %retval, !dbg !3107
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3107

cleanup:                                          ; preds = %if.end.3, %if.then
  %13 = bitcast %struct.classmethod** %cm to i8*, !dbg !3108
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3108
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3108
  ret %struct._object* %14, !dbg !3108
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %cm = alloca %struct.classmethod*, align 8
  %callable = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !820, metadata !942), !dbg !3109
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !821, metadata !942), !dbg !3110
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !822, metadata !942), !dbg !3111
  %0 = bitcast %struct.classmethod** %cm to i8*, !dbg !3112
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3112
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm, metadata !823, metadata !942), !dbg !3113
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3114, !tbaa !938
  %2 = bitcast %struct._object* %1 to %struct.classmethod*, !dbg !3115
  store %struct.classmethod* %2, %struct.classmethod** %cm, align 8, !dbg !3113, !tbaa !938
  %3 = bitcast %struct._object** %callable to i8*, !dbg !3116
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3116
  call void @llvm.dbg.declare(metadata %struct._object** %callable, metadata !824, metadata !942), !dbg !3117
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3118, !tbaa !938
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 1, %struct._object** %callable), !dbg !3120
  %tobool = icmp ne i32 %call, 0, !dbg !3120
  br i1 %tobool, label %if.end, label %if.then, !dbg !3121

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3122
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3122

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3123, !tbaa !938
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct._object* %5), !dbg !3125
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3125
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !3126

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !3127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3127

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %callable, align 8, !dbg !3128, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !3129
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3130, !tbaa !983
  %inc = add i64 %7, 1, !dbg !3130
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3130, !tbaa !983
  %8 = load %struct._object*, %struct._object** %callable, align 8, !dbg !3131, !tbaa !938
  %9 = load %struct.classmethod*, %struct.classmethod** %cm, align 8, !dbg !3132, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %9, i32 0, i32 1, !dbg !3133
  store %struct._object* %8, %struct._object** %cm_callable, align 8, !dbg !3134, !tbaa !2847
  store i32 0, i32* %retval, !dbg !3135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3135

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %10 = bitcast %struct._object** %callable to i8*, !dbg !3136
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3136
  %11 = bitcast %struct.classmethod** %cm to i8*, !dbg !3136
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !3136
  %12 = load i32, i32* %retval, !dbg !3136
  ret i32 %12, !dbg !3136
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyClassMethod_New(%struct._object* %callable) #0 {
entry:
  %callable.addr = alloca %struct._object*, align 8
  %cm = alloca %struct.classmethod*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %callable.addr, metadata !507, metadata !942), !dbg !3137
  %0 = bitcast %struct.classmethod** %cm to i8*, !dbg !3138
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3138
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm, metadata !508, metadata !942), !dbg !3139
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyClassMethod_Type to %struct._typeobject*), i64 0), !dbg !3140
  %1 = bitcast %struct._object* %call to %struct.classmethod*, !dbg !3141
  store %struct.classmethod* %1, %struct.classmethod** %cm, align 8, !dbg !3139, !tbaa !938
  %2 = load %struct.classmethod*, %struct.classmethod** %cm, align 8, !dbg !3142, !tbaa !938
  %cmp = icmp ne %struct.classmethod* %2, null, !dbg !3144
  br i1 %cmp, label %if.then, label %if.end, !dbg !3145

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !3146, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !3148
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !3149, !tbaa !983
  %inc = add i64 %4, 1, !dbg !3149
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3149, !tbaa !983
  %5 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !3150, !tbaa !938
  %6 = load %struct.classmethod*, %struct.classmethod** %cm, align 8, !dbg !3151, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %6, i32 0, i32 1, !dbg !3152
  store %struct._object* %5, %struct._object** %cm_callable, align 8, !dbg !3153, !tbaa !2847
  br label %if.end, !dbg !3154

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.classmethod*, %struct.classmethod** %cm, align 8, !dbg !3155, !tbaa !938
  %8 = bitcast %struct.classmethod* %7 to %struct._object*, !dbg !3156
  %9 = bitcast %struct.classmethod** %cm to i8*, !dbg !3157
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !3157
  ret %struct._object* %8, !dbg !3158
}

; Function Attrs: nounwind uwtable
define internal void @sm_dealloc(%struct.staticmethod* %sm) #0 {
entry:
  %sm.addr = alloca %struct.staticmethod*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm.addr, metadata !829, metadata !942), !dbg !3159
  br label %do.body, !dbg !3160

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !3161
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3161
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !830, metadata !942), !dbg !3163
  %1 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3164, !tbaa !938
  %2 = bitcast %struct.staticmethod* %1 to %struct._object*, !dbg !3165
  %3 = bitcast %struct._object* %2 to %union._gc_head*, !dbg !3166
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1, !dbg !3167
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !3163, !tbaa !938
  br label %do.body.1, !dbg !3168

do.body.1:                                        ; preds = %do.body
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3169, !tbaa !938
  %gc = bitcast %union._gc_head* %4 to %struct.anon*, !dbg !3172
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !3173
  %5 = load i64, i64* %gc_refs, align 8, !dbg !3173, !tbaa !1116
  %and = and i64 %5, 1, !dbg !3174
  %or = or i64 %and, -4, !dbg !3175
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3176, !tbaa !938
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !3177
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !3178
  store i64 %or, i64* %gc_refs3, align 8, !dbg !3179, !tbaa !1116
  br label %do.cond, !dbg !3180

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !3181

do.end:                                           ; preds = %do.cond
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3183, !tbaa !938
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*, !dbg !3185
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !3186
  %8 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !3186, !tbaa !1145
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3187, !tbaa !938
  %gc5 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !3188
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !3189
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !3189, !tbaa !1149
  %gc6 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !3190
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !3191
  store %union._gc_head* %8, %union._gc_head** %gc_next7, align 8, !dbg !3192, !tbaa !1145
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3193, !tbaa !938
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*, !dbg !3194
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !3195
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !3195, !tbaa !1149
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3196, !tbaa !938
  %gc10 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !3197
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !3198
  %14 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !3198, !tbaa !1145
  %gc12 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !3199
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !3200
  store %union._gc_head* %12, %union._gc_head** %gc_prev13, align 8, !dbg !3201, !tbaa !1149
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !3202, !tbaa !938
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*, !dbg !3203
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !3204
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !3205, !tbaa !1145
  %16 = bitcast %union._gc_head** %g to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !3206
  br label %do.end.17, !dbg !3207

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !3208

do.body.18:                                       ; preds = %do.end.17
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3209
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !3209
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !832, metadata !942), !dbg !3211
  %18 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3212, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %18, i32 0, i32 1, !dbg !3213
  %19 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !3213, !tbaa !2847
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3211, !tbaa !938
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3214, !tbaa !938
  %cmp = icmp ne %struct._object* %20, null, !dbg !3215
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !3216

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !3217

do.body.19:                                       ; preds = %if.then
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3219
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !3219
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !834, metadata !942), !dbg !3221
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3222, !tbaa !938
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !3221, !tbaa !938
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3223, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !3225
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !3226, !tbaa !983
  %dec = add i64 %24, -1, !dbg !3226
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3226, !tbaa !983
  %cmp20 = icmp ne i64 %dec, 0, !dbg !3227
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !3228

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !3229

if.else:                                          ; preds = %do.body.19
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3231, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !3233
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3233, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !3234
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3234, !tbaa !1299
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3235, !tbaa !938
  call void %27(%struct._object* %28), !dbg !3236
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3237
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3237
  br label %do.cond.22, !dbg !3239

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !3240

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !3242

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %30 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3244
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3244
  br label %do.end.26, !dbg !3247

do.end.26:                                        ; preds = %if.end.24
  br label %do.body.27, !dbg !3248

do.body.27:                                       ; preds = %do.end.26
  %31 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !3249
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !3249
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp28, metadata !837, metadata !942), !dbg !3251
  %32 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3252, !tbaa !938
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %32, i32 0, i32 2, !dbg !3253
  %33 = load %struct._object*, %struct._object** %sm_dict, align 8, !dbg !3253, !tbaa !2889
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !3251, !tbaa !938
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !3254, !tbaa !938
  %cmp29 = icmp ne %struct._object* %34, null, !dbg !3255
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !3256

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31, !dbg !3257

do.body.31:                                       ; preds = %if.then.30
  %35 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !3259
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !3259
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !839, metadata !942), !dbg !3261
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !3262, !tbaa !938
  store %struct._object* %36, %struct._object** %_py_decref_tmp32, align 8, !dbg !3261, !tbaa !938
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !3263, !tbaa !938
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !3265
  %38 = load i64, i64* %ob_refcnt33, align 8, !dbg !3266, !tbaa !983
  %dec34 = add i64 %38, -1, !dbg !3266
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !3266, !tbaa !983
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !3267
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !3268

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !3269

if.else.37:                                       ; preds = %do.body.31
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !3271, !tbaa !938
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !3273
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !3273, !tbaa !1040
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !3274
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !3274, !tbaa !1299
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !3275, !tbaa !938
  call void %41(%struct._object* %42), !dbg !3276
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %43 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !3277
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3277
  br label %do.cond.41, !dbg !3279

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !3280

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43, !dbg !3282

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  %44 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !3284
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3284
  br label %do.end.45, !dbg !3285

do.end.45:                                        ; preds = %if.end.43
  %45 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3286, !tbaa !938
  %46 = bitcast %struct.staticmethod* %45 to %struct._object*, !dbg !3287
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !3288
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !3288, !tbaa !1040
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 38, !dbg !3289
  %48 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !3289, !tbaa !2926
  %49 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3290, !tbaa !938
  %50 = bitcast %struct.staticmethod* %49 to %struct._object*, !dbg !3291
  %51 = bitcast %struct._object* %50 to i8*, !dbg !3291
  call void %48(i8* %51), !dbg !3292
  ret void, !dbg !3293
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_traverse(%struct.staticmethod* %sm, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %sm.addr = alloca %struct.staticmethod*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm.addr, metadata !846, metadata !942), !dbg !3294
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !847, metadata !942), !dbg !3295
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !848, metadata !942), !dbg !3296
  br label %do.body, !dbg !3297

do.body:                                          ; preds = %entry
  %0 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3298, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %0, i32 0, i32 1, !dbg !3300
  %1 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !3300, !tbaa !2847
  %tobool = icmp ne %struct._object* %1, null, !dbg !3301
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !3302

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !3303
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3303
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !849, metadata !942), !dbg !3305
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3306, !tbaa !938
  %4 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3307, !tbaa !938
  %sm_callable1 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %4, i32 0, i32 1, !dbg !3308
  %5 = load %struct._object*, %struct._object** %sm_callable1, align 8, !dbg !3308, !tbaa !2847
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !3309, !tbaa !938
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !3306
  store i32 %call, i32* %vret, align 4, !dbg !3305, !tbaa !2244
  %7 = load i32, i32* %vret, align 4, !dbg !3310, !tbaa !2244
  %tobool2 = icmp ne i32 %7, 0, !dbg !3310
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3312

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !3313, !tbaa !2244
  store i32 %8, i32* %retval, !dbg !3315
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3315

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !3316
  br label %cleanup, !dbg !3316

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !3318
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !3318
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !3321

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !3322

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !3325

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3326, !tbaa !938
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %10, i32 0, i32 2, !dbg !3328
  %11 = load %struct._object*, %struct._object** %sm_dict, align 8, !dbg !3328, !tbaa !2889
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !3329
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !3330

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !3331
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !3331
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !853, metadata !942), !dbg !3333
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3334, !tbaa !938
  %14 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3335, !tbaa !938
  %sm_dict9 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %14, i32 0, i32 2, !dbg !3336
  %15 = load %struct._object*, %struct._object** %sm_dict9, align 8, !dbg !3336, !tbaa !2889
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !3337, !tbaa !938
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !3334
  store i32 %call10, i32* %vret8, align 4, !dbg !3333, !tbaa !2244
  %17 = load i32, i32* %vret8, align 4, !dbg !3338, !tbaa !2244
  %tobool11 = icmp ne i32 %17, 0, !dbg !3338
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !3340

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !3341, !tbaa !2244
  store i32 %18, i32* %retval, !dbg !3343
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !3343

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !3344
  br label %cleanup.14, !dbg !3344

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !3346
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !3346
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !3349

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !3350

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !3353
  br label %return, !dbg !3353

return:                                           ; preds = %do.end.18, %cleanup.14, %cleanup
  %20 = load i32, i32* %retval, !dbg !3354
  ret i32 %20, !dbg !3354

unreachable:                                      ; preds = %cleanup.14, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_clear(%struct.staticmethod* %sm) #0 {
entry:
  %sm.addr = alloca %struct.staticmethod*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm.addr, metadata !861, metadata !942), !dbg !3355
  br label %do.body, !dbg !3356

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3357
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3357
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !862, metadata !942), !dbg !3359
  %1 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3360, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %1, i32 0, i32 1, !dbg !3361
  %2 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !3361, !tbaa !2847
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !3359, !tbaa !938
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3362, !tbaa !938
  %cmp = icmp ne %struct._object* %3, null, !dbg !3363
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3364

if.then:                                          ; preds = %do.body
  %4 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3365, !tbaa !938
  %sm_callable1 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %4, i32 0, i32 1, !dbg !3367
  store %struct._object* null, %struct._object** %sm_callable1, align 8, !dbg !3368, !tbaa !2847
  br label %do.body.2, !dbg !3369

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3370
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3370
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !864, metadata !942), !dbg !3372
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3373, !tbaa !938
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !3372, !tbaa !938
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3374, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !3376
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !3377, !tbaa !983
  %dec = add i64 %8, -1, !dbg !3377
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3377, !tbaa !983
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3378
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3379

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !3380

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3382, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !3384
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3384, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !3385
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3385, !tbaa !1299
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3386, !tbaa !938
  call void %11(%struct._object* %12), !dbg !3387
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3388
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3388
  br label %do.cond, !dbg !3390

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3391

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3393

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3395
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3395
  br label %do.end.7, !dbg !3398

do.end.7:                                         ; preds = %if.end.5
  br label %do.body.8, !dbg !3399

do.body.8:                                        ; preds = %do.end.7
  %15 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !3400
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !3400
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !868, metadata !942), !dbg !3402
  %16 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3403, !tbaa !938
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %16, i32 0, i32 2, !dbg !3404
  %17 = load %struct._object*, %struct._object** %sm_dict, align 8, !dbg !3404, !tbaa !2889
  store %struct._object* %17, %struct._object** %_py_tmp9, align 8, !dbg !3402, !tbaa !938
  %18 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !3405, !tbaa !938
  %cmp10 = icmp ne %struct._object* %18, null, !dbg !3406
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !3407

if.then.11:                                       ; preds = %do.body.8
  %19 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !3408, !tbaa !938
  %sm_dict12 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %19, i32 0, i32 2, !dbg !3410
  store %struct._object* null, %struct._object** %sm_dict12, align 8, !dbg !3411, !tbaa !2889
  br label %do.body.13, !dbg !3412

do.body.13:                                       ; preds = %if.then.11
  %20 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3413
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3413
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !870, metadata !942), !dbg !3415
  %21 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !3416, !tbaa !938
  store %struct._object* %21, %struct._object** %_py_decref_tmp14, align 8, !dbg !3415, !tbaa !938
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3417, !tbaa !938
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3419
  %23 = load i64, i64* %ob_refcnt15, align 8, !dbg !3420, !tbaa !983
  %dec16 = add i64 %23, -1, !dbg !3420
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !3420, !tbaa !983
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !3421
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !3422

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !3423

if.else.19:                                       ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3425, !tbaa !938
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3427
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !3427, !tbaa !1040
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3428
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !3428, !tbaa !1299
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3429, !tbaa !938
  call void %26(%struct._object* %27), !dbg !3430
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3431
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3431
  br label %do.cond.23, !dbg !3433

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !3434

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !3436

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %29 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !3438
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3438
  br label %do.end.27, !dbg !3439

do.end.27:                                        ; preds = %if.end.25
  ret i32 0, !dbg !3440
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sm_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %sm = alloca %struct.staticmethod*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !883, metadata !942), !dbg !3441
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !884, metadata !942), !dbg !3442
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !885, metadata !942), !dbg !3443
  %0 = bitcast %struct.staticmethod** %sm to i8*, !dbg !3444
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3444
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm, metadata !886, metadata !942), !dbg !3445
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3446, !tbaa !938
  %2 = bitcast %struct._object* %1 to %struct.staticmethod*, !dbg !3447
  store %struct.staticmethod* %2, %struct.staticmethod** %sm, align 8, !dbg !3445, !tbaa !938
  %3 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3448, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %3, i32 0, i32 1, !dbg !3450
  %4 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !3450, !tbaa !2847
  %cmp = icmp eq %struct._object* %4, null, !dbg !3451
  br i1 %cmp, label %if.then, label %if.end, !dbg !3452

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3453, !tbaa !938
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0)), !dbg !3455
  store %struct._object* null, %struct._object** %retval, !dbg !3456
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3456

if.end:                                           ; preds = %entry
  %6 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3457, !tbaa !938
  %sm_callable1 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %6, i32 0, i32 1, !dbg !3458
  %7 = load %struct._object*, %struct._object** %sm_callable1, align 8, !dbg !3458, !tbaa !2847
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !3459
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !3460, !tbaa !983
  %inc = add i64 %8, 1, !dbg !3460
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3460, !tbaa !983
  %9 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3461, !tbaa !938
  %sm_callable2 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %9, i32 0, i32 1, !dbg !3462
  %10 = load %struct._object*, %struct._object** %sm_callable2, align 8, !dbg !3462, !tbaa !2847
  store %struct._object* %10, %struct._object** %retval, !dbg !3463
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3463

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.staticmethod** %sm to i8*, !dbg !3464
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !3464
  %12 = load %struct._object*, %struct._object** %retval, !dbg !3464
  ret %struct._object* %12, !dbg !3464
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %sm = alloca %struct.staticmethod*, align 8
  %callable = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !889, metadata !942), !dbg !3465
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !890, metadata !942), !dbg !3466
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !891, metadata !942), !dbg !3467
  %0 = bitcast %struct.staticmethod** %sm to i8*, !dbg !3468
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3468
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm, metadata !892, metadata !942), !dbg !3469
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3470, !tbaa !938
  %2 = bitcast %struct._object* %1 to %struct.staticmethod*, !dbg !3471
  store %struct.staticmethod* %2, %struct.staticmethod** %sm, align 8, !dbg !3469, !tbaa !938
  %3 = bitcast %struct._object** %callable to i8*, !dbg !3472
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3472
  call void @llvm.dbg.declare(metadata %struct._object** %callable, metadata !893, metadata !942), !dbg !3473
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3474, !tbaa !938
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 1, %struct._object** %callable), !dbg !3476
  %tobool = icmp ne i32 %call, 0, !dbg !3476
  br i1 %tobool, label %if.end, label %if.then, !dbg !3477

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3478
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3478

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3479, !tbaa !938
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._object* %5), !dbg !3481
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3481
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !3482

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !3483
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3483

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %callable, align 8, !dbg !3484, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !3485
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3486, !tbaa !983
  %inc = add i64 %7, 1, !dbg !3486
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3486, !tbaa !983
  %8 = load %struct._object*, %struct._object** %callable, align 8, !dbg !3487, !tbaa !938
  %9 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3488, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %9, i32 0, i32 1, !dbg !3489
  store %struct._object* %8, %struct._object** %sm_callable, align 8, !dbg !3490, !tbaa !2847
  store i32 0, i32* %retval, !dbg !3491
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3491

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %10 = bitcast %struct._object** %callable to i8*, !dbg !3492
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3492
  %11 = bitcast %struct.staticmethod** %sm to i8*, !dbg !3492
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !3492
  %12 = load i32, i32* %retval, !dbg !3492
  ret i32 %12, !dbg !3492
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyStaticMethod_New(%struct._object* %callable) #0 {
entry:
  %callable.addr = alloca %struct._object*, align 8
  %sm = alloca %struct.staticmethod*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %callable.addr, metadata !511, metadata !942), !dbg !3493
  %0 = bitcast %struct.staticmethod** %sm to i8*, !dbg !3494
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3494
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm, metadata !512, metadata !942), !dbg !3495
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyStaticMethod_Type to %struct._typeobject*), i64 0), !dbg !3496
  %1 = bitcast %struct._object* %call to %struct.staticmethod*, !dbg !3497
  store %struct.staticmethod* %1, %struct.staticmethod** %sm, align 8, !dbg !3495, !tbaa !938
  %2 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3498, !tbaa !938
  %cmp = icmp ne %struct.staticmethod* %2, null, !dbg !3500
  br i1 %cmp, label %if.then, label %if.end, !dbg !3501

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !3502, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !3504
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !3505, !tbaa !983
  %inc = add i64 %4, 1, !dbg !3505
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3505, !tbaa !983
  %5 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !3506, !tbaa !938
  %6 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3507, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %6, i32 0, i32 1, !dbg !3508
  store %struct._object* %5, %struct._object** %sm_callable, align 8, !dbg !3509, !tbaa !2847
  br label %if.end, !dbg !3510

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8, !dbg !3511, !tbaa !938
  %8 = bitcast %struct.staticmethod* %7 to %struct._object*, !dbg !3512
  %9 = bitcast %struct.staticmethod** %sm to i8*, !dbg !3513
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !3513
  ret %struct._object* %8, !dbg !3514
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare i64 @PyDict_Size(%struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare %struct._object* @PyEval_EvalCodeEx(%struct._object*, %struct._object*, %struct._object*, %struct._object**, i32, %struct._object**, i32, %struct._object**, i32, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_code(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !646, metadata !942), !dbg !3515
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3516, !tbaa !938
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 1, !dbg !3517
  %1 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !3517, !tbaa !988
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !3518
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3519, !tbaa !983
  %inc = add i64 %2, 1, !dbg !3519
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3519, !tbaa !983
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3520, !tbaa !938
  %func_code1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 1, !dbg !3521
  %4 = load %struct._object*, %struct._object** %func_code1, align 8, !dbg !3521, !tbaa !988
  ret %struct._object* %4, !dbg !3522
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_code(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %nfree = alloca i64, align 8
  %nclosure = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !651, metadata !942), !dbg !3523
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !652, metadata !942), !dbg !3524
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !3525
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3525
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !653, metadata !942), !dbg !3526
  %1 = bitcast i64* %nfree to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3527
  call void @llvm.dbg.declare(metadata i64* %nfree, metadata !654, metadata !942), !dbg !3528
  %2 = bitcast i64* %nclosure to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3527
  call void @llvm.dbg.declare(metadata i64* %nclosure, metadata !655, metadata !942), !dbg !3529
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3530, !tbaa !938
  %cmp = icmp eq %struct._object* %3, null, !dbg !3532
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3533

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3534, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3536
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3536, !tbaa !1040
  %cmp3 = icmp eq %struct._typeobject* %5, @PyCode_Type, !dbg !3537
  br i1 %cmp3, label %if.end, label %if.then, !dbg !3538

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3539, !tbaa !938
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0)), !dbg !3541
  store i32 -1, i32* %retval, !dbg !3542
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3542

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3543, !tbaa !938
  %8 = bitcast %struct._object* %7 to %struct.PyCodeObject*, !dbg !3544
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %8, i32 0, i32 10, !dbg !3545
  %9 = load %struct._object*, %struct._object** %co_freevars, align 8, !dbg !3545, !tbaa !2620
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*, !dbg !3546
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1, !dbg !3547
  %11 = load i64, i64* %ob_size, align 8, !dbg !3547, !tbaa !2089
  store i64 %11, i64* %nfree, align 8, !dbg !3548, !tbaa !2091
  %12 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3549, !tbaa !938
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %12, i32 0, i32 5, !dbg !3550
  %13 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !3550, !tbaa !1022
  %cmp4 = icmp eq %struct._object* %13, null, !dbg !3551
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3549

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3552

cond.false:                                       ; preds = %if.end
  %14 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3554, !tbaa !938
  %func_closure5 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %14, i32 0, i32 5, !dbg !3555
  %15 = load %struct._object*, %struct._object** %func_closure5, align 8, !dbg !3555, !tbaa !1022
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*, !dbg !3556
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1, !dbg !3557
  %17 = load i64, i64* %ob_size6, align 8, !dbg !3557, !tbaa !2089
  br label %cond.end, !dbg !3549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %17, %cond.false ], !dbg !3549
  store i64 %cond, i64* %nclosure, align 8, !dbg !3558, !tbaa !2091
  %18 = load i64, i64* %nclosure, align 8, !dbg !3561, !tbaa !2091
  %19 = load i64, i64* %nfree, align 8, !dbg !3563, !tbaa !2091
  %cmp7 = icmp ne i64 %18, %19, !dbg !3564
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3565

if.then.8:                                        ; preds = %cond.end
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3566, !tbaa !938
  %21 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3568, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %21, i32 0, i32 7, !dbg !3569
  %22 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !3569, !tbaa !1006
  %23 = load i64, i64* %nclosure, align 8, !dbg !3570, !tbaa !2091
  %24 = load i64, i64* %nfree, align 8, !dbg !3571, !tbaa !2091
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), %struct._object* %22, i64 %23, i64 %24), !dbg !3572
  store i32 -1, i32* %retval, !dbg !3573
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3573

if.end.9:                                         ; preds = %cond.end
  %25 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3574, !tbaa !938
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %25, i32 0, i32 1, !dbg !3575
  %26 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !3575, !tbaa !988
  store %struct._object* %26, %struct._object** %tmp, align 8, !dbg !3576, !tbaa !938
  %27 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3577, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !3578
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !3579, !tbaa !983
  %inc = add i64 %28, 1, !dbg !3579
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3579, !tbaa !983
  %29 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3580, !tbaa !938
  %30 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3581, !tbaa !938
  %func_code10 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %30, i32 0, i32 1, !dbg !3582
  store %struct._object* %29, %struct._object** %func_code10, align 8, !dbg !3583, !tbaa !988
  br label %do.body, !dbg !3584

do.body:                                          ; preds = %if.end.9
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3585
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !3585
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !656, metadata !942), !dbg !3587
  %32 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3588, !tbaa !938
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8, !dbg !3587, !tbaa !938
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3589, !tbaa !938
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !3591
  %34 = load i64, i64* %ob_refcnt12, align 8, !dbg !3592, !tbaa !983
  %dec = add i64 %34, -1, !dbg !3592
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !3592, !tbaa !983
  %cmp13 = icmp ne i64 %dec, 0, !dbg !3593
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !3594

if.then.14:                                       ; preds = %do.body
  br label %if.end.16, !dbg !3595

if.else:                                          ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3597, !tbaa !938
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !3599
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !3599, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !3600
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3600, !tbaa !1299
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3601, !tbaa !938
  call void %37(%struct._object* %38), !dbg !3602
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  %39 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3603
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !3603
  br label %do.cond, !dbg !3605

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !3606

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !3608
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3608

cleanup:                                          ; preds = %do.end, %if.then.8, %if.then
  %40 = bitcast i64* %nclosure to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3609
  %41 = bitcast i64* %nfree to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3609
  %42 = bitcast %struct._object** %tmp to i8*, !dbg !3609
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3609
  %43 = load i32, i32* %retval, !dbg !3609
  ret i32 %43, !dbg !3609
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_defaults(%struct.PyFunctionObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !660, metadata !942), !dbg !3610
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3611, !tbaa !938
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 3, !dbg !3613
  %1 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !3613, !tbaa !1014
  %cmp = icmp eq %struct._object* %1, null, !dbg !3614
  br i1 %cmp, label %if.then, label %if.end, !dbg !3615

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3616, !tbaa !983
  %inc = add i64 %2, 1, !dbg !3616
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3616, !tbaa !983
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3618
  br label %return, !dbg !3618

if.end:                                           ; preds = %entry
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3619, !tbaa !938
  %func_defaults1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 3, !dbg !3620
  %4 = load %struct._object*, %struct._object** %func_defaults1, align 8, !dbg !3620, !tbaa !1014
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !3621
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !3622, !tbaa !983
  %inc2 = add i64 %5, 1, !dbg !3622
  store i64 %inc2, i64* %ob_refcnt, align 8, !dbg !3622, !tbaa !983
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3623, !tbaa !938
  %func_defaults3 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 3, !dbg !3624
  %7 = load %struct._object*, %struct._object** %func_defaults3, align 8, !dbg !3624, !tbaa !1014
  store %struct._object* %7, %struct._object** %retval, !dbg !3625
  br label %return, !dbg !3625

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !3626
  ret %struct._object* %8, !dbg !3626
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_defaults(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !663, metadata !942), !dbg !3627
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !664, metadata !942), !dbg !3628
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !3629
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3629
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !665, metadata !942), !dbg !3630
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3631, !tbaa !938
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !3633
  br i1 %cmp, label %if.then, label %if.end, !dbg !3634

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %value.addr, align 8, !dbg !3635, !tbaa !938
  br label %if.end, !dbg !3636

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3637, !tbaa !938
  %cmp1 = icmp ne %struct._object* %2, null, !dbg !3639
  br i1 %cmp1, label %land.lhs.true, label %if.end.4, !dbg !3640

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3641, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3643
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3643, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !3644
  %5 = load i64, i64* %tp_flags, align 8, !dbg !3644, !tbaa !1042
  %and = and i64 %5, 67108864, !dbg !3645
  %cmp2 = icmp ne i64 %and, 0, !dbg !3646
  br i1 %cmp2, label %if.end.4, label %if.then.3, !dbg !3647

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3648, !tbaa !938
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0)), !dbg !3650
  store i32 -1, i32* %retval, !dbg !3651
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3651

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3652, !tbaa !938
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %7, i32 0, i32 3, !dbg !3653
  %8 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !3653, !tbaa !1014
  store %struct._object* %8, %struct._object** %tmp, align 8, !dbg !3654, !tbaa !938
  br label %do.body, !dbg !3655

do.body:                                          ; preds = %if.end.4
  %9 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3656
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3656
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !666, metadata !942), !dbg !3658
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3659, !tbaa !938
  store %struct._object* %10, %struct._object** %_py_xincref_tmp, align 8, !dbg !3658, !tbaa !938
  %11 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3660, !tbaa !938
  %cmp6 = icmp ne %struct._object* %11, null, !dbg !3662
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3663

if.then.7:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3664, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3666
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3667, !tbaa !983
  %inc = add i64 %13, 1, !dbg !3667
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3667, !tbaa !983
  br label %if.end.8, !dbg !3668

if.end.8:                                         ; preds = %if.then.7, %do.body
  %14 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3669
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3669
  br label %do.cond, !dbg !3672

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !3673

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3675, !tbaa !938
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3676, !tbaa !938
  %func_defaults9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 3, !dbg !3677
  store %struct._object* %15, %struct._object** %func_defaults9, align 8, !dbg !3678, !tbaa !1014
  br label %do.body.10, !dbg !3679

do.body.10:                                       ; preds = %do.end
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3680
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !3680
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !668, metadata !942), !dbg !3682
  %18 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3683, !tbaa !938
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3682, !tbaa !938
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3684, !tbaa !938
  %cmp12 = icmp ne %struct._object* %19, null, !dbg !3685
  br i1 %cmp12, label %if.then.13, label %if.end.23, !dbg !3686

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14, !dbg !3687

do.body.14:                                       ; preds = %if.then.13
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3689
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3689
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !670, metadata !942), !dbg !3691
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3692, !tbaa !938
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !3691, !tbaa !938
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3693, !tbaa !938
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3695
  %23 = load i64, i64* %ob_refcnt16, align 8, !dbg !3696, !tbaa !983
  %dec = add i64 %23, -1, !dbg !3696
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !3696, !tbaa !983
  %cmp17 = icmp ne i64 %dec, 0, !dbg !3697
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !3698

if.then.18:                                       ; preds = %do.body.14
  br label %if.end.20, !dbg !3699

if.else:                                          ; preds = %do.body.14
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3701, !tbaa !938
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3703
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !3703, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3704
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3704, !tbaa !1299
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3705, !tbaa !938
  call void %26(%struct._object* %27), !dbg !3706
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3707
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3707
  br label %do.cond.21, !dbg !3709

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !3710

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !3712

if.end.23:                                        ; preds = %do.end.22, %do.body.10
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3714
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3714
  br label %do.cond.24, !dbg !3716

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !3717

do.end.25:                                        ; preds = %do.cond.24
  store i32 0, i32* %retval, !dbg !3719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3719

cleanup:                                          ; preds = %do.end.25, %if.then.3
  %30 = bitcast %struct._object** %tmp to i8*, !dbg !3720
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3720
  %31 = load i32, i32* %retval, !dbg !3720
  ret i32 %31, !dbg !3720
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_kwdefaults(%struct.PyFunctionObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !675, metadata !942), !dbg !3721
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3722, !tbaa !938
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 4, !dbg !3724
  %1 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !3724, !tbaa !1018
  %cmp = icmp eq %struct._object* %1, null, !dbg !3725
  br i1 %cmp, label %if.then, label %if.end, !dbg !3726

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3727, !tbaa !983
  %inc = add i64 %2, 1, !dbg !3727
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3727, !tbaa !983
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3729
  br label %return, !dbg !3729

if.end:                                           ; preds = %entry
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3730, !tbaa !938
  %func_kwdefaults1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 4, !dbg !3731
  %4 = load %struct._object*, %struct._object** %func_kwdefaults1, align 8, !dbg !3731, !tbaa !1018
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !3732
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !3733, !tbaa !983
  %inc2 = add i64 %5, 1, !dbg !3733
  store i64 %inc2, i64* %ob_refcnt, align 8, !dbg !3733, !tbaa !983
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3734, !tbaa !938
  %func_kwdefaults3 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 4, !dbg !3735
  %7 = load %struct._object*, %struct._object** %func_kwdefaults3, align 8, !dbg !3735, !tbaa !1018
  store %struct._object* %7, %struct._object** %retval, !dbg !3736
  br label %return, !dbg !3736

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !3737
  ret %struct._object* %8, !dbg !3737
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_kwdefaults(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !678, metadata !942), !dbg !3738
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !679, metadata !942), !dbg !3739
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !3740
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3740
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !680, metadata !942), !dbg !3741
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3742, !tbaa !938
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !3744
  br i1 %cmp, label %if.then, label %if.end, !dbg !3745

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %value.addr, align 8, !dbg !3746, !tbaa !938
  br label %if.end, !dbg !3747

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3748, !tbaa !938
  %cmp1 = icmp ne %struct._object* %2, null, !dbg !3750
  br i1 %cmp1, label %land.lhs.true, label %if.end.4, !dbg !3751

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3752, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3754
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3754, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !3755
  %5 = load i64, i64* %tp_flags, align 8, !dbg !3755, !tbaa !1042
  %and = and i64 %5, 536870912, !dbg !3756
  %cmp2 = icmp ne i64 %and, 0, !dbg !3757
  br i1 %cmp2, label %if.end.4, label %if.then.3, !dbg !3758

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3759, !tbaa !938
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0)), !dbg !3761
  store i32 -1, i32* %retval, !dbg !3762
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3762

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3763, !tbaa !938
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %7, i32 0, i32 4, !dbg !3764
  %8 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !3764, !tbaa !1018
  store %struct._object* %8, %struct._object** %tmp, align 8, !dbg !3765, !tbaa !938
  br label %do.body, !dbg !3766

do.body:                                          ; preds = %if.end.4
  %9 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3767
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3767
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !681, metadata !942), !dbg !3769
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3770, !tbaa !938
  store %struct._object* %10, %struct._object** %_py_xincref_tmp, align 8, !dbg !3769, !tbaa !938
  %11 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3771, !tbaa !938
  %cmp6 = icmp ne %struct._object* %11, null, !dbg !3773
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3774

if.then.7:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3775, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3777
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3778, !tbaa !983
  %inc = add i64 %13, 1, !dbg !3778
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3778, !tbaa !983
  br label %if.end.8, !dbg !3779

if.end.8:                                         ; preds = %if.then.7, %do.body
  %14 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3780
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3780
  br label %do.cond, !dbg !3783

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !3784

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3786, !tbaa !938
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3787, !tbaa !938
  %func_kwdefaults9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 4, !dbg !3788
  store %struct._object* %15, %struct._object** %func_kwdefaults9, align 8, !dbg !3789, !tbaa !1018
  br label %do.body.10, !dbg !3790

do.body.10:                                       ; preds = %do.end
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3791
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !3791
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !683, metadata !942), !dbg !3793
  %18 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3794, !tbaa !938
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3793, !tbaa !938
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3795, !tbaa !938
  %cmp12 = icmp ne %struct._object* %19, null, !dbg !3796
  br i1 %cmp12, label %if.then.13, label %if.end.23, !dbg !3797

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14, !dbg !3798

do.body.14:                                       ; preds = %if.then.13
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3800
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3800
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !685, metadata !942), !dbg !3802
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3803, !tbaa !938
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !3802, !tbaa !938
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3804, !tbaa !938
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3806
  %23 = load i64, i64* %ob_refcnt16, align 8, !dbg !3807, !tbaa !983
  %dec = add i64 %23, -1, !dbg !3807
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !3807, !tbaa !983
  %cmp17 = icmp ne i64 %dec, 0, !dbg !3808
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !3809

if.then.18:                                       ; preds = %do.body.14
  br label %if.end.20, !dbg !3810

if.else:                                          ; preds = %do.body.14
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3812, !tbaa !938
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3814
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !3814, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3815
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3815, !tbaa !1299
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3816, !tbaa !938
  call void %26(%struct._object* %27), !dbg !3817
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3818
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3818
  br label %do.cond.21, !dbg !3820

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !3821

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !3823

if.end.23:                                        ; preds = %do.end.22, %do.body.10
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3825
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3825
  br label %do.cond.24, !dbg !3827

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !3828

do.end.25:                                        ; preds = %do.cond.24
  store i32 0, i32* %retval, !dbg !3830
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3830

cleanup:                                          ; preds = %do.end.25, %if.then.3
  %30 = bitcast %struct._object** %tmp to i8*, !dbg !3831
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3831
  %31 = load i32, i32* %retval, !dbg !3831
  ret i32 %31, !dbg !3831
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_annotations(%struct.PyFunctionObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !690, metadata !942), !dbg !3832
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3833, !tbaa !938
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 11, !dbg !3835
  %1 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !3835, !tbaa !1071
  %cmp = icmp eq %struct._object* %1, null, !dbg !3836
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3837

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New(), !dbg !3838
  %2 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3840, !tbaa !938
  %func_annotations1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %2, i32 0, i32 11, !dbg !3841
  store %struct._object* %call, %struct._object** %func_annotations1, align 8, !dbg !3842, !tbaa !1071
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3843, !tbaa !938
  %func_annotations2 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 11, !dbg !3845
  %4 = load %struct._object*, %struct._object** %func_annotations2, align 8, !dbg !3845, !tbaa !1071
  %cmp3 = icmp eq %struct._object* %4, null, !dbg !3846
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3847

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3848
  br label %return, !dbg !3848

if.end:                                           ; preds = %if.then
  br label %if.end.5, !dbg !3849

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3850, !tbaa !938
  %func_annotations6 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %5, i32 0, i32 11, !dbg !3851
  %6 = load %struct._object*, %struct._object** %func_annotations6, align 8, !dbg !3851, !tbaa !1071
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !3852
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3853, !tbaa !983
  %inc = add i64 %7, 1, !dbg !3853
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3853, !tbaa !983
  %8 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3854, !tbaa !938
  %func_annotations7 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %8, i32 0, i32 11, !dbg !3855
  %9 = load %struct._object*, %struct._object** %func_annotations7, align 8, !dbg !3855, !tbaa !1071
  store %struct._object* %9, %struct._object** %retval, !dbg !3856
  br label %return, !dbg !3856

return:                                           ; preds = %if.end.5, %if.then.4
  %10 = load %struct._object*, %struct._object** %retval, !dbg !3857
  ret %struct._object* %10, !dbg !3857
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_annotations(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !693, metadata !942), !dbg !3858
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !694, metadata !942), !dbg !3859
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !3860
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3860
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !695, metadata !942), !dbg !3861
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3862, !tbaa !938
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !3864
  br i1 %cmp, label %if.then, label %if.end, !dbg !3865

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %value.addr, align 8, !dbg !3866, !tbaa !938
  br label %if.end, !dbg !3867

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3868, !tbaa !938
  %cmp1 = icmp ne %struct._object* %2, null, !dbg !3870
  br i1 %cmp1, label %land.lhs.true, label %if.end.4, !dbg !3871

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3872, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3874
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3874, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !3875
  %5 = load i64, i64* %tp_flags, align 8, !dbg !3875, !tbaa !1042
  %and = and i64 %5, 536870912, !dbg !3876
  %cmp2 = icmp ne i64 %and, 0, !dbg !3877
  br i1 %cmp2, label %if.end.4, label %if.then.3, !dbg !3878

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3879, !tbaa !938
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0)), !dbg !3881
  store i32 -1, i32* %retval, !dbg !3882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3882

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3883, !tbaa !938
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %7, i32 0, i32 11, !dbg !3884
  %8 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !3884, !tbaa !1071
  store %struct._object* %8, %struct._object** %tmp, align 8, !dbg !3885, !tbaa !938
  br label %do.body, !dbg !3886

do.body:                                          ; preds = %if.end.4
  %9 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3887
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3887
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !696, metadata !942), !dbg !3889
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3890, !tbaa !938
  store %struct._object* %10, %struct._object** %_py_xincref_tmp, align 8, !dbg !3889, !tbaa !938
  %11 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3891, !tbaa !938
  %cmp6 = icmp ne %struct._object* %11, null, !dbg !3893
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3894

if.then.7:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3895, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3897
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3898, !tbaa !983
  %inc = add i64 %13, 1, !dbg !3898
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3898, !tbaa !983
  br label %if.end.8, !dbg !3899

if.end.8:                                         ; preds = %if.then.7, %do.body
  %14 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3900
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3900
  br label %do.cond, !dbg !3903

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !3904

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3906, !tbaa !938
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3907, !tbaa !938
  %func_annotations9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 11, !dbg !3908
  store %struct._object* %15, %struct._object** %func_annotations9, align 8, !dbg !3909, !tbaa !1071
  br label %do.body.10, !dbg !3910

do.body.10:                                       ; preds = %do.end
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3911
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !3911
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !698, metadata !942), !dbg !3913
  %18 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3914, !tbaa !938
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3913, !tbaa !938
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3915, !tbaa !938
  %cmp12 = icmp ne %struct._object* %19, null, !dbg !3916
  br i1 %cmp12, label %if.then.13, label %if.end.23, !dbg !3917

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14, !dbg !3918

do.body.14:                                       ; preds = %if.then.13
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3920
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3920
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !700, metadata !942), !dbg !3922
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3923, !tbaa !938
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !3922, !tbaa !938
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3924, !tbaa !938
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3926
  %23 = load i64, i64* %ob_refcnt16, align 8, !dbg !3927, !tbaa !983
  %dec = add i64 %23, -1, !dbg !3927
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !3927, !tbaa !983
  %cmp17 = icmp ne i64 %dec, 0, !dbg !3928
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !3929

if.then.18:                                       ; preds = %do.body.14
  br label %if.end.20, !dbg !3930

if.else:                                          ; preds = %do.body.14
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3932, !tbaa !938
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3934
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !3934, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3935
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3935, !tbaa !1299
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3936, !tbaa !938
  call void %26(%struct._object* %27), !dbg !3937
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3938
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3938
  br label %do.cond.21, !dbg !3940

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !3941

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !3943

if.end.23:                                        ; preds = %do.end.22, %do.body.10
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3945
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3945
  br label %do.cond.24, !dbg !3947

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !3948

do.end.25:                                        ; preds = %do.cond.24
  store i32 0, i32* %retval, !dbg !3950
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3950

cleanup:                                          ; preds = %do.end.25, %if.then.3
  %30 = bitcast %struct._object** %tmp to i8*, !dbg !3951
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3951
  %31 = load i32, i32* %retval, !dbg !3951
  ret i32 %31, !dbg !3951
}

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #3

declare i32 @PyObject_GenericSetDict(%struct._object*, %struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_name(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !705, metadata !942), !dbg !3952
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3953, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 7, !dbg !3954
  %1 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !3954, !tbaa !1006
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !3955
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3956, !tbaa !983
  %inc = add i64 %2, 1, !dbg !3956
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3956, !tbaa !983
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3957, !tbaa !938
  %func_name1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 7, !dbg !3958
  %4 = load %struct._object*, %struct._object** %func_name1, align 8, !dbg !3958, !tbaa !1006
  ret %struct._object* %4, !dbg !3959
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_name(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !708, metadata !942), !dbg !3960
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !709, metadata !942), !dbg !3961
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !3962
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3962
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !710, metadata !942), !dbg !3963
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3964, !tbaa !938
  %cmp = icmp eq %struct._object* %1, null, !dbg !3966
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3967

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3968, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3970
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3970, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !3971
  %4 = load i64, i64* %tp_flags, align 8, !dbg !3971, !tbaa !1042
  %and = and i64 %4, 268435456, !dbg !3972
  %cmp1 = icmp ne i64 %and, 0, !dbg !3973
  br i1 %cmp1, label %if.end, label %if.then, !dbg !3974

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3975, !tbaa !938
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0)), !dbg !3977
  store i32 -1, i32* %retval, !dbg !3978
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3978

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3979, !tbaa !938
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 7, !dbg !3980
  %7 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !3980, !tbaa !1006
  store %struct._object* %7, %struct._object** %tmp, align 8, !dbg !3981, !tbaa !938
  %8 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3982, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3983
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3984, !tbaa !983
  %inc = add i64 %9, 1, !dbg !3984
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3984, !tbaa !983
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3985, !tbaa !938
  %11 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !3986, !tbaa !938
  %func_name2 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 7, !dbg !3987
  store %struct._object* %10, %struct._object** %func_name2, align 8, !dbg !3988, !tbaa !1006
  br label %do.body, !dbg !3989

do.body:                                          ; preds = %if.end
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3990
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !3990
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !711, metadata !942), !dbg !3992
  %13 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3993, !tbaa !938
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !3992, !tbaa !938
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3994, !tbaa !938
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !3996
  %15 = load i64, i64* %ob_refcnt4, align 8, !dbg !3997, !tbaa !983
  %dec = add i64 %15, -1, !dbg !3997
  store i64 %dec, i64* %ob_refcnt4, align 8, !dbg !3997, !tbaa !983
  %cmp5 = icmp ne i64 %dec, 0, !dbg !3998
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !3999

if.then.6:                                        ; preds = %do.body
  br label %if.end.8, !dbg !4000

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4002, !tbaa !938
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !4004
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4004, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !4005
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4005, !tbaa !1299
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4006, !tbaa !938
  call void %18(%struct._object* %19), !dbg !4007
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4008
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !4008
  br label %do.cond, !dbg !4010

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !4011

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !4013
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4013

cleanup:                                          ; preds = %do.end, %if.then
  %21 = bitcast %struct._object** %tmp to i8*, !dbg !4014
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !4014
  %22 = load i32, i32* %retval, !dbg !4014
  ret i32 %22, !dbg !4014
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_qualname(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !715, metadata !942), !dbg !4015
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !4016, !tbaa !938
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 12, !dbg !4017
  %1 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !4017, !tbaa !1095
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !4018
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !4019, !tbaa !983
  %inc = add i64 %2, 1, !dbg !4019
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4019, !tbaa !983
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !4020, !tbaa !938
  %func_qualname1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 12, !dbg !4021
  %4 = load %struct._object*, %struct._object** %func_qualname1, align 8, !dbg !4021, !tbaa !1095
  ret %struct._object* %4, !dbg !4022
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_qualname(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.PyFunctionObject** %op.addr, metadata !718, metadata !942), !dbg !4023
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !719, metadata !942), !dbg !4024
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !4025
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4025
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !720, metadata !942), !dbg !4026
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4027, !tbaa !938
  %cmp = icmp eq %struct._object* %1, null, !dbg !4029
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4030

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4031, !tbaa !938
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4033
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4033, !tbaa !1040
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !4034
  %4 = load i64, i64* %tp_flags, align 8, !dbg !4034, !tbaa !1042
  %and = and i64 %4, 268435456, !dbg !4035
  %cmp1 = icmp ne i64 %and, 0, !dbg !4036
  br i1 %cmp1, label %if.end, label %if.then, !dbg !4037

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4038, !tbaa !938
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0)), !dbg !4040
  store i32 -1, i32* %retval, !dbg !4041
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4041

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !4042, !tbaa !938
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 12, !dbg !4043
  %7 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !4043, !tbaa !1095
  store %struct._object* %7, %struct._object** %tmp, align 8, !dbg !4044, !tbaa !938
  %8 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4045, !tbaa !938
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4046
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4047, !tbaa !983
  %inc = add i64 %9, 1, !dbg !4047
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4047, !tbaa !983
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4048, !tbaa !938
  %11 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8, !dbg !4049, !tbaa !938
  %func_qualname2 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 12, !dbg !4050
  store %struct._object* %10, %struct._object** %func_qualname2, align 8, !dbg !4051, !tbaa !1095
  br label %do.body, !dbg !4052

do.body:                                          ; preds = %if.end
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4053
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !4053
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !721, metadata !942), !dbg !4055
  %13 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4056, !tbaa !938
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !4055, !tbaa !938
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4057, !tbaa !938
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !4059
  %15 = load i64, i64* %ob_refcnt4, align 8, !dbg !4060, !tbaa !983
  %dec = add i64 %15, -1, !dbg !4060
  store i64 %dec, i64* %ob_refcnt4, align 8, !dbg !4060, !tbaa !983
  %cmp5 = icmp ne i64 %dec, 0, !dbg !4061
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !4062

if.then.6:                                        ; preds = %do.body
  br label %if.end.8, !dbg !4063

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4065, !tbaa !938
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !4067
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4067, !tbaa !1040
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !4068
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4068, !tbaa !1299
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4069, !tbaa !938
  call void %18(%struct._object* %19), !dbg !4070
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4071
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !4071
  br label %do.cond, !dbg !4073

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !4074

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !4076
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4076

cleanup:                                          ; preds = %do.end, %if.then
  %21 = bitcast %struct._object** %tmp to i8*, !dbg !4077
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !4077
  %22 = load i32, i32* %retval, !dbg !4077
  ret i32 %22, !dbg !4077
}

declare %struct._object* @PyDict_New() #3

declare %struct._object* @PyMethod_New(%struct._object*, %struct._object*) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @cm_get___isabstractmethod__(%struct.classmethod* %cm, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cm.addr = alloca %struct.classmethod*, align 8
  %closure.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.classmethod** %cm.addr, metadata !809, metadata !942), !dbg !4078
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !810, metadata !942), !dbg !4079
  %0 = bitcast i32* %res to i8*, !dbg !4080
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !4080
  call void @llvm.dbg.declare(metadata i32* %res, metadata !811, metadata !942), !dbg !4081
  %1 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8, !dbg !4082, !tbaa !938
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %1, i32 0, i32 1, !dbg !4083
  %2 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !4083, !tbaa !2847
  %call = call i32 @_PyObject_IsAbstract(%struct._object* %2), !dbg !4084
  store i32 %call, i32* %res, align 4, !dbg !4081, !tbaa !2244
  %3 = load i32, i32* %res, align 4, !dbg !4085, !tbaa !2244
  %cmp = icmp eq i32 %3, -1, !dbg !4087
  br i1 %cmp, label %if.then, label %if.else, !dbg !4088

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4089
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4089

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %res, align 4, !dbg !4091, !tbaa !2244
  %tobool = icmp ne i32 %4, 0, !dbg !4091
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !4093

if.then.1:                                        ; preds = %if.else
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4094, !tbaa !983
  %inc = add i64 %5, 1, !dbg !4094
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4094, !tbaa !983
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4096

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4097, !tbaa !983
  %inc3 = add i64 %6, 1, !dbg !4097
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4097, !tbaa !983
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4098

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %7 = bitcast i32* %res to i8*, !dbg !4099
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !4099
  %8 = load %struct._object*, %struct._object** %retval, !dbg !4099
  ret %struct._object* %8, !dbg !4099
}

declare i32 @_PyObject_IsAbstract(%struct._object*) #3

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @sm_get___isabstractmethod__(%struct.staticmethod* %sm, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %sm.addr = alloca %struct.staticmethod*, align 8
  %closure.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata %struct.staticmethod** %sm.addr, metadata !878, metadata !942), !dbg !4100
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !938
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !879, metadata !942), !dbg !4101
  %0 = bitcast i32* %res to i8*, !dbg !4102
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !4102
  call void @llvm.dbg.declare(metadata i32* %res, metadata !880, metadata !942), !dbg !4103
  %1 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8, !dbg !4104, !tbaa !938
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %1, i32 0, i32 1, !dbg !4105
  %2 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !4105, !tbaa !2847
  %call = call i32 @_PyObject_IsAbstract(%struct._object* %2), !dbg !4106
  store i32 %call, i32* %res, align 4, !dbg !4103, !tbaa !2244
  %3 = load i32, i32* %res, align 4, !dbg !4107, !tbaa !2244
  %cmp = icmp eq i32 %3, -1, !dbg !4109
  br i1 %cmp, label %if.then, label %if.else, !dbg !4110

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4111
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4111

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %res, align 4, !dbg !4113, !tbaa !2244
  %tobool = icmp ne i32 %4, 0, !dbg !4113
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !4115

if.then.1:                                        ; preds = %if.else
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4116, !tbaa !983
  %inc = add i64 %5, 1, !dbg !4116
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4116, !tbaa !983
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4118

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4119, !tbaa !983
  %inc3 = add i64 %6, 1, !dbg !4119
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !4119, !tbaa !983
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !4120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4120

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %7 = bitcast i32* %res to i8*, !dbg !4121
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !4121
  %8 = load %struct._object*, %struct._object** %retval, !dbg !4121
  ret %struct._object* %8, !dbg !4121
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!935, !936}
!llvm.ident = !{!937}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !432, globals: !894)
!1 = !DIFile(filename: "funcobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !44, !368, !394, !100, !408, !416, !423, !431}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFunctionObject", file: !7, line: 41, baseType: !8)
!7 = !DIFile(filename: "Include/funcobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 21, size: 896, align: 64, elements: !9)
!9 = !{!10, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !8, file: !7, line: 22, baseType: !11, size: 128, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !12, line: 109, baseType: !13)
!12 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !12, line: 105, size: 128, align: 64, elements: !14)
!14 = !{!15, !23}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !13, file: !12, line: 107, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !17, line: 177, baseType: !18)
!17 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 102, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 181, baseType: !22)
!21 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !13, file: !12, line: 108, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !12, line: 334, size: 3200, align: 64, elements: !26)
!26 = !{!27, !33, !37, !38, !39, !45, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !304, !322, !323, !324, !326, !328, !329, !331, !336, !341, !346, !347, !348, !349, !350, !351, !352, !353, !355}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !25, file: !12, line: 335, baseType: !28, size: 192, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !12, line: 114, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 111, size: 192, align: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !29, file: !12, line: 112, baseType: !11, size: 128, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !29, file: !12, line: 113, baseType: !16, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !25, file: !12, line: 336, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !25, file: !12, line: 337, baseType: !16, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !25, file: !12, line: 337, baseType: !16, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !25, file: !12, line: 341, baseType: !40, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !12, line: 308, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !25, file: !12, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !12, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !44, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !19, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !96, !97, !98, !99, !103, !104}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 247, baseType: !50, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 252, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 253, baseType: !58, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 254, baseType: !58, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 255, baseType: !58, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 256, baseType: !58, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 257, baseType: !58, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 258, baseType: !58, size: 64, align: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 259, baseType: !58, size: 64, align: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 261, baseType: !58, size: 64, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 262, baseType: !58, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 263, baseType: !58, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 265, baseType: !70, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 161, size: 192, align: 64, elements: !72)
!72 = !{!73, !74, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !71, file: !54, line: 162, baseType: !70, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !71, file: !54, line: 163, baseType: !75, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !71, file: !54, line: 167, baseType: !50, size: 32, align: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 267, baseType: !75, size: 64, align: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 269, baseType: !50, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 273, baseType: !50, size: 32, align: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 275, baseType: !81, size: 64, align: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !21, line: 140, baseType: !22)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 279, baseType: !83, size: 16, align: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 280, baseType: !85, size: 8, align: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 281, baseType: !87, size: 8, align: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 285, baseType: !91, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 155, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 294, baseType: !94, size: 64, align: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !21, line: 141, baseType: !22)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !25, file: !12, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !12, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!44, !44, !58}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !25, file: !12, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !12, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!50, !44, !58, !44}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !25, file: !12, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !25, file: !12, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !12, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!44, !44}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !25, file: !12, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !12, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !12, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !12, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!44, !44, !44}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !12, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !12, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !12, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !12, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !12, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !12, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!44, !44, !44, !44}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !12, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !12, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !12, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !12, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !12, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !12, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!50, !44}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !12, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !12, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !12, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !12, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !12, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !12, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !12, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !12, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !12, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !12, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !12, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !12, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !12, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !12, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !12, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !12, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !12, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !12, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !12, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !12, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !12, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !12, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !12, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !12, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !25, file: !12, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !12, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !12, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !12, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!16, !44}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !12, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !12, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !12, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!44, !44, !16}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !12, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !12, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !12, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !12, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!50, !44, !16, !44}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !12, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !12, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !12, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!50, !44, !44}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !12, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !12, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !25, file: !12, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !12, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !12, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !12, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !12, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !12, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!50, !44, !44, !44}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !25, file: !12, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !12, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !44}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !17, line: 186, baseType: !16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !25, file: !12, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !25, file: !12, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !25, file: !12, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !12, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !25, file: !12, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !12, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !25, file: !12, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !12, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !12, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !12, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!50, !44, !241, !50}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !12, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !12, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !12, line: 179, baseType: !4, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !12, line: 180, baseType: !44, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !12, line: 181, baseType: !16, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !12, line: 182, baseType: !16, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !12, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !12, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !12, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !12, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !12, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !12, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !12, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !12, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !12, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !44, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !25, file: !12, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !25, file: !12, line: 368, baseType: !34, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !25, file: !12, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !12, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!50, !44, !269, !4}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !12, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!50, !44, !4}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !25, file: !12, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !25, file: !12, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !12, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!44, !44, !44, !50}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !25, file: !12, line: 382, baseType: !16, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !25, file: !12, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !12, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !25, file: !12, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !12, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !25, file: !12, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !34, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !25, file: !12, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !297, line: 18, size: 320, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 19, baseType: !58, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !297, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !296, file: !297, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !297, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !25, file: !12, line: 391, baseType: !305, size: 64, align: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !307, line: 11, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!308 = !{!309, !310, !315, !320, !321}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 12, baseType: !58, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !306, file: !307, line: 13, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !307, line: 8, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!44, !44, !4}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !306, file: !307, line: 14, baseType: !316, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !307, line: 9, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!50, !44, !44, !4}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !306, file: !307, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !306, file: !307, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !25, file: !12, line: 392, baseType: !24, size: 64, align: 64, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !25, file: !12, line: 393, baseType: !44, size: 64, align: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !25, file: !12, line: 394, baseType: !325, size: 64, align: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !12, line: 325, baseType: !140)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !25, file: !12, line: 395, baseType: !327, size: 64, align: 64, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !12, line: 326, baseType: !216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !25, file: !12, line: 396, baseType: !16, size: 64, align: 64, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !25, file: !12, line: 397, baseType: !330, size: 64, align: 64, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !12, line: 327, baseType: !216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !25, file: !12, line: 398, baseType: !332, size: 64, align: 64, offset: 2432)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !12, line: 329, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!44, !24, !16}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !25, file: !12, line: 399, baseType: !337, size: 64, align: 64, offset: 2496)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !12, line: 328, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!44, !24, !44, !44}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !25, file: !12, line: 400, baseType: !342, size: 64, align: 64, offset: 2560)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !12, line: 307, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !4}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !25, file: !12, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !25, file: !12, line: 402, baseType: !44, size: 64, align: 64, offset: 2688)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !25, file: !12, line: 403, baseType: !44, size: 64, align: 64, offset: 2752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !25, file: !12, line: 404, baseType: !44, size: 64, align: 64, offset: 2816)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !25, file: !12, line: 405, baseType: !44, size: 64, align: 64, offset: 2880)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !25, file: !12, line: 406, baseType: !44, size: 64, align: 64, offset: 2944)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !25, file: !12, line: 407, baseType: !40, size: 64, align: 64, offset: 3008)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !25, file: !12, line: 410, baseType: !354, size: 32, align: 32, offset: 3072)
!354 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !25, file: !12, line: 412, baseType: !40, size: 64, align: 64, offset: 3136)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "func_code", scope: !8, file: !7, line: 23, baseType: !44, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "func_globals", scope: !8, file: !7, line: 24, baseType: !44, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "func_defaults", scope: !8, file: !7, line: 25, baseType: !44, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "func_kwdefaults", scope: !8, file: !7, line: 26, baseType: !44, size: 64, align: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "func_closure", scope: !8, file: !7, line: 27, baseType: !44, size: 64, align: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "func_doc", scope: !8, file: !7, line: 28, baseType: !44, size: 64, align: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "func_name", scope: !8, file: !7, line: 29, baseType: !44, size: 64, align: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "func_dict", scope: !8, file: !7, line: 30, baseType: !44, size: 64, align: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "func_weakreflist", scope: !8, file: !7, line: 31, baseType: !44, size: 64, align: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "func_module", scope: !8, file: !7, line: 32, baseType: !44, size: 64, align: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "func_annotations", scope: !8, file: !7, line: 33, baseType: !44, size: 64, align: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "func_qualname", scope: !8, file: !7, line: 34, baseType: !44, size: 64, align: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !370, line: 33, baseType: !371)
!370 = !DIFile(filename: "Include/code.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!371 = !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 11, size: 1152, align: 64, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !388, !389, !390, !391, !392, !393}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !371, file: !370, line: 12, baseType: !11, size: 128, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !371, file: !370, line: 13, baseType: !50, size: 32, align: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !371, file: !370, line: 14, baseType: !50, size: 32, align: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !371, file: !370, line: 15, baseType: !50, size: 32, align: 32, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !371, file: !370, line: 16, baseType: !50, size: 32, align: 32, offset: 224)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !371, file: !370, line: 17, baseType: !50, size: 32, align: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !371, file: !370, line: 18, baseType: !44, size: 64, align: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !371, file: !370, line: 19, baseType: !44, size: 64, align: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !371, file: !370, line: 20, baseType: !44, size: 64, align: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !371, file: !370, line: 21, baseType: !44, size: 64, align: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !371, file: !370, line: 22, baseType: !44, size: 64, align: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !371, file: !370, line: 23, baseType: !44, size: 64, align: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !371, file: !370, line: 25, baseType: !386, size: 64, align: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !371, file: !370, line: 26, baseType: !44, size: 64, align: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !371, file: !370, line: 27, baseType: !44, size: 64, align: 64, offset: 832)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !371, file: !370, line: 28, baseType: !50, size: 32, align: 32, offset: 896)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !371, file: !370, line: 29, baseType: !44, size: 64, align: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !371, file: !370, line: 31, baseType: !4, size: 64, align: 64, offset: 1024)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !371, file: !370, line: 32, baseType: !44, size: 64, align: 64, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !396, line: 253, baseType: !397)
!396 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!397 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !396, line: 246, size: 192, align: 64, elements: !398)
!398 = !{!399, !406}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !397, file: !396, line: 251, baseType: !400, size: 192, align: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !396, line: 247, size: 192, align: 64, elements: !401)
!401 = !{!402, !404, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !400, file: !396, line: 248, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !400, file: !396, line: 249, baseType: !403, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !400, file: !396, line: 250, baseType: !16, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !397, file: !396, line: 252, baseType: !407, size: 64, align: 64)
!407 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "classmethod", file: !410, line: 721, baseType: !411)
!410 = !DIFile(filename: "Objects/funcobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!411 = !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 717, size: 256, align: 64, elements: !412)
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !411, file: !410, line: 718, baseType: !11, size: 128, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cm_callable", scope: !411, file: !410, line: 719, baseType: !44, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cm_dict", scope: !411, file: !410, line: 720, baseType: !44, size: 64, align: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "staticmethod", file: !410, line: 902, baseType: !418)
!418 = !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 898, size: 256, align: 64, elements: !419)
!419 = !{!420, !421, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !418, file: !410, line: 899, baseType: !11, size: 128, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sm_callable", scope: !418, file: !410, line: 900, baseType: !44, size: 64, align: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sm_dict", scope: !418, file: !410, line: 901, baseType: !44, size: 64, align: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !425, line: 33, baseType: !426)
!425 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!426 = !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 25, size: 256, align: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !426, file: !425, line: 26, baseType: !28, size: 192, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !426, file: !425, line: 27, baseType: !430, size: 64, align: 64, offset: 192)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 64, elements: !88)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!432 = !{!433, !444, !448, !451, !454, !457, !460, !469, !472, !481, !484, !493, !496, !505, !509, !513, !566, !571, !593, !644, !647, !658, !661, !673, !676, !688, !691, !703, !706, !713, !716, !723, !728, !756, !773, !788, !805, !812, !818, !825, !842, !857, !874, !881, !887}
!433 = !DISubprogram(name: "PyFunction_NewWithQualName", scope: !410, file: !410, line: 9, type: !141, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyFunction_NewWithQualName, variables: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442}
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !433, file: !410, line: 9, type: !44)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "globals", arg: 2, scope: !433, file: !410, line: 9, type: !44)
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "qualname", arg: 3, scope: !433, file: !410, line: 9, type: !44)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !433, file: !410, line: 11, type: !5)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !433, file: !410, line: 12, type: !44)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consts", scope: !433, file: !410, line: 12, type: !44)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !433, file: !410, line: 12, type: !44)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !443, file: !410, line: 64, type: !394)
!443 = distinct !DILexicalBlock(scope: !433, file: !410, line: 64, column: 8)
!444 = !DISubprogram(name: "PyFunction_New", scope: !410, file: !410, line: 69, type: !132, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyFunction_New, variables: !445)
!445 = !{!446, !447}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !444, file: !410, line: 69, type: !44)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "globals", arg: 2, scope: !444, file: !410, line: 69, type: !44)
!448 = !DISubprogram(name: "PyFunction_GetCode", scope: !410, file: !410, line: 75, type: !122, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetCode, variables: !449)
!449 = !{!450}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !448, file: !410, line: 75, type: !44)
!451 = !DISubprogram(name: "PyFunction_GetGlobals", scope: !410, file: !410, line: 85, type: !122, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetGlobals, variables: !452)
!452 = !{!453}
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !451, file: !410, line: 85, type: !44)
!454 = !DISubprogram(name: "PyFunction_GetModule", scope: !410, file: !410, line: 95, type: !122, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetModule, variables: !455)
!455 = !{!456}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !454, file: !410, line: 95, type: !44)
!457 = !DISubprogram(name: "PyFunction_GetDefaults", scope: !410, file: !410, line: 105, type: !122, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetDefaults, variables: !458)
!458 = !{!459}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !457, file: !410, line: 105, type: !44)
!460 = !DISubprogram(name: "PyFunction_SetDefaults", scope: !410, file: !410, line: 115, type: !203, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetDefaults, variables: !461)
!461 = !{!462, !463, !464, !466}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !460, file: !410, line: 115, type: !44)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defaults", arg: 2, scope: !460, file: !410, line: 115, type: !44)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !465, file: !410, line: 130, type: !44)
!465 = distinct !DILexicalBlock(scope: !460, file: !410, line: 130, column: 8)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !467, file: !410, line: 130, type: !44)
!467 = distinct !DILexicalBlock(scope: !468, file: !410, line: 130, column: 134)
!468 = distinct !DILexicalBlock(scope: !465, file: !410, line: 130, column: 100)
!469 = !DISubprogram(name: "PyFunction_GetKwDefaults", scope: !410, file: !410, line: 136, type: !122, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetKwDefaults, variables: !470)
!470 = !{!471}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !469, file: !410, line: 136, type: !44)
!472 = !DISubprogram(name: "PyFunction_SetKwDefaults", scope: !410, file: !410, line: 146, type: !203, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetKwDefaults, variables: !473)
!473 = !{!474, !475, !476, !478}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !472, file: !410, line: 146, type: !44)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defaults", arg: 2, scope: !472, file: !410, line: 146, type: !44)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !477, file: !410, line: 162, type: !44)
!477 = distinct !DILexicalBlock(scope: !472, file: !410, line: 162, column: 8)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !479, file: !410, line: 162, type: !44)
!479 = distinct !DILexicalBlock(scope: !480, file: !410, line: 162, column: 135)
!480 = distinct !DILexicalBlock(scope: !477, file: !410, line: 162, column: 101)
!481 = !DISubprogram(name: "PyFunction_GetClosure", scope: !410, file: !410, line: 168, type: !122, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetClosure, variables: !482)
!482 = !{!483}
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !481, file: !410, line: 168, type: !44)
!484 = !DISubprogram(name: "PyFunction_SetClosure", scope: !410, file: !410, line: 178, type: !203, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetClosure, variables: !485)
!485 = !{!486, !487, !488, !490}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !484, file: !410, line: 178, type: !44)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !484, file: !410, line: 178, type: !44)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !489, file: !410, line: 195, type: !44)
!489 = distinct !DILexicalBlock(scope: !484, file: !410, line: 195, column: 8)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !491, file: !410, line: 195, type: !44)
!491 = distinct !DILexicalBlock(scope: !492, file: !410, line: 195, column: 133)
!492 = distinct !DILexicalBlock(scope: !489, file: !410, line: 195, column: 99)
!493 = !DISubprogram(name: "PyFunction_GetAnnotations", scope: !410, file: !410, line: 201, type: !122, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetAnnotations, variables: !494)
!494 = !{!495}
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !493, file: !410, line: 201, type: !44)
!496 = !DISubprogram(name: "PyFunction_SetAnnotations", scope: !410, file: !410, line: 211, type: !203, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetAnnotations, variables: !497)
!497 = !{!498, !499, !500, !502}
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !496, file: !410, line: 211, type: !44)
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "annotations", arg: 2, scope: !496, file: !410, line: 211, type: !44)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !501, file: !410, line: 227, type: !44)
!501 = distinct !DILexicalBlock(scope: !496, file: !410, line: 227, column: 8)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !410, line: 227, type: !44)
!503 = distinct !DILexicalBlock(scope: !504, file: !410, line: 227, column: 136)
!504 = distinct !DILexicalBlock(scope: !501, file: !410, line: 227, column: 102)
!505 = !DISubprogram(name: "PyClassMethod_New", scope: !410, file: !410, line: 870, type: !122, isLocal: false, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyClassMethod_New, variables: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !505, file: !410, line: 870, type: !44)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cm", scope: !505, file: !410, line: 872, type: !408)
!509 = !DISubprogram(name: "PyStaticMethod_New", scope: !410, file: !410, line: 1046, type: !122, isLocal: false, isDefinition: true, scopeLine: 1047, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyStaticMethod_New, variables: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !509, file: !410, line: 1046, type: !44)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !509, file: !410, line: 1048, type: !416)
!513 = !DISubprogram(name: "func_dealloc", scope: !410, file: !410, line: 550, type: !514, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyFunctionObject*)* @func_dealloc, variables: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !5}
!516 = !{!517, !518, !520, !522, !524, !526, !529, !531, !533, !536, !538, !541, !543, !546, !548, !551, !553, !556, !558, !561, !563}
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !513, file: !410, line: 550, type: !5)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !519, file: !410, line: 552, type: !394)
!519 = distinct !DILexicalBlock(scope: !513, file: !410, line: 552, column: 8)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !521, file: !410, line: 555, type: !44)
!521 = distinct !DILexicalBlock(scope: !513, file: !410, line: 555, column: 8)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !523, file: !410, line: 556, type: !44)
!523 = distinct !DILexicalBlock(scope: !513, file: !410, line: 556, column: 8)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !525, file: !410, line: 557, type: !44)
!525 = distinct !DILexicalBlock(scope: !513, file: !410, line: 557, column: 8)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !410, line: 557, type: !44)
!527 = distinct !DILexicalBlock(scope: !528, file: !410, line: 557, column: 107)
!528 = distinct !DILexicalBlock(scope: !525, file: !410, line: 557, column: 73)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !530, file: !410, line: 558, type: !44)
!530 = distinct !DILexicalBlock(scope: !513, file: !410, line: 558, column: 8)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !532, file: !410, line: 559, type: !44)
!532 = distinct !DILexicalBlock(scope: !513, file: !410, line: 559, column: 8)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !534, file: !410, line: 559, type: !44)
!534 = distinct !DILexicalBlock(scope: !535, file: !410, line: 559, column: 109)
!535 = distinct !DILexicalBlock(scope: !532, file: !410, line: 559, column: 75)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !537, file: !410, line: 560, type: !44)
!537 = distinct !DILexicalBlock(scope: !513, file: !410, line: 560, column: 8)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !539, file: !410, line: 560, type: !44)
!539 = distinct !DILexicalBlock(scope: !540, file: !410, line: 560, column: 111)
!540 = distinct !DILexicalBlock(scope: !537, file: !410, line: 560, column: 77)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !542, file: !410, line: 561, type: !44)
!542 = distinct !DILexicalBlock(scope: !513, file: !410, line: 561, column: 8)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !544, file: !410, line: 561, type: !44)
!544 = distinct !DILexicalBlock(scope: !545, file: !410, line: 561, column: 104)
!545 = distinct !DILexicalBlock(scope: !542, file: !410, line: 561, column: 70)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !547, file: !410, line: 562, type: !44)
!547 = distinct !DILexicalBlock(scope: !513, file: !410, line: 562, column: 8)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !549, file: !410, line: 562, type: !44)
!549 = distinct !DILexicalBlock(scope: !550, file: !410, line: 562, column: 105)
!550 = distinct !DILexicalBlock(scope: !547, file: !410, line: 562, column: 71)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !552, file: !410, line: 563, type: !44)
!552 = distinct !DILexicalBlock(scope: !513, file: !410, line: 563, column: 8)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !554, file: !410, line: 563, type: !44)
!554 = distinct !DILexicalBlock(scope: !555, file: !410, line: 563, column: 108)
!555 = distinct !DILexicalBlock(scope: !552, file: !410, line: 563, column: 74)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !557, file: !410, line: 564, type: !44)
!557 = distinct !DILexicalBlock(scope: !513, file: !410, line: 564, column: 8)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !559, file: !410, line: 564, type: !44)
!559 = distinct !DILexicalBlock(scope: !560, file: !410, line: 564, column: 112)
!560 = distinct !DILexicalBlock(scope: !557, file: !410, line: 564, column: 78)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !562, file: !410, line: 565, type: !44)
!562 = distinct !DILexicalBlock(scope: !513, file: !410, line: 565, column: 8)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !564, file: !410, line: 565, type: !44)
!564 = distinct !DILexicalBlock(scope: !565, file: !410, line: 565, column: 109)
!565 = distinct !DILexicalBlock(scope: !562, file: !410, line: 565, column: 75)
!566 = !DISubprogram(name: "func_repr", scope: !410, file: !410, line: 570, type: !567, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_repr, variables: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!44, !5}
!569 = !{!570}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !566, file: !410, line: 570, type: !5)
!571 = !DISubprogram(name: "function_call", scope: !410, file: !410, line: 594, type: !141, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @function_call, variables: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !581, !582, !583, !584, !587, !588, !590}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !571, file: !410, line: 594, type: !44)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !571, file: !410, line: 594, type: !44)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !571, file: !410, line: 594, type: !44)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !571, file: !410, line: 596, type: !44)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argdefs", scope: !571, file: !410, line: 597, type: !44)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwtuple", scope: !571, file: !410, line: 598, type: !44)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !571, file: !410, line: 599, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !571, file: !410, line: 599, type: !580)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nk", scope: !571, file: !410, line: 600, type: !16)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nd", scope: !571, file: !410, line: 600, type: !16)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !585, file: !410, line: 613, type: !16)
!585 = distinct !DILexicalBlock(scope: !586, file: !410, line: 612, column: 96)
!586 = distinct !DILexicalBlock(scope: !571, file: !410, line: 612, column: 9)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !585, file: !410, line: 613, type: !16)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !589, file: !410, line: 640, type: !44)
!589 = distinct !DILexicalBlock(scope: !571, file: !410, line: 640, column: 8)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !591, file: !410, line: 640, type: !44)
!591 = distinct !DILexicalBlock(scope: !592, file: !410, line: 640, column: 99)
!592 = distinct !DILexicalBlock(scope: !589, file: !410, line: 640, column: 65)
!593 = !DISubprogram(name: "func_traverse", scope: !410, file: !410, line: 577, type: !594, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @func_traverse, variables: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!50, !5, !269, !4}
!596 = !{!597, !598, !599, !600, !604, !608, !612, !616, !620, !624, !628, !632, !636, !640}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !593, file: !410, line: 577, type: !5)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !593, file: !410, line: 577, type: !269)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !593, file: !410, line: 577, type: !4)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !601, file: !410, line: 579, type: !50)
!601 = distinct !DILexicalBlock(scope: !602, file: !410, line: 579, column: 28)
!602 = distinct !DILexicalBlock(scope: !603, file: !410, line: 579, column: 14)
!603 = distinct !DILexicalBlock(scope: !593, file: !410, line: 579, column: 8)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !605, file: !410, line: 580, type: !50)
!605 = distinct !DILexicalBlock(scope: !606, file: !410, line: 580, column: 31)
!606 = distinct !DILexicalBlock(scope: !607, file: !410, line: 580, column: 14)
!607 = distinct !DILexicalBlock(scope: !593, file: !410, line: 580, column: 8)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !609, file: !410, line: 581, type: !50)
!609 = distinct !DILexicalBlock(scope: !610, file: !410, line: 581, column: 30)
!610 = distinct !DILexicalBlock(scope: !611, file: !410, line: 581, column: 14)
!611 = distinct !DILexicalBlock(scope: !593, file: !410, line: 581, column: 8)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !613, file: !410, line: 582, type: !50)
!613 = distinct !DILexicalBlock(scope: !614, file: !410, line: 582, column: 32)
!614 = distinct !DILexicalBlock(scope: !615, file: !410, line: 582, column: 14)
!615 = distinct !DILexicalBlock(scope: !593, file: !410, line: 582, column: 8)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !617, file: !410, line: 583, type: !50)
!617 = distinct !DILexicalBlock(scope: !618, file: !410, line: 583, column: 34)
!618 = distinct !DILexicalBlock(scope: !619, file: !410, line: 583, column: 14)
!619 = distinct !DILexicalBlock(scope: !593, file: !410, line: 583, column: 8)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !621, file: !410, line: 584, type: !50)
!621 = distinct !DILexicalBlock(scope: !622, file: !410, line: 584, column: 27)
!622 = distinct !DILexicalBlock(scope: !623, file: !410, line: 584, column: 14)
!623 = distinct !DILexicalBlock(scope: !593, file: !410, line: 584, column: 8)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !625, file: !410, line: 585, type: !50)
!625 = distinct !DILexicalBlock(scope: !626, file: !410, line: 585, column: 28)
!626 = distinct !DILexicalBlock(scope: !627, file: !410, line: 585, column: 14)
!627 = distinct !DILexicalBlock(scope: !593, file: !410, line: 585, column: 8)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !629, file: !410, line: 586, type: !50)
!629 = distinct !DILexicalBlock(scope: !630, file: !410, line: 586, column: 28)
!630 = distinct !DILexicalBlock(scope: !631, file: !410, line: 586, column: 14)
!631 = distinct !DILexicalBlock(scope: !593, file: !410, line: 586, column: 8)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !633, file: !410, line: 587, type: !50)
!633 = distinct !DILexicalBlock(scope: !634, file: !410, line: 587, column: 31)
!634 = distinct !DILexicalBlock(scope: !635, file: !410, line: 587, column: 14)
!635 = distinct !DILexicalBlock(scope: !593, file: !410, line: 587, column: 8)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !637, file: !410, line: 588, type: !50)
!637 = distinct !DILexicalBlock(scope: !638, file: !410, line: 588, column: 35)
!638 = distinct !DILexicalBlock(scope: !639, file: !410, line: 588, column: 14)
!639 = distinct !DILexicalBlock(scope: !593, file: !410, line: 588, column: 8)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !641, file: !410, line: 589, type: !50)
!641 = distinct !DILexicalBlock(scope: !642, file: !410, line: 589, column: 32)
!642 = distinct !DILexicalBlock(scope: !643, file: !410, line: 589, column: 14)
!643 = distinct !DILexicalBlock(scope: !593, file: !410, line: 589, column: 8)
!644 = !DISubprogram(name: "func_get_code", scope: !410, file: !410, line: 247, type: !567, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_code, variables: !645)
!645 = !{!646}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !644, file: !410, line: 247, type: !5)
!647 = !DISubprogram(name: "func_set_code", scope: !410, file: !410, line: 254, type: !648, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_code, variables: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!50, !5, !44}
!650 = !{!651, !652, !653, !654, !655, !656}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !647, file: !410, line: 254, type: !5)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !647, file: !410, line: 254, type: !44)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !647, file: !410, line: 256, type: !44)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfree", scope: !647, file: !410, line: 257, type: !16)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nclosure", scope: !647, file: !410, line: 257, type: !16)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !657, file: !410, line: 280, type: !44)
!657 = distinct !DILexicalBlock(scope: !647, file: !410, line: 280, column: 8)
!658 = !DISubprogram(name: "func_get_defaults", scope: !410, file: !410, line: 337, type: !567, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_defaults, variables: !659)
!659 = !{!660}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !658, file: !410, line: 337, type: !5)
!661 = !DISubprogram(name: "func_set_defaults", scope: !410, file: !410, line: 348, type: !648, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_defaults, variables: !662)
!662 = !{!663, !664, !665, !666, !668, !670}
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !661, file: !410, line: 348, type: !5)
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !661, file: !410, line: 348, type: !44)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !661, file: !410, line: 350, type: !44)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !667, file: !410, line: 362, type: !44)
!667 = distinct !DILexicalBlock(scope: !661, file: !410, line: 362, column: 8)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !669, file: !410, line: 364, type: !44)
!669 = distinct !DILexicalBlock(scope: !661, file: !410, line: 364, column: 8)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !410, line: 364, type: !44)
!671 = distinct !DILexicalBlock(scope: !672, file: !410, line: 364, column: 95)
!672 = distinct !DILexicalBlock(scope: !669, file: !410, line: 364, column: 61)
!673 = !DISubprogram(name: "func_get_kwdefaults", scope: !410, file: !410, line: 369, type: !567, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_kwdefaults, variables: !674)
!674 = !{!675}
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !673, file: !410, line: 369, type: !5)
!676 = !DISubprogram(name: "func_set_kwdefaults", scope: !410, file: !410, line: 380, type: !648, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_kwdefaults, variables: !677)
!677 = !{!678, !679, !680, !681, !683, !685}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !676, file: !410, line: 380, type: !5)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !676, file: !410, line: 380, type: !44)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !676, file: !410, line: 382, type: !44)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !682, file: !410, line: 394, type: !44)
!682 = distinct !DILexicalBlock(scope: !676, file: !410, line: 394, column: 8)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !684, file: !410, line: 396, type: !44)
!684 = distinct !DILexicalBlock(scope: !676, file: !410, line: 396, column: 8)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !410, line: 396, type: !44)
!686 = distinct !DILexicalBlock(scope: !687, file: !410, line: 396, column: 95)
!687 = distinct !DILexicalBlock(scope: !684, file: !410, line: 396, column: 61)
!688 = !DISubprogram(name: "func_get_annotations", scope: !410, file: !410, line: 401, type: !567, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_annotations, variables: !689)
!689 = !{!690}
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !688, file: !410, line: 401, type: !5)
!691 = !DISubprogram(name: "func_set_annotations", scope: !410, file: !410, line: 413, type: !648, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_annotations, variables: !692)
!692 = !{!693, !694, !695, !696, !698, !700}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !691, file: !410, line: 413, type: !5)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !691, file: !410, line: 413, type: !44)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !691, file: !410, line: 415, type: !44)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !697, file: !410, line: 428, type: !44)
!697 = distinct !DILexicalBlock(scope: !691, file: !410, line: 428, column: 8)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !699, file: !410, line: 430, type: !44)
!699 = distinct !DILexicalBlock(scope: !691, file: !410, line: 430, column: 8)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !410, line: 430, type: !44)
!701 = distinct !DILexicalBlock(scope: !702, file: !410, line: 430, column: 95)
!702 = distinct !DILexicalBlock(scope: !699, file: !410, line: 430, column: 61)
!703 = !DISubprogram(name: "func_get_name", scope: !410, file: !410, line: 285, type: !567, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_name, variables: !704)
!704 = !{!705}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !703, file: !410, line: 285, type: !5)
!706 = !DISubprogram(name: "func_set_name", scope: !410, file: !410, line: 292, type: !648, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_name, variables: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !706, file: !410, line: 292, type: !5)
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !706, file: !410, line: 292, type: !44)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !706, file: !410, line: 294, type: !44)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !712, file: !410, line: 306, type: !44)
!712 = distinct !DILexicalBlock(scope: !706, file: !410, line: 306, column: 8)
!713 = !DISubprogram(name: "func_get_qualname", scope: !410, file: !410, line: 311, type: !567, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_qualname, variables: !714)
!714 = !{!715}
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !713, file: !410, line: 311, type: !5)
!716 = !DISubprogram(name: "func_set_qualname", scope: !410, file: !410, line: 318, type: !648, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_qualname, variables: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !716, file: !410, line: 318, type: !5)
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !716, file: !410, line: 318, type: !44)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !716, file: !410, line: 320, type: !44)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !722, file: !410, line: 332, type: !44)
!722 = distinct !DILexicalBlock(scope: !716, file: !410, line: 332, column: 8)
!723 = !DISubprogram(name: "func_descr_get", scope: !410, file: !410, line: 647, type: !141, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @func_descr_get, variables: !724)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !723, file: !410, line: 647, type: !44)
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !723, file: !410, line: 647, type: !44)
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !723, file: !410, line: 647, type: !44)
!728 = !DISubprogram(name: "func_new", scope: !410, file: !410, line: 467, type: !729, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @func_new, variables: !733)
!729 = !DISubroutineType(types: !730)
!730 = !{!44, !731, !44, !44}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !12, line: 422, baseType: !25)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !748, !752}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !728, file: !410, line: 467, type: !731)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !728, file: !410, line: 467, type: !44)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !728, file: !410, line: 467, type: !44)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !728, file: !410, line: 469, type: !368)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "globals", scope: !728, file: !410, line: 470, type: !44)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !728, file: !410, line: 471, type: !44)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defaults", scope: !728, file: !410, line: 472, type: !44)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closure", scope: !728, file: !410, line: 473, type: !44)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newfunc", scope: !728, file: !410, line: 474, type: !5)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfree", scope: !728, file: !410, line: 475, type: !16)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nclosure", scope: !728, file: !410, line: 475, type: !16)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !746, file: !410, line: 516, type: !16)
!746 = distinct !DILexicalBlock(scope: !747, file: !410, line: 515, column: 19)
!747 = distinct !DILexicalBlock(scope: !728, file: !410, line: 515, column: 9)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !749, file: !410, line: 518, type: !44)
!749 = distinct !DILexicalBlock(scope: !750, file: !410, line: 517, column: 40)
!750 = distinct !DILexicalBlock(scope: !751, file: !410, line: 517, column: 9)
!751 = distinct !DILexicalBlock(scope: !746, file: !410, line: 517, column: 9)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !753, file: !410, line: 534, type: !44)
!753 = distinct !DILexicalBlock(scope: !754, file: !410, line: 534, column: 12)
!754 = distinct !DILexicalBlock(scope: !755, file: !410, line: 532, column: 36)
!755 = distinct !DILexicalBlock(scope: !728, file: !410, line: 532, column: 9)
!756 = !DISubprogram(name: "cm_dealloc", scope: !410, file: !410, line: 724, type: !757, isLocal: true, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.classmethod*)* @cm_dealloc, variables: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !408}
!759 = !{!760, !761, !763, !765, !768, !770}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !756, file: !410, line: 724, type: !408)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !762, file: !410, line: 726, type: !394)
!762 = distinct !DILexicalBlock(scope: !756, file: !410, line: 726, column: 8)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !764, file: !410, line: 727, type: !44)
!764 = distinct !DILexicalBlock(scope: !756, file: !410, line: 727, column: 8)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !410, line: 727, type: !44)
!766 = distinct !DILexicalBlock(scope: !767, file: !410, line: 727, column: 107)
!767 = distinct !DILexicalBlock(scope: !764, file: !410, line: 727, column: 73)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !769, file: !410, line: 728, type: !44)
!769 = distinct !DILexicalBlock(scope: !756, file: !410, line: 728, column: 8)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !771, file: !410, line: 728, type: !44)
!771 = distinct !DILexicalBlock(scope: !772, file: !410, line: 728, column: 103)
!772 = distinct !DILexicalBlock(scope: !769, file: !410, line: 728, column: 69)
!773 = !DISubprogram(name: "cm_traverse", scope: !410, file: !410, line: 733, type: !774, isLocal: true, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.classmethod*, i32 (%struct._object*, i8*)*, i8*)* @cm_traverse, variables: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!50, !408, !269, !4}
!776 = !{!777, !778, !779, !780, !784}
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !773, file: !410, line: 733, type: !408)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !773, file: !410, line: 733, type: !269)
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !773, file: !410, line: 733, type: !4)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !781, file: !410, line: 735, type: !50)
!781 = distinct !DILexicalBlock(scope: !782, file: !410, line: 735, column: 31)
!782 = distinct !DILexicalBlock(scope: !783, file: !410, line: 735, column: 14)
!783 = distinct !DILexicalBlock(scope: !773, file: !410, line: 735, column: 8)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !785, file: !410, line: 736, type: !50)
!785 = distinct !DILexicalBlock(scope: !786, file: !410, line: 736, column: 27)
!786 = distinct !DILexicalBlock(scope: !787, file: !410, line: 736, column: 14)
!787 = distinct !DILexicalBlock(scope: !773, file: !410, line: 736, column: 8)
!788 = !DISubprogram(name: "cm_clear", scope: !410, file: !410, line: 741, type: !789, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.classmethod*)* @cm_clear, variables: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!50, !408}
!791 = !{!792, !793, !795, !799, !801}
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !788, file: !410, line: 741, type: !408)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !794, file: !410, line: 743, type: !44)
!794 = distinct !DILexicalBlock(scope: !788, file: !410, line: 743, column: 8)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !796, file: !410, line: 743, type: !44)
!796 = distinct !DILexicalBlock(scope: !797, file: !410, line: 743, column: 125)
!797 = distinct !DILexicalBlock(scope: !798, file: !410, line: 743, column: 88)
!798 = distinct !DILexicalBlock(scope: !794, file: !410, line: 743, column: 65)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !800, file: !410, line: 744, type: !44)
!800 = distinct !DILexicalBlock(scope: !788, file: !410, line: 744, column: 8)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !802, file: !410, line: 744, type: !44)
!802 = distinct !DILexicalBlock(scope: !803, file: !410, line: 744, column: 117)
!803 = distinct !DILexicalBlock(scope: !804, file: !410, line: 744, column: 84)
!804 = distinct !DILexicalBlock(scope: !800, file: !410, line: 744, column: 61)
!805 = !DISubprogram(name: "cm_get___isabstractmethod__", scope: !410, file: !410, line: 785, type: !806, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.classmethod*, i8*)* @cm_get___isabstractmethod__, variables: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!44, !408, !4}
!808 = !{!809, !810, !811}
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !805, file: !410, line: 785, type: !408)
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !805, file: !410, line: 785, type: !4)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !805, file: !410, line: 787, type: !50)
!812 = !DISubprogram(name: "cm_descr_get", scope: !410, file: !410, line: 750, type: !141, isLocal: true, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @cm_descr_get, variables: !813)
!813 = !{!814, !815, !816, !817}
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !812, file: !410, line: 750, type: !44)
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !812, file: !410, line: 750, type: !44)
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !812, file: !410, line: 750, type: !44)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cm", scope: !812, file: !410, line: 752, type: !408)
!818 = !DISubprogram(name: "cm_init", scope: !410, file: !410, line: 765, type: !217, isLocal: true, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @cm_init, variables: !819)
!819 = !{!820, !821, !822, !823, !824}
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !818, file: !410, line: 765, type: !44)
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !818, file: !410, line: 765, type: !44)
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !818, file: !410, line: 765, type: !44)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cm", scope: !818, file: !410, line: 767, type: !408)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callable", scope: !818, file: !410, line: 768, type: !44)
!825 = !DISubprogram(name: "sm_dealloc", scope: !410, file: !410, line: 905, type: !826, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.staticmethod*)* @sm_dealloc, variables: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !416}
!828 = !{!829, !830, !832, !834, !837, !839}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !825, file: !410, line: 905, type: !416)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !831, file: !410, line: 907, type: !394)
!831 = distinct !DILexicalBlock(scope: !825, file: !410, line: 907, column: 8)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !833, file: !410, line: 908, type: !44)
!833 = distinct !DILexicalBlock(scope: !825, file: !410, line: 908, column: 8)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !835, file: !410, line: 908, type: !44)
!835 = distinct !DILexicalBlock(scope: !836, file: !410, line: 908, column: 107)
!836 = distinct !DILexicalBlock(scope: !833, file: !410, line: 908, column: 73)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !838, file: !410, line: 909, type: !44)
!838 = distinct !DILexicalBlock(scope: !825, file: !410, line: 909, column: 8)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !840, file: !410, line: 909, type: !44)
!840 = distinct !DILexicalBlock(scope: !841, file: !410, line: 909, column: 103)
!841 = distinct !DILexicalBlock(scope: !838, file: !410, line: 909, column: 69)
!842 = !DISubprogram(name: "sm_traverse", scope: !410, file: !410, line: 914, type: !843, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.staticmethod*, i32 (%struct._object*, i8*)*, i8*)* @sm_traverse, variables: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!50, !416, !269, !4}
!845 = !{!846, !847, !848, !849, !853}
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !842, file: !410, line: 914, type: !416)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !842, file: !410, line: 914, type: !269)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !842, file: !410, line: 914, type: !4)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !850, file: !410, line: 916, type: !50)
!850 = distinct !DILexicalBlock(scope: !851, file: !410, line: 916, column: 31)
!851 = distinct !DILexicalBlock(scope: !852, file: !410, line: 916, column: 14)
!852 = distinct !DILexicalBlock(scope: !842, file: !410, line: 916, column: 8)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !854, file: !410, line: 917, type: !50)
!854 = distinct !DILexicalBlock(scope: !855, file: !410, line: 917, column: 27)
!855 = distinct !DILexicalBlock(scope: !856, file: !410, line: 917, column: 14)
!856 = distinct !DILexicalBlock(scope: !842, file: !410, line: 917, column: 8)
!857 = !DISubprogram(name: "sm_clear", scope: !410, file: !410, line: 922, type: !858, isLocal: true, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.staticmethod*)* @sm_clear, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!50, !416}
!860 = !{!861, !862, !864, !868, !870}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !857, file: !410, line: 922, type: !416)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !863, file: !410, line: 924, type: !44)
!863 = distinct !DILexicalBlock(scope: !857, file: !410, line: 924, column: 8)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !410, line: 924, type: !44)
!865 = distinct !DILexicalBlock(scope: !866, file: !410, line: 924, column: 125)
!866 = distinct !DILexicalBlock(scope: !867, file: !410, line: 924, column: 88)
!867 = distinct !DILexicalBlock(scope: !863, file: !410, line: 924, column: 65)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !869, file: !410, line: 925, type: !44)
!869 = distinct !DILexicalBlock(scope: !857, file: !410, line: 925, column: 8)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !871, file: !410, line: 925, type: !44)
!871 = distinct !DILexicalBlock(scope: !872, file: !410, line: 925, column: 117)
!872 = distinct !DILexicalBlock(scope: !873, file: !410, line: 925, column: 84)
!873 = distinct !DILexicalBlock(scope: !869, file: !410, line: 925, column: 61)
!874 = !DISubprogram(name: "sm_get___isabstractmethod__", scope: !410, file: !410, line: 964, type: !875, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.staticmethod*, i8*)* @sm_get___isabstractmethod__, variables: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!44, !416, !4}
!877 = !{!878, !879, !880}
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !874, file: !410, line: 964, type: !416)
!879 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !874, file: !410, line: 964, type: !4)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !874, file: !410, line: 966, type: !50)
!881 = !DISubprogram(name: "sm_descr_get", scope: !410, file: !410, line: 930, type: !141, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @sm_descr_get, variables: !882)
!882 = !{!883, !884, !885, !886}
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !881, file: !410, line: 930, type: !44)
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !881, file: !410, line: 930, type: !44)
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !881, file: !410, line: 930, type: !44)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !881, file: !410, line: 932, type: !416)
!887 = !DISubprogram(name: "sm_init", scope: !410, file: !410, line: 944, type: !217, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @sm_init, variables: !888)
!888 = !{!889, !890, !891, !892, !893}
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !887, file: !410, line: 944, type: !44)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !887, file: !410, line: 944, type: !44)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !887, file: !410, line: 944, type: !44)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !887, file: !410, line: 946, type: !416)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callable", scope: !887, file: !410, line: 947, type: !44)
!894 = !{!895, !896, !897, !898, !899, !903, !908, !913, !917, !921, !925, !929, !933, !934}
!895 = !DIGlobalVariable(name: "__name__", scope: !433, file: !410, line: 13, type: !44, isLocal: true, isDefinition: true, variable: %struct._object** @PyFunction_NewWithQualName.__name__)
!896 = !DIGlobalVariable(name: "PyFunction_Type", scope: !0, file: !410, line: 656, type: !732, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type)
!897 = !DIGlobalVariable(name: "PyClassMethod_Type", scope: !0, file: !410, line: 827, type: !732, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyClassMethod_Type)
!898 = !DIGlobalVariable(name: "PyStaticMethod_Type", scope: !0, file: !410, line: 1003, type: !732, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyStaticMethod_Type)
!899 = !DIGlobalVariable(name: "func_doc", scope: !0, file: !410, line: 448, type: !900, isLocal: true, isDefinition: true, variable: [318 x i8]* @func_doc)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2544, align: 8, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 318)
!903 = !DIGlobalVariable(name: "func_memberlist", scope: !0, file: !410, line: 236, type: !904, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMemberDef]* @func_memberlist)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 1600, align: 64, elements: !906)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !297, line: 24, baseType: !296)
!906 = !{!907}
!907 = !DISubrange(count: 5)
!908 = !DIGlobalVariable(name: "func_getsetlist", scope: !0, file: !410, line: 434, type: !909, isLocal: true, isDefinition: true, variable: [8 x %struct.PyGetSetDef]* @func_getsetlist)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 2560, align: 64, elements: !911)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !307, line: 17, baseType: !306)
!911 = !{!912}
!912 = !DISubrange(count: 8)
!913 = !DIGlobalVariable(name: "kwlist", scope: !728, file: !410, line: 476, type: !914, isLocal: true, isDefinition: true, variable: [6 x i8*]* @func_new.kwlist)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 384, align: 64, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 6)
!917 = !DIGlobalVariable(name: "classmethod_doc", scope: !0, file: !410, line: 806, type: !918, isLocal: true, isDefinition: true, variable: [666 x i8]* @classmethod_doc)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 5328, align: 8, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 666)
!921 = !DIGlobalVariable(name: "cm_memberlist", scope: !0, file: !410, line: 779, type: !922, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @cm_memberlist)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 640, align: 64, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 2)
!925 = !DIGlobalVariable(name: "cm_getsetlist", scope: !0, file: !410, line: 797, type: !926, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @cm_getsetlist)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 960, align: 64, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 3)
!929 = !DIGlobalVariable(name: "staticmethod_doc", scope: !0, file: !410, line: 985, type: !930, isLocal: true, isDefinition: true, variable: [514 x i8]* @staticmethod_doc)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4112, align: 8, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 514)
!933 = !DIGlobalVariable(name: "sm_memberlist", scope: !0, file: !410, line: 958, type: !922, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @sm_memberlist)
!934 = !DIGlobalVariable(name: "sm_getsetlist", scope: !0, file: !410, line: 976, type: !926, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @sm_getsetlist)
!935 = !{i32 2, !"Dwarf Version", i32 4}
!936 = !{i32 2, !"Debug Info Version", i32 3}
!937 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!938 = !{!939, !939, i64 0}
!939 = !{!"any pointer", !940, i64 0}
!940 = !{!"omnipotent char", !941, i64 0}
!941 = !{!"Simple C/C++ TBAA"}
!942 = !DIExpression()
!943 = !DILocation(line: 9, column: 38, scope: !433)
!944 = !DILocation(line: 9, column: 54, scope: !433)
!945 = !DILocation(line: 9, column: 73, scope: !433)
!946 = !DILocation(line: 11, column: 5, scope: !433)
!947 = !DILocation(line: 11, column: 23, scope: !433)
!948 = !DILocation(line: 12, column: 5, scope: !433)
!949 = !DILocation(line: 12, column: 15, scope: !433)
!950 = !DILocation(line: 12, column: 21, scope: !433)
!951 = !DILocation(line: 12, column: 30, scope: !433)
!952 = !DILocation(line: 15, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !433, file: !410, line: 15, column: 9)
!954 = !DILocation(line: 15, column: 18, scope: !953)
!955 = !DILocation(line: 15, column: 9, scope: !433)
!956 = !DILocation(line: 16, column: 20, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !410, line: 15, column: 33)
!958 = !DILocation(line: 16, column: 18, scope: !957)
!959 = !DILocation(line: 17, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !410, line: 17, column: 13)
!961 = !DILocation(line: 17, column: 22, scope: !960)
!962 = !DILocation(line: 17, column: 13, scope: !957)
!963 = !DILocation(line: 18, column: 13, scope: !960)
!964 = !DILocation(line: 19, column: 5, scope: !957)
!965 = !DILocation(line: 21, column: 33, scope: !433)
!966 = !DILocation(line: 21, column: 12, scope: !433)
!967 = !DILocation(line: 21, column: 8, scope: !433)
!968 = !DILocation(line: 22, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !433, file: !410, line: 22, column: 9)
!970 = !DILocation(line: 22, column: 12, scope: !969)
!971 = !DILocation(line: 22, column: 9, scope: !433)
!972 = !DILocation(line: 23, column: 9, scope: !969)
!973 = !DILocation(line: 25, column: 5, scope: !433)
!974 = !DILocation(line: 25, column: 9, scope: !433)
!975 = !DILocation(line: 25, column: 26, scope: !433)
!976 = !{!977, !939, i64 80}
!977 = !{!"", !978, i64 0, !939, i64 16, !939, i64 24, !939, i64 32, !939, i64 40, !939, i64 48, !939, i64 56, !939, i64 64, !939, i64 72, !939, i64 80, !939, i64 88, !939, i64 96, !939, i64 104}
!978 = !{!"_object", !979, i64 0, !939, i64 8}
!979 = !{!"long", !940, i64 0}
!980 = !DILocation(line: 26, column: 21, scope: !433)
!981 = !DILocation(line: 26, column: 29, scope: !433)
!982 = !DILocation(line: 26, column: 38, scope: !433)
!983 = !{!978, !979, i64 0}
!984 = !DILocation(line: 27, column: 21, scope: !433)
!985 = !DILocation(line: 27, column: 5, scope: !433)
!986 = !DILocation(line: 27, column: 9, scope: !433)
!987 = !DILocation(line: 27, column: 19, scope: !433)
!988 = !{!977, !939, i64 16}
!989 = !DILocation(line: 28, column: 21, scope: !433)
!990 = !DILocation(line: 28, column: 32, scope: !433)
!991 = !DILocation(line: 28, column: 41, scope: !433)
!992 = !DILocation(line: 29, column: 24, scope: !433)
!993 = !DILocation(line: 29, column: 5, scope: !433)
!994 = !DILocation(line: 29, column: 9, scope: !433)
!995 = !DILocation(line: 29, column: 22, scope: !433)
!996 = !{!977, !939, i64 24}
!997 = !DILocation(line: 30, column: 38, scope: !433)
!998 = !DILocation(line: 30, column: 22, scope: !433)
!999 = !DILocation(line: 30, column: 45, scope: !433)
!1000 = !{!1001, !939, i64 104}
!1001 = !{!"", !978, i64 0, !1002, i64 16, !1002, i64 20, !1002, i64 24, !1002, i64 28, !1002, i64 32, !939, i64 40, !939, i64 48, !939, i64 56, !939, i64 64, !939, i64 72, !939, i64 80, !939, i64 88, !939, i64 96, !939, i64 104, !1002, i64 112, !939, i64 120, !939, i64 128, !939, i64 136}
!1002 = !{!"int", !940, i64 0}
!1003 = !DILocation(line: 30, column: 5, scope: !433)
!1004 = !DILocation(line: 30, column: 9, scope: !433)
!1005 = !DILocation(line: 30, column: 19, scope: !433)
!1006 = !{!977, !939, i64 64}
!1007 = !DILocation(line: 31, column: 21, scope: !433)
!1008 = !DILocation(line: 31, column: 25, scope: !433)
!1009 = !DILocation(line: 31, column: 38, scope: !433)
!1010 = !DILocation(line: 31, column: 47, scope: !433)
!1011 = !DILocation(line: 32, column: 5, scope: !433)
!1012 = !DILocation(line: 32, column: 9, scope: !433)
!1013 = !DILocation(line: 32, column: 23, scope: !433)
!1014 = !{!977, !939, i64 32}
!1015 = !DILocation(line: 33, column: 5, scope: !433)
!1016 = !DILocation(line: 33, column: 9, scope: !433)
!1017 = !DILocation(line: 33, column: 25, scope: !433)
!1018 = !{!977, !939, i64 40}
!1019 = !DILocation(line: 34, column: 5, scope: !433)
!1020 = !DILocation(line: 34, column: 9, scope: !433)
!1021 = !DILocation(line: 34, column: 22, scope: !433)
!1022 = !{!977, !939, i64 48}
!1023 = !DILocation(line: 36, column: 31, scope: !433)
!1024 = !DILocation(line: 36, column: 15, scope: !433)
!1025 = !DILocation(line: 36, column: 38, scope: !433)
!1026 = !{!1001, !939, i64 48}
!1027 = !DILocation(line: 36, column: 12, scope: !433)
!1028 = !DILocation(line: 37, column: 22, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !433, file: !410, line: 37, column: 9)
!1030 = !DILocation(line: 37, column: 9, scope: !1029)
!1031 = !DILocation(line: 37, column: 30, scope: !1029)
!1032 = !DILocation(line: 37, column: 9, scope: !433)
!1033 = !DILocation(line: 38, column: 31, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !410, line: 37, column: 36)
!1035 = !DILocation(line: 38, column: 15, scope: !1034)
!1036 = !DILocation(line: 38, column: 13, scope: !1034)
!1037 = !DILocation(line: 39, column: 31, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !410, line: 39, column: 13)
!1039 = !DILocation(line: 39, column: 38, scope: !1038)
!1040 = !{!978, !939, i64 8}
!1041 = !DILocation(line: 39, column: 49, scope: !1038)
!1042 = !{!1043, !979, i64 168}
!1043 = !{!"_typeobject", !1044, i64 0, !939, i64 24, !979, i64 32, !979, i64 40, !939, i64 48, !939, i64 56, !939, i64 64, !939, i64 72, !939, i64 80, !939, i64 88, !939, i64 96, !939, i64 104, !939, i64 112, !939, i64 120, !939, i64 128, !939, i64 136, !939, i64 144, !939, i64 152, !939, i64 160, !979, i64 168, !939, i64 176, !939, i64 184, !939, i64 192, !939, i64 200, !979, i64 208, !939, i64 216, !939, i64 224, !939, i64 232, !939, i64 240, !939, i64 248, !939, i64 256, !939, i64 264, !939, i64 272, !939, i64 280, !979, i64 288, !939, i64 296, !939, i64 304, !939, i64 312, !939, i64 320, !939, i64 328, !939, i64 336, !939, i64 344, !939, i64 352, !939, i64 360, !939, i64 368, !939, i64 376, !1002, i64 384, !939, i64 392}
!1044 = !{!"", !978, i64 0, !979, i64 16}
!1045 = !DILocation(line: 39, column: 58, scope: !1038)
!1046 = !DILocation(line: 39, column: 75, scope: !1038)
!1047 = !DILocation(line: 39, column: 13, scope: !1034)
!1048 = !DILocation(line: 40, column: 17, scope: !1038)
!1049 = !DILocation(line: 40, column: 13, scope: !1038)
!1050 = !DILocation(line: 41, column: 5, scope: !1034)
!1051 = !DILocation(line: 43, column: 13, scope: !1029)
!1052 = !DILocation(line: 44, column: 21, scope: !433)
!1053 = !DILocation(line: 44, column: 28, scope: !433)
!1054 = !DILocation(line: 44, column: 37, scope: !433)
!1055 = !DILocation(line: 45, column: 20, scope: !433)
!1056 = !DILocation(line: 45, column: 5, scope: !433)
!1057 = !DILocation(line: 45, column: 9, scope: !433)
!1058 = !DILocation(line: 45, column: 18, scope: !433)
!1059 = !{!977, !939, i64 56}
!1060 = !DILocation(line: 47, column: 5, scope: !433)
!1061 = !DILocation(line: 47, column: 9, scope: !433)
!1062 = !DILocation(line: 47, column: 19, scope: !433)
!1063 = !{!977, !939, i64 72}
!1064 = !DILocation(line: 48, column: 5, scope: !433)
!1065 = !DILocation(line: 48, column: 9, scope: !433)
!1066 = !DILocation(line: 48, column: 21, scope: !433)
!1067 = !{!977, !939, i64 88}
!1068 = !DILocation(line: 49, column: 5, scope: !433)
!1069 = !DILocation(line: 49, column: 9, scope: !433)
!1070 = !DILocation(line: 49, column: 26, scope: !433)
!1071 = !{!977, !939, i64 96}
!1072 = !DILocation(line: 53, column: 29, scope: !433)
!1073 = !DILocation(line: 53, column: 38, scope: !433)
!1074 = !DILocation(line: 53, column: 14, scope: !433)
!1075 = !DILocation(line: 53, column: 12, scope: !433)
!1076 = !DILocation(line: 54, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !433, file: !410, line: 54, column: 9)
!1078 = !DILocation(line: 54, column: 9, scope: !433)
!1079 = !DILocation(line: 55, column: 25, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !410, line: 54, column: 17)
!1081 = !DILocation(line: 55, column: 35, scope: !1080)
!1082 = !DILocation(line: 55, column: 44, scope: !1080)
!1083 = !DILocation(line: 56, column: 27, scope: !1080)
!1084 = !DILocation(line: 56, column: 9, scope: !1080)
!1085 = !DILocation(line: 56, column: 13, scope: !1080)
!1086 = !DILocation(line: 56, column: 25, scope: !1080)
!1087 = !DILocation(line: 57, column: 5, scope: !1080)
!1088 = !DILocation(line: 58, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !433, file: !410, line: 58, column: 9)
!1090 = !DILocation(line: 58, column: 9, scope: !433)
!1091 = !DILocation(line: 59, column: 29, scope: !1089)
!1092 = !DILocation(line: 59, column: 9, scope: !1089)
!1093 = !DILocation(line: 59, column: 13, scope: !1089)
!1094 = !DILocation(line: 59, column: 27, scope: !1089)
!1095 = !{!977, !939, i64 104}
!1096 = !DILocation(line: 61, column: 29, scope: !1089)
!1097 = !DILocation(line: 61, column: 33, scope: !1089)
!1098 = !DILocation(line: 61, column: 9, scope: !1089)
!1099 = !DILocation(line: 61, column: 13, scope: !1089)
!1100 = !DILocation(line: 61, column: 27, scope: !1089)
!1101 = !DILocation(line: 62, column: 21, scope: !433)
!1102 = !DILocation(line: 62, column: 25, scope: !433)
!1103 = !DILocation(line: 62, column: 42, scope: !433)
!1104 = !DILocation(line: 62, column: 51, scope: !433)
!1105 = !DILocation(line: 64, column: 5, scope: !433)
!1106 = !DILocation(line: 64, column: 10, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !443, file: !410, discriminator: 1)
!1108 = !DILocation(line: 64, column: 21, scope: !443)
!1109 = !DILocation(line: 64, column: 40, scope: !443)
!1110 = !DILocation(line: 64, column: 26, scope: !443)
!1111 = !DILocation(line: 64, column: 43, scope: !443)
!1112 = !DILocation(line: 64, column: 54, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !443, file: !410, line: 64, column: 52)
!1114 = !DILocation(line: 64, column: 58, scope: !1113)
!1115 = !DILocation(line: 64, column: 61, scope: !1113)
!1116 = !{!1117, !979, i64 16}
!1117 = !{!"", !939, i64 0, !939, i64 8, !979, i64 16}
!1118 = !DILocation(line: 64, column: 69, scope: !1113)
!1119 = !DILocation(line: 64, column: 77, scope: !1113)
!1120 = !DILocation(line: 64, column: 52, scope: !443)
!1121 = !DILocation(line: 64, column: 86, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1113, file: !410, discriminator: 2)
!1123 = !DILocation(line: 64, column: 130, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !443, file: !410, discriminator: 3)
!1125 = !DILocation(line: 64, column: 155, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1127, file: !410, discriminator: 4)
!1127 = distinct !DILexicalBlock(scope: !443, file: !410, line: 64, column: 133)
!1128 = !DILocation(line: 64, column: 159, scope: !1127)
!1129 = !DILocation(line: 64, column: 162, scope: !1127)
!1130 = !DILocation(line: 64, column: 170, scope: !1127)
!1131 = !DILocation(line: 64, column: 197, scope: !1127)
!1132 = !DILocation(line: 64, column: 136, scope: !1127)
!1133 = !DILocation(line: 64, column: 140, scope: !1127)
!1134 = !DILocation(line: 64, column: 143, scope: !1127)
!1135 = !DILocation(line: 64, column: 151, scope: !1127)
!1136 = !DILocation(line: 64, column: 226, scope: !1127)
!1137 = !DILocation(line: 64, column: 226, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1127, file: !410, discriminator: 5)
!1139 = !DILocation(line: 64, column: 255, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !443, file: !410, discriminator: 6)
!1141 = !DILocation(line: 64, column: 239, scope: !443)
!1142 = !DILocation(line: 64, column: 242, scope: !443)
!1143 = !DILocation(line: 64, column: 245, scope: !443)
!1144 = !DILocation(line: 64, column: 253, scope: !443)
!1145 = !{!1117, !939, i64 0}
!1146 = !DILocation(line: 64, column: 290, scope: !443)
!1147 = !DILocation(line: 64, column: 309, scope: !443)
!1148 = !DILocation(line: 64, column: 312, scope: !443)
!1149 = !{!1117, !939, i64 8}
!1150 = !DILocation(line: 64, column: 274, scope: !443)
!1151 = !DILocation(line: 64, column: 277, scope: !443)
!1152 = !DILocation(line: 64, column: 280, scope: !443)
!1153 = !DILocation(line: 64, column: 288, scope: !443)
!1154 = !DILocation(line: 64, column: 349, scope: !443)
!1155 = !DILocation(line: 64, column: 321, scope: !443)
!1156 = !DILocation(line: 64, column: 324, scope: !443)
!1157 = !DILocation(line: 64, column: 327, scope: !443)
!1158 = !DILocation(line: 64, column: 336, scope: !443)
!1159 = !DILocation(line: 64, column: 339, scope: !443)
!1160 = !DILocation(line: 64, column: 347, scope: !443)
!1161 = !DILocation(line: 64, column: 384, scope: !443)
!1162 = !DILocation(line: 64, column: 352, scope: !443)
!1163 = !DILocation(line: 64, column: 371, scope: !443)
!1164 = !DILocation(line: 64, column: 374, scope: !443)
!1165 = !DILocation(line: 64, column: 382, scope: !443)
!1166 = !DILocation(line: 64, column: 387, scope: !433)
!1167 = !DILocation(line: 64, column: 387, scope: !443)
!1168 = !DILocation(line: 64, column: 387, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !443, file: !410, discriminator: 7)
!1170 = !DILocation(line: 65, column: 24, scope: !433)
!1171 = !DILocation(line: 65, column: 12, scope: !433)
!1172 = !DILocation(line: 65, column: 5, scope: !433)
!1173 = !DILocation(line: 66, column: 1, scope: !433)
!1174 = !DILocation(line: 69, column: 26, scope: !444)
!1175 = !DILocation(line: 69, column: 42, scope: !444)
!1176 = !DILocation(line: 71, column: 39, scope: !444)
!1177 = !DILocation(line: 71, column: 45, scope: !444)
!1178 = !DILocation(line: 71, column: 12, scope: !444)
!1179 = !DILocation(line: 71, column: 5, scope: !444)
!1180 = !DILocation(line: 75, column: 30, scope: !448)
!1181 = !DILocation(line: 77, column: 25, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !448, file: !410, line: 77, column: 9)
!1183 = !DILocation(line: 77, column: 31, scope: !1182)
!1184 = !DILocation(line: 77, column: 40, scope: !1182)
!1185 = !DILocation(line: 77, column: 9, scope: !448)
!1186 = !DILocation(line: 78, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !410, line: 77, column: 62)
!1188 = !DILocation(line: 79, column: 9, scope: !1187)
!1189 = !DILocation(line: 81, column: 34, scope: !448)
!1190 = !DILocation(line: 81, column: 13, scope: !448)
!1191 = !DILocation(line: 81, column: 41, scope: !448)
!1192 = !DILocation(line: 81, column: 5, scope: !448)
!1193 = !DILocation(line: 82, column: 1, scope: !448)
!1194 = !DILocation(line: 85, column: 33, scope: !451)
!1195 = !DILocation(line: 87, column: 25, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !451, file: !410, line: 87, column: 9)
!1197 = !DILocation(line: 87, column: 31, scope: !1196)
!1198 = !DILocation(line: 87, column: 40, scope: !1196)
!1199 = !DILocation(line: 87, column: 9, scope: !451)
!1200 = !DILocation(line: 88, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !410, line: 87, column: 62)
!1202 = !DILocation(line: 89, column: 9, scope: !1201)
!1203 = !DILocation(line: 91, column: 34, scope: !451)
!1204 = !DILocation(line: 91, column: 13, scope: !451)
!1205 = !DILocation(line: 91, column: 41, scope: !451)
!1206 = !DILocation(line: 91, column: 5, scope: !451)
!1207 = !DILocation(line: 92, column: 1, scope: !451)
!1208 = !DILocation(line: 95, column: 32, scope: !454)
!1209 = !DILocation(line: 97, column: 25, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !454, file: !410, line: 97, column: 9)
!1211 = !DILocation(line: 97, column: 31, scope: !1210)
!1212 = !DILocation(line: 97, column: 40, scope: !1210)
!1213 = !DILocation(line: 97, column: 9, scope: !454)
!1214 = !DILocation(line: 98, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !410, line: 97, column: 62)
!1216 = !DILocation(line: 99, column: 9, scope: !1215)
!1217 = !DILocation(line: 101, column: 34, scope: !454)
!1218 = !DILocation(line: 101, column: 13, scope: !454)
!1219 = !DILocation(line: 101, column: 41, scope: !454)
!1220 = !DILocation(line: 101, column: 5, scope: !454)
!1221 = !DILocation(line: 102, column: 1, scope: !454)
!1222 = !DILocation(line: 105, column: 34, scope: !457)
!1223 = !DILocation(line: 107, column: 25, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !457, file: !410, line: 107, column: 9)
!1225 = !DILocation(line: 107, column: 31, scope: !1224)
!1226 = !DILocation(line: 107, column: 40, scope: !1224)
!1227 = !DILocation(line: 107, column: 9, scope: !457)
!1228 = !DILocation(line: 108, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !410, line: 107, column: 62)
!1230 = !DILocation(line: 109, column: 9, scope: !1229)
!1231 = !DILocation(line: 111, column: 34, scope: !457)
!1232 = !DILocation(line: 111, column: 13, scope: !457)
!1233 = !DILocation(line: 111, column: 41, scope: !457)
!1234 = !DILocation(line: 111, column: 5, scope: !457)
!1235 = !DILocation(line: 112, column: 1, scope: !457)
!1236 = !DILocation(line: 115, column: 34, scope: !460)
!1237 = !DILocation(line: 115, column: 48, scope: !460)
!1238 = !DILocation(line: 117, column: 25, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !460, file: !410, line: 117, column: 9)
!1240 = !DILocation(line: 117, column: 31, scope: !1239)
!1241 = !DILocation(line: 117, column: 40, scope: !1239)
!1242 = !DILocation(line: 117, column: 9, scope: !460)
!1243 = !DILocation(line: 118, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !410, line: 117, column: 62)
!1245 = !DILocation(line: 119, column: 9, scope: !1244)
!1246 = !DILocation(line: 121, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !460, file: !410, line: 121, column: 9)
!1248 = !DILocation(line: 121, column: 18, scope: !1247)
!1249 = !DILocation(line: 121, column: 9, scope: !460)
!1250 = !DILocation(line: 122, column: 18, scope: !1247)
!1251 = !DILocation(line: 122, column: 9, scope: !1247)
!1252 = !DILocation(line: 123, column: 14, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !410, line: 123, column: 14)
!1254 = !DILocation(line: 123, column: 23, scope: !1253)
!1255 = !DILocation(line: 123, column: 43, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1253, file: !410, discriminator: 1)
!1257 = !DILocation(line: 123, column: 55, scope: !1253)
!1258 = !DILocation(line: 123, column: 66, scope: !1253)
!1259 = !DILocation(line: 123, column: 75, scope: !1253)
!1260 = !DILocation(line: 123, column: 92, scope: !1253)
!1261 = !DILocation(line: 123, column: 14, scope: !1247)
!1262 = !DILocation(line: 124, column: 25, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1253, file: !410, line: 123, column: 99)
!1264 = !DILocation(line: 124, column: 37, scope: !1263)
!1265 = !DILocation(line: 124, column: 46, scope: !1263)
!1266 = !DILocation(line: 125, column: 5, scope: !1263)
!1267 = !DILocation(line: 127, column: 25, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1253, file: !410, line: 126, column: 10)
!1269 = !DILocation(line: 127, column: 9, scope: !1268)
!1270 = !DILocation(line: 128, column: 9, scope: !1268)
!1271 = !DILocation(line: 130, column: 5, scope: !460)
!1272 = !DILocation(line: 130, column: 10, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !465, file: !410, discriminator: 1)
!1274 = !DILocation(line: 130, column: 20, scope: !465)
!1275 = !DILocation(line: 130, column: 73, scope: !465)
!1276 = !DILocation(line: 130, column: 52, scope: !465)
!1277 = !DILocation(line: 130, column: 80, scope: !465)
!1278 = !DILocation(line: 130, column: 100, scope: !468)
!1279 = !DILocation(line: 130, column: 116, scope: !468)
!1280 = !DILocation(line: 130, column: 100, scope: !465)
!1281 = !DILocation(line: 130, column: 131, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !468, file: !410, discriminator: 2)
!1283 = !DILocation(line: 130, column: 136, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !467, file: !410, discriminator: 4)
!1285 = !DILocation(line: 130, column: 146, scope: !467)
!1286 = !DILocation(line: 130, column: 176, scope: !467)
!1287 = !DILocation(line: 130, column: 202, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !467, file: !410, line: 130, column: 199)
!1289 = !DILocation(line: 130, column: 219, scope: !1288)
!1290 = !DILocation(line: 130, column: 199, scope: !1288)
!1291 = !DILocation(line: 130, column: 229, scope: !1288)
!1292 = !DILocation(line: 130, column: 199, scope: !467)
!1293 = !DILocation(line: 130, column: 199, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !467, file: !410, discriminator: 5)
!1295 = !DILocation(line: 130, column: 260, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1288, file: !410, discriminator: 6)
!1297 = !DILocation(line: 130, column: 278, scope: !1288)
!1298 = !DILocation(line: 130, column: 288, scope: !1288)
!1299 = !{!1043, !939, i64 48}
!1300 = !DILocation(line: 130, column: 313, scope: !1288)
!1301 = !DILocation(line: 130, column: 244, scope: !1288)
!1302 = !DILocation(line: 130, column: 332, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !468, file: !410, discriminator: 7)
!1304 = !DILocation(line: 130, column: 332, scope: !467)
!1305 = !DILocation(line: 130, column: 332, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !467, file: !410, discriminator: 8)
!1307 = !DILocation(line: 130, column: 332, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !467, file: !410, discriminator: 9)
!1309 = !DILocation(line: 130, column: 345, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1311, file: !410, discriminator: 10)
!1311 = !DILexicalBlockFile(scope: !460, file: !410, discriminator: 3)
!1312 = !DILocation(line: 130, column: 345, scope: !465)
!1313 = !DILocation(line: 131, column: 50, scope: !460)
!1314 = !DILocation(line: 131, column: 27, scope: !460)
!1315 = !DILocation(line: 131, column: 6, scope: !460)
!1316 = !DILocation(line: 131, column: 34, scope: !460)
!1317 = !DILocation(line: 131, column: 48, scope: !460)
!1318 = !DILocation(line: 132, column: 5, scope: !460)
!1319 = !DILocation(line: 133, column: 1, scope: !460)
!1320 = !DILocation(line: 136, column: 36, scope: !469)
!1321 = !DILocation(line: 138, column: 25, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !469, file: !410, line: 138, column: 9)
!1323 = !DILocation(line: 138, column: 31, scope: !1322)
!1324 = !DILocation(line: 138, column: 40, scope: !1322)
!1325 = !DILocation(line: 138, column: 9, scope: !469)
!1326 = !DILocation(line: 139, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !410, line: 138, column: 62)
!1328 = !DILocation(line: 140, column: 9, scope: !1327)
!1329 = !DILocation(line: 142, column: 34, scope: !469)
!1330 = !DILocation(line: 142, column: 13, scope: !469)
!1331 = !DILocation(line: 142, column: 41, scope: !469)
!1332 = !DILocation(line: 142, column: 5, scope: !469)
!1333 = !DILocation(line: 143, column: 1, scope: !469)
!1334 = !DILocation(line: 146, column: 36, scope: !472)
!1335 = !DILocation(line: 146, column: 50, scope: !472)
!1336 = !DILocation(line: 148, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !472, file: !410, line: 148, column: 9)
!1338 = !DILocation(line: 148, column: 31, scope: !1337)
!1339 = !DILocation(line: 148, column: 40, scope: !1337)
!1340 = !DILocation(line: 148, column: 9, scope: !472)
!1341 = !DILocation(line: 149, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !410, line: 148, column: 62)
!1343 = !DILocation(line: 150, column: 9, scope: !1342)
!1344 = !DILocation(line: 152, column: 9, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !472, file: !410, line: 152, column: 9)
!1346 = !DILocation(line: 152, column: 18, scope: !1345)
!1347 = !DILocation(line: 152, column: 9, scope: !472)
!1348 = !DILocation(line: 153, column: 18, scope: !1345)
!1349 = !DILocation(line: 153, column: 9, scope: !1345)
!1350 = !DILocation(line: 154, column: 14, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !410, line: 154, column: 14)
!1352 = !DILocation(line: 154, column: 23, scope: !1351)
!1353 = !DILocation(line: 154, column: 43, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1351, file: !410, discriminator: 1)
!1355 = !DILocation(line: 154, column: 55, scope: !1351)
!1356 = !DILocation(line: 154, column: 66, scope: !1351)
!1357 = !DILocation(line: 154, column: 75, scope: !1351)
!1358 = !DILocation(line: 154, column: 92, scope: !1351)
!1359 = !DILocation(line: 154, column: 14, scope: !1345)
!1360 = !DILocation(line: 155, column: 25, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1351, file: !410, line: 154, column: 99)
!1362 = !DILocation(line: 155, column: 37, scope: !1361)
!1363 = !DILocation(line: 155, column: 46, scope: !1361)
!1364 = !DILocation(line: 156, column: 5, scope: !1361)
!1365 = !DILocation(line: 158, column: 25, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1351, file: !410, line: 157, column: 10)
!1367 = !DILocation(line: 158, column: 9, scope: !1366)
!1368 = !DILocation(line: 160, column: 9, scope: !1366)
!1369 = !DILocation(line: 162, column: 5, scope: !472)
!1370 = !DILocation(line: 162, column: 10, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !477, file: !410, discriminator: 1)
!1372 = !DILocation(line: 162, column: 20, scope: !477)
!1373 = !DILocation(line: 162, column: 72, scope: !477)
!1374 = !DILocation(line: 162, column: 52, scope: !477)
!1375 = !DILocation(line: 162, column: 79, scope: !477)
!1376 = !DILocation(line: 162, column: 101, scope: !480)
!1377 = !DILocation(line: 162, column: 117, scope: !480)
!1378 = !DILocation(line: 162, column: 101, scope: !477)
!1379 = !DILocation(line: 162, column: 132, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !480, file: !410, discriminator: 2)
!1381 = !DILocation(line: 162, column: 137, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !479, file: !410, discriminator: 4)
!1383 = !DILocation(line: 162, column: 147, scope: !479)
!1384 = !DILocation(line: 162, column: 177, scope: !479)
!1385 = !DILocation(line: 162, column: 203, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !479, file: !410, line: 162, column: 200)
!1387 = !DILocation(line: 162, column: 220, scope: !1386)
!1388 = !DILocation(line: 162, column: 200, scope: !1386)
!1389 = !DILocation(line: 162, column: 230, scope: !1386)
!1390 = !DILocation(line: 162, column: 200, scope: !479)
!1391 = !DILocation(line: 162, column: 200, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !479, file: !410, discriminator: 5)
!1393 = !DILocation(line: 162, column: 261, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1386, file: !410, discriminator: 6)
!1395 = !DILocation(line: 162, column: 279, scope: !1386)
!1396 = !DILocation(line: 162, column: 289, scope: !1386)
!1397 = !DILocation(line: 162, column: 314, scope: !1386)
!1398 = !DILocation(line: 162, column: 245, scope: !1386)
!1399 = !DILocation(line: 162, column: 333, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !480, file: !410, discriminator: 7)
!1401 = !DILocation(line: 162, column: 333, scope: !479)
!1402 = !DILocation(line: 162, column: 333, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !479, file: !410, discriminator: 8)
!1404 = !DILocation(line: 162, column: 333, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !479, file: !410, discriminator: 9)
!1406 = !DILocation(line: 162, column: 346, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1408, file: !410, discriminator: 10)
!1408 = !DILexicalBlockFile(scope: !472, file: !410, discriminator: 3)
!1409 = !DILocation(line: 162, column: 346, scope: !477)
!1410 = !DILocation(line: 163, column: 52, scope: !472)
!1411 = !DILocation(line: 163, column: 27, scope: !472)
!1412 = !DILocation(line: 163, column: 6, scope: !472)
!1413 = !DILocation(line: 163, column: 34, scope: !472)
!1414 = !DILocation(line: 163, column: 50, scope: !472)
!1415 = !DILocation(line: 164, column: 5, scope: !472)
!1416 = !DILocation(line: 165, column: 1, scope: !472)
!1417 = !DILocation(line: 168, column: 33, scope: !481)
!1418 = !DILocation(line: 170, column: 25, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !481, file: !410, line: 170, column: 9)
!1420 = !DILocation(line: 170, column: 31, scope: !1419)
!1421 = !DILocation(line: 170, column: 40, scope: !1419)
!1422 = !DILocation(line: 170, column: 9, scope: !481)
!1423 = !DILocation(line: 171, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !410, line: 170, column: 62)
!1425 = !DILocation(line: 172, column: 9, scope: !1424)
!1426 = !DILocation(line: 174, column: 34, scope: !481)
!1427 = !DILocation(line: 174, column: 13, scope: !481)
!1428 = !DILocation(line: 174, column: 41, scope: !481)
!1429 = !DILocation(line: 174, column: 5, scope: !481)
!1430 = !DILocation(line: 175, column: 1, scope: !481)
!1431 = !DILocation(line: 178, column: 33, scope: !484)
!1432 = !DILocation(line: 178, column: 47, scope: !484)
!1433 = !DILocation(line: 180, column: 25, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !484, file: !410, line: 180, column: 9)
!1435 = !DILocation(line: 180, column: 31, scope: !1434)
!1436 = !DILocation(line: 180, column: 40, scope: !1434)
!1437 = !DILocation(line: 180, column: 9, scope: !484)
!1438 = !DILocation(line: 181, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !410, line: 180, column: 62)
!1440 = !DILocation(line: 182, column: 9, scope: !1439)
!1441 = !DILocation(line: 184, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !484, file: !410, line: 184, column: 9)
!1443 = !DILocation(line: 184, column: 17, scope: !1442)
!1444 = !DILocation(line: 184, column: 9, scope: !484)
!1445 = !DILocation(line: 185, column: 17, scope: !1442)
!1446 = !DILocation(line: 185, column: 9, scope: !1442)
!1447 = !DILocation(line: 186, column: 31, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !410, line: 186, column: 14)
!1449 = !DILocation(line: 186, column: 42, scope: !1448)
!1450 = !DILocation(line: 186, column: 53, scope: !1448)
!1451 = !DILocation(line: 186, column: 62, scope: !1448)
!1452 = !DILocation(line: 186, column: 79, scope: !1448)
!1453 = !DILocation(line: 186, column: 14, scope: !1442)
!1454 = !DILocation(line: 187, column: 25, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1448, file: !410, line: 186, column: 86)
!1456 = !DILocation(line: 187, column: 36, scope: !1455)
!1457 = !DILocation(line: 187, column: 45, scope: !1455)
!1458 = !DILocation(line: 188, column: 5, scope: !1455)
!1459 = !DILocation(line: 190, column: 22, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1448, file: !410, line: 189, column: 10)
!1461 = !DILocation(line: 192, column: 22, scope: !1460)
!1462 = !DILocation(line: 192, column: 31, scope: !1460)
!1463 = !DILocation(line: 192, column: 40, scope: !1460)
!1464 = !{!1043, !939, i64 24}
!1465 = !DILocation(line: 190, column: 9, scope: !1460)
!1466 = !DILocation(line: 193, column: 9, scope: !1460)
!1467 = !DILocation(line: 195, column: 5, scope: !484)
!1468 = !DILocation(line: 195, column: 10, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !489, file: !410, discriminator: 1)
!1470 = !DILocation(line: 195, column: 20, scope: !489)
!1471 = !DILocation(line: 195, column: 73, scope: !489)
!1472 = !DILocation(line: 195, column: 52, scope: !489)
!1473 = !DILocation(line: 195, column: 80, scope: !489)
!1474 = !DILocation(line: 195, column: 99, scope: !492)
!1475 = !DILocation(line: 195, column: 115, scope: !492)
!1476 = !DILocation(line: 195, column: 99, scope: !489)
!1477 = !DILocation(line: 195, column: 130, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !492, file: !410, discriminator: 2)
!1479 = !DILocation(line: 195, column: 135, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !491, file: !410, discriminator: 4)
!1481 = !DILocation(line: 195, column: 145, scope: !491)
!1482 = !DILocation(line: 195, column: 175, scope: !491)
!1483 = !DILocation(line: 195, column: 201, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !491, file: !410, line: 195, column: 198)
!1485 = !DILocation(line: 195, column: 218, scope: !1484)
!1486 = !DILocation(line: 195, column: 198, scope: !1484)
!1487 = !DILocation(line: 195, column: 228, scope: !1484)
!1488 = !DILocation(line: 195, column: 198, scope: !491)
!1489 = !DILocation(line: 195, column: 198, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !491, file: !410, discriminator: 5)
!1491 = !DILocation(line: 195, column: 259, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1484, file: !410, discriminator: 6)
!1493 = !DILocation(line: 195, column: 277, scope: !1484)
!1494 = !DILocation(line: 195, column: 287, scope: !1484)
!1495 = !DILocation(line: 195, column: 312, scope: !1484)
!1496 = !DILocation(line: 195, column: 243, scope: !1484)
!1497 = !DILocation(line: 195, column: 331, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !492, file: !410, discriminator: 7)
!1499 = !DILocation(line: 195, column: 331, scope: !491)
!1500 = !DILocation(line: 195, column: 331, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !491, file: !410, discriminator: 8)
!1502 = !DILocation(line: 195, column: 331, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !491, file: !410, discriminator: 9)
!1504 = !DILocation(line: 195, column: 344, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !410, discriminator: 10)
!1506 = !DILexicalBlockFile(scope: !484, file: !410, discriminator: 3)
!1507 = !DILocation(line: 195, column: 344, scope: !489)
!1508 = !DILocation(line: 196, column: 49, scope: !484)
!1509 = !DILocation(line: 196, column: 27, scope: !484)
!1510 = !DILocation(line: 196, column: 6, scope: !484)
!1511 = !DILocation(line: 196, column: 34, scope: !484)
!1512 = !DILocation(line: 196, column: 47, scope: !484)
!1513 = !DILocation(line: 197, column: 5, scope: !484)
!1514 = !DILocation(line: 198, column: 1, scope: !484)
!1515 = !DILocation(line: 201, column: 37, scope: !493)
!1516 = !DILocation(line: 203, column: 25, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !493, file: !410, line: 203, column: 9)
!1518 = !DILocation(line: 203, column: 31, scope: !1517)
!1519 = !DILocation(line: 203, column: 40, scope: !1517)
!1520 = !DILocation(line: 203, column: 9, scope: !493)
!1521 = !DILocation(line: 204, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !410, line: 203, column: 62)
!1523 = !DILocation(line: 205, column: 9, scope: !1522)
!1524 = !DILocation(line: 207, column: 34, scope: !493)
!1525 = !DILocation(line: 207, column: 13, scope: !493)
!1526 = !DILocation(line: 207, column: 41, scope: !493)
!1527 = !DILocation(line: 207, column: 5, scope: !493)
!1528 = !DILocation(line: 208, column: 1, scope: !493)
!1529 = !DILocation(line: 211, column: 37, scope: !496)
!1530 = !DILocation(line: 211, column: 51, scope: !496)
!1531 = !DILocation(line: 213, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !496, file: !410, line: 213, column: 9)
!1533 = !DILocation(line: 213, column: 31, scope: !1532)
!1534 = !DILocation(line: 213, column: 40, scope: !1532)
!1535 = !DILocation(line: 213, column: 9, scope: !496)
!1536 = !DILocation(line: 214, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !410, line: 213, column: 62)
!1538 = !DILocation(line: 215, column: 9, scope: !1537)
!1539 = !DILocation(line: 217, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !496, file: !410, line: 217, column: 9)
!1541 = !DILocation(line: 217, column: 21, scope: !1540)
!1542 = !DILocation(line: 217, column: 9, scope: !496)
!1543 = !DILocation(line: 218, column: 21, scope: !1540)
!1544 = !DILocation(line: 218, column: 9, scope: !1540)
!1545 = !DILocation(line: 219, column: 14, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !410, line: 219, column: 14)
!1547 = !DILocation(line: 219, column: 26, scope: !1546)
!1548 = !DILocation(line: 219, column: 46, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1546, file: !410, discriminator: 1)
!1550 = !DILocation(line: 219, column: 61, scope: !1546)
!1551 = !DILocation(line: 219, column: 72, scope: !1546)
!1552 = !DILocation(line: 219, column: 81, scope: !1546)
!1553 = !DILocation(line: 219, column: 98, scope: !1546)
!1554 = !DILocation(line: 219, column: 14, scope: !1540)
!1555 = !DILocation(line: 220, column: 25, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1546, file: !410, line: 219, column: 105)
!1557 = !DILocation(line: 220, column: 40, scope: !1556)
!1558 = !DILocation(line: 220, column: 49, scope: !1556)
!1559 = !DILocation(line: 221, column: 5, scope: !1556)
!1560 = !DILocation(line: 223, column: 25, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1546, file: !410, line: 222, column: 10)
!1562 = !DILocation(line: 223, column: 9, scope: !1561)
!1563 = !DILocation(line: 225, column: 9, scope: !1561)
!1564 = !DILocation(line: 227, column: 5, scope: !496)
!1565 = !DILocation(line: 227, column: 10, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !501, file: !410, discriminator: 1)
!1567 = !DILocation(line: 227, column: 20, scope: !501)
!1568 = !DILocation(line: 227, column: 72, scope: !501)
!1569 = !DILocation(line: 227, column: 52, scope: !501)
!1570 = !DILocation(line: 227, column: 79, scope: !501)
!1571 = !DILocation(line: 227, column: 102, scope: !504)
!1572 = !DILocation(line: 227, column: 118, scope: !504)
!1573 = !DILocation(line: 227, column: 102, scope: !501)
!1574 = !DILocation(line: 227, column: 133, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !504, file: !410, discriminator: 2)
!1576 = !DILocation(line: 227, column: 138, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !503, file: !410, discriminator: 4)
!1578 = !DILocation(line: 227, column: 148, scope: !503)
!1579 = !DILocation(line: 227, column: 178, scope: !503)
!1580 = !DILocation(line: 227, column: 204, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !503, file: !410, line: 227, column: 201)
!1582 = !DILocation(line: 227, column: 221, scope: !1581)
!1583 = !DILocation(line: 227, column: 201, scope: !1581)
!1584 = !DILocation(line: 227, column: 231, scope: !1581)
!1585 = !DILocation(line: 227, column: 201, scope: !503)
!1586 = !DILocation(line: 227, column: 201, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !503, file: !410, discriminator: 5)
!1588 = !DILocation(line: 227, column: 262, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1581, file: !410, discriminator: 6)
!1590 = !DILocation(line: 227, column: 280, scope: !1581)
!1591 = !DILocation(line: 227, column: 290, scope: !1581)
!1592 = !DILocation(line: 227, column: 315, scope: !1581)
!1593 = !DILocation(line: 227, column: 246, scope: !1581)
!1594 = !DILocation(line: 227, column: 334, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !504, file: !410, discriminator: 7)
!1596 = !DILocation(line: 227, column: 334, scope: !503)
!1597 = !DILocation(line: 227, column: 334, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !503, file: !410, discriminator: 8)
!1599 = !DILocation(line: 227, column: 334, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !503, file: !410, discriminator: 9)
!1601 = !DILocation(line: 227, column: 347, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !410, discriminator: 10)
!1603 = !DILexicalBlockFile(scope: !496, file: !410, discriminator: 3)
!1604 = !DILocation(line: 227, column: 347, scope: !501)
!1605 = !DILocation(line: 228, column: 53, scope: !496)
!1606 = !DILocation(line: 228, column: 27, scope: !496)
!1607 = !DILocation(line: 228, column: 6, scope: !496)
!1608 = !DILocation(line: 228, column: 34, scope: !496)
!1609 = !DILocation(line: 228, column: 51, scope: !496)
!1610 = !DILocation(line: 229, column: 5, scope: !496)
!1611 = !DILocation(line: 230, column: 1, scope: !496)
!1612 = !DILocation(line: 550, column: 32, scope: !513)
!1613 = !DILocation(line: 552, column: 5, scope: !513)
!1614 = !DILocation(line: 552, column: 10, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !519, file: !410, discriminator: 1)
!1616 = !DILocation(line: 552, column: 21, scope: !519)
!1617 = !DILocation(line: 552, column: 40, scope: !519)
!1618 = !DILocation(line: 552, column: 26, scope: !519)
!1619 = !DILocation(line: 552, column: 43, scope: !519)
!1620 = !DILocation(line: 552, column: 62, scope: !519)
!1621 = !DILocation(line: 552, column: 87, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !410, discriminator: 2)
!1623 = distinct !DILexicalBlock(scope: !519, file: !410, line: 552, column: 65)
!1624 = !DILocation(line: 552, column: 91, scope: !1623)
!1625 = !DILocation(line: 552, column: 94, scope: !1623)
!1626 = !DILocation(line: 552, column: 102, scope: !1623)
!1627 = !DILocation(line: 552, column: 129, scope: !1623)
!1628 = !DILocation(line: 552, column: 68, scope: !1623)
!1629 = !DILocation(line: 552, column: 72, scope: !1623)
!1630 = !DILocation(line: 552, column: 75, scope: !1623)
!1631 = !DILocation(line: 552, column: 83, scope: !1623)
!1632 = !DILocation(line: 552, column: 158, scope: !1623)
!1633 = !DILocation(line: 552, column: 158, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1623, file: !410, discriminator: 3)
!1635 = !DILocation(line: 552, column: 199, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !519, file: !410, discriminator: 4)
!1637 = !DILocation(line: 552, column: 202, scope: !519)
!1638 = !DILocation(line: 552, column: 205, scope: !519)
!1639 = !DILocation(line: 552, column: 171, scope: !519)
!1640 = !DILocation(line: 552, column: 174, scope: !519)
!1641 = !DILocation(line: 552, column: 177, scope: !519)
!1642 = !DILocation(line: 552, column: 186, scope: !519)
!1643 = !DILocation(line: 552, column: 189, scope: !519)
!1644 = !DILocation(line: 552, column: 197, scope: !519)
!1645 = !DILocation(line: 552, column: 242, scope: !519)
!1646 = !DILocation(line: 552, column: 245, scope: !519)
!1647 = !DILocation(line: 552, column: 248, scope: !519)
!1648 = !DILocation(line: 552, column: 214, scope: !519)
!1649 = !DILocation(line: 552, column: 217, scope: !519)
!1650 = !DILocation(line: 552, column: 220, scope: !519)
!1651 = !DILocation(line: 552, column: 229, scope: !519)
!1652 = !DILocation(line: 552, column: 232, scope: !519)
!1653 = !DILocation(line: 552, column: 240, scope: !519)
!1654 = !DILocation(line: 552, column: 257, scope: !519)
!1655 = !DILocation(line: 552, column: 260, scope: !519)
!1656 = !DILocation(line: 552, column: 263, scope: !519)
!1657 = !DILocation(line: 552, column: 271, scope: !519)
!1658 = !DILocation(line: 552, column: 285, scope: !513)
!1659 = !DILocation(line: 552, column: 285, scope: !519)
!1660 = !DILocation(line: 553, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !513, file: !410, line: 553, column: 9)
!1662 = !DILocation(line: 553, column: 13, scope: !1661)
!1663 = !DILocation(line: 553, column: 30, scope: !1661)
!1664 = !DILocation(line: 553, column: 9, scope: !513)
!1665 = !DILocation(line: 554, column: 45, scope: !1661)
!1666 = !DILocation(line: 554, column: 32, scope: !1661)
!1667 = !DILocation(line: 554, column: 9, scope: !1661)
!1668 = !DILocation(line: 555, column: 5, scope: !513)
!1669 = !DILocation(line: 555, column: 10, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !521, file: !410, discriminator: 1)
!1671 = !DILocation(line: 555, column: 20, scope: !521)
!1672 = !DILocation(line: 555, column: 50, scope: !521)
!1673 = !DILocation(line: 555, column: 54, scope: !521)
!1674 = !DILocation(line: 555, column: 74, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !521, file: !410, line: 555, column: 71)
!1676 = !DILocation(line: 555, column: 91, scope: !1675)
!1677 = !DILocation(line: 555, column: 71, scope: !1675)
!1678 = !DILocation(line: 555, column: 101, scope: !1675)
!1679 = !DILocation(line: 555, column: 71, scope: !521)
!1680 = !DILocation(line: 555, column: 71, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !521, file: !410, discriminator: 2)
!1682 = !DILocation(line: 555, column: 132, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1675, file: !410, discriminator: 3)
!1684 = !DILocation(line: 555, column: 150, scope: !1675)
!1685 = !DILocation(line: 555, column: 160, scope: !1675)
!1686 = !DILocation(line: 555, column: 185, scope: !1675)
!1687 = !DILocation(line: 555, column: 116, scope: !1675)
!1688 = !DILocation(line: 555, column: 204, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !513, file: !410, discriminator: 4)
!1690 = !DILocation(line: 555, column: 204, scope: !521)
!1691 = !DILocation(line: 556, column: 5, scope: !513)
!1692 = !DILocation(line: 556, column: 10, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !523, file: !410, discriminator: 1)
!1694 = !DILocation(line: 556, column: 20, scope: !523)
!1695 = !DILocation(line: 556, column: 50, scope: !523)
!1696 = !DILocation(line: 556, column: 54, scope: !523)
!1697 = !DILocation(line: 556, column: 77, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !523, file: !410, line: 556, column: 74)
!1699 = !DILocation(line: 556, column: 94, scope: !1698)
!1700 = !DILocation(line: 556, column: 74, scope: !1698)
!1701 = !DILocation(line: 556, column: 104, scope: !1698)
!1702 = !DILocation(line: 556, column: 74, scope: !523)
!1703 = !DILocation(line: 556, column: 74, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !523, file: !410, discriminator: 2)
!1705 = !DILocation(line: 556, column: 135, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1698, file: !410, discriminator: 3)
!1707 = !DILocation(line: 556, column: 153, scope: !1698)
!1708 = !DILocation(line: 556, column: 163, scope: !1698)
!1709 = !DILocation(line: 556, column: 188, scope: !1698)
!1710 = !DILocation(line: 556, column: 119, scope: !1698)
!1711 = !DILocation(line: 556, column: 207, scope: !1689)
!1712 = !DILocation(line: 556, column: 207, scope: !523)
!1713 = !DILocation(line: 557, column: 5, scope: !513)
!1714 = !DILocation(line: 557, column: 10, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !525, file: !410, discriminator: 1)
!1716 = !DILocation(line: 557, column: 20, scope: !525)
!1717 = !DILocation(line: 557, column: 51, scope: !525)
!1718 = !DILocation(line: 557, column: 55, scope: !525)
!1719 = !DILocation(line: 557, column: 73, scope: !528)
!1720 = !DILocation(line: 557, column: 89, scope: !528)
!1721 = !DILocation(line: 557, column: 73, scope: !525)
!1722 = !DILocation(line: 557, column: 104, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !528, file: !410, discriminator: 2)
!1724 = !DILocation(line: 557, column: 109, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !527, file: !410, discriminator: 4)
!1726 = !DILocation(line: 557, column: 119, scope: !527)
!1727 = !DILocation(line: 557, column: 149, scope: !527)
!1728 = !DILocation(line: 557, column: 175, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !527, file: !410, line: 557, column: 172)
!1730 = !DILocation(line: 557, column: 192, scope: !1729)
!1731 = !DILocation(line: 557, column: 172, scope: !1729)
!1732 = !DILocation(line: 557, column: 202, scope: !1729)
!1733 = !DILocation(line: 557, column: 172, scope: !527)
!1734 = !DILocation(line: 557, column: 172, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !527, file: !410, discriminator: 5)
!1736 = !DILocation(line: 557, column: 233, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1729, file: !410, discriminator: 6)
!1738 = !DILocation(line: 557, column: 251, scope: !1729)
!1739 = !DILocation(line: 557, column: 261, scope: !1729)
!1740 = !DILocation(line: 557, column: 286, scope: !1729)
!1741 = !DILocation(line: 557, column: 217, scope: !1729)
!1742 = !DILocation(line: 557, column: 305, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !528, file: !410, discriminator: 7)
!1744 = !DILocation(line: 557, column: 305, scope: !527)
!1745 = !DILocation(line: 557, column: 305, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !527, file: !410, discriminator: 8)
!1747 = !DILocation(line: 557, column: 305, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !527, file: !410, discriminator: 9)
!1749 = !DILocation(line: 557, column: 318, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1751, file: !410, discriminator: 10)
!1751 = !DILexicalBlockFile(scope: !513, file: !410, discriminator: 3)
!1752 = !DILocation(line: 557, column: 318, scope: !525)
!1753 = !DILocation(line: 558, column: 5, scope: !513)
!1754 = !DILocation(line: 558, column: 10, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !530, file: !410, discriminator: 1)
!1756 = !DILocation(line: 558, column: 20, scope: !530)
!1757 = !DILocation(line: 558, column: 50, scope: !530)
!1758 = !DILocation(line: 558, column: 54, scope: !530)
!1759 = !DILocation(line: 558, column: 74, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !530, file: !410, line: 558, column: 71)
!1761 = !DILocation(line: 558, column: 91, scope: !1760)
!1762 = !DILocation(line: 558, column: 71, scope: !1760)
!1763 = !DILocation(line: 558, column: 101, scope: !1760)
!1764 = !DILocation(line: 558, column: 71, scope: !530)
!1765 = !DILocation(line: 558, column: 71, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !530, file: !410, discriminator: 2)
!1767 = !DILocation(line: 558, column: 132, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1760, file: !410, discriminator: 3)
!1769 = !DILocation(line: 558, column: 150, scope: !1760)
!1770 = !DILocation(line: 558, column: 160, scope: !1760)
!1771 = !DILocation(line: 558, column: 185, scope: !1760)
!1772 = !DILocation(line: 558, column: 116, scope: !1760)
!1773 = !DILocation(line: 558, column: 204, scope: !1689)
!1774 = !DILocation(line: 558, column: 204, scope: !530)
!1775 = !DILocation(line: 559, column: 5, scope: !513)
!1776 = !DILocation(line: 559, column: 10, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !532, file: !410, discriminator: 1)
!1778 = !DILocation(line: 559, column: 20, scope: !532)
!1779 = !DILocation(line: 559, column: 51, scope: !532)
!1780 = !DILocation(line: 559, column: 55, scope: !532)
!1781 = !DILocation(line: 559, column: 75, scope: !535)
!1782 = !DILocation(line: 559, column: 91, scope: !535)
!1783 = !DILocation(line: 559, column: 75, scope: !532)
!1784 = !DILocation(line: 559, column: 106, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !535, file: !410, discriminator: 2)
!1786 = !DILocation(line: 559, column: 111, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !534, file: !410, discriminator: 4)
!1788 = !DILocation(line: 559, column: 121, scope: !534)
!1789 = !DILocation(line: 559, column: 151, scope: !534)
!1790 = !DILocation(line: 559, column: 177, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !534, file: !410, line: 559, column: 174)
!1792 = !DILocation(line: 559, column: 194, scope: !1791)
!1793 = !DILocation(line: 559, column: 174, scope: !1791)
!1794 = !DILocation(line: 559, column: 204, scope: !1791)
!1795 = !DILocation(line: 559, column: 174, scope: !534)
!1796 = !DILocation(line: 559, column: 174, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !534, file: !410, discriminator: 5)
!1798 = !DILocation(line: 559, column: 235, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1791, file: !410, discriminator: 6)
!1800 = !DILocation(line: 559, column: 253, scope: !1791)
!1801 = !DILocation(line: 559, column: 263, scope: !1791)
!1802 = !DILocation(line: 559, column: 288, scope: !1791)
!1803 = !DILocation(line: 559, column: 219, scope: !1791)
!1804 = !DILocation(line: 559, column: 307, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !535, file: !410, discriminator: 7)
!1806 = !DILocation(line: 559, column: 307, scope: !534)
!1807 = !DILocation(line: 559, column: 307, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !534, file: !410, discriminator: 8)
!1809 = !DILocation(line: 559, column: 307, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !534, file: !410, discriminator: 9)
!1811 = !DILocation(line: 559, column: 320, scope: !1750)
!1812 = !DILocation(line: 559, column: 320, scope: !532)
!1813 = !DILocation(line: 560, column: 5, scope: !513)
!1814 = !DILocation(line: 560, column: 10, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !537, file: !410, discriminator: 1)
!1816 = !DILocation(line: 560, column: 20, scope: !537)
!1817 = !DILocation(line: 560, column: 51, scope: !537)
!1818 = !DILocation(line: 560, column: 55, scope: !537)
!1819 = !DILocation(line: 560, column: 77, scope: !540)
!1820 = !DILocation(line: 560, column: 93, scope: !540)
!1821 = !DILocation(line: 560, column: 77, scope: !537)
!1822 = !DILocation(line: 560, column: 108, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !540, file: !410, discriminator: 2)
!1824 = !DILocation(line: 560, column: 113, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !539, file: !410, discriminator: 4)
!1826 = !DILocation(line: 560, column: 123, scope: !539)
!1827 = !DILocation(line: 560, column: 153, scope: !539)
!1828 = !DILocation(line: 560, column: 179, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !539, file: !410, line: 560, column: 176)
!1830 = !DILocation(line: 560, column: 196, scope: !1829)
!1831 = !DILocation(line: 560, column: 176, scope: !1829)
!1832 = !DILocation(line: 560, column: 206, scope: !1829)
!1833 = !DILocation(line: 560, column: 176, scope: !539)
!1834 = !DILocation(line: 560, column: 176, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !539, file: !410, discriminator: 5)
!1836 = !DILocation(line: 560, column: 237, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1829, file: !410, discriminator: 6)
!1838 = !DILocation(line: 560, column: 255, scope: !1829)
!1839 = !DILocation(line: 560, column: 265, scope: !1829)
!1840 = !DILocation(line: 560, column: 290, scope: !1829)
!1841 = !DILocation(line: 560, column: 221, scope: !1829)
!1842 = !DILocation(line: 560, column: 309, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !540, file: !410, discriminator: 7)
!1844 = !DILocation(line: 560, column: 309, scope: !539)
!1845 = !DILocation(line: 560, column: 309, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !539, file: !410, discriminator: 8)
!1847 = !DILocation(line: 560, column: 309, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !539, file: !410, discriminator: 9)
!1849 = !DILocation(line: 560, column: 322, scope: !1750)
!1850 = !DILocation(line: 560, column: 322, scope: !537)
!1851 = !DILocation(line: 561, column: 5, scope: !513)
!1852 = !DILocation(line: 561, column: 10, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !542, file: !410, discriminator: 1)
!1854 = !DILocation(line: 561, column: 20, scope: !542)
!1855 = !DILocation(line: 561, column: 51, scope: !542)
!1856 = !DILocation(line: 561, column: 55, scope: !542)
!1857 = !DILocation(line: 561, column: 70, scope: !545)
!1858 = !DILocation(line: 561, column: 86, scope: !545)
!1859 = !DILocation(line: 561, column: 70, scope: !542)
!1860 = !DILocation(line: 561, column: 101, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !545, file: !410, discriminator: 2)
!1862 = !DILocation(line: 561, column: 106, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !544, file: !410, discriminator: 4)
!1864 = !DILocation(line: 561, column: 116, scope: !544)
!1865 = !DILocation(line: 561, column: 146, scope: !544)
!1866 = !DILocation(line: 561, column: 172, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !544, file: !410, line: 561, column: 169)
!1868 = !DILocation(line: 561, column: 189, scope: !1867)
!1869 = !DILocation(line: 561, column: 169, scope: !1867)
!1870 = !DILocation(line: 561, column: 199, scope: !1867)
!1871 = !DILocation(line: 561, column: 169, scope: !544)
!1872 = !DILocation(line: 561, column: 169, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !544, file: !410, discriminator: 5)
!1874 = !DILocation(line: 561, column: 230, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1867, file: !410, discriminator: 6)
!1876 = !DILocation(line: 561, column: 248, scope: !1867)
!1877 = !DILocation(line: 561, column: 258, scope: !1867)
!1878 = !DILocation(line: 561, column: 283, scope: !1867)
!1879 = !DILocation(line: 561, column: 214, scope: !1867)
!1880 = !DILocation(line: 561, column: 302, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !545, file: !410, discriminator: 7)
!1882 = !DILocation(line: 561, column: 302, scope: !544)
!1883 = !DILocation(line: 561, column: 302, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !544, file: !410, discriminator: 8)
!1885 = !DILocation(line: 561, column: 302, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !544, file: !410, discriminator: 9)
!1887 = !DILocation(line: 561, column: 315, scope: !1750)
!1888 = !DILocation(line: 561, column: 315, scope: !542)
!1889 = !DILocation(line: 562, column: 5, scope: !513)
!1890 = !DILocation(line: 562, column: 10, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !547, file: !410, discriminator: 1)
!1892 = !DILocation(line: 562, column: 20, scope: !547)
!1893 = !DILocation(line: 562, column: 51, scope: !547)
!1894 = !DILocation(line: 562, column: 55, scope: !547)
!1895 = !DILocation(line: 562, column: 71, scope: !550)
!1896 = !DILocation(line: 562, column: 87, scope: !550)
!1897 = !DILocation(line: 562, column: 71, scope: !547)
!1898 = !DILocation(line: 562, column: 102, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !550, file: !410, discriminator: 2)
!1900 = !DILocation(line: 562, column: 107, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !549, file: !410, discriminator: 4)
!1902 = !DILocation(line: 562, column: 117, scope: !549)
!1903 = !DILocation(line: 562, column: 147, scope: !549)
!1904 = !DILocation(line: 562, column: 173, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !549, file: !410, line: 562, column: 170)
!1906 = !DILocation(line: 562, column: 190, scope: !1905)
!1907 = !DILocation(line: 562, column: 170, scope: !1905)
!1908 = !DILocation(line: 562, column: 200, scope: !1905)
!1909 = !DILocation(line: 562, column: 170, scope: !549)
!1910 = !DILocation(line: 562, column: 170, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !549, file: !410, discriminator: 5)
!1912 = !DILocation(line: 562, column: 231, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1905, file: !410, discriminator: 6)
!1914 = !DILocation(line: 562, column: 249, scope: !1905)
!1915 = !DILocation(line: 562, column: 259, scope: !1905)
!1916 = !DILocation(line: 562, column: 284, scope: !1905)
!1917 = !DILocation(line: 562, column: 215, scope: !1905)
!1918 = !DILocation(line: 562, column: 303, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !550, file: !410, discriminator: 7)
!1920 = !DILocation(line: 562, column: 303, scope: !549)
!1921 = !DILocation(line: 562, column: 303, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !549, file: !410, discriminator: 8)
!1923 = !DILocation(line: 562, column: 303, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !549, file: !410, discriminator: 9)
!1925 = !DILocation(line: 562, column: 316, scope: !1750)
!1926 = !DILocation(line: 562, column: 316, scope: !547)
!1927 = !DILocation(line: 563, column: 5, scope: !513)
!1928 = !DILocation(line: 563, column: 10, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !552, file: !410, discriminator: 1)
!1930 = !DILocation(line: 563, column: 20, scope: !552)
!1931 = !DILocation(line: 563, column: 51, scope: !552)
!1932 = !DILocation(line: 563, column: 55, scope: !552)
!1933 = !DILocation(line: 563, column: 74, scope: !555)
!1934 = !DILocation(line: 563, column: 90, scope: !555)
!1935 = !DILocation(line: 563, column: 74, scope: !552)
!1936 = !DILocation(line: 563, column: 105, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !555, file: !410, discriminator: 2)
!1938 = !DILocation(line: 563, column: 110, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !554, file: !410, discriminator: 4)
!1940 = !DILocation(line: 563, column: 120, scope: !554)
!1941 = !DILocation(line: 563, column: 150, scope: !554)
!1942 = !DILocation(line: 563, column: 176, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !554, file: !410, line: 563, column: 173)
!1944 = !DILocation(line: 563, column: 193, scope: !1943)
!1945 = !DILocation(line: 563, column: 173, scope: !1943)
!1946 = !DILocation(line: 563, column: 203, scope: !1943)
!1947 = !DILocation(line: 563, column: 173, scope: !554)
!1948 = !DILocation(line: 563, column: 173, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !554, file: !410, discriminator: 5)
!1950 = !DILocation(line: 563, column: 234, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1943, file: !410, discriminator: 6)
!1952 = !DILocation(line: 563, column: 252, scope: !1943)
!1953 = !DILocation(line: 563, column: 262, scope: !1943)
!1954 = !DILocation(line: 563, column: 287, scope: !1943)
!1955 = !DILocation(line: 563, column: 218, scope: !1943)
!1956 = !DILocation(line: 563, column: 306, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !555, file: !410, discriminator: 7)
!1958 = !DILocation(line: 563, column: 306, scope: !554)
!1959 = !DILocation(line: 563, column: 306, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !554, file: !410, discriminator: 8)
!1961 = !DILocation(line: 563, column: 306, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !554, file: !410, discriminator: 9)
!1963 = !DILocation(line: 563, column: 319, scope: !1750)
!1964 = !DILocation(line: 563, column: 319, scope: !552)
!1965 = !DILocation(line: 564, column: 5, scope: !513)
!1966 = !DILocation(line: 564, column: 10, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !557, file: !410, discriminator: 1)
!1968 = !DILocation(line: 564, column: 20, scope: !557)
!1969 = !DILocation(line: 564, column: 51, scope: !557)
!1970 = !DILocation(line: 564, column: 55, scope: !557)
!1971 = !DILocation(line: 564, column: 78, scope: !560)
!1972 = !DILocation(line: 564, column: 94, scope: !560)
!1973 = !DILocation(line: 564, column: 78, scope: !557)
!1974 = !DILocation(line: 564, column: 109, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !560, file: !410, discriminator: 2)
!1976 = !DILocation(line: 564, column: 114, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !559, file: !410, discriminator: 4)
!1978 = !DILocation(line: 564, column: 124, scope: !559)
!1979 = !DILocation(line: 564, column: 154, scope: !559)
!1980 = !DILocation(line: 564, column: 180, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !559, file: !410, line: 564, column: 177)
!1982 = !DILocation(line: 564, column: 197, scope: !1981)
!1983 = !DILocation(line: 564, column: 177, scope: !1981)
!1984 = !DILocation(line: 564, column: 207, scope: !1981)
!1985 = !DILocation(line: 564, column: 177, scope: !559)
!1986 = !DILocation(line: 564, column: 177, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !559, file: !410, discriminator: 5)
!1988 = !DILocation(line: 564, column: 238, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1981, file: !410, discriminator: 6)
!1990 = !DILocation(line: 564, column: 256, scope: !1981)
!1991 = !DILocation(line: 564, column: 266, scope: !1981)
!1992 = !DILocation(line: 564, column: 291, scope: !1981)
!1993 = !DILocation(line: 564, column: 222, scope: !1981)
!1994 = !DILocation(line: 564, column: 310, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !560, file: !410, discriminator: 7)
!1996 = !DILocation(line: 564, column: 310, scope: !559)
!1997 = !DILocation(line: 564, column: 310, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !559, file: !410, discriminator: 8)
!1999 = !DILocation(line: 564, column: 310, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !559, file: !410, discriminator: 9)
!2001 = !DILocation(line: 564, column: 323, scope: !1750)
!2002 = !DILocation(line: 564, column: 323, scope: !557)
!2003 = !DILocation(line: 565, column: 5, scope: !513)
!2004 = !DILocation(line: 565, column: 10, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !562, file: !410, discriminator: 1)
!2006 = !DILocation(line: 565, column: 20, scope: !562)
!2007 = !DILocation(line: 565, column: 51, scope: !562)
!2008 = !DILocation(line: 565, column: 55, scope: !562)
!2009 = !DILocation(line: 565, column: 75, scope: !565)
!2010 = !DILocation(line: 565, column: 91, scope: !565)
!2011 = !DILocation(line: 565, column: 75, scope: !562)
!2012 = !DILocation(line: 565, column: 106, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !565, file: !410, discriminator: 2)
!2014 = !DILocation(line: 565, column: 111, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !564, file: !410, discriminator: 4)
!2016 = !DILocation(line: 565, column: 121, scope: !564)
!2017 = !DILocation(line: 565, column: 151, scope: !564)
!2018 = !DILocation(line: 565, column: 177, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !564, file: !410, line: 565, column: 174)
!2020 = !DILocation(line: 565, column: 194, scope: !2019)
!2021 = !DILocation(line: 565, column: 174, scope: !2019)
!2022 = !DILocation(line: 565, column: 204, scope: !2019)
!2023 = !DILocation(line: 565, column: 174, scope: !564)
!2024 = !DILocation(line: 565, column: 174, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !564, file: !410, discriminator: 5)
!2026 = !DILocation(line: 565, column: 235, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2019, file: !410, discriminator: 6)
!2028 = !DILocation(line: 565, column: 253, scope: !2019)
!2029 = !DILocation(line: 565, column: 263, scope: !2019)
!2030 = !DILocation(line: 565, column: 288, scope: !2019)
!2031 = !DILocation(line: 565, column: 219, scope: !2019)
!2032 = !DILocation(line: 565, column: 307, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !565, file: !410, discriminator: 7)
!2034 = !DILocation(line: 565, column: 307, scope: !564)
!2035 = !DILocation(line: 565, column: 307, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !564, file: !410, discriminator: 8)
!2037 = !DILocation(line: 565, column: 307, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !564, file: !410, discriminator: 9)
!2039 = !DILocation(line: 565, column: 320, scope: !1750)
!2040 = !DILocation(line: 565, column: 320, scope: !562)
!2041 = !DILocation(line: 566, column: 21, scope: !513)
!2042 = !DILocation(line: 566, column: 5, scope: !513)
!2043 = !DILocation(line: 567, column: 1, scope: !513)
!2044 = !DILocation(line: 570, column: 29, scope: !566)
!2045 = !DILocation(line: 573, column: 32, scope: !566)
!2046 = !DILocation(line: 573, column: 36, scope: !566)
!2047 = !DILocation(line: 573, column: 51, scope: !566)
!2048 = !DILocation(line: 572, column: 12, scope: !566)
!2049 = !DILocation(line: 572, column: 5, scope: !566)
!2050 = !DILocation(line: 594, column: 25, scope: !571)
!2051 = !DILocation(line: 594, column: 41, scope: !571)
!2052 = !DILocation(line: 594, column: 56, scope: !571)
!2053 = !DILocation(line: 596, column: 5, scope: !571)
!2054 = !DILocation(line: 596, column: 15, scope: !571)
!2055 = !DILocation(line: 597, column: 5, scope: !571)
!2056 = !DILocation(line: 597, column: 15, scope: !571)
!2057 = !DILocation(line: 598, column: 5, scope: !571)
!2058 = !DILocation(line: 598, column: 15, scope: !571)
!2059 = !DILocation(line: 599, column: 5, scope: !571)
!2060 = !DILocation(line: 599, column: 16, scope: !571)
!2061 = !DILocation(line: 599, column: 21, scope: !571)
!2062 = !DILocation(line: 600, column: 5, scope: !571)
!2063 = !DILocation(line: 600, column: 16, scope: !571)
!2064 = !DILocation(line: 600, column: 20, scope: !571)
!2065 = !DILocation(line: 602, column: 37, scope: !571)
!2066 = !DILocation(line: 602, column: 17, scope: !571)
!2067 = !DILocation(line: 602, column: 46, scope: !571)
!2068 = !DILocation(line: 602, column: 13, scope: !571)
!2069 = !DILocation(line: 603, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !571, file: !410, line: 603, column: 9)
!2071 = !DILocation(line: 603, column: 17, scope: !2070)
!2072 = !DILocation(line: 603, column: 31, scope: !2070)
!2073 = !DILocation(line: 603, column: 51, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2070, file: !410, discriminator: 1)
!2075 = !DILocation(line: 603, column: 62, scope: !2070)
!2076 = !DILocation(line: 603, column: 73, scope: !2070)
!2077 = !DILocation(line: 603, column: 82, scope: !2070)
!2078 = !DILocation(line: 603, column: 99, scope: !2070)
!2079 = !DILocation(line: 603, column: 9, scope: !571)
!2080 = !DILocation(line: 604, column: 51, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2070, file: !410, line: 603, column: 106)
!2082 = !DILocation(line: 604, column: 34, scope: !2081)
!2083 = !DILocation(line: 604, column: 62, scope: !2081)
!2084 = !DILocation(line: 604, column: 15, scope: !2081)
!2085 = !DILocation(line: 604, column: 11, scope: !2081)
!2086 = !DILocation(line: 605, column: 31, scope: !2081)
!2087 = !DILocation(line: 605, column: 16, scope: !2081)
!2088 = !DILocation(line: 605, column: 42, scope: !2081)
!2089 = !{!1044, !979, i64 16}
!2090 = !DILocation(line: 605, column: 12, scope: !2081)
!2091 = !{!979, !979, i64 0}
!2092 = !DILocation(line: 606, column: 5, scope: !2081)
!2093 = !DILocation(line: 608, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2070, file: !410, line: 607, column: 10)
!2095 = !DILocation(line: 609, column: 12, scope: !2094)
!2096 = !DILocation(line: 612, column: 9, scope: !586)
!2097 = !DILocation(line: 612, column: 12, scope: !586)
!2098 = !DILocation(line: 612, column: 26, scope: !586)
!2099 = !DILocation(line: 612, column: 46, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !586, file: !410, discriminator: 1)
!2101 = !DILocation(line: 612, column: 52, scope: !586)
!2102 = !DILocation(line: 612, column: 63, scope: !586)
!2103 = !DILocation(line: 612, column: 72, scope: !586)
!2104 = !DILocation(line: 612, column: 89, scope: !586)
!2105 = !DILocation(line: 612, column: 9, scope: !571)
!2106 = !DILocation(line: 613, column: 9, scope: !585)
!2107 = !DILocation(line: 613, column: 20, scope: !585)
!2108 = !DILocation(line: 613, column: 25, scope: !585)
!2109 = !DILocation(line: 614, column: 26, scope: !585)
!2110 = !DILocation(line: 614, column: 14, scope: !585)
!2111 = !DILocation(line: 614, column: 12, scope: !585)
!2112 = !DILocation(line: 615, column: 33, scope: !585)
!2113 = !DILocation(line: 615, column: 32, scope: !585)
!2114 = !DILocation(line: 615, column: 19, scope: !585)
!2115 = !DILocation(line: 615, column: 17, scope: !585)
!2116 = !DILocation(line: 616, column: 13, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !585, file: !410, line: 616, column: 13)
!2118 = !DILocation(line: 616, column: 21, scope: !2117)
!2119 = !DILocation(line: 616, column: 13, scope: !585)
!2120 = !DILocation(line: 617, column: 13, scope: !2117)
!2121 = !DILocation(line: 618, column: 34, scope: !585)
!2122 = !DILocation(line: 618, column: 16, scope: !585)
!2123 = !DILocation(line: 618, column: 45, scope: !585)
!2124 = !DILocation(line: 618, column: 15, scope: !585)
!2125 = !DILocation(line: 618, column: 11, scope: !585)
!2126 = !DILocation(line: 619, column: 17, scope: !585)
!2127 = !DILocation(line: 619, column: 13, scope: !585)
!2128 = !DILocation(line: 620, column: 9, scope: !585)
!2129 = !DILocation(line: 620, column: 28, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !410, discriminator: 2)
!2131 = !DILexicalBlockFile(scope: !585, file: !410, discriminator: 1)
!2132 = !DILocation(line: 620, column: 41, scope: !585)
!2133 = !DILocation(line: 620, column: 39, scope: !585)
!2134 = !DILocation(line: 620, column: 48, scope: !585)
!2135 = !DILocation(line: 620, column: 49, scope: !585)
!2136 = !DILocation(line: 620, column: 46, scope: !585)
!2137 = !DILocation(line: 620, column: 16, scope: !585)
!2138 = !DILocation(line: 621, column: 31, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !585, file: !410, line: 620, column: 55)
!2140 = !DILocation(line: 621, column: 29, scope: !2139)
!2141 = !DILocation(line: 621, column: 37, scope: !2139)
!2142 = !DILocation(line: 621, column: 46, scope: !2139)
!2143 = !DILocation(line: 622, column: 31, scope: !2139)
!2144 = !DILocation(line: 622, column: 32, scope: !2139)
!2145 = !DILocation(line: 622, column: 29, scope: !2139)
!2146 = !DILocation(line: 622, column: 39, scope: !2139)
!2147 = !DILocation(line: 622, column: 48, scope: !2139)
!2148 = !DILocation(line: 623, column: 15, scope: !2139)
!2149 = !DILocation(line: 625, column: 14, scope: !585)
!2150 = !DILocation(line: 625, column: 15, scope: !585)
!2151 = !DILocation(line: 625, column: 12, scope: !585)
!2152 = !DILocation(line: 626, column: 5, scope: !586)
!2153 = !DILocation(line: 626, column: 5, scope: !2100)
!2154 = !DILocation(line: 626, column: 5, scope: !585)
!2155 = !DILocation(line: 628, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !586, file: !410, line: 627, column: 10)
!2157 = !DILocation(line: 629, column: 12, scope: !2156)
!2158 = !DILocation(line: 633, column: 31, scope: !571)
!2159 = !DILocation(line: 633, column: 11, scope: !571)
!2160 = !DILocation(line: 633, column: 40, scope: !571)
!2161 = !DILocation(line: 634, column: 31, scope: !571)
!2162 = !DILocation(line: 634, column: 11, scope: !571)
!2163 = !DILocation(line: 634, column: 40, scope: !571)
!2164 = !DILocation(line: 635, column: 30, scope: !571)
!2165 = !DILocation(line: 635, column: 12, scope: !571)
!2166 = !DILocation(line: 635, column: 37, scope: !571)
!2167 = !DILocation(line: 635, column: 11, scope: !571)
!2168 = !DILocation(line: 635, column: 67, scope: !571)
!2169 = !DILocation(line: 635, column: 52, scope: !571)
!2170 = !DILocation(line: 635, column: 74, scope: !571)
!2171 = !DILocation(line: 635, column: 50, scope: !571)
!2172 = !DILocation(line: 636, column: 9, scope: !571)
!2173 = !DILocation(line: 636, column: 12, scope: !571)
!2174 = !DILocation(line: 636, column: 16, scope: !571)
!2175 = !DILocation(line: 636, column: 19, scope: !571)
!2176 = !DILocation(line: 637, column: 31, scope: !571)
!2177 = !DILocation(line: 637, column: 11, scope: !571)
!2178 = !DILocation(line: 637, column: 40, scope: !571)
!2179 = !DILocation(line: 638, column: 31, scope: !571)
!2180 = !DILocation(line: 638, column: 11, scope: !571)
!2181 = !DILocation(line: 638, column: 40, scope: !571)
!2182 = !DILocation(line: 632, column: 14, scope: !571)
!2183 = !DILocation(line: 632, column: 12, scope: !571)
!2184 = !DILocation(line: 640, column: 5, scope: !571)
!2185 = !DILocation(line: 640, column: 10, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !589, file: !410, discriminator: 1)
!2187 = !DILocation(line: 640, column: 20, scope: !589)
!2188 = !DILocation(line: 640, column: 51, scope: !589)
!2189 = !DILocation(line: 640, column: 65, scope: !592)
!2190 = !DILocation(line: 640, column: 81, scope: !592)
!2191 = !DILocation(line: 640, column: 65, scope: !589)
!2192 = !DILocation(line: 640, column: 96, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !592, file: !410, discriminator: 2)
!2194 = !DILocation(line: 640, column: 101, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !591, file: !410, discriminator: 4)
!2196 = !DILocation(line: 640, column: 111, scope: !591)
!2197 = !DILocation(line: 640, column: 141, scope: !591)
!2198 = !DILocation(line: 640, column: 167, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !591, file: !410, line: 640, column: 164)
!2200 = !DILocation(line: 640, column: 184, scope: !2199)
!2201 = !DILocation(line: 640, column: 164, scope: !2199)
!2202 = !DILocation(line: 640, column: 194, scope: !2199)
!2203 = !DILocation(line: 640, column: 164, scope: !591)
!2204 = !DILocation(line: 640, column: 164, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !591, file: !410, discriminator: 5)
!2206 = !DILocation(line: 640, column: 225, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2199, file: !410, discriminator: 6)
!2208 = !DILocation(line: 640, column: 243, scope: !2199)
!2209 = !DILocation(line: 640, column: 253, scope: !2199)
!2210 = !DILocation(line: 640, column: 278, scope: !2199)
!2211 = !DILocation(line: 640, column: 209, scope: !2199)
!2212 = !DILocation(line: 640, column: 297, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !592, file: !410, discriminator: 7)
!2214 = !DILocation(line: 640, column: 297, scope: !591)
!2215 = !DILocation(line: 640, column: 297, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !591, file: !410, discriminator: 8)
!2217 = !DILocation(line: 640, column: 297, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !591, file: !410, discriminator: 9)
!2219 = !DILocation(line: 640, column: 310, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !410, discriminator: 10)
!2221 = !DILexicalBlockFile(scope: !571, file: !410, discriminator: 3)
!2222 = !DILocation(line: 640, column: 310, scope: !589)
!2223 = !DILocation(line: 640, column: 310, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !589, file: !410, discriminator: 11)
!2225 = !DILocation(line: 642, column: 12, scope: !571)
!2226 = !DILocation(line: 642, column: 5, scope: !571)
!2227 = !DILocation(line: 643, column: 1, scope: !571)
!2228 = !DILocation(line: 577, column: 33, scope: !593)
!2229 = !DILocation(line: 577, column: 46, scope: !593)
!2230 = !DILocation(line: 577, column: 59, scope: !593)
!2231 = !DILocation(line: 579, column: 5, scope: !593)
!2232 = !DILocation(line: 579, column: 14, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !602, file: !410, discriminator: 1)
!2234 = !DILocation(line: 579, column: 17, scope: !602)
!2235 = !DILocation(line: 579, column: 14, scope: !602)
!2236 = !DILocation(line: 579, column: 14, scope: !603)
!2237 = !DILocation(line: 579, column: 30, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !601, file: !410, discriminator: 2)
!2239 = !DILocation(line: 579, column: 34, scope: !601)
!2240 = !DILocation(line: 579, column: 41, scope: !601)
!2241 = !DILocation(line: 579, column: 60, scope: !601)
!2242 = !DILocation(line: 579, column: 63, scope: !601)
!2243 = !DILocation(line: 579, column: 75, scope: !601)
!2244 = !{!1002, !1002, i64 0}
!2245 = !DILocation(line: 579, column: 85, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !601, file: !410, line: 579, column: 85)
!2247 = !DILocation(line: 579, column: 85, scope: !601)
!2248 = !DILocation(line: 579, column: 98, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2246, file: !410, discriminator: 4)
!2250 = !DILocation(line: 579, column: 91, scope: !2246)
!2251 = !DILocation(line: 579, column: 104, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !602, file: !410, discriminator: 5)
!2253 = !DILocation(line: 579, column: 104, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2255, file: !410, discriminator: 7)
!2255 = !DILexicalBlockFile(scope: !602, file: !410, discriminator: 6)
!2256 = !DILocation(line: 579, column: 104, scope: !601)
!2257 = !DILocation(line: 579, column: 106, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !410, discriminator: 8)
!2259 = !DILexicalBlockFile(scope: !603, file: !410, discriminator: 3)
!2260 = !DILocation(line: 580, column: 5, scope: !593)
!2261 = !DILocation(line: 580, column: 14, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !606, file: !410, discriminator: 1)
!2263 = !DILocation(line: 580, column: 17, scope: !606)
!2264 = !DILocation(line: 580, column: 14, scope: !606)
!2265 = !DILocation(line: 580, column: 14, scope: !607)
!2266 = !DILocation(line: 580, column: 33, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !605, file: !410, discriminator: 2)
!2268 = !DILocation(line: 580, column: 37, scope: !605)
!2269 = !DILocation(line: 580, column: 44, scope: !605)
!2270 = !DILocation(line: 580, column: 63, scope: !605)
!2271 = !DILocation(line: 580, column: 66, scope: !605)
!2272 = !DILocation(line: 580, column: 81, scope: !605)
!2273 = !DILocation(line: 580, column: 91, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !605, file: !410, line: 580, column: 91)
!2275 = !DILocation(line: 580, column: 91, scope: !605)
!2276 = !DILocation(line: 580, column: 104, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2274, file: !410, discriminator: 4)
!2278 = !DILocation(line: 580, column: 97, scope: !2274)
!2279 = !DILocation(line: 580, column: 110, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !606, file: !410, discriminator: 5)
!2281 = !DILocation(line: 580, column: 110, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2283, file: !410, discriminator: 7)
!2283 = !DILexicalBlockFile(scope: !606, file: !410, discriminator: 6)
!2284 = !DILocation(line: 580, column: 110, scope: !605)
!2285 = !DILocation(line: 580, column: 112, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !410, discriminator: 8)
!2287 = !DILexicalBlockFile(scope: !607, file: !410, discriminator: 3)
!2288 = !DILocation(line: 581, column: 5, scope: !593)
!2289 = !DILocation(line: 581, column: 14, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !610, file: !410, discriminator: 1)
!2291 = !DILocation(line: 581, column: 17, scope: !610)
!2292 = !DILocation(line: 581, column: 14, scope: !610)
!2293 = !DILocation(line: 581, column: 14, scope: !611)
!2294 = !DILocation(line: 581, column: 32, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !609, file: !410, discriminator: 2)
!2296 = !DILocation(line: 581, column: 36, scope: !609)
!2297 = !DILocation(line: 581, column: 43, scope: !609)
!2298 = !DILocation(line: 581, column: 62, scope: !609)
!2299 = !DILocation(line: 581, column: 65, scope: !609)
!2300 = !DILocation(line: 581, column: 79, scope: !609)
!2301 = !DILocation(line: 581, column: 89, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !609, file: !410, line: 581, column: 89)
!2303 = !DILocation(line: 581, column: 89, scope: !609)
!2304 = !DILocation(line: 581, column: 102, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2302, file: !410, discriminator: 4)
!2306 = !DILocation(line: 581, column: 95, scope: !2302)
!2307 = !DILocation(line: 581, column: 108, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !610, file: !410, discriminator: 5)
!2309 = !DILocation(line: 581, column: 108, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2311, file: !410, discriminator: 7)
!2311 = !DILexicalBlockFile(scope: !610, file: !410, discriminator: 6)
!2312 = !DILocation(line: 581, column: 108, scope: !609)
!2313 = !DILocation(line: 581, column: 110, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2315, file: !410, discriminator: 8)
!2315 = !DILexicalBlockFile(scope: !611, file: !410, discriminator: 3)
!2316 = !DILocation(line: 582, column: 5, scope: !593)
!2317 = !DILocation(line: 582, column: 14, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !614, file: !410, discriminator: 1)
!2319 = !DILocation(line: 582, column: 17, scope: !614)
!2320 = !DILocation(line: 582, column: 14, scope: !614)
!2321 = !DILocation(line: 582, column: 14, scope: !615)
!2322 = !DILocation(line: 582, column: 34, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !613, file: !410, discriminator: 2)
!2324 = !DILocation(line: 582, column: 38, scope: !613)
!2325 = !DILocation(line: 582, column: 45, scope: !613)
!2326 = !DILocation(line: 582, column: 64, scope: !613)
!2327 = !DILocation(line: 582, column: 67, scope: !613)
!2328 = !DILocation(line: 582, column: 83, scope: !613)
!2329 = !DILocation(line: 582, column: 93, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !613, file: !410, line: 582, column: 93)
!2331 = !DILocation(line: 582, column: 93, scope: !613)
!2332 = !DILocation(line: 582, column: 106, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2330, file: !410, discriminator: 4)
!2334 = !DILocation(line: 582, column: 99, scope: !2330)
!2335 = !DILocation(line: 582, column: 112, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !614, file: !410, discriminator: 5)
!2337 = !DILocation(line: 582, column: 112, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2339, file: !410, discriminator: 7)
!2339 = !DILexicalBlockFile(scope: !614, file: !410, discriminator: 6)
!2340 = !DILocation(line: 582, column: 112, scope: !613)
!2341 = !DILocation(line: 582, column: 114, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2343, file: !410, discriminator: 8)
!2343 = !DILexicalBlockFile(scope: !615, file: !410, discriminator: 3)
!2344 = !DILocation(line: 583, column: 5, scope: !593)
!2345 = !DILocation(line: 583, column: 14, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !618, file: !410, discriminator: 1)
!2347 = !DILocation(line: 583, column: 17, scope: !618)
!2348 = !DILocation(line: 583, column: 14, scope: !618)
!2349 = !DILocation(line: 583, column: 14, scope: !619)
!2350 = !DILocation(line: 583, column: 36, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !617, file: !410, discriminator: 2)
!2352 = !DILocation(line: 583, column: 40, scope: !617)
!2353 = !DILocation(line: 583, column: 47, scope: !617)
!2354 = !DILocation(line: 583, column: 66, scope: !617)
!2355 = !DILocation(line: 583, column: 69, scope: !617)
!2356 = !DILocation(line: 583, column: 87, scope: !617)
!2357 = !DILocation(line: 583, column: 97, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !617, file: !410, line: 583, column: 97)
!2359 = !DILocation(line: 583, column: 97, scope: !617)
!2360 = !DILocation(line: 583, column: 110, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2358, file: !410, discriminator: 4)
!2362 = !DILocation(line: 583, column: 103, scope: !2358)
!2363 = !DILocation(line: 583, column: 116, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !618, file: !410, discriminator: 5)
!2365 = !DILocation(line: 583, column: 116, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2367, file: !410, discriminator: 7)
!2367 = !DILexicalBlockFile(scope: !618, file: !410, discriminator: 6)
!2368 = !DILocation(line: 583, column: 116, scope: !617)
!2369 = !DILocation(line: 583, column: 118, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2371, file: !410, discriminator: 8)
!2371 = !DILexicalBlockFile(scope: !619, file: !410, discriminator: 3)
!2372 = !DILocation(line: 584, column: 5, scope: !593)
!2373 = !DILocation(line: 584, column: 14, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !622, file: !410, discriminator: 1)
!2375 = !DILocation(line: 584, column: 17, scope: !622)
!2376 = !DILocation(line: 584, column: 14, scope: !622)
!2377 = !DILocation(line: 584, column: 14, scope: !623)
!2378 = !DILocation(line: 584, column: 29, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !621, file: !410, discriminator: 2)
!2380 = !DILocation(line: 584, column: 33, scope: !621)
!2381 = !DILocation(line: 584, column: 40, scope: !621)
!2382 = !DILocation(line: 584, column: 59, scope: !621)
!2383 = !DILocation(line: 584, column: 62, scope: !621)
!2384 = !DILocation(line: 584, column: 73, scope: !621)
!2385 = !DILocation(line: 584, column: 83, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !621, file: !410, line: 584, column: 83)
!2387 = !DILocation(line: 584, column: 83, scope: !621)
!2388 = !DILocation(line: 584, column: 96, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2386, file: !410, discriminator: 4)
!2390 = !DILocation(line: 584, column: 89, scope: !2386)
!2391 = !DILocation(line: 584, column: 102, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !622, file: !410, discriminator: 5)
!2393 = !DILocation(line: 584, column: 102, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2395, file: !410, discriminator: 7)
!2395 = !DILexicalBlockFile(scope: !622, file: !410, discriminator: 6)
!2396 = !DILocation(line: 584, column: 102, scope: !621)
!2397 = !DILocation(line: 584, column: 104, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2399, file: !410, discriminator: 8)
!2399 = !DILexicalBlockFile(scope: !623, file: !410, discriminator: 3)
!2400 = !DILocation(line: 585, column: 5, scope: !593)
!2401 = !DILocation(line: 585, column: 14, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !626, file: !410, discriminator: 1)
!2403 = !DILocation(line: 585, column: 17, scope: !626)
!2404 = !DILocation(line: 585, column: 14, scope: !626)
!2405 = !DILocation(line: 585, column: 14, scope: !627)
!2406 = !DILocation(line: 585, column: 30, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !625, file: !410, discriminator: 2)
!2408 = !DILocation(line: 585, column: 34, scope: !625)
!2409 = !DILocation(line: 585, column: 41, scope: !625)
!2410 = !DILocation(line: 585, column: 60, scope: !625)
!2411 = !DILocation(line: 585, column: 63, scope: !625)
!2412 = !DILocation(line: 585, column: 75, scope: !625)
!2413 = !DILocation(line: 585, column: 85, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !625, file: !410, line: 585, column: 85)
!2415 = !DILocation(line: 585, column: 85, scope: !625)
!2416 = !DILocation(line: 585, column: 98, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2414, file: !410, discriminator: 4)
!2418 = !DILocation(line: 585, column: 91, scope: !2414)
!2419 = !DILocation(line: 585, column: 104, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !626, file: !410, discriminator: 5)
!2421 = !DILocation(line: 585, column: 104, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2423, file: !410, discriminator: 7)
!2423 = !DILexicalBlockFile(scope: !626, file: !410, discriminator: 6)
!2424 = !DILocation(line: 585, column: 104, scope: !625)
!2425 = !DILocation(line: 585, column: 106, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2427, file: !410, discriminator: 8)
!2427 = !DILexicalBlockFile(scope: !627, file: !410, discriminator: 3)
!2428 = !DILocation(line: 586, column: 5, scope: !593)
!2429 = !DILocation(line: 586, column: 14, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !630, file: !410, discriminator: 1)
!2431 = !DILocation(line: 586, column: 17, scope: !630)
!2432 = !DILocation(line: 586, column: 14, scope: !630)
!2433 = !DILocation(line: 586, column: 14, scope: !631)
!2434 = !DILocation(line: 586, column: 30, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !629, file: !410, discriminator: 2)
!2436 = !DILocation(line: 586, column: 34, scope: !629)
!2437 = !DILocation(line: 586, column: 41, scope: !629)
!2438 = !DILocation(line: 586, column: 60, scope: !629)
!2439 = !DILocation(line: 586, column: 63, scope: !629)
!2440 = !DILocation(line: 586, column: 75, scope: !629)
!2441 = !DILocation(line: 586, column: 85, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !629, file: !410, line: 586, column: 85)
!2443 = !DILocation(line: 586, column: 85, scope: !629)
!2444 = !DILocation(line: 586, column: 98, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2442, file: !410, discriminator: 4)
!2446 = !DILocation(line: 586, column: 91, scope: !2442)
!2447 = !DILocation(line: 586, column: 104, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !630, file: !410, discriminator: 5)
!2449 = !DILocation(line: 586, column: 104, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2451, file: !410, discriminator: 7)
!2451 = !DILexicalBlockFile(scope: !630, file: !410, discriminator: 6)
!2452 = !DILocation(line: 586, column: 104, scope: !629)
!2453 = !DILocation(line: 586, column: 106, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2455, file: !410, discriminator: 8)
!2455 = !DILexicalBlockFile(scope: !631, file: !410, discriminator: 3)
!2456 = !DILocation(line: 587, column: 5, scope: !593)
!2457 = !DILocation(line: 587, column: 14, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !634, file: !410, discriminator: 1)
!2459 = !DILocation(line: 587, column: 17, scope: !634)
!2460 = !DILocation(line: 587, column: 14, scope: !634)
!2461 = !DILocation(line: 587, column: 14, scope: !635)
!2462 = !DILocation(line: 587, column: 33, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !633, file: !410, discriminator: 2)
!2464 = !DILocation(line: 587, column: 37, scope: !633)
!2465 = !DILocation(line: 587, column: 44, scope: !633)
!2466 = !DILocation(line: 587, column: 63, scope: !633)
!2467 = !DILocation(line: 587, column: 66, scope: !633)
!2468 = !DILocation(line: 587, column: 81, scope: !633)
!2469 = !DILocation(line: 587, column: 91, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !633, file: !410, line: 587, column: 91)
!2471 = !DILocation(line: 587, column: 91, scope: !633)
!2472 = !DILocation(line: 587, column: 104, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2470, file: !410, discriminator: 4)
!2474 = !DILocation(line: 587, column: 97, scope: !2470)
!2475 = !DILocation(line: 587, column: 110, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !634, file: !410, discriminator: 5)
!2477 = !DILocation(line: 587, column: 110, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2479, file: !410, discriminator: 7)
!2479 = !DILexicalBlockFile(scope: !634, file: !410, discriminator: 6)
!2480 = !DILocation(line: 587, column: 110, scope: !633)
!2481 = !DILocation(line: 587, column: 112, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2483, file: !410, discriminator: 8)
!2483 = !DILexicalBlockFile(scope: !635, file: !410, discriminator: 3)
!2484 = !DILocation(line: 588, column: 5, scope: !593)
!2485 = !DILocation(line: 588, column: 14, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !638, file: !410, discriminator: 1)
!2487 = !DILocation(line: 588, column: 17, scope: !638)
!2488 = !DILocation(line: 588, column: 14, scope: !638)
!2489 = !DILocation(line: 588, column: 14, scope: !639)
!2490 = !DILocation(line: 588, column: 37, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !637, file: !410, discriminator: 2)
!2492 = !DILocation(line: 588, column: 41, scope: !637)
!2493 = !DILocation(line: 588, column: 48, scope: !637)
!2494 = !DILocation(line: 588, column: 67, scope: !637)
!2495 = !DILocation(line: 588, column: 70, scope: !637)
!2496 = !DILocation(line: 588, column: 89, scope: !637)
!2497 = !DILocation(line: 588, column: 99, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !637, file: !410, line: 588, column: 99)
!2499 = !DILocation(line: 588, column: 99, scope: !637)
!2500 = !DILocation(line: 588, column: 112, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2498, file: !410, discriminator: 4)
!2502 = !DILocation(line: 588, column: 105, scope: !2498)
!2503 = !DILocation(line: 588, column: 118, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !638, file: !410, discriminator: 5)
!2505 = !DILocation(line: 588, column: 118, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2507, file: !410, discriminator: 7)
!2507 = !DILexicalBlockFile(scope: !638, file: !410, discriminator: 6)
!2508 = !DILocation(line: 588, column: 118, scope: !637)
!2509 = !DILocation(line: 588, column: 120, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2511, file: !410, discriminator: 8)
!2511 = !DILexicalBlockFile(scope: !639, file: !410, discriminator: 3)
!2512 = !DILocation(line: 589, column: 5, scope: !593)
!2513 = !DILocation(line: 589, column: 14, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !642, file: !410, discriminator: 1)
!2515 = !DILocation(line: 589, column: 17, scope: !642)
!2516 = !DILocation(line: 589, column: 14, scope: !642)
!2517 = !DILocation(line: 589, column: 14, scope: !643)
!2518 = !DILocation(line: 589, column: 34, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !641, file: !410, discriminator: 2)
!2520 = !DILocation(line: 589, column: 38, scope: !641)
!2521 = !DILocation(line: 589, column: 45, scope: !641)
!2522 = !DILocation(line: 589, column: 64, scope: !641)
!2523 = !DILocation(line: 589, column: 67, scope: !641)
!2524 = !DILocation(line: 589, column: 83, scope: !641)
!2525 = !DILocation(line: 589, column: 93, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !641, file: !410, line: 589, column: 93)
!2527 = !DILocation(line: 589, column: 93, scope: !641)
!2528 = !DILocation(line: 589, column: 106, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2526, file: !410, discriminator: 4)
!2530 = !DILocation(line: 589, column: 99, scope: !2526)
!2531 = !DILocation(line: 589, column: 112, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !642, file: !410, discriminator: 5)
!2533 = !DILocation(line: 589, column: 112, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !410, discriminator: 7)
!2535 = !DILexicalBlockFile(scope: !642, file: !410, discriminator: 6)
!2536 = !DILocation(line: 589, column: 112, scope: !641)
!2537 = !DILocation(line: 589, column: 114, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2539, file: !410, discriminator: 8)
!2539 = !DILexicalBlockFile(scope: !643, file: !410, discriminator: 3)
!2540 = !DILocation(line: 590, column: 5, scope: !593)
!2541 = !DILocation(line: 591, column: 1, scope: !593)
!2542 = !DILocation(line: 647, column: 26, scope: !723)
!2543 = !DILocation(line: 647, column: 42, scope: !723)
!2544 = !DILocation(line: 647, column: 57, scope: !723)
!2545 = !DILocation(line: 649, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !723, file: !410, line: 649, column: 9)
!2547 = !DILocation(line: 649, column: 13, scope: !2546)
!2548 = !DILocation(line: 649, column: 34, scope: !2546)
!2549 = !DILocation(line: 649, column: 37, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2546, file: !410, discriminator: 1)
!2551 = !DILocation(line: 649, column: 41, scope: !2546)
!2552 = !DILocation(line: 649, column: 9, scope: !723)
!2553 = !DILocation(line: 650, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2546, file: !410, line: 649, column: 56)
!2555 = !DILocation(line: 650, column: 33, scope: !2554)
!2556 = !DILocation(line: 650, column: 42, scope: !2554)
!2557 = !DILocation(line: 651, column: 16, scope: !2554)
!2558 = !DILocation(line: 651, column: 9, scope: !2554)
!2559 = !DILocation(line: 653, column: 25, scope: !723)
!2560 = !DILocation(line: 653, column: 31, scope: !723)
!2561 = !DILocation(line: 653, column: 12, scope: !723)
!2562 = !DILocation(line: 653, column: 5, scope: !723)
!2563 = !DILocation(line: 654, column: 1, scope: !723)
!2564 = !DILocation(line: 467, column: 24, scope: !728)
!2565 = !DILocation(line: 467, column: 40, scope: !728)
!2566 = !DILocation(line: 467, column: 56, scope: !728)
!2567 = !DILocation(line: 469, column: 5, scope: !728)
!2568 = !DILocation(line: 469, column: 19, scope: !728)
!2569 = !DILocation(line: 470, column: 5, scope: !728)
!2570 = !DILocation(line: 470, column: 15, scope: !728)
!2571 = !DILocation(line: 471, column: 5, scope: !728)
!2572 = !DILocation(line: 471, column: 15, scope: !728)
!2573 = !DILocation(line: 472, column: 5, scope: !728)
!2574 = !DILocation(line: 472, column: 15, scope: !728)
!2575 = !DILocation(line: 473, column: 5, scope: !728)
!2576 = !DILocation(line: 473, column: 15, scope: !728)
!2577 = !DILocation(line: 474, column: 5, scope: !728)
!2578 = !DILocation(line: 474, column: 23, scope: !728)
!2579 = !DILocation(line: 475, column: 5, scope: !728)
!2580 = !DILocation(line: 475, column: 16, scope: !728)
!2581 = !DILocation(line: 475, column: 23, scope: !728)
!2582 = !DILocation(line: 479, column: 38, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !728, file: !410, line: 479, column: 9)
!2584 = !DILocation(line: 479, column: 44, scope: !2583)
!2585 = !DILocation(line: 479, column: 10, scope: !2583)
!2586 = !DILocation(line: 479, column: 9, scope: !728)
!2587 = !DILocation(line: 484, column: 9, scope: !2583)
!2588 = !DILocation(line: 485, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !728, file: !410, line: 485, column: 9)
!2590 = !DILocation(line: 485, column: 14, scope: !2589)
!2591 = !DILocation(line: 485, column: 35, scope: !2589)
!2592 = !DILocation(line: 485, column: 56, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2589, file: !410, discriminator: 1)
!2594 = !DILocation(line: 485, column: 64, scope: !2589)
!2595 = !DILocation(line: 485, column: 75, scope: !2589)
!2596 = !DILocation(line: 485, column: 84, scope: !2589)
!2597 = !DILocation(line: 485, column: 101, scope: !2589)
!2598 = !DILocation(line: 485, column: 9, scope: !728)
!2599 = !DILocation(line: 486, column: 25, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2589, file: !410, line: 485, column: 108)
!2601 = !DILocation(line: 486, column: 9, scope: !2600)
!2602 = !DILocation(line: 488, column: 9, scope: !2600)
!2603 = !DILocation(line: 490, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !728, file: !410, line: 490, column: 9)
!2605 = !DILocation(line: 490, column: 18, scope: !2604)
!2606 = !DILocation(line: 490, column: 39, scope: !2604)
!2607 = !DILocation(line: 490, column: 60, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2604, file: !410, discriminator: 1)
!2609 = !DILocation(line: 490, column: 72, scope: !2604)
!2610 = !DILocation(line: 490, column: 83, scope: !2604)
!2611 = !DILocation(line: 490, column: 92, scope: !2604)
!2612 = !DILocation(line: 490, column: 109, scope: !2604)
!2613 = !DILocation(line: 490, column: 9, scope: !728)
!2614 = !DILocation(line: 491, column: 25, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2604, file: !410, line: 490, column: 116)
!2616 = !DILocation(line: 491, column: 9, scope: !2615)
!2617 = !DILocation(line: 493, column: 9, scope: !2615)
!2618 = !DILocation(line: 495, column: 30, scope: !728)
!2619 = !DILocation(line: 495, column: 36, scope: !728)
!2620 = !{!1001, !939, i64 72}
!2621 = !DILocation(line: 495, column: 15, scope: !728)
!2622 = !DILocation(line: 495, column: 51, scope: !728)
!2623 = !DILocation(line: 495, column: 11, scope: !728)
!2624 = !DILocation(line: 496, column: 27, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !728, file: !410, line: 496, column: 9)
!2626 = !DILocation(line: 496, column: 38, scope: !2625)
!2627 = !DILocation(line: 496, column: 49, scope: !2625)
!2628 = !DILocation(line: 496, column: 58, scope: !2625)
!2629 = !DILocation(line: 496, column: 75, scope: !2625)
!2630 = !DILocation(line: 496, column: 9, scope: !728)
!2631 = !DILocation(line: 497, column: 13, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !410, line: 497, column: 13)
!2633 = distinct !DILexicalBlock(scope: !2625, file: !410, line: 496, column: 82)
!2634 = !DILocation(line: 497, column: 19, scope: !2632)
!2635 = !DILocation(line: 497, column: 22, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2632, file: !410, discriminator: 1)
!2637 = !DILocation(line: 497, column: 30, scope: !2632)
!2638 = !DILocation(line: 497, column: 13, scope: !2633)
!2639 = !DILocation(line: 498, column: 29, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2632, file: !410, line: 497, column: 52)
!2641 = !DILocation(line: 498, column: 13, scope: !2640)
!2642 = !DILocation(line: 500, column: 13, scope: !2640)
!2643 = !DILocation(line: 502, column: 18, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2632, file: !410, line: 502, column: 18)
!2645 = !DILocation(line: 502, column: 26, scope: !2644)
!2646 = !DILocation(line: 502, column: 18, scope: !2632)
!2647 = !DILocation(line: 503, column: 29, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !410, line: 502, column: 48)
!2649 = !DILocation(line: 503, column: 13, scope: !2648)
!2650 = !DILocation(line: 505, column: 13, scope: !2648)
!2651 = !DILocation(line: 507, column: 5, scope: !2633)
!2652 = !DILocation(line: 510, column: 16, scope: !728)
!2653 = !DILocation(line: 510, column: 24, scope: !728)
!2654 = !DILocation(line: 510, column: 16, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !728, file: !410, discriminator: 1)
!2656 = !DILocation(line: 510, column: 68, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !728, file: !410, discriminator: 2)
!2658 = !DILocation(line: 510, column: 53, scope: !728)
!2659 = !DILocation(line: 510, column: 79, scope: !728)
!2660 = !DILocation(line: 510, column: 14, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2662, file: !410, discriminator: 4)
!2662 = !DILexicalBlockFile(scope: !728, file: !410, discriminator: 3)
!2663 = !DILocation(line: 511, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !728, file: !410, line: 511, column: 9)
!2665 = !DILocation(line: 511, column: 18, scope: !2664)
!2666 = !DILocation(line: 511, column: 15, scope: !2664)
!2667 = !DILocation(line: 511, column: 9, scope: !728)
!2668 = !DILocation(line: 512, column: 29, scope: !2664)
!2669 = !DILocation(line: 514, column: 29, scope: !2664)
!2670 = !DILocation(line: 514, column: 35, scope: !2664)
!2671 = !DILocation(line: 514, column: 44, scope: !2664)
!2672 = !DILocation(line: 514, column: 51, scope: !2664)
!2673 = !DILocation(line: 512, column: 16, scope: !2664)
!2674 = !DILocation(line: 512, column: 9, scope: !2664)
!2675 = !DILocation(line: 515, column: 9, scope: !747)
!2676 = !DILocation(line: 515, column: 9, scope: !728)
!2677 = !DILocation(line: 516, column: 9, scope: !746)
!2678 = !DILocation(line: 516, column: 20, scope: !746)
!2679 = !DILocation(line: 517, column: 16, scope: !751)
!2680 = !DILocation(line: 517, column: 14, scope: !751)
!2681 = !DILocation(line: 517, column: 21, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2683, file: !410, discriminator: 2)
!2683 = !DILexicalBlockFile(scope: !750, file: !410, discriminator: 1)
!2684 = !DILocation(line: 517, column: 25, scope: !750)
!2685 = !DILocation(line: 517, column: 23, scope: !750)
!2686 = !DILocation(line: 517, column: 9, scope: !751)
!2687 = !DILocation(line: 518, column: 13, scope: !749)
!2688 = !DILocation(line: 518, column: 23, scope: !749)
!2689 = !DILocation(line: 518, column: 66, scope: !749)
!2690 = !DILocation(line: 518, column: 47, scope: !749)
!2691 = !DILocation(line: 518, column: 29, scope: !749)
!2692 = !DILocation(line: 518, column: 58, scope: !749)
!2693 = !DILocation(line: 518, column: 28, scope: !749)
!2694 = !DILocation(line: 519, column: 33, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !749, file: !410, line: 519, column: 17)
!2696 = !DILocation(line: 519, column: 38, scope: !2695)
!2697 = !DILocation(line: 519, column: 47, scope: !2695)
!2698 = !DILocation(line: 519, column: 17, scope: !749)
!2699 = !DILocation(line: 520, column: 37, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2695, file: !410, line: 519, column: 65)
!2701 = !DILocation(line: 522, column: 37, scope: !2700)
!2702 = !DILocation(line: 522, column: 40, scope: !2700)
!2703 = !DILocation(line: 522, column: 49, scope: !2700)
!2704 = !DILocation(line: 520, column: 24, scope: !2700)
!2705 = !DILocation(line: 520, column: 17, scope: !2700)
!2706 = !DILocation(line: 524, column: 9, scope: !750)
!2707 = !DILocation(line: 524, column: 9, scope: !2683)
!2708 = !DILocation(line: 524, column: 9, scope: !749)
!2709 = !DILocation(line: 517, column: 36, scope: !750)
!2710 = !DILocation(line: 517, column: 9, scope: !750)
!2711 = !DILocation(line: 525, column: 5, scope: !747)
!2712 = !DILocation(line: 525, column: 5, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !747, file: !410, discriminator: 1)
!2714 = !DILocation(line: 525, column: 5, scope: !746)
!2715 = !DILocation(line: 527, column: 62, scope: !728)
!2716 = !DILocation(line: 527, column: 50, scope: !728)
!2717 = !DILocation(line: 528, column: 50, scope: !728)
!2718 = !DILocation(line: 527, column: 35, scope: !728)
!2719 = !DILocation(line: 527, column: 15, scope: !728)
!2720 = !DILocation(line: 527, column: 13, scope: !728)
!2721 = !DILocation(line: 529, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !728, file: !410, line: 529, column: 9)
!2723 = !DILocation(line: 529, column: 17, scope: !2722)
!2724 = !DILocation(line: 529, column: 9, scope: !728)
!2725 = !DILocation(line: 530, column: 9, scope: !2722)
!2726 = !DILocation(line: 532, column: 9, scope: !755)
!2727 = !DILocation(line: 532, column: 14, scope: !755)
!2728 = !DILocation(line: 532, column: 9, scope: !728)
!2729 = !DILocation(line: 533, column: 25, scope: !754)
!2730 = !DILocation(line: 533, column: 33, scope: !754)
!2731 = !DILocation(line: 533, column: 42, scope: !754)
!2732 = !DILocation(line: 534, column: 9, scope: !754)
!2733 = !DILocation(line: 534, column: 14, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !753, file: !410, discriminator: 1)
!2735 = !DILocation(line: 534, column: 24, scope: !753)
!2736 = !DILocation(line: 534, column: 54, scope: !753)
!2737 = !DILocation(line: 534, column: 63, scope: !753)
!2738 = !DILocation(line: 534, column: 83, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !753, file: !410, line: 534, column: 80)
!2740 = !DILocation(line: 534, column: 100, scope: !2739)
!2741 = !DILocation(line: 534, column: 80, scope: !2739)
!2742 = !DILocation(line: 534, column: 110, scope: !2739)
!2743 = !DILocation(line: 534, column: 80, scope: !753)
!2744 = !DILocation(line: 534, column: 80, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !753, file: !410, discriminator: 2)
!2746 = !DILocation(line: 534, column: 141, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2739, file: !410, discriminator: 3)
!2748 = !DILocation(line: 534, column: 159, scope: !2739)
!2749 = !DILocation(line: 534, column: 169, scope: !2739)
!2750 = !DILocation(line: 534, column: 194, scope: !2739)
!2751 = !DILocation(line: 534, column: 125, scope: !2739)
!2752 = !DILocation(line: 534, column: 213, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !754, file: !410, discriminator: 4)
!2754 = !DILocation(line: 534, column: 213, scope: !753)
!2755 = !DILocation(line: 534, column: 213, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !753, file: !410, discriminator: 5)
!2757 = !DILocation(line: 535, column: 30, scope: !754)
!2758 = !DILocation(line: 535, column: 9, scope: !754)
!2759 = !DILocation(line: 535, column: 18, scope: !754)
!2760 = !DILocation(line: 535, column: 28, scope: !754)
!2761 = !DILocation(line: 536, column: 5, scope: !754)
!2762 = !DILocation(line: 537, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !728, file: !410, line: 537, column: 9)
!2764 = !DILocation(line: 537, column: 18, scope: !2763)
!2765 = !DILocation(line: 537, column: 9, scope: !728)
!2766 = !DILocation(line: 538, column: 25, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !410, line: 537, column: 40)
!2768 = !DILocation(line: 538, column: 37, scope: !2767)
!2769 = !DILocation(line: 538, column: 46, scope: !2767)
!2770 = !DILocation(line: 539, column: 34, scope: !2767)
!2771 = !DILocation(line: 539, column: 9, scope: !2767)
!2772 = !DILocation(line: 539, column: 18, scope: !2767)
!2773 = !DILocation(line: 539, column: 32, scope: !2767)
!2774 = !DILocation(line: 540, column: 5, scope: !2767)
!2775 = !DILocation(line: 541, column: 9, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !728, file: !410, line: 541, column: 9)
!2777 = !DILocation(line: 541, column: 17, scope: !2776)
!2778 = !DILocation(line: 541, column: 9, scope: !728)
!2779 = !DILocation(line: 542, column: 25, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !410, line: 541, column: 39)
!2781 = !DILocation(line: 542, column: 36, scope: !2780)
!2782 = !DILocation(line: 542, column: 45, scope: !2780)
!2783 = !DILocation(line: 543, column: 33, scope: !2780)
!2784 = !DILocation(line: 543, column: 9, scope: !2780)
!2785 = !DILocation(line: 543, column: 18, scope: !2780)
!2786 = !DILocation(line: 543, column: 31, scope: !2780)
!2787 = !DILocation(line: 544, column: 5, scope: !2780)
!2788 = !DILocation(line: 546, column: 24, scope: !728)
!2789 = !DILocation(line: 546, column: 12, scope: !728)
!2790 = !DILocation(line: 546, column: 5, scope: !728)
!2791 = !DILocation(line: 547, column: 1, scope: !728)
!2792 = !DILocation(line: 724, column: 25, scope: !756)
!2793 = !DILocation(line: 726, column: 5, scope: !756)
!2794 = !DILocation(line: 726, column: 10, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !762, file: !410, discriminator: 1)
!2796 = !DILocation(line: 726, column: 21, scope: !762)
!2797 = !DILocation(line: 726, column: 52, scope: !762)
!2798 = !DILocation(line: 726, column: 40, scope: !762)
!2799 = !DILocation(line: 726, column: 26, scope: !762)
!2800 = !DILocation(line: 726, column: 55, scope: !762)
!2801 = !DILocation(line: 726, column: 74, scope: !762)
!2802 = !DILocation(line: 726, column: 99, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2804, file: !410, discriminator: 2)
!2804 = distinct !DILexicalBlock(scope: !762, file: !410, line: 726, column: 77)
!2805 = !DILocation(line: 726, column: 103, scope: !2804)
!2806 = !DILocation(line: 726, column: 106, scope: !2804)
!2807 = !DILocation(line: 726, column: 114, scope: !2804)
!2808 = !DILocation(line: 726, column: 141, scope: !2804)
!2809 = !DILocation(line: 726, column: 80, scope: !2804)
!2810 = !DILocation(line: 726, column: 84, scope: !2804)
!2811 = !DILocation(line: 726, column: 87, scope: !2804)
!2812 = !DILocation(line: 726, column: 95, scope: !2804)
!2813 = !DILocation(line: 726, column: 170, scope: !2804)
!2814 = !DILocation(line: 726, column: 170, scope: !2815)
!2815 = !DILexicalBlockFile(scope: !2804, file: !410, discriminator: 3)
!2816 = !DILocation(line: 726, column: 211, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !762, file: !410, discriminator: 4)
!2818 = !DILocation(line: 726, column: 214, scope: !762)
!2819 = !DILocation(line: 726, column: 217, scope: !762)
!2820 = !DILocation(line: 726, column: 183, scope: !762)
!2821 = !DILocation(line: 726, column: 186, scope: !762)
!2822 = !DILocation(line: 726, column: 189, scope: !762)
!2823 = !DILocation(line: 726, column: 198, scope: !762)
!2824 = !DILocation(line: 726, column: 201, scope: !762)
!2825 = !DILocation(line: 726, column: 209, scope: !762)
!2826 = !DILocation(line: 726, column: 254, scope: !762)
!2827 = !DILocation(line: 726, column: 257, scope: !762)
!2828 = !DILocation(line: 726, column: 260, scope: !762)
!2829 = !DILocation(line: 726, column: 226, scope: !762)
!2830 = !DILocation(line: 726, column: 229, scope: !762)
!2831 = !DILocation(line: 726, column: 232, scope: !762)
!2832 = !DILocation(line: 726, column: 241, scope: !762)
!2833 = !DILocation(line: 726, column: 244, scope: !762)
!2834 = !DILocation(line: 726, column: 252, scope: !762)
!2835 = !DILocation(line: 726, column: 269, scope: !762)
!2836 = !DILocation(line: 726, column: 272, scope: !762)
!2837 = !DILocation(line: 726, column: 275, scope: !762)
!2838 = !DILocation(line: 726, column: 283, scope: !762)
!2839 = !DILocation(line: 726, column: 297, scope: !756)
!2840 = !DILocation(line: 726, column: 297, scope: !762)
!2841 = !DILocation(line: 727, column: 5, scope: !756)
!2842 = !DILocation(line: 727, column: 10, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !764, file: !410, discriminator: 1)
!2844 = !DILocation(line: 727, column: 20, scope: !764)
!2845 = !DILocation(line: 727, column: 51, scope: !764)
!2846 = !DILocation(line: 727, column: 55, scope: !764)
!2847 = !{!2848, !939, i64 16}
!2848 = !{!"", !978, i64 0, !939, i64 16, !939, i64 24}
!2849 = !DILocation(line: 727, column: 73, scope: !767)
!2850 = !DILocation(line: 727, column: 89, scope: !767)
!2851 = !DILocation(line: 727, column: 73, scope: !764)
!2852 = !DILocation(line: 727, column: 104, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !767, file: !410, discriminator: 2)
!2854 = !DILocation(line: 727, column: 109, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !766, file: !410, discriminator: 4)
!2856 = !DILocation(line: 727, column: 119, scope: !766)
!2857 = !DILocation(line: 727, column: 149, scope: !766)
!2858 = !DILocation(line: 727, column: 175, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !766, file: !410, line: 727, column: 172)
!2860 = !DILocation(line: 727, column: 192, scope: !2859)
!2861 = !DILocation(line: 727, column: 172, scope: !2859)
!2862 = !DILocation(line: 727, column: 202, scope: !2859)
!2863 = !DILocation(line: 727, column: 172, scope: !766)
!2864 = !DILocation(line: 727, column: 172, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !766, file: !410, discriminator: 5)
!2866 = !DILocation(line: 727, column: 233, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2859, file: !410, discriminator: 6)
!2868 = !DILocation(line: 727, column: 251, scope: !2859)
!2869 = !DILocation(line: 727, column: 261, scope: !2859)
!2870 = !DILocation(line: 727, column: 286, scope: !2859)
!2871 = !DILocation(line: 727, column: 217, scope: !2859)
!2872 = !DILocation(line: 727, column: 305, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !767, file: !410, discriminator: 7)
!2874 = !DILocation(line: 727, column: 305, scope: !766)
!2875 = !DILocation(line: 727, column: 305, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !766, file: !410, discriminator: 8)
!2877 = !DILocation(line: 727, column: 305, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !766, file: !410, discriminator: 9)
!2879 = !DILocation(line: 727, column: 318, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2881, file: !410, discriminator: 10)
!2881 = !DILexicalBlockFile(scope: !756, file: !410, discriminator: 3)
!2882 = !DILocation(line: 727, column: 318, scope: !764)
!2883 = !DILocation(line: 728, column: 5, scope: !756)
!2884 = !DILocation(line: 728, column: 10, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !769, file: !410, discriminator: 1)
!2886 = !DILocation(line: 728, column: 20, scope: !769)
!2887 = !DILocation(line: 728, column: 51, scope: !769)
!2888 = !DILocation(line: 728, column: 55, scope: !769)
!2889 = !{!2848, !939, i64 24}
!2890 = !DILocation(line: 728, column: 69, scope: !772)
!2891 = !DILocation(line: 728, column: 85, scope: !772)
!2892 = !DILocation(line: 728, column: 69, scope: !769)
!2893 = !DILocation(line: 728, column: 100, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !772, file: !410, discriminator: 2)
!2895 = !DILocation(line: 728, column: 105, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 4)
!2897 = !DILocation(line: 728, column: 115, scope: !771)
!2898 = !DILocation(line: 728, column: 145, scope: !771)
!2899 = !DILocation(line: 728, column: 171, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !771, file: !410, line: 728, column: 168)
!2901 = !DILocation(line: 728, column: 188, scope: !2900)
!2902 = !DILocation(line: 728, column: 168, scope: !2900)
!2903 = !DILocation(line: 728, column: 198, scope: !2900)
!2904 = !DILocation(line: 728, column: 168, scope: !771)
!2905 = !DILocation(line: 728, column: 168, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 5)
!2907 = !DILocation(line: 728, column: 229, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !2900, file: !410, discriminator: 6)
!2909 = !DILocation(line: 728, column: 247, scope: !2900)
!2910 = !DILocation(line: 728, column: 257, scope: !2900)
!2911 = !DILocation(line: 728, column: 282, scope: !2900)
!2912 = !DILocation(line: 728, column: 213, scope: !2900)
!2913 = !DILocation(line: 728, column: 301, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !772, file: !410, discriminator: 7)
!2915 = !DILocation(line: 728, column: 301, scope: !771)
!2916 = !DILocation(line: 728, column: 301, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 8)
!2918 = !DILocation(line: 728, column: 301, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 9)
!2920 = !DILocation(line: 728, column: 314, scope: !2880)
!2921 = !DILocation(line: 728, column: 314, scope: !769)
!2922 = !DILocation(line: 729, column: 19, scope: !756)
!2923 = !DILocation(line: 729, column: 7, scope: !756)
!2924 = !DILocation(line: 729, column: 25, scope: !756)
!2925 = !DILocation(line: 729, column: 35, scope: !756)
!2926 = !{!1043, !939, i64 320}
!2927 = !DILocation(line: 729, column: 55, scope: !756)
!2928 = !DILocation(line: 729, column: 43, scope: !756)
!2929 = !DILocation(line: 729, column: 5, scope: !756)
!2930 = !DILocation(line: 730, column: 1, scope: !756)
!2931 = !DILocation(line: 733, column: 26, scope: !773)
!2932 = !DILocation(line: 733, column: 40, scope: !773)
!2933 = !DILocation(line: 733, column: 53, scope: !773)
!2934 = !DILocation(line: 735, column: 5, scope: !773)
!2935 = !DILocation(line: 735, column: 14, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !782, file: !410, discriminator: 1)
!2937 = !DILocation(line: 735, column: 18, scope: !782)
!2938 = !DILocation(line: 735, column: 14, scope: !782)
!2939 = !DILocation(line: 735, column: 14, scope: !783)
!2940 = !DILocation(line: 735, column: 33, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !781, file: !410, discriminator: 2)
!2942 = !DILocation(line: 735, column: 37, scope: !781)
!2943 = !DILocation(line: 735, column: 44, scope: !781)
!2944 = !DILocation(line: 735, column: 63, scope: !781)
!2945 = !DILocation(line: 735, column: 67, scope: !781)
!2946 = !DILocation(line: 735, column: 81, scope: !781)
!2947 = !DILocation(line: 735, column: 91, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !781, file: !410, line: 735, column: 91)
!2949 = !DILocation(line: 735, column: 91, scope: !781)
!2950 = !DILocation(line: 735, column: 104, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2948, file: !410, discriminator: 4)
!2952 = !DILocation(line: 735, column: 97, scope: !2948)
!2953 = !DILocation(line: 735, column: 110, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !782, file: !410, discriminator: 5)
!2955 = !DILocation(line: 735, column: 110, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2957, file: !410, discriminator: 7)
!2957 = !DILexicalBlockFile(scope: !782, file: !410, discriminator: 6)
!2958 = !DILocation(line: 735, column: 110, scope: !781)
!2959 = !DILocation(line: 735, column: 112, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2961, file: !410, discriminator: 8)
!2961 = !DILexicalBlockFile(scope: !783, file: !410, discriminator: 3)
!2962 = !DILocation(line: 736, column: 5, scope: !773)
!2963 = !DILocation(line: 736, column: 14, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !786, file: !410, discriminator: 1)
!2965 = !DILocation(line: 736, column: 18, scope: !786)
!2966 = !DILocation(line: 736, column: 14, scope: !786)
!2967 = !DILocation(line: 736, column: 14, scope: !787)
!2968 = !DILocation(line: 736, column: 29, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !785, file: !410, discriminator: 2)
!2970 = !DILocation(line: 736, column: 33, scope: !785)
!2971 = !DILocation(line: 736, column: 40, scope: !785)
!2972 = !DILocation(line: 736, column: 59, scope: !785)
!2973 = !DILocation(line: 736, column: 63, scope: !785)
!2974 = !DILocation(line: 736, column: 73, scope: !785)
!2975 = !DILocation(line: 736, column: 83, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !785, file: !410, line: 736, column: 83)
!2977 = !DILocation(line: 736, column: 83, scope: !785)
!2978 = !DILocation(line: 736, column: 96, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2976, file: !410, discriminator: 4)
!2980 = !DILocation(line: 736, column: 89, scope: !2976)
!2981 = !DILocation(line: 736, column: 102, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !786, file: !410, discriminator: 5)
!2983 = !DILocation(line: 736, column: 102, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2985, file: !410, discriminator: 7)
!2985 = !DILexicalBlockFile(scope: !786, file: !410, discriminator: 6)
!2986 = !DILocation(line: 736, column: 102, scope: !785)
!2987 = !DILocation(line: 736, column: 104, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2989, file: !410, discriminator: 8)
!2989 = !DILexicalBlockFile(scope: !787, file: !410, discriminator: 3)
!2990 = !DILocation(line: 737, column: 5, scope: !773)
!2991 = !DILocation(line: 738, column: 1, scope: !773)
!2992 = !DILocation(line: 741, column: 23, scope: !788)
!2993 = !DILocation(line: 743, column: 5, scope: !788)
!2994 = !DILocation(line: 743, column: 10, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !794, file: !410, discriminator: 1)
!2996 = !DILocation(line: 743, column: 20, scope: !794)
!2997 = !DILocation(line: 743, column: 43, scope: !794)
!2998 = !DILocation(line: 743, column: 47, scope: !794)
!2999 = !DILocation(line: 743, column: 65, scope: !798)
!3000 = !DILocation(line: 743, column: 73, scope: !798)
!3001 = !DILocation(line: 743, column: 65, scope: !794)
!3002 = !DILocation(line: 743, column: 91, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !797, file: !410, discriminator: 2)
!3004 = !DILocation(line: 743, column: 95, scope: !797)
!3005 = !DILocation(line: 743, column: 108, scope: !797)
!3006 = !DILocation(line: 743, column: 122, scope: !797)
!3007 = !DILocation(line: 743, column: 127, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !796, file: !410, discriminator: 4)
!3009 = !DILocation(line: 743, column: 137, scope: !796)
!3010 = !DILocation(line: 743, column: 167, scope: !796)
!3011 = !DILocation(line: 743, column: 185, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !796, file: !410, line: 743, column: 182)
!3013 = !DILocation(line: 743, column: 202, scope: !3012)
!3014 = !DILocation(line: 743, column: 182, scope: !3012)
!3015 = !DILocation(line: 743, column: 212, scope: !3012)
!3016 = !DILocation(line: 743, column: 182, scope: !796)
!3017 = !DILocation(line: 743, column: 182, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !796, file: !410, discriminator: 5)
!3019 = !DILocation(line: 743, column: 243, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3012, file: !410, discriminator: 6)
!3021 = !DILocation(line: 743, column: 261, scope: !3012)
!3022 = !DILocation(line: 743, column: 271, scope: !3012)
!3023 = !DILocation(line: 743, column: 296, scope: !3012)
!3024 = !DILocation(line: 743, column: 227, scope: !3012)
!3025 = !DILocation(line: 743, column: 315, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !797, file: !410, discriminator: 7)
!3027 = !DILocation(line: 743, column: 315, scope: !796)
!3028 = !DILocation(line: 743, column: 315, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !796, file: !410, discriminator: 8)
!3030 = !DILocation(line: 743, column: 328, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !797, file: !410, discriminator: 9)
!3032 = !DILocation(line: 743, column: 330, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3034, file: !410, discriminator: 10)
!3034 = !DILexicalBlockFile(scope: !788, file: !410, discriminator: 3)
!3035 = !DILocation(line: 743, column: 330, scope: !794)
!3036 = !DILocation(line: 744, column: 5, scope: !788)
!3037 = !DILocation(line: 744, column: 10, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !800, file: !410, discriminator: 1)
!3039 = !DILocation(line: 744, column: 20, scope: !800)
!3040 = !DILocation(line: 744, column: 43, scope: !800)
!3041 = !DILocation(line: 744, column: 47, scope: !800)
!3042 = !DILocation(line: 744, column: 61, scope: !804)
!3043 = !DILocation(line: 744, column: 69, scope: !804)
!3044 = !DILocation(line: 744, column: 61, scope: !800)
!3045 = !DILocation(line: 744, column: 87, scope: !3046)
!3046 = !DILexicalBlockFile(scope: !803, file: !410, discriminator: 2)
!3047 = !DILocation(line: 744, column: 91, scope: !803)
!3048 = !DILocation(line: 744, column: 100, scope: !803)
!3049 = !DILocation(line: 744, column: 114, scope: !803)
!3050 = !DILocation(line: 744, column: 119, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !802, file: !410, discriminator: 4)
!3052 = !DILocation(line: 744, column: 129, scope: !802)
!3053 = !DILocation(line: 744, column: 159, scope: !802)
!3054 = !DILocation(line: 744, column: 177, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !802, file: !410, line: 744, column: 174)
!3056 = !DILocation(line: 744, column: 194, scope: !3055)
!3057 = !DILocation(line: 744, column: 174, scope: !3055)
!3058 = !DILocation(line: 744, column: 204, scope: !3055)
!3059 = !DILocation(line: 744, column: 174, scope: !802)
!3060 = !DILocation(line: 744, column: 174, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !802, file: !410, discriminator: 5)
!3062 = !DILocation(line: 744, column: 235, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3055, file: !410, discriminator: 6)
!3064 = !DILocation(line: 744, column: 253, scope: !3055)
!3065 = !DILocation(line: 744, column: 263, scope: !3055)
!3066 = !DILocation(line: 744, column: 288, scope: !3055)
!3067 = !DILocation(line: 744, column: 219, scope: !3055)
!3068 = !DILocation(line: 744, column: 307, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !803, file: !410, discriminator: 7)
!3070 = !DILocation(line: 744, column: 307, scope: !802)
!3071 = !DILocation(line: 744, column: 307, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !802, file: !410, discriminator: 8)
!3073 = !DILocation(line: 744, column: 320, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !803, file: !410, discriminator: 9)
!3075 = !DILocation(line: 744, column: 322, scope: !3033)
!3076 = !DILocation(line: 744, column: 322, scope: !800)
!3077 = !DILocation(line: 745, column: 5, scope: !788)
!3078 = !DILocation(line: 750, column: 24, scope: !812)
!3079 = !DILocation(line: 750, column: 40, scope: !812)
!3080 = !DILocation(line: 750, column: 55, scope: !812)
!3081 = !DILocation(line: 752, column: 5, scope: !812)
!3082 = !DILocation(line: 752, column: 18, scope: !812)
!3083 = !DILocation(line: 752, column: 38, scope: !812)
!3084 = !DILocation(line: 752, column: 23, scope: !812)
!3085 = !DILocation(line: 754, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !812, file: !410, line: 754, column: 9)
!3087 = !DILocation(line: 754, column: 13, scope: !3086)
!3088 = !DILocation(line: 754, column: 25, scope: !3086)
!3089 = !DILocation(line: 754, column: 9, scope: !812)
!3090 = !DILocation(line: 755, column: 25, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3086, file: !410, line: 754, column: 40)
!3092 = !DILocation(line: 755, column: 9, scope: !3091)
!3093 = !DILocation(line: 757, column: 9, scope: !3091)
!3094 = !DILocation(line: 759, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !812, file: !410, line: 759, column: 9)
!3096 = !DILocation(line: 759, column: 14, scope: !3095)
!3097 = !DILocation(line: 759, column: 9, scope: !812)
!3098 = !DILocation(line: 760, column: 43, scope: !3095)
!3099 = !DILocation(line: 760, column: 50, scope: !3095)
!3100 = !DILocation(line: 760, column: 16, scope: !3095)
!3101 = !DILocation(line: 760, column: 14, scope: !3095)
!3102 = !DILocation(line: 760, column: 9, scope: !3095)
!3103 = !DILocation(line: 761, column: 25, scope: !812)
!3104 = !DILocation(line: 761, column: 29, scope: !812)
!3105 = !DILocation(line: 761, column: 42, scope: !812)
!3106 = !DILocation(line: 761, column: 12, scope: !812)
!3107 = !DILocation(line: 761, column: 5, scope: !812)
!3108 = !DILocation(line: 762, column: 1, scope: !812)
!3109 = !DILocation(line: 765, column: 19, scope: !818)
!3110 = !DILocation(line: 765, column: 35, scope: !818)
!3111 = !DILocation(line: 765, column: 51, scope: !818)
!3112 = !DILocation(line: 767, column: 5, scope: !818)
!3113 = !DILocation(line: 767, column: 18, scope: !818)
!3114 = !DILocation(line: 767, column: 38, scope: !818)
!3115 = !DILocation(line: 767, column: 23, scope: !818)
!3116 = !DILocation(line: 768, column: 5, scope: !818)
!3117 = !DILocation(line: 768, column: 15, scope: !818)
!3118 = !DILocation(line: 770, column: 28, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !818, file: !410, line: 770, column: 9)
!3120 = !DILocation(line: 770, column: 10, scope: !3119)
!3121 = !DILocation(line: 770, column: 9, scope: !818)
!3122 = !DILocation(line: 771, column: 9, scope: !3119)
!3123 = !DILocation(line: 772, column: 43, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !818, file: !410, line: 772, column: 9)
!3125 = !DILocation(line: 772, column: 10, scope: !3124)
!3126 = !DILocation(line: 772, column: 9, scope: !818)
!3127 = !DILocation(line: 773, column: 9, scope: !3124)
!3128 = !DILocation(line: 774, column: 21, scope: !818)
!3129 = !DILocation(line: 774, column: 33, scope: !818)
!3130 = !DILocation(line: 774, column: 42, scope: !818)
!3131 = !DILocation(line: 775, column: 23, scope: !818)
!3132 = !DILocation(line: 775, column: 5, scope: !818)
!3133 = !DILocation(line: 775, column: 9, scope: !818)
!3134 = !DILocation(line: 775, column: 21, scope: !818)
!3135 = !DILocation(line: 776, column: 5, scope: !818)
!3136 = !DILocation(line: 777, column: 1, scope: !818)
!3137 = !DILocation(line: 870, column: 29, scope: !505)
!3138 = !DILocation(line: 872, column: 5, scope: !505)
!3139 = !DILocation(line: 872, column: 18, scope: !505)
!3140 = !DILocation(line: 873, column: 9, scope: !505)
!3141 = !DILocation(line: 872, column: 23, scope: !505)
!3142 = !DILocation(line: 874, column: 9, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !505, file: !410, line: 874, column: 9)
!3144 = !DILocation(line: 874, column: 12, scope: !3143)
!3145 = !DILocation(line: 874, column: 9, scope: !505)
!3146 = !DILocation(line: 875, column: 25, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !410, line: 874, column: 27)
!3148 = !DILocation(line: 875, column: 37, scope: !3147)
!3149 = !DILocation(line: 875, column: 46, scope: !3147)
!3150 = !DILocation(line: 876, column: 27, scope: !3147)
!3151 = !DILocation(line: 876, column: 9, scope: !3147)
!3152 = !DILocation(line: 876, column: 13, scope: !3147)
!3153 = !DILocation(line: 876, column: 25, scope: !3147)
!3154 = !DILocation(line: 877, column: 5, scope: !3147)
!3155 = !DILocation(line: 878, column: 24, scope: !505)
!3156 = !DILocation(line: 878, column: 12, scope: !505)
!3157 = !DILocation(line: 879, column: 1, scope: !505)
!3158 = !DILocation(line: 878, column: 5, scope: !505)
!3159 = !DILocation(line: 905, column: 26, scope: !825)
!3160 = !DILocation(line: 907, column: 5, scope: !825)
!3161 = !DILocation(line: 907, column: 10, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !831, file: !410, discriminator: 1)
!3163 = !DILocation(line: 907, column: 21, scope: !831)
!3164 = !DILocation(line: 907, column: 52, scope: !831)
!3165 = !DILocation(line: 907, column: 40, scope: !831)
!3166 = !DILocation(line: 907, column: 26, scope: !831)
!3167 = !DILocation(line: 907, column: 55, scope: !831)
!3168 = !DILocation(line: 907, column: 74, scope: !831)
!3169 = !DILocation(line: 907, column: 99, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3171, file: !410, discriminator: 2)
!3171 = distinct !DILexicalBlock(scope: !831, file: !410, line: 907, column: 77)
!3172 = !DILocation(line: 907, column: 103, scope: !3171)
!3173 = !DILocation(line: 907, column: 106, scope: !3171)
!3174 = !DILocation(line: 907, column: 114, scope: !3171)
!3175 = !DILocation(line: 907, column: 141, scope: !3171)
!3176 = !DILocation(line: 907, column: 80, scope: !3171)
!3177 = !DILocation(line: 907, column: 84, scope: !3171)
!3178 = !DILocation(line: 907, column: 87, scope: !3171)
!3179 = !DILocation(line: 907, column: 95, scope: !3171)
!3180 = !DILocation(line: 907, column: 170, scope: !3171)
!3181 = !DILocation(line: 907, column: 170, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3171, file: !410, discriminator: 3)
!3183 = !DILocation(line: 907, column: 211, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !831, file: !410, discriminator: 4)
!3185 = !DILocation(line: 907, column: 214, scope: !831)
!3186 = !DILocation(line: 907, column: 217, scope: !831)
!3187 = !DILocation(line: 907, column: 183, scope: !831)
!3188 = !DILocation(line: 907, column: 186, scope: !831)
!3189 = !DILocation(line: 907, column: 189, scope: !831)
!3190 = !DILocation(line: 907, column: 198, scope: !831)
!3191 = !DILocation(line: 907, column: 201, scope: !831)
!3192 = !DILocation(line: 907, column: 209, scope: !831)
!3193 = !DILocation(line: 907, column: 254, scope: !831)
!3194 = !DILocation(line: 907, column: 257, scope: !831)
!3195 = !DILocation(line: 907, column: 260, scope: !831)
!3196 = !DILocation(line: 907, column: 226, scope: !831)
!3197 = !DILocation(line: 907, column: 229, scope: !831)
!3198 = !DILocation(line: 907, column: 232, scope: !831)
!3199 = !DILocation(line: 907, column: 241, scope: !831)
!3200 = !DILocation(line: 907, column: 244, scope: !831)
!3201 = !DILocation(line: 907, column: 252, scope: !831)
!3202 = !DILocation(line: 907, column: 269, scope: !831)
!3203 = !DILocation(line: 907, column: 272, scope: !831)
!3204 = !DILocation(line: 907, column: 275, scope: !831)
!3205 = !DILocation(line: 907, column: 283, scope: !831)
!3206 = !DILocation(line: 907, column: 297, scope: !825)
!3207 = !DILocation(line: 907, column: 297, scope: !831)
!3208 = !DILocation(line: 908, column: 5, scope: !825)
!3209 = !DILocation(line: 908, column: 10, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !833, file: !410, discriminator: 1)
!3211 = !DILocation(line: 908, column: 20, scope: !833)
!3212 = !DILocation(line: 908, column: 51, scope: !833)
!3213 = !DILocation(line: 908, column: 55, scope: !833)
!3214 = !DILocation(line: 908, column: 73, scope: !836)
!3215 = !DILocation(line: 908, column: 89, scope: !836)
!3216 = !DILocation(line: 908, column: 73, scope: !833)
!3217 = !DILocation(line: 908, column: 104, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !836, file: !410, discriminator: 2)
!3219 = !DILocation(line: 908, column: 109, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !835, file: !410, discriminator: 4)
!3221 = !DILocation(line: 908, column: 119, scope: !835)
!3222 = !DILocation(line: 908, column: 149, scope: !835)
!3223 = !DILocation(line: 908, column: 175, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !835, file: !410, line: 908, column: 172)
!3225 = !DILocation(line: 908, column: 192, scope: !3224)
!3226 = !DILocation(line: 908, column: 172, scope: !3224)
!3227 = !DILocation(line: 908, column: 202, scope: !3224)
!3228 = !DILocation(line: 908, column: 172, scope: !835)
!3229 = !DILocation(line: 908, column: 172, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !835, file: !410, discriminator: 5)
!3231 = !DILocation(line: 908, column: 233, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3224, file: !410, discriminator: 6)
!3233 = !DILocation(line: 908, column: 251, scope: !3224)
!3234 = !DILocation(line: 908, column: 261, scope: !3224)
!3235 = !DILocation(line: 908, column: 286, scope: !3224)
!3236 = !DILocation(line: 908, column: 217, scope: !3224)
!3237 = !DILocation(line: 908, column: 305, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !836, file: !410, discriminator: 7)
!3239 = !DILocation(line: 908, column: 305, scope: !835)
!3240 = !DILocation(line: 908, column: 305, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !835, file: !410, discriminator: 8)
!3242 = !DILocation(line: 908, column: 305, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !835, file: !410, discriminator: 9)
!3244 = !DILocation(line: 908, column: 318, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3246, file: !410, discriminator: 10)
!3246 = !DILexicalBlockFile(scope: !825, file: !410, discriminator: 3)
!3247 = !DILocation(line: 908, column: 318, scope: !833)
!3248 = !DILocation(line: 909, column: 5, scope: !825)
!3249 = !DILocation(line: 909, column: 10, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !838, file: !410, discriminator: 1)
!3251 = !DILocation(line: 909, column: 20, scope: !838)
!3252 = !DILocation(line: 909, column: 51, scope: !838)
!3253 = !DILocation(line: 909, column: 55, scope: !838)
!3254 = !DILocation(line: 909, column: 69, scope: !841)
!3255 = !DILocation(line: 909, column: 85, scope: !841)
!3256 = !DILocation(line: 909, column: 69, scope: !838)
!3257 = !DILocation(line: 909, column: 100, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !841, file: !410, discriminator: 2)
!3259 = !DILocation(line: 909, column: 105, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !840, file: !410, discriminator: 4)
!3261 = !DILocation(line: 909, column: 115, scope: !840)
!3262 = !DILocation(line: 909, column: 145, scope: !840)
!3263 = !DILocation(line: 909, column: 171, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !840, file: !410, line: 909, column: 168)
!3265 = !DILocation(line: 909, column: 188, scope: !3264)
!3266 = !DILocation(line: 909, column: 168, scope: !3264)
!3267 = !DILocation(line: 909, column: 198, scope: !3264)
!3268 = !DILocation(line: 909, column: 168, scope: !840)
!3269 = !DILocation(line: 909, column: 168, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !840, file: !410, discriminator: 5)
!3271 = !DILocation(line: 909, column: 229, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3264, file: !410, discriminator: 6)
!3273 = !DILocation(line: 909, column: 247, scope: !3264)
!3274 = !DILocation(line: 909, column: 257, scope: !3264)
!3275 = !DILocation(line: 909, column: 282, scope: !3264)
!3276 = !DILocation(line: 909, column: 213, scope: !3264)
!3277 = !DILocation(line: 909, column: 301, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !841, file: !410, discriminator: 7)
!3279 = !DILocation(line: 909, column: 301, scope: !840)
!3280 = !DILocation(line: 909, column: 301, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !840, file: !410, discriminator: 8)
!3282 = !DILocation(line: 909, column: 301, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !840, file: !410, discriminator: 9)
!3284 = !DILocation(line: 909, column: 314, scope: !3245)
!3285 = !DILocation(line: 909, column: 314, scope: !838)
!3286 = !DILocation(line: 910, column: 19, scope: !825)
!3287 = !DILocation(line: 910, column: 7, scope: !825)
!3288 = !DILocation(line: 910, column: 25, scope: !825)
!3289 = !DILocation(line: 910, column: 35, scope: !825)
!3290 = !DILocation(line: 910, column: 55, scope: !825)
!3291 = !DILocation(line: 910, column: 43, scope: !825)
!3292 = !DILocation(line: 910, column: 5, scope: !825)
!3293 = !DILocation(line: 911, column: 1, scope: !825)
!3294 = !DILocation(line: 914, column: 27, scope: !842)
!3295 = !DILocation(line: 914, column: 41, scope: !842)
!3296 = !DILocation(line: 914, column: 54, scope: !842)
!3297 = !DILocation(line: 916, column: 5, scope: !842)
!3298 = !DILocation(line: 916, column: 14, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !851, file: !410, discriminator: 1)
!3300 = !DILocation(line: 916, column: 18, scope: !851)
!3301 = !DILocation(line: 916, column: 14, scope: !851)
!3302 = !DILocation(line: 916, column: 14, scope: !852)
!3303 = !DILocation(line: 916, column: 33, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !850, file: !410, discriminator: 2)
!3305 = !DILocation(line: 916, column: 37, scope: !850)
!3306 = !DILocation(line: 916, column: 44, scope: !850)
!3307 = !DILocation(line: 916, column: 63, scope: !850)
!3308 = !DILocation(line: 916, column: 67, scope: !850)
!3309 = !DILocation(line: 916, column: 81, scope: !850)
!3310 = !DILocation(line: 916, column: 91, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !850, file: !410, line: 916, column: 91)
!3312 = !DILocation(line: 916, column: 91, scope: !850)
!3313 = !DILocation(line: 916, column: 104, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3311, file: !410, discriminator: 4)
!3315 = !DILocation(line: 916, column: 97, scope: !3311)
!3316 = !DILocation(line: 916, column: 110, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !851, file: !410, discriminator: 5)
!3318 = !DILocation(line: 916, column: 110, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3320, file: !410, discriminator: 7)
!3320 = !DILexicalBlockFile(scope: !851, file: !410, discriminator: 6)
!3321 = !DILocation(line: 916, column: 110, scope: !850)
!3322 = !DILocation(line: 916, column: 112, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3324, file: !410, discriminator: 8)
!3324 = !DILexicalBlockFile(scope: !852, file: !410, discriminator: 3)
!3325 = !DILocation(line: 917, column: 5, scope: !842)
!3326 = !DILocation(line: 917, column: 14, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !855, file: !410, discriminator: 1)
!3328 = !DILocation(line: 917, column: 18, scope: !855)
!3329 = !DILocation(line: 917, column: 14, scope: !855)
!3330 = !DILocation(line: 917, column: 14, scope: !856)
!3331 = !DILocation(line: 917, column: 29, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !854, file: !410, discriminator: 2)
!3333 = !DILocation(line: 917, column: 33, scope: !854)
!3334 = !DILocation(line: 917, column: 40, scope: !854)
!3335 = !DILocation(line: 917, column: 59, scope: !854)
!3336 = !DILocation(line: 917, column: 63, scope: !854)
!3337 = !DILocation(line: 917, column: 73, scope: !854)
!3338 = !DILocation(line: 917, column: 83, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !854, file: !410, line: 917, column: 83)
!3340 = !DILocation(line: 917, column: 83, scope: !854)
!3341 = !DILocation(line: 917, column: 96, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !3339, file: !410, discriminator: 4)
!3343 = !DILocation(line: 917, column: 89, scope: !3339)
!3344 = !DILocation(line: 917, column: 102, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !855, file: !410, discriminator: 5)
!3346 = !DILocation(line: 917, column: 102, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3348, file: !410, discriminator: 7)
!3348 = !DILexicalBlockFile(scope: !855, file: !410, discriminator: 6)
!3349 = !DILocation(line: 917, column: 102, scope: !854)
!3350 = !DILocation(line: 917, column: 104, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3352, file: !410, discriminator: 8)
!3352 = !DILexicalBlockFile(scope: !856, file: !410, discriminator: 3)
!3353 = !DILocation(line: 918, column: 5, scope: !842)
!3354 = !DILocation(line: 919, column: 1, scope: !842)
!3355 = !DILocation(line: 922, column: 24, scope: !857)
!3356 = !DILocation(line: 924, column: 5, scope: !857)
!3357 = !DILocation(line: 924, column: 10, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !863, file: !410, discriminator: 1)
!3359 = !DILocation(line: 924, column: 20, scope: !863)
!3360 = !DILocation(line: 924, column: 43, scope: !863)
!3361 = !DILocation(line: 924, column: 47, scope: !863)
!3362 = !DILocation(line: 924, column: 65, scope: !867)
!3363 = !DILocation(line: 924, column: 73, scope: !867)
!3364 = !DILocation(line: 924, column: 65, scope: !863)
!3365 = !DILocation(line: 924, column: 91, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !866, file: !410, discriminator: 2)
!3367 = !DILocation(line: 924, column: 95, scope: !866)
!3368 = !DILocation(line: 924, column: 108, scope: !866)
!3369 = !DILocation(line: 924, column: 122, scope: !866)
!3370 = !DILocation(line: 924, column: 127, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !865, file: !410, discriminator: 4)
!3372 = !DILocation(line: 924, column: 137, scope: !865)
!3373 = !DILocation(line: 924, column: 167, scope: !865)
!3374 = !DILocation(line: 924, column: 185, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !865, file: !410, line: 924, column: 182)
!3376 = !DILocation(line: 924, column: 202, scope: !3375)
!3377 = !DILocation(line: 924, column: 182, scope: !3375)
!3378 = !DILocation(line: 924, column: 212, scope: !3375)
!3379 = !DILocation(line: 924, column: 182, scope: !865)
!3380 = !DILocation(line: 924, column: 182, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !865, file: !410, discriminator: 5)
!3382 = !DILocation(line: 924, column: 243, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3375, file: !410, discriminator: 6)
!3384 = !DILocation(line: 924, column: 261, scope: !3375)
!3385 = !DILocation(line: 924, column: 271, scope: !3375)
!3386 = !DILocation(line: 924, column: 296, scope: !3375)
!3387 = !DILocation(line: 924, column: 227, scope: !3375)
!3388 = !DILocation(line: 924, column: 315, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !866, file: !410, discriminator: 7)
!3390 = !DILocation(line: 924, column: 315, scope: !865)
!3391 = !DILocation(line: 924, column: 315, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !865, file: !410, discriminator: 8)
!3393 = !DILocation(line: 924, column: 328, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !866, file: !410, discriminator: 9)
!3395 = !DILocation(line: 924, column: 330, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3397, file: !410, discriminator: 10)
!3397 = !DILexicalBlockFile(scope: !857, file: !410, discriminator: 3)
!3398 = !DILocation(line: 924, column: 330, scope: !863)
!3399 = !DILocation(line: 925, column: 5, scope: !857)
!3400 = !DILocation(line: 925, column: 10, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !869, file: !410, discriminator: 1)
!3402 = !DILocation(line: 925, column: 20, scope: !869)
!3403 = !DILocation(line: 925, column: 43, scope: !869)
!3404 = !DILocation(line: 925, column: 47, scope: !869)
!3405 = !DILocation(line: 925, column: 61, scope: !873)
!3406 = !DILocation(line: 925, column: 69, scope: !873)
!3407 = !DILocation(line: 925, column: 61, scope: !869)
!3408 = !DILocation(line: 925, column: 87, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !872, file: !410, discriminator: 2)
!3410 = !DILocation(line: 925, column: 91, scope: !872)
!3411 = !DILocation(line: 925, column: 100, scope: !872)
!3412 = !DILocation(line: 925, column: 114, scope: !872)
!3413 = !DILocation(line: 925, column: 119, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !871, file: !410, discriminator: 4)
!3415 = !DILocation(line: 925, column: 129, scope: !871)
!3416 = !DILocation(line: 925, column: 159, scope: !871)
!3417 = !DILocation(line: 925, column: 177, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !871, file: !410, line: 925, column: 174)
!3419 = !DILocation(line: 925, column: 194, scope: !3418)
!3420 = !DILocation(line: 925, column: 174, scope: !3418)
!3421 = !DILocation(line: 925, column: 204, scope: !3418)
!3422 = !DILocation(line: 925, column: 174, scope: !871)
!3423 = !DILocation(line: 925, column: 174, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !871, file: !410, discriminator: 5)
!3425 = !DILocation(line: 925, column: 235, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3418, file: !410, discriminator: 6)
!3427 = !DILocation(line: 925, column: 253, scope: !3418)
!3428 = !DILocation(line: 925, column: 263, scope: !3418)
!3429 = !DILocation(line: 925, column: 288, scope: !3418)
!3430 = !DILocation(line: 925, column: 219, scope: !3418)
!3431 = !DILocation(line: 925, column: 307, scope: !3432)
!3432 = !DILexicalBlockFile(scope: !872, file: !410, discriminator: 7)
!3433 = !DILocation(line: 925, column: 307, scope: !871)
!3434 = !DILocation(line: 925, column: 307, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !871, file: !410, discriminator: 8)
!3436 = !DILocation(line: 925, column: 320, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !872, file: !410, discriminator: 9)
!3438 = !DILocation(line: 925, column: 322, scope: !3396)
!3439 = !DILocation(line: 925, column: 322, scope: !869)
!3440 = !DILocation(line: 926, column: 5, scope: !857)
!3441 = !DILocation(line: 930, column: 24, scope: !881)
!3442 = !DILocation(line: 930, column: 40, scope: !881)
!3443 = !DILocation(line: 930, column: 55, scope: !881)
!3444 = !DILocation(line: 932, column: 5, scope: !881)
!3445 = !DILocation(line: 932, column: 19, scope: !881)
!3446 = !DILocation(line: 932, column: 40, scope: !881)
!3447 = !DILocation(line: 932, column: 24, scope: !881)
!3448 = !DILocation(line: 934, column: 9, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !881, file: !410, line: 934, column: 9)
!3450 = !DILocation(line: 934, column: 13, scope: !3449)
!3451 = !DILocation(line: 934, column: 25, scope: !3449)
!3452 = !DILocation(line: 934, column: 9, scope: !881)
!3453 = !DILocation(line: 935, column: 25, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3449, file: !410, line: 934, column: 40)
!3455 = !DILocation(line: 935, column: 9, scope: !3454)
!3456 = !DILocation(line: 937, column: 9, scope: !3454)
!3457 = !DILocation(line: 939, column: 21, scope: !881)
!3458 = !DILocation(line: 939, column: 25, scope: !881)
!3459 = !DILocation(line: 939, column: 40, scope: !881)
!3460 = !DILocation(line: 939, column: 49, scope: !881)
!3461 = !DILocation(line: 940, column: 12, scope: !881)
!3462 = !DILocation(line: 940, column: 16, scope: !881)
!3463 = !DILocation(line: 940, column: 5, scope: !881)
!3464 = !DILocation(line: 941, column: 1, scope: !881)
!3465 = !DILocation(line: 944, column: 19, scope: !887)
!3466 = !DILocation(line: 944, column: 35, scope: !887)
!3467 = !DILocation(line: 944, column: 51, scope: !887)
!3468 = !DILocation(line: 946, column: 5, scope: !887)
!3469 = !DILocation(line: 946, column: 19, scope: !887)
!3470 = !DILocation(line: 946, column: 40, scope: !887)
!3471 = !DILocation(line: 946, column: 24, scope: !887)
!3472 = !DILocation(line: 947, column: 5, scope: !887)
!3473 = !DILocation(line: 947, column: 15, scope: !887)
!3474 = !DILocation(line: 949, column: 28, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !887, file: !410, line: 949, column: 9)
!3476 = !DILocation(line: 949, column: 10, scope: !3475)
!3477 = !DILocation(line: 949, column: 9, scope: !887)
!3478 = !DILocation(line: 950, column: 9, scope: !3475)
!3479 = !DILocation(line: 951, column: 44, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !887, file: !410, line: 951, column: 9)
!3481 = !DILocation(line: 951, column: 10, scope: !3480)
!3482 = !DILocation(line: 951, column: 9, scope: !887)
!3483 = !DILocation(line: 952, column: 9, scope: !3480)
!3484 = !DILocation(line: 953, column: 21, scope: !887)
!3485 = !DILocation(line: 953, column: 33, scope: !887)
!3486 = !DILocation(line: 953, column: 42, scope: !887)
!3487 = !DILocation(line: 954, column: 23, scope: !887)
!3488 = !DILocation(line: 954, column: 5, scope: !887)
!3489 = !DILocation(line: 954, column: 9, scope: !887)
!3490 = !DILocation(line: 954, column: 21, scope: !887)
!3491 = !DILocation(line: 955, column: 5, scope: !887)
!3492 = !DILocation(line: 956, column: 1, scope: !887)
!3493 = !DILocation(line: 1046, column: 30, scope: !509)
!3494 = !DILocation(line: 1048, column: 5, scope: !509)
!3495 = !DILocation(line: 1048, column: 19, scope: !509)
!3496 = !DILocation(line: 1049, column: 9, scope: !509)
!3497 = !DILocation(line: 1048, column: 24, scope: !509)
!3498 = !DILocation(line: 1050, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !509, file: !410, line: 1050, column: 9)
!3500 = !DILocation(line: 1050, column: 12, scope: !3499)
!3501 = !DILocation(line: 1050, column: 9, scope: !509)
!3502 = !DILocation(line: 1051, column: 25, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3499, file: !410, line: 1050, column: 27)
!3504 = !DILocation(line: 1051, column: 37, scope: !3503)
!3505 = !DILocation(line: 1051, column: 46, scope: !3503)
!3506 = !DILocation(line: 1052, column: 27, scope: !3503)
!3507 = !DILocation(line: 1052, column: 9, scope: !3503)
!3508 = !DILocation(line: 1052, column: 13, scope: !3503)
!3509 = !DILocation(line: 1052, column: 25, scope: !3503)
!3510 = !DILocation(line: 1053, column: 5, scope: !3503)
!3511 = !DILocation(line: 1054, column: 24, scope: !509)
!3512 = !DILocation(line: 1054, column: 12, scope: !509)
!3513 = !DILocation(line: 1055, column: 1, scope: !509)
!3514 = !DILocation(line: 1054, column: 5, scope: !509)
!3515 = !DILocation(line: 247, column: 33, scope: !644)
!3516 = !DILocation(line: 249, column: 21, scope: !644)
!3517 = !DILocation(line: 249, column: 25, scope: !644)
!3518 = !DILocation(line: 249, column: 38, scope: !644)
!3519 = !DILocation(line: 249, column: 47, scope: !644)
!3520 = !DILocation(line: 250, column: 12, scope: !644)
!3521 = !DILocation(line: 250, column: 16, scope: !644)
!3522 = !DILocation(line: 250, column: 5, scope: !644)
!3523 = !DILocation(line: 254, column: 33, scope: !647)
!3524 = !DILocation(line: 254, column: 47, scope: !647)
!3525 = !DILocation(line: 256, column: 5, scope: !647)
!3526 = !DILocation(line: 256, column: 15, scope: !647)
!3527 = !DILocation(line: 257, column: 5, scope: !647)
!3528 = !DILocation(line: 257, column: 16, scope: !647)
!3529 = !DILocation(line: 257, column: 23, scope: !647)
!3530 = !DILocation(line: 261, column: 9, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !647, file: !410, line: 261, column: 9)
!3532 = !DILocation(line: 261, column: 15, scope: !3531)
!3533 = !DILocation(line: 261, column: 29, scope: !3531)
!3534 = !DILocation(line: 261, column: 48, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3531, file: !410, discriminator: 1)
!3536 = !DILocation(line: 261, column: 57, scope: !3531)
!3537 = !DILocation(line: 261, column: 66, scope: !3531)
!3538 = !DILocation(line: 261, column: 9, scope: !647)
!3539 = !DILocation(line: 262, column: 25, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3531, file: !410, line: 261, column: 84)
!3541 = !DILocation(line: 262, column: 9, scope: !3540)
!3542 = !DILocation(line: 264, column: 9, scope: !3540)
!3543 = !DILocation(line: 266, column: 48, scope: !647)
!3544 = !DILocation(line: 266, column: 32, scope: !647)
!3545 = !DILocation(line: 266, column: 56, scope: !647)
!3546 = !DILocation(line: 266, column: 16, scope: !647)
!3547 = !DILocation(line: 266, column: 71, scope: !647)
!3548 = !DILocation(line: 266, column: 11, scope: !647)
!3549 = !DILocation(line: 267, column: 17, scope: !647)
!3550 = !DILocation(line: 267, column: 21, scope: !647)
!3551 = !DILocation(line: 267, column: 34, scope: !647)
!3552 = !DILocation(line: 267, column: 17, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !647, file: !410, discriminator: 1)
!3554 = !DILocation(line: 268, column: 30, scope: !647)
!3555 = !DILocation(line: 268, column: 34, scope: !647)
!3556 = !DILocation(line: 268, column: 15, scope: !647)
!3557 = !DILocation(line: 268, column: 50, scope: !647)
!3558 = !DILocation(line: 267, column: 14, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3560, file: !410, discriminator: 3)
!3560 = !DILexicalBlockFile(scope: !647, file: !410, discriminator: 2)
!3561 = !DILocation(line: 269, column: 9, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !647, file: !410, line: 269, column: 9)
!3563 = !DILocation(line: 269, column: 21, scope: !3562)
!3564 = !DILocation(line: 269, column: 18, scope: !3562)
!3565 = !DILocation(line: 269, column: 9, scope: !647)
!3566 = !DILocation(line: 270, column: 22, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3562, file: !410, line: 269, column: 28)
!3568 = !DILocation(line: 273, column: 22, scope: !3567)
!3569 = !DILocation(line: 273, column: 26, scope: !3567)
!3570 = !DILocation(line: 274, column: 22, scope: !3567)
!3571 = !DILocation(line: 274, column: 32, scope: !3567)
!3572 = !DILocation(line: 270, column: 9, scope: !3567)
!3573 = !DILocation(line: 275, column: 9, scope: !3567)
!3574 = !DILocation(line: 277, column: 11, scope: !647)
!3575 = !DILocation(line: 277, column: 15, scope: !647)
!3576 = !DILocation(line: 277, column: 9, scope: !647)
!3577 = !DILocation(line: 278, column: 21, scope: !647)
!3578 = !DILocation(line: 278, column: 30, scope: !647)
!3579 = !DILocation(line: 278, column: 39, scope: !647)
!3580 = !DILocation(line: 279, column: 21, scope: !647)
!3581 = !DILocation(line: 279, column: 5, scope: !647)
!3582 = !DILocation(line: 279, column: 9, scope: !647)
!3583 = !DILocation(line: 279, column: 19, scope: !647)
!3584 = !DILocation(line: 280, column: 5, scope: !647)
!3585 = !DILocation(line: 280, column: 10, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !657, file: !410, discriminator: 1)
!3587 = !DILocation(line: 280, column: 20, scope: !657)
!3588 = !DILocation(line: 280, column: 50, scope: !657)
!3589 = !DILocation(line: 280, column: 64, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !657, file: !410, line: 280, column: 61)
!3591 = !DILocation(line: 280, column: 81, scope: !3590)
!3592 = !DILocation(line: 280, column: 61, scope: !3590)
!3593 = !DILocation(line: 280, column: 91, scope: !3590)
!3594 = !DILocation(line: 280, column: 61, scope: !657)
!3595 = !DILocation(line: 280, column: 61, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !657, file: !410, discriminator: 2)
!3597 = !DILocation(line: 280, column: 122, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3590, file: !410, discriminator: 3)
!3599 = !DILocation(line: 280, column: 140, scope: !3590)
!3600 = !DILocation(line: 280, column: 150, scope: !3590)
!3601 = !DILocation(line: 280, column: 175, scope: !3590)
!3602 = !DILocation(line: 280, column: 106, scope: !3590)
!3603 = !DILocation(line: 280, column: 194, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !647, file: !410, discriminator: 4)
!3605 = !DILocation(line: 280, column: 194, scope: !657)
!3606 = !DILocation(line: 280, column: 194, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !657, file: !410, discriminator: 5)
!3608 = !DILocation(line: 281, column: 5, scope: !647)
!3609 = !DILocation(line: 282, column: 1, scope: !647)
!3610 = !DILocation(line: 337, column: 37, scope: !658)
!3611 = !DILocation(line: 339, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !658, file: !410, line: 339, column: 9)
!3613 = !DILocation(line: 339, column: 13, scope: !3612)
!3614 = !DILocation(line: 339, column: 27, scope: !3612)
!3615 = !DILocation(line: 339, column: 9, scope: !658)
!3616 = !DILocation(line: 340, column: 55, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3612, file: !410, line: 339, column: 42)
!3618 = !DILocation(line: 341, column: 9, scope: !3617)
!3619 = !DILocation(line: 343, column: 21, scope: !658)
!3620 = !DILocation(line: 343, column: 25, scope: !658)
!3621 = !DILocation(line: 343, column: 42, scope: !658)
!3622 = !DILocation(line: 343, column: 51, scope: !658)
!3623 = !DILocation(line: 344, column: 12, scope: !658)
!3624 = !DILocation(line: 344, column: 16, scope: !658)
!3625 = !DILocation(line: 344, column: 5, scope: !658)
!3626 = !DILocation(line: 345, column: 1, scope: !658)
!3627 = !DILocation(line: 348, column: 37, scope: !661)
!3628 = !DILocation(line: 348, column: 51, scope: !661)
!3629 = !DILocation(line: 350, column: 5, scope: !661)
!3630 = !DILocation(line: 350, column: 15, scope: !661)
!3631 = !DILocation(line: 354, column: 9, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !661, file: !410, line: 354, column: 9)
!3633 = !DILocation(line: 354, column: 15, scope: !3632)
!3634 = !DILocation(line: 354, column: 9, scope: !661)
!3635 = !DILocation(line: 355, column: 15, scope: !3632)
!3636 = !DILocation(line: 355, column: 9, scope: !3632)
!3637 = !DILocation(line: 356, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !661, file: !410, line: 356, column: 9)
!3639 = !DILocation(line: 356, column: 15, scope: !3638)
!3640 = !DILocation(line: 356, column: 29, scope: !3638)
!3641 = !DILocation(line: 356, column: 50, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3638, file: !410, discriminator: 1)
!3643 = !DILocation(line: 356, column: 59, scope: !3638)
!3644 = !DILocation(line: 356, column: 70, scope: !3638)
!3645 = !DILocation(line: 356, column: 79, scope: !3638)
!3646 = !DILocation(line: 356, column: 96, scope: !3638)
!3647 = !DILocation(line: 356, column: 9, scope: !661)
!3648 = !DILocation(line: 357, column: 25, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3638, file: !410, line: 356, column: 103)
!3650 = !DILocation(line: 357, column: 9, scope: !3649)
!3651 = !DILocation(line: 359, column: 9, scope: !3649)
!3652 = !DILocation(line: 361, column: 11, scope: !661)
!3653 = !DILocation(line: 361, column: 15, scope: !661)
!3654 = !DILocation(line: 361, column: 9, scope: !661)
!3655 = !DILocation(line: 362, column: 5, scope: !661)
!3656 = !DILocation(line: 362, column: 10, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !667, file: !410, discriminator: 1)
!3658 = !DILocation(line: 362, column: 20, scope: !667)
!3659 = !DILocation(line: 362, column: 51, scope: !667)
!3660 = !DILocation(line: 362, column: 63, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !667, file: !410, line: 362, column: 63)
!3662 = !DILocation(line: 362, column: 79, scope: !3661)
!3663 = !DILocation(line: 362, column: 63, scope: !667)
!3664 = !DILocation(line: 362, column: 110, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3661, file: !410, discriminator: 2)
!3666 = !DILocation(line: 362, column: 129, scope: !3661)
!3667 = !DILocation(line: 362, column: 138, scope: !3661)
!3668 = !DILocation(line: 362, column: 94, scope: !3661)
!3669 = !DILocation(line: 362, column: 143, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3671, file: !410, discriminator: 4)
!3671 = !DILexicalBlockFile(scope: !661, file: !410, discriminator: 3)
!3672 = !DILocation(line: 362, column: 143, scope: !667)
!3673 = !DILocation(line: 362, column: 143, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !667, file: !410, discriminator: 5)
!3675 = !DILocation(line: 363, column: 25, scope: !661)
!3676 = !DILocation(line: 363, column: 5, scope: !661)
!3677 = !DILocation(line: 363, column: 9, scope: !661)
!3678 = !DILocation(line: 363, column: 23, scope: !661)
!3679 = !DILocation(line: 364, column: 5, scope: !661)
!3680 = !DILocation(line: 364, column: 10, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !669, file: !410, discriminator: 1)
!3682 = !DILocation(line: 364, column: 20, scope: !669)
!3683 = !DILocation(line: 364, column: 51, scope: !669)
!3684 = !DILocation(line: 364, column: 61, scope: !672)
!3685 = !DILocation(line: 364, column: 77, scope: !672)
!3686 = !DILocation(line: 364, column: 61, scope: !669)
!3687 = !DILocation(line: 364, column: 92, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !672, file: !410, discriminator: 2)
!3689 = !DILocation(line: 364, column: 97, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !671, file: !410, discriminator: 4)
!3691 = !DILocation(line: 364, column: 107, scope: !671)
!3692 = !DILocation(line: 364, column: 137, scope: !671)
!3693 = !DILocation(line: 364, column: 163, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !671, file: !410, line: 364, column: 160)
!3695 = !DILocation(line: 364, column: 180, scope: !3694)
!3696 = !DILocation(line: 364, column: 160, scope: !3694)
!3697 = !DILocation(line: 364, column: 190, scope: !3694)
!3698 = !DILocation(line: 364, column: 160, scope: !671)
!3699 = !DILocation(line: 364, column: 160, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !671, file: !410, discriminator: 5)
!3701 = !DILocation(line: 364, column: 221, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3694, file: !410, discriminator: 6)
!3703 = !DILocation(line: 364, column: 239, scope: !3694)
!3704 = !DILocation(line: 364, column: 249, scope: !3694)
!3705 = !DILocation(line: 364, column: 274, scope: !3694)
!3706 = !DILocation(line: 364, column: 205, scope: !3694)
!3707 = !DILocation(line: 364, column: 293, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !672, file: !410, discriminator: 7)
!3709 = !DILocation(line: 364, column: 293, scope: !671)
!3710 = !DILocation(line: 364, column: 293, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !671, file: !410, discriminator: 8)
!3712 = !DILocation(line: 364, column: 293, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !671, file: !410, discriminator: 9)
!3714 = !DILocation(line: 364, column: 306, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3671, file: !410, discriminator: 10)
!3716 = !DILocation(line: 364, column: 306, scope: !669)
!3717 = !DILocation(line: 364, column: 306, scope: !3718)
!3718 = !DILexicalBlockFile(scope: !669, file: !410, discriminator: 11)
!3719 = !DILocation(line: 365, column: 5, scope: !661)
!3720 = !DILocation(line: 366, column: 1, scope: !661)
!3721 = !DILocation(line: 369, column: 39, scope: !673)
!3722 = !DILocation(line: 371, column: 9, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !673, file: !410, line: 371, column: 9)
!3724 = !DILocation(line: 371, column: 13, scope: !3723)
!3725 = !DILocation(line: 371, column: 29, scope: !3723)
!3726 = !DILocation(line: 371, column: 9, scope: !673)
!3727 = !DILocation(line: 372, column: 55, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3723, file: !410, line: 371, column: 44)
!3729 = !DILocation(line: 373, column: 9, scope: !3728)
!3730 = !DILocation(line: 375, column: 21, scope: !673)
!3731 = !DILocation(line: 375, column: 25, scope: !673)
!3732 = !DILocation(line: 375, column: 44, scope: !673)
!3733 = !DILocation(line: 375, column: 53, scope: !673)
!3734 = !DILocation(line: 376, column: 12, scope: !673)
!3735 = !DILocation(line: 376, column: 16, scope: !673)
!3736 = !DILocation(line: 376, column: 5, scope: !673)
!3737 = !DILocation(line: 377, column: 1, scope: !673)
!3738 = !DILocation(line: 380, column: 39, scope: !676)
!3739 = !DILocation(line: 380, column: 53, scope: !676)
!3740 = !DILocation(line: 382, column: 5, scope: !676)
!3741 = !DILocation(line: 382, column: 15, scope: !676)
!3742 = !DILocation(line: 384, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !676, file: !410, line: 384, column: 9)
!3744 = !DILocation(line: 384, column: 15, scope: !3743)
!3745 = !DILocation(line: 384, column: 9, scope: !676)
!3746 = !DILocation(line: 385, column: 15, scope: !3743)
!3747 = !DILocation(line: 385, column: 9, scope: !3743)
!3748 = !DILocation(line: 388, column: 9, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !676, file: !410, line: 388, column: 9)
!3750 = !DILocation(line: 388, column: 15, scope: !3749)
!3751 = !DILocation(line: 388, column: 29, scope: !3749)
!3752 = !DILocation(line: 388, column: 50, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3749, file: !410, discriminator: 1)
!3754 = !DILocation(line: 388, column: 59, scope: !3749)
!3755 = !DILocation(line: 388, column: 70, scope: !3749)
!3756 = !DILocation(line: 388, column: 79, scope: !3749)
!3757 = !DILocation(line: 388, column: 96, scope: !3749)
!3758 = !DILocation(line: 388, column: 9, scope: !676)
!3759 = !DILocation(line: 389, column: 25, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3749, file: !410, line: 388, column: 103)
!3761 = !DILocation(line: 389, column: 9, scope: !3760)
!3762 = !DILocation(line: 391, column: 9, scope: !3760)
!3763 = !DILocation(line: 393, column: 11, scope: !676)
!3764 = !DILocation(line: 393, column: 15, scope: !676)
!3765 = !DILocation(line: 393, column: 9, scope: !676)
!3766 = !DILocation(line: 394, column: 5, scope: !676)
!3767 = !DILocation(line: 394, column: 10, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !682, file: !410, discriminator: 1)
!3769 = !DILocation(line: 394, column: 20, scope: !682)
!3770 = !DILocation(line: 394, column: 51, scope: !682)
!3771 = !DILocation(line: 394, column: 63, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !682, file: !410, line: 394, column: 63)
!3773 = !DILocation(line: 394, column: 79, scope: !3772)
!3774 = !DILocation(line: 394, column: 63, scope: !682)
!3775 = !DILocation(line: 394, column: 110, scope: !3776)
!3776 = !DILexicalBlockFile(scope: !3772, file: !410, discriminator: 2)
!3777 = !DILocation(line: 394, column: 129, scope: !3772)
!3778 = !DILocation(line: 394, column: 138, scope: !3772)
!3779 = !DILocation(line: 394, column: 94, scope: !3772)
!3780 = !DILocation(line: 394, column: 143, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !3782, file: !410, discriminator: 4)
!3782 = !DILexicalBlockFile(scope: !676, file: !410, discriminator: 3)
!3783 = !DILocation(line: 394, column: 143, scope: !682)
!3784 = !DILocation(line: 394, column: 143, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !682, file: !410, discriminator: 5)
!3786 = !DILocation(line: 395, column: 27, scope: !676)
!3787 = !DILocation(line: 395, column: 5, scope: !676)
!3788 = !DILocation(line: 395, column: 9, scope: !676)
!3789 = !DILocation(line: 395, column: 25, scope: !676)
!3790 = !DILocation(line: 396, column: 5, scope: !676)
!3791 = !DILocation(line: 396, column: 10, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !684, file: !410, discriminator: 1)
!3793 = !DILocation(line: 396, column: 20, scope: !684)
!3794 = !DILocation(line: 396, column: 51, scope: !684)
!3795 = !DILocation(line: 396, column: 61, scope: !687)
!3796 = !DILocation(line: 396, column: 77, scope: !687)
!3797 = !DILocation(line: 396, column: 61, scope: !684)
!3798 = !DILocation(line: 396, column: 92, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !687, file: !410, discriminator: 2)
!3800 = !DILocation(line: 396, column: 97, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !686, file: !410, discriminator: 4)
!3802 = !DILocation(line: 396, column: 107, scope: !686)
!3803 = !DILocation(line: 396, column: 137, scope: !686)
!3804 = !DILocation(line: 396, column: 163, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !686, file: !410, line: 396, column: 160)
!3806 = !DILocation(line: 396, column: 180, scope: !3805)
!3807 = !DILocation(line: 396, column: 160, scope: !3805)
!3808 = !DILocation(line: 396, column: 190, scope: !3805)
!3809 = !DILocation(line: 396, column: 160, scope: !686)
!3810 = !DILocation(line: 396, column: 160, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !686, file: !410, discriminator: 5)
!3812 = !DILocation(line: 396, column: 221, scope: !3813)
!3813 = !DILexicalBlockFile(scope: !3805, file: !410, discriminator: 6)
!3814 = !DILocation(line: 396, column: 239, scope: !3805)
!3815 = !DILocation(line: 396, column: 249, scope: !3805)
!3816 = !DILocation(line: 396, column: 274, scope: !3805)
!3817 = !DILocation(line: 396, column: 205, scope: !3805)
!3818 = !DILocation(line: 396, column: 293, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !687, file: !410, discriminator: 7)
!3820 = !DILocation(line: 396, column: 293, scope: !686)
!3821 = !DILocation(line: 396, column: 293, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !686, file: !410, discriminator: 8)
!3823 = !DILocation(line: 396, column: 293, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !686, file: !410, discriminator: 9)
!3825 = !DILocation(line: 396, column: 306, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3782, file: !410, discriminator: 10)
!3827 = !DILocation(line: 396, column: 306, scope: !684)
!3828 = !DILocation(line: 396, column: 306, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !684, file: !410, discriminator: 11)
!3830 = !DILocation(line: 397, column: 5, scope: !676)
!3831 = !DILocation(line: 398, column: 1, scope: !676)
!3832 = !DILocation(line: 401, column: 40, scope: !688)
!3833 = !DILocation(line: 403, column: 9, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !688, file: !410, line: 403, column: 9)
!3835 = !DILocation(line: 403, column: 13, scope: !3834)
!3836 = !DILocation(line: 403, column: 30, scope: !3834)
!3837 = !DILocation(line: 403, column: 9, scope: !688)
!3838 = !DILocation(line: 404, column: 32, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3834, file: !410, line: 403, column: 45)
!3840 = !DILocation(line: 404, column: 9, scope: !3839)
!3841 = !DILocation(line: 404, column: 13, scope: !3839)
!3842 = !DILocation(line: 404, column: 30, scope: !3839)
!3843 = !DILocation(line: 405, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3839, file: !410, line: 405, column: 13)
!3845 = !DILocation(line: 405, column: 17, scope: !3844)
!3846 = !DILocation(line: 405, column: 34, scope: !3844)
!3847 = !DILocation(line: 405, column: 13, scope: !3839)
!3848 = !DILocation(line: 406, column: 13, scope: !3844)
!3849 = !DILocation(line: 407, column: 5, scope: !3839)
!3850 = !DILocation(line: 408, column: 21, scope: !688)
!3851 = !DILocation(line: 408, column: 25, scope: !688)
!3852 = !DILocation(line: 408, column: 45, scope: !688)
!3853 = !DILocation(line: 408, column: 54, scope: !688)
!3854 = !DILocation(line: 409, column: 12, scope: !688)
!3855 = !DILocation(line: 409, column: 16, scope: !688)
!3856 = !DILocation(line: 409, column: 5, scope: !688)
!3857 = !DILocation(line: 410, column: 1, scope: !688)
!3858 = !DILocation(line: 413, column: 40, scope: !691)
!3859 = !DILocation(line: 413, column: 54, scope: !691)
!3860 = !DILocation(line: 415, column: 5, scope: !691)
!3861 = !DILocation(line: 415, column: 15, scope: !691)
!3862 = !DILocation(line: 417, column: 9, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !691, file: !410, line: 417, column: 9)
!3864 = !DILocation(line: 417, column: 15, scope: !3863)
!3865 = !DILocation(line: 417, column: 9, scope: !691)
!3866 = !DILocation(line: 418, column: 15, scope: !3863)
!3867 = !DILocation(line: 418, column: 9, scope: !3863)
!3868 = !DILocation(line: 422, column: 9, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !691, file: !410, line: 422, column: 9)
!3870 = !DILocation(line: 422, column: 15, scope: !3869)
!3871 = !DILocation(line: 422, column: 29, scope: !3869)
!3872 = !DILocation(line: 422, column: 50, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3869, file: !410, discriminator: 1)
!3874 = !DILocation(line: 422, column: 59, scope: !3869)
!3875 = !DILocation(line: 422, column: 70, scope: !3869)
!3876 = !DILocation(line: 422, column: 79, scope: !3869)
!3877 = !DILocation(line: 422, column: 96, scope: !3869)
!3878 = !DILocation(line: 422, column: 9, scope: !691)
!3879 = !DILocation(line: 423, column: 25, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3869, file: !410, line: 422, column: 103)
!3881 = !DILocation(line: 423, column: 9, scope: !3880)
!3882 = !DILocation(line: 425, column: 9, scope: !3880)
!3883 = !DILocation(line: 427, column: 11, scope: !691)
!3884 = !DILocation(line: 427, column: 15, scope: !691)
!3885 = !DILocation(line: 427, column: 9, scope: !691)
!3886 = !DILocation(line: 428, column: 5, scope: !691)
!3887 = !DILocation(line: 428, column: 10, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !697, file: !410, discriminator: 1)
!3889 = !DILocation(line: 428, column: 20, scope: !697)
!3890 = !DILocation(line: 428, column: 51, scope: !697)
!3891 = !DILocation(line: 428, column: 63, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !697, file: !410, line: 428, column: 63)
!3893 = !DILocation(line: 428, column: 79, scope: !3892)
!3894 = !DILocation(line: 428, column: 63, scope: !697)
!3895 = !DILocation(line: 428, column: 110, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3892, file: !410, discriminator: 2)
!3897 = !DILocation(line: 428, column: 129, scope: !3892)
!3898 = !DILocation(line: 428, column: 138, scope: !3892)
!3899 = !DILocation(line: 428, column: 94, scope: !3892)
!3900 = !DILocation(line: 428, column: 143, scope: !3901)
!3901 = !DILexicalBlockFile(scope: !3902, file: !410, discriminator: 4)
!3902 = !DILexicalBlockFile(scope: !691, file: !410, discriminator: 3)
!3903 = !DILocation(line: 428, column: 143, scope: !697)
!3904 = !DILocation(line: 428, column: 143, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !697, file: !410, discriminator: 5)
!3906 = !DILocation(line: 429, column: 28, scope: !691)
!3907 = !DILocation(line: 429, column: 5, scope: !691)
!3908 = !DILocation(line: 429, column: 9, scope: !691)
!3909 = !DILocation(line: 429, column: 26, scope: !691)
!3910 = !DILocation(line: 430, column: 5, scope: !691)
!3911 = !DILocation(line: 430, column: 10, scope: !3912)
!3912 = !DILexicalBlockFile(scope: !699, file: !410, discriminator: 1)
!3913 = !DILocation(line: 430, column: 20, scope: !699)
!3914 = !DILocation(line: 430, column: 51, scope: !699)
!3915 = !DILocation(line: 430, column: 61, scope: !702)
!3916 = !DILocation(line: 430, column: 77, scope: !702)
!3917 = !DILocation(line: 430, column: 61, scope: !699)
!3918 = !DILocation(line: 430, column: 92, scope: !3919)
!3919 = !DILexicalBlockFile(scope: !702, file: !410, discriminator: 2)
!3920 = !DILocation(line: 430, column: 97, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !701, file: !410, discriminator: 4)
!3922 = !DILocation(line: 430, column: 107, scope: !701)
!3923 = !DILocation(line: 430, column: 137, scope: !701)
!3924 = !DILocation(line: 430, column: 163, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !701, file: !410, line: 430, column: 160)
!3926 = !DILocation(line: 430, column: 180, scope: !3925)
!3927 = !DILocation(line: 430, column: 160, scope: !3925)
!3928 = !DILocation(line: 430, column: 190, scope: !3925)
!3929 = !DILocation(line: 430, column: 160, scope: !701)
!3930 = !DILocation(line: 430, column: 160, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !701, file: !410, discriminator: 5)
!3932 = !DILocation(line: 430, column: 221, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !3925, file: !410, discriminator: 6)
!3934 = !DILocation(line: 430, column: 239, scope: !3925)
!3935 = !DILocation(line: 430, column: 249, scope: !3925)
!3936 = !DILocation(line: 430, column: 274, scope: !3925)
!3937 = !DILocation(line: 430, column: 205, scope: !3925)
!3938 = !DILocation(line: 430, column: 293, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !702, file: !410, discriminator: 7)
!3940 = !DILocation(line: 430, column: 293, scope: !701)
!3941 = !DILocation(line: 430, column: 293, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !701, file: !410, discriminator: 8)
!3943 = !DILocation(line: 430, column: 293, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !701, file: !410, discriminator: 9)
!3945 = !DILocation(line: 430, column: 306, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3902, file: !410, discriminator: 10)
!3947 = !DILocation(line: 430, column: 306, scope: !699)
!3948 = !DILocation(line: 430, column: 306, scope: !3949)
!3949 = !DILexicalBlockFile(scope: !699, file: !410, discriminator: 11)
!3950 = !DILocation(line: 431, column: 5, scope: !691)
!3951 = !DILocation(line: 432, column: 1, scope: !691)
!3952 = !DILocation(line: 285, column: 33, scope: !703)
!3953 = !DILocation(line: 287, column: 21, scope: !703)
!3954 = !DILocation(line: 287, column: 25, scope: !703)
!3955 = !DILocation(line: 287, column: 38, scope: !703)
!3956 = !DILocation(line: 287, column: 47, scope: !703)
!3957 = !DILocation(line: 288, column: 12, scope: !703)
!3958 = !DILocation(line: 288, column: 16, scope: !703)
!3959 = !DILocation(line: 288, column: 5, scope: !703)
!3960 = !DILocation(line: 292, column: 33, scope: !706)
!3961 = !DILocation(line: 292, column: 47, scope: !706)
!3962 = !DILocation(line: 294, column: 5, scope: !706)
!3963 = !DILocation(line: 294, column: 15, scope: !706)
!3964 = !DILocation(line: 298, column: 9, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !706, file: !410, line: 298, column: 9)
!3966 = !DILocation(line: 298, column: 15, scope: !3965)
!3967 = !DILocation(line: 298, column: 29, scope: !3965)
!3968 = !DILocation(line: 298, column: 50, scope: !3969)
!3969 = !DILexicalBlockFile(scope: !3965, file: !410, discriminator: 1)
!3970 = !DILocation(line: 298, column: 59, scope: !3965)
!3971 = !DILocation(line: 298, column: 70, scope: !3965)
!3972 = !DILocation(line: 298, column: 79, scope: !3965)
!3973 = !DILocation(line: 298, column: 96, scope: !3965)
!3974 = !DILocation(line: 298, column: 9, scope: !706)
!3975 = !DILocation(line: 299, column: 25, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3965, file: !410, line: 298, column: 103)
!3977 = !DILocation(line: 299, column: 9, scope: !3976)
!3978 = !DILocation(line: 301, column: 9, scope: !3976)
!3979 = !DILocation(line: 303, column: 11, scope: !706)
!3980 = !DILocation(line: 303, column: 15, scope: !706)
!3981 = !DILocation(line: 303, column: 9, scope: !706)
!3982 = !DILocation(line: 304, column: 21, scope: !706)
!3983 = !DILocation(line: 304, column: 30, scope: !706)
!3984 = !DILocation(line: 304, column: 39, scope: !706)
!3985 = !DILocation(line: 305, column: 21, scope: !706)
!3986 = !DILocation(line: 305, column: 5, scope: !706)
!3987 = !DILocation(line: 305, column: 9, scope: !706)
!3988 = !DILocation(line: 305, column: 19, scope: !706)
!3989 = !DILocation(line: 306, column: 5, scope: !706)
!3990 = !DILocation(line: 306, column: 10, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !712, file: !410, discriminator: 1)
!3992 = !DILocation(line: 306, column: 20, scope: !712)
!3993 = !DILocation(line: 306, column: 50, scope: !712)
!3994 = !DILocation(line: 306, column: 64, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !712, file: !410, line: 306, column: 61)
!3996 = !DILocation(line: 306, column: 81, scope: !3995)
!3997 = !DILocation(line: 306, column: 61, scope: !3995)
!3998 = !DILocation(line: 306, column: 91, scope: !3995)
!3999 = !DILocation(line: 306, column: 61, scope: !712)
!4000 = !DILocation(line: 306, column: 61, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !712, file: !410, discriminator: 2)
!4002 = !DILocation(line: 306, column: 122, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3995, file: !410, discriminator: 3)
!4004 = !DILocation(line: 306, column: 140, scope: !3995)
!4005 = !DILocation(line: 306, column: 150, scope: !3995)
!4006 = !DILocation(line: 306, column: 175, scope: !3995)
!4007 = !DILocation(line: 306, column: 106, scope: !3995)
!4008 = !DILocation(line: 306, column: 194, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !706, file: !410, discriminator: 4)
!4010 = !DILocation(line: 306, column: 194, scope: !712)
!4011 = !DILocation(line: 306, column: 194, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !712, file: !410, discriminator: 5)
!4013 = !DILocation(line: 307, column: 5, scope: !706)
!4014 = !DILocation(line: 308, column: 1, scope: !706)
!4015 = !DILocation(line: 311, column: 37, scope: !713)
!4016 = !DILocation(line: 313, column: 21, scope: !713)
!4017 = !DILocation(line: 313, column: 25, scope: !713)
!4018 = !DILocation(line: 313, column: 42, scope: !713)
!4019 = !DILocation(line: 313, column: 51, scope: !713)
!4020 = !DILocation(line: 314, column: 12, scope: !713)
!4021 = !DILocation(line: 314, column: 16, scope: !713)
!4022 = !DILocation(line: 314, column: 5, scope: !713)
!4023 = !DILocation(line: 318, column: 37, scope: !716)
!4024 = !DILocation(line: 318, column: 51, scope: !716)
!4025 = !DILocation(line: 320, column: 5, scope: !716)
!4026 = !DILocation(line: 320, column: 15, scope: !716)
!4027 = !DILocation(line: 324, column: 9, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !716, file: !410, line: 324, column: 9)
!4029 = !DILocation(line: 324, column: 15, scope: !4028)
!4030 = !DILocation(line: 324, column: 29, scope: !4028)
!4031 = !DILocation(line: 324, column: 50, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !4028, file: !410, discriminator: 1)
!4033 = !DILocation(line: 324, column: 59, scope: !4028)
!4034 = !DILocation(line: 324, column: 70, scope: !4028)
!4035 = !DILocation(line: 324, column: 79, scope: !4028)
!4036 = !DILocation(line: 324, column: 96, scope: !4028)
!4037 = !DILocation(line: 324, column: 9, scope: !716)
!4038 = !DILocation(line: 325, column: 25, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4028, file: !410, line: 324, column: 103)
!4040 = !DILocation(line: 325, column: 9, scope: !4039)
!4041 = !DILocation(line: 327, column: 9, scope: !4039)
!4042 = !DILocation(line: 329, column: 11, scope: !716)
!4043 = !DILocation(line: 329, column: 15, scope: !716)
!4044 = !DILocation(line: 329, column: 9, scope: !716)
!4045 = !DILocation(line: 330, column: 21, scope: !716)
!4046 = !DILocation(line: 330, column: 30, scope: !716)
!4047 = !DILocation(line: 330, column: 39, scope: !716)
!4048 = !DILocation(line: 331, column: 25, scope: !716)
!4049 = !DILocation(line: 331, column: 5, scope: !716)
!4050 = !DILocation(line: 331, column: 9, scope: !716)
!4051 = !DILocation(line: 331, column: 23, scope: !716)
!4052 = !DILocation(line: 332, column: 5, scope: !716)
!4053 = !DILocation(line: 332, column: 10, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 1)
!4055 = !DILocation(line: 332, column: 20, scope: !722)
!4056 = !DILocation(line: 332, column: 50, scope: !722)
!4057 = !DILocation(line: 332, column: 64, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !722, file: !410, line: 332, column: 61)
!4059 = !DILocation(line: 332, column: 81, scope: !4058)
!4060 = !DILocation(line: 332, column: 61, scope: !4058)
!4061 = !DILocation(line: 332, column: 91, scope: !4058)
!4062 = !DILocation(line: 332, column: 61, scope: !722)
!4063 = !DILocation(line: 332, column: 61, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 2)
!4065 = !DILocation(line: 332, column: 122, scope: !4066)
!4066 = !DILexicalBlockFile(scope: !4058, file: !410, discriminator: 3)
!4067 = !DILocation(line: 332, column: 140, scope: !4058)
!4068 = !DILocation(line: 332, column: 150, scope: !4058)
!4069 = !DILocation(line: 332, column: 175, scope: !4058)
!4070 = !DILocation(line: 332, column: 106, scope: !4058)
!4071 = !DILocation(line: 332, column: 194, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !716, file: !410, discriminator: 4)
!4073 = !DILocation(line: 332, column: 194, scope: !722)
!4074 = !DILocation(line: 332, column: 194, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 5)
!4076 = !DILocation(line: 333, column: 5, scope: !716)
!4077 = !DILocation(line: 334, column: 1, scope: !716)
!4078 = !DILocation(line: 785, column: 42, scope: !805)
!4079 = !DILocation(line: 785, column: 52, scope: !805)
!4080 = !DILocation(line: 787, column: 5, scope: !805)
!4081 = !DILocation(line: 787, column: 9, scope: !805)
!4082 = !DILocation(line: 787, column: 36, scope: !805)
!4083 = !DILocation(line: 787, column: 40, scope: !805)
!4084 = !DILocation(line: 787, column: 15, scope: !805)
!4085 = !DILocation(line: 788, column: 9, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !805, file: !410, line: 788, column: 9)
!4087 = !DILocation(line: 788, column: 13, scope: !4086)
!4088 = !DILocation(line: 788, column: 9, scope: !805)
!4089 = !DILocation(line: 789, column: 9, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4086, file: !410, line: 788, column: 20)
!4091 = !DILocation(line: 791, column: 14, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4086, file: !410, line: 791, column: 14)
!4093 = !DILocation(line: 791, column: 14, scope: !4086)
!4094 = !DILocation(line: 792, column: 75, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !410, line: 791, column: 19)
!4096 = !DILocation(line: 792, column: 9, scope: !4095)
!4097 = !DILocation(line: 794, column: 72, scope: !805)
!4098 = !DILocation(line: 794, column: 5, scope: !805)
!4099 = !DILocation(line: 795, column: 1, scope: !805)
!4100 = !DILocation(line: 964, column: 43, scope: !874)
!4101 = !DILocation(line: 964, column: 53, scope: !874)
!4102 = !DILocation(line: 966, column: 5, scope: !874)
!4103 = !DILocation(line: 966, column: 9, scope: !874)
!4104 = !DILocation(line: 966, column: 36, scope: !874)
!4105 = !DILocation(line: 966, column: 40, scope: !874)
!4106 = !DILocation(line: 966, column: 15, scope: !874)
!4107 = !DILocation(line: 967, column: 9, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !874, file: !410, line: 967, column: 9)
!4109 = !DILocation(line: 967, column: 13, scope: !4108)
!4110 = !DILocation(line: 967, column: 9, scope: !874)
!4111 = !DILocation(line: 968, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4108, file: !410, line: 967, column: 20)
!4113 = !DILocation(line: 970, column: 14, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4108, file: !410, line: 970, column: 14)
!4115 = !DILocation(line: 970, column: 14, scope: !4108)
!4116 = !DILocation(line: 971, column: 75, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !410, line: 970, column: 19)
!4118 = !DILocation(line: 971, column: 9, scope: !4117)
!4119 = !DILocation(line: 973, column: 72, scope: !874)
!4120 = !DILocation(line: 973, column: 5, scope: !874)
!4121 = !DILocation(line: 974, column: 1, scope: !874)
