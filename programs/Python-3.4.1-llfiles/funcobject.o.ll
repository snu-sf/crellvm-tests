; ModuleID = 'funcobject.o.bc'
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

@PyFunction_NewWithQualName.__name__ = internal unnamed_addr global %struct._object* null, align 8
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
  tail call void @llvm.dbg.value(metadata %struct._object* %code, i64 0, metadata !434, metadata !937), !dbg !938
  tail call void @llvm.dbg.value(metadata %struct._object* %globals, i64 0, metadata !435, metadata !937), !dbg !939
  tail call void @llvm.dbg.value(metadata %struct._object* %qualname, i64 0, metadata !436, metadata !937), !dbg !940
  %0 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !941, !tbaa !943
  %cmp = icmp eq %struct._object* %0, null, !dbg !947
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !948

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #1, !dbg !949
  store %struct._object* %call, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !951, !tbaa !943
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !952
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !954

if.end.3:                                         ; preds = %if.then, %entry
  %call4 = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)) #1, !dbg !955
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !956
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !958

if.end.7:                                         ; preds = %if.end.3
  %func_weakreflist = getelementptr inbounds %struct._object, %struct._object* %call4, i64 5, !dbg !959
  %1 = bitcast %struct._object* %func_weakreflist to %struct._object**, !dbg !959
  store %struct._object* null, %struct._object** %1, align 8, !dbg !960, !tbaa !961
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %code, i64 0, i32 0, !dbg !965
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !965, !tbaa !966
  %inc = add i64 %2, 1, !dbg !965
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !965, !tbaa !966
  %func_code = getelementptr inbounds %struct._object, %struct._object* %call4, i64 1, !dbg !967
  %3 = bitcast %struct._object* %func_code to %struct._object**, !dbg !967
  store %struct._object* %code, %struct._object** %3, align 8, !dbg !968, !tbaa !969
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %globals, i64 0, i32 0, !dbg !970
  %4 = load i64, i64* %ob_refcnt8, align 8, !dbg !970, !tbaa !966
  %inc9 = add i64 %4, 1, !dbg !970
  store i64 %inc9, i64* %ob_refcnt8, align 8, !dbg !970, !tbaa !966
  %func_globals = getelementptr inbounds %struct._object, %struct._object* %call4, i64 1, i32 1, !dbg !971
  %5 = bitcast %struct._typeobject** %func_globals to %struct._object**, !dbg !971
  store %struct._object* %globals, %struct._object** %5, align 8, !dbg !972, !tbaa !973
  %co_name = getelementptr inbounds %struct._object, %struct._object* %code, i64 6, i32 1, !dbg !974
  %6 = bitcast %struct._typeobject** %co_name to %struct._object**, !dbg !974
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !974, !tbaa !975
  %func_name = getelementptr inbounds %struct._object, %struct._object* %call4, i64 4, !dbg !978
  %8 = bitcast %struct._object* %func_name to %struct._object**, !dbg !978
  store %struct._object* %7, %struct._object** %8, align 8, !dbg !979, !tbaa !980
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !981
  %9 = load i64, i64* %ob_refcnt11, align 8, !dbg !981, !tbaa !966
  %inc12 = add i64 %9, 1, !dbg !981
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !981, !tbaa !966
  %func_defaults = getelementptr inbounds %struct._object, %struct._object* %call4, i64 2, !dbg !982
  %co_consts = getelementptr inbounds %struct._object, %struct._object* %code, i64 3, !dbg !983
  %10 = bitcast %struct._object* %co_consts to %struct._object**, !dbg !983
  %11 = bitcast %struct._object* %func_defaults to i8*, !dbg !983
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false), !dbg !984
  %12 = load %struct._object*, %struct._object** %10, align 8, !dbg !983, !tbaa !985
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !439, metadata !937), !dbg !986
  %call13 = tail call i64 @PyTuple_Size(%struct._object* %12) #1, !dbg !987
  %cmp14 = icmp sgt i64 %call13, 0, !dbg !989
  br i1 %cmp14, label %if.then.15, label %if.end.20, !dbg !990

if.then.15:                                       ; preds = %if.end.7
  %call16 = tail call %struct._object* @PyTuple_GetItem(%struct._object* %12, i64 0) #1, !dbg !991
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !438, metadata !937), !dbg !993
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !994
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !994, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 19, !dbg !994
  %14 = load i64, i64* %tp_flags, align 8, !dbg !994, !tbaa !997
  %and = and i64 %14, 268435456, !dbg !994
  %cmp17 = icmp ne i64 %and, 0, !dbg !994
  %call16._Py_NoneStruct = select i1 %cmp17, %struct._object* %call16, %struct._object* @_Py_NoneStruct, !dbg !1000
  tail call void @llvm.dbg.value(metadata %struct._object* %call16._Py_NoneStruct, i64 0, metadata !438, metadata !937), !dbg !993
  br label %if.end.20, !dbg !1001

if.end.20:                                        ; preds = %if.end.7, %if.then.15
  %doc.0 = phi %struct._object* [ %call16._Py_NoneStruct, %if.then.15 ], [ @_Py_NoneStruct, %if.end.7 ]
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %doc.0, i64 0, i32 0, !dbg !1002
  %15 = load i64, i64* %ob_refcnt21, align 8, !dbg !1002, !tbaa !966
  %inc22 = add i64 %15, 1, !dbg !1002
  store i64 %inc22, i64* %ob_refcnt21, align 8, !dbg !1002, !tbaa !966
  %func_doc = getelementptr inbounds %struct._object, %struct._object* %call4, i64 3, i32 1, !dbg !1003
  %16 = bitcast %struct._typeobject** %func_doc to %struct._object**, !dbg !1003
  store %struct._object* %doc.0, %struct._object** %16, align 8, !dbg !1004, !tbaa !1005
  %func_dict = getelementptr inbounds %struct._object, %struct._object* %call4, i64 4, i32 1, !dbg !1006
  %17 = bitcast %struct._typeobject** %func_dict to %struct._object**, !dbg !1006
  store %struct._object* null, %struct._object** %17, align 8, !dbg !1007, !tbaa !1008
  %func_module = getelementptr inbounds %struct._object, %struct._object* %call4, i64 5, i32 1, !dbg !1009
  %18 = bitcast %struct._typeobject** %func_module to i8*, !dbg !1010
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i32 8, i1 false), !dbg !1011
  %19 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8, !dbg !1010, !tbaa !943
  %call23 = tail call %struct._object* @PyDict_GetItem(%struct._object* %globals, %struct._object* %19) #1, !dbg !1012
  tail call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !440, metadata !937), !dbg !1013
  %tobool = icmp eq %struct._object* %call23, null, !dbg !1014
  br i1 %tobool, label %if.end.28, label %if.then.24, !dbg !1016

if.then.24:                                       ; preds = %if.end.20
  %20 = bitcast %struct._typeobject** %func_module to %struct._object**, !dbg !1009
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %call23, i64 0, i32 0, !dbg !1017
  %21 = load i64, i64* %ob_refcnt25, align 8, !dbg !1017, !tbaa !966
  %inc26 = add i64 %21, 1, !dbg !1017
  store i64 %inc26, i64* %ob_refcnt25, align 8, !dbg !1017, !tbaa !966
  store %struct._object* %call23, %struct._object** %20, align 8, !dbg !1019, !tbaa !1020
  br label %if.end.28, !dbg !1021

if.end.28:                                        ; preds = %if.end.20, %if.then.24
  %tobool29 = icmp eq %struct._object* %qualname, null, !dbg !1022
  br i1 %tobool29, label %if.else.31, label %if.then.30, !dbg !1024

if.then.30:                                       ; preds = %if.end.28
  %func_qualname = getelementptr inbounds %struct._object, %struct._object* %call4, i64 6, i32 1, !dbg !1025
  %22 = bitcast %struct._typeobject** %func_qualname to %struct._object**, !dbg !1025
  store %struct._object* %qualname, %struct._object** %22, align 8, !dbg !1026, !tbaa !1027
  br label %if.end.34, !dbg !1028

if.else.31:                                       ; preds = %if.end.28
  %23 = getelementptr inbounds %struct._object, %struct._object* %func_name, i64 0, i32 0, !dbg !1029
  %24 = load i64, i64* %23, align 8, !dbg !1029, !tbaa !980
  %func_qualname33 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 6, i32 1, !dbg !1030
  %25 = bitcast %struct._typeobject** %func_qualname33 to i64*, !dbg !1031
  store i64 %24, i64* %25, align 8, !dbg !1031, !tbaa !1027
  %26 = inttoptr i64 %24 to %struct._object*
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %27 = phi %struct._object* [ %26, %if.else.31 ], [ %qualname, %if.then.30 ], !dbg !1032
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1032
  %28 = load i64, i64* %ob_refcnt36, align 8, !dbg !1032, !tbaa !966
  %inc37 = add i64 %28, 1, !dbg !1032
  store i64 %inc37, i64* %ob_refcnt36, align 8, !dbg !1032, !tbaa !966
  %add.ptr = getelementptr %struct._object, %struct._object* %call4, i64 -2, i32 1, !dbg !1033
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1035
  %29 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1035
  %30 = load i64, i64* %29, align 8, !dbg !1035, !tbaa !1037
  %shr.mask = and i64 %30, -2, !dbg !1035
  %cmp38 = icmp eq i64 %shr.mask, -4, !dbg !1035
  br i1 %cmp38, label %do.body.41, label %if.then.39, !dbg !1039

if.then.39:                                       ; preds = %if.end.34
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1040
  unreachable, !dbg !1040

do.body.41:                                       ; preds = %if.end.34
  %and44 = and i64 %30, 1, !dbg !1042
  %or = or i64 %and44, -6, !dbg !1042
  store i64 %or, i64* %29, align 8, !dbg !1042, !tbaa !1037
  %31 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1045, !tbaa !943
  %32 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1045
  store i64 %31, i64* %32, align 8, !dbg !1045, !tbaa !1047
  %33 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1045, !tbaa !943
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %33, i64 0, i32 1, !dbg !1045
  %34 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1045, !tbaa !1048
  %gc_prev50 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1045
  %35 = bitcast %struct._typeobject** %gc_prev50 to %union._gc_head**, !dbg !1045
  store %union._gc_head* %34, %union._gc_head** %35, align 8, !dbg !1045, !tbaa !1048
  %36 = bitcast %union._gc_head* %34 to %struct._typeobject***, !dbg !1045
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %36, align 8, !dbg !1045, !tbaa !1047
  %37 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1045, !tbaa !943
  %gc_prev56 = getelementptr inbounds %struct.anon, %struct.anon* %37, i64 0, i32 1, !dbg !1045
  %38 = bitcast %union._gc_head** %gc_prev56 to %struct._typeobject***, !dbg !1045
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %38, align 8, !dbg !1045, !tbaa !1048
  br label %cleanup, !dbg !1049

cleanup:                                          ; preds = %if.end.3, %if.then, %do.body.41
  %retval.0 = phi %struct._object* [ %call4, %do.body.41 ], [ null, %if.then ], [ null, %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !1050
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #2

declare i64 @PyTuple_Size(%struct._object*) #2

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #2

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_New(%struct._object* %code, %struct._object* %globals) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %code, i64 0, metadata !445, metadata !937), !dbg !1051
  tail call void @llvm.dbg.value(metadata %struct._object* %globals, i64 0, metadata !446, metadata !937), !dbg !1052
  %call = tail call %struct._object* @PyFunction_NewWithQualName(%struct._object* %code, %struct._object* %globals, %struct._object* null), !dbg !1053
  ret %struct._object* %call, !dbg !1054
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetCode(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !449, metadata !937), !dbg !1055
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1056
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1056, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1056
  br i1 %cmp, label %if.end, label %if.then, !dbg !1058

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 78) #1, !dbg !1059
  br label %return, !dbg !1061

if.end:                                           ; preds = %entry
  %func_code = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !1062
  %1 = bitcast %struct._object* %func_code to %struct._object**, !dbg !1062
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1062, !tbaa !969
  br label %return, !dbg !1063

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1064
}

declare void @_PyErr_BadInternalCall(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetGlobals(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !452, metadata !937), !dbg !1065
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1066
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1066, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1066
  br i1 %cmp, label %if.end, label %if.then, !dbg !1068

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 88) #1, !dbg !1069
  br label %return, !dbg !1071

if.end:                                           ; preds = %entry
  %func_globals = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !1072
  %1 = bitcast %struct._typeobject** %func_globals to %struct._object**, !dbg !1072
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1072, !tbaa !973
  br label %return, !dbg !1073

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1074
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetModule(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !455, metadata !937), !dbg !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1076
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1076, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1076
  br i1 %cmp, label %if.end, label %if.then, !dbg !1078

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 98) #1, !dbg !1079
  br label %return, !dbg !1081

if.end:                                           ; preds = %entry
  %func_module = getelementptr inbounds %struct._object, %struct._object* %op, i64 5, i32 1, !dbg !1082
  %1 = bitcast %struct._typeobject** %func_module to %struct._object**, !dbg !1082
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1082, !tbaa !1020
  br label %return, !dbg !1083

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1084
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetDefaults(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !458, metadata !937), !dbg !1085
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1086
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1086, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1086
  br i1 %cmp, label %if.end, label %if.then, !dbg !1088

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 108) #1, !dbg !1089
  br label %return, !dbg !1091

if.end:                                           ; preds = %entry
  %func_defaults = getelementptr inbounds %struct._object, %struct._object* %op, i64 2, !dbg !1092
  %1 = bitcast %struct._object* %func_defaults to %struct._object**, !dbg !1092
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1092, !tbaa !1093
  br label %return, !dbg !1094

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1095
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetDefaults(%struct._object* nocapture %op, %struct._object* %defaults) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !461, metadata !937), !dbg !1096
  tail call void @llvm.dbg.value(metadata %struct._object* %defaults, i64 0, metadata !462, metadata !937), !dbg !1097
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1098
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1098, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1098
  br i1 %cmp, label %if.end, label %if.then, !dbg !1100

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 118) #1, !dbg !1101
  br label %return, !dbg !1103

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %defaults, @_Py_NoneStruct, !dbg !1104
  br i1 %cmp1, label %do.body, label %if.else, !dbg !1106

if.else:                                          ; preds = %if.end
  %tobool = icmp eq %struct._object* %defaults, null, !dbg !1107
  br i1 %tobool, label %if.else.6, label %land.lhs.true, !dbg !1109

land.lhs.true:                                    ; preds = %if.else
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %defaults, i64 0, i32 1, !dbg !1110
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1110, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1110
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1110, !tbaa !997
  %and = and i64 %2, 67108864, !dbg !1110
  %cmp4 = icmp eq i64 %and, 0, !dbg !1110
  br i1 %cmp4, label %if.else.6, label %if.then.5, !dbg !1112

if.then.5:                                        ; preds = %land.lhs.true
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %defaults, i64 0, i32 0, !dbg !1113
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1113, !tbaa !966
  %inc = add i64 %3, 1, !dbg !1113
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1113, !tbaa !966
  br label %do.body

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1115, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #1, !dbg !1117
  br label %return, !dbg !1118

do.body:                                          ; preds = %if.end, %if.then.5
  %defaults.addr.0 = phi %struct._object* [ %defaults, %if.then.5 ], [ null, %if.end ]
  %func_defaults = getelementptr inbounds %struct._object, %struct._object* %op, i64 2, !dbg !1119
  %5 = bitcast %struct._object* %func_defaults to %struct._object**, !dbg !1119
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1119, !tbaa !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !463, metadata !937), !dbg !1119
  %cmp9 = icmp eq %struct._object* %6, null, !dbg !1121
  br i1 %cmp9, label %if.end.18, label %do.body.11, !dbg !1122

do.body.11:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !465, metadata !937), !dbg !1123
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1125
  %7 = load i64, i64* %ob_refcnt12, align 8, !dbg !1125, !tbaa !966
  %dec = add i64 %7, -1, !dbg !1125
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1125, !tbaa !966
  %cmp13 = icmp eq i64 %dec, 0, !dbg !1125
  br i1 %cmp13, label %if.else.15, label %if.end.18, !dbg !1127

if.else.15:                                       ; preds = %do.body.11
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1128
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1128, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1128
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1128, !tbaa !1130
  tail call void %9(%struct._object* %6) #1, !dbg !1128
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %do.body.11, %do.body
  store %struct._object* %defaults.addr.0, %struct._object** %5, align 8, !dbg !1131, !tbaa !1093
  br label %return, !dbg !1132

return:                                           ; preds = %if.end.18, %if.else.6, %if.then
  %retval.0 = phi i32 [ 0, %if.end.18 ], [ -1, %if.else.6 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1133
}

declare void @PyErr_SetString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetKwDefaults(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !470, metadata !937), !dbg !1134
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1135
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1135, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1135
  br i1 %cmp, label %if.end, label %if.then, !dbg !1137

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 139) #1, !dbg !1138
  br label %return, !dbg !1140

if.end:                                           ; preds = %entry
  %func_kwdefaults = getelementptr inbounds %struct._object, %struct._object* %op, i64 2, i32 1, !dbg !1141
  %1 = bitcast %struct._typeobject** %func_kwdefaults to %struct._object**, !dbg !1141
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1141, !tbaa !1142
  br label %return, !dbg !1143

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1144
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetKwDefaults(%struct._object* nocapture %op, %struct._object* %defaults) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !473, metadata !937), !dbg !1145
  tail call void @llvm.dbg.value(metadata %struct._object* %defaults, i64 0, metadata !474, metadata !937), !dbg !1146
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1147
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1147, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1147
  br i1 %cmp, label %if.end, label %if.then, !dbg !1149

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 149) #1, !dbg !1150
  br label %return, !dbg !1152

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %defaults, @_Py_NoneStruct, !dbg !1153
  br i1 %cmp1, label %do.body, label %if.else, !dbg !1155

if.else:                                          ; preds = %if.end
  %tobool = icmp eq %struct._object* %defaults, null, !dbg !1156
  br i1 %tobool, label %if.else.6, label %land.lhs.true, !dbg !1158

land.lhs.true:                                    ; preds = %if.else
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %defaults, i64 0, i32 1, !dbg !1159
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1159, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1159
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1159, !tbaa !997
  %and = and i64 %2, 536870912, !dbg !1159
  %cmp4 = icmp eq i64 %and, 0, !dbg !1159
  br i1 %cmp4, label %if.else.6, label %if.then.5, !dbg !1161

if.then.5:                                        ; preds = %land.lhs.true
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %defaults, i64 0, i32 0, !dbg !1162
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1162, !tbaa !966
  %inc = add i64 %3, 1, !dbg !1162
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1162, !tbaa !966
  br label %do.body

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1164, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0)) #1, !dbg !1166
  br label %return, !dbg !1167

do.body:                                          ; preds = %if.end, %if.then.5
  %defaults.addr.0 = phi %struct._object* [ %defaults, %if.then.5 ], [ null, %if.end ]
  %func_kwdefaults = getelementptr inbounds %struct._object, %struct._object* %op, i64 2, i32 1, !dbg !1168
  %5 = bitcast %struct._typeobject** %func_kwdefaults to %struct._object**, !dbg !1168
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1168, !tbaa !1142
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !475, metadata !937), !dbg !1168
  %cmp9 = icmp eq %struct._object* %6, null, !dbg !1170
  br i1 %cmp9, label %if.end.18, label %do.body.11, !dbg !1171

do.body.11:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !477, metadata !937), !dbg !1172
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1174
  %7 = load i64, i64* %ob_refcnt12, align 8, !dbg !1174, !tbaa !966
  %dec = add i64 %7, -1, !dbg !1174
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1174, !tbaa !966
  %cmp13 = icmp eq i64 %dec, 0, !dbg !1174
  br i1 %cmp13, label %if.else.15, label %if.end.18, !dbg !1176

if.else.15:                                       ; preds = %do.body.11
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1177
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1177, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1177
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1177, !tbaa !1130
  tail call void %9(%struct._object* %6) #1, !dbg !1177
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %do.body.11, %do.body
  store %struct._object* %defaults.addr.0, %struct._object** %5, align 8, !dbg !1179, !tbaa !1142
  br label %return, !dbg !1180

return:                                           ; preds = %if.end.18, %if.else.6, %if.then
  %retval.0 = phi i32 [ 0, %if.end.18 ], [ -1, %if.else.6 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1181
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetClosure(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !482, metadata !937), !dbg !1182
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1183
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1183, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1183
  br i1 %cmp, label %if.end, label %if.then, !dbg !1185

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 171) #1, !dbg !1186
  br label %return, !dbg !1188

if.end:                                           ; preds = %entry
  %func_closure = getelementptr inbounds %struct._object, %struct._object* %op, i64 3, !dbg !1189
  %1 = bitcast %struct._object* %func_closure to %struct._object**, !dbg !1189
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1189, !tbaa !1190
  br label %return, !dbg !1191

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1192
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetClosure(%struct._object* nocapture %op, %struct._object* %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !485, metadata !937), !dbg !1193
  tail call void @llvm.dbg.value(metadata %struct._object* %closure, i64 0, metadata !486, metadata !937), !dbg !1194
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1195
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1195, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1195
  br i1 %cmp, label %if.end, label %if.then, !dbg !1197

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 181) #1, !dbg !1198
  br label %return, !dbg !1200

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %closure, @_Py_NoneStruct, !dbg !1201
  br i1 %cmp1, label %do.body, label %if.else, !dbg !1203

if.else:                                          ; preds = %if.end
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %closure, i64 0, i32 1, !dbg !1204
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1204, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1204
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1204, !tbaa !997
  %and = and i64 %2, 67108864, !dbg !1204
  %cmp4 = icmp eq i64 %and, 0, !dbg !1204
  br i1 %cmp4, label %if.else.6, label %if.then.5, !dbg !1206

if.then.5:                                        ; preds = %if.else
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %closure, i64 0, i32 0, !dbg !1207
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1207, !tbaa !966
  %inc = add i64 %3, 1, !dbg !1207
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1207, !tbaa !966
  br label %do.body

if.else.6:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1209, !tbaa !943
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 1, !dbg !1211
  %5 = load i8*, i8** %tp_name, align 8, !dbg !1211, !tbaa !1212
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %5) #1, !dbg !1213
  br label %return, !dbg !1214

do.body:                                          ; preds = %if.end, %if.then.5
  %closure.addr.0 = phi %struct._object* [ %closure, %if.then.5 ], [ null, %if.end ]
  %func_closure = getelementptr inbounds %struct._object, %struct._object* %op, i64 3, !dbg !1215
  %6 = bitcast %struct._object* %func_closure to %struct._object**, !dbg !1215
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !1215, !tbaa !1190
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !487, metadata !937), !dbg !1215
  %cmp10 = icmp eq %struct._object* %7, null, !dbg !1217
  br i1 %cmp10, label %if.end.19, label %do.body.12, !dbg !1218

do.body.12:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !489, metadata !937), !dbg !1219
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !1221
  %8 = load i64, i64* %ob_refcnt13, align 8, !dbg !1221, !tbaa !966
  %dec = add i64 %8, -1, !dbg !1221
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !1221, !tbaa !966
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1221
  br i1 %cmp14, label %if.else.16, label %if.end.19, !dbg !1223

if.else.16:                                       ; preds = %do.body.12
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1224
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1224, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1224
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1224, !tbaa !1130
  tail call void %10(%struct._object* %7) #1, !dbg !1224
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %do.body.12, %do.body
  store %struct._object* %closure.addr.0, %struct._object** %6, align 8, !dbg !1226, !tbaa !1190
  br label %return, !dbg !1227

return:                                           ; preds = %if.end.19, %if.else.6, %if.then
  %retval.0 = phi i32 [ 0, %if.end.19 ], [ -1, %if.else.6 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1228
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetAnnotations(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !494, metadata !937), !dbg !1229
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1230
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1230, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1230
  br i1 %cmp, label %if.end, label %if.then, !dbg !1232

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 204) #1, !dbg !1233
  br label %return, !dbg !1235

if.end:                                           ; preds = %entry
  %func_annotations = getelementptr inbounds %struct._object, %struct._object* %op, i64 6, !dbg !1236
  %1 = bitcast %struct._object* %func_annotations to %struct._object**, !dbg !1236
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1236, !tbaa !1237
  br label %return, !dbg !1238

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %2, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1239
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetAnnotations(%struct._object* nocapture %op, %struct._object* %annotations) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !497, metadata !937), !dbg !1240
  tail call void @llvm.dbg.value(metadata %struct._object* %annotations, i64 0, metadata !498, metadata !937), !dbg !1241
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1242
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1242, !tbaa !996
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*), !dbg !1242
  br i1 %cmp, label %if.end, label %if.then, !dbg !1244

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 214) #1, !dbg !1245
  br label %return, !dbg !1247

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %annotations, @_Py_NoneStruct, !dbg !1248
  br i1 %cmp1, label %do.body, label %if.else, !dbg !1250

if.else:                                          ; preds = %if.end
  %tobool = icmp eq %struct._object* %annotations, null, !dbg !1251
  br i1 %tobool, label %if.else.6, label %land.lhs.true, !dbg !1253

land.lhs.true:                                    ; preds = %if.else
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %annotations, i64 0, i32 1, !dbg !1254
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1254, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1254
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1254, !tbaa !997
  %and = and i64 %2, 536870912, !dbg !1254
  %cmp4 = icmp eq i64 %and, 0, !dbg !1254
  br i1 %cmp4, label %if.else.6, label %if.then.5, !dbg !1256

if.then.5:                                        ; preds = %land.lhs.true
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %annotations, i64 0, i32 0, !dbg !1257
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1257, !tbaa !966
  %inc = add i64 %3, 1, !dbg !1257
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1257, !tbaa !966
  br label %do.body

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1259, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !1261
  br label %return, !dbg !1262

do.body:                                          ; preds = %if.end, %if.then.5
  %annotations.addr.0 = phi %struct._object* [ %annotations, %if.then.5 ], [ null, %if.end ]
  %func_annotations = getelementptr inbounds %struct._object, %struct._object* %op, i64 6, !dbg !1263
  %5 = bitcast %struct._object* %func_annotations to %struct._object**, !dbg !1263
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1263, !tbaa !1237
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !499, metadata !937), !dbg !1263
  %cmp9 = icmp eq %struct._object* %6, null, !dbg !1265
  br i1 %cmp9, label %if.end.18, label %do.body.11, !dbg !1266

do.body.11:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !501, metadata !937), !dbg !1267
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1269
  %7 = load i64, i64* %ob_refcnt12, align 8, !dbg !1269, !tbaa !966
  %dec = add i64 %7, -1, !dbg !1269
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1269, !tbaa !966
  %cmp13 = icmp eq i64 %dec, 0, !dbg !1269
  br i1 %cmp13, label %if.else.15, label %if.end.18, !dbg !1271

if.else.15:                                       ; preds = %do.body.11
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1272
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1272, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1272
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1272, !tbaa !1130
  tail call void %9(%struct._object* %6) #1, !dbg !1272
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %do.body.11, %do.body
  store %struct._object* %annotations.addr.0, %struct._object** %5, align 8, !dbg !1274, !tbaa !1237
  br label %return, !dbg !1275

return:                                           ; preds = %if.end.18, %if.else.6, %if.then
  %retval.0 = phi i32 [ 0, %if.end.18 ], [ -1, %if.else.6 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1276
}

; Function Attrs: nounwind uwtable
define internal void @func_dealloc(%struct.PyFunctionObject* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !516, metadata !937), !dbg !1277
  %add.ptr = getelementptr %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 -1, i32 10, !dbg !1278
  %gc_refs = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 2, !dbg !1280
  %0 = bitcast %struct._object** %gc_refs to i64*, !dbg !1280
  %1 = load i64, i64* %0, align 8, !dbg !1280, !tbaa !1037
  %and = and i64 %1, 1, !dbg !1280
  %or = or i64 %and, -4, !dbg !1280
  store i64 %or, i64* %0, align 8, !dbg !1280, !tbaa !1037
  %gc_next = bitcast %struct._object** %add.ptr to %union._gc_head**, !dbg !1283
  %2 = bitcast %struct._object** %add.ptr to i64*, !dbg !1283
  %3 = load i64, i64* %2, align 8, !dbg !1283, !tbaa !1047
  %gc_prev = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 1, !dbg !1283
  %4 = bitcast %struct._object** %gc_prev to i64**, !dbg !1283
  %5 = load i64*, i64** %4, align 8, !dbg !1283, !tbaa !1048
  store i64 %3, i64* %5, align 8, !dbg !1283, !tbaa !1047
  %6 = ptrtoint i64* %5 to i64, !dbg !1283
  %7 = bitcast %struct._object** %add.ptr to %struct.anon**, !dbg !1283
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !1283, !tbaa !1047
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !1283
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1283
  store i64 %6, i64* %9, align 8, !dbg !1283, !tbaa !1048
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1283, !tbaa !1047
  %func_weakreflist = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 9, !dbg !1285
  %10 = load %struct._object*, %struct._object** %func_weakreflist, align 8, !dbg !1285, !tbaa !961
  %cmp = icmp eq %struct._object* %10, null, !dbg !1287
  br i1 %cmp, label %do.body.18, label %if.then, !dbg !1288

if.then:                                          ; preds = %entry
  %11 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 0, !dbg !1289
  tail call void @PyObject_ClearWeakRefs(%struct._object* %11) #1, !dbg !1290
  br label %do.body.18, !dbg !1290

do.body.18:                                       ; preds = %entry, %if.then
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 1, !dbg !1291
  %12 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !1291, !tbaa !969
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !519, metadata !937), !dbg !1291
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1293
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1293, !tbaa !966
  %dec = add i64 %13, -1, !dbg !1293
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1293, !tbaa !966
  %cmp19 = icmp eq i64 %dec, 0, !dbg !1293
  br i1 %cmp19, label %if.else, label %if.end.21, !dbg !1295

if.else:                                          ; preds = %do.body.18
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1296
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1296, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1296
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1296, !tbaa !1130
  tail call void %15(%struct._object* %12) #1, !dbg !1296
  br label %if.end.21

if.end.21:                                        ; preds = %do.body.18, %if.else
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 2, !dbg !1298
  %16 = load %struct._object*, %struct._object** %func_globals, align 8, !dbg !1298, !tbaa !973
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !521, metadata !937), !dbg !1298
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1300
  %17 = load i64, i64* %ob_refcnt26, align 8, !dbg !1300, !tbaa !966
  %dec27 = add i64 %17, -1, !dbg !1300
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !1300, !tbaa !966
  %cmp28 = icmp eq i64 %dec27, 0, !dbg !1300
  br i1 %cmp28, label %if.else.30, label %if.end.33, !dbg !1302

if.else.30:                                       ; preds = %if.end.21
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1303
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1303, !tbaa !996
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1303
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !1303, !tbaa !1130
  tail call void %19(%struct._object* %16) #1, !dbg !1303
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.21, %if.else.30
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 10, !dbg !1305
  %20 = load %struct._object*, %struct._object** %func_module, align 8, !dbg !1305, !tbaa !1020
  tail call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !523, metadata !937), !dbg !1305
  %cmp37 = icmp eq %struct._object* %20, null, !dbg !1307
  br i1 %cmp37, label %if.end.51, label %do.body.39, !dbg !1308

do.body.39:                                       ; preds = %if.end.33
  tail call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !525, metadata !937), !dbg !1309
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 0, !dbg !1311
  %21 = load i64, i64* %ob_refcnt41, align 8, !dbg !1311, !tbaa !966
  %dec42 = add i64 %21, -1, !dbg !1311
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !1311, !tbaa !966
  %cmp43 = icmp eq i64 %dec42, 0, !dbg !1311
  br i1 %cmp43, label %if.else.45, label %if.end.51, !dbg !1313

if.else.45:                                       ; preds = %do.body.39
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 1, !dbg !1314
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !1314, !tbaa !996
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1314
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !1314, !tbaa !1130
  tail call void %23(%struct._object* %20) #1, !dbg !1314
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %do.body.39, %if.end.33
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 7, !dbg !1316
  %24 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !1316, !tbaa !980
  tail call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !528, metadata !937), !dbg !1316
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 0, !dbg !1318
  %25 = load i64, i64* %ob_refcnt56, align 8, !dbg !1318, !tbaa !966
  %dec57 = add i64 %25, -1, !dbg !1318
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1318, !tbaa !966
  %cmp58 = icmp eq i64 %dec57, 0, !dbg !1318
  br i1 %cmp58, label %if.else.60, label %if.end.63, !dbg !1320

if.else.60:                                       ; preds = %if.end.51
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 1, !dbg !1321
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1321, !tbaa !996
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1321
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1321, !tbaa !1130
  tail call void %27(%struct._object* %24) #1, !dbg !1321
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.51, %if.else.60
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 3, !dbg !1323
  %28 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !1323, !tbaa !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !530, metadata !937), !dbg !1323
  %cmp68 = icmp eq %struct._object* %28, null, !dbg !1325
  br i1 %cmp68, label %if.end.82, label %do.body.70, !dbg !1326

do.body.70:                                       ; preds = %if.end.63
  tail call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !532, metadata !937), !dbg !1327
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !1329
  %29 = load i64, i64* %ob_refcnt72, align 8, !dbg !1329, !tbaa !966
  %dec73 = add i64 %29, -1, !dbg !1329
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !1329, !tbaa !966
  %cmp74 = icmp eq i64 %dec73, 0, !dbg !1329
  br i1 %cmp74, label %if.else.76, label %if.end.82, !dbg !1331

if.else.76:                                       ; preds = %do.body.70
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 1, !dbg !1332
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !1332, !tbaa !996
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1332
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !1332, !tbaa !1130
  tail call void %31(%struct._object* %28) #1, !dbg !1332
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.76, %do.body.70, %if.end.63
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 4, !dbg !1334
  %32 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !1334, !tbaa !1142
  tail call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !535, metadata !937), !dbg !1334
  %cmp87 = icmp eq %struct._object* %32, null, !dbg !1336
  br i1 %cmp87, label %if.end.101, label %do.body.89, !dbg !1337

do.body.89:                                       ; preds = %if.end.82
  tail call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !537, metadata !937), !dbg !1338
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 0, !dbg !1340
  %33 = load i64, i64* %ob_refcnt91, align 8, !dbg !1340, !tbaa !966
  %dec92 = add i64 %33, -1, !dbg !1340
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !1340, !tbaa !966
  %cmp93 = icmp eq i64 %dec92, 0, !dbg !1340
  br i1 %cmp93, label %if.else.95, label %if.end.101, !dbg !1342

if.else.95:                                       ; preds = %do.body.89
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 1, !dbg !1343
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !1343, !tbaa !996
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !1343
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !1343, !tbaa !1130
  tail call void %35(%struct._object* %32) #1, !dbg !1343
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.95, %do.body.89, %if.end.82
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 6, !dbg !1345
  %36 = load %struct._object*, %struct._object** %func_doc, align 8, !dbg !1345, !tbaa !1005
  tail call void @llvm.dbg.value(metadata %struct._object* %36, i64 0, metadata !540, metadata !937), !dbg !1345
  %cmp106 = icmp eq %struct._object* %36, null, !dbg !1347
  br i1 %cmp106, label %if.end.120, label %do.body.108, !dbg !1348

do.body.108:                                      ; preds = %if.end.101
  tail call void @llvm.dbg.value(metadata %struct._object* %36, i64 0, metadata !542, metadata !937), !dbg !1349
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %36, i64 0, i32 0, !dbg !1351
  %37 = load i64, i64* %ob_refcnt110, align 8, !dbg !1351, !tbaa !966
  %dec111 = add i64 %37, -1, !dbg !1351
  store i64 %dec111, i64* %ob_refcnt110, align 8, !dbg !1351, !tbaa !966
  %cmp112 = icmp eq i64 %dec111, 0, !dbg !1351
  br i1 %cmp112, label %if.else.114, label %if.end.120, !dbg !1353

if.else.114:                                      ; preds = %do.body.108
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %36, i64 0, i32 1, !dbg !1354
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8, !dbg !1354, !tbaa !996
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !1354
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8, !dbg !1354, !tbaa !1130
  tail call void %39(%struct._object* %36) #1, !dbg !1354
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.114, %do.body.108, %if.end.101
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 8, !dbg !1356
  %40 = load %struct._object*, %struct._object** %func_dict, align 8, !dbg !1356, !tbaa !1008
  tail call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !545, metadata !937), !dbg !1356
  %cmp125 = icmp eq %struct._object* %40, null, !dbg !1358
  br i1 %cmp125, label %if.end.139, label %do.body.127, !dbg !1359

do.body.127:                                      ; preds = %if.end.120
  tail call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !547, metadata !937), !dbg !1360
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 0, !dbg !1362
  %41 = load i64, i64* %ob_refcnt129, align 8, !dbg !1362, !tbaa !966
  %dec130 = add i64 %41, -1, !dbg !1362
  store i64 %dec130, i64* %ob_refcnt129, align 8, !dbg !1362, !tbaa !966
  %cmp131 = icmp eq i64 %dec130, 0, !dbg !1362
  br i1 %cmp131, label %if.else.133, label %if.end.139, !dbg !1364

if.else.133:                                      ; preds = %do.body.127
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 1, !dbg !1365
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8, !dbg !1365, !tbaa !996
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !1365
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8, !dbg !1365, !tbaa !1130
  tail call void %43(%struct._object* %40) #1, !dbg !1365
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.133, %do.body.127, %if.end.120
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 5, !dbg !1367
  %44 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !1367, !tbaa !1190
  tail call void @llvm.dbg.value(metadata %struct._object* %44, i64 0, metadata !550, metadata !937), !dbg !1367
  %cmp144 = icmp eq %struct._object* %44, null, !dbg !1369
  br i1 %cmp144, label %if.end.158, label %do.body.146, !dbg !1370

do.body.146:                                      ; preds = %if.end.139
  tail call void @llvm.dbg.value(metadata %struct._object* %44, i64 0, metadata !552, metadata !937), !dbg !1371
  %ob_refcnt148 = getelementptr inbounds %struct._object, %struct._object* %44, i64 0, i32 0, !dbg !1373
  %45 = load i64, i64* %ob_refcnt148, align 8, !dbg !1373, !tbaa !966
  %dec149 = add i64 %45, -1, !dbg !1373
  store i64 %dec149, i64* %ob_refcnt148, align 8, !dbg !1373, !tbaa !966
  %cmp150 = icmp eq i64 %dec149, 0, !dbg !1373
  br i1 %cmp150, label %if.else.152, label %if.end.158, !dbg !1375

if.else.152:                                      ; preds = %do.body.146
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %44, i64 0, i32 1, !dbg !1376
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8, !dbg !1376, !tbaa !996
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i64 0, i32 4, !dbg !1376
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8, !dbg !1376, !tbaa !1130
  tail call void %47(%struct._object* %44) #1, !dbg !1376
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.152, %do.body.146, %if.end.139
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 11, !dbg !1378
  %48 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !1378, !tbaa !1237
  tail call void @llvm.dbg.value(metadata %struct._object* %48, i64 0, metadata !555, metadata !937), !dbg !1378
  %cmp163 = icmp eq %struct._object* %48, null, !dbg !1380
  br i1 %cmp163, label %if.end.177, label %do.body.165, !dbg !1381

do.body.165:                                      ; preds = %if.end.158
  tail call void @llvm.dbg.value(metadata %struct._object* %48, i64 0, metadata !557, metadata !937), !dbg !1382
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 0, !dbg !1384
  %49 = load i64, i64* %ob_refcnt167, align 8, !dbg !1384, !tbaa !966
  %dec168 = add i64 %49, -1, !dbg !1384
  store i64 %dec168, i64* %ob_refcnt167, align 8, !dbg !1384, !tbaa !966
  %cmp169 = icmp eq i64 %dec168, 0, !dbg !1384
  br i1 %cmp169, label %if.else.171, label %if.end.177, !dbg !1386

if.else.171:                                      ; preds = %do.body.165
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 1, !dbg !1387
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8, !dbg !1387, !tbaa !996
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 4, !dbg !1387
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8, !dbg !1387, !tbaa !1130
  tail call void %51(%struct._object* %48) #1, !dbg !1387
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.171, %do.body.165, %if.end.158
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 12, !dbg !1389
  %52 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !1389, !tbaa !1027
  tail call void @llvm.dbg.value(metadata %struct._object* %52, i64 0, metadata !560, metadata !937), !dbg !1389
  %cmp182 = icmp eq %struct._object* %52, null, !dbg !1391
  br i1 %cmp182, label %if.end.196, label %do.body.184, !dbg !1392

do.body.184:                                      ; preds = %if.end.177
  tail call void @llvm.dbg.value(metadata %struct._object* %52, i64 0, metadata !562, metadata !937), !dbg !1393
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %52, i64 0, i32 0, !dbg !1395
  %53 = load i64, i64* %ob_refcnt186, align 8, !dbg !1395, !tbaa !966
  %dec187 = add i64 %53, -1, !dbg !1395
  store i64 %dec187, i64* %ob_refcnt186, align 8, !dbg !1395, !tbaa !966
  %cmp188 = icmp eq i64 %dec187, 0, !dbg !1395
  br i1 %cmp188, label %if.else.190, label %if.end.196, !dbg !1397

if.else.190:                                      ; preds = %do.body.184
  %ob_type191 = getelementptr inbounds %struct._object, %struct._object* %52, i64 0, i32 1, !dbg !1398
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type191, align 8, !dbg !1398, !tbaa !996
  %tp_dealloc192 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 4, !dbg !1398
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc192, align 8, !dbg !1398, !tbaa !1130
  tail call void %55(%struct._object* %52) #1, !dbg !1398
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.190, %do.body.184, %if.end.177
  %56 = bitcast %struct.PyFunctionObject* %op to i8*, !dbg !1400
  tail call void @PyObject_GC_Del(i8* %56) #1, !dbg !1401
  ret void, !dbg !1402
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_repr(%struct.PyFunctionObject* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !569, metadata !937), !dbg !1403
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 12, !dbg !1404
  %0 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !1404, !tbaa !1027
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), %struct._object* %0, %struct.PyFunctionObject* %op) #1, !dbg !1405
  ret %struct._object* %call, !dbg !1406
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @function_call(%struct._object* nocapture readonly %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %pos = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !572, metadata !937), !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !573, metadata !937), !dbg !1408
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !574, metadata !937), !dbg !1409
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !577, metadata !937), !dbg !1410
  %func_defaults = getelementptr inbounds %struct._object, %struct._object* %func, i64 2, !dbg !1411
  %0 = bitcast %struct._object* %func_defaults to %struct._object**, !dbg !1411
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1411, !tbaa !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !576, metadata !937), !dbg !1412
  %cmp = icmp eq %struct._object* %1, null, !dbg !1413
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !1415

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1416
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1416, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1416
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1416, !tbaa !997
  %and = and i64 %3, 67108864, !dbg !1416
  %cmp1 = icmp eq i64 %and, 0, !dbg !1416
  br i1 %cmp1, label %if.end, label %if.then, !dbg !1418

if.then:                                          ; preds = %land.lhs.true
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %1, i64 1, i32 1, !dbg !1419
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1419
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx, i64 0, metadata !578, metadata !937), !dbg !1421
  %4 = getelementptr inbounds %struct._object, %struct._object* %1, i64 1, i32 0, !dbg !1422
  %5 = load i64, i64* %4, align 8, !dbg !1422, !tbaa !1423
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !582, metadata !937), !dbg !1424
  %phitmp = trunc i64 %5 to i32, !dbg !1425
  br label %if.end, !dbg !1425

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %d.0 = phi %struct._object** [ %arrayidx, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %nd.0 = phi i32 [ %phitmp, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %cmp2 = icmp eq %struct._object* %kw, null, !dbg !1426
  br i1 %cmp2, label %if.end.26, label %land.lhs.true.3, !dbg !1427

land.lhs.true.3:                                  ; preds = %if.end
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %kw, i64 0, i32 1, !dbg !1428
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1428, !tbaa !996
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !1428
  %7 = load i64, i64* %tp_flags5, align 8, !dbg !1428, !tbaa !997
  %and6 = and i64 %7, 536870912, !dbg !1428
  %cmp7 = icmp eq i64 %and6, 0, !dbg !1428
  br i1 %cmp7, label %if.end.26, label %if.then.8, !dbg !1430

if.then.8:                                        ; preds = %land.lhs.true.3
  %8 = bitcast i64* %pos to i8*, !dbg !1431
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1431
  %call = tail call i64 @PyDict_Size(%struct._object* %kw) #1, !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !581, metadata !937), !dbg !1433
  %mul = shl i64 %call, 1, !dbg !1434
  %call9 = tail call %struct._object* @PyTuple_New(i64 %mul) #1, !dbg !1435
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !577, metadata !937), !dbg !1410
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !1436
  br i1 %cmp10, label %cleanup, label %if.end.12, !dbg !1438

if.end.12:                                        ; preds = %if.then.8
  %ob_item13 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 1, i32 1, !dbg !1439
  %arrayidx14 = bitcast %struct._typeobject** %ob_item13 to %struct._object**, !dbg !1439
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx14, i64 0, metadata !580, metadata !937), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !586, metadata !937), !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !583, metadata !937), !dbg !1442
  store i64 0, i64* %pos, align 8, !dbg !1443, !tbaa !1444
  %arrayidx1690.93 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item13, i64 1, !dbg !1445
  %arrayidx16.94 = bitcast %struct._typeobject** %arrayidx1690.93 to %struct._object**, !dbg !1445
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !583, metadata !937), !dbg !1442
  %call17.95 = call i32 @PyDict_Next(%struct._object* %kw, i64* nonnull %pos, %struct._object** %arrayidx14, %struct._object** %arrayidx16.94) #1, !dbg !1446
  %tobool.96 = icmp eq i32 %call17.95, 0, !dbg !1447
  br i1 %tobool.96, label %cleanup.thread, label %while.body.preheader, !dbg !1447

while.body.preheader:                             ; preds = %if.end.12
  br label %while.body, !dbg !1448

while.body:                                       ; preds = %while.body.preheader, %while.body
  %arrayidx1699 = phi %struct._object** [ %arrayidx16, %while.body ], [ %arrayidx16.94, %while.body.preheader ]
  %arrayidx1598 = phi %struct._object** [ %arrayidx15, %while.body ], [ %arrayidx14, %while.body.preheader ]
  %i.097 = phi i64 [ %add23, %while.body ], [ 0, %while.body.preheader ]
  %9 = load %struct._object*, %struct._object** %arrayidx1598, align 8, !dbg !1448, !tbaa !943
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1448
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1448, !tbaa !966
  %inc = add i64 %10, 1, !dbg !1448
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1448, !tbaa !966
  %11 = load %struct._object*, %struct._object** %arrayidx1699, align 8, !dbg !1450, !tbaa !943
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1450
  %12 = load i64, i64* %ob_refcnt21, align 8, !dbg !1450, !tbaa !966
  %inc22 = add i64 %12, 1, !dbg !1450
  store i64 %inc22, i64* %ob_refcnt21, align 8, !dbg !1450, !tbaa !966
  %add23 = add i64 %i.097, 2, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %add23, i64 0, metadata !586, metadata !937), !dbg !1441
  %arrayidx1589 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item13, i64 %add23, !dbg !1452
  %arrayidx15 = bitcast %struct._typeobject** %arrayidx1589 to %struct._object**, !dbg !1452
  %add = or i64 %add23, 1, !dbg !1453
  %arrayidx1690 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item13, i64 %add, !dbg !1445
  %arrayidx16 = bitcast %struct._typeobject** %arrayidx1690 to %struct._object**, !dbg !1445
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !583, metadata !937), !dbg !1442
  %call17 = call i32 @PyDict_Next(%struct._object* %kw, i64* nonnull %pos, %struct._object** %arrayidx15, %struct._object** %arrayidx16) #1, !dbg !1446
  %tobool = icmp eq i32 %call17, 0, !dbg !1447
  br i1 %tobool, label %while.cond.cleanup.thread_crit_edge, label %while.body, !dbg !1447

while.cond.cleanup.thread_crit_edge:              ; preds = %while.body
  %add23.lcssa = phi i64 [ %add23, %while.body ]
  %phitmp100 = sdiv i64 %add23.lcssa, 2, !dbg !1447
  %phitmp101 = trunc i64 %phitmp100 to i32, !dbg !1447
  br label %cleanup.thread, !dbg !1447

cleanup.thread:                                   ; preds = %while.cond.cleanup.thread_crit_edge, %if.end.12
  %i.0.lcssa = phi i32 [ %phitmp101, %while.cond.cleanup.thread_crit_edge ], [ 0, %if.end.12 ]
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1454
  br label %if.end.26

cleanup:                                          ; preds = %if.then.8
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1454
  br label %cleanup.47

if.end.26:                                        ; preds = %cleanup.thread, %if.end, %land.lhs.true.3
  %k.1 = phi %struct._object** [ null, %land.lhs.true.3 ], [ null, %if.end ], [ %arrayidx14, %cleanup.thread ]
  %nk.1 = phi i32 [ 0, %land.lhs.true.3 ], [ 0, %if.end ], [ %i.0.lcssa, %cleanup.thread ]
  %kwtuple.0 = phi %struct._object* [ null, %land.lhs.true.3 ], [ null, %if.end ], [ %call9, %cleanup.thread ]
  %func_code = getelementptr inbounds %struct._object, %struct._object* %func, i64 1, !dbg !1455
  %13 = bitcast %struct._object* %func_code to %struct._object**, !dbg !1455
  %14 = load %struct._object*, %struct._object** %13, align 8, !dbg !1455, !tbaa !969
  %func_globals = getelementptr inbounds %struct._object, %struct._object* %func, i64 1, i32 1, !dbg !1456
  %15 = bitcast %struct._typeobject** %func_globals to %struct._object**, !dbg !1456
  %16 = load %struct._object*, %struct._object** %15, align 8, !dbg !1456, !tbaa !973
  %ob_item27 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 1, !dbg !1457
  %arrayidx28 = bitcast %struct._typeobject** %ob_item27 to %struct._object**, !dbg !1457
  %17 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 0, !dbg !1458
  %18 = load i64, i64* %17, align 8, !dbg !1458, !tbaa !1423
  %conv = trunc i64 %18 to i32, !dbg !1458
  %func_kwdefaults = getelementptr inbounds %struct._object, %struct._object* %func, i64 2, i32 1, !dbg !1459
  %19 = bitcast %struct._typeobject** %func_kwdefaults to %struct._object**, !dbg !1459
  %20 = load %struct._object*, %struct._object** %19, align 8, !dbg !1459, !tbaa !1142
  %func_closure = getelementptr inbounds %struct._object, %struct._object* %func, i64 3, !dbg !1460
  %21 = bitcast %struct._object* %func_closure to %struct._object**, !dbg !1460
  %22 = load %struct._object*, %struct._object** %21, align 8, !dbg !1460, !tbaa !1190
  %call32 = call %struct._object* @PyEval_EvalCodeEx(%struct._object* %14, %struct._object* %16, %struct._object* null, %struct._object** %arrayidx28, i32 %conv, %struct._object** %k.1, i32 %nk.1, %struct._object** %d.0, i32 %nd.0, %struct._object* %20, %struct._object* %22) #1, !dbg !1461
  call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !575, metadata !937), !dbg !1462
  call void @llvm.dbg.value(metadata %struct._object* %kwtuple.0, i64 0, metadata !587, metadata !937), !dbg !1463
  %cmp33 = icmp eq %struct._object* %kwtuple.0, null, !dbg !1465
  br i1 %cmp33, label %cleanup.47, label %do.body.36, !dbg !1466

do.body.36:                                       ; preds = %if.end.26
  call void @llvm.dbg.value(metadata %struct._object* %kwtuple.0, i64 0, metadata !589, metadata !937), !dbg !1467
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %kwtuple.0, i64 0, i32 0, !dbg !1469
  %23 = load i64, i64* %ob_refcnt37, align 8, !dbg !1469, !tbaa !966
  %dec = add i64 %23, -1, !dbg !1469
  store i64 %dec, i64* %ob_refcnt37, align 8, !dbg !1469, !tbaa !966
  %cmp38 = icmp eq i64 %dec, 0, !dbg !1469
  br i1 %cmp38, label %if.else.41, label %cleanup.47, !dbg !1471

if.else.41:                                       ; preds = %do.body.36
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %kwtuple.0, i64 0, i32 1, !dbg !1472
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !1472, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !1472
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1472, !tbaa !1130
  call void %25(%struct._object* %kwtuple.0) #1, !dbg !1472
  br label %cleanup.47

cleanup.47:                                       ; preds = %cleanup, %if.end.26, %do.body.36, %if.else.41
  %retval.1 = phi %struct._object* [ null, %cleanup ], [ %call32, %if.else.41 ], [ %call32, %do.body.36 ], [ %call32, %if.end.26 ]
  ret %struct._object* %retval.1, !dbg !1474
}

; Function Attrs: nounwind uwtable
define internal i32 @func_traverse(%struct.PyFunctionObject* nocapture readonly %f, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %f, i64 0, metadata !596, metadata !937), !dbg !1475
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !597, metadata !937), !dbg !1476
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !598, metadata !937), !dbg !1477
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 1, !dbg !1478
  %0 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !1478, !tbaa !969
  %tobool = icmp eq %struct._object* %0, null, !dbg !1478
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !1480

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1481
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !599, metadata !937), !dbg !1481
  %tobool2 = icmp eq i32 %call, 0, !dbg !1483
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 2, !dbg !1485
  %1 = load %struct._object*, %struct._object** %func_globals, align 8, !dbg !1485, !tbaa !973
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !1485
  br i1 %tobool6, label %do.body.19, label %if.then.7, !dbg !1487

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1488
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !603, metadata !937), !dbg !1488
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1490
  br i1 %tobool11, label %do.body.19, label %return

do.body.19:                                       ; preds = %do.body.5, %if.then.7
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 10, !dbg !1492
  %2 = load %struct._object*, %struct._object** %func_module, align 8, !dbg !1492, !tbaa !1020
  %tobool20 = icmp eq %struct._object* %2, null, !dbg !1492
  br i1 %tobool20, label %do.body.33, label %if.then.21, !dbg !1494

if.then.21:                                       ; preds = %do.body.19
  %call24 = tail call i32 %visit(%struct._object* %2, i8* %arg) #1, !dbg !1495
  tail call void @llvm.dbg.value(metadata i32 %call24, i64 0, metadata !607, metadata !937), !dbg !1495
  %tobool25 = icmp eq i32 %call24, 0, !dbg !1497
  br i1 %tobool25, label %do.body.33, label %return

do.body.33:                                       ; preds = %do.body.19, %if.then.21
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 3, !dbg !1499
  %3 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !1499, !tbaa !1093
  %tobool34 = icmp eq %struct._object* %3, null, !dbg !1499
  br i1 %tobool34, label %do.body.47, label %if.then.35, !dbg !1501

if.then.35:                                       ; preds = %do.body.33
  %call38 = tail call i32 %visit(%struct._object* %3, i8* %arg) #1, !dbg !1502
  tail call void @llvm.dbg.value(metadata i32 %call38, i64 0, metadata !611, metadata !937), !dbg !1502
  %tobool39 = icmp eq i32 %call38, 0, !dbg !1504
  br i1 %tobool39, label %do.body.47, label %return

do.body.47:                                       ; preds = %do.body.33, %if.then.35
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 4, !dbg !1506
  %4 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !1506, !tbaa !1142
  %tobool48 = icmp eq %struct._object* %4, null, !dbg !1506
  br i1 %tobool48, label %do.body.61, label %if.then.49, !dbg !1508

if.then.49:                                       ; preds = %do.body.47
  %call52 = tail call i32 %visit(%struct._object* %4, i8* %arg) #1, !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 %call52, i64 0, metadata !615, metadata !937), !dbg !1509
  %tobool53 = icmp eq i32 %call52, 0, !dbg !1511
  br i1 %tobool53, label %do.body.61, label %return

do.body.61:                                       ; preds = %do.body.47, %if.then.49
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 6, !dbg !1513
  %5 = load %struct._object*, %struct._object** %func_doc, align 8, !dbg !1513, !tbaa !1005
  %tobool62 = icmp eq %struct._object* %5, null, !dbg !1513
  br i1 %tobool62, label %do.body.75, label %if.then.63, !dbg !1515

if.then.63:                                       ; preds = %do.body.61
  %call66 = tail call i32 %visit(%struct._object* %5, i8* %arg) #1, !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %call66, i64 0, metadata !619, metadata !937), !dbg !1516
  %tobool67 = icmp eq i32 %call66, 0, !dbg !1518
  br i1 %tobool67, label %do.body.75, label %return

do.body.75:                                       ; preds = %do.body.61, %if.then.63
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 7, !dbg !1520
  %6 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !1520, !tbaa !980
  %tobool76 = icmp eq %struct._object* %6, null, !dbg !1520
  br i1 %tobool76, label %do.body.89, label %if.then.77, !dbg !1522

if.then.77:                                       ; preds = %do.body.75
  %call80 = tail call i32 %visit(%struct._object* %6, i8* %arg) #1, !dbg !1523
  tail call void @llvm.dbg.value(metadata i32 %call80, i64 0, metadata !623, metadata !937), !dbg !1523
  %tobool81 = icmp eq i32 %call80, 0, !dbg !1525
  br i1 %tobool81, label %do.body.89, label %return

do.body.89:                                       ; preds = %do.body.75, %if.then.77
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 8, !dbg !1527
  %7 = load %struct._object*, %struct._object** %func_dict, align 8, !dbg !1527, !tbaa !1008
  %tobool90 = icmp eq %struct._object* %7, null, !dbg !1527
  br i1 %tobool90, label %do.body.103, label %if.then.91, !dbg !1529

if.then.91:                                       ; preds = %do.body.89
  %call94 = tail call i32 %visit(%struct._object* %7, i8* %arg) #1, !dbg !1530
  tail call void @llvm.dbg.value(metadata i32 %call94, i64 0, metadata !627, metadata !937), !dbg !1530
  %tobool95 = icmp eq i32 %call94, 0, !dbg !1532
  br i1 %tobool95, label %do.body.103, label %return

do.body.103:                                      ; preds = %do.body.89, %if.then.91
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 5, !dbg !1534
  %8 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !1534, !tbaa !1190
  %tobool104 = icmp eq %struct._object* %8, null, !dbg !1534
  br i1 %tobool104, label %do.body.117, label %if.then.105, !dbg !1536

if.then.105:                                      ; preds = %do.body.103
  %call108 = tail call i32 %visit(%struct._object* %8, i8* %arg) #1, !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %call108, i64 0, metadata !631, metadata !937), !dbg !1537
  %tobool109 = icmp eq i32 %call108, 0, !dbg !1539
  br i1 %tobool109, label %do.body.117, label %return

do.body.117:                                      ; preds = %do.body.103, %if.then.105
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 11, !dbg !1541
  %9 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !1541, !tbaa !1237
  %tobool118 = icmp eq %struct._object* %9, null, !dbg !1541
  br i1 %tobool118, label %do.body.131, label %if.then.119, !dbg !1543

if.then.119:                                      ; preds = %do.body.117
  %call122 = tail call i32 %visit(%struct._object* %9, i8* %arg) #1, !dbg !1544
  tail call void @llvm.dbg.value(metadata i32 %call122, i64 0, metadata !635, metadata !937), !dbg !1544
  %tobool123 = icmp eq i32 %call122, 0, !dbg !1546
  br i1 %tobool123, label %do.body.131, label %return

do.body.131:                                      ; preds = %do.body.117, %if.then.119
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %f, i64 0, i32 12, !dbg !1548
  %10 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !1548, !tbaa !1027
  %tobool132 = icmp eq %struct._object* %10, null, !dbg !1548
  br i1 %tobool132, label %do.end.144, label %if.then.133, !dbg !1550

if.then.133:                                      ; preds = %do.body.131
  %call136 = tail call i32 %visit(%struct._object* %10, i8* %arg) #1, !dbg !1551
  tail call void @llvm.dbg.value(metadata i32 %call136, i64 0, metadata !639, metadata !937), !dbg !1551
  %tobool137 = icmp eq i32 %call136, 0, !dbg !1553
  br i1 %tobool137, label %do.end.144, label %return

do.end.144:                                       ; preds = %do.body.131, %if.then.133
  br label %return, !dbg !1555

return:                                           ; preds = %if.then.133, %if.then.119, %if.then.105, %if.then.91, %if.then.77, %if.then.63, %if.then.49, %if.then.35, %if.then.21, %if.then.7, %if.then, %do.end.144
  %retval.21 = phi i32 [ 0, %do.end.144 ], [ %call136, %if.then.133 ], [ %call122, %if.then.119 ], [ %call108, %if.then.105 ], [ %call94, %if.then.91 ], [ %call80, %if.then.77 ], [ %call66, %if.then.63 ], [ %call52, %if.then.49 ], [ %call38, %if.then.35 ], [ %call24, %if.then.21 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.21, !dbg !1556
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_descr_get(%struct._object* %func, %struct._object* %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !724, metadata !937), !dbg !1557
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !725, metadata !937), !dbg !1558
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !726, metadata !937), !dbg !1559
  %cmp = icmp eq %struct._object* %obj, @_Py_NoneStruct, !dbg !1560
  %cmp1 = icmp eq %struct._object* %obj, null, !dbg !1562
  %or.cond = or i1 %cmp, %cmp1, !dbg !1563
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1563

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %func, i64 0, i32 0, !dbg !1564
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1564, !tbaa !966
  %inc = add i64 %0, 1, !dbg !1564
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1564, !tbaa !966
  br label %return, !dbg !1566

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyMethod_New(%struct._object* %func, %struct._object* %obj) #1, !dbg !1567
  br label %return, !dbg !1568

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %func, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1569
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %code = alloca %struct.PyCodeObject*, align 8
  %globals = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %defaults = alloca %struct._object*, align 8
  %closure = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !733, metadata !937), !dbg !1570
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !734, metadata !937), !dbg !1571
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !735, metadata !937), !dbg !1572
  %0 = bitcast %struct.PyCodeObject** %code to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1573
  %1 = bitcast %struct._object** %globals to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1574
  %2 = bitcast %struct._object** %name to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1575
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !738, metadata !937), !dbg !1576
  store %struct._object* @_Py_NoneStruct, %struct._object** %name, align 8, !dbg !1576, !tbaa !943
  %3 = bitcast %struct._object** %defaults to i8*, !dbg !1577
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1577
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !739, metadata !937), !dbg !1578
  store %struct._object* @_Py_NoneStruct, %struct._object** %defaults, align 8, !dbg !1578, !tbaa !943
  %4 = bitcast %struct._object** %closure to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1579
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !740, metadata !937), !dbg !1580
  store %struct._object* @_Py_NoneStruct, %struct._object** %closure, align 8, !dbg !1580, !tbaa !943
  tail call void @llvm.dbg.value(metadata %struct.PyCodeObject** %code, i64 0, metadata !736, metadata !937), !dbg !1581
  tail call void @llvm.dbg.value(metadata %struct._object** %globals, i64 0, metadata !737, metadata !937), !dbg !1582
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !738, metadata !937), !dbg !1576
  tail call void @llvm.dbg.value(metadata %struct._object** %defaults, i64 0, metadata !739, metadata !937), !dbg !1578
  tail call void @llvm.dbg.value(metadata %struct._object** %closure, i64 0, metadata !740, metadata !937), !dbg !1580
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kw, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @func_new.kwlist, i64 0, i64 0), %struct._typeobject* nonnull @PyCode_Type, %struct.PyCodeObject** nonnull %code, %struct._typeobject* nonnull @PyDict_Type, %struct._object** nonnull %globals, %struct._object** nonnull %name, %struct._object** nonnull %defaults, %struct._object** nonnull %closure) #1, !dbg !1583
  %tobool = icmp eq i32 %call, 0, !dbg !1583
  br i1 %tobool, label %cleanup.70, label %if.end, !dbg !1585

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !738, metadata !937), !dbg !1576
  %5 = load %struct._object*, %struct._object** %name, align 8, !dbg !1586, !tbaa !943
  %cmp = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !1588
  br i1 %cmp, label %if.end.3, label %land.lhs.true, !dbg !1589

land.lhs.true:                                    ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1590
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1590, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !1590
  %7 = load i64, i64* %tp_flags, align 8, !dbg !1590, !tbaa !997
  %and = and i64 %7, 268435456, !dbg !1590
  %cmp1 = icmp eq i64 %and, 0, !dbg !1590
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1592

if.then.2:                                        ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1593, !tbaa !943
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0)) #1, !dbg !1595
  br label %cleanup.70, !dbg !1596

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  call void @llvm.dbg.value(metadata %struct._object** %defaults, i64 0, metadata !739, metadata !937), !dbg !1578
  %9 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !1597, !tbaa !943
  %cmp4 = icmp eq %struct._object* %9, @_Py_NoneStruct, !dbg !1599
  br i1 %cmp4, label %if.end.11, label %land.lhs.true.5, !dbg !1600

land.lhs.true.5:                                  ; preds = %if.end.3
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1601
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1601, !tbaa !996
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !1601
  %11 = load i64, i64* %tp_flags7, align 8, !dbg !1601, !tbaa !997
  %and8 = and i64 %11, 67108864, !dbg !1601
  %cmp9 = icmp eq i64 %and8, 0, !dbg !1601
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1603

if.then.10:                                       ; preds = %land.lhs.true.5
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1604, !tbaa !943
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)) #1, !dbg !1606
  br label %cleanup.70, !dbg !1607

if.end.11:                                        ; preds = %land.lhs.true.5, %if.end.3
  call void @llvm.dbg.value(metadata %struct.PyCodeObject** %code, i64 0, metadata !736, metadata !937), !dbg !1581
  %13 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !1608, !tbaa !943
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i64 0, i32 10, !dbg !1610
  %14 = bitcast %struct._object** %co_freevars to %struct.PyVarObject**, !dbg !1610
  %15 = load %struct.PyVarObject*, %struct.PyVarObject** %14, align 8, !dbg !1610, !tbaa !1611
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i64 0, i32 1, !dbg !1610
  %16 = load i64, i64* %ob_size, align 8, !dbg !1610, !tbaa !1423
  call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !742, metadata !937), !dbg !1612
  call void @llvm.dbg.value(metadata %struct._object** %closure, i64 0, metadata !740, metadata !937), !dbg !1580
  %17 = load %struct._object*, %struct._object** %closure, align 8, !dbg !1613, !tbaa !943
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !1614
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1614, !tbaa !996
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 19, !dbg !1614
  %19 = load i64, i64* %tp_flags13, align 8, !dbg !1614, !tbaa !997
  %and14 = and i64 %19, 67108864, !dbg !1614
  %cmp15 = icmp eq i64 %and14, 0, !dbg !1614
  %20 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !1616
  %21 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i64 0, i32 0, !dbg !1617
  br i1 %cmp15, label %if.then.16, label %if.end.25, !dbg !1618

if.then.16:                                       ; preds = %if.end.11
  %tobool17 = icmp ne i64 %16, 0, !dbg !1619
  %cmp19 = icmp eq %struct._object* %17, @_Py_NoneStruct, !dbg !1622
  %or.cond = and i1 %tobool17, %cmp19, !dbg !1623
  br i1 %or.cond, label %if.then.20, label %if.else, !dbg !1623

if.then.20:                                       ; preds = %if.then.16
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1624, !tbaa !943
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0)) #1, !dbg !1626
  br label %cleanup.70, !dbg !1627

if.else:                                          ; preds = %if.then.16
  br i1 %cmp19, label %cond.end, label %if.then.22, !dbg !1628

if.then.22:                                       ; preds = %if.else
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1629, !tbaa !943
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0)) #1, !dbg !1632
  br label %cleanup.70, !dbg !1633

if.end.25:                                        ; preds = %if.end.11
  call void @llvm.dbg.value(metadata %struct._object** %closure, i64 0, metadata !740, metadata !937), !dbg !1580
  %cmp26 = icmp eq %struct._object* %17, @_Py_NoneStruct, !dbg !1634
  br i1 %cmp26, label %cond.end, label %cond.false, !dbg !1613

cond.false:                                       ; preds = %if.end.25
  %24 = getelementptr inbounds %struct._object, %struct._object* %17, i64 1, i32 0, !dbg !1635
  %25 = load i64, i64* %24, align 8, !dbg !1635, !tbaa !1423
  br label %cond.end, !dbg !1613

cond.end:                                         ; preds = %if.else, %if.end.25, %cond.false
  %cond = phi i64 [ %25, %cond.false ], [ 0, %if.end.25 ], [ 0, %if.else ], !dbg !1613
  call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !743, metadata !937), !dbg !1637
  %cmp28 = icmp eq i64 %16, %cond, !dbg !1638
  br i1 %cmp28, label %if.end.31, label %if.then.29, !dbg !1639

if.then.29:                                       ; preds = %cond.end
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1640, !tbaa !943
  call void @llvm.dbg.value(metadata %struct.PyCodeObject** %code, i64 0, metadata !736, metadata !937), !dbg !1581
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i64 0, i32 14, !dbg !1641
  %27 = load %struct._object*, %struct._object** %co_name, align 8, !dbg !1641, !tbaa !975
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i64 0, i64 0), %struct._object* %27, i64 %16, i64 %cond) #1, !dbg !1642
  br label %cleanup.70, !dbg !1643

if.end.31:                                        ; preds = %cond.end
  %28 = icmp sgt i64 %16, 0, !dbg !1644
  br i1 %28, label %for.body.preheader, label %if.end.44, !dbg !1644

for.body.preheader:                               ; preds = %if.end.31
  br label %for.body, !dbg !1580

for.cond:                                         ; preds = %for.body
  %cmp34 = icmp slt i64 %inc, %16, !dbg !1645
  br i1 %cmp34, label %for.body, label %if.end.44.loopexit, !dbg !1646

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.0106 = phi i64 [ %inc, %for.cond ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata %struct._object** %closure, i64 0, metadata !740, metadata !937), !dbg !1580
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %20, i64 0, i32 1, i64 %i.0106, !dbg !1616
  %29 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1616, !tbaa !943
  call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !747, metadata !937), !dbg !1647
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1648
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1648, !tbaa !996
  %cmp36 = icmp eq %struct._typeobject* %30, @PyCell_Type, !dbg !1648
  %inc = add nuw nsw i64 %i.0106, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !744, metadata !937), !dbg !1651
  br i1 %cmp36, label %for.cond, label %cleanup.41, !dbg !1652

cleanup.41:                                       ; preds = %for.body
  %.lcssa = phi %struct._typeobject* [ %30, %for.body ]
  %31 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1653, !tbaa !943
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.lcssa, i64 0, i32 1, !dbg !1655
  %32 = load i8*, i8** %tp_name, align 8, !dbg !1655, !tbaa !1212
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* %32) #1, !dbg !1656
  br label %cleanup.70

if.end.44.loopexit:                               ; preds = %for.cond
  br label %if.end.44, !dbg !1581

if.end.44:                                        ; preds = %if.end.44.loopexit, %if.end.31
  call void @llvm.dbg.value(metadata %struct.PyCodeObject** %code, i64 0, metadata !736, metadata !937), !dbg !1581
  call void @llvm.dbg.value(metadata %struct._object** %globals, i64 0, metadata !737, metadata !937), !dbg !1582
  %33 = load %struct._object*, %struct._object** %globals, align 8, !dbg !1657, !tbaa !943
  call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !445, metadata !937) #1, !dbg !1658
  call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !446, metadata !937) #1, !dbg !1660
  %call.i = call %struct._object* @PyFunction_NewWithQualName(%struct._object* %21, %struct._object* %33, %struct._object* null) #1, !dbg !1661
  %cmp46 = icmp eq %struct._object* %call.i, null, !dbg !1662
  br i1 %cmp46, label %cleanup.70, label %if.end.48, !dbg !1664

if.end.48:                                        ; preds = %if.end.44
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !738, metadata !937), !dbg !1576
  %34 = load %struct._object*, %struct._object** %name, align 8, !dbg !1665, !tbaa !943
  %cmp49 = icmp eq %struct._object* %34, @_Py_NoneStruct, !dbg !1666
  br i1 %cmp49, label %if.end.59, label %if.then.50, !dbg !1667

if.then.50:                                       ; preds = %if.end.48
  %35 = ptrtoint %struct._object* %34 to i64, !dbg !1667
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 0, !dbg !1668
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1668, !tbaa !966
  %inc51 = add i64 %36, 1, !dbg !1668
  store i64 %inc51, i64* %ob_refcnt, align 8, !dbg !1668, !tbaa !966
  %func_name = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 4, !dbg !1669
  %37 = bitcast %struct._object* %func_name to %struct._object**, !dbg !1669
  %38 = load %struct._object*, %struct._object** %37, align 8, !dbg !1669, !tbaa !980
  call void @llvm.dbg.value(metadata %struct._object* %38, i64 0, metadata !751, metadata !937), !dbg !1669
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %38, i64 0, i32 0, !dbg !1671
  %39 = load i64, i64* %ob_refcnt52, align 8, !dbg !1671, !tbaa !966
  %dec = add i64 %39, -1, !dbg !1671
  store i64 %dec, i64* %ob_refcnt52, align 8, !dbg !1671, !tbaa !966
  %cmp53 = icmp eq i64 %dec, 0, !dbg !1671
  br i1 %cmp53, label %if.else.55, label %if.end.57, !dbg !1673

if.else.55:                                       ; preds = %if.then.50
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %38, i64 0, i32 1, !dbg !1674
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1674, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 4, !dbg !1674
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1674, !tbaa !1130
  call void %41(%struct._object* %38) #1, !dbg !1674
  %.phi.trans.insert = bitcast %struct._object** %name to i64*, !dbg !1676
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !1676, !tbaa !943
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.50, %if.else.55
  %42 = phi i64 [ %.pre, %if.else.55 ], [ %35, %if.then.50 ], !dbg !1676
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !738, metadata !937), !dbg !1576
  %43 = getelementptr inbounds %struct._object, %struct._object* %func_name, i64 0, i32 0, !dbg !1677
  store i64 %42, i64* %43, align 8, !dbg !1677, !tbaa !980
  br label %if.end.59, !dbg !1678

if.end.59:                                        ; preds = %if.end.48, %if.end.57
  call void @llvm.dbg.value(metadata %struct._object** %defaults, i64 0, metadata !739, metadata !937), !dbg !1578
  %44 = load %struct._object*, %struct._object** %defaults, align 8, !dbg !1679, !tbaa !943
  %cmp60 = icmp eq %struct._object* %44, @_Py_NoneStruct, !dbg !1681
  br i1 %cmp60, label %if.end.64, label %if.then.61, !dbg !1682

if.then.61:                                       ; preds = %if.end.59
  %45 = ptrtoint %struct._object* %44 to i64, !dbg !1683
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %44, i64 0, i32 0, !dbg !1685
  %46 = load i64, i64* %ob_refcnt62, align 8, !dbg !1685, !tbaa !966
  %inc63 = add i64 %46, 1, !dbg !1685
  store i64 %inc63, i64* %ob_refcnt62, align 8, !dbg !1685, !tbaa !966
  call void @llvm.dbg.value(metadata %struct._object** %defaults, i64 0, metadata !739, metadata !937), !dbg !1578
  %47 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 0, !dbg !1686
  store i64 %45, i64* %47, align 8, !dbg !1686, !tbaa !1093
  br label %if.end.64, !dbg !1687

if.end.64:                                        ; preds = %if.end.59, %if.then.61
  call void @llvm.dbg.value(metadata %struct._object** %closure, i64 0, metadata !740, metadata !937), !dbg !1580
  %48 = load %struct._object*, %struct._object** %closure, align 8, !dbg !1688, !tbaa !943
  %cmp65 = icmp eq %struct._object* %48, @_Py_NoneStruct, !dbg !1690
  br i1 %cmp65, label %cleanup.70, label %if.then.66, !dbg !1691

if.then.66:                                       ; preds = %if.end.64
  %49 = ptrtoint %struct._object* %48 to i64, !dbg !1692
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 0, !dbg !1694
  %50 = load i64, i64* %ob_refcnt67, align 8, !dbg !1694, !tbaa !966
  %inc68 = add i64 %50, 1, !dbg !1694
  store i64 %inc68, i64* %ob_refcnt67, align 8, !dbg !1694, !tbaa !966
  call void @llvm.dbg.value(metadata %struct._object** %closure, i64 0, metadata !740, metadata !937), !dbg !1580
  %51 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, i32 0, !dbg !1695
  store i64 %49, i64* %51, align 8, !dbg !1695, !tbaa !1190
  br label %cleanup.70, !dbg !1696

cleanup.70:                                       ; preds = %cleanup.41, %if.then.66, %if.end.64, %if.end.44, %entry, %if.then.29, %if.then.22, %if.then.20, %if.then.10, %if.then.2
  %retval.3 = phi %struct._object* [ %call30, %if.then.29 ], [ %call39, %cleanup.41 ], [ null, %if.then.20 ], [ null, %if.then.22 ], [ null, %if.then.10 ], [ null, %if.then.2 ], [ null, %entry ], [ null, %if.end.44 ], [ %call.i, %if.end.64 ], [ %call.i, %if.then.66 ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1697
  ret %struct._object* %retval.3, !dbg !1697
}

; Function Attrs: nounwind uwtable
define internal void @cm_dealloc(%struct.classmethod* %cm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.classmethod* %cm, i64 0, metadata !759, metadata !937), !dbg !1698
  %add.ptr = getelementptr %struct.classmethod, %struct.classmethod* %cm, i64 -1, i32 0, i32 1, !dbg !1699
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1701
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1701
  %1 = load i64, i64* %0, align 8, !dbg !1701, !tbaa !1037
  %and = and i64 %1, 1, !dbg !1701
  %or = or i64 %and, -4, !dbg !1701
  store i64 %or, i64* %0, align 8, !dbg !1701, !tbaa !1037
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1704
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1704
  %3 = load i64, i64* %2, align 8, !dbg !1704, !tbaa !1047
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1704
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1704
  %5 = load i64*, i64** %4, align 8, !dbg !1704, !tbaa !1048
  store i64 %3, i64* %5, align 8, !dbg !1704, !tbaa !1047
  %6 = ptrtoint i64* %5 to i64, !dbg !1704
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1704
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !1704, !tbaa !1047
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !1704
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1704
  store i64 %6, i64* %9, align 8, !dbg !1704, !tbaa !1048
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1704, !tbaa !1047
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 1, !dbg !1706
  %10 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !1706, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !762, metadata !937), !dbg !1706
  %cmp = icmp eq %struct._object* %10, null, !dbg !1710
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !1711

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !764, metadata !937), !dbg !1712
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1714
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1714, !tbaa !966
  %dec = add i64 %11, -1, !dbg !1714
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1714, !tbaa !966
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1714
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !1716

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !1717
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1717, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1717
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1717, !tbaa !1130
  tail call void %13(%struct._object* %10) #1, !dbg !1717
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 2, !dbg !1719
  %14 = load %struct._object*, %struct._object** %cm_dict, align 8, !dbg !1719, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !767, metadata !937), !dbg !1719
  %cmp29 = icmp eq %struct._object* %14, null, !dbg !1722
  br i1 %cmp29, label %if.end.43, label %do.body.31, !dbg !1723

do.body.31:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !769, metadata !937), !dbg !1724
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1726
  %15 = load i64, i64* %ob_refcnt33, align 8, !dbg !1726, !tbaa !966
  %dec34 = add i64 %15, -1, !dbg !1726
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1726, !tbaa !966
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !1726
  br i1 %cmp35, label %if.else.37, label %if.end.43, !dbg !1728

if.else.37:                                       ; preds = %do.body.31
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1729
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1729, !tbaa !996
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1729
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1729, !tbaa !1130
  tail call void %17(%struct._object* %14) #1, !dbg !1729
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %do.body.31, %if.end.24
  %ob_type46 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 0, i32 1, !dbg !1731
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !1731, !tbaa !996
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 38, !dbg !1732
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1732, !tbaa !1733
  %20 = bitcast %struct.classmethod* %cm to i8*, !dbg !1734
  tail call void %19(i8* %20) #1, !dbg !1731
  ret void, !dbg !1735
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_traverse(%struct.classmethod* nocapture readonly %cm, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.classmethod* %cm, i64 0, metadata !776, metadata !937), !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !777, metadata !937), !dbg !1737
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !778, metadata !937), !dbg !1738
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 1, !dbg !1739
  %0 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !1739, !tbaa !1708
  %tobool = icmp eq %struct._object* %0, null, !dbg !1739
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !1741

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1742
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !779, metadata !937), !dbg !1742
  %tobool2 = icmp eq i32 %call, 0, !dbg !1744
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 2, !dbg !1746
  %1 = load %struct._object*, %struct._object** %cm_dict, align 8, !dbg !1746, !tbaa !1721
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !1746
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !1748

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1749
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !783, metadata !937), !dbg !1749
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1751
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !1753

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !1754
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_clear(%struct.classmethod* nocapture %cm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.classmethod* %cm, i64 0, metadata !791, metadata !937), !dbg !1755
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 1, !dbg !1756
  %0 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !1756, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !792, metadata !937), !dbg !1756
  %cmp = icmp eq %struct._object* %0, null, !dbg !1758
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !1759

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %cm_callable, align 8, !dbg !1760, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !794, metadata !937), !dbg !1762
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1764
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1764, !tbaa !966
  %dec = add i64 %1, -1, !dbg !1764
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1764, !tbaa !966
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1764
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1766

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1767
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1767, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1767
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1767, !tbaa !1130
  tail call void %3(%struct._object* %0) #1, !dbg !1767
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 2, !dbg !1769
  %4 = load %struct._object*, %struct._object** %cm_dict, align 8, !dbg !1769, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !798, metadata !937), !dbg !1769
  %cmp10 = icmp eq %struct._object* %4, null, !dbg !1771
  br i1 %cmp10, label %if.end.25, label %if.then.11, !dbg !1772

if.then.11:                                       ; preds = %if.end.5
  store %struct._object* null, %struct._object** %cm_dict, align 8, !dbg !1773, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !800, metadata !937), !dbg !1775
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1777
  %5 = load i64, i64* %ob_refcnt15, align 8, !dbg !1777, !tbaa !966
  %dec16 = add i64 %5, -1, !dbg !1777
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1777, !tbaa !966
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !1777
  br i1 %cmp17, label %if.else.19, label %if.end.25, !dbg !1779

if.else.19:                                       ; preds = %if.then.11
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1780
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1780, !tbaa !996
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1780
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1780, !tbaa !1130
  tail call void %7(%struct._object* %4) #1, !dbg !1780
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.19, %if.then.11, %if.end.5
  ret i32 0, !dbg !1782
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cm_descr_get(%struct._object* nocapture readonly %self, %struct._object* nocapture readonly %obj, %struct._object* %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !813, metadata !937), !dbg !1783
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !814, metadata !937), !dbg !1784
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !815, metadata !937), !dbg !1785
  %cm_callable = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1786
  %0 = bitcast %struct._object* %cm_callable to %struct._object**, !dbg !1786
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1788, !tbaa !1708
  %cmp = icmp eq %struct._object* %1, null, !dbg !1789
  br i1 %cmp, label %if.then, label %if.end, !dbg !1790

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1791, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0)) #1, !dbg !1793
  br label %cleanup, !dbg !1794

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %type, null, !dbg !1795
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1797

if.then.2:                                        ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1798
  %3 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !1798
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !1798, !tbaa !996
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !815, metadata !937), !dbg !1785
  br label %if.end.3, !dbg !1799

if.end.3:                                         ; preds = %if.then.2, %if.end
  %type.addr.0 = phi %struct._object* [ %4, %if.then.2 ], [ %type, %if.end ]
  %call = tail call %struct._object* @PyMethod_New(%struct._object* %1, %struct._object* %type.addr.0) #1, !dbg !1800
  br label %cleanup, !dbg !1801

cleanup:                                          ; preds = %if.end.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %if.end.3 ]
  ret %struct._object* %retval.0, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_init(%struct._object* nocapture %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %callable = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !819, metadata !937), !dbg !1803
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !820, metadata !937), !dbg !1804
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !821, metadata !937), !dbg !1805
  %0 = bitcast %struct._object** %callable to i8*, !dbg !1806
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1806
  tail call void @llvm.dbg.value(metadata %struct._object** %callable, i64 0, metadata !823, metadata !937), !dbg !1807
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %callable) #1, !dbg !1808
  %tobool = icmp eq i32 %call, 0, !dbg !1808
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1810

if.end:                                           ; preds = %entry
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct._object* %kwds) #1, !dbg !1811
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1811
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1813

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %callable, i64 0, metadata !823, metadata !937), !dbg !1807
  %1 = load %struct._object*, %struct._object** %callable, align 8, !dbg !1814, !tbaa !943
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1814
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1814, !tbaa !966
  %inc = add i64 %2, 1, !dbg !1814
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1814, !tbaa !966
  call void @llvm.dbg.value(metadata %struct._object** %callable, i64 0, metadata !823, metadata !937), !dbg !1807
  %3 = ptrtoint %struct._object* %1 to i64, !dbg !1815
  %4 = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 0, !dbg !1816
  store i64 %3, i64* %4, align 8, !dbg !1816, !tbaa !1708
  br label %cleanup, !dbg !1817

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi i32 [ 0, %if.end.4 ], [ -1, %entry ], [ -1, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1818
  ret i32 %retval.0, !dbg !1818
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #2

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #2

declare void @PyObject_GC_Del(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyClassMethod_New(%struct._object* %callable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %callable, i64 0, metadata !506, metadata !937), !dbg !1819
  %call = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyClassMethod_Type to %struct._typeobject*), i64 0) #1, !dbg !1820
  %cmp = icmp eq %struct._object* %call, null, !dbg !1821
  br i1 %cmp, label %if.end, label %if.then, !dbg !1823

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %callable, i64 0, i32 0, !dbg !1824
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1824, !tbaa !966
  %inc = add i64 %0, 1, !dbg !1824
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1824, !tbaa !966
  %cm_callable = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1826
  %1 = bitcast %struct._object* %cm_callable to %struct._object**, !dbg !1826
  store %struct._object* %callable, %struct._object** %1, align 8, !dbg !1827, !tbaa !1708
  br label %if.end, !dbg !1828

if.end:                                           ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !1829
}

; Function Attrs: nounwind uwtable
define internal void @sm_dealloc(%struct.staticmethod* %sm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.staticmethod* %sm, i64 0, metadata !828, metadata !937), !dbg !1830
  %add.ptr = getelementptr %struct.staticmethod, %struct.staticmethod* %sm, i64 -1, i32 0, i32 1, !dbg !1831
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1833
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1833
  %1 = load i64, i64* %0, align 8, !dbg !1833, !tbaa !1037
  %and = and i64 %1, 1, !dbg !1833
  %or = or i64 %and, -4, !dbg !1833
  store i64 %or, i64* %0, align 8, !dbg !1833, !tbaa !1037
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1836
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1836
  %3 = load i64, i64* %2, align 8, !dbg !1836, !tbaa !1047
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1836
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1836
  %5 = load i64*, i64** %4, align 8, !dbg !1836, !tbaa !1048
  store i64 %3, i64* %5, align 8, !dbg !1836, !tbaa !1047
  %6 = ptrtoint i64* %5 to i64, !dbg !1836
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1836
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !1836, !tbaa !1047
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !1836
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1836
  store i64 %6, i64* %9, align 8, !dbg !1836, !tbaa !1048
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1836, !tbaa !1047
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 1, !dbg !1838
  %10 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !1838, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !831, metadata !937), !dbg !1838
  %cmp = icmp eq %struct._object* %10, null, !dbg !1840
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !1841

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !833, metadata !937), !dbg !1842
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1844
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1844, !tbaa !966
  %dec = add i64 %11, -1, !dbg !1844
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1844, !tbaa !966
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1844
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !1846

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !1847
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1847, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1847
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1847, !tbaa !1130
  tail call void %13(%struct._object* %10) #1, !dbg !1847
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 2, !dbg !1849
  %14 = load %struct._object*, %struct._object** %sm_dict, align 8, !dbg !1849, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !836, metadata !937), !dbg !1849
  %cmp29 = icmp eq %struct._object* %14, null, !dbg !1851
  br i1 %cmp29, label %if.end.43, label %do.body.31, !dbg !1852

do.body.31:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !838, metadata !937), !dbg !1853
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1855
  %15 = load i64, i64* %ob_refcnt33, align 8, !dbg !1855, !tbaa !966
  %dec34 = add i64 %15, -1, !dbg !1855
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1855, !tbaa !966
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !1855
  br i1 %cmp35, label %if.else.37, label %if.end.43, !dbg !1857

if.else.37:                                       ; preds = %do.body.31
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1858
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1858, !tbaa !996
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1858
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1858, !tbaa !1130
  tail call void %17(%struct._object* %14) #1, !dbg !1858
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %do.body.31, %if.end.24
  %ob_type46 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 0, i32 1, !dbg !1860
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !1860, !tbaa !996
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 38, !dbg !1861
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1861, !tbaa !1733
  %20 = bitcast %struct.staticmethod* %sm to i8*, !dbg !1862
  tail call void %19(i8* %20) #1, !dbg !1860
  ret void, !dbg !1863
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_traverse(%struct.staticmethod* nocapture readonly %sm, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.staticmethod* %sm, i64 0, metadata !845, metadata !937), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !846, metadata !937), !dbg !1865
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !847, metadata !937), !dbg !1866
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 1, !dbg !1867
  %0 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !1867, !tbaa !1708
  %tobool = icmp eq %struct._object* %0, null, !dbg !1867
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !1869

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1870
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !848, metadata !937), !dbg !1870
  %tobool2 = icmp eq i32 %call, 0, !dbg !1872
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 2, !dbg !1874
  %1 = load %struct._object*, %struct._object** %sm_dict, align 8, !dbg !1874, !tbaa !1721
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !1874
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !1876

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !852, metadata !937), !dbg !1877
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1879
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !1881

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !1882
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_clear(%struct.staticmethod* nocapture %sm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.staticmethod* %sm, i64 0, metadata !860, metadata !937), !dbg !1883
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 1, !dbg !1884
  %0 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !1884, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !861, metadata !937), !dbg !1884
  %cmp = icmp eq %struct._object* %0, null, !dbg !1886
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !1887

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %sm_callable, align 8, !dbg !1888, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !863, metadata !937), !dbg !1890
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1892
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1892, !tbaa !966
  %dec = add i64 %1, -1, !dbg !1892
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1892, !tbaa !966
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1892
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1894

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1895
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1895, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1895
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1895, !tbaa !1130
  tail call void %3(%struct._object* %0) #1, !dbg !1895
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 2, !dbg !1897
  %4 = load %struct._object*, %struct._object** %sm_dict, align 8, !dbg !1897, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !867, metadata !937), !dbg !1897
  %cmp10 = icmp eq %struct._object* %4, null, !dbg !1899
  br i1 %cmp10, label %if.end.25, label %if.then.11, !dbg !1900

if.then.11:                                       ; preds = %if.end.5
  store %struct._object* null, %struct._object** %sm_dict, align 8, !dbg !1901, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !869, metadata !937), !dbg !1903
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1905
  %5 = load i64, i64* %ob_refcnt15, align 8, !dbg !1905, !tbaa !966
  %dec16 = add i64 %5, -1, !dbg !1905
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1905, !tbaa !966
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !1905
  br i1 %cmp17, label %if.else.19, label %if.end.25, !dbg !1907

if.else.19:                                       ; preds = %if.then.11
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1908
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1908, !tbaa !996
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1908
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1908, !tbaa !1130
  tail call void %7(%struct._object* %4) #1, !dbg !1908
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.19, %if.then.11, %if.end.5
  ret i32 0, !dbg !1910
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sm_descr_get(%struct._object* nocapture readonly %self, %struct._object* nocapture readnone %obj, %struct._object* nocapture readnone %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !882, metadata !937), !dbg !1911
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !883, metadata !937), !dbg !1912
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !884, metadata !937), !dbg !1913
  %sm_callable = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !1914
  %0 = bitcast %struct._object* %sm_callable to %struct._object**, !dbg !1914
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1916, !tbaa !1708
  %cmp = icmp eq %struct._object* %1, null, !dbg !1917
  br i1 %cmp, label %if.then, label %if.end, !dbg !1918

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1919, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0)) #1, !dbg !1921
  br label %cleanup, !dbg !1922

if.end:                                           ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1923
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !966
  %inc = add i64 %3, 1, !dbg !1923
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !966
  br label %cleanup, !dbg !1924

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %1, %if.end ]
  ret %struct._object* %retval.0, !dbg !1925
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_init(%struct._object* nocapture %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %callable = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !888, metadata !937), !dbg !1926
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !889, metadata !937), !dbg !1927
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !890, metadata !937), !dbg !1928
  %0 = bitcast %struct._object** %callable to i8*, !dbg !1929
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1929
  tail call void @llvm.dbg.value(metadata %struct._object** %callable, i64 0, metadata !892, metadata !937), !dbg !1930
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %callable) #1, !dbg !1931
  %tobool = icmp eq i32 %call, 0, !dbg !1931
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1933

if.end:                                           ; preds = %entry
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct._object* %kwds) #1, !dbg !1934
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1934
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1936

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %callable, i64 0, metadata !892, metadata !937), !dbg !1930
  %1 = load %struct._object*, %struct._object** %callable, align 8, !dbg !1937, !tbaa !943
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1937
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1937, !tbaa !966
  %inc = add i64 %2, 1, !dbg !1937
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1937, !tbaa !966
  call void @llvm.dbg.value(metadata %struct._object** %callable, i64 0, metadata !892, metadata !937), !dbg !1930
  %3 = ptrtoint %struct._object* %1 to i64, !dbg !1938
  %4 = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 0, !dbg !1939
  store i64 %3, i64* %4, align 8, !dbg !1939, !tbaa !1708
  br label %cleanup, !dbg !1940

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi i32 [ 0, %if.end.4 ], [ -1, %entry ], [ -1, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1941
  ret i32 %retval.0, !dbg !1941
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyStaticMethod_New(%struct._object* %callable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %callable, i64 0, metadata !510, metadata !937), !dbg !1942
  %call = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyStaticMethod_Type to %struct._typeobject*), i64 0) #1, !dbg !1943
  %cmp = icmp eq %struct._object* %call, null, !dbg !1944
  br i1 %cmp, label %if.end, label %if.then, !dbg !1946

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %callable, i64 0, i32 0, !dbg !1947
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1947, !tbaa !966
  %inc = add i64 %0, 1, !dbg !1947
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1947, !tbaa !966
  %sm_callable = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1949
  %1 = bitcast %struct._object* %sm_callable to %struct._object**, !dbg !1949
  store %struct._object* %callable, %struct._object** %1, align 8, !dbg !1950, !tbaa !1708
  br label %if.end, !dbg !1951

if.end:                                           ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !1952
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

declare i64 @PyDict_Size(%struct._object*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #2

declare %struct._object* @PyEval_EvalCodeEx(%struct._object*, %struct._object*, %struct._object*, %struct._object**, i32, %struct._object**, i32, %struct._object**, i32, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_code(%struct.PyFunctionObject* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !645, metadata !937), !dbg !1953
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 1, !dbg !1954
  %0 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !1954, !tbaa !969
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1954
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1954, !tbaa !966
  %inc = add i64 %1, 1, !dbg !1954
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1954, !tbaa !966
  ret %struct._object* %0, !dbg !1955
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_code(%struct.PyFunctionObject* nocapture %op, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !650, metadata !937), !dbg !1956
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !651, metadata !937), !dbg !1957
  %cmp = icmp eq %struct._object* %value, null, !dbg !1958
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1960

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 1, !dbg !1961
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1961, !tbaa !996
  %cmp3 = icmp eq %struct._typeobject* %0, @PyCode_Type, !dbg !1961
  br i1 %cmp3, label %if.end, label %if.then, !dbg !1963

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1964, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0)) #1, !dbg !1966
  br label %cleanup, !dbg !1967

if.end:                                           ; preds = %lor.lhs.false
  %co_freevars = getelementptr inbounds %struct._object, %struct._object* %value, i64 4, i32 1, !dbg !1968
  %2 = bitcast %struct._typeobject** %co_freevars to %struct.PyVarObject**, !dbg !1968
  %3 = load %struct.PyVarObject*, %struct.PyVarObject** %2, align 8, !dbg !1968, !tbaa !1611
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i64 0, i32 1, !dbg !1968
  %4 = load i64, i64* %ob_size, align 8, !dbg !1968, !tbaa !1423
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !653, metadata !937), !dbg !1969
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 5, !dbg !1970
  %5 = load %struct._object*, %struct._object** %func_closure, align 8, !dbg !1970, !tbaa !1190
  %cmp4 = icmp eq %struct._object* %5, null, !dbg !1971
  br i1 %cmp4, label %cond.end, label %cond.false, !dbg !1972

cond.false:                                       ; preds = %if.end
  %6 = getelementptr inbounds %struct._object, %struct._object* %5, i64 1, i32 0, !dbg !1973
  %7 = load i64, i64* %6, align 8, !dbg !1973, !tbaa !1423
  br label %cond.end, !dbg !1972

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i64 [ %7, %cond.false ], [ 0, %if.end ], !dbg !1972
  tail call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !654, metadata !937), !dbg !1974
  %cmp7 = icmp eq i64 %cond, %4, !dbg !1975
  br i1 %cmp7, label %if.end.9, label %if.then.8, !dbg !1977

if.then.8:                                        ; preds = %cond.end
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1978, !tbaa !943
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 7, !dbg !1980
  %9 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !1980, !tbaa !980
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), %struct._object* %9, i64 %cond, i64 %4) #1, !dbg !1981
  br label %cleanup, !dbg !1982

if.end.9:                                         ; preds = %cond.end
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 1, !dbg !1983
  %10 = load %struct._object*, %struct._object** %func_code, align 8, !dbg !1983, !tbaa !969
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !652, metadata !937), !dbg !1984
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 0, !dbg !1985
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1985, !tbaa !966
  %inc = add i64 %11, 1, !dbg !1985
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1985, !tbaa !966
  store %struct._object* %value, %struct._object** %func_code, align 8, !dbg !1986, !tbaa !969
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !655, metadata !937), !dbg !1987
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1989
  %12 = load i64, i64* %ob_refcnt12, align 8, !dbg !1989, !tbaa !966
  %dec = add i64 %12, -1, !dbg !1989
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1989, !tbaa !966
  %cmp13 = icmp eq i64 %dec, 0, !dbg !1989
  br i1 %cmp13, label %if.else, label %cleanup, !dbg !1991

if.else:                                          ; preds = %if.end.9
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !1992
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1992, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1992
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1992, !tbaa !1130
  tail call void %14(%struct._object* %10) #1, !dbg !1992
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.9, %if.then.8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then.8 ], [ 0, %if.end.9 ], [ 0, %if.else ]
  ret i32 %retval.0, !dbg !1994
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_defaults(%struct.PyFunctionObject* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !659, metadata !937), !dbg !1995
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 3, !dbg !1996
  %0 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !1998, !tbaa !1093
  %cmp = icmp eq %struct._object* %0, null, !dbg !1999
  br i1 %cmp, label %if.then, label %if.end, !dbg !2000

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2001, !tbaa !966
  %inc = add i64 %1, 1, !dbg !2001
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2001, !tbaa !966
  br label %return, !dbg !2003

if.end:                                           ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2004
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2004, !tbaa !966
  %inc2 = add i64 %2, 1, !dbg !2004
  store i64 %inc2, i64* %ob_refcnt, align 8, !dbg !2004, !tbaa !966
  br label %return, !dbg !2005

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ %0, %if.end ]
  ret %struct._object* %retval.0, !dbg !2006
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_defaults(%struct.PyFunctionObject* nocapture %op, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !662, metadata !937), !dbg !2007
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !663, metadata !937), !dbg !2008
  %cmp = icmp eq %struct._object* %value, @_Py_NoneStruct, !dbg !2009
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !663, metadata !937), !dbg !2008
  %.value = select i1 %cmp, %struct._object* null, %struct._object* %value, !dbg !2011
  %cmp1 = icmp eq %struct._object* %.value, null, !dbg !2012
  br i1 %cmp1, label %if.end.4, label %land.lhs.true, !dbg !2014

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.value, i64 0, i32 1, !dbg !2015
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2015, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2015
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2015, !tbaa !997
  %and = and i64 %1, 67108864, !dbg !2015
  %cmp2 = icmp eq i64 %and, 0, !dbg !2015
  br i1 %cmp2, label %if.then.3, label %if.then.7, !dbg !2017

if.then.3:                                        ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2018, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0)) #1, !dbg !2020
  br label %cleanup, !dbg !2021

if.end.4:                                         ; preds = %entry
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 3, !dbg !2022
  %3 = load %struct._object*, %struct._object** %func_defaults, align 8, !dbg !2022, !tbaa !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !664, metadata !937), !dbg !2023
  tail call void @llvm.dbg.value(metadata %struct._object* %.value, i64 0, metadata !665, metadata !937), !dbg !2024
  br label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %func_defaults.39 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 3, !dbg !2022
  %4 = load %struct._object*, %struct._object** %func_defaults.39, align 8, !dbg !2022, !tbaa !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !664, metadata !937), !dbg !2023
  tail call void @llvm.dbg.value(metadata %struct._object* %.value, i64 0, metadata !665, metadata !937), !dbg !2024
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.value, i64 0, i32 0, !dbg !2026
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2026, !tbaa !966
  %inc = add i64 %5, 1, !dbg !2026
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2026, !tbaa !966
  br label %if.end.8, !dbg !2026

if.end.8:                                         ; preds = %if.end.4, %if.then.7
  %6 = phi %struct._object* [ %4, %if.then.7 ], [ %3, %if.end.4 ]
  %func_defaults40 = phi %struct._object** [ %func_defaults.39, %if.then.7 ], [ %func_defaults, %if.end.4 ]
  store %struct._object* %.value, %struct._object** %func_defaults40, align 8, !dbg !2029, !tbaa !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !667, metadata !937), !dbg !2030
  %cmp12 = icmp eq %struct._object* %6, null, !dbg !2032
  br i1 %cmp12, label %cleanup, label %do.body.14, !dbg !2033

do.body.14:                                       ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !669, metadata !937), !dbg !2034
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2036
  %7 = load i64, i64* %ob_refcnt16, align 8, !dbg !2036, !tbaa !966
  %dec = add i64 %7, -1, !dbg !2036
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !2036, !tbaa !966
  %cmp17 = icmp eq i64 %dec, 0, !dbg !2036
  br i1 %cmp17, label %if.else, label %cleanup, !dbg !2038

if.else:                                          ; preds = %do.body.14
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2039
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2039, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2039
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2039, !tbaa !1130
  tail call void %9(%struct._object* %6) #1, !dbg !2039
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %do.body.14, %if.else, %if.then.3
  %retval.0 = phi i32 [ -1, %if.then.3 ], [ 0, %if.else ], [ 0, %do.body.14 ], [ 0, %if.end.8 ]
  ret i32 %retval.0, !dbg !2041
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_kwdefaults(%struct.PyFunctionObject* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !674, metadata !937), !dbg !2042
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 4, !dbg !2043
  %0 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !2045, !tbaa !1142
  %cmp = icmp eq %struct._object* %0, null, !dbg !2046
  br i1 %cmp, label %if.then, label %if.end, !dbg !2047

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2048, !tbaa !966
  %inc = add i64 %1, 1, !dbg !2048
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2048, !tbaa !966
  br label %return, !dbg !2050

if.end:                                           ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2051
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2051, !tbaa !966
  %inc2 = add i64 %2, 1, !dbg !2051
  store i64 %inc2, i64* %ob_refcnt, align 8, !dbg !2051, !tbaa !966
  br label %return, !dbg !2052

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ %0, %if.end ]
  ret %struct._object* %retval.0, !dbg !2053
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_kwdefaults(%struct.PyFunctionObject* nocapture %op, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !677, metadata !937), !dbg !2054
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !678, metadata !937), !dbg !2055
  %cmp = icmp eq %struct._object* %value, @_Py_NoneStruct, !dbg !2056
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !678, metadata !937), !dbg !2055
  %.value = select i1 %cmp, %struct._object* null, %struct._object* %value, !dbg !2058
  %cmp1 = icmp eq %struct._object* %.value, null, !dbg !2059
  br i1 %cmp1, label %if.end.4, label %land.lhs.true, !dbg !2061

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.value, i64 0, i32 1, !dbg !2062
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2062, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2062
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2062, !tbaa !997
  %and = and i64 %1, 536870912, !dbg !2062
  %cmp2 = icmp eq i64 %and, 0, !dbg !2062
  br i1 %cmp2, label %if.then.3, label %if.then.7, !dbg !2064

if.then.3:                                        ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2065, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0)) #1, !dbg !2067
  br label %cleanup, !dbg !2068

if.end.4:                                         ; preds = %entry
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 4, !dbg !2069
  %3 = load %struct._object*, %struct._object** %func_kwdefaults, align 8, !dbg !2069, !tbaa !1142
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !679, metadata !937), !dbg !2070
  tail call void @llvm.dbg.value(metadata %struct._object* %.value, i64 0, metadata !680, metadata !937), !dbg !2071
  br label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %func_kwdefaults.39 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 4, !dbg !2069
  %4 = load %struct._object*, %struct._object** %func_kwdefaults.39, align 8, !dbg !2069, !tbaa !1142
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !679, metadata !937), !dbg !2070
  tail call void @llvm.dbg.value(metadata %struct._object* %.value, i64 0, metadata !680, metadata !937), !dbg !2071
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.value, i64 0, i32 0, !dbg !2073
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2073, !tbaa !966
  %inc = add i64 %5, 1, !dbg !2073
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2073, !tbaa !966
  br label %if.end.8, !dbg !2073

if.end.8:                                         ; preds = %if.end.4, %if.then.7
  %6 = phi %struct._object* [ %4, %if.then.7 ], [ %3, %if.end.4 ]
  %func_kwdefaults40 = phi %struct._object** [ %func_kwdefaults.39, %if.then.7 ], [ %func_kwdefaults, %if.end.4 ]
  store %struct._object* %.value, %struct._object** %func_kwdefaults40, align 8, !dbg !2076, !tbaa !1142
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !682, metadata !937), !dbg !2077
  %cmp12 = icmp eq %struct._object* %6, null, !dbg !2079
  br i1 %cmp12, label %cleanup, label %do.body.14, !dbg !2080

do.body.14:                                       ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !684, metadata !937), !dbg !2081
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2083
  %7 = load i64, i64* %ob_refcnt16, align 8, !dbg !2083, !tbaa !966
  %dec = add i64 %7, -1, !dbg !2083
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !2083, !tbaa !966
  %cmp17 = icmp eq i64 %dec, 0, !dbg !2083
  br i1 %cmp17, label %if.else, label %cleanup, !dbg !2085

if.else:                                          ; preds = %do.body.14
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2086
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2086, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2086
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2086, !tbaa !1130
  tail call void %9(%struct._object* %6) #1, !dbg !2086
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %do.body.14, %if.else, %if.then.3
  %retval.0 = phi i32 [ -1, %if.then.3 ], [ 0, %if.else ], [ 0, %do.body.14 ], [ 0, %if.end.8 ]
  ret i32 %retval.0, !dbg !2088
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_annotations(%struct.PyFunctionObject* nocapture %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !689, metadata !937), !dbg !2089
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 11, !dbg !2090
  %0 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !2090, !tbaa !1237
  %cmp = icmp eq %struct._object* %0, null, !dbg !2092
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !2093

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyDict_New() #1, !dbg !2094
  store %struct._object* %call, %struct._object** %func_annotations, align 8, !dbg !2096, !tbaa !1237
  %cmp3 = icmp eq %struct._object* %call, null, !dbg !2097
  br i1 %cmp3, label %return, label %if.end.5, !dbg !2099

if.end.5:                                         ; preds = %if.then, %entry
  %1 = phi %struct._object* [ %call, %if.then ], [ %0, %entry ], !dbg !2100
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !2101
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2101, !tbaa !966
  %inc = add i64 %2, 1, !dbg !2101
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2101, !tbaa !966
  br label %return, !dbg !2102

return:                                           ; preds = %if.then, %if.end.5
  %retval.0 = phi %struct._object* [ %1, %if.end.5 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !2103
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_annotations(%struct.PyFunctionObject* nocapture %op, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !692, metadata !937), !dbg !2104
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !693, metadata !937), !dbg !2105
  %cmp = icmp eq %struct._object* %value, @_Py_NoneStruct, !dbg !2106
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !693, metadata !937), !dbg !2105
  %.value = select i1 %cmp, %struct._object* null, %struct._object* %value, !dbg !2108
  %cmp1 = icmp eq %struct._object* %.value, null, !dbg !2109
  br i1 %cmp1, label %if.end.4, label %land.lhs.true, !dbg !2111

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.value, i64 0, i32 1, !dbg !2112
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2112, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2112
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2112, !tbaa !997
  %and = and i64 %1, 536870912, !dbg !2112
  %cmp2 = icmp eq i64 %and, 0, !dbg !2112
  br i1 %cmp2, label %if.then.3, label %if.then.7, !dbg !2114

if.then.3:                                        ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2115, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0)) #1, !dbg !2117
  br label %cleanup, !dbg !2118

if.end.4:                                         ; preds = %entry
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 11, !dbg !2119
  %3 = load %struct._object*, %struct._object** %func_annotations, align 8, !dbg !2119, !tbaa !1237
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !694, metadata !937), !dbg !2120
  tail call void @llvm.dbg.value(metadata %struct._object* %.value, i64 0, metadata !695, metadata !937), !dbg !2121
  br label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %func_annotations.39 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 11, !dbg !2119
  %4 = load %struct._object*, %struct._object** %func_annotations.39, align 8, !dbg !2119, !tbaa !1237
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !694, metadata !937), !dbg !2120
  tail call void @llvm.dbg.value(metadata %struct._object* %.value, i64 0, metadata !695, metadata !937), !dbg !2121
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.value, i64 0, i32 0, !dbg !2123
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2123, !tbaa !966
  %inc = add i64 %5, 1, !dbg !2123
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2123, !tbaa !966
  br label %if.end.8, !dbg !2123

if.end.8:                                         ; preds = %if.end.4, %if.then.7
  %6 = phi %struct._object* [ %4, %if.then.7 ], [ %3, %if.end.4 ]
  %func_annotations40 = phi %struct._object** [ %func_annotations.39, %if.then.7 ], [ %func_annotations, %if.end.4 ]
  store %struct._object* %.value, %struct._object** %func_annotations40, align 8, !dbg !2126, !tbaa !1237
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !697, metadata !937), !dbg !2127
  %cmp12 = icmp eq %struct._object* %6, null, !dbg !2129
  br i1 %cmp12, label %cleanup, label %do.body.14, !dbg !2130

do.body.14:                                       ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !699, metadata !937), !dbg !2131
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2133
  %7 = load i64, i64* %ob_refcnt16, align 8, !dbg !2133, !tbaa !966
  %dec = add i64 %7, -1, !dbg !2133
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !2133, !tbaa !966
  %cmp17 = icmp eq i64 %dec, 0, !dbg !2133
  br i1 %cmp17, label %if.else, label %cleanup, !dbg !2135

if.else:                                          ; preds = %do.body.14
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2136
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2136, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2136
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2136, !tbaa !1130
  tail call void %9(%struct._object* %6) #1, !dbg !2136
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %do.body.14, %if.else, %if.then.3
  %retval.0 = phi i32 [ -1, %if.then.3 ], [ 0, %if.else ], [ 0, %do.body.14 ], [ 0, %if.end.8 ]
  ret i32 %retval.0, !dbg !2138
}

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #2

declare i32 @PyObject_GenericSetDict(%struct._object*, %struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_name(%struct.PyFunctionObject* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !704, metadata !937), !dbg !2139
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 7, !dbg !2140
  %0 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !2140, !tbaa !980
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2140
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2140, !tbaa !966
  %inc = add i64 %1, 1, !dbg !2140
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2140, !tbaa !966
  ret %struct._object* %0, !dbg !2141
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_name(%struct.PyFunctionObject* nocapture %op, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !707, metadata !937), !dbg !2142
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !708, metadata !937), !dbg !2143
  %cmp = icmp eq %struct._object* %value, null, !dbg !2144
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2146

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 1, !dbg !2147
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2147, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2147
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2147, !tbaa !997
  %and = and i64 %1, 268435456, !dbg !2147
  %cmp1 = icmp eq i64 %and, 0, !dbg !2147
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2149

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2150, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #1, !dbg !2152
  br label %cleanup, !dbg !2153

if.end:                                           ; preds = %lor.lhs.false
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 7, !dbg !2154
  %3 = load %struct._object*, %struct._object** %func_name, align 8, !dbg !2154, !tbaa !980
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !709, metadata !937), !dbg !2155
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 0, !dbg !2156
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2156, !tbaa !966
  %inc = add i64 %4, 1, !dbg !2156
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2156, !tbaa !966
  store %struct._object* %value, %struct._object** %func_name, align 8, !dbg !2157, !tbaa !980
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !710, metadata !937), !dbg !2158
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !2160
  %5 = load i64, i64* %ob_refcnt4, align 8, !dbg !2160, !tbaa !966
  %dec = add i64 %5, -1, !dbg !2160
  store i64 %dec, i64* %ob_refcnt4, align 8, !dbg !2160, !tbaa !966
  %cmp5 = icmp eq i64 %dec, 0, !dbg !2160
  br i1 %cmp5, label %if.else, label %cleanup, !dbg !2162

if.else:                                          ; preds = %if.end
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !2163
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2163, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2163
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2163, !tbaa !1130
  tail call void %7(%struct._object* %3) #1, !dbg !2163
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], [ 0, %if.else ]
  ret i32 %retval.0, !dbg !2165
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_qualname(%struct.PyFunctionObject* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !714, metadata !937), !dbg !2166
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 12, !dbg !2167
  %0 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !2167, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2167
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2167, !tbaa !966
  %inc = add i64 %1, 1, !dbg !2167
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2167, !tbaa !966
  ret %struct._object* %0, !dbg !2168
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_qualname(%struct.PyFunctionObject* nocapture %op, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFunctionObject* %op, i64 0, metadata !717, metadata !937), !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !718, metadata !937), !dbg !2170
  %cmp = icmp eq %struct._object* %value, null, !dbg !2171
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2173

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 1, !dbg !2174
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2174, !tbaa !996
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !2174
  %1 = load i64, i64* %tp_flags, align 8, !dbg !2174, !tbaa !997
  %and = and i64 %1, 268435456, !dbg !2174
  %cmp1 = icmp eq i64 %and, 0, !dbg !2174
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2176

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2177, !tbaa !943
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0)) #1, !dbg !2179
  br label %cleanup, !dbg !2180

if.end:                                           ; preds = %lor.lhs.false
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %op, i64 0, i32 12, !dbg !2181
  %3 = load %struct._object*, %struct._object** %func_qualname, align 8, !dbg !2181, !tbaa !1027
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !719, metadata !937), !dbg !2182
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 0, !dbg !2183
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2183, !tbaa !966
  %inc = add i64 %4, 1, !dbg !2183
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2183, !tbaa !966
  store %struct._object* %value, %struct._object** %func_qualname, align 8, !dbg !2184, !tbaa !1027
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !720, metadata !937), !dbg !2185
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !2187
  %5 = load i64, i64* %ob_refcnt4, align 8, !dbg !2187, !tbaa !966
  %dec = add i64 %5, -1, !dbg !2187
  store i64 %dec, i64* %ob_refcnt4, align 8, !dbg !2187, !tbaa !966
  %cmp5 = icmp eq i64 %dec, 0, !dbg !2187
  br i1 %cmp5, label %if.else, label %cleanup, !dbg !2189

if.else:                                          ; preds = %if.end
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !2190
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2190, !tbaa !996
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2190
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2190, !tbaa !1130
  tail call void %7(%struct._object* %3) #1, !dbg !2190
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], [ 0, %if.else ]
  ret i32 %retval.0, !dbg !2192
}

declare %struct._object* @PyDict_New() #2

declare %struct._object* @PyMethod_New(%struct._object*, %struct._object*) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @cm_get___isabstractmethod__(%struct.classmethod* nocapture readonly %cm, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.classmethod* %cm, i64 0, metadata !808, metadata !937), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !809, metadata !937), !dbg !2194
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %cm, i64 0, i32 1, !dbg !2195
  %0 = load %struct._object*, %struct._object** %cm_callable, align 8, !dbg !2195, !tbaa !1708
  %call = tail call i32 @_PyObject_IsAbstract(%struct._object* %0) #1, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !810, metadata !937), !dbg !2197
  switch i32 %call, label %if.then.1 [
    i32 -1, label %cleanup
    i32 0, label %if.end.2
  ], !dbg !2198

if.then.1:                                        ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2199, !tbaa !966
  %inc = add i64 %1, 1, !dbg !2199
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2199, !tbaa !966
  br label %cleanup, !dbg !2199

if.end.2:                                         ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2203, !tbaa !966
  %inc3 = add i64 %2, 1, !dbg !2203
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2203, !tbaa !966
  br label %cleanup, !dbg !2203

cleanup:                                          ; preds = %entry, %if.end.2, %if.then.1
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.1 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end.2 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2204
}

declare i32 @_PyObject_IsAbstract(%struct._object*) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @sm_get___isabstractmethod__(%struct.staticmethod* nocapture readonly %sm, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.staticmethod* %sm, i64 0, metadata !877, metadata !937), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !878, metadata !937), !dbg !2206
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %sm, i64 0, i32 1, !dbg !2207
  %0 = load %struct._object*, %struct._object** %sm_callable, align 8, !dbg !2207, !tbaa !1708
  %call = tail call i32 @_PyObject_IsAbstract(%struct._object* %0) #1, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !879, metadata !937), !dbg !2209
  switch i32 %call, label %if.then.1 [
    i32 -1, label %cleanup
    i32 0, label %if.end.2
  ], !dbg !2210

if.then.1:                                        ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2211, !tbaa !966
  %inc = add i64 %1, 1, !dbg !2211
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2211, !tbaa !966
  br label %cleanup, !dbg !2211

if.end.2:                                         ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2215, !tbaa !966
  %inc3 = add i64 %2, 1, !dbg !2215
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !2215, !tbaa !966
  br label %cleanup, !dbg !2215

cleanup:                                          ; preds = %entry, %if.end.2, %if.then.1
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.1 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end.2 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2216
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!934, !935}
!llvm.ident = !{!936}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !431, globals: !893)
!1 = !DIFile(filename: "Objects/funcobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !44, !368, !394, !100, !408, !415, !422, !430}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFunctionObject", file: !7, line: 41, baseType: !8)
!7 = !DIFile(filename: "Include/funcobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 21, size: 896, align: 64, elements: !9)
!9 = !{!10, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !8, file: !7, line: 22, baseType: !11, size: 128, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !12, line: 109, baseType: !13)
!12 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !12, line: 105, size: 128, align: 64, elements: !14)
!14 = !{!15, !23}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !13, file: !12, line: 107, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !17, line: 177, baseType: !18)
!17 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 102, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 181, baseType: !22)
!21 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!101 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !34, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !25, file: !12, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !297, line: 18, size: 320, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 19, baseType: !58, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !297, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !296, file: !297, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !297, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !25, file: !12, line: 391, baseType: !305, size: 64, align: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !307, line: 11, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!370 = !DIFile(filename: "Include/code.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!396 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "classmethod", file: !1, line: 721, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 717, size: 256, align: 64, elements: !411)
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !410, file: !1, line: 718, baseType: !11, size: 128, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cm_callable", scope: !410, file: !1, line: 719, baseType: !44, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cm_dict", scope: !410, file: !1, line: 720, baseType: !44, size: 64, align: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "staticmethod", file: !1, line: 902, baseType: !417)
!417 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 898, size: 256, align: 64, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !417, file: !1, line: 899, baseType: !11, size: 128, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sm_callable", scope: !417, file: !1, line: 900, baseType: !44, size: 64, align: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sm_dict", scope: !417, file: !1, line: 901, baseType: !44, size: 64, align: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !424, line: 33, baseType: !425)
!424 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!425 = !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 25, size: 256, align: 64, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !425, file: !424, line: 26, baseType: !28, size: 192, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !425, file: !424, line: 27, baseType: !429, size: 64, align: 64, offset: 192)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 64, elements: !88)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!431 = !{!432, !443, !447, !450, !453, !456, !459, !468, !471, !480, !483, !492, !495, !504, !508, !512, !565, !570, !592, !643, !646, !657, !660, !672, !675, !687, !690, !702, !705, !712, !715, !722, !727, !755, !772, !787, !804, !811, !817, !824, !841, !856, !873, !880, !886}
!432 = !DISubprogram(name: "PyFunction_NewWithQualName", scope: !1, file: !1, line: 9, type: !141, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyFunction_NewWithQualName, variables: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !432, file: !1, line: 9, type: !44)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "globals", arg: 2, scope: !432, file: !1, line: 9, type: !44)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "qualname", arg: 3, scope: !432, file: !1, line: 9, type: !44)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !432, file: !1, line: 11, type: !5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !432, file: !1, line: 12, type: !44)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consts", scope: !432, file: !1, line: 12, type: !44)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !432, file: !1, line: 12, type: !44)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !442, file: !1, line: 64, type: !394)
!442 = distinct !DILexicalBlock(scope: !432, file: !1, line: 64, column: 5)
!443 = !DISubprogram(name: "PyFunction_New", scope: !1, file: !1, line: 69, type: !132, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyFunction_New, variables: !444)
!444 = !{!445, !446}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !443, file: !1, line: 69, type: !44)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "globals", arg: 2, scope: !443, file: !1, line: 69, type: !44)
!447 = !DISubprogram(name: "PyFunction_GetCode", scope: !1, file: !1, line: 75, type: !122, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetCode, variables: !448)
!448 = !{!449}
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !447, file: !1, line: 75, type: !44)
!450 = !DISubprogram(name: "PyFunction_GetGlobals", scope: !1, file: !1, line: 85, type: !122, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetGlobals, variables: !451)
!451 = !{!452}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !450, file: !1, line: 85, type: !44)
!453 = !DISubprogram(name: "PyFunction_GetModule", scope: !1, file: !1, line: 95, type: !122, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetModule, variables: !454)
!454 = !{!455}
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !453, file: !1, line: 95, type: !44)
!456 = !DISubprogram(name: "PyFunction_GetDefaults", scope: !1, file: !1, line: 105, type: !122, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetDefaults, variables: !457)
!457 = !{!458}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !456, file: !1, line: 105, type: !44)
!459 = !DISubprogram(name: "PyFunction_SetDefaults", scope: !1, file: !1, line: 115, type: !203, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetDefaults, variables: !460)
!460 = !{!461, !462, !463, !465}
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !459, file: !1, line: 115, type: !44)
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defaults", arg: 2, scope: !459, file: !1, line: 115, type: !44)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !464, file: !1, line: 130, type: !44)
!464 = distinct !DILexicalBlock(scope: !459, file: !1, line: 130, column: 5)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !466, file: !1, line: 130, type: !44)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 130, column: 5)
!467 = distinct !DILexicalBlock(scope: !464, file: !1, line: 130, column: 5)
!468 = !DISubprogram(name: "PyFunction_GetKwDefaults", scope: !1, file: !1, line: 136, type: !122, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetKwDefaults, variables: !469)
!469 = !{!470}
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !468, file: !1, line: 136, type: !44)
!471 = !DISubprogram(name: "PyFunction_SetKwDefaults", scope: !1, file: !1, line: 146, type: !203, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetKwDefaults, variables: !472)
!472 = !{!473, !474, !475, !477}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !471, file: !1, line: 146, type: !44)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defaults", arg: 2, scope: !471, file: !1, line: 146, type: !44)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !476, file: !1, line: 162, type: !44)
!476 = distinct !DILexicalBlock(scope: !471, file: !1, line: 162, column: 5)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !1, line: 162, type: !44)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 162, column: 5)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 162, column: 5)
!480 = !DISubprogram(name: "PyFunction_GetClosure", scope: !1, file: !1, line: 168, type: !122, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetClosure, variables: !481)
!481 = !{!482}
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !480, file: !1, line: 168, type: !44)
!483 = !DISubprogram(name: "PyFunction_SetClosure", scope: !1, file: !1, line: 178, type: !203, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetClosure, variables: !484)
!484 = !{!485, !486, !487, !489}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !483, file: !1, line: 178, type: !44)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !483, file: !1, line: 178, type: !44)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !488, file: !1, line: 195, type: !44)
!488 = distinct !DILexicalBlock(scope: !483, file: !1, line: 195, column: 5)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !490, file: !1, line: 195, type: !44)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 195, column: 5)
!491 = distinct !DILexicalBlock(scope: !488, file: !1, line: 195, column: 5)
!492 = !DISubprogram(name: "PyFunction_GetAnnotations", scope: !1, file: !1, line: 201, type: !122, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFunction_GetAnnotations, variables: !493)
!493 = !{!494}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !492, file: !1, line: 201, type: !44)
!495 = !DISubprogram(name: "PyFunction_SetAnnotations", scope: !1, file: !1, line: 211, type: !203, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyFunction_SetAnnotations, variables: !496)
!496 = !{!497, !498, !499, !501}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !495, file: !1, line: 211, type: !44)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "annotations", arg: 2, scope: !495, file: !1, line: 211, type: !44)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !500, file: !1, line: 227, type: !44)
!500 = distinct !DILexicalBlock(scope: !495, file: !1, line: 227, column: 5)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !502, file: !1, line: 227, type: !44)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 227, column: 5)
!503 = distinct !DILexicalBlock(scope: !500, file: !1, line: 227, column: 5)
!504 = !DISubprogram(name: "PyClassMethod_New", scope: !1, file: !1, line: 870, type: !122, isLocal: false, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyClassMethod_New, variables: !505)
!505 = !{!506, !507}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !504, file: !1, line: 870, type: !44)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cm", scope: !504, file: !1, line: 872, type: !408)
!508 = !DISubprogram(name: "PyStaticMethod_New", scope: !1, file: !1, line: 1046, type: !122, isLocal: false, isDefinition: true, scopeLine: 1047, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyStaticMethod_New, variables: !509)
!509 = !{!510, !511}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !508, file: !1, line: 1046, type: !44)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !508, file: !1, line: 1048, type: !415)
!512 = !DISubprogram(name: "func_dealloc", scope: !1, file: !1, line: 550, type: !513, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyFunctionObject*)* @func_dealloc, variables: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !5}
!515 = !{!516, !517, !519, !521, !523, !525, !528, !530, !532, !535, !537, !540, !542, !545, !547, !550, !552, !555, !557, !560, !562}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !512, file: !1, line: 550, type: !5)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !518, file: !1, line: 552, type: !394)
!518 = distinct !DILexicalBlock(scope: !512, file: !1, line: 552, column: 5)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !520, file: !1, line: 555, type: !44)
!520 = distinct !DILexicalBlock(scope: !512, file: !1, line: 555, column: 5)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !522, file: !1, line: 556, type: !44)
!522 = distinct !DILexicalBlock(scope: !512, file: !1, line: 556, column: 5)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !524, file: !1, line: 557, type: !44)
!524 = distinct !DILexicalBlock(scope: !512, file: !1, line: 557, column: 5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !526, file: !1, line: 557, type: !44)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 557, column: 5)
!527 = distinct !DILexicalBlock(scope: !524, file: !1, line: 557, column: 5)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !529, file: !1, line: 558, type: !44)
!529 = distinct !DILexicalBlock(scope: !512, file: !1, line: 558, column: 5)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !531, file: !1, line: 559, type: !44)
!531 = distinct !DILexicalBlock(scope: !512, file: !1, line: 559, column: 5)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !533, file: !1, line: 559, type: !44)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 559, column: 5)
!534 = distinct !DILexicalBlock(scope: !531, file: !1, line: 559, column: 5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !536, file: !1, line: 560, type: !44)
!536 = distinct !DILexicalBlock(scope: !512, file: !1, line: 560, column: 5)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !538, file: !1, line: 560, type: !44)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 560, column: 5)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 560, column: 5)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !541, file: !1, line: 561, type: !44)
!541 = distinct !DILexicalBlock(scope: !512, file: !1, line: 561, column: 5)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !543, file: !1, line: 561, type: !44)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 561, column: 5)
!544 = distinct !DILexicalBlock(scope: !541, file: !1, line: 561, column: 5)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !546, file: !1, line: 562, type: !44)
!546 = distinct !DILexicalBlock(scope: !512, file: !1, line: 562, column: 5)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !548, file: !1, line: 562, type: !44)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 562, column: 5)
!549 = distinct !DILexicalBlock(scope: !546, file: !1, line: 562, column: 5)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !551, file: !1, line: 563, type: !44)
!551 = distinct !DILexicalBlock(scope: !512, file: !1, line: 563, column: 5)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !553, file: !1, line: 563, type: !44)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 563, column: 5)
!554 = distinct !DILexicalBlock(scope: !551, file: !1, line: 563, column: 5)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !556, file: !1, line: 564, type: !44)
!556 = distinct !DILexicalBlock(scope: !512, file: !1, line: 564, column: 5)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !558, file: !1, line: 564, type: !44)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 564, column: 5)
!559 = distinct !DILexicalBlock(scope: !556, file: !1, line: 564, column: 5)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !561, file: !1, line: 565, type: !44)
!561 = distinct !DILexicalBlock(scope: !512, file: !1, line: 565, column: 5)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !563, file: !1, line: 565, type: !44)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 565, column: 5)
!564 = distinct !DILexicalBlock(scope: !561, file: !1, line: 565, column: 5)
!565 = !DISubprogram(name: "func_repr", scope: !1, file: !1, line: 570, type: !566, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_repr, variables: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!44, !5}
!568 = !{!569}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !565, file: !1, line: 570, type: !5)
!570 = !DISubprogram(name: "function_call", scope: !1, file: !1, line: 594, type: !141, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @function_call, variables: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !580, !581, !582, !583, !586, !587, !589}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !570, file: !1, line: 594, type: !44)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !570, file: !1, line: 594, type: !44)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !570, file: !1, line: 594, type: !44)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !570, file: !1, line: 596, type: !44)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argdefs", scope: !570, file: !1, line: 597, type: !44)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwtuple", scope: !570, file: !1, line: 598, type: !44)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !570, file: !1, line: 599, type: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !570, file: !1, line: 599, type: !579)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nk", scope: !570, file: !1, line: 600, type: !16)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nd", scope: !570, file: !1, line: 600, type: !16)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !584, file: !1, line: 613, type: !16)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 612, column: 41)
!585 = distinct !DILexicalBlock(scope: !570, file: !1, line: 612, column: 9)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !584, file: !1, line: 613, type: !16)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !588, file: !1, line: 640, type: !44)
!588 = distinct !DILexicalBlock(scope: !570, file: !1, line: 640, column: 5)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !1, line: 640, type: !44)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 640, column: 5)
!591 = distinct !DILexicalBlock(scope: !588, file: !1, line: 640, column: 5)
!592 = !DISubprogram(name: "func_traverse", scope: !1, file: !1, line: 577, type: !593, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @func_traverse, variables: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!50, !5, !269, !4}
!595 = !{!596, !597, !598, !599, !603, !607, !611, !615, !619, !623, !627, !631, !635, !639}
!596 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !592, file: !1, line: 577, type: !5)
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !592, file: !1, line: 577, type: !269)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !592, file: !1, line: 577, type: !4)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !600, file: !1, line: 579, type: !50)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 579, column: 5)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 579, column: 5)
!602 = distinct !DILexicalBlock(scope: !592, file: !1, line: 579, column: 5)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !604, file: !1, line: 580, type: !50)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 580, column: 5)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 580, column: 5)
!606 = distinct !DILexicalBlock(scope: !592, file: !1, line: 580, column: 5)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !608, file: !1, line: 581, type: !50)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 581, column: 5)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 581, column: 5)
!610 = distinct !DILexicalBlock(scope: !592, file: !1, line: 581, column: 5)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !612, file: !1, line: 582, type: !50)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 582, column: 5)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 582, column: 5)
!614 = distinct !DILexicalBlock(scope: !592, file: !1, line: 582, column: 5)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !616, file: !1, line: 583, type: !50)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 583, column: 5)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 583, column: 5)
!618 = distinct !DILexicalBlock(scope: !592, file: !1, line: 583, column: 5)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !620, file: !1, line: 584, type: !50)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 584, column: 5)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 584, column: 5)
!622 = distinct !DILexicalBlock(scope: !592, file: !1, line: 584, column: 5)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !624, file: !1, line: 585, type: !50)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 585, column: 5)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 585, column: 5)
!626 = distinct !DILexicalBlock(scope: !592, file: !1, line: 585, column: 5)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !628, file: !1, line: 586, type: !50)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 586, column: 5)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 586, column: 5)
!630 = distinct !DILexicalBlock(scope: !592, file: !1, line: 586, column: 5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !632, file: !1, line: 587, type: !50)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 587, column: 5)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 587, column: 5)
!634 = distinct !DILexicalBlock(scope: !592, file: !1, line: 587, column: 5)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !636, file: !1, line: 588, type: !50)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 588, column: 5)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 588, column: 5)
!638 = distinct !DILexicalBlock(scope: !592, file: !1, line: 588, column: 5)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !640, file: !1, line: 589, type: !50)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 589, column: 5)
!641 = distinct !DILexicalBlock(scope: !642, file: !1, line: 589, column: 5)
!642 = distinct !DILexicalBlock(scope: !592, file: !1, line: 589, column: 5)
!643 = !DISubprogram(name: "func_get_code", scope: !1, file: !1, line: 247, type: !566, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_code, variables: !644)
!644 = !{!645}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !643, file: !1, line: 247, type: !5)
!646 = !DISubprogram(name: "func_set_code", scope: !1, file: !1, line: 254, type: !647, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_code, variables: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!50, !5, !44}
!649 = !{!650, !651, !652, !653, !654, !655}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !646, file: !1, line: 254, type: !5)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !646, file: !1, line: 254, type: !44)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !646, file: !1, line: 256, type: !44)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfree", scope: !646, file: !1, line: 257, type: !16)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nclosure", scope: !646, file: !1, line: 257, type: !16)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !656, file: !1, line: 280, type: !44)
!656 = distinct !DILexicalBlock(scope: !646, file: !1, line: 280, column: 5)
!657 = !DISubprogram(name: "func_get_defaults", scope: !1, file: !1, line: 337, type: !566, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_defaults, variables: !658)
!658 = !{!659}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !657, file: !1, line: 337, type: !5)
!660 = !DISubprogram(name: "func_set_defaults", scope: !1, file: !1, line: 348, type: !647, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_defaults, variables: !661)
!661 = !{!662, !663, !664, !665, !667, !669}
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !660, file: !1, line: 348, type: !5)
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !660, file: !1, line: 348, type: !44)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !660, file: !1, line: 350, type: !44)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !666, file: !1, line: 362, type: !44)
!666 = distinct !DILexicalBlock(scope: !660, file: !1, line: 362, column: 5)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !668, file: !1, line: 364, type: !44)
!668 = distinct !DILexicalBlock(scope: !660, file: !1, line: 364, column: 5)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !670, file: !1, line: 364, type: !44)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 364, column: 5)
!671 = distinct !DILexicalBlock(scope: !668, file: !1, line: 364, column: 5)
!672 = !DISubprogram(name: "func_get_kwdefaults", scope: !1, file: !1, line: 369, type: !566, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_kwdefaults, variables: !673)
!673 = !{!674}
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !672, file: !1, line: 369, type: !5)
!675 = !DISubprogram(name: "func_set_kwdefaults", scope: !1, file: !1, line: 380, type: !647, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_kwdefaults, variables: !676)
!676 = !{!677, !678, !679, !680, !682, !684}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !675, file: !1, line: 380, type: !5)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !675, file: !1, line: 380, type: !44)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !675, file: !1, line: 382, type: !44)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !681, file: !1, line: 394, type: !44)
!681 = distinct !DILexicalBlock(scope: !675, file: !1, line: 394, column: 5)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !683, file: !1, line: 396, type: !44)
!683 = distinct !DILexicalBlock(scope: !675, file: !1, line: 396, column: 5)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !1, line: 396, type: !44)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 396, column: 5)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 396, column: 5)
!687 = !DISubprogram(name: "func_get_annotations", scope: !1, file: !1, line: 401, type: !566, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_annotations, variables: !688)
!688 = !{!689}
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !687, file: !1, line: 401, type: !5)
!690 = !DISubprogram(name: "func_set_annotations", scope: !1, file: !1, line: 413, type: !647, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_annotations, variables: !691)
!691 = !{!692, !693, !694, !695, !697, !699}
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !690, file: !1, line: 413, type: !5)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !690, file: !1, line: 413, type: !44)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !690, file: !1, line: 415, type: !44)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !696, file: !1, line: 428, type: !44)
!696 = distinct !DILexicalBlock(scope: !690, file: !1, line: 428, column: 5)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !698, file: !1, line: 430, type: !44)
!698 = distinct !DILexicalBlock(scope: !690, file: !1, line: 430, column: 5)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !1, line: 430, type: !44)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 430, column: 5)
!701 = distinct !DILexicalBlock(scope: !698, file: !1, line: 430, column: 5)
!702 = !DISubprogram(name: "func_get_name", scope: !1, file: !1, line: 285, type: !566, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_name, variables: !703)
!703 = !{!704}
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !702, file: !1, line: 285, type: !5)
!705 = !DISubprogram(name: "func_set_name", scope: !1, file: !1, line: 292, type: !647, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_name, variables: !706)
!706 = !{!707, !708, !709, !710}
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !705, file: !1, line: 292, type: !5)
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !705, file: !1, line: 292, type: !44)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !705, file: !1, line: 294, type: !44)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !711, file: !1, line: 306, type: !44)
!711 = distinct !DILexicalBlock(scope: !705, file: !1, line: 306, column: 5)
!712 = !DISubprogram(name: "func_get_qualname", scope: !1, file: !1, line: 311, type: !566, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFunctionObject*)* @func_get_qualname, variables: !713)
!713 = !{!714}
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !712, file: !1, line: 311, type: !5)
!715 = !DISubprogram(name: "func_set_qualname", scope: !1, file: !1, line: 318, type: !647, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFunctionObject*, %struct._object*)* @func_set_qualname, variables: !716)
!716 = !{!717, !718, !719, !720}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !715, file: !1, line: 318, type: !5)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !715, file: !1, line: 318, type: !44)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !715, file: !1, line: 320, type: !44)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !721, file: !1, line: 332, type: !44)
!721 = distinct !DILexicalBlock(scope: !715, file: !1, line: 332, column: 5)
!722 = !DISubprogram(name: "func_descr_get", scope: !1, file: !1, line: 647, type: !141, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @func_descr_get, variables: !723)
!723 = !{!724, !725, !726}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !722, file: !1, line: 647, type: !44)
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !722, file: !1, line: 647, type: !44)
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !722, file: !1, line: 647, type: !44)
!727 = !DISubprogram(name: "func_new", scope: !1, file: !1, line: 467, type: !728, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @func_new, variables: !732)
!728 = !DISubroutineType(types: !729)
!729 = !{!44, !730, !44, !44}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !12, line: 422, baseType: !25)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !747, !751}
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !727, file: !1, line: 467, type: !730)
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !727, file: !1, line: 467, type: !44)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !727, file: !1, line: 467, type: !44)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !727, file: !1, line: 469, type: !368)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "globals", scope: !727, file: !1, line: 470, type: !44)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !727, file: !1, line: 471, type: !44)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defaults", scope: !727, file: !1, line: 472, type: !44)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closure", scope: !727, file: !1, line: 473, type: !44)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newfunc", scope: !727, file: !1, line: 474, type: !5)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfree", scope: !727, file: !1, line: 475, type: !16)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nclosure", scope: !727, file: !1, line: 475, type: !16)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !745, file: !1, line: 516, type: !16)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 515, column: 19)
!746 = distinct !DILexicalBlock(scope: !727, file: !1, line: 515, column: 9)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !748, file: !1, line: 518, type: !44)
!748 = distinct !DILexicalBlock(scope: !749, file: !1, line: 517, column: 40)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 517, column: 9)
!750 = distinct !DILexicalBlock(scope: !745, file: !1, line: 517, column: 9)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !752, file: !1, line: 534, type: !44)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 534, column: 9)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 532, column: 26)
!754 = distinct !DILexicalBlock(scope: !727, file: !1, line: 532, column: 9)
!755 = !DISubprogram(name: "cm_dealloc", scope: !1, file: !1, line: 724, type: !756, isLocal: true, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.classmethod*)* @cm_dealloc, variables: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !408}
!758 = !{!759, !760, !762, !764, !767, !769}
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !755, file: !1, line: 724, type: !408)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !761, file: !1, line: 726, type: !394)
!761 = distinct !DILexicalBlock(scope: !755, file: !1, line: 726, column: 5)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !763, file: !1, line: 727, type: !44)
!763 = distinct !DILexicalBlock(scope: !755, file: !1, line: 727, column: 5)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !765, file: !1, line: 727, type: !44)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 727, column: 5)
!766 = distinct !DILexicalBlock(scope: !763, file: !1, line: 727, column: 5)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !768, file: !1, line: 728, type: !44)
!768 = distinct !DILexicalBlock(scope: !755, file: !1, line: 728, column: 5)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !770, file: !1, line: 728, type: !44)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 728, column: 5)
!771 = distinct !DILexicalBlock(scope: !768, file: !1, line: 728, column: 5)
!772 = !DISubprogram(name: "cm_traverse", scope: !1, file: !1, line: 733, type: !773, isLocal: true, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.classmethod*, i32 (%struct._object*, i8*)*, i8*)* @cm_traverse, variables: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!50, !408, !269, !4}
!775 = !{!776, !777, !778, !779, !783}
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !772, file: !1, line: 733, type: !408)
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !772, file: !1, line: 733, type: !269)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !772, file: !1, line: 733, type: !4)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !780, file: !1, line: 735, type: !50)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 735, column: 5)
!781 = distinct !DILexicalBlock(scope: !782, file: !1, line: 735, column: 5)
!782 = distinct !DILexicalBlock(scope: !772, file: !1, line: 735, column: 5)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !784, file: !1, line: 736, type: !50)
!784 = distinct !DILexicalBlock(scope: !785, file: !1, line: 736, column: 5)
!785 = distinct !DILexicalBlock(scope: !786, file: !1, line: 736, column: 5)
!786 = distinct !DILexicalBlock(scope: !772, file: !1, line: 736, column: 5)
!787 = !DISubprogram(name: "cm_clear", scope: !1, file: !1, line: 741, type: !788, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.classmethod*)* @cm_clear, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!50, !408}
!790 = !{!791, !792, !794, !798, !800}
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !787, file: !1, line: 741, type: !408)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !793, file: !1, line: 743, type: !44)
!793 = distinct !DILexicalBlock(scope: !787, file: !1, line: 743, column: 5)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !795, file: !1, line: 743, type: !44)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 743, column: 5)
!796 = distinct !DILexicalBlock(scope: !797, file: !1, line: 743, column: 5)
!797 = distinct !DILexicalBlock(scope: !793, file: !1, line: 743, column: 5)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !799, file: !1, line: 744, type: !44)
!799 = distinct !DILexicalBlock(scope: !787, file: !1, line: 744, column: 5)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !801, file: !1, line: 744, type: !44)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 744, column: 5)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 744, column: 5)
!803 = distinct !DILexicalBlock(scope: !799, file: !1, line: 744, column: 5)
!804 = !DISubprogram(name: "cm_get___isabstractmethod__", scope: !1, file: !1, line: 785, type: !805, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.classmethod*, i8*)* @cm_get___isabstractmethod__, variables: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!44, !408, !4}
!807 = !{!808, !809, !810}
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cm", arg: 1, scope: !804, file: !1, line: 785, type: !408)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !804, file: !1, line: 785, type: !4)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !804, file: !1, line: 787, type: !50)
!811 = !DISubprogram(name: "cm_descr_get", scope: !1, file: !1, line: 750, type: !141, isLocal: true, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @cm_descr_get, variables: !812)
!812 = !{!813, !814, !815, !816}
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !811, file: !1, line: 750, type: !44)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !811, file: !1, line: 750, type: !44)
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !811, file: !1, line: 750, type: !44)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cm", scope: !811, file: !1, line: 752, type: !408)
!817 = !DISubprogram(name: "cm_init", scope: !1, file: !1, line: 765, type: !217, isLocal: true, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @cm_init, variables: !818)
!818 = !{!819, !820, !821, !822, !823}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !817, file: !1, line: 765, type: !44)
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !817, file: !1, line: 765, type: !44)
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !817, file: !1, line: 765, type: !44)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cm", scope: !817, file: !1, line: 767, type: !408)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callable", scope: !817, file: !1, line: 768, type: !44)
!824 = !DISubprogram(name: "sm_dealloc", scope: !1, file: !1, line: 905, type: !825, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.staticmethod*)* @sm_dealloc, variables: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !415}
!827 = !{!828, !829, !831, !833, !836, !838}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !824, file: !1, line: 905, type: !415)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !830, file: !1, line: 907, type: !394)
!830 = distinct !DILexicalBlock(scope: !824, file: !1, line: 907, column: 5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !832, file: !1, line: 908, type: !44)
!832 = distinct !DILexicalBlock(scope: !824, file: !1, line: 908, column: 5)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !834, file: !1, line: 908, type: !44)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 908, column: 5)
!835 = distinct !DILexicalBlock(scope: !832, file: !1, line: 908, column: 5)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !837, file: !1, line: 909, type: !44)
!837 = distinct !DILexicalBlock(scope: !824, file: !1, line: 909, column: 5)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !839, file: !1, line: 909, type: !44)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 909, column: 5)
!840 = distinct !DILexicalBlock(scope: !837, file: !1, line: 909, column: 5)
!841 = !DISubprogram(name: "sm_traverse", scope: !1, file: !1, line: 914, type: !842, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.staticmethod*, i32 (%struct._object*, i8*)*, i8*)* @sm_traverse, variables: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!50, !415, !269, !4}
!844 = !{!845, !846, !847, !848, !852}
!845 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !841, file: !1, line: 914, type: !415)
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !841, file: !1, line: 914, type: !269)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !841, file: !1, line: 914, type: !4)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !849, file: !1, line: 916, type: !50)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 916, column: 5)
!850 = distinct !DILexicalBlock(scope: !851, file: !1, line: 916, column: 5)
!851 = distinct !DILexicalBlock(scope: !841, file: !1, line: 916, column: 5)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !853, file: !1, line: 917, type: !50)
!853 = distinct !DILexicalBlock(scope: !854, file: !1, line: 917, column: 5)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 917, column: 5)
!855 = distinct !DILexicalBlock(scope: !841, file: !1, line: 917, column: 5)
!856 = !DISubprogram(name: "sm_clear", scope: !1, file: !1, line: 922, type: !857, isLocal: true, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.staticmethod*)* @sm_clear, variables: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!50, !415}
!859 = !{!860, !861, !863, !867, !869}
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !856, file: !1, line: 922, type: !415)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !862, file: !1, line: 924, type: !44)
!862 = distinct !DILexicalBlock(scope: !856, file: !1, line: 924, column: 5)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !864, file: !1, line: 924, type: !44)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 924, column: 5)
!865 = distinct !DILexicalBlock(scope: !866, file: !1, line: 924, column: 5)
!866 = distinct !DILexicalBlock(scope: !862, file: !1, line: 924, column: 5)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !868, file: !1, line: 925, type: !44)
!868 = distinct !DILexicalBlock(scope: !856, file: !1, line: 925, column: 5)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !870, file: !1, line: 925, type: !44)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 925, column: 5)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 925, column: 5)
!872 = distinct !DILexicalBlock(scope: !868, file: !1, line: 925, column: 5)
!873 = !DISubprogram(name: "sm_get___isabstractmethod__", scope: !1, file: !1, line: 964, type: !874, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.staticmethod*, i8*)* @sm_get___isabstractmethod__, variables: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{!44, !415, !4}
!876 = !{!877, !878, !879}
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sm", arg: 1, scope: !873, file: !1, line: 964, type: !415)
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !873, file: !1, line: 964, type: !4)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !873, file: !1, line: 966, type: !50)
!880 = !DISubprogram(name: "sm_descr_get", scope: !1, file: !1, line: 930, type: !141, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @sm_descr_get, variables: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !880, file: !1, line: 930, type: !44)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !880, file: !1, line: 930, type: !44)
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !880, file: !1, line: 930, type: !44)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !880, file: !1, line: 932, type: !415)
!886 = !DISubprogram(name: "sm_init", scope: !1, file: !1, line: 944, type: !217, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @sm_init, variables: !887)
!887 = !{!888, !889, !890, !891, !892}
!888 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !886, file: !1, line: 944, type: !44)
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !886, file: !1, line: 944, type: !44)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !886, file: !1, line: 944, type: !44)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sm", scope: !886, file: !1, line: 946, type: !415)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callable", scope: !886, file: !1, line: 947, type: !44)
!893 = !{!894, !895, !896, !897, !898, !902, !907, !912, !916, !920, !924, !928, !932, !933}
!894 = !DIGlobalVariable(name: "__name__", scope: !432, file: !1, line: 13, type: !44, isLocal: true, isDefinition: true, variable: %struct._object** @PyFunction_NewWithQualName.__name__)
!895 = !DIGlobalVariable(name: "PyFunction_Type", scope: !0, file: !1, line: 656, type: !731, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type)
!896 = !DIGlobalVariable(name: "PyClassMethod_Type", scope: !0, file: !1, line: 827, type: !731, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyClassMethod_Type)
!897 = !DIGlobalVariable(name: "PyStaticMethod_Type", scope: !0, file: !1, line: 1003, type: !731, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyStaticMethod_Type)
!898 = !DIGlobalVariable(name: "func_doc", scope: !0, file: !1, line: 448, type: !899, isLocal: true, isDefinition: true, variable: [318 x i8]* @func_doc)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2544, align: 8, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 318)
!902 = !DIGlobalVariable(name: "func_memberlist", scope: !0, file: !1, line: 236, type: !903, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMemberDef]* @func_memberlist)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 1600, align: 64, elements: !905)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !297, line: 24, baseType: !296)
!905 = !{!906}
!906 = !DISubrange(count: 5)
!907 = !DIGlobalVariable(name: "func_getsetlist", scope: !0, file: !1, line: 434, type: !908, isLocal: true, isDefinition: true, variable: [8 x %struct.PyGetSetDef]* @func_getsetlist)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 2560, align: 64, elements: !910)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !307, line: 17, baseType: !306)
!910 = !{!911}
!911 = !DISubrange(count: 8)
!912 = !DIGlobalVariable(name: "kwlist", scope: !727, file: !1, line: 476, type: !913, isLocal: true, isDefinition: true, variable: [6 x i8*]* @func_new.kwlist)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 384, align: 64, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 6)
!916 = !DIGlobalVariable(name: "classmethod_doc", scope: !0, file: !1, line: 806, type: !917, isLocal: true, isDefinition: true, variable: [666 x i8]* @classmethod_doc)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 5328, align: 8, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 666)
!920 = !DIGlobalVariable(name: "cm_memberlist", scope: !0, file: !1, line: 779, type: !921, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @cm_memberlist)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 640, align: 64, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 2)
!924 = !DIGlobalVariable(name: "cm_getsetlist", scope: !0, file: !1, line: 797, type: !925, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @cm_getsetlist)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 960, align: 64, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 3)
!928 = !DIGlobalVariable(name: "staticmethod_doc", scope: !0, file: !1, line: 985, type: !929, isLocal: true, isDefinition: true, variable: [514 x i8]* @staticmethod_doc)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4112, align: 8, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 514)
!932 = !DIGlobalVariable(name: "sm_memberlist", scope: !0, file: !1, line: 958, type: !921, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @sm_memberlist)
!933 = !DIGlobalVariable(name: "sm_getsetlist", scope: !0, file: !1, line: 976, type: !925, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @sm_getsetlist)
!934 = !{i32 2, !"Dwarf Version", i32 4}
!935 = !{i32 2, !"Debug Info Version", i32 3}
!936 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!937 = !DIExpression()
!938 = !DILocation(line: 9, column: 38, scope: !432)
!939 = !DILocation(line: 9, column: 54, scope: !432)
!940 = !DILocation(line: 9, column: 73, scope: !432)
!941 = !DILocation(line: 15, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !432, file: !1, line: 15, column: 9)
!943 = !{!944, !944, i64 0}
!944 = !{!"any pointer", !945, i64 0}
!945 = !{!"omnipotent char", !946, i64 0}
!946 = !{!"Simple C/C++ TBAA"}
!947 = !DILocation(line: 15, column: 18, scope: !942)
!948 = !DILocation(line: 15, column: 9, scope: !432)
!949 = !DILocation(line: 16, column: 20, scope: !950)
!950 = distinct !DILexicalBlock(scope: !942, file: !1, line: 15, column: 27)
!951 = !DILocation(line: 16, column: 18, scope: !950)
!952 = !DILocation(line: 17, column: 22, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !1, line: 17, column: 13)
!954 = !DILocation(line: 17, column: 13, scope: !950)
!955 = !DILocation(line: 21, column: 10, scope: !432)
!956 = !DILocation(line: 22, column: 12, scope: !957)
!957 = distinct !DILexicalBlock(scope: !432, file: !1, line: 22, column: 9)
!958 = !DILocation(line: 22, column: 9, scope: !432)
!959 = !DILocation(line: 25, column: 9, scope: !432)
!960 = !DILocation(line: 25, column: 26, scope: !432)
!961 = !{!962, !944, i64 80}
!962 = !{!"", !963, i64 0, !944, i64 16, !944, i64 24, !944, i64 32, !944, i64 40, !944, i64 48, !944, i64 56, !944, i64 64, !944, i64 72, !944, i64 80, !944, i64 88, !944, i64 96, !944, i64 104}
!963 = !{!"_object", !964, i64 0, !944, i64 8}
!964 = !{!"long", !945, i64 0}
!965 = !DILocation(line: 26, column: 5, scope: !432)
!966 = !{!963, !964, i64 0}
!967 = !DILocation(line: 27, column: 9, scope: !432)
!968 = !DILocation(line: 27, column: 19, scope: !432)
!969 = !{!962, !944, i64 16}
!970 = !DILocation(line: 28, column: 5, scope: !432)
!971 = !DILocation(line: 29, column: 9, scope: !432)
!972 = !DILocation(line: 29, column: 22, scope: !432)
!973 = !{!962, !944, i64 24}
!974 = !DILocation(line: 30, column: 45, scope: !432)
!975 = !{!976, !944, i64 104}
!976 = !{!"", !963, i64 0, !977, i64 16, !977, i64 20, !977, i64 24, !977, i64 28, !977, i64 32, !944, i64 40, !944, i64 48, !944, i64 56, !944, i64 64, !944, i64 72, !944, i64 80, !944, i64 88, !944, i64 96, !944, i64 104, !977, i64 112, !944, i64 120, !944, i64 128, !944, i64 136}
!977 = !{!"int", !945, i64 0}
!978 = !DILocation(line: 30, column: 9, scope: !432)
!979 = !DILocation(line: 30, column: 19, scope: !432)
!980 = !{!962, !944, i64 64}
!981 = !DILocation(line: 31, column: 5, scope: !432)
!982 = !DILocation(line: 32, column: 9, scope: !432)
!983 = !DILocation(line: 36, column: 38, scope: !432)
!984 = !DILocation(line: 33, column: 25, scope: !432)
!985 = !{!976, !944, i64 48}
!986 = !DILocation(line: 12, column: 21, scope: !432)
!987 = !DILocation(line: 37, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !432, file: !1, line: 37, column: 9)
!989 = !DILocation(line: 37, column: 30, scope: !988)
!990 = !DILocation(line: 37, column: 9, scope: !432)
!991 = !DILocation(line: 38, column: 15, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !1, line: 37, column: 36)
!993 = !DILocation(line: 12, column: 15, scope: !432)
!994 = !DILocation(line: 39, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !1, line: 39, column: 13)
!996 = !{!963, !944, i64 8}
!997 = !{!998, !964, i64 168}
!998 = !{!"_typeobject", !999, i64 0, !944, i64 24, !964, i64 32, !964, i64 40, !944, i64 48, !944, i64 56, !944, i64 64, !944, i64 72, !944, i64 80, !944, i64 88, !944, i64 96, !944, i64 104, !944, i64 112, !944, i64 120, !944, i64 128, !944, i64 136, !944, i64 144, !944, i64 152, !944, i64 160, !964, i64 168, !944, i64 176, !944, i64 184, !944, i64 192, !944, i64 200, !964, i64 208, !944, i64 216, !944, i64 224, !944, i64 232, !944, i64 240, !944, i64 248, !944, i64 256, !944, i64 264, !944, i64 272, !944, i64 280, !964, i64 288, !944, i64 296, !944, i64 304, !944, i64 312, !944, i64 320, !944, i64 328, !944, i64 336, !944, i64 344, !944, i64 352, !944, i64 360, !944, i64 368, !944, i64 376, !977, i64 384, !944, i64 392}
!999 = !{!"", !963, i64 0, !964, i64 16}
!1000 = !DILocation(line: 39, column: 13, scope: !992)
!1001 = !DILocation(line: 41, column: 5, scope: !992)
!1002 = !DILocation(line: 44, column: 5, scope: !432)
!1003 = !DILocation(line: 45, column: 9, scope: !432)
!1004 = !DILocation(line: 45, column: 18, scope: !432)
!1005 = !{!962, !944, i64 56}
!1006 = !DILocation(line: 47, column: 9, scope: !432)
!1007 = !DILocation(line: 47, column: 19, scope: !432)
!1008 = !{!962, !944, i64 72}
!1009 = !DILocation(line: 48, column: 9, scope: !432)
!1010 = !DILocation(line: 53, column: 38, scope: !432)
!1011 = !DILocation(line: 48, column: 21, scope: !432)
!1012 = !DILocation(line: 53, column: 14, scope: !432)
!1013 = !DILocation(line: 12, column: 30, scope: !432)
!1014 = !DILocation(line: 54, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !432, file: !1, line: 54, column: 9)
!1016 = !DILocation(line: 54, column: 9, scope: !432)
!1017 = !DILocation(line: 55, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 54, column: 17)
!1019 = !DILocation(line: 56, column: 25, scope: !1018)
!1020 = !{!962, !944, i64 88}
!1021 = !DILocation(line: 57, column: 5, scope: !1018)
!1022 = !DILocation(line: 58, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !432, file: !1, line: 58, column: 9)
!1024 = !DILocation(line: 58, column: 9, scope: !432)
!1025 = !DILocation(line: 59, column: 13, scope: !1023)
!1026 = !DILocation(line: 59, column: 27, scope: !1023)
!1027 = !{!962, !944, i64 104}
!1028 = !DILocation(line: 59, column: 9, scope: !1023)
!1029 = !DILocation(line: 61, column: 33, scope: !1023)
!1030 = !DILocation(line: 61, column: 13, scope: !1023)
!1031 = !DILocation(line: 61, column: 27, scope: !1023)
!1032 = !DILocation(line: 62, column: 5, scope: !432)
!1033 = !DILocation(line: 64, column: 5, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 1)
!1035 = !DILocation(line: 64, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !442, file: !1, line: 64, column: 5)
!1037 = !{!1038, !964, i64 16}
!1038 = !{!"", !944, i64 0, !944, i64 8, !964, i64 16}
!1039 = !DILocation(line: 64, column: 5, scope: !442)
!1040 = !DILocation(line: 64, column: 5, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 2)
!1042 = !DILocation(line: 64, column: 5, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 4)
!1044 = distinct !DILexicalBlock(scope: !442, file: !1, line: 64, column: 5)
!1045 = !DILocation(line: 64, column: 5, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 6)
!1047 = !{!1038, !944, i64 0}
!1048 = !{!1038, !944, i64 8}
!1049 = !DILocation(line: 65, column: 5, scope: !432)
!1050 = !DILocation(line: 66, column: 1, scope: !432)
!1051 = !DILocation(line: 69, column: 26, scope: !443)
!1052 = !DILocation(line: 69, column: 42, scope: !443)
!1053 = !DILocation(line: 71, column: 12, scope: !443)
!1054 = !DILocation(line: 71, column: 5, scope: !443)
!1055 = !DILocation(line: 75, column: 30, scope: !447)
!1056 = !DILocation(line: 77, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !447, file: !1, line: 77, column: 9)
!1058 = !DILocation(line: 77, column: 9, scope: !447)
!1059 = !DILocation(line: 78, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 77, column: 32)
!1061 = !DILocation(line: 79, column: 9, scope: !1060)
!1062 = !DILocation(line: 81, column: 41, scope: !447)
!1063 = !DILocation(line: 81, column: 5, scope: !447)
!1064 = !DILocation(line: 82, column: 1, scope: !447)
!1065 = !DILocation(line: 85, column: 33, scope: !450)
!1066 = !DILocation(line: 87, column: 10, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !450, file: !1, line: 87, column: 9)
!1068 = !DILocation(line: 87, column: 9, scope: !450)
!1069 = !DILocation(line: 88, column: 9, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 87, column: 32)
!1071 = !DILocation(line: 89, column: 9, scope: !1070)
!1072 = !DILocation(line: 91, column: 41, scope: !450)
!1073 = !DILocation(line: 91, column: 5, scope: !450)
!1074 = !DILocation(line: 92, column: 1, scope: !450)
!1075 = !DILocation(line: 95, column: 32, scope: !453)
!1076 = !DILocation(line: 97, column: 10, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !453, file: !1, line: 97, column: 9)
!1078 = !DILocation(line: 97, column: 9, scope: !453)
!1079 = !DILocation(line: 98, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 97, column: 32)
!1081 = !DILocation(line: 99, column: 9, scope: !1080)
!1082 = !DILocation(line: 101, column: 41, scope: !453)
!1083 = !DILocation(line: 101, column: 5, scope: !453)
!1084 = !DILocation(line: 102, column: 1, scope: !453)
!1085 = !DILocation(line: 105, column: 34, scope: !456)
!1086 = !DILocation(line: 107, column: 10, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !456, file: !1, line: 107, column: 9)
!1088 = !DILocation(line: 107, column: 9, scope: !456)
!1089 = !DILocation(line: 108, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 107, column: 32)
!1091 = !DILocation(line: 109, column: 9, scope: !1090)
!1092 = !DILocation(line: 111, column: 41, scope: !456)
!1093 = !{!962, !944, i64 32}
!1094 = !DILocation(line: 111, column: 5, scope: !456)
!1095 = !DILocation(line: 112, column: 1, scope: !456)
!1096 = !DILocation(line: 115, column: 34, scope: !459)
!1097 = !DILocation(line: 115, column: 48, scope: !459)
!1098 = !DILocation(line: 117, column: 10, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !459, file: !1, line: 117, column: 9)
!1100 = !DILocation(line: 117, column: 9, scope: !459)
!1101 = !DILocation(line: 118, column: 9, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 117, column: 32)
!1103 = !DILocation(line: 119, column: 9, scope: !1102)
!1104 = !DILocation(line: 121, column: 18, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !459, file: !1, line: 121, column: 9)
!1106 = !DILocation(line: 121, column: 9, scope: !459)
!1107 = !DILocation(line: 123, column: 14, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 123, column: 14)
!1109 = !DILocation(line: 123, column: 23, scope: !1108)
!1110 = !DILocation(line: 123, column: 26, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 1)
!1112 = !DILocation(line: 123, column: 14, scope: !1105)
!1113 = !DILocation(line: 124, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 123, column: 51)
!1115 = !DILocation(line: 127, column: 25, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 126, column: 10)
!1117 = !DILocation(line: 127, column: 9, scope: !1116)
!1118 = !DILocation(line: 128, column: 9, scope: !1116)
!1119 = !DILocation(line: 130, column: 5, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 1)
!1121 = !DILocation(line: 130, column: 5, scope: !467)
!1122 = !DILocation(line: 130, column: 5, scope: !464)
!1123 = !DILocation(line: 130, column: 5, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 4)
!1125 = !DILocation(line: 130, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !466, file: !1, line: 130, column: 5)
!1127 = !DILocation(line: 130, column: 5, scope: !466)
!1128 = !DILocation(line: 130, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 6)
!1130 = !{!998, !944, i64 48}
!1131 = !DILocation(line: 131, column: 48, scope: !459)
!1132 = !DILocation(line: 132, column: 5, scope: !459)
!1133 = !DILocation(line: 133, column: 1, scope: !459)
!1134 = !DILocation(line: 136, column: 36, scope: !468)
!1135 = !DILocation(line: 138, column: 10, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !468, file: !1, line: 138, column: 9)
!1137 = !DILocation(line: 138, column: 9, scope: !468)
!1138 = !DILocation(line: 139, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 138, column: 32)
!1140 = !DILocation(line: 140, column: 9, scope: !1139)
!1141 = !DILocation(line: 142, column: 41, scope: !468)
!1142 = !{!962, !944, i64 40}
!1143 = !DILocation(line: 142, column: 5, scope: !468)
!1144 = !DILocation(line: 143, column: 1, scope: !468)
!1145 = !DILocation(line: 146, column: 36, scope: !471)
!1146 = !DILocation(line: 146, column: 50, scope: !471)
!1147 = !DILocation(line: 148, column: 10, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !471, file: !1, line: 148, column: 9)
!1149 = !DILocation(line: 148, column: 9, scope: !471)
!1150 = !DILocation(line: 149, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 148, column: 32)
!1152 = !DILocation(line: 150, column: 9, scope: !1151)
!1153 = !DILocation(line: 152, column: 18, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !471, file: !1, line: 152, column: 9)
!1155 = !DILocation(line: 152, column: 9, scope: !471)
!1156 = !DILocation(line: 154, column: 14, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 154, column: 14)
!1158 = !DILocation(line: 154, column: 23, scope: !1157)
!1159 = !DILocation(line: 154, column: 26, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !1, discriminator: 1)
!1161 = !DILocation(line: 154, column: 14, scope: !1154)
!1162 = !DILocation(line: 155, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 154, column: 50)
!1164 = !DILocation(line: 158, column: 25, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 157, column: 10)
!1166 = !DILocation(line: 158, column: 9, scope: !1165)
!1167 = !DILocation(line: 160, column: 9, scope: !1165)
!1168 = !DILocation(line: 162, column: 5, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!1170 = !DILocation(line: 162, column: 5, scope: !479)
!1171 = !DILocation(line: 162, column: 5, scope: !476)
!1172 = !DILocation(line: 162, column: 5, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 4)
!1174 = !DILocation(line: 162, column: 5, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !478, file: !1, line: 162, column: 5)
!1176 = !DILocation(line: 162, column: 5, scope: !478)
!1177 = !DILocation(line: 162, column: 5, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1175, file: !1, discriminator: 6)
!1179 = !DILocation(line: 163, column: 50, scope: !471)
!1180 = !DILocation(line: 164, column: 5, scope: !471)
!1181 = !DILocation(line: 165, column: 1, scope: !471)
!1182 = !DILocation(line: 168, column: 33, scope: !480)
!1183 = !DILocation(line: 170, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !480, file: !1, line: 170, column: 9)
!1185 = !DILocation(line: 170, column: 9, scope: !480)
!1186 = !DILocation(line: 171, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 170, column: 32)
!1188 = !DILocation(line: 172, column: 9, scope: !1187)
!1189 = !DILocation(line: 174, column: 41, scope: !480)
!1190 = !{!962, !944, i64 48}
!1191 = !DILocation(line: 174, column: 5, scope: !480)
!1192 = !DILocation(line: 175, column: 1, scope: !480)
!1193 = !DILocation(line: 178, column: 33, scope: !483)
!1194 = !DILocation(line: 178, column: 47, scope: !483)
!1195 = !DILocation(line: 180, column: 10, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !483, file: !1, line: 180, column: 9)
!1197 = !DILocation(line: 180, column: 9, scope: !483)
!1198 = !DILocation(line: 181, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 180, column: 32)
!1200 = !DILocation(line: 182, column: 9, scope: !1199)
!1201 = !DILocation(line: 184, column: 17, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !483, file: !1, line: 184, column: 9)
!1203 = !DILocation(line: 184, column: 9, scope: !483)
!1204 = !DILocation(line: 186, column: 14, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 186, column: 14)
!1206 = !DILocation(line: 186, column: 14, scope: !1202)
!1207 = !DILocation(line: 187, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 186, column: 38)
!1209 = !DILocation(line: 190, column: 22, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 189, column: 10)
!1211 = !DILocation(line: 192, column: 40, scope: !1210)
!1212 = !{!998, !944, i64 24}
!1213 = !DILocation(line: 190, column: 9, scope: !1210)
!1214 = !DILocation(line: 193, column: 9, scope: !1210)
!1215 = !DILocation(line: 195, column: 5, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 1)
!1217 = !DILocation(line: 195, column: 5, scope: !491)
!1218 = !DILocation(line: 195, column: 5, scope: !488)
!1219 = !DILocation(line: 195, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 4)
!1221 = !DILocation(line: 195, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !490, file: !1, line: 195, column: 5)
!1223 = !DILocation(line: 195, column: 5, scope: !490)
!1224 = !DILocation(line: 195, column: 5, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1222, file: !1, discriminator: 6)
!1226 = !DILocation(line: 196, column: 47, scope: !483)
!1227 = !DILocation(line: 197, column: 5, scope: !483)
!1228 = !DILocation(line: 198, column: 1, scope: !483)
!1229 = !DILocation(line: 201, column: 37, scope: !492)
!1230 = !DILocation(line: 203, column: 10, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !492, file: !1, line: 203, column: 9)
!1232 = !DILocation(line: 203, column: 9, scope: !492)
!1233 = !DILocation(line: 204, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 203, column: 32)
!1235 = !DILocation(line: 205, column: 9, scope: !1234)
!1236 = !DILocation(line: 207, column: 41, scope: !492)
!1237 = !{!962, !944, i64 96}
!1238 = !DILocation(line: 207, column: 5, scope: !492)
!1239 = !DILocation(line: 208, column: 1, scope: !492)
!1240 = !DILocation(line: 211, column: 37, scope: !495)
!1241 = !DILocation(line: 211, column: 51, scope: !495)
!1242 = !DILocation(line: 213, column: 10, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !495, file: !1, line: 213, column: 9)
!1244 = !DILocation(line: 213, column: 9, scope: !495)
!1245 = !DILocation(line: 214, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 213, column: 32)
!1247 = !DILocation(line: 215, column: 9, scope: !1246)
!1248 = !DILocation(line: 217, column: 21, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !495, file: !1, line: 217, column: 9)
!1250 = !DILocation(line: 217, column: 9, scope: !495)
!1251 = !DILocation(line: 219, column: 14, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 219, column: 14)
!1253 = !DILocation(line: 219, column: 26, scope: !1252)
!1254 = !DILocation(line: 219, column: 29, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1252, file: !1, discriminator: 1)
!1256 = !DILocation(line: 219, column: 14, scope: !1249)
!1257 = !DILocation(line: 220, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 219, column: 56)
!1259 = !DILocation(line: 223, column: 25, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 222, column: 10)
!1261 = !DILocation(line: 223, column: 9, scope: !1260)
!1262 = !DILocation(line: 225, column: 9, scope: !1260)
!1263 = !DILocation(line: 227, column: 5, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 1)
!1265 = !DILocation(line: 227, column: 5, scope: !503)
!1266 = !DILocation(line: 227, column: 5, scope: !500)
!1267 = !DILocation(line: 227, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 4)
!1269 = !DILocation(line: 227, column: 5, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !502, file: !1, line: 227, column: 5)
!1271 = !DILocation(line: 227, column: 5, scope: !502)
!1272 = !DILocation(line: 227, column: 5, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1270, file: !1, discriminator: 6)
!1274 = !DILocation(line: 228, column: 51, scope: !495)
!1275 = !DILocation(line: 229, column: 5, scope: !495)
!1276 = !DILocation(line: 230, column: 1, scope: !495)
!1277 = !DILocation(line: 550, column: 32, scope: !512)
!1278 = !DILocation(line: 552, column: 5, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!1280 = !DILocation(line: 552, column: 5, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !1, discriminator: 2)
!1282 = distinct !DILexicalBlock(scope: !518, file: !1, line: 552, column: 5)
!1283 = !DILocation(line: 552, column: 5, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 4)
!1285 = !DILocation(line: 553, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !512, file: !1, line: 553, column: 9)
!1287 = !DILocation(line: 553, column: 30, scope: !1286)
!1288 = !DILocation(line: 553, column: 9, scope: !512)
!1289 = !DILocation(line: 554, column: 32, scope: !1286)
!1290 = !DILocation(line: 554, column: 9, scope: !1286)
!1291 = !DILocation(line: 555, column: 5, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 1)
!1293 = !DILocation(line: 555, column: 5, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !520, file: !1, line: 555, column: 5)
!1295 = !DILocation(line: 555, column: 5, scope: !520)
!1296 = !DILocation(line: 555, column: 5, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1294, file: !1, discriminator: 3)
!1298 = !DILocation(line: 556, column: 5, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 1)
!1300 = !DILocation(line: 556, column: 5, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !522, file: !1, line: 556, column: 5)
!1302 = !DILocation(line: 556, column: 5, scope: !522)
!1303 = !DILocation(line: 556, column: 5, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1301, file: !1, discriminator: 3)
!1305 = !DILocation(line: 557, column: 5, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1307 = !DILocation(line: 557, column: 5, scope: !527)
!1308 = !DILocation(line: 557, column: 5, scope: !524)
!1309 = !DILocation(line: 557, column: 5, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 4)
!1311 = !DILocation(line: 557, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !526, file: !1, line: 557, column: 5)
!1313 = !DILocation(line: 557, column: 5, scope: !526)
!1314 = !DILocation(line: 557, column: 5, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1312, file: !1, discriminator: 6)
!1316 = !DILocation(line: 558, column: 5, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!1318 = !DILocation(line: 558, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !529, file: !1, line: 558, column: 5)
!1320 = !DILocation(line: 558, column: 5, scope: !529)
!1321 = !DILocation(line: 558, column: 5, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1319, file: !1, discriminator: 3)
!1323 = !DILocation(line: 559, column: 5, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!1325 = !DILocation(line: 559, column: 5, scope: !534)
!1326 = !DILocation(line: 559, column: 5, scope: !531)
!1327 = !DILocation(line: 559, column: 5, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !533, file: !1, discriminator: 4)
!1329 = !DILocation(line: 559, column: 5, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !533, file: !1, line: 559, column: 5)
!1331 = !DILocation(line: 559, column: 5, scope: !533)
!1332 = !DILocation(line: 559, column: 5, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 6)
!1334 = !DILocation(line: 560, column: 5, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 1)
!1336 = !DILocation(line: 560, column: 5, scope: !539)
!1337 = !DILocation(line: 560, column: 5, scope: !536)
!1338 = !DILocation(line: 560, column: 5, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !538, file: !1, discriminator: 4)
!1340 = !DILocation(line: 560, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !538, file: !1, line: 560, column: 5)
!1342 = !DILocation(line: 560, column: 5, scope: !538)
!1343 = !DILocation(line: 560, column: 5, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1341, file: !1, discriminator: 6)
!1345 = !DILocation(line: 561, column: 5, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !541, file: !1, discriminator: 1)
!1347 = !DILocation(line: 561, column: 5, scope: !544)
!1348 = !DILocation(line: 561, column: 5, scope: !541)
!1349 = !DILocation(line: 561, column: 5, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 4)
!1351 = !DILocation(line: 561, column: 5, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !543, file: !1, line: 561, column: 5)
!1353 = !DILocation(line: 561, column: 5, scope: !543)
!1354 = !DILocation(line: 561, column: 5, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1352, file: !1, discriminator: 6)
!1356 = !DILocation(line: 562, column: 5, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !546, file: !1, discriminator: 1)
!1358 = !DILocation(line: 562, column: 5, scope: !549)
!1359 = !DILocation(line: 562, column: 5, scope: !546)
!1360 = !DILocation(line: 562, column: 5, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 4)
!1362 = !DILocation(line: 562, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !548, file: !1, line: 562, column: 5)
!1364 = !DILocation(line: 562, column: 5, scope: !548)
!1365 = !DILocation(line: 562, column: 5, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1363, file: !1, discriminator: 6)
!1367 = !DILocation(line: 563, column: 5, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 1)
!1369 = !DILocation(line: 563, column: 5, scope: !554)
!1370 = !DILocation(line: 563, column: 5, scope: !551)
!1371 = !DILocation(line: 563, column: 5, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 4)
!1373 = !DILocation(line: 563, column: 5, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !553, file: !1, line: 563, column: 5)
!1375 = !DILocation(line: 563, column: 5, scope: !553)
!1376 = !DILocation(line: 563, column: 5, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1374, file: !1, discriminator: 6)
!1378 = !DILocation(line: 564, column: 5, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 1)
!1380 = !DILocation(line: 564, column: 5, scope: !559)
!1381 = !DILocation(line: 564, column: 5, scope: !556)
!1382 = !DILocation(line: 564, column: 5, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !558, file: !1, discriminator: 4)
!1384 = !DILocation(line: 564, column: 5, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !558, file: !1, line: 564, column: 5)
!1386 = !DILocation(line: 564, column: 5, scope: !558)
!1387 = !DILocation(line: 564, column: 5, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1385, file: !1, discriminator: 6)
!1389 = !DILocation(line: 565, column: 5, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!1391 = !DILocation(line: 565, column: 5, scope: !564)
!1392 = !DILocation(line: 565, column: 5, scope: !561)
!1393 = !DILocation(line: 565, column: 5, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !563, file: !1, discriminator: 4)
!1395 = !DILocation(line: 565, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !563, file: !1, line: 565, column: 5)
!1397 = !DILocation(line: 565, column: 5, scope: !563)
!1398 = !DILocation(line: 565, column: 5, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1396, file: !1, discriminator: 6)
!1400 = !DILocation(line: 566, column: 21, scope: !512)
!1401 = !DILocation(line: 566, column: 5, scope: !512)
!1402 = !DILocation(line: 567, column: 1, scope: !512)
!1403 = !DILocation(line: 570, column: 29, scope: !565)
!1404 = !DILocation(line: 573, column: 36, scope: !565)
!1405 = !DILocation(line: 572, column: 12, scope: !565)
!1406 = !DILocation(line: 572, column: 5, scope: !565)
!1407 = !DILocation(line: 594, column: 25, scope: !570)
!1408 = !DILocation(line: 594, column: 41, scope: !570)
!1409 = !DILocation(line: 594, column: 56, scope: !570)
!1410 = !DILocation(line: 598, column: 15, scope: !570)
!1411 = !DILocation(line: 602, column: 15, scope: !570)
!1412 = !DILocation(line: 597, column: 15, scope: !570)
!1413 = !DILocation(line: 603, column: 17, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !570, file: !1, line: 603, column: 9)
!1415 = !DILocation(line: 603, column: 25, scope: !1414)
!1416 = !DILocation(line: 603, column: 28, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1414, file: !1, discriminator: 1)
!1418 = !DILocation(line: 603, column: 9, scope: !570)
!1419 = !DILocation(line: 604, column: 14, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 603, column: 52)
!1421 = !DILocation(line: 599, column: 16, scope: !570)
!1422 = !DILocation(line: 605, column: 14, scope: !1420)
!1423 = !{!999, !964, i64 16}
!1424 = !DILocation(line: 600, column: 20, scope: !570)
!1425 = !DILocation(line: 606, column: 5, scope: !1420)
!1426 = !DILocation(line: 612, column: 12, scope: !585)
!1427 = !DILocation(line: 612, column: 20, scope: !585)
!1428 = !DILocation(line: 612, column: 23, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 1)
!1430 = !DILocation(line: 612, column: 9, scope: !570)
!1431 = !DILocation(line: 613, column: 9, scope: !584)
!1432 = !DILocation(line: 614, column: 14, scope: !584)
!1433 = !DILocation(line: 600, column: 16, scope: !570)
!1434 = !DILocation(line: 615, column: 32, scope: !584)
!1435 = !DILocation(line: 615, column: 19, scope: !584)
!1436 = !DILocation(line: 616, column: 21, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !584, file: !1, line: 616, column: 13)
!1438 = !DILocation(line: 616, column: 13, scope: !584)
!1439 = !DILocation(line: 618, column: 14, scope: !584)
!1440 = !DILocation(line: 599, column: 21, scope: !570)
!1441 = !DILocation(line: 613, column: 25, scope: !584)
!1442 = !DILocation(line: 613, column: 20, scope: !584)
!1443 = !DILocation(line: 619, column: 13, scope: !584)
!1444 = !{!964, !964, i64 0}
!1445 = !DILocation(line: 620, column: 46, scope: !584)
!1446 = !DILocation(line: 620, column: 16, scope: !584)
!1447 = !DILocation(line: 620, column: 9, scope: !584)
!1448 = !DILocation(line: 621, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !584, file: !1, line: 620, column: 55)
!1450 = !DILocation(line: 622, column: 13, scope: !1449)
!1451 = !DILocation(line: 623, column: 15, scope: !1449)
!1452 = !DILocation(line: 620, column: 39, scope: !584)
!1453 = !DILocation(line: 620, column: 49, scope: !584)
!1454 = !DILocation(line: 626, column: 5, scope: !1429)
!1455 = !DILocation(line: 633, column: 9, scope: !570)
!1456 = !DILocation(line: 634, column: 9, scope: !570)
!1457 = !DILocation(line: 635, column: 10, scope: !570)
!1458 = !DILocation(line: 635, column: 36, scope: !570)
!1459 = !DILocation(line: 637, column: 9, scope: !570)
!1460 = !DILocation(line: 638, column: 9, scope: !570)
!1461 = !DILocation(line: 632, column: 14, scope: !570)
!1462 = !DILocation(line: 596, column: 15, scope: !570)
!1463 = !DILocation(line: 640, column: 5, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!1465 = !DILocation(line: 640, column: 5, scope: !591)
!1466 = !DILocation(line: 640, column: 5, scope: !588)
!1467 = !DILocation(line: 640, column: 5, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !590, file: !1, discriminator: 4)
!1469 = !DILocation(line: 640, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !590, file: !1, line: 640, column: 5)
!1471 = !DILocation(line: 640, column: 5, scope: !590)
!1472 = !DILocation(line: 640, column: 5, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1470, file: !1, discriminator: 6)
!1474 = !DILocation(line: 643, column: 1, scope: !570)
!1475 = !DILocation(line: 577, column: 33, scope: !592)
!1476 = !DILocation(line: 577, column: 46, scope: !592)
!1477 = !DILocation(line: 577, column: 59, scope: !592)
!1478 = !DILocation(line: 579, column: 5, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !601, file: !1, discriminator: 1)
!1480 = !DILocation(line: 579, column: 5, scope: !602)
!1481 = !DILocation(line: 579, column: 5, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !600, file: !1, discriminator: 2)
!1483 = !DILocation(line: 579, column: 5, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !600, file: !1, line: 579, column: 5)
!1485 = !DILocation(line: 580, column: 5, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 1)
!1487 = !DILocation(line: 580, column: 5, scope: !606)
!1488 = !DILocation(line: 580, column: 5, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !604, file: !1, discriminator: 2)
!1490 = !DILocation(line: 580, column: 5, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !604, file: !1, line: 580, column: 5)
!1492 = !DILocation(line: 581, column: 5, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 1)
!1494 = !DILocation(line: 581, column: 5, scope: !610)
!1495 = !DILocation(line: 581, column: 5, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 2)
!1497 = !DILocation(line: 581, column: 5, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !608, file: !1, line: 581, column: 5)
!1499 = !DILocation(line: 582, column: 5, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!1501 = !DILocation(line: 582, column: 5, scope: !614)
!1502 = !DILocation(line: 582, column: 5, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 2)
!1504 = !DILocation(line: 582, column: 5, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !612, file: !1, line: 582, column: 5)
!1506 = !DILocation(line: 583, column: 5, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !617, file: !1, discriminator: 1)
!1508 = !DILocation(line: 583, column: 5, scope: !618)
!1509 = !DILocation(line: 583, column: 5, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 2)
!1511 = !DILocation(line: 583, column: 5, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !616, file: !1, line: 583, column: 5)
!1513 = !DILocation(line: 584, column: 5, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!1515 = !DILocation(line: 584, column: 5, scope: !622)
!1516 = !DILocation(line: 584, column: 5, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 2)
!1518 = !DILocation(line: 584, column: 5, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !620, file: !1, line: 584, column: 5)
!1520 = !DILocation(line: 585, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !625, file: !1, discriminator: 1)
!1522 = !DILocation(line: 585, column: 5, scope: !626)
!1523 = !DILocation(line: 585, column: 5, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 2)
!1525 = !DILocation(line: 585, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !624, file: !1, line: 585, column: 5)
!1527 = !DILocation(line: 586, column: 5, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !629, file: !1, discriminator: 1)
!1529 = !DILocation(line: 586, column: 5, scope: !630)
!1530 = !DILocation(line: 586, column: 5, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 2)
!1532 = !DILocation(line: 586, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !628, file: !1, line: 586, column: 5)
!1534 = !DILocation(line: 587, column: 5, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !633, file: !1, discriminator: 1)
!1536 = !DILocation(line: 587, column: 5, scope: !634)
!1537 = !DILocation(line: 587, column: 5, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !632, file: !1, discriminator: 2)
!1539 = !DILocation(line: 587, column: 5, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !632, file: !1, line: 587, column: 5)
!1541 = !DILocation(line: 588, column: 5, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 1)
!1543 = !DILocation(line: 588, column: 5, scope: !638)
!1544 = !DILocation(line: 588, column: 5, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !636, file: !1, discriminator: 2)
!1546 = !DILocation(line: 588, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !636, file: !1, line: 588, column: 5)
!1548 = !DILocation(line: 589, column: 5, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !641, file: !1, discriminator: 1)
!1550 = !DILocation(line: 589, column: 5, scope: !642)
!1551 = !DILocation(line: 589, column: 5, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 2)
!1553 = !DILocation(line: 589, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !640, file: !1, line: 589, column: 5)
!1555 = !DILocation(line: 590, column: 5, scope: !592)
!1556 = !DILocation(line: 591, column: 1, scope: !592)
!1557 = !DILocation(line: 647, column: 26, scope: !722)
!1558 = !DILocation(line: 647, column: 42, scope: !722)
!1559 = !DILocation(line: 647, column: 57, scope: !722)
!1560 = !DILocation(line: 649, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !722, file: !1, line: 649, column: 9)
!1562 = !DILocation(line: 649, column: 31, scope: !1561)
!1563 = !DILocation(line: 649, column: 24, scope: !1561)
!1564 = !DILocation(line: 650, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 649, column: 40)
!1566 = !DILocation(line: 651, column: 9, scope: !1565)
!1567 = !DILocation(line: 653, column: 12, scope: !722)
!1568 = !DILocation(line: 653, column: 5, scope: !722)
!1569 = !DILocation(line: 654, column: 1, scope: !722)
!1570 = !DILocation(line: 467, column: 24, scope: !727)
!1571 = !DILocation(line: 467, column: 40, scope: !727)
!1572 = !DILocation(line: 467, column: 56, scope: !727)
!1573 = !DILocation(line: 469, column: 5, scope: !727)
!1574 = !DILocation(line: 470, column: 5, scope: !727)
!1575 = !DILocation(line: 471, column: 5, scope: !727)
!1576 = !DILocation(line: 471, column: 15, scope: !727)
!1577 = !DILocation(line: 472, column: 5, scope: !727)
!1578 = !DILocation(line: 472, column: 15, scope: !727)
!1579 = !DILocation(line: 473, column: 5, scope: !727)
!1580 = !DILocation(line: 473, column: 15, scope: !727)
!1581 = !DILocation(line: 469, column: 19, scope: !727)
!1582 = !DILocation(line: 470, column: 15, scope: !727)
!1583 = !DILocation(line: 479, column: 10, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !727, file: !1, line: 479, column: 9)
!1585 = !DILocation(line: 479, column: 9, scope: !727)
!1586 = !DILocation(line: 485, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !727, file: !1, line: 485, column: 9)
!1588 = !DILocation(line: 485, column: 14, scope: !1587)
!1589 = !DILocation(line: 485, column: 25, scope: !1587)
!1590 = !DILocation(line: 485, column: 29, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1587, file: !1, discriminator: 1)
!1592 = !DILocation(line: 485, column: 9, scope: !727)
!1593 = !DILocation(line: 486, column: 25, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 485, column: 52)
!1595 = !DILocation(line: 486, column: 9, scope: !1594)
!1596 = !DILocation(line: 488, column: 9, scope: !1594)
!1597 = !DILocation(line: 490, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !727, file: !1, line: 490, column: 9)
!1599 = !DILocation(line: 490, column: 18, scope: !1598)
!1600 = !DILocation(line: 490, column: 29, scope: !1598)
!1601 = !DILocation(line: 490, column: 33, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1598, file: !1, discriminator: 1)
!1603 = !DILocation(line: 490, column: 9, scope: !727)
!1604 = !DILocation(line: 491, column: 25, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 490, column: 58)
!1606 = !DILocation(line: 491, column: 9, scope: !1605)
!1607 = !DILocation(line: 493, column: 9, scope: !1605)
!1608 = !DILocation(line: 514, column: 29, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !727, file: !1, line: 511, column: 9)
!1610 = !DILocation(line: 495, column: 13, scope: !727)
!1611 = !{!976, !944, i64 72}
!1612 = !DILocation(line: 475, column: 16, scope: !727)
!1613 = !DILocation(line: 510, column: 16, scope: !727)
!1614 = !DILocation(line: 496, column: 10, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !727, file: !1, line: 496, column: 9)
!1616 = !DILocation(line: 518, column: 27, scope: !748)
!1617 = !DILocation(line: 527, column: 62, scope: !727)
!1618 = !DILocation(line: 496, column: 9, scope: !727)
!1619 = !DILocation(line: 497, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 497, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 496, column: 34)
!1622 = !DILocation(line: 497, column: 30, scope: !1620)
!1623 = !DILocation(line: 497, column: 19, scope: !1620)
!1624 = !DILocation(line: 498, column: 29, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 497, column: 42)
!1626 = !DILocation(line: 498, column: 13, scope: !1625)
!1627 = !DILocation(line: 500, column: 13, scope: !1625)
!1628 = !DILocation(line: 502, column: 18, scope: !1620)
!1629 = !DILocation(line: 503, column: 29, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 502, column: 38)
!1631 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 502, column: 18)
!1632 = !DILocation(line: 503, column: 13, scope: !1630)
!1633 = !DILocation(line: 505, column: 13, scope: !1630)
!1634 = !DILocation(line: 510, column: 24, scope: !727)
!1635 = !DILocation(line: 510, column: 41, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !727, file: !1, discriminator: 2)
!1637 = !DILocation(line: 475, column: 23, scope: !727)
!1638 = !DILocation(line: 511, column: 15, scope: !1609)
!1639 = !DILocation(line: 511, column: 9, scope: !727)
!1640 = !DILocation(line: 512, column: 29, scope: !1609)
!1641 = !DILocation(line: 514, column: 35, scope: !1609)
!1642 = !DILocation(line: 512, column: 16, scope: !1609)
!1643 = !DILocation(line: 512, column: 9, scope: !1609)
!1644 = !DILocation(line: 515, column: 9, scope: !727)
!1645 = !DILocation(line: 517, column: 23, scope: !749)
!1646 = !DILocation(line: 517, column: 9, scope: !750)
!1647 = !DILocation(line: 518, column: 23, scope: !748)
!1648 = !DILocation(line: 519, column: 18, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !748, file: !1, line: 519, column: 17)
!1650 = !DILocation(line: 517, column: 36, scope: !749)
!1651 = !DILocation(line: 516, column: 20, scope: !745)
!1652 = !DILocation(line: 519, column: 17, scope: !748)
!1653 = !DILocation(line: 520, column: 37, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 519, column: 35)
!1655 = !DILocation(line: 522, column: 49, scope: !1654)
!1656 = !DILocation(line: 520, column: 24, scope: !1654)
!1657 = !DILocation(line: 528, column: 50, scope: !727)
!1658 = !DILocation(line: 69, column: 26, scope: !443, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 527, column: 35, scope: !727)
!1660 = !DILocation(line: 69, column: 42, scope: !443, inlinedAt: !1659)
!1661 = !DILocation(line: 71, column: 12, scope: !443, inlinedAt: !1659)
!1662 = !DILocation(line: 529, column: 17, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !727, file: !1, line: 529, column: 9)
!1664 = !DILocation(line: 529, column: 9, scope: !727)
!1665 = !DILocation(line: 532, column: 9, scope: !754)
!1666 = !DILocation(line: 532, column: 14, scope: !754)
!1667 = !DILocation(line: 532, column: 9, scope: !727)
!1668 = !DILocation(line: 533, column: 9, scope: !753)
!1669 = !DILocation(line: 534, column: 9, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 1)
!1671 = !DILocation(line: 534, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !752, file: !1, line: 534, column: 9)
!1673 = !DILocation(line: 534, column: 9, scope: !752)
!1674 = !DILocation(line: 534, column: 9, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 3)
!1676 = !DILocation(line: 535, column: 30, scope: !753)
!1677 = !DILocation(line: 535, column: 28, scope: !753)
!1678 = !DILocation(line: 536, column: 5, scope: !753)
!1679 = !DILocation(line: 537, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !727, file: !1, line: 537, column: 9)
!1681 = !DILocation(line: 537, column: 18, scope: !1680)
!1682 = !DILocation(line: 537, column: 9, scope: !727)
!1683 = !DILocation(line: 539, column: 35, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 537, column: 30)
!1685 = !DILocation(line: 538, column: 9, scope: !1684)
!1686 = !DILocation(line: 539, column: 33, scope: !1684)
!1687 = !DILocation(line: 540, column: 5, scope: !1684)
!1688 = !DILocation(line: 541, column: 9, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !727, file: !1, line: 541, column: 9)
!1690 = !DILocation(line: 541, column: 17, scope: !1689)
!1691 = !DILocation(line: 541, column: 9, scope: !727)
!1692 = !DILocation(line: 543, column: 33, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 541, column: 29)
!1694 = !DILocation(line: 542, column: 9, scope: !1693)
!1695 = !DILocation(line: 543, column: 31, scope: !1693)
!1696 = !DILocation(line: 544, column: 5, scope: !1693)
!1697 = !DILocation(line: 547, column: 1, scope: !727)
!1698 = !DILocation(line: 724, column: 25, scope: !755)
!1699 = !DILocation(line: 726, column: 5, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !761, file: !1, discriminator: 1)
!1701 = !DILocation(line: 726, column: 5, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !1, discriminator: 2)
!1703 = distinct !DILexicalBlock(scope: !761, file: !1, line: 726, column: 5)
!1704 = !DILocation(line: 726, column: 5, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !761, file: !1, discriminator: 4)
!1706 = !DILocation(line: 727, column: 5, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !763, file: !1, discriminator: 1)
!1708 = !{!1709, !944, i64 16}
!1709 = !{!"", !963, i64 0, !944, i64 16, !944, i64 24}
!1710 = !DILocation(line: 727, column: 5, scope: !766)
!1711 = !DILocation(line: 727, column: 5, scope: !763)
!1712 = !DILocation(line: 727, column: 5, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 4)
!1714 = !DILocation(line: 727, column: 5, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !765, file: !1, line: 727, column: 5)
!1716 = !DILocation(line: 727, column: 5, scope: !765)
!1717 = !DILocation(line: 727, column: 5, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 6)
!1719 = !DILocation(line: 728, column: 5, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 1)
!1721 = !{!1709, !944, i64 24}
!1722 = !DILocation(line: 728, column: 5, scope: !771)
!1723 = !DILocation(line: 728, column: 5, scope: !768)
!1724 = !DILocation(line: 728, column: 5, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !770, file: !1, discriminator: 4)
!1726 = !DILocation(line: 728, column: 5, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !770, file: !1, line: 728, column: 5)
!1728 = !DILocation(line: 728, column: 5, scope: !770)
!1729 = !DILocation(line: 728, column: 5, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1727, file: !1, discriminator: 6)
!1731 = !DILocation(line: 729, column: 5, scope: !755)
!1732 = !DILocation(line: 729, column: 18, scope: !755)
!1733 = !{!998, !944, i64 320}
!1734 = !DILocation(line: 729, column: 26, scope: !755)
!1735 = !DILocation(line: 730, column: 1, scope: !755)
!1736 = !DILocation(line: 733, column: 26, scope: !772)
!1737 = !DILocation(line: 733, column: 40, scope: !772)
!1738 = !DILocation(line: 733, column: 53, scope: !772)
!1739 = !DILocation(line: 735, column: 5, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !781, file: !1, discriminator: 1)
!1741 = !DILocation(line: 735, column: 5, scope: !782)
!1742 = !DILocation(line: 735, column: 5, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !780, file: !1, discriminator: 2)
!1744 = !DILocation(line: 735, column: 5, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !780, file: !1, line: 735, column: 5)
!1746 = !DILocation(line: 736, column: 5, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !785, file: !1, discriminator: 1)
!1748 = !DILocation(line: 736, column: 5, scope: !786)
!1749 = !DILocation(line: 736, column: 5, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 2)
!1751 = !DILocation(line: 736, column: 5, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !784, file: !1, line: 736, column: 5)
!1753 = !DILocation(line: 737, column: 5, scope: !772)
!1754 = !DILocation(line: 738, column: 1, scope: !772)
!1755 = !DILocation(line: 741, column: 23, scope: !787)
!1756 = !DILocation(line: 743, column: 5, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !793, file: !1, discriminator: 1)
!1758 = !DILocation(line: 743, column: 5, scope: !797)
!1759 = !DILocation(line: 743, column: 5, scope: !793)
!1760 = !DILocation(line: 743, column: 5, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !796, file: !1, discriminator: 2)
!1762 = !DILocation(line: 743, column: 5, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 4)
!1764 = !DILocation(line: 743, column: 5, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !795, file: !1, line: 743, column: 5)
!1766 = !DILocation(line: 743, column: 5, scope: !795)
!1767 = !DILocation(line: 743, column: 5, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1765, file: !1, discriminator: 6)
!1769 = !DILocation(line: 744, column: 5, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 1)
!1771 = !DILocation(line: 744, column: 5, scope: !803)
!1772 = !DILocation(line: 744, column: 5, scope: !799)
!1773 = !DILocation(line: 744, column: 5, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 2)
!1775 = !DILocation(line: 744, column: 5, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !801, file: !1, discriminator: 4)
!1777 = !DILocation(line: 744, column: 5, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !801, file: !1, line: 744, column: 5)
!1779 = !DILocation(line: 744, column: 5, scope: !801)
!1780 = !DILocation(line: 744, column: 5, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 6)
!1782 = !DILocation(line: 745, column: 5, scope: !787)
!1783 = !DILocation(line: 750, column: 24, scope: !811)
!1784 = !DILocation(line: 750, column: 40, scope: !811)
!1785 = !DILocation(line: 750, column: 55, scope: !811)
!1786 = !DILocation(line: 754, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !811, file: !1, line: 754, column: 9)
!1788 = !DILocation(line: 761, column: 29, scope: !811)
!1789 = !DILocation(line: 754, column: 25, scope: !1787)
!1790 = !DILocation(line: 754, column: 9, scope: !811)
!1791 = !DILocation(line: 755, column: 25, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !1, line: 754, column: 34)
!1793 = !DILocation(line: 755, column: 9, scope: !1792)
!1794 = !DILocation(line: 757, column: 9, scope: !1792)
!1795 = !DILocation(line: 759, column: 14, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !811, file: !1, line: 759, column: 9)
!1797 = !DILocation(line: 759, column: 9, scope: !811)
!1798 = !DILocation(line: 760, column: 29, scope: !1796)
!1799 = !DILocation(line: 760, column: 9, scope: !1796)
!1800 = !DILocation(line: 761, column: 12, scope: !811)
!1801 = !DILocation(line: 761, column: 5, scope: !811)
!1802 = !DILocation(line: 762, column: 1, scope: !811)
!1803 = !DILocation(line: 765, column: 19, scope: !817)
!1804 = !DILocation(line: 765, column: 35, scope: !817)
!1805 = !DILocation(line: 765, column: 51, scope: !817)
!1806 = !DILocation(line: 768, column: 5, scope: !817)
!1807 = !DILocation(line: 768, column: 15, scope: !817)
!1808 = !DILocation(line: 770, column: 10, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !817, file: !1, line: 770, column: 9)
!1810 = !DILocation(line: 770, column: 9, scope: !817)
!1811 = !DILocation(line: 772, column: 10, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !817, file: !1, line: 772, column: 9)
!1813 = !DILocation(line: 772, column: 9, scope: !817)
!1814 = !DILocation(line: 774, column: 5, scope: !817)
!1815 = !DILocation(line: 775, column: 23, scope: !817)
!1816 = !DILocation(line: 775, column: 21, scope: !817)
!1817 = !DILocation(line: 776, column: 5, scope: !817)
!1818 = !DILocation(line: 777, column: 1, scope: !817)
!1819 = !DILocation(line: 870, column: 29, scope: !504)
!1820 = !DILocation(line: 873, column: 9, scope: !504)
!1821 = !DILocation(line: 874, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !504, file: !1, line: 874, column: 9)
!1823 = !DILocation(line: 874, column: 9, scope: !504)
!1824 = !DILocation(line: 875, column: 9, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 874, column: 21)
!1826 = !DILocation(line: 876, column: 13, scope: !1825)
!1827 = !DILocation(line: 876, column: 25, scope: !1825)
!1828 = !DILocation(line: 877, column: 5, scope: !1825)
!1829 = !DILocation(line: 878, column: 5, scope: !504)
!1830 = !DILocation(line: 905, column: 26, scope: !824)
!1831 = !DILocation(line: 907, column: 5, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 1)
!1833 = !DILocation(line: 907, column: 5, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1835, file: !1, discriminator: 2)
!1835 = distinct !DILexicalBlock(scope: !830, file: !1, line: 907, column: 5)
!1836 = !DILocation(line: 907, column: 5, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 4)
!1838 = !DILocation(line: 908, column: 5, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !832, file: !1, discriminator: 1)
!1840 = !DILocation(line: 908, column: 5, scope: !835)
!1841 = !DILocation(line: 908, column: 5, scope: !832)
!1842 = !DILocation(line: 908, column: 5, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 4)
!1844 = !DILocation(line: 908, column: 5, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !834, file: !1, line: 908, column: 5)
!1846 = !DILocation(line: 908, column: 5, scope: !834)
!1847 = !DILocation(line: 908, column: 5, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1845, file: !1, discriminator: 6)
!1849 = !DILocation(line: 909, column: 5, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !837, file: !1, discriminator: 1)
!1851 = !DILocation(line: 909, column: 5, scope: !840)
!1852 = !DILocation(line: 909, column: 5, scope: !837)
!1853 = !DILocation(line: 909, column: 5, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !839, file: !1, discriminator: 4)
!1855 = !DILocation(line: 909, column: 5, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !839, file: !1, line: 909, column: 5)
!1857 = !DILocation(line: 909, column: 5, scope: !839)
!1858 = !DILocation(line: 909, column: 5, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1856, file: !1, discriminator: 6)
!1860 = !DILocation(line: 910, column: 5, scope: !824)
!1861 = !DILocation(line: 910, column: 18, scope: !824)
!1862 = !DILocation(line: 910, column: 26, scope: !824)
!1863 = !DILocation(line: 911, column: 1, scope: !824)
!1864 = !DILocation(line: 914, column: 27, scope: !841)
!1865 = !DILocation(line: 914, column: 41, scope: !841)
!1866 = !DILocation(line: 914, column: 54, scope: !841)
!1867 = !DILocation(line: 916, column: 5, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !850, file: !1, discriminator: 1)
!1869 = !DILocation(line: 916, column: 5, scope: !851)
!1870 = !DILocation(line: 916, column: 5, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !849, file: !1, discriminator: 2)
!1872 = !DILocation(line: 916, column: 5, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !849, file: !1, line: 916, column: 5)
!1874 = !DILocation(line: 917, column: 5, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 1)
!1876 = !DILocation(line: 917, column: 5, scope: !855)
!1877 = !DILocation(line: 917, column: 5, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !853, file: !1, discriminator: 2)
!1879 = !DILocation(line: 917, column: 5, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !853, file: !1, line: 917, column: 5)
!1881 = !DILocation(line: 918, column: 5, scope: !841)
!1882 = !DILocation(line: 919, column: 1, scope: !841)
!1883 = !DILocation(line: 922, column: 24, scope: !856)
!1884 = !DILocation(line: 924, column: 5, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 1)
!1886 = !DILocation(line: 924, column: 5, scope: !866)
!1887 = !DILocation(line: 924, column: 5, scope: !862)
!1888 = !DILocation(line: 924, column: 5, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 2)
!1890 = !DILocation(line: 924, column: 5, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 4)
!1892 = !DILocation(line: 924, column: 5, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !864, file: !1, line: 924, column: 5)
!1894 = !DILocation(line: 924, column: 5, scope: !864)
!1895 = !DILocation(line: 924, column: 5, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1893, file: !1, discriminator: 6)
!1897 = !DILocation(line: 925, column: 5, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !868, file: !1, discriminator: 1)
!1899 = !DILocation(line: 925, column: 5, scope: !872)
!1900 = !DILocation(line: 925, column: 5, scope: !868)
!1901 = !DILocation(line: 925, column: 5, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !871, file: !1, discriminator: 2)
!1903 = !DILocation(line: 925, column: 5, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 4)
!1905 = !DILocation(line: 925, column: 5, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !870, file: !1, line: 925, column: 5)
!1907 = !DILocation(line: 925, column: 5, scope: !870)
!1908 = !DILocation(line: 925, column: 5, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 6)
!1910 = !DILocation(line: 926, column: 5, scope: !856)
!1911 = !DILocation(line: 930, column: 24, scope: !880)
!1912 = !DILocation(line: 930, column: 40, scope: !880)
!1913 = !DILocation(line: 930, column: 55, scope: !880)
!1914 = !DILocation(line: 934, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !880, file: !1, line: 934, column: 9)
!1916 = !DILocation(line: 940, column: 16, scope: !880)
!1917 = !DILocation(line: 934, column: 25, scope: !1915)
!1918 = !DILocation(line: 934, column: 9, scope: !880)
!1919 = !DILocation(line: 935, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 934, column: 34)
!1921 = !DILocation(line: 935, column: 9, scope: !1920)
!1922 = !DILocation(line: 937, column: 9, scope: !1920)
!1923 = !DILocation(line: 939, column: 5, scope: !880)
!1924 = !DILocation(line: 940, column: 5, scope: !880)
!1925 = !DILocation(line: 941, column: 1, scope: !880)
!1926 = !DILocation(line: 944, column: 19, scope: !886)
!1927 = !DILocation(line: 944, column: 35, scope: !886)
!1928 = !DILocation(line: 944, column: 51, scope: !886)
!1929 = !DILocation(line: 947, column: 5, scope: !886)
!1930 = !DILocation(line: 947, column: 15, scope: !886)
!1931 = !DILocation(line: 949, column: 10, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !886, file: !1, line: 949, column: 9)
!1933 = !DILocation(line: 949, column: 9, scope: !886)
!1934 = !DILocation(line: 951, column: 10, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !886, file: !1, line: 951, column: 9)
!1936 = !DILocation(line: 951, column: 9, scope: !886)
!1937 = !DILocation(line: 953, column: 5, scope: !886)
!1938 = !DILocation(line: 954, column: 23, scope: !886)
!1939 = !DILocation(line: 954, column: 21, scope: !886)
!1940 = !DILocation(line: 955, column: 5, scope: !886)
!1941 = !DILocation(line: 956, column: 1, scope: !886)
!1942 = !DILocation(line: 1046, column: 30, scope: !508)
!1943 = !DILocation(line: 1049, column: 9, scope: !508)
!1944 = !DILocation(line: 1050, column: 12, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1050, column: 9)
!1946 = !DILocation(line: 1050, column: 9, scope: !508)
!1947 = !DILocation(line: 1051, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !1, line: 1050, column: 21)
!1949 = !DILocation(line: 1052, column: 13, scope: !1948)
!1950 = !DILocation(line: 1052, column: 25, scope: !1948)
!1951 = !DILocation(line: 1053, column: 5, scope: !1948)
!1952 = !DILocation(line: 1054, column: 5, scope: !508)
!1953 = !DILocation(line: 247, column: 33, scope: !643)
!1954 = !DILocation(line: 249, column: 5, scope: !643)
!1955 = !DILocation(line: 250, column: 5, scope: !643)
!1956 = !DILocation(line: 254, column: 33, scope: !646)
!1957 = !DILocation(line: 254, column: 47, scope: !646)
!1958 = !DILocation(line: 261, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !646, file: !1, line: 261, column: 9)
!1960 = !DILocation(line: 261, column: 23, scope: !1959)
!1961 = !DILocation(line: 261, column: 27, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1959, file: !1, discriminator: 1)
!1963 = !DILocation(line: 261, column: 9, scope: !646)
!1964 = !DILocation(line: 262, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 261, column: 48)
!1966 = !DILocation(line: 262, column: 9, scope: !1965)
!1967 = !DILocation(line: 264, column: 9, scope: !1965)
!1968 = !DILocation(line: 266, column: 13, scope: !646)
!1969 = !DILocation(line: 257, column: 16, scope: !646)
!1970 = !DILocation(line: 267, column: 21, scope: !646)
!1971 = !DILocation(line: 267, column: 34, scope: !646)
!1972 = !DILocation(line: 267, column: 17, scope: !646)
!1973 = !DILocation(line: 268, column: 13, scope: !646)
!1974 = !DILocation(line: 257, column: 23, scope: !646)
!1975 = !DILocation(line: 269, column: 18, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !646, file: !1, line: 269, column: 9)
!1977 = !DILocation(line: 269, column: 9, scope: !646)
!1978 = !DILocation(line: 270, column: 22, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 269, column: 28)
!1980 = !DILocation(line: 273, column: 26, scope: !1979)
!1981 = !DILocation(line: 270, column: 9, scope: !1979)
!1982 = !DILocation(line: 275, column: 9, scope: !1979)
!1983 = !DILocation(line: 277, column: 15, scope: !646)
!1984 = !DILocation(line: 256, column: 15, scope: !646)
!1985 = !DILocation(line: 278, column: 5, scope: !646)
!1986 = !DILocation(line: 279, column: 19, scope: !646)
!1987 = !DILocation(line: 280, column: 5, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !656, file: !1, discriminator: 1)
!1989 = !DILocation(line: 280, column: 5, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !656, file: !1, line: 280, column: 5)
!1991 = !DILocation(line: 280, column: 5, scope: !656)
!1992 = !DILocation(line: 280, column: 5, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1990, file: !1, discriminator: 3)
!1994 = !DILocation(line: 282, column: 1, scope: !646)
!1995 = !DILocation(line: 337, column: 37, scope: !657)
!1996 = !DILocation(line: 339, column: 13, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !657, file: !1, line: 339, column: 9)
!1998 = !DILocation(line: 344, column: 16, scope: !657)
!1999 = !DILocation(line: 339, column: 27, scope: !1997)
!2000 = !DILocation(line: 339, column: 9, scope: !657)
!2001 = !DILocation(line: 340, column: 9, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !1, line: 339, column: 36)
!2003 = !DILocation(line: 341, column: 9, scope: !2002)
!2004 = !DILocation(line: 343, column: 5, scope: !657)
!2005 = !DILocation(line: 344, column: 5, scope: !657)
!2006 = !DILocation(line: 345, column: 1, scope: !657)
!2007 = !DILocation(line: 348, column: 37, scope: !660)
!2008 = !DILocation(line: 348, column: 51, scope: !660)
!2009 = !DILocation(line: 354, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !660, file: !1, line: 354, column: 9)
!2011 = !DILocation(line: 354, column: 9, scope: !660)
!2012 = !DILocation(line: 356, column: 15, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !660, file: !1, line: 356, column: 9)
!2014 = !DILocation(line: 356, column: 23, scope: !2013)
!2015 = !DILocation(line: 356, column: 27, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2013, file: !1, discriminator: 1)
!2017 = !DILocation(line: 356, column: 9, scope: !660)
!2018 = !DILocation(line: 357, column: 25, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 356, column: 49)
!2020 = !DILocation(line: 357, column: 9, scope: !2019)
!2021 = !DILocation(line: 359, column: 9, scope: !2019)
!2022 = !DILocation(line: 361, column: 15, scope: !660)
!2023 = !DILocation(line: 350, column: 15, scope: !660)
!2024 = !DILocation(line: 362, column: 5, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 1)
!2026 = !DILocation(line: 362, column: 5, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 2)
!2028 = distinct !DILexicalBlock(scope: !666, file: !1, line: 362, column: 5)
!2029 = !DILocation(line: 363, column: 23, scope: !660)
!2030 = !DILocation(line: 364, column: 5, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 1)
!2032 = !DILocation(line: 364, column: 5, scope: !671)
!2033 = !DILocation(line: 364, column: 5, scope: !668)
!2034 = !DILocation(line: 364, column: 5, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 4)
!2036 = !DILocation(line: 364, column: 5, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !670, file: !1, line: 364, column: 5)
!2038 = !DILocation(line: 364, column: 5, scope: !670)
!2039 = !DILocation(line: 364, column: 5, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 6)
!2041 = !DILocation(line: 366, column: 1, scope: !660)
!2042 = !DILocation(line: 369, column: 39, scope: !672)
!2043 = !DILocation(line: 371, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !672, file: !1, line: 371, column: 9)
!2045 = !DILocation(line: 376, column: 16, scope: !672)
!2046 = !DILocation(line: 371, column: 29, scope: !2044)
!2047 = !DILocation(line: 371, column: 9, scope: !672)
!2048 = !DILocation(line: 372, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !1, line: 371, column: 38)
!2050 = !DILocation(line: 373, column: 9, scope: !2049)
!2051 = !DILocation(line: 375, column: 5, scope: !672)
!2052 = !DILocation(line: 376, column: 5, scope: !672)
!2053 = !DILocation(line: 377, column: 1, scope: !672)
!2054 = !DILocation(line: 380, column: 39, scope: !675)
!2055 = !DILocation(line: 380, column: 53, scope: !675)
!2056 = !DILocation(line: 384, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !675, file: !1, line: 384, column: 9)
!2058 = !DILocation(line: 384, column: 9, scope: !675)
!2059 = !DILocation(line: 388, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !675, file: !1, line: 388, column: 9)
!2061 = !DILocation(line: 388, column: 23, scope: !2060)
!2062 = !DILocation(line: 388, column: 27, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2060, file: !1, discriminator: 1)
!2064 = !DILocation(line: 388, column: 9, scope: !675)
!2065 = !DILocation(line: 389, column: 25, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 388, column: 48)
!2067 = !DILocation(line: 389, column: 9, scope: !2066)
!2068 = !DILocation(line: 391, column: 9, scope: !2066)
!2069 = !DILocation(line: 393, column: 15, scope: !675)
!2070 = !DILocation(line: 382, column: 15, scope: !675)
!2071 = !DILocation(line: 394, column: 5, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !681, file: !1, discriminator: 1)
!2073 = !DILocation(line: 394, column: 5, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 2)
!2075 = distinct !DILexicalBlock(scope: !681, file: !1, line: 394, column: 5)
!2076 = !DILocation(line: 395, column: 25, scope: !675)
!2077 = !DILocation(line: 396, column: 5, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !683, file: !1, discriminator: 1)
!2079 = !DILocation(line: 396, column: 5, scope: !686)
!2080 = !DILocation(line: 396, column: 5, scope: !683)
!2081 = !DILocation(line: 396, column: 5, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 4)
!2083 = !DILocation(line: 396, column: 5, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !685, file: !1, line: 396, column: 5)
!2085 = !DILocation(line: 396, column: 5, scope: !685)
!2086 = !DILocation(line: 396, column: 5, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2084, file: !1, discriminator: 6)
!2088 = !DILocation(line: 398, column: 1, scope: !675)
!2089 = !DILocation(line: 401, column: 40, scope: !687)
!2090 = !DILocation(line: 403, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !687, file: !1, line: 403, column: 9)
!2092 = !DILocation(line: 403, column: 30, scope: !2091)
!2093 = !DILocation(line: 403, column: 9, scope: !687)
!2094 = !DILocation(line: 404, column: 32, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 403, column: 39)
!2096 = !DILocation(line: 404, column: 30, scope: !2095)
!2097 = !DILocation(line: 405, column: 34, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !1, line: 405, column: 13)
!2099 = !DILocation(line: 405, column: 13, scope: !2095)
!2100 = !DILocation(line: 409, column: 16, scope: !687)
!2101 = !DILocation(line: 408, column: 5, scope: !687)
!2102 = !DILocation(line: 409, column: 5, scope: !687)
!2103 = !DILocation(line: 410, column: 1, scope: !687)
!2104 = !DILocation(line: 413, column: 40, scope: !690)
!2105 = !DILocation(line: 413, column: 54, scope: !690)
!2106 = !DILocation(line: 417, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !690, file: !1, line: 417, column: 9)
!2108 = !DILocation(line: 417, column: 9, scope: !690)
!2109 = !DILocation(line: 422, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !690, file: !1, line: 422, column: 9)
!2111 = !DILocation(line: 422, column: 23, scope: !2110)
!2112 = !DILocation(line: 422, column: 27, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2110, file: !1, discriminator: 1)
!2114 = !DILocation(line: 422, column: 9, scope: !690)
!2115 = !DILocation(line: 423, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 422, column: 48)
!2117 = !DILocation(line: 423, column: 9, scope: !2116)
!2118 = !DILocation(line: 425, column: 9, scope: !2116)
!2119 = !DILocation(line: 427, column: 15, scope: !690)
!2120 = !DILocation(line: 415, column: 15, scope: !690)
!2121 = !DILocation(line: 428, column: 5, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!2123 = !DILocation(line: 428, column: 5, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2125, file: !1, discriminator: 2)
!2125 = distinct !DILexicalBlock(scope: !696, file: !1, line: 428, column: 5)
!2126 = !DILocation(line: 429, column: 26, scope: !690)
!2127 = !DILocation(line: 430, column: 5, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 1)
!2129 = !DILocation(line: 430, column: 5, scope: !701)
!2130 = !DILocation(line: 430, column: 5, scope: !698)
!2131 = !DILocation(line: 430, column: 5, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 4)
!2133 = !DILocation(line: 430, column: 5, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !700, file: !1, line: 430, column: 5)
!2135 = !DILocation(line: 430, column: 5, scope: !700)
!2136 = !DILocation(line: 430, column: 5, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2134, file: !1, discriminator: 6)
!2138 = !DILocation(line: 432, column: 1, scope: !690)
!2139 = !DILocation(line: 285, column: 33, scope: !702)
!2140 = !DILocation(line: 287, column: 5, scope: !702)
!2141 = !DILocation(line: 288, column: 5, scope: !702)
!2142 = !DILocation(line: 292, column: 33, scope: !705)
!2143 = !DILocation(line: 292, column: 47, scope: !705)
!2144 = !DILocation(line: 298, column: 15, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !705, file: !1, line: 298, column: 9)
!2146 = !DILocation(line: 298, column: 23, scope: !2145)
!2147 = !DILocation(line: 298, column: 27, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2145, file: !1, discriminator: 1)
!2149 = !DILocation(line: 298, column: 9, scope: !705)
!2150 = !DILocation(line: 299, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 298, column: 51)
!2152 = !DILocation(line: 299, column: 9, scope: !2151)
!2153 = !DILocation(line: 301, column: 9, scope: !2151)
!2154 = !DILocation(line: 303, column: 15, scope: !705)
!2155 = !DILocation(line: 294, column: 15, scope: !705)
!2156 = !DILocation(line: 304, column: 5, scope: !705)
!2157 = !DILocation(line: 305, column: 19, scope: !705)
!2158 = !DILocation(line: 306, column: 5, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 1)
!2160 = !DILocation(line: 306, column: 5, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !711, file: !1, line: 306, column: 5)
!2162 = !DILocation(line: 306, column: 5, scope: !711)
!2163 = !DILocation(line: 306, column: 5, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2161, file: !1, discriminator: 3)
!2165 = !DILocation(line: 308, column: 1, scope: !705)
!2166 = !DILocation(line: 311, column: 37, scope: !712)
!2167 = !DILocation(line: 313, column: 5, scope: !712)
!2168 = !DILocation(line: 314, column: 5, scope: !712)
!2169 = !DILocation(line: 318, column: 37, scope: !715)
!2170 = !DILocation(line: 318, column: 51, scope: !715)
!2171 = !DILocation(line: 324, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !715, file: !1, line: 324, column: 9)
!2173 = !DILocation(line: 324, column: 23, scope: !2172)
!2174 = !DILocation(line: 324, column: 27, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2172, file: !1, discriminator: 1)
!2176 = !DILocation(line: 324, column: 9, scope: !715)
!2177 = !DILocation(line: 325, column: 25, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 324, column: 51)
!2179 = !DILocation(line: 325, column: 9, scope: !2178)
!2180 = !DILocation(line: 327, column: 9, scope: !2178)
!2181 = !DILocation(line: 329, column: 15, scope: !715)
!2182 = !DILocation(line: 320, column: 15, scope: !715)
!2183 = !DILocation(line: 330, column: 5, scope: !715)
!2184 = !DILocation(line: 331, column: 23, scope: !715)
!2185 = !DILocation(line: 332, column: 5, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 1)
!2187 = !DILocation(line: 332, column: 5, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !721, file: !1, line: 332, column: 5)
!2189 = !DILocation(line: 332, column: 5, scope: !721)
!2190 = !DILocation(line: 332, column: 5, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 3)
!2192 = !DILocation(line: 334, column: 1, scope: !715)
!2193 = !DILocation(line: 785, column: 42, scope: !804)
!2194 = !DILocation(line: 785, column: 52, scope: !804)
!2195 = !DILocation(line: 787, column: 40, scope: !804)
!2196 = !DILocation(line: 787, column: 15, scope: !804)
!2197 = !DILocation(line: 787, column: 9, scope: !804)
!2198 = !DILocation(line: 788, column: 9, scope: !804)
!2199 = !DILocation(line: 792, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 791, column: 19)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 791, column: 14)
!2202 = distinct !DILexicalBlock(scope: !804, file: !1, line: 788, column: 9)
!2203 = !DILocation(line: 794, column: 5, scope: !804)
!2204 = !DILocation(line: 795, column: 1, scope: !804)
!2205 = !DILocation(line: 964, column: 43, scope: !873)
!2206 = !DILocation(line: 964, column: 53, scope: !873)
!2207 = !DILocation(line: 966, column: 40, scope: !873)
!2208 = !DILocation(line: 966, column: 15, scope: !873)
!2209 = !DILocation(line: 966, column: 9, scope: !873)
!2210 = !DILocation(line: 967, column: 9, scope: !873)
!2211 = !DILocation(line: 971, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 970, column: 19)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !1, line: 970, column: 14)
!2214 = distinct !DILexicalBlock(scope: !873, file: !1, line: 967, column: 9)
!2215 = !DILocation(line: 973, column: 5, scope: !873)
!2216 = !DILocation(line: 974, column: 1, scope: !873)
