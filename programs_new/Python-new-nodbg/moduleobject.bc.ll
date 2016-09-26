; ModuleID = './moduleobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyModuleObject = type { %struct._object, %struct._object*, %struct.PyModuleDef*, i8*, %struct._object*, %struct._object* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._frame = type opaque
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [40 x i8] c"Python import machinery not initialized\00", align 1
@max_module_number = internal global i64 0, align 8
@PyExc_RuntimeWarning = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [111 x i8] c"Python C API version mismatch for module %.100s: This Python has API version %d, module %.100s has version %d.\00", align 1
@_Py_PackageContext = external global i8*, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"module functions cannot set METH_CLASS or METH_STATIC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Objects/moduleobject.c\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"nameless module\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"module filename missing\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@Py_VerboseFlag = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"#   clear[1] %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"#   clear[2] %s\0A\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@module_doc = internal global [117 x i8] c"module(name[, doc])\0A\0ACreate a module object.\0AThe name must be a string; the optional doc argument can have any type.\00", align 16
@module_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @module_dir, i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@module_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@PyModule_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.PyModuleObject*)* @module_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyModuleObject*)* @module_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @module_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyModuleObject*, i32 (%struct._object*, i8*)*, i8*)* @module_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyModuleObject*)* @module_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @module_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyModuleObject*, %struct._object*, %struct._object*)* @module_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"__package__\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__spec__\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"moduledef\00", align 1
@moduledef_type = internal global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 0, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"# destroy %S\0A\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"_module_repr\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"__dir__\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"__dir__() -> list\0Aspecialized dir() implementation\00", align 1
@module_dir.PyId___dict__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* null }, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.23 = private unnamed_addr constant [36 x i8] c"%.200s.__dict__ is not a dictionary\00", align 1
@module_init.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"U|O:module.__init__\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_NewObject(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %m = alloca %struct.PyModuleObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*))
  %0 = bitcast %struct._object* %call to %struct.PyModuleObject*
  store %struct.PyModuleObject* %0, %struct.PyModuleObject** %m, align 8
  %1 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %cmp = icmp eq %struct.PyModuleObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 2
  store %struct.PyModuleDef* null, %struct.PyModuleDef** %md_def, align 8
  %3 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %3, i32 0, i32 3
  store i8* null, i8** %md_state, align 8
  %4 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_weaklist = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %4, i32 0, i32 4
  store %struct._object* null, %struct._object** %md_weaklist, align 8
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 5
  store %struct._object* null, %struct._object** %md_name, align 8
  %call1 = call %struct._object* @PyDict_New()
  %6 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %6, i32 0, i32 1
  store %struct._object* %call1, %struct._object** %md_dict, align 8
  %7 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %8 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_dict2 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %md_dict2, align 8
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %call3 = call i32 @module_init_dict(%struct.PyModuleObject* %7, %struct._object* %9, %struct._object* %10, %struct._object* null)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %fail

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %12 = bitcast %struct.PyModuleObject* %11 to i8*
  call void @PyObject_GC_Track(i8* %12)
  %13 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %14 = bitcast %struct.PyModuleObject* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %fail
  %15 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %16 = bitcast %struct.PyModuleObject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.6, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define internal i32 @module_init_dict(%struct.PyModuleObject* %mod, %struct._object* %md_dict, %struct._object* %name, %struct._object* %doc) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct.PyModuleObject*, align 8
  %md_dict.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %doc.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleObject* %mod, %struct.PyModuleObject** %mod.addr, align 8
  store %struct._object* %md_dict, %struct._object** %md_dict.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %doc, %struct._object** %doc.addr, align 8
  %0 = load %struct._object*, %struct._object** %md_dict.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %doc.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct._object*, %struct._object** %md_dict.addr, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @PyDict_SetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* %3)
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %md_dict.addr, align 8
  %5 = load %struct._object*, %struct._object** %doc.addr, align 8
  %call7 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* %5)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct._object*, %struct._object** %md_dict.addr, align 8
  %call11 = call i32 @PyDict_SetItemString(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %7 = load %struct._object*, %struct._object** %md_dict.addr, align 8
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %8 = load %struct._object*, %struct._object** %md_dict.addr, align 8
  %call19 = call i32 @PyDict_SetItemString(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %9 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp23 = icmp eq %struct._typeobject* %10, @PyUnicode_Type
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.end.22
  %11 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %13 = load %struct.PyModuleObject*, %struct.PyModuleObject** %mod.addr, align 8
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %13, i32 0, i32 5
  %14 = load %struct._object*, %struct._object** %md_name, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp25 = icmp ne %struct._object* %15, null
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %do.body
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt28, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt28, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body.27
  br label %if.end.32

if.else:                                          ; preds = %do.body.27
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._object*, %struct._object** %name.addr, align 8
  %24 = load %struct.PyModuleObject*, %struct.PyModuleObject** %mod.addr, align 8
  %md_name35 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %24, i32 0, i32 5
  store %struct._object* %23, %struct._object** %md_name35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.34, %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.21, %if.then.17, %if.then.13, %if.then.9, %if.then.5, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @PyObject_GC_Track(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_New(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %nameobj = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %nameobj, align 8
  %call1 = call %struct._object* @PyModule_NewObject(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %module, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_Create2(%struct.PyModuleDef* %module, i32 %module_api_version) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %module_api_version.addr = alloca i32, align 4
  %d = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %n = alloca %struct._object*, align 8
  %ml = alloca %struct.PyMethodDef*, align 8
  %name = alloca i8*, align 8
  %m = alloca %struct.PyModuleObject*, align 8
  %interp = alloca %struct._is*, align 8
  %err = alloca i32, align 4
  %p = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %_py_decref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %_py_decref_tmp163 = alloca %struct._object*, align 8
  %_py_decref_tmp174 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp198 = alloca %struct._object*, align 8
  %_py_decref_tmp211 = alloca %struct._object*, align 8
  %_py_decref_tmp223 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store i32 %module_api_version, i32* %module_api_version.addr, align 4
  %call = call %struct._ts* @PyThreadState_Get()
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i32 0, i32 2
  %0 = load %struct._is*, %struct._is** %interp1, align 8
  store %struct._is* %0, %struct._is** %interp, align 8
  %1 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %modules, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type to %struct._typeobject*))
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %3, i32 0, i32 0
  %m_index = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 2
  %4 = load i64, i64* %m_index, align 8
  %cmp6 = icmp eq i64 %4, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.5
  %5 = load i64, i64* @max_module_number, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* @max_module_number, align 8
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %7 = bitcast %struct.PyModuleDef* %6 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %8 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %9 = bitcast %struct.PyModuleDef* %8 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type to %struct._typeobject*), %struct._typeobject** %ob_type, align 8
  %10 = load i64, i64* @max_module_number, align 8
  %11 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_base8 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %11, i32 0, i32 0
  %m_index9 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base8, i32 0, i32 2
  store i64 %10, i64* %m_index9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.5
  %12 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_name = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_name, align 8
  store i8* %13, i8** %name, align 8
  %14 = load i32, i32* %module_api_version.addr, align 4
  %cmp11 = icmp ne i32 %14, 1013
  br i1 %cmp11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %15 = load i32, i32* %module_api_version.addr, align 4
  %cmp12 = icmp ne i32 %15, 3
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %16 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %17 = load i8*, i8** %name, align 8
  %18 = load i8*, i8** %name, align 8
  %19 = load i32, i32* %module_api_version.addr, align 4
  %call14 = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %16, i64 1, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i32 0, i32 0), i8* %17, i32 1013, i8* %18, i32 %19)
  store i32 %call14, i32* %err, align 4
  %20 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %if.end.10
  %21 = load i8*, i8** @_Py_PackageContext, align 8
  %cmp18 = icmp ne i8* %21, null
  br i1 %cmp18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %if.end.17
  %22 = load i8*, i8** @_Py_PackageContext, align 8
  %call20 = call i8* @strrchr(i8* %22, i32 46) #7
  store i8* %call20, i8** %p, align 8
  %23 = load i8*, i8** %p, align 8
  %cmp21 = icmp ne i8* %23, null
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %if.then.19
  %24 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_name23 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %24, i32 0, i32 1
  %25 = load i8*, i8** %m_name23, align 8
  %26 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %26, i64 1
  %call24 = call i32 @strcmp(i8* %25, i8* %add.ptr) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.22
  %27 = load i8*, i8** @_Py_PackageContext, align 8
  store i8* %27, i8** %name, align 8
  store i8* null, i8** @_Py_PackageContext, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.22, %if.then.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.17
  %28 = load i8*, i8** %name, align 8
  %call29 = call %struct._object* @PyModule_New(i8* %28)
  %29 = bitcast %struct._object* %call29 to %struct.PyModuleObject*
  store %struct.PyModuleObject* %29, %struct.PyModuleObject** %m, align 8
  %cmp30 = icmp eq %struct.PyModuleObject* %29, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %30 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_size = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %30, i32 0, i32 3
  %31 = load i64, i64* %m_size, align 8
  %cmp33 = icmp sgt i64 %31, 0
  br i1 %cmp33, label %if.then.34, label %if.end.49

if.then.34:                                       ; preds = %if.end.32
  %32 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_size35 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %32, i32 0, i32 3
  %33 = load i64, i64* %m_size35, align 8
  %call36 = call i8* @PyMem_Malloc(i64 %33)
  %34 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %34, i32 0, i32 3
  store i8* %call36, i8** %md_state, align 8
  %35 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_state37 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %35, i32 0, i32 3
  %36 = load i8*, i8** %md_state37, align 8
  %tobool38 = icmp ne i8* %36, null
  br i1 %tobool38, label %if.end.46, label %if.then.39

if.then.39:                                       ; preds = %if.then.34
  %call40 = call %struct._object* @PyErr_NoMemory()
  br label %do.body

do.body:                                          ; preds = %if.then.39
  %37 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %38 = bitcast %struct.PyModuleObject* %37 to %struct._object*
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt41, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %ob_refcnt41, align 8
  %cmp42 = icmp ne i64 %dec, 0
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %do.body
  br label %if.end.45

if.else:                                          ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.43
  br label %do.end

do.end:                                           ; preds = %if.end.45
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.34
  %45 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_state47 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %45, i32 0, i32 3
  %46 = load i8*, i8** %md_state47, align 8
  %47 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_size48 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %47, i32 0, i32 3
  %48 = load i64, i64* %m_size48, align 8
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 %48, i32 1, i1 false)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.46, %if.end.32
  %49 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %50 = bitcast %struct.PyModuleObject* %49 to %struct._object*
  %call50 = call %struct._object* @PyModule_GetDict(%struct._object* %50)
  store %struct._object* %call50, %struct._object** %d, align 8
  %51 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_methods = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %51, i32 0, i32 4
  %52 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_methods, align 8
  %cmp51 = icmp ne %struct.PyMethodDef* %52, null
  br i1 %cmp51, label %if.then.52, label %if.end.184

if.then.52:                                       ; preds = %if.end.49
  %53 = load i8*, i8** %name, align 8
  %call53 = call %struct._object* @PyUnicode_FromString(i8* %53)
  store %struct._object* %call53, %struct._object** %n, align 8
  %54 = load %struct._object*, %struct._object** %n, align 8
  %cmp54 = icmp eq %struct._object* %54, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %if.then.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %55 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %56 = bitcast %struct.PyModuleObject* %55 to %struct._object*
  store %struct._object* %56, %struct._object** %_py_decref_tmp57, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %58, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %61(%struct._object* %62)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.then.52
  %63 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_methods68 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %63, i32 0, i32 4
  %64 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_methods68, align 8
  store %struct.PyMethodDef* %64, %struct.PyMethodDef** %ml, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.67
  %65 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %65, i32 0, i32 0
  %66 = load i8*, i8** %ml_name, align 8
  %cmp69 = icmp ne i8* %66, null
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %67, i32 0, i32 2
  %68 = load i32, i32* %ml_flags, align 4
  %and = and i32 %68, 16
  %tobool70 = icmp ne i32 %and, 0
  br i1 %tobool70, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %69 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8
  %ml_flags71 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %69, i32 0, i32 2
  %70 = load i32, i32* %ml_flags71, align 4
  %and72 = and i32 %70, 32
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.97

if.then.74:                                       ; preds = %lor.lhs.false, %for.body
  %71 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %72 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp76, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %74, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %77(%struct._object* %78)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %79 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %80 = bitcast %struct.PyModuleObject* %79 to %struct._object*
  store %struct._object* %80, %struct._object** %_py_decref_tmp87, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt88, align 8
  %dec89 = add i64 %82, -1
  store i64 %dec89, i64* %ob_refcnt88, align 8
  %cmp90 = icmp ne i64 %dec89, 0
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %do.body.86
  br label %if.end.95

if.else.92:                                       ; preds = %do.body.86
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  call void %85(%struct._object* %86)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false
  %87 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8
  %88 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %89 = bitcast %struct.PyModuleObject* %88 to %struct._object*
  %90 = load %struct._object*, %struct._object** %n, align 8
  %call98 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %87, %struct._object* %89, %struct._object* %90)
  store %struct._object* %call98, %struct._object** %v, align 8
  %91 = load %struct._object*, %struct._object** %v, align 8
  %cmp99 = icmp eq %struct._object* %91, null
  br i1 %cmp99, label %if.then.100, label %if.end.123

if.then.100:                                      ; preds = %if.end.97
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  %92 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp102, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %94, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %97(%struct._object* %98)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %do.body.112

do.body.112:                                      ; preds = %do.end.111
  %99 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %100 = bitcast %struct.PyModuleObject* %99 to %struct._object*
  store %struct._object* %100, %struct._object** %_py_decref_tmp113, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %102, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %do.body.112
  br label %if.end.121

if.else.118:                                      ; preds = %do.body.112
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %105(%struct._object* %106)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.123:                                       ; preds = %if.end.97
  %107 = load %struct._object*, %struct._object** %d, align 8
  %108 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8
  %ml_name124 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %108, i32 0, i32 0
  %109 = load i8*, i8** %ml_name124, align 8
  %110 = load %struct._object*, %struct._object** %v, align 8
  %call125 = call i32 @PyDict_SetItemString(%struct._object* %107, i8* %109, %struct._object* %110)
  %cmp126 = icmp ne i32 %call125, 0
  br i1 %cmp126, label %if.then.127, label %if.end.161

if.then.127:                                      ; preds = %if.end.123
  br label %do.body.128

do.body.128:                                      ; preds = %if.then.127
  %111 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp129, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt130, align 8
  %dec131 = add i64 %113, -1
  store i64 %dec131, i64* %ob_refcnt130, align 8
  %cmp132 = icmp ne i64 %dec131, 0
  br i1 %cmp132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %do.body.128
  br label %if.end.137

if.else.134:                                      ; preds = %do.body.128
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  call void %116(%struct._object* %117)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  %118 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %118, %struct._object** %_py_decref_tmp140, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0
  %120 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %120, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.139
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.139
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %123(%struct._object* %124)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %do.body.150

do.body.150:                                      ; preds = %do.end.149
  %125 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %126 = bitcast %struct.PyModuleObject* %125 to %struct._object*
  store %struct._object* %126, %struct._object** %_py_decref_tmp151, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt152, align 8
  %dec153 = add i64 %128, -1
  store i64 %dec153, i64* %ob_refcnt152, align 8
  %cmp154 = icmp ne i64 %dec153, 0
  br i1 %cmp154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.150
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.150
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  call void %131(%struct._object* %132)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.161:                                       ; preds = %if.end.123
  br label %do.body.162

do.body.162:                                      ; preds = %if.end.161
  %133 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %133, %struct._object** %_py_decref_tmp163, align 8
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 0
  %135 = load i64, i64* %ob_refcnt164, align 8
  %dec165 = add i64 %135, -1
  store i64 %dec165, i64* %ob_refcnt164, align 8
  %cmp166 = icmp ne i64 %dec165, 0
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %do.body.162
  br label %if.end.171

if.else.168:                                      ; preds = %do.body.162
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 1
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i32 0, i32 4
  %138 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  call void %138(%struct._object* %139)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  br label %for.inc

for.inc:                                          ; preds = %do.end.172
  %140 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8
  %incdec.ptr = getelementptr %struct.PyMethodDef, %struct.PyMethodDef* %140, i32 1
  store %struct.PyMethodDef* %incdec.ptr, %struct.PyMethodDef** %ml, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.173

do.body.173:                                      ; preds = %for.end
  %141 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %141, %struct._object** %_py_decref_tmp174, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp174, align 8
  %ob_refcnt175 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 0
  %143 = load i64, i64* %ob_refcnt175, align 8
  %dec176 = add i64 %143, -1
  store i64 %dec176, i64* %ob_refcnt175, align 8
  %cmp177 = icmp ne i64 %dec176, 0
  br i1 %cmp177, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %do.body.173
  br label %if.end.182

if.else.179:                                      ; preds = %do.body.173
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp174, align 8
  %ob_type180 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 1
  %145 = load %struct._typeobject*, %struct._typeobject** %ob_type180, align 8
  %tp_dealloc181 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %145, i32 0, i32 4
  %146 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc181, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp174, align 8
  call void %146(%struct._object* %147)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.178
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  br label %if.end.184

if.end.184:                                       ; preds = %do.end.183, %if.end.49
  %148 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_doc = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %148, i32 0, i32 2
  %149 = load i8*, i8** %m_doc, align 8
  %cmp185 = icmp ne i8* %149, null
  br i1 %cmp185, label %if.then.186, label %if.end.233

if.then.186:                                      ; preds = %if.end.184
  %150 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %m_doc187 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %150, i32 0, i32 2
  %151 = load i8*, i8** %m_doc187, align 8
  %call188 = call %struct._object* @PyUnicode_FromString(i8* %151)
  store %struct._object* %call188, %struct._object** %v, align 8
  %152 = load %struct._object*, %struct._object** %v, align 8
  %cmp189 = icmp eq %struct._object* %152, null
  br i1 %cmp189, label %if.then.193, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %if.then.186
  %153 = load %struct._object*, %struct._object** %d, align 8
  %154 = load %struct._object*, %struct._object** %v, align 8
  %call191 = call i32 @PyDict_SetItemString(%struct._object* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* %154)
  %cmp192 = icmp ne i32 %call191, 0
  br i1 %cmp192, label %if.then.193, label %if.end.221

if.then.193:                                      ; preds = %lor.lhs.false.190, %if.then.186
  br label %do.body.194

do.body.194:                                      ; preds = %if.then.193
  %155 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %155, %struct._object** %_py_xdecref_tmp, align 8
  %156 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp195 = icmp ne %struct._object* %156, null
  br i1 %cmp195, label %if.then.196, label %if.end.208

if.then.196:                                      ; preds = %do.body.194
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  %157 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %157, %struct._object** %_py_decref_tmp198, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 0
  %159 = load i64, i64* %ob_refcnt199, align 8
  %dec200 = add i64 %159, -1
  store i64 %dec200, i64* %ob_refcnt199, align 8
  %cmp201 = icmp ne i64 %dec200, 0
  br i1 %cmp201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %do.body.197
  br label %if.end.206

if.else.203:                                      ; preds = %do.body.197
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_type204 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 1
  %161 = load %struct._typeobject*, %struct._typeobject** %ob_type204, align 8
  %tp_dealloc205 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %161, i32 0, i32 4
  %162 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc205, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  call void %162(%struct._object* %163)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.202
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %if.end.208

if.end.208:                                       ; preds = %do.end.207, %do.body.194
  br label %do.end.209

do.end.209:                                       ; preds = %if.end.208
  br label %do.body.210

do.body.210:                                      ; preds = %do.end.209
  %164 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %165 = bitcast %struct.PyModuleObject* %164 to %struct._object*
  store %struct._object* %165, %struct._object** %_py_decref_tmp211, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp211, align 8
  %ob_refcnt212 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0
  %167 = load i64, i64* %ob_refcnt212, align 8
  %dec213 = add i64 %167, -1
  store i64 %dec213, i64* %ob_refcnt212, align 8
  %cmp214 = icmp ne i64 %dec213, 0
  br i1 %cmp214, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %do.body.210
  br label %if.end.219

if.else.216:                                      ; preds = %do.body.210
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp211, align 8
  %ob_type217 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 1
  %169 = load %struct._typeobject*, %struct._typeobject** %ob_type217, align 8
  %tp_dealloc218 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %169, i32 0, i32 4
  %170 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc218, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp211, align 8
  call void %170(%struct._object* %171)
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.then.215
  br label %do.end.220

do.end.220:                                       ; preds = %if.end.219
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.221:                                       ; preds = %lor.lhs.false.190
  br label %do.body.222

do.body.222:                                      ; preds = %if.end.221
  %172 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %172, %struct._object** %_py_decref_tmp223, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  %ob_refcnt224 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 0
  %174 = load i64, i64* %ob_refcnt224, align 8
  %dec225 = add i64 %174, -1
  store i64 %dec225, i64* %ob_refcnt224, align 8
  %cmp226 = icmp ne i64 %dec225, 0
  br i1 %cmp226, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %do.body.222
  br label %if.end.231

if.else.228:                                      ; preds = %do.body.222
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  %ob_type229 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 1
  %176 = load %struct._typeobject*, %struct._typeobject** %ob_type229, align 8
  %tp_dealloc230 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %176, i32 0, i32 4
  %177 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc230, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  call void %177(%struct._object* %178)
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.228, %if.then.227
  br label %do.end.232

do.end.232:                                       ; preds = %if.end.231
  br label %if.end.233

if.end.233:                                       ; preds = %do.end.232, %if.end.184
  %179 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %180 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %180, i32 0, i32 2
  store %struct.PyModuleDef* %179, %struct.PyModuleDef** %md_def, align 8
  %181 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8
  %182 = bitcast %struct.PyModuleObject* %181 to %struct._object*
  store %struct._object* %182, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.233, %do.end.220, %do.end.160, %do.end.122, %do.end.96, %do.end.66, %do.end, %if.then.31, %if.then.15, %if.then.4
  %183 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %183
}

declare %struct._ts* @PyThreadState_Get() #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetDict(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 205)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %6, %struct._object** %d, align 8
  %7 = load %struct._object*, %struct._object** %d, align 8
  %cmp2 = icmp eq %struct._object* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyDict_New()
  store %struct._object* %call4, %struct._object** %d, align 8
  %8 = load %struct._object*, %struct._object** %m.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyModuleObject*
  %md_dict5 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %9, i32 0, i32 1
  store %struct._object* %call4, %struct._object** %md_dict5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetNameObject(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %6, %struct._object** %d, align 8
  %7 = load %struct._object*, %struct._object** %d, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %d, align 8
  %call5 = call %struct._object* @PyDict_GetItemString(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %name, align 8
  %cmp6 = icmp eq %struct._object* %call5, null
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %9 = load %struct._object*, %struct._object** %name, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 268435456
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.7
  %13 = load %struct._object*, %struct._object** %name, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @PyErr_BadArgument() #1

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetName(%struct._object* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call %struct._object* @PyModule_GetNameObject(%struct._object* %0)
  store %struct._object* %call, %struct._object** %name, align 8
  %1 = load %struct._object*, %struct._object** %name, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %name, align 8
  %call4 = call i8* @PyUnicode_AsUTF8(%struct._object* %9)
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetFilenameObject(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %fileobj = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %6, %struct._object** %d, align 8
  %7 = load %struct._object*, %struct._object** %d, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %d, align 8
  %call5 = call %struct._object* @PyDict_GetItemString(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %fileobj, align 8
  %cmp6 = icmp eq %struct._object* %call5, null
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %9 = load %struct._object*, %struct._object** %fileobj, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 268435456
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.7
  %13 = load %struct._object*, %struct._object** %fileobj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct._object*, %struct._object** %fileobj, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetFilename(%struct._object* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct._object*, align 8
  %fileobj = alloca %struct._object*, align 8
  %utf8 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call %struct._object* @PyModule_GetFilenameObject(%struct._object* %0)
  store %struct._object* %call, %struct._object** %fileobj, align 8
  %1 = load %struct._object*, %struct._object** %fileobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %fileobj, align 8
  %call1 = call i8* @PyUnicode_AsUTF8(%struct._object* %2)
  store i8* %call1, i8** %utf8, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %fileobj, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i8*, i8** %utf8, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct.PyModuleDef*, align 8
  %m.addr = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument()
  store %struct.PyModuleDef* null, %struct.PyModuleDef** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 2
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8
  store %struct.PyModuleDef* %6, %struct.PyModuleDef** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.PyModuleDef*, %struct.PyModuleDef** %retval
  ret %struct.PyModuleDef* %7
}

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetState(%struct._object* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument()
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 3
  %6 = load i8*, i8** %md_state, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define void @_PyModule_Clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyModuleObject*
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %2, %struct._object** %d, align 8
  %3 = load %struct._object*, %struct._object** %d, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %d, align 8
  call void @_PyModule_ClearDict(%struct._object* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyModule_ClearDict(%struct._object* %d) #0 {
entry:
  %d.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %s304 = alloca i8*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.190, %entry
  %0 = load %struct._object*, %struct._object** %d.addr, align 8
  %call = call i32 @PyDict_Next(%struct._object* %0, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._object*, %struct._object** %value, align 8
  %cmp = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %land.lhs.true, label %if.end.190

land.lhs.true:                                    ; preds = %while.body
  %2 = load %struct._object*, %struct._object** %key, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.190

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** %key, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp2 = icmp eq i32 %bf.clear, 1
  br i1 %cmp2, label %cond.true, label %cond.false.19

cond.true:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %key, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state3 to i32*
  %bf.load4 = load i32, i32* %10, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 5
  %bf.clear6 = and i32 %bf.lshr5, 1
  %tobool7 = icmp ne i32 %bf.clear6, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.16

cond.true.8:                                      ; preds = %cond.true
  %11 = load %struct._object*, %struct._object** %key, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state9 to i32*
  %bf.load10 = load i32, i32* %13, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 6
  %bf.clear12 = and i32 %bf.lshr11, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %cond.true.8
  %14 = load %struct._object*, %struct._object** %key, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i64 1
  %16 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.8
  %17 = load %struct._object*, %struct._object** %key, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyCompactUnicodeObject*
  %add.ptr15 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %18, i64 1
  %19 = bitcast %struct.PyCompactUnicodeObject* %add.ptr15 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi i8* [ %16, %cond.true.14 ], [ %19, %cond.false ]
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.true
  %20 = load %struct._object*, %struct._object** %key, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %21, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %22 = load i8*, i8** %any, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi i8* [ %cond, %cond.end ], [ %22, %cond.false.16 ]
  %arrayidx = getelementptr i8, i8* %cond18, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %23 to i32
  br label %cond.end.77

cond.false.19:                                    ; preds = %if.then
  %24 = load %struct._object*, %struct._object** %key, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3
  %26 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %26, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  %cmp24 = icmp eq i32 %bf.clear23, 2
  br i1 %cmp24, label %cond.true.26, label %cond.false.51

cond.true.26:                                     ; preds = %cond.false.19
  %27 = load %struct._object*, %struct._object** %key, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*
  %state27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 3
  %29 = bitcast %struct.anon* %state27 to i32*
  %bf.load28 = load i32, i32* %29, align 4
  %bf.lshr29 = lshr i32 %bf.load28, 5
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.44

cond.true.32:                                     ; preds = %cond.true.26
  %30 = load %struct._object*, %struct._object** %key, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyASCIIObject*
  %state33 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %31, i32 0, i32 3
  %32 = bitcast %struct.anon* %state33 to i32*
  %bf.load34 = load i32, i32* %32, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 6
  %bf.clear36 = and i32 %bf.lshr35, 1
  %tobool37 = icmp ne i32 %bf.clear36, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.true.32
  %33 = load %struct._object*, %struct._object** %key, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %add.ptr39 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i64 1
  %35 = bitcast %struct.PyASCIIObject* %add.ptr39 to i8*
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.true.32
  %36 = load %struct._object*, %struct._object** %key, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyCompactUnicodeObject*
  %add.ptr41 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %37, i64 1
  %38 = bitcast %struct.PyCompactUnicodeObject* %add.ptr41 to i8*
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.38
  %cond43 = phi i8* [ %35, %cond.true.38 ], [ %38, %cond.false.40 ]
  br label %cond.end.47

cond.false.44:                                    ; preds = %cond.true.26
  %39 = load %struct._object*, %struct._object** %key, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyUnicodeObject*
  %data45 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %40, i32 0, i32 1
  %any46 = bitcast %union.anon* %data45 to i8**
  %41 = load i8*, i8** %any46, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.end.42
  %cond48 = phi i8* [ %cond43, %cond.end.42 ], [ %41, %cond.false.44 ]
  %42 = bitcast i8* %cond48 to i16*
  %arrayidx49 = getelementptr i16, i16* %42, i64 0
  %43 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %43 to i32
  br label %cond.end.75

cond.false.51:                                    ; preds = %cond.false.19
  %44 = load %struct._object*, %struct._object** %key, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*
  %state52 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3
  %46 = bitcast %struct.anon* %state52 to i32*
  %bf.load53 = load i32, i32* %46, align 4
  %bf.lshr54 = lshr i32 %bf.load53, 5
  %bf.clear55 = and i32 %bf.lshr54, 1
  %tobool56 = icmp ne i32 %bf.clear55, 0
  br i1 %tobool56, label %cond.true.57, label %cond.false.69

cond.true.57:                                     ; preds = %cond.false.51
  %47 = load %struct._object*, %struct._object** %key, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %state58 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3
  %49 = bitcast %struct.anon* %state58 to i32*
  %bf.load59 = load i32, i32* %49, align 4
  %bf.lshr60 = lshr i32 %bf.load59, 6
  %bf.clear61 = and i32 %bf.lshr60, 1
  %tobool62 = icmp ne i32 %bf.clear61, 0
  br i1 %tobool62, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %cond.true.57
  %50 = load %struct._object*, %struct._object** %key, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %add.ptr64 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i64 1
  %52 = bitcast %struct.PyASCIIObject* %add.ptr64 to i8*
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.true.57
  %53 = load %struct._object*, %struct._object** %key, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyCompactUnicodeObject*
  %add.ptr66 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %54, i64 1
  %55 = bitcast %struct.PyCompactUnicodeObject* %add.ptr66 to i8*
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.63
  %cond68 = phi i8* [ %52, %cond.true.63 ], [ %55, %cond.false.65 ]
  br label %cond.end.72

cond.false.69:                                    ; preds = %cond.false.51
  %56 = load %struct._object*, %struct._object** %key, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyUnicodeObject*
  %data70 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %57, i32 0, i32 1
  %any71 = bitcast %union.anon* %data70 to i8**
  %58 = load i8*, i8** %any71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.end.67
  %cond73 = phi i8* [ %cond68, %cond.end.67 ], [ %58, %cond.false.69 ]
  %59 = bitcast i8* %cond73 to i32*
  %arrayidx74 = getelementptr i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx74, align 4
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.72, %cond.end.47
  %cond76 = phi i32 [ %conv50, %cond.end.47 ], [ %60, %cond.end.72 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.end.17
  %cond78 = phi i32 [ %conv, %cond.end.17 ], [ %cond76, %cond.end.75 ]
  %cmp79 = icmp eq i32 %cond78, 95
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.189

land.lhs.true.81:                                 ; preds = %cond.end.77
  %61 = load %struct._object*, %struct._object** %key, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %state82 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i32 0, i32 3
  %63 = bitcast %struct.anon* %state82 to i32*
  %bf.load83 = load i32, i32* %63, align 4
  %bf.lshr84 = lshr i32 %bf.load83, 2
  %bf.clear85 = and i32 %bf.lshr84, 7
  %cmp86 = icmp eq i32 %bf.clear85, 1
  br i1 %cmp86, label %cond.true.88, label %cond.false.113

cond.true.88:                                     ; preds = %land.lhs.true.81
  %64 = load %struct._object*, %struct._object** %key, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*
  %state89 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i32 0, i32 3
  %66 = bitcast %struct.anon* %state89 to i32*
  %bf.load90 = load i32, i32* %66, align 4
  %bf.lshr91 = lshr i32 %bf.load90, 5
  %bf.clear92 = and i32 %bf.lshr91, 1
  %tobool93 = icmp ne i32 %bf.clear92, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.106

cond.true.94:                                     ; preds = %cond.true.88
  %67 = load %struct._object*, %struct._object** %key, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %state95 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 3
  %69 = bitcast %struct.anon* %state95 to i32*
  %bf.load96 = load i32, i32* %69, align 4
  %bf.lshr97 = lshr i32 %bf.load96, 6
  %bf.clear98 = and i32 %bf.lshr97, 1
  %tobool99 = icmp ne i32 %bf.clear98, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.true.94
  %70 = load %struct._object*, %struct._object** %key, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyASCIIObject*
  %add.ptr101 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %71, i64 1
  %72 = bitcast %struct.PyASCIIObject* %add.ptr101 to i8*
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.true.94
  %73 = load %struct._object*, %struct._object** %key, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyCompactUnicodeObject*
  %add.ptr103 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %74, i64 1
  %75 = bitcast %struct.PyCompactUnicodeObject* %add.ptr103 to i8*
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.100
  %cond105 = phi i8* [ %72, %cond.true.100 ], [ %75, %cond.false.102 ]
  br label %cond.end.109

cond.false.106:                                   ; preds = %cond.true.88
  %76 = load %struct._object*, %struct._object** %key, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyUnicodeObject*
  %data107 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %77, i32 0, i32 1
  %any108 = bitcast %union.anon* %data107 to i8**
  %78 = load i8*, i8** %any108, align 8
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.end.104
  %cond110 = phi i8* [ %cond105, %cond.end.104 ], [ %78, %cond.false.106 ]
  %arrayidx111 = getelementptr i8, i8* %cond110, i64 1
  %79 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %79 to i32
  br label %cond.end.171

cond.false.113:                                   ; preds = %land.lhs.true.81
  %80 = load %struct._object*, %struct._object** %key, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyASCIIObject*
  %state114 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %81, i32 0, i32 3
  %82 = bitcast %struct.anon* %state114 to i32*
  %bf.load115 = load i32, i32* %82, align 4
  %bf.lshr116 = lshr i32 %bf.load115, 2
  %bf.clear117 = and i32 %bf.lshr116, 7
  %cmp118 = icmp eq i32 %bf.clear117, 2
  br i1 %cmp118, label %cond.true.120, label %cond.false.145

cond.true.120:                                    ; preds = %cond.false.113
  %83 = load %struct._object*, %struct._object** %key, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyASCIIObject*
  %state121 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %84, i32 0, i32 3
  %85 = bitcast %struct.anon* %state121 to i32*
  %bf.load122 = load i32, i32* %85, align 4
  %bf.lshr123 = lshr i32 %bf.load122, 5
  %bf.clear124 = and i32 %bf.lshr123, 1
  %tobool125 = icmp ne i32 %bf.clear124, 0
  br i1 %tobool125, label %cond.true.126, label %cond.false.138

cond.true.126:                                    ; preds = %cond.true.120
  %86 = load %struct._object*, %struct._object** %key, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyASCIIObject*
  %state127 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %87, i32 0, i32 3
  %88 = bitcast %struct.anon* %state127 to i32*
  %bf.load128 = load i32, i32* %88, align 4
  %bf.lshr129 = lshr i32 %bf.load128, 6
  %bf.clear130 = and i32 %bf.lshr129, 1
  %tobool131 = icmp ne i32 %bf.clear130, 0
  br i1 %tobool131, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %cond.true.126
  %89 = load %struct._object*, %struct._object** %key, align 8
  %90 = bitcast %struct._object* %89 to %struct.PyASCIIObject*
  %add.ptr133 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %90, i64 1
  %91 = bitcast %struct.PyASCIIObject* %add.ptr133 to i8*
  br label %cond.end.136

cond.false.134:                                   ; preds = %cond.true.126
  %92 = load %struct._object*, %struct._object** %key, align 8
  %93 = bitcast %struct._object* %92 to %struct.PyCompactUnicodeObject*
  %add.ptr135 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %93, i64 1
  %94 = bitcast %struct.PyCompactUnicodeObject* %add.ptr135 to i8*
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.132
  %cond137 = phi i8* [ %91, %cond.true.132 ], [ %94, %cond.false.134 ]
  br label %cond.end.141

cond.false.138:                                   ; preds = %cond.true.120
  %95 = load %struct._object*, %struct._object** %key, align 8
  %96 = bitcast %struct._object* %95 to %struct.PyUnicodeObject*
  %data139 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %96, i32 0, i32 1
  %any140 = bitcast %union.anon* %data139 to i8**
  %97 = load i8*, i8** %any140, align 8
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.138, %cond.end.136
  %cond142 = phi i8* [ %cond137, %cond.end.136 ], [ %97, %cond.false.138 ]
  %98 = bitcast i8* %cond142 to i16*
  %arrayidx143 = getelementptr i16, i16* %98, i64 1
  %99 = load i16, i16* %arrayidx143, align 2
  %conv144 = zext i16 %99 to i32
  br label %cond.end.169

cond.false.145:                                   ; preds = %cond.false.113
  %100 = load %struct._object*, %struct._object** %key, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyASCIIObject*
  %state146 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %101, i32 0, i32 3
  %102 = bitcast %struct.anon* %state146 to i32*
  %bf.load147 = load i32, i32* %102, align 4
  %bf.lshr148 = lshr i32 %bf.load147, 5
  %bf.clear149 = and i32 %bf.lshr148, 1
  %tobool150 = icmp ne i32 %bf.clear149, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.163

cond.true.151:                                    ; preds = %cond.false.145
  %103 = load %struct._object*, %struct._object** %key, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyASCIIObject*
  %state152 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %104, i32 0, i32 3
  %105 = bitcast %struct.anon* %state152 to i32*
  %bf.load153 = load i32, i32* %105, align 4
  %bf.lshr154 = lshr i32 %bf.load153, 6
  %bf.clear155 = and i32 %bf.lshr154, 1
  %tobool156 = icmp ne i32 %bf.clear155, 0
  br i1 %tobool156, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %cond.true.151
  %106 = load %struct._object*, %struct._object** %key, align 8
  %107 = bitcast %struct._object* %106 to %struct.PyASCIIObject*
  %add.ptr158 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %107, i64 1
  %108 = bitcast %struct.PyASCIIObject* %add.ptr158 to i8*
  br label %cond.end.161

cond.false.159:                                   ; preds = %cond.true.151
  %109 = load %struct._object*, %struct._object** %key, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyCompactUnicodeObject*
  %add.ptr160 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %110, i64 1
  %111 = bitcast %struct.PyCompactUnicodeObject* %add.ptr160 to i8*
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi i8* [ %108, %cond.true.157 ], [ %111, %cond.false.159 ]
  br label %cond.end.166

cond.false.163:                                   ; preds = %cond.false.145
  %112 = load %struct._object*, %struct._object** %key, align 8
  %113 = bitcast %struct._object* %112 to %struct.PyUnicodeObject*
  %data164 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %113, i32 0, i32 1
  %any165 = bitcast %union.anon* %data164 to i8**
  %114 = load i8*, i8** %any165, align 8
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.163, %cond.end.161
  %cond167 = phi i8* [ %cond162, %cond.end.161 ], [ %114, %cond.false.163 ]
  %115 = bitcast i8* %cond167 to i32*
  %arrayidx168 = getelementptr i32, i32* %115, i64 1
  %116 = load i32, i32* %arrayidx168, align 4
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.166, %cond.end.141
  %cond170 = phi i32 [ %conv144, %cond.end.141 ], [ %116, %cond.end.166 ]
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.169, %cond.end.109
  %cond172 = phi i32 [ %conv112, %cond.end.109 ], [ %cond170, %cond.end.169 ]
  %cmp173 = icmp ne i32 %cond172, 95
  br i1 %cmp173, label %if.then.175, label %if.end.189

if.then.175:                                      ; preds = %cond.end.171
  %117 = load i32, i32* @Py_VerboseFlag, align 4
  %cmp176 = icmp sgt i32 %117, 1
  br i1 %cmp176, label %if.then.178, label %if.end.183

if.then.178:                                      ; preds = %if.then.175
  %118 = load %struct._object*, %struct._object** %key, align 8
  %call179 = call i8* @PyUnicode_AsUTF8(%struct._object* %118)
  store i8* %call179, i8** %s, align 8
  %119 = load i8*, i8** %s, align 8
  %cmp180 = icmp ne i8* %119, null
  br i1 %cmp180, label %if.then.182, label %if.else

if.then.182:                                      ; preds = %if.then.178
  %120 = load i8*, i8** %s, align 8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %120)
  br label %if.end

if.else:                                          ; preds = %if.then.178
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.182
  br label %if.end.183

if.end.183:                                       ; preds = %if.end, %if.then.175
  %121 = load %struct._object*, %struct._object** %d.addr, align 8
  %122 = load %struct._object*, %struct._object** %key, align 8
  %call184 = call i32 @PyDict_SetItem(%struct._object* %121, %struct._object* %122, %struct._object* @_Py_NoneStruct)
  %cmp185 = icmp ne i32 %call184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.183
  call void @PyErr_Clear()
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.187, %if.end.183
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %cond.end.171, %cond.end.77
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %pos, align 8
  br label %while.cond.191

while.cond.191:                                   ; preds = %if.end.318, %while.end
  %123 = load %struct._object*, %struct._object** %d.addr, align 8
  %call192 = call i32 @PyDict_Next(%struct._object* %123, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %while.body.194, label %while.end.319

while.body.194:                                   ; preds = %while.cond.191
  %124 = load %struct._object*, %struct._object** %value, align 8
  %cmp195 = icmp ne %struct._object* %124, @_Py_NoneStruct
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.318

land.lhs.true.197:                                ; preds = %while.body.194
  %125 = load %struct._object*, %struct._object** %key, align 8
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8
  %tp_flags199 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 19
  %127 = load i64, i64* %tp_flags199, align 8
  %and200 = and i64 %127, 268435456
  %cmp201 = icmp ne i64 %and200, 0
  br i1 %cmp201, label %if.then.203, label %if.end.318

if.then.203:                                      ; preds = %land.lhs.true.197
  %128 = load %struct._object*, %struct._object** %key, align 8
  %129 = bitcast %struct._object* %128 to %struct.PyASCIIObject*
  %state204 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %129, i32 0, i32 3
  %130 = bitcast %struct.anon* %state204 to i32*
  %bf.load205 = load i32, i32* %130, align 4
  %bf.lshr206 = lshr i32 %bf.load205, 2
  %bf.clear207 = and i32 %bf.lshr206, 7
  %cmp208 = icmp eq i32 %bf.clear207, 1
  br i1 %cmp208, label %cond.true.210, label %cond.false.235

cond.true.210:                                    ; preds = %if.then.203
  %131 = load %struct._object*, %struct._object** %key, align 8
  %132 = bitcast %struct._object* %131 to %struct.PyASCIIObject*
  %state211 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %132, i32 0, i32 3
  %133 = bitcast %struct.anon* %state211 to i32*
  %bf.load212 = load i32, i32* %133, align 4
  %bf.lshr213 = lshr i32 %bf.load212, 5
  %bf.clear214 = and i32 %bf.lshr213, 1
  %tobool215 = icmp ne i32 %bf.clear214, 0
  br i1 %tobool215, label %cond.true.216, label %cond.false.228

cond.true.216:                                    ; preds = %cond.true.210
  %134 = load %struct._object*, %struct._object** %key, align 8
  %135 = bitcast %struct._object* %134 to %struct.PyASCIIObject*
  %state217 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %135, i32 0, i32 3
  %136 = bitcast %struct.anon* %state217 to i32*
  %bf.load218 = load i32, i32* %136, align 4
  %bf.lshr219 = lshr i32 %bf.load218, 6
  %bf.clear220 = and i32 %bf.lshr219, 1
  %tobool221 = icmp ne i32 %bf.clear220, 0
  br i1 %tobool221, label %cond.true.222, label %cond.false.224

cond.true.222:                                    ; preds = %cond.true.216
  %137 = load %struct._object*, %struct._object** %key, align 8
  %138 = bitcast %struct._object* %137 to %struct.PyASCIIObject*
  %add.ptr223 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %138, i64 1
  %139 = bitcast %struct.PyASCIIObject* %add.ptr223 to i8*
  br label %cond.end.226

cond.false.224:                                   ; preds = %cond.true.216
  %140 = load %struct._object*, %struct._object** %key, align 8
  %141 = bitcast %struct._object* %140 to %struct.PyCompactUnicodeObject*
  %add.ptr225 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %141, i64 1
  %142 = bitcast %struct.PyCompactUnicodeObject* %add.ptr225 to i8*
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.224, %cond.true.222
  %cond227 = phi i8* [ %139, %cond.true.222 ], [ %142, %cond.false.224 ]
  br label %cond.end.231

cond.false.228:                                   ; preds = %cond.true.210
  %143 = load %struct._object*, %struct._object** %key, align 8
  %144 = bitcast %struct._object* %143 to %struct.PyUnicodeObject*
  %data229 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %144, i32 0, i32 1
  %any230 = bitcast %union.anon* %data229 to i8**
  %145 = load i8*, i8** %any230, align 8
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.228, %cond.end.226
  %cond232 = phi i8* [ %cond227, %cond.end.226 ], [ %145, %cond.false.228 ]
  %arrayidx233 = getelementptr i8, i8* %cond232, i64 0
  %146 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %146 to i32
  br label %cond.end.293

cond.false.235:                                   ; preds = %if.then.203
  %147 = load %struct._object*, %struct._object** %key, align 8
  %148 = bitcast %struct._object* %147 to %struct.PyASCIIObject*
  %state236 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %148, i32 0, i32 3
  %149 = bitcast %struct.anon* %state236 to i32*
  %bf.load237 = load i32, i32* %149, align 4
  %bf.lshr238 = lshr i32 %bf.load237, 2
  %bf.clear239 = and i32 %bf.lshr238, 7
  %cmp240 = icmp eq i32 %bf.clear239, 2
  br i1 %cmp240, label %cond.true.242, label %cond.false.267

cond.true.242:                                    ; preds = %cond.false.235
  %150 = load %struct._object*, %struct._object** %key, align 8
  %151 = bitcast %struct._object* %150 to %struct.PyASCIIObject*
  %state243 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %151, i32 0, i32 3
  %152 = bitcast %struct.anon* %state243 to i32*
  %bf.load244 = load i32, i32* %152, align 4
  %bf.lshr245 = lshr i32 %bf.load244, 5
  %bf.clear246 = and i32 %bf.lshr245, 1
  %tobool247 = icmp ne i32 %bf.clear246, 0
  br i1 %tobool247, label %cond.true.248, label %cond.false.260

cond.true.248:                                    ; preds = %cond.true.242
  %153 = load %struct._object*, %struct._object** %key, align 8
  %154 = bitcast %struct._object* %153 to %struct.PyASCIIObject*
  %state249 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %154, i32 0, i32 3
  %155 = bitcast %struct.anon* %state249 to i32*
  %bf.load250 = load i32, i32* %155, align 4
  %bf.lshr251 = lshr i32 %bf.load250, 6
  %bf.clear252 = and i32 %bf.lshr251, 1
  %tobool253 = icmp ne i32 %bf.clear252, 0
  br i1 %tobool253, label %cond.true.254, label %cond.false.256

cond.true.254:                                    ; preds = %cond.true.248
  %156 = load %struct._object*, %struct._object** %key, align 8
  %157 = bitcast %struct._object* %156 to %struct.PyASCIIObject*
  %add.ptr255 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %157, i64 1
  %158 = bitcast %struct.PyASCIIObject* %add.ptr255 to i8*
  br label %cond.end.258

cond.false.256:                                   ; preds = %cond.true.248
  %159 = load %struct._object*, %struct._object** %key, align 8
  %160 = bitcast %struct._object* %159 to %struct.PyCompactUnicodeObject*
  %add.ptr257 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %160, i64 1
  %161 = bitcast %struct.PyCompactUnicodeObject* %add.ptr257 to i8*
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.256, %cond.true.254
  %cond259 = phi i8* [ %158, %cond.true.254 ], [ %161, %cond.false.256 ]
  br label %cond.end.263

cond.false.260:                                   ; preds = %cond.true.242
  %162 = load %struct._object*, %struct._object** %key, align 8
  %163 = bitcast %struct._object* %162 to %struct.PyUnicodeObject*
  %data261 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %163, i32 0, i32 1
  %any262 = bitcast %union.anon* %data261 to i8**
  %164 = load i8*, i8** %any262, align 8
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.260, %cond.end.258
  %cond264 = phi i8* [ %cond259, %cond.end.258 ], [ %164, %cond.false.260 ]
  %165 = bitcast i8* %cond264 to i16*
  %arrayidx265 = getelementptr i16, i16* %165, i64 0
  %166 = load i16, i16* %arrayidx265, align 2
  %conv266 = zext i16 %166 to i32
  br label %cond.end.291

cond.false.267:                                   ; preds = %cond.false.235
  %167 = load %struct._object*, %struct._object** %key, align 8
  %168 = bitcast %struct._object* %167 to %struct.PyASCIIObject*
  %state268 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %168, i32 0, i32 3
  %169 = bitcast %struct.anon* %state268 to i32*
  %bf.load269 = load i32, i32* %169, align 4
  %bf.lshr270 = lshr i32 %bf.load269, 5
  %bf.clear271 = and i32 %bf.lshr270, 1
  %tobool272 = icmp ne i32 %bf.clear271, 0
  br i1 %tobool272, label %cond.true.273, label %cond.false.285

cond.true.273:                                    ; preds = %cond.false.267
  %170 = load %struct._object*, %struct._object** %key, align 8
  %171 = bitcast %struct._object* %170 to %struct.PyASCIIObject*
  %state274 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %171, i32 0, i32 3
  %172 = bitcast %struct.anon* %state274 to i32*
  %bf.load275 = load i32, i32* %172, align 4
  %bf.lshr276 = lshr i32 %bf.load275, 6
  %bf.clear277 = and i32 %bf.lshr276, 1
  %tobool278 = icmp ne i32 %bf.clear277, 0
  br i1 %tobool278, label %cond.true.279, label %cond.false.281

cond.true.279:                                    ; preds = %cond.true.273
  %173 = load %struct._object*, %struct._object** %key, align 8
  %174 = bitcast %struct._object* %173 to %struct.PyASCIIObject*
  %add.ptr280 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %174, i64 1
  %175 = bitcast %struct.PyASCIIObject* %add.ptr280 to i8*
  br label %cond.end.283

cond.false.281:                                   ; preds = %cond.true.273
  %176 = load %struct._object*, %struct._object** %key, align 8
  %177 = bitcast %struct._object* %176 to %struct.PyCompactUnicodeObject*
  %add.ptr282 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %177, i64 1
  %178 = bitcast %struct.PyCompactUnicodeObject* %add.ptr282 to i8*
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.281, %cond.true.279
  %cond284 = phi i8* [ %175, %cond.true.279 ], [ %178, %cond.false.281 ]
  br label %cond.end.288

cond.false.285:                                   ; preds = %cond.false.267
  %179 = load %struct._object*, %struct._object** %key, align 8
  %180 = bitcast %struct._object* %179 to %struct.PyUnicodeObject*
  %data286 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %180, i32 0, i32 1
  %any287 = bitcast %union.anon* %data286 to i8**
  %181 = load i8*, i8** %any287, align 8
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.285, %cond.end.283
  %cond289 = phi i8* [ %cond284, %cond.end.283 ], [ %181, %cond.false.285 ]
  %182 = bitcast i8* %cond289 to i32*
  %arrayidx290 = getelementptr i32, i32* %182, i64 0
  %183 = load i32, i32* %arrayidx290, align 4
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.end.288, %cond.end.263
  %cond292 = phi i32 [ %conv266, %cond.end.263 ], [ %183, %cond.end.288 ]
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.end.291, %cond.end.231
  %cond294 = phi i32 [ %conv234, %cond.end.231 ], [ %cond292, %cond.end.291 ]
  %cmp295 = icmp ne i32 %cond294, 95
  br i1 %cmp295, label %if.then.300, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.293
  %184 = load %struct._object*, %struct._object** %key, align 8
  %call297 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %cmp298 = icmp ne i32 %call297, 0
  br i1 %cmp298, label %if.then.300, label %if.end.317

if.then.300:                                      ; preds = %lor.lhs.false, %cond.end.293
  %185 = load i32, i32* @Py_VerboseFlag, align 4
  %cmp301 = icmp sgt i32 %185, 1
  br i1 %cmp301, label %if.then.303, label %if.end.311

if.then.303:                                      ; preds = %if.then.300
  %186 = load %struct._object*, %struct._object** %key, align 8
  %call305 = call i8* @PyUnicode_AsUTF8(%struct._object* %186)
  store i8* %call305, i8** %s304, align 8
  %187 = load i8*, i8** %s304, align 8
  %cmp306 = icmp ne i8* %187, null
  br i1 %cmp306, label %if.then.308, label %if.else.309

if.then.308:                                      ; preds = %if.then.303
  %188 = load i8*, i8** %s304, align 8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %188)
  br label %if.end.310

if.else.309:                                      ; preds = %if.then.303
  call void @PyErr_Clear()
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.308
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.300
  %189 = load %struct._object*, %struct._object** %d.addr, align 8
  %190 = load %struct._object*, %struct._object** %key, align 8
  %call312 = call i32 @PyDict_SetItem(%struct._object* %189, %struct._object* %190, %struct._object* @_Py_NoneStruct)
  %cmp313 = icmp ne i32 %call312, 0
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.end.311
  call void @PyErr_Clear()
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.315, %if.end.311
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %lor.lhs.false
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %land.lhs.true.197, %while.body.194
  br label %while.cond.191

while.end.319:                                    ; preds = %while.cond.191
  ret void
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare void @PySys_WriteStderr(i8*, ...) #1

declare void @PyErr_Clear() #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @module_dealloc(%struct.PyModuleObject* %m) #0 {
entry:
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8
  %0 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %1 = bitcast %struct.PyModuleObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %3, i32 0, i32 5
  %4 = load %struct._object*, %struct._object** %md_name, align 8
  %tobool1 = icmp ne %struct._object* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_name2 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 5
  %6 = load %struct._object*, %struct._object** %md_name2, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct._object* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_weaklist = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %7, i32 0, i32 4
  %8 = load %struct._object*, %struct._object** %md_weaklist, align 8
  %cmp = icmp ne %struct._object* %8, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %10 = bitcast %struct.PyModuleObject* %9 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %11, i32 0, i32 2
  %12 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8
  %tobool5 = icmp ne %struct.PyModuleDef* %12, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.12

land.lhs.true.6:                                  ; preds = %if.end.4
  %13 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def7 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %13, i32 0, i32 2
  %14 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def7, align 8
  %m_free = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %14, i32 0, i32 8
  %15 = load void (i8*)*, void (i8*)** %m_free, align 8
  %tobool8 = icmp ne void (i8*)* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true.6
  %16 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def10 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %16, i32 0, i32 2
  %17 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def10, align 8
  %m_free11 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %17, i32 0, i32 8
  %18 = load void (i8*)*, void (i8*)** %m_free11, align 8
  %19 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %20 = bitcast %struct.PyModuleObject* %19 to i8*
  call void %18(i8* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %land.lhs.true.6, %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %21 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %23, null
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.18

if.else:                                          ; preds = %do.body.15
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %do.body
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %31 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_name23 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %31, i32 0, i32 5
  %32 = load %struct._object*, %struct._object** %md_name23, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp22, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp22, align 8
  %cmp24 = icmp ne %struct._object* %33, null
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %do.body.21
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp22, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp27, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %36, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %39(%struct._object* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.body.21
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %41 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %41, i32 0, i32 3
  %42 = load i8*, i8** %md_state, align 8
  %cmp39 = icmp ne i8* %42, null
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.end.38
  %43 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_state41 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %43, i32 0, i32 3
  %44 = load i8*, i8** %md_state41, align 8
  call void @PyMem_Free(i8* %44)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end.38
  %45 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %46 = bitcast %struct.PyModuleObject* %45 to %struct._object*
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 38
  %48 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %49 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %50 = bitcast %struct.PyModuleObject* %49 to %struct._object*
  %51 = bitcast %struct._object* %50 to i8*
  call void %48(i8* %51)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_repr(%struct.PyModuleObject* %m) #0 {
entry:
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %interp = alloca %struct._is*, align 8
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8
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
  %interp5 = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp5, align 8
  store %struct._is* %12, %struct._is** %interp, align 8
  %13 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %13, i32 0, i32 6
  %14 = load %struct._object*, %struct._object** %importlib, align 8
  %15 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), %struct.PyModuleObject* %15)
  ret %struct._object* %call
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @module_traverse(%struct.PyModuleObject* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %vret = alloca i32, align 4
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %0, i32 0, i32 2
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8
  %tobool = icmp ne %struct.PyModuleDef* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def1 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 2
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def1, align 8
  %m_traverse = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %3, i32 0, i32 6
  %4 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %m_traverse, align 8
  %tobool2 = icmp ne i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %4, null
  br i1 %tobool2, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def3 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 2
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def3, align 8
  %m_traverse4 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %6, i32 0, i32 6
  %7 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %m_traverse4, align 8
  %8 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %9 = bitcast %struct.PyModuleObject* %8 to %struct._object*
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %7(%struct._object* %9, i32 (%struct._object*, i8*)* %10, i8* %11)
  store i32 %call, i32* %res, align 4
  %12 = load i32, i32* %res, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load i32, i32* %res, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %14 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %md_dict, align 8
  %tobool8 = icmp ne %struct._object* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %17 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict10 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %md_dict10, align 8
  %19 = load i8*, i8** %arg.addr, align 8
  %call11 = call i32 %16(%struct._object* %18, i8* %19)
  store i32 %call11, i32* %vret, align 4
  %20 = load i32, i32* %vret, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %21 = load i32, i32* %vret, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.13, %if.then.6
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @module_clear(%struct.PyModuleObject* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %res = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8
  %0 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %0, i32 0, i32 2
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8
  %tobool = icmp ne %struct.PyModuleDef* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def1 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 2
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def1, align 8
  %m_clear = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %3, i32 0, i32 7
  %4 = load i32 (%struct._object*)*, i32 (%struct._object*)** %m_clear, align 8
  %tobool2 = icmp ne i32 (%struct._object*)* %4, null
  br i1 %tobool2, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_def3 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 2
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def3, align 8
  %m_clear4 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %6, i32 0, i32 7
  %7 = load i32 (%struct._object*)*, i32 (%struct._object*)** %m_clear4, align 8
  %8 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %9 = bitcast %struct.PyModuleObject* %8 to %struct._object*
  %call = call i32 %7(%struct._object* %9)
  store i32 %call, i32* %res, align 4
  %10 = load i32, i32* %res, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %11 = load i32, i32* %res, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %12 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %13, %struct._object** %_py_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %14, null
  br i1 %cmp, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.body
  %15 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict9 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %15, i32 0, i32 1
  store %struct._object* null, %struct._object** %md_dict9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.8
  %16 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.6
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @module_init(%struct.PyModuleObject* %m, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %doc = alloca %struct._object*, align 8
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %name, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_init.kwlist, i32 0, i32 0), %struct._object** %name, %struct._object** %doc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %md_dict, align 8
  store %struct._object* %3, %struct._object** %dict, align 8
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyDict_New()
  store %struct._object* %call2, %struct._object** %dict, align 8
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %cmp3 = icmp eq %struct._object* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %dict, align 8
  %7 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %md_dict6 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %md_dict6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.5, %if.end
  %8 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8
  %9 = load %struct._object*, %struct._object** %dict, align 8
  %10 = load %struct._object*, %struct._object** %name, align 8
  %11 = load %struct._object*, %struct._object** %doc, align 8
  %call8 = call i32 @module_init_dict(%struct.PyModuleObject* %8, %struct._object* %9, %struct._object* %10, %struct._object* %11)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare void @PyObject_GC_Del(i8*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PySys_FormatStderr(i8*, ...) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._object* @PyObject_CallMethod(%struct._object*, i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_dir(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %0, %struct._Py_Identifier* @module_dir.PyId___dict__)
  store %struct._object* %call, %struct._object** %dict, align 8
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %dict, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %call3 = call %struct._object* @PyDict_Keys(%struct._object* %5)
  store %struct._object* %call3, %struct._object** %result, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %call4 = call i8* @PyModule_GetName(%struct._object* %6)
  store i8* %call4, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load i8*, i8** %name, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.14:                                       ; preds = %do.body.11
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %19 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %19
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyDict_Keys(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139705}
!2 = !{i32 139545}
