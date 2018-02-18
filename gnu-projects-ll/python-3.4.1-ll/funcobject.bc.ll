; ModuleID = './funcobject.bc'
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
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %code, %struct._object** %code.addr, align 8
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %qualname, %struct._object** %qualname.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @PyFunction_NewWithQualName.__name__, align 8
  %1 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*))
  %2 = bitcast %struct._object* %call4 to %struct.PyFunctionObject*
  store %struct.PyFunctionObject* %2, %struct.PyFunctionObject** %op, align 8
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %cmp5 = icmp eq %struct.PyFunctionObject* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_weakreflist = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %4, i32 0, i32 9
  store %struct._object* null, %struct._object** %func_weakreflist, align 8
  %5 = load %struct._object*, %struct._object** %code.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %code.addr, align 8
  %8 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %8, i32 0, i32 1
  store %struct._object* %7, %struct._object** %func_code, align 8
  %9 = load %struct._object*, %struct._object** %globals.addr, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt8, align 8
  %inc9 = add i64 %10, 1
  store i64 %inc9, i64* %ob_refcnt8, align 8
  %11 = load %struct._object*, %struct._object** %globals.addr, align 8
  %12 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %12, i32 0, i32 2
  store %struct._object* %11, %struct._object** %func_globals, align 8
  %13 = load %struct._object*, %struct._object** %code.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyCodeObject*
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %14, i32 0, i32 14
  %15 = load %struct._object*, %struct._object** %co_name, align 8
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 7
  store %struct._object* %15, %struct._object** %func_name, align 8
  %17 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_name10 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %17, i32 0, i32 7
  %18 = load %struct._object*, %struct._object** %func_name10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %19, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  %20 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %20, i32 0, i32 3
  store %struct._object* null, %struct._object** %func_defaults, align 8
  %21 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %21, i32 0, i32 4
  store %struct._object* null, %struct._object** %func_kwdefaults, align 8
  %22 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %22, i32 0, i32 5
  store %struct._object* null, %struct._object** %func_closure, align 8
  %23 = load %struct._object*, %struct._object** %code.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyCodeObject*
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %24, i32 0, i32 7
  %25 = load %struct._object*, %struct._object** %co_consts, align 8
  store %struct._object* %25, %struct._object** %consts, align 8
  %26 = load %struct._object*, %struct._object** %consts, align 8
  %call13 = call i64 @PyTuple_Size(%struct._object* %26)
  %cmp14 = icmp sge i64 %call13, 1
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.7
  %27 = load %struct._object*, %struct._object** %consts, align 8
  %call16 = call %struct._object* @PyTuple_GetItem(%struct._object* %27, i64 0)
  store %struct._object* %call16, %struct._object** %doc, align 8
  %28 = load %struct._object*, %struct._object** %doc, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19
  %30 = load i64, i64* %tp_flags, align 8
  %and = and i64 %30, 268435456
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  br label %if.end.20

if.else:                                          ; preds = %if.end.7
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %31 = load %struct._object*, %struct._object** %doc, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt21, align 8
  %inc22 = add i64 %32, 1
  store i64 %inc22, i64* %ob_refcnt21, align 8
  %33 = load %struct._object*, %struct._object** %doc, align 8
  %34 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %34, i32 0, i32 6
  store %struct._object* %33, %struct._object** %func_doc, align 8
  %35 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %35, i32 0, i32 8
  store %struct._object* null, %struct._object** %func_dict, align 8
  %36 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %36, i32 0, i32 10
  store %struct._object* null, %struct._object** %func_module, align 8
  %37 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %37, i32 0, i32 11
  store %struct._object* null, %struct._object** %func_annotations, align 8
  %38 = load %struct._object*, %struct._object** %globals.addr, align 8
  %39 = load %struct._object*, %struct._object** @PyFunction_NewWithQualName.__name__, align 8
  %call23 = call %struct._object* @PyDict_GetItem(%struct._object* %38, %struct._object* %39)
  store %struct._object* %call23, %struct._object** %module, align 8
  %40 = load %struct._object*, %struct._object** %module, align 8
  %tobool = icmp ne %struct._object* %40, null
  br i1 %tobool, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.20
  %41 = load %struct._object*, %struct._object** %module, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt25, align 8
  %inc26 = add i64 %42, 1
  store i64 %inc26, i64* %ob_refcnt25, align 8
  %43 = load %struct._object*, %struct._object** %module, align 8
  %44 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_module27 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %44, i32 0, i32 10
  store %struct._object* %43, %struct._object** %func_module27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.20
  %45 = load %struct._object*, %struct._object** %qualname.addr, align 8
  %tobool29 = icmp ne %struct._object* %45, null
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.28
  %46 = load %struct._object*, %struct._object** %qualname.addr, align 8
  %47 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %47, i32 0, i32 12
  store %struct._object* %46, %struct._object** %func_qualname, align 8
  br label %if.end.34

if.else.31:                                       ; preds = %if.end.28
  %48 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_name32 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %48, i32 0, i32 7
  %49 = load %struct._object*, %struct._object** %func_name32, align 8
  %50 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_qualname33 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %50, i32 0, i32 12
  store %struct._object* %49, %struct._object** %func_qualname33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %51 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %func_qualname35 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %51, i32 0, i32 12
  %52 = load %struct._object*, %struct._object** %func_qualname35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt36, align 8
  %inc37 = add i64 %53, 1
  store i64 %inc37, i64* %ob_refcnt36, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.34
  %54 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %55 = bitcast %struct.PyFunctionObject* %54 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %55, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %56 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %56 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %57 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %57, 1
  %cmp38 = icmp ne i64 %shr, -2
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable

if.end.40:                                        ; preds = %do.body
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.40
  %58 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc42 = bitcast %union._gc_head* %58 to %struct.anon*
  %gc_refs43 = getelementptr inbounds %struct.anon, %struct.anon* %gc42, i32 0, i32 2
  %59 = load i64, i64* %gc_refs43, align 8
  %and44 = and i64 %59, 1
  %or = or i64 %and44, -6
  %60 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc45 = bitcast %union._gc_head* %60 to %struct.anon*
  %gc_refs46 = getelementptr inbounds %struct.anon, %struct.anon* %gc45, i32 0, i32 2
  store i64 %or, i64* %gc_refs46, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.41
  %61 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %62 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc47 = bitcast %union._gc_head* %62 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc47, i32 0, i32 0
  store %union._gc_head* %61, %union._gc_head** %gc_next, align 8
  %63 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc48 = bitcast %union._gc_head* %63 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc48, i32 0, i32 1
  %64 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %65 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc49 = bitcast %union._gc_head* %65 to %struct.anon*
  %gc_prev50 = getelementptr inbounds %struct.anon, %struct.anon* %gc49, i32 0, i32 1
  store %union._gc_head* %64, %union._gc_head** %gc_prev50, align 8
  %66 = load %union._gc_head*, %union._gc_head** %g, align 8
  %67 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc51 = bitcast %union._gc_head* %67 to %struct.anon*
  %gc_prev52 = getelementptr inbounds %struct.anon, %struct.anon* %gc51, i32 0, i32 1
  %68 = load %union._gc_head*, %union._gc_head** %gc_prev52, align 8
  %gc53 = bitcast %union._gc_head* %68 to %struct.anon*
  %gc_next54 = getelementptr inbounds %struct.anon, %struct.anon* %gc53, i32 0, i32 0
  store %union._gc_head* %66, %union._gc_head** %gc_next54, align 8
  %69 = load %union._gc_head*, %union._gc_head** %g, align 8
  %70 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc55 = bitcast %union._gc_head* %70 to %struct.anon*
  %gc_prev56 = getelementptr inbounds %struct.anon, %struct.anon* %gc55, i32 0, i32 1
  store %union._gc_head* %69, %union._gc_head** %gc_prev56, align 8
  br label %do.end.57

do.end.57:                                        ; preds = %do.end
  %71 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op, align 8
  %72 = bitcast %struct.PyFunctionObject* %71 to %struct._object*
  store %struct._object* %72, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.57, %if.then.6, %if.then.2
  %73 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %73
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_New(%struct._object* %code, %struct._object* %globals) #0 {
entry:
  %code.addr = alloca %struct._object*, align 8
  %globals.addr = alloca %struct._object*, align 8
  store %struct._object* %code, %struct._object** %code.addr, align 8
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  %0 = load %struct._object*, %struct._object** %code.addr, align 8
  %1 = load %struct._object*, %struct._object** %globals.addr, align 8
  %call = call %struct._object* @PyFunction_NewWithQualName(%struct._object* %0, %struct._object* %1, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetCode(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 78)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func_code, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetGlobals(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 88)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %func_globals, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetModule(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 98)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 10
  %4 = load %struct._object*, %struct._object** %func_module, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetDefaults(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 108)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %func_defaults, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetDefaults(%struct._object* %op, %struct._object* %defaults) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %defaults.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %defaults, %struct._object** %defaults.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 118)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %defaults.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 67108864
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyFunctionObject*
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %func_defaults, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.15:                                       ; preds = %do.body.11
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %22 = load %struct._object*, %struct._object** %op.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyFunctionObject*
  %func_defaults20 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %23, i32 0, i32 3
  store %struct._object* %21, %struct._object** %func_defaults20, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.6, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetKwDefaults(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 139)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetKwDefaults(%struct._object* %op, %struct._object* %defaults) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %defaults.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %defaults, %struct._object** %defaults.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 149)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %defaults.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 536870912
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyFunctionObject*
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 4
  %12 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.15:                                       ; preds = %do.body.11
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %defaults.addr, align 8
  %22 = load %struct._object*, %struct._object** %op.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyFunctionObject*
  %func_kwdefaults20 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %23, i32 0, i32 4
  store %struct._object* %21, %struct._object** %func_kwdefaults20, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.6, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetClosure(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 171)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 5
  %4 = load %struct._object*, %struct._object** %func_closure, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetClosure(%struct._object* %op, %struct._object* %closure) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %closure.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %closure, %struct._object** %closure.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 181)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %closure.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %closure.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %closure.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 67108864
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %closure.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.else.6:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %9 = load %struct._object*, %struct._object** %closure.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* %11)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %12 = load %struct._object*, %struct._object** %op.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFunctionObject*
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %13, i32 0, i32 5
  %14 = load %struct._object*, %struct._object** %func_closure, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.18

if.else.16:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %do.body
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %23 = load %struct._object*, %struct._object** %closure.addr, align 8
  %24 = load %struct._object*, %struct._object** %op.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyFunctionObject*
  %func_closure21 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %25, i32 0, i32 5
  store %struct._object* %23, %struct._object** %func_closure21, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.else.6, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFunction_GetAnnotations(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 204)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyFunctionObject*
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 11
  %4 = load %struct._object*, %struct._object** %func_annotations, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define i32 @PyFunction_SetAnnotations(%struct._object* %op, %struct._object* %annotations) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %annotations.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %annotations, %struct._object** %annotations.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFunction_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 214)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %annotations.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %annotations.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %annotations.addr, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %annotations.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 536870912
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %annotations.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyFunctionObject*
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 11
  %12 = load %struct._object*, %struct._object** %func_annotations, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.15:                                       ; preds = %do.body.11
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %annotations.addr, align 8
  %22 = load %struct._object*, %struct._object** %op.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyFunctionObject*
  %func_annotations20 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %23, i32 0, i32 11
  store %struct._object* %21, %struct._object** %func_annotations20, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.6, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @func_dealloc(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_xdecref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_xdecref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_xdecref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_xdecref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_xdecref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_xdecref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_xdecref_tmp163 = alloca %struct._object*, align 8
  %_py_decref_tmp167 = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %1 = bitcast %struct.PyFunctionObject* %0 to %union._gc_head*
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
  %14 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_weakreflist = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %14, i32 0, i32 9
  %15 = load %struct._object*, %struct._object** %func_weakreflist, align 8
  %cmp = icmp ne %struct._object* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.16
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %17 = bitcast %struct.PyFunctionObject* %16 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.16
  br label %do.body.17

do.body.17:                                       ; preds = %if.end
  %18 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %func_code, align 8
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
  %26 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %func_globals, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp23, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %29, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %32(%struct._object* %33)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %34 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %34, i32 0, i32 10
  %35 = load %struct._object*, %struct._object** %func_module, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp34 = icmp ne %struct._object* %36, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp37, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %39, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %42(%struct._object* %43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.33
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %44 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %44, i32 0, i32 7
  %45 = load %struct._object*, %struct._object** %func_name, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp50, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %47, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %50(%struct._object* %51)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %52 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %52, i32 0, i32 3
  %53 = load %struct._object*, %struct._object** %func_defaults, align 8
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp61, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8
  %cmp62 = icmp ne %struct._object* %54, null
  br i1 %cmp62, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %do.body.60
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp65, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %57, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %60(%struct._object* %61)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %do.body.60
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %do.body.77

do.body.77:                                       ; preds = %do.end.76
  %62 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %62, i32 0, i32 4
  %63 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  store %struct._object* %63, %struct._object** %_py_xdecref_tmp78, align 8
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8
  %cmp79 = icmp ne %struct._object* %64, null
  br i1 %cmp79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %do.body.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp82, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %67, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %70(%struct._object* %71)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.91, %do.body.77
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %72 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %72, i32 0, i32 6
  %73 = load %struct._object*, %struct._object** %func_doc, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp95, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp95, align 8
  %cmp96 = icmp ne %struct._object* %74, null
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %do.body.94
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp95, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp99, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %77, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %80(%struct._object* %81)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.94
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %do.body.111

do.body.111:                                      ; preds = %do.end.110
  %82 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %82, i32 0, i32 8
  %83 = load %struct._object*, %struct._object** %func_dict, align 8
  store %struct._object* %83, %struct._object** %_py_xdecref_tmp112, align 8
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  %cmp113 = icmp ne %struct._object* %84, null
  br i1 %cmp113, label %if.then.114, label %if.end.126

if.then.114:                                      ; preds = %do.body.111
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp116, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %87, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %90(%struct._object* %91)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.body.111
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %do.body.128

do.body.128:                                      ; preds = %do.end.127
  %92 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %92, i32 0, i32 5
  %93 = load %struct._object*, %struct._object** %func_closure, align 8
  store %struct._object* %93, %struct._object** %_py_xdecref_tmp129, align 8
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  %cmp130 = icmp ne %struct._object* %94, null
  br i1 %cmp130, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %do.body.128
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp133, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %97, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.132
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %100(%struct._object* %101)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.128
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %102 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %102, i32 0, i32 11
  %103 = load %struct._object*, %struct._object** %func_annotations, align 8
  store %struct._object* %103, %struct._object** %_py_xdecref_tmp146, align 8
  %104 = load %struct._object*, %struct._object** %_py_xdecref_tmp146, align 8
  %cmp147 = icmp ne %struct._object* %104, null
  br i1 %cmp147, label %if.then.148, label %if.end.160

if.then.148:                                      ; preds = %do.body.145
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %105 = load %struct._object*, %struct._object** %_py_xdecref_tmp146, align 8
  store %struct._object* %105, %struct._object** %_py_decref_tmp150, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 0
  %107 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %107, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.149
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.149
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 1
  %109 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %109, i32 0, i32 4
  %110 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %110(%struct._object* %111)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %do.body.145
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  br label %do.body.162

do.body.162:                                      ; preds = %do.end.161
  %112 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %112, i32 0, i32 12
  %113 = load %struct._object*, %struct._object** %func_qualname, align 8
  store %struct._object* %113, %struct._object** %_py_xdecref_tmp163, align 8
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp163, align 8
  %cmp164 = icmp ne %struct._object* %114, null
  br i1 %cmp164, label %if.then.165, label %if.end.177

if.then.165:                                      ; preds = %do.body.162
  br label %do.body.166

do.body.166:                                      ; preds = %if.then.165
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp163, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp167, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt168, align 8
  %dec169 = add i64 %117, -1
  store i64 %dec169, i64* %ob_refcnt168, align 8
  %cmp170 = icmp ne i64 %dec169, 0
  br i1 %cmp170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %do.body.166
  br label %if.end.175

if.else.172:                                      ; preds = %do.body.166
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_type173 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type173, align 8
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  call void %120(%struct._object* %121)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.then.171
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.body.162
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  %122 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %123 = bitcast %struct.PyFunctionObject* %122 to i8*
  call void @PyObject_GC_Del(i8* %123)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_repr(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 12
  %1 = load %struct._object*, %struct._object** %func_qualname, align 8
  %2 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), %struct._object* %1, %struct.PyFunctionObject* %2)
  ret %struct._object* %call
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %kwtuple, align 8
  %0 = load %struct._object*, %struct._object** %func.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyFunctionObject*
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %1, i32 0, i32 3
  %2 = load %struct._object*, %struct._object** %func_defaults, align 8
  store %struct._object* %2, %struct._object** %argdefs, align 8
  %3 = load %struct._object*, %struct._object** %argdefs, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %argdefs, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 67108864
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %argdefs, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object** %arrayidx, %struct._object*** %d, align 8
  %9 = load %struct._object*, %struct._object** %argdefs, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size, align 8
  store i64 %11, i64* %nd, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct._object** null, %struct._object*** %d, align 8
  store i64 0, i64* %nd, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp2 = icmp ne %struct._object* %12, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else.24

land.lhs.true.3:                                  ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %kw.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags5, align 8
  %and6 = and i64 %15, 536870912
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.24

if.then.8:                                        ; preds = %land.lhs.true.3
  %16 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i64 @PyDict_Size(%struct._object* %16)
  store i64 %call, i64* %nk, align 8
  %17 = load i64, i64* %nk, align 8
  %mul = mul i64 2, %17
  %call9 = call %struct._object* @PyTuple_New(i64 %mul)
  store %struct._object* %call9, %struct._object** %kwtuple, align 8
  %18 = load %struct._object*, %struct._object** %kwtuple, align 8
  %cmp10 = icmp eq %struct._object* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  %19 = load %struct._object*, %struct._object** %kwtuple, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 0
  store %struct._object** %arrayidx14, %struct._object*** %k, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %21 = load %struct._object*, %struct._object** %kw.addr, align 8
  %22 = load i64, i64* %i, align 8
  %23 = load %struct._object**, %struct._object*** %k, align 8
  %arrayidx15 = getelementptr %struct._object*, %struct._object** %23, i64 %22
  %24 = load i64, i64* %i, align 8
  %add = add i64 %24, 1
  %25 = load %struct._object**, %struct._object*** %k, align 8
  %arrayidx16 = getelementptr %struct._object*, %struct._object** %25, i64 %add
  %call17 = call i32 @PyDict_Next(%struct._object* %21, i64* %pos, %struct._object** %arrayidx15, %struct._object** %arrayidx16)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %i, align 8
  %27 = load %struct._object**, %struct._object*** %k, align 8
  %arrayidx18 = getelementptr %struct._object*, %struct._object** %27, i64 %26
  %28 = load %struct._object*, %struct._object** %arrayidx18, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %30 = load i64, i64* %i, align 8
  %add19 = add i64 %30, 1
  %31 = load %struct._object**, %struct._object*** %k, align 8
  %arrayidx20 = getelementptr %struct._object*, %struct._object** %31, i64 %add19
  %32 = load %struct._object*, %struct._object** %arrayidx20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt21, align 8
  %inc22 = add i64 %33, 1
  store i64 %inc22, i64* %ob_refcnt21, align 8
  %34 = load i64, i64* %i, align 8
  %add23 = add i64 %34, 2
  store i64 %add23, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i64, i64* %i, align 8
  %div = sdiv i64 %35, 2
  store i64 %div, i64* %nk, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.3, %if.end
  store %struct._object** null, %struct._object*** %k, align 8
  store i64 0, i64* %nk, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %while.end
  %36 = load %struct._object*, %struct._object** %func.addr, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyFunctionObject*
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %37, i32 0, i32 1
  %38 = load %struct._object*, %struct._object** %func_code, align 8
  %39 = load %struct._object*, %struct._object** %func.addr, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyFunctionObject*
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %40, i32 0, i32 2
  %41 = load %struct._object*, %struct._object** %func_globals, align 8
  %42 = load %struct._object*, %struct._object** %arg.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 0
  %44 = load %struct._object*, %struct._object** %arg.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyVarObject*
  %ob_size28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %45, i32 0, i32 1
  %46 = load i64, i64* %ob_size28, align 8
  %conv = trunc i64 %46 to i32
  %47 = load %struct._object**, %struct._object*** %k, align 8
  %48 = load i64, i64* %nk, align 8
  %conv29 = trunc i64 %48 to i32
  %49 = load %struct._object**, %struct._object*** %d, align 8
  %50 = load i64, i64* %nd, align 8
  %conv30 = trunc i64 %50 to i32
  %51 = load %struct._object*, %struct._object** %func.addr, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyFunctionObject*
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %52, i32 0, i32 4
  %53 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  %54 = load %struct._object*, %struct._object** %func.addr, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyFunctionObject*
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %55, i32 0, i32 5
  %56 = load %struct._object*, %struct._object** %func_closure, align 8
  %call31 = call %struct._object* @PyEval_EvalCodeEx(%struct._object* %38, %struct._object* %41, %struct._object* null, %struct._object** %arrayidx27, i32 %conv, %struct._object** %47, i32 %conv29, %struct._object** %49, i32 %conv30, %struct._object* %53, %struct._object* %56)
  store %struct._object* %call31, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %57 = load %struct._object*, %struct._object** %kwtuple, align 8
  store %struct._object* %57, %struct._object** %_py_xdecref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp32 = icmp ne %struct._object* %58, null
  br i1 %cmp32, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %do.body
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt36, align 8
  %dec = add i64 %61, -1
  store i64 %dec, i64* %ob_refcnt36, align 8
  %cmp37 = icmp ne i64 %dec, 0
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.35
  br label %if.end.42

if.else.40:                                       ; preds = %do.body.35
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %64(%struct._object* %65)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.42
  br label %if.end.43

if.end.43:                                        ; preds = %do.end, %do.body
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %66 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %66, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.44, %if.then.11
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

; Function Attrs: nounwind uwtable
define internal i32 @func_traverse(%struct.PyFunctionObject* %f, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.PyFunctionObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  %vret52 = alloca i32, align 4
  %vret63 = alloca i32, align 4
  %vret74 = alloca i32, align 4
  %vret85 = alloca i32, align 4
  %vret96 = alloca i32, align 4
  %vret107 = alloca i32, align 4
  store %struct.PyFunctionObject* %f, %struct.PyFunctionObject** %f.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %func_code, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_code1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func_code1, align 8
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
  %8 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_globals = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %func_globals, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_globals9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %func_globals9, align 8
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
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_module = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %16, i32 0, i32 10
  %17 = load %struct._object*, %struct._object** %func_module, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_module20 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %19, i32 0, i32 10
  %20 = load %struct._object*, %struct._object** %func_module20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %24 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %func_defaults, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_defaults31 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %27, i32 0, i32 3
  %28 = load %struct._object*, %struct._object** %func_defaults31, align 8
  %29 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %26(%struct._object* %28, i8* %29)
  store i32 %call32, i32* %vret30, align 4
  %30 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %31 = load i32, i32* %vret30, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %32 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %32, i32 0, i32 4
  %33 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  %tobool39 = icmp ne %struct._object* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %34 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %35 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_kwdefaults42 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %35, i32 0, i32 4
  %36 = load %struct._object*, %struct._object** %func_kwdefaults42, align 8
  %37 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %34(%struct._object* %36, i8* %37)
  store i32 %call43, i32* %vret41, align 4
  %38 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %39 = load i32, i32* %vret41, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %40 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_doc = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %40, i32 0, i32 6
  %41 = load %struct._object*, %struct._object** %func_doc, align 8
  %tobool50 = icmp ne %struct._object* %41, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.49
  %42 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %43 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_doc53 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %43, i32 0, i32 6
  %44 = load %struct._object*, %struct._object** %func_doc53, align 8
  %45 = load i8*, i8** %arg.addr, align 8
  %call54 = call i32 %42(%struct._object* %44, i8* %45)
  store i32 %call54, i32* %vret52, align 4
  %46 = load i32, i32* %vret52, align 4
  %tobool55 = icmp ne i32 %46, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %47 = load i32, i32* %vret52, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %48 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %48, i32 0, i32 7
  %49 = load %struct._object*, %struct._object** %func_name, align 8
  %tobool61 = icmp ne %struct._object* %49, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %do.body.60
  %50 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %51 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_name64 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %51, i32 0, i32 7
  %52 = load %struct._object*, %struct._object** %func_name64, align 8
  %53 = load i8*, i8** %arg.addr, align 8
  %call65 = call i32 %50(%struct._object* %52, i8* %53)
  store i32 %call65, i32* %vret63, align 4
  %54 = load i32, i32* %vret63, align 4
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.62
  %55 = load i32, i32* %vret63, align 4
  store i32 %55, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.body.60
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %56 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_dict = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %56, i32 0, i32 8
  %57 = load %struct._object*, %struct._object** %func_dict, align 8
  %tobool72 = icmp ne %struct._object* %57, null
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %do.body.71
  %58 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %59 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_dict75 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %59, i32 0, i32 8
  %60 = load %struct._object*, %struct._object** %func_dict75, align 8
  %61 = load i8*, i8** %arg.addr, align 8
  %call76 = call i32 %58(%struct._object* %60, i8* %61)
  store i32 %call76, i32* %vret74, align 4
  %62 = load i32, i32* %vret74, align 4
  %tobool77 = icmp ne i32 %62, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.73
  %63 = load i32, i32* %vret74, align 4
  store i32 %63, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.body.71
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %64 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %64, i32 0, i32 5
  %65 = load %struct._object*, %struct._object** %func_closure, align 8
  %tobool83 = icmp ne %struct._object* %65, null
  br i1 %tobool83, label %if.then.84, label %if.end.91

if.then.84:                                       ; preds = %do.body.82
  %66 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %67 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_closure86 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %67, i32 0, i32 5
  %68 = load %struct._object*, %struct._object** %func_closure86, align 8
  %69 = load i8*, i8** %arg.addr, align 8
  %call87 = call i32 %66(%struct._object* %68, i8* %69)
  store i32 %call87, i32* %vret85, align 4
  %70 = load i32, i32* %vret85, align 4
  %tobool88 = icmp ne i32 %70, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.84
  %71 = load i32, i32* %vret85, align 4
  store i32 %71, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.body.82
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %72 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %72, i32 0, i32 11
  %73 = load %struct._object*, %struct._object** %func_annotations, align 8
  %tobool94 = icmp ne %struct._object* %73, null
  br i1 %tobool94, label %if.then.95, label %if.end.102

if.then.95:                                       ; preds = %do.body.93
  %74 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %75 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_annotations97 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %75, i32 0, i32 11
  %76 = load %struct._object*, %struct._object** %func_annotations97, align 8
  %77 = load i8*, i8** %arg.addr, align 8
  %call98 = call i32 %74(%struct._object* %76, i8* %77)
  store i32 %call98, i32* %vret96, align 4
  %78 = load i32, i32* %vret96, align 4
  %tobool99 = icmp ne i32 %78, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.95
  %79 = load i32, i32* %vret96, align 4
  store i32 %79, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.then.95
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %do.body.93
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %80 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %80, i32 0, i32 12
  %81 = load %struct._object*, %struct._object** %func_qualname, align 8
  %tobool105 = icmp ne %struct._object* %81, null
  br i1 %tobool105, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %do.body.104
  %82 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %83 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %f.addr, align 8
  %func_qualname108 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %83, i32 0, i32 12
  %84 = load %struct._object*, %struct._object** %func_qualname108, align 8
  %85 = load i8*, i8** %arg.addr, align 8
  %call109 = call i32 %82(%struct._object* %84, i8* %85)
  store i32 %call109, i32* %vret107, align 4
  %86 = load i32, i32* %vret107, align 4
  %tobool110 = icmp ne i32 %86, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.106
  %87 = load i32, i32* %vret107, align 4
  store i32 %87, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.then.106
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %do.body.104
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.114, %if.then.111, %if.then.100, %if.then.89, %if.then.78, %if.then.67, %if.then.56, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_descr_get(%struct._object* %func, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** %func.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %func.addr, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %func.addr, align 8
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyMethod_New(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
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
  %i = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %name, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %defaults, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %closure, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @func_new.kwlist, i32 0, i32 0), %struct._typeobject* @PyCode_Type, %struct.PyCodeObject** %code, %struct._typeobject* @PyDict_Type, %struct._object** %globals, %struct._object** %name, %struct._object** %defaults, %struct._object** %closure)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %name, align 8
  %cmp = icmp ne %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %name, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %7 = load %struct._object*, %struct._object** %defaults, align 8
  %cmp4 = icmp ne %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %defaults, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags7, align 8
  %and8 = and i64 %10, 67108864
  %cmp9 = icmp ne i64 %and8, 0
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.5
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.5, %if.end.3
  %12 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %12, i32 0, i32 10
  %13 = load %struct._object*, %struct._object** %co_freevars, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  store i64 %15, i64* %nfree, align 8
  %16 = load %struct._object*, %struct._object** %closure, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags13, align 8
  %and14 = and i64 %18, 67108864
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %if.end.25, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  %19 = load i64, i64* %nfree, align 8
  %tobool17 = icmp ne i64 %19, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %if.then.16
  %20 = load %struct._object*, %struct._object** %closure, align 8
  %cmp19 = icmp eq %struct._object* %20, @_Py_NoneStruct
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.18
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.18, %if.then.16
  %22 = load %struct._object*, %struct._object** %closure, align 8
  %cmp21 = icmp ne %struct._object* %22, @_Py_NoneStruct
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.11
  %24 = load %struct._object*, %struct._object** %closure, align 8
  %cmp26 = icmp eq %struct._object* %24, @_Py_NoneStruct
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %25 = load %struct._object*, %struct._object** %closure, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyVarObject*
  %ob_size27 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %26, i32 0, i32 1
  %27 = load i64, i64* %ob_size27, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %27, %cond.false ]
  store i64 %cond, i64* %nclosure, align 8
  %28 = load i64, i64* %nfree, align 8
  %29 = load i64, i64* %nclosure, align 8
  %cmp28 = icmp ne i64 %28, %29
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %cond.end
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %31 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %31, i32 0, i32 14
  %32 = load %struct._object*, %struct._object** %co_name, align 8
  %33 = load i64, i64* %nfree, align 8
  %34 = load i64, i64* %nclosure, align 8
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0), %struct._object* %32, i64 %33, i64 %34)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %cond.end
  %35 = load i64, i64* %nclosure, align 8
  %tobool32 = icmp ne i64 %35, 0
  br i1 %tobool32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %if.end.31
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %36 = load i64, i64* %i, align 8
  %37 = load i64, i64* %nclosure, align 8
  %cmp34 = icmp slt i64 %36, %37
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %i, align 8
  %39 = load %struct._object*, %struct._object** %closure, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %38
  %41 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %41, %struct._object** %o, align 8
  %42 = load %struct._object*, %struct._object** %o, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %cmp36 = icmp eq %struct._typeobject* %43, @PyCell_Type
  br i1 %cmp36, label %if.end.40, label %if.then.37

if.then.37:                                       ; preds = %for.body
  %44 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %45 = load %struct._object*, %struct._object** %o, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 1
  %47 = load i8*, i8** %tp_name, align 8
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0), i8* %47)
  store %struct._object* %call39, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %48 = load i64, i64* %i, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %if.end.31
  %49 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %50 = bitcast %struct.PyCodeObject* %49 to %struct._object*
  %51 = load %struct._object*, %struct._object** %globals, align 8
  %call42 = call %struct._object* @PyFunction_New(%struct._object* %50, %struct._object* %51)
  %52 = bitcast %struct._object* %call42 to %struct.PyFunctionObject*
  store %struct.PyFunctionObject* %52, %struct.PyFunctionObject** %newfunc, align 8
  %53 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8
  %cmp43 = icmp eq %struct.PyFunctionObject* %53, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.41
  %54 = load %struct._object*, %struct._object** %name, align 8
  %cmp46 = icmp ne %struct._object* %54, @_Py_NoneStruct
  br i1 %cmp46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.45
  %55 = load %struct._object*, %struct._object** %name, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt, align 8
  %inc48 = add i64 %56, 1
  store i64 %inc48, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.47
  %57 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %57, i32 0, i32 7
  %58 = load %struct._object*, %struct._object** %func_name, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt49, align 8
  %dec = add i64 %60, -1
  store i64 %dec, i64* %ob_refcnt49, align 8
  %cmp50 = icmp ne i64 %dec, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body
  br label %if.end.54

if.else.52:                                       ; preds = %do.body
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %63(%struct._object* %64)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end

do.end:                                           ; preds = %if.end.54
  %65 = load %struct._object*, %struct._object** %name, align 8
  %66 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8
  %func_name55 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %66, i32 0, i32 7
  store %struct._object* %65, %struct._object** %func_name55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %do.end, %if.end.45
  %67 = load %struct._object*, %struct._object** %defaults, align 8
  %cmp57 = icmp ne %struct._object* %67, @_Py_NoneStruct
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.56
  %68 = load %struct._object*, %struct._object** %defaults, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %69, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  %70 = load %struct._object*, %struct._object** %defaults, align 8
  %71 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %71, i32 0, i32 3
  store %struct._object* %70, %struct._object** %func_defaults, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.56
  %72 = load %struct._object*, %struct._object** %closure, align 8
  %cmp62 = icmp ne %struct._object* %72, @_Py_NoneStruct
  br i1 %cmp62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.61
  %73 = load %struct._object*, %struct._object** %closure, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt64, align 8
  %inc65 = add i64 %74, 1
  store i64 %inc65, i64* %ob_refcnt64, align 8
  %75 = load %struct._object*, %struct._object** %closure, align 8
  %76 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %76, i32 0, i32 5
  store %struct._object* %75, %struct._object** %func_closure, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.61
  %77 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %newfunc, align 8
  %78 = bitcast %struct.PyFunctionObject* %77 to %struct._object*
  store %struct._object* %78, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.44, %if.then.37, %if.then.29, %if.then.22, %if.then.20, %if.then.10, %if.then.2, %if.then
  %79 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %79
}

; Function Attrs: nounwind uwtable
define internal void @cm_dealloc(%struct.classmethod* %cm) #0 {
entry:
  %cm.addr = alloca %struct.classmethod*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %1 = bitcast %struct.classmethod* %0 to %struct._object*
  %2 = bitcast %struct._object* %1 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %3 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %4 = load i64, i64* %gc_refs, align 8
  %and = and i64 %4, 1
  %or = or i64 %and, -4
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %cm_callable, align 8
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
  %25 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %25, i32 0, i32 2
  %26 = load %struct._object*, %struct._object** %cm_dict, align 8
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
  %35 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %36 = bitcast %struct.classmethod* %35 to %struct._object*
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 38
  %38 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %39 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %40 = bitcast %struct.classmethod* %39 to %struct._object*
  %41 = bitcast %struct._object* %40 to i8*
  call void %38(i8* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cm_traverse(%struct.classmethod* %cm, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cm.addr = alloca %struct.classmethod*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %cm_callable, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_callable1 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %cm_callable1, align 8
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
  %8 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %cm_dict, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_dict9 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %cm_dict9, align 8
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
define internal i32 @cm_clear(%struct.classmethod* %cm) #0 {
entry:
  %cm.addr = alloca %struct.classmethod*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %cm_callable, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_callable1 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %cm_callable1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_dict = getelementptr inbounds %struct.classmethod, %struct.classmethod* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %cm_dict, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_dict11 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %14, i32 0, i32 2
  store %struct._object* null, %struct._object** %cm_dict11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cm_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %cm = alloca %struct.classmethod*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.classmethod*
  store %struct.classmethod* %1, %struct.classmethod** %cm, align 8
  %2 = load %struct.classmethod*, %struct.classmethod** %cm, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %cm_callable, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %type.addr, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %type.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.classmethod*, %struct.classmethod** %cm, align 8
  %cm_callable4 = getelementptr inbounds %struct.classmethod, %struct.classmethod* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %cm_callable4, align 8
  %11 = load %struct._object*, %struct._object** %type.addr, align 8
  %call = call %struct._object* @PyMethod_New(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.classmethod*
  store %struct.classmethod* %1, %struct.classmethod** %cm, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 1, %struct._object** %callable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct._object* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %callable, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %callable, align 8
  %7 = load %struct.classmethod*, %struct.classmethod** %cm, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %cm_callable, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyClassMethod_New(%struct._object* %callable) #0 {
entry:
  %callable.addr = alloca %struct._object*, align 8
  %cm = alloca %struct.classmethod*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyClassMethod_Type to %struct._typeobject*), i64 0)
  %0 = bitcast %struct._object* %call to %struct.classmethod*
  store %struct.classmethod* %0, %struct.classmethod** %cm, align 8
  %1 = load %struct.classmethod*, %struct.classmethod** %cm, align 8
  %cmp = icmp ne %struct.classmethod* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %callable.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %callable.addr, align 8
  %5 = load %struct.classmethod*, %struct.classmethod** %cm, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %cm_callable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.classmethod*, %struct.classmethod** %cm, align 8
  %7 = bitcast %struct.classmethod* %6 to %struct._object*
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal void @sm_dealloc(%struct.staticmethod* %sm) #0 {
entry:
  %sm.addr = alloca %struct.staticmethod*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %1 = bitcast %struct.staticmethod* %0 to %struct._object*
  %2 = bitcast %struct._object* %1 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %3 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %4 = load i64, i64* %gc_refs, align 8
  %and = and i64 %4, 1
  %or = or i64 %and, -4
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %sm_callable, align 8
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
  %25 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %25, i32 0, i32 2
  %26 = load %struct._object*, %struct._object** %sm_dict, align 8
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
  %35 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %36 = bitcast %struct.staticmethod* %35 to %struct._object*
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 38
  %38 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %39 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %40 = bitcast %struct.staticmethod* %39 to %struct._object*
  %41 = bitcast %struct._object* %40 to i8*
  call void %38(i8* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sm_traverse(%struct.staticmethod* %sm, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %sm.addr = alloca %struct.staticmethod*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %sm_callable, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_callable1 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %sm_callable1, align 8
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
  %8 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %sm_dict, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_dict9 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %sm_dict9, align 8
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
define internal i32 @sm_clear(%struct.staticmethod* %sm) #0 {
entry:
  %sm.addr = alloca %struct.staticmethod*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %sm_callable, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_callable1 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %sm_callable1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_dict = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %sm_dict, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_dict11 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %14, i32 0, i32 2
  store %struct._object* null, %struct._object** %sm_dict11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sm_descr_get(%struct._object* %self, %struct._object* %obj, %struct._object* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._object*, align 8
  %sm = alloca %struct.staticmethod*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.staticmethod*
  store %struct.staticmethod* %1, %struct.staticmethod** %sm, align 8
  %2 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %sm_callable, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %sm_callable1 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %sm_callable1, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %sm_callable2 = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %sm_callable2, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.staticmethod*
  store %struct.staticmethod* %1, %struct.staticmethod** %sm, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 1, %struct._object** %callable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._object* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %callable, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %callable, align 8
  %7 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %sm_callable, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyStaticMethod_New(%struct._object* %callable) #0 {
entry:
  %callable.addr = alloca %struct._object*, align 8
  %sm = alloca %struct.staticmethod*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyStaticMethod_Type to %struct._typeobject*), i64 0)
  %0 = bitcast %struct._object* %call to %struct.staticmethod*
  store %struct.staticmethod* %0, %struct.staticmethod** %sm, align 8
  %1 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %cmp = icmp ne %struct.staticmethod* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %callable.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %callable.addr, align 8
  %5 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %sm_callable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.staticmethod*, %struct.staticmethod** %sm, align 8
  %7 = bitcast %struct.staticmethod* %6 to %struct._object*
  ret %struct._object* %7
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i64 @PyDict_Size(%struct._object*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare %struct._object* @PyEval_EvalCodeEx(%struct._object*, %struct._object*, %struct._object*, %struct._object**, i32, %struct._object**, i32, %struct._object**, i32, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_code(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %func_code, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_code1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func_code1, align 8
  ret %struct._object* %4
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %2, @PyCode_Type
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %value.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyCodeObject*
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %5, i32 0, i32 10
  %6 = load %struct._object*, %struct._object** %co_freevars, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %nfree, align 8
  %9 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_closure = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %9, i32 0, i32 5
  %10 = load %struct._object*, %struct._object** %func_closure, align 8
  %cmp4 = icmp eq %struct._object* %10, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_closure5 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %11, i32 0, i32 5
  %12 = load %struct._object*, %struct._object** %func_closure5, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %14, %cond.false ]
  store i64 %cond, i64* %nclosure, align 8
  %15 = load i64, i64* %nclosure, align 8
  %16 = load i64, i64* %nfree, align 8
  %cmp7 = icmp ne i64 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %18 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %18, i32 0, i32 7
  %19 = load %struct._object*, %struct._object** %func_name, align 8
  %20 = load i64, i64* %nclosure, align 8
  %21 = load i64, i64* %nfree, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), %struct._object* %19, i64 %20, i64 %21)
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %cond.end
  %22 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_code = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %func_code, align 8
  store %struct._object* %23, %struct._object** %tmp, align 8
  %24 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %26 = load %struct._object*, %struct._object** %value.addr, align 8
  %27 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_code10 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %27, i32 0, i32 1
  store %struct._object* %26, %struct._object** %func_code10, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %28 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_defaults(%struct.PyFunctionObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %func_defaults, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_defaults1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %func_defaults1, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc2 = add i64 %5, 1
  store i64 %inc2, i64* %ob_refcnt, align 8
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_defaults3 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %func_defaults3, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_defaults(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp1 = icmp ne %struct._object* %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_defaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %func_defaults, align 8
  store %struct._object* %7, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %8, %struct._object** %_py_xincref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %13 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_defaults9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %13, i32 0, i32 3
  store %struct._object* %12, %struct._object** %func_defaults9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %14 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.14
  br label %if.end.20

if.else:                                          ; preds = %do.body.14
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.10
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.3
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_kwdefaults(%struct.PyFunctionObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_kwdefaults1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %func_kwdefaults1, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc2 = add i64 %5, 1
  store i64 %inc2, i64* %ob_refcnt, align 8
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_kwdefaults3 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %func_kwdefaults3, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_kwdefaults(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp1 = icmp ne %struct._object* %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 536870912
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_kwdefaults = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %func_kwdefaults, align 8
  store %struct._object* %7, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %8, %struct._object** %_py_xincref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %13 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_kwdefaults9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %13, i32 0, i32 4
  store %struct._object* %12, %struct._object** %func_kwdefaults9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %14 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.14
  br label %if.end.20

if.else:                                          ; preds = %do.body.14
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.10
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.3
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_annotations(%struct.PyFunctionObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 11
  %1 = load %struct._object*, %struct._object** %func_annotations, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  %2 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %2, i32 0, i32 11
  store %struct._object* %call, %struct._object** %func_annotations1, align 8
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations2 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 11
  %4 = load %struct._object*, %struct._object** %func_annotations2, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations6 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %5, i32 0, i32 11
  %6 = load %struct._object*, %struct._object** %func_annotations6, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations7 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %8, i32 0, i32 11
  %9 = load %struct._object*, %struct._object** %func_annotations7, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_annotations(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp1 = icmp ne %struct._object* %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 536870912
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %6, i32 0, i32 11
  %7 = load %struct._object*, %struct._object** %func_annotations, align 8
  store %struct._object* %7, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %8, %struct._object** %_py_xincref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %13 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_annotations9 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %13, i32 0, i32 11
  store %struct._object* %12, %struct._object** %func_annotations9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %14 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.14
  br label %if.end.20

if.else:                                          ; preds = %do.body.14
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.10
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.3
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #1

declare i32 @PyObject_GenericSetDict(%struct._object*, %struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_name(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %func_name, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_name1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %func_name1, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_name(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_name = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %5, i32 0, i32 7
  %6 = load %struct._object*, %struct._object** %func_name, align 8
  store %struct._object* %6, %struct._object** %tmp, align 8
  %7 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %10 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_name2 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %10, i32 0, i32 7
  store %struct._object* %9, %struct._object** %func_name2, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @func_get_qualname(%struct.PyFunctionObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  %0 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %0, i32 0, i32 12
  %1 = load %struct._object*, %struct._object** %func_qualname, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_qualname1 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %3, i32 0, i32 12
  %4 = load %struct._object*, %struct._object** %func_qualname1, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @func_set_qualname(%struct.PyFunctionObject* %op, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyFunctionObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyFunctionObject* %op, %struct.PyFunctionObject** %op.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_qualname = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %5, i32 0, i32 12
  %6 = load %struct._object*, %struct._object** %func_qualname, align 8
  store %struct._object* %6, %struct._object** %tmp, align 8
  %7 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %10 = load %struct.PyFunctionObject*, %struct.PyFunctionObject** %op.addr, align 8
  %func_qualname2 = getelementptr inbounds %struct.PyFunctionObject, %struct.PyFunctionObject* %10, i32 0, i32 12
  store %struct._object* %9, %struct._object** %func_qualname2, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyMethod_New(%struct._object*, %struct._object*) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @cm_get___isabstractmethod__(%struct.classmethod* %cm, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cm.addr = alloca %struct.classmethod*, align 8
  %closure.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  store %struct.classmethod* %cm, %struct.classmethod** %cm.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.classmethod*, %struct.classmethod** %cm.addr, align 8
  %cm_callable = getelementptr inbounds %struct.classmethod, %struct.classmethod* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %cm_callable, align 8
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
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc3 = add i64 %5, 1
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

declare i32 @_PyObject_IsAbstract(%struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @sm_get___isabstractmethod__(%struct.staticmethod* %sm, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %sm.addr = alloca %struct.staticmethod*, align 8
  %closure.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  store %struct.staticmethod* %sm, %struct.staticmethod** %sm.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.staticmethod*, %struct.staticmethod** %sm.addr, align 8
  %sm_callable = getelementptr inbounds %struct.staticmethod, %struct.staticmethod* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %sm_callable, align 8
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
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc3 = add i64 %5, 1
  store i64 %inc3, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
