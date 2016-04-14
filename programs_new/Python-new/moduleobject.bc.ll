; ModuleID = 'programs_new/Python-new/moduleobject.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !513, metadata !822), !dbg !823
  %0 = bitcast %struct.PyModuleObject** %m to i8*, !dbg !824
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !824
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m, metadata !514, metadata !822), !dbg !825
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)), !dbg !826
  %1 = bitcast %struct._object* %call to %struct.PyModuleObject*, !dbg !827
  store %struct.PyModuleObject* %1, %struct.PyModuleObject** %m, align 8, !dbg !828, !tbaa !818
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !829, !tbaa !818
  %cmp = icmp eq %struct.PyModuleObject* %2, null, !dbg !831
  br i1 %cmp, label %if.then, label %if.end, !dbg !832

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !833
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !833

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !834, !tbaa !818
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %3, i32 0, i32 2, !dbg !835
  store %struct.PyModuleDef* null, %struct.PyModuleDef** %md_def, align 8, !dbg !836, !tbaa !837
  %4 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !841, !tbaa !818
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %4, i32 0, i32 3, !dbg !842
  store i8* null, i8** %md_state, align 8, !dbg !843, !tbaa !844
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !845, !tbaa !818
  %md_weaklist = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 4, !dbg !846
  store %struct._object* null, %struct._object** %md_weaklist, align 8, !dbg !847, !tbaa !848
  %6 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !849, !tbaa !818
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %6, i32 0, i32 5, !dbg !850
  store %struct._object* null, %struct._object** %md_name, align 8, !dbg !851, !tbaa !852
  %call1 = call %struct._object* @PyDict_New(), !dbg !853
  %7 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !854, !tbaa !818
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %7, i32 0, i32 1, !dbg !855
  store %struct._object* %call1, %struct._object** %md_dict, align 8, !dbg !856, !tbaa !857
  %8 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !858, !tbaa !818
  %9 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !860, !tbaa !818
  %md_dict2 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %9, i32 0, i32 1, !dbg !861
  %10 = load %struct._object*, %struct._object** %md_dict2, align 8, !dbg !861, !tbaa !857
  %11 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !862, !tbaa !818
  %call3 = call i32 @module_init_dict(%struct.PyModuleObject* %8, %struct._object* %10, %struct._object* %11, %struct._object* null), !dbg !863
  %cmp4 = icmp ne i32 %call3, 0, !dbg !864
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !865

if.then.5:                                        ; preds = %if.end
  br label %fail, !dbg !866

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !867, !tbaa !818
  %13 = bitcast %struct.PyModuleObject* %12 to i8*, !dbg !867
  call void @PyObject_GC_Track(i8* %13), !dbg !868
  %14 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !869, !tbaa !818
  %15 = bitcast %struct.PyModuleObject* %14 to %struct._object*, !dbg !870
  store %struct._object* %15, %struct._object** %retval, !dbg !871
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !871

fail:                                             ; preds = %if.then.5
  br label %do.body, !dbg !872

do.body:                                          ; preds = %fail
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !873
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !873
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !515, metadata !822), !dbg !875
  %17 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !876, !tbaa !818
  %18 = bitcast %struct.PyModuleObject* %17 to %struct._object*, !dbg !877
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !875, !tbaa !818
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !878, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !880
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !881, !tbaa !882
  %dec = add i64 %20, -1, !dbg !881
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !881, !tbaa !882
  %cmp7 = icmp ne i64 %dec, 0, !dbg !883
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !884

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !885

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !887, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !889
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !889, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !891
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !891, !tbaa !892
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !896, !tbaa !818
  call void %23(%struct._object* %24), !dbg !897
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !898
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !898
  br label %do.cond, !dbg !900

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !901

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !903
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !903

cleanup:                                          ; preds = %do.end, %if.end.6, %if.then
  %26 = bitcast %struct.PyModuleObject** %m to i8*, !dbg !904
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !904
  %27 = load %struct._object*, %struct._object** %retval, !dbg !904
  ret %struct._object* %27, !dbg !904
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare %struct._object* @PyDict_New() #3

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
  store %struct.PyModuleObject* %mod, %struct.PyModuleObject** %mod.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %mod.addr, metadata !670, metadata !822), !dbg !905
  store %struct._object* %md_dict, %struct._object** %md_dict.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %md_dict.addr, metadata !671, metadata !822), !dbg !906
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !672, metadata !822), !dbg !907
  store %struct._object* %doc, %struct._object** %doc.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %doc.addr, metadata !673, metadata !822), !dbg !908
  %0 = load %struct._object*, %struct._object** %md_dict.addr, align 8, !dbg !909, !tbaa !818
  %cmp = icmp eq %struct._object* %0, null, !dbg !911
  br i1 %cmp, label %if.then, label %if.end, !dbg !912

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !913
  br label %return, !dbg !913

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %doc.addr, align 8, !dbg !914, !tbaa !818
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !916
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !917

if.then.2:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc.addr, align 8, !dbg !918, !tbaa !818
  br label %if.end.3, !dbg !919

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct._object*, %struct._object** %md_dict.addr, align 8, !dbg !920, !tbaa !818
  %3 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !922, !tbaa !818
  %call = call i32 @PyDict_SetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* %3), !dbg !923
  %cmp4 = icmp ne i32 %call, 0, !dbg !924
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !925

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval, !dbg !926
  br label %return, !dbg !926

if.end.6:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %md_dict.addr, align 8, !dbg !927, !tbaa !818
  %5 = load %struct._object*, %struct._object** %doc.addr, align 8, !dbg !929, !tbaa !818
  %call7 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* %5), !dbg !930
  %cmp8 = icmp ne i32 %call7, 0, !dbg !931
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !932

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval, !dbg !933
  br label %return, !dbg !933

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct._object*, %struct._object** %md_dict.addr, align 8, !dbg !934, !tbaa !818
  %call11 = call i32 @PyDict_SetItemString(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct._object* @_Py_NoneStruct), !dbg !936
  %cmp12 = icmp ne i32 %call11, 0, !dbg !937
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !938

if.then.13:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval, !dbg !939
  br label %return, !dbg !939

if.end.14:                                        ; preds = %if.end.10
  %7 = load %struct._object*, %struct._object** %md_dict.addr, align 8, !dbg !940, !tbaa !818
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct._object* @_Py_NoneStruct), !dbg !942
  %cmp16 = icmp ne i32 %call15, 0, !dbg !943
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !944

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval, !dbg !945
  br label %return, !dbg !945

if.end.18:                                        ; preds = %if.end.14
  %8 = load %struct._object*, %struct._object** %md_dict.addr, align 8, !dbg !946, !tbaa !818
  %call19 = call i32 @PyDict_SetItemString(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* @_Py_NoneStruct), !dbg !948
  %cmp20 = icmp ne i32 %call19, 0, !dbg !949
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !950

if.then.21:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval, !dbg !951
  br label %return, !dbg !951

if.end.22:                                        ; preds = %if.end.18
  %9 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !952, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !953
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !953, !tbaa !890
  %cmp23 = icmp eq %struct._typeobject* %10, @PyUnicode_Type, !dbg !954
  br i1 %cmp23, label %if.then.24, label %if.end.37, !dbg !955

if.then.24:                                       ; preds = %if.end.22
  %11 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !956, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !957
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !958, !tbaa !882
  %inc = add i64 %12, 1, !dbg !958
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !958, !tbaa !882
  br label %do.body, !dbg !959

do.body:                                          ; preds = %if.then.24
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !960
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !960
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !674, metadata !822), !dbg !962
  %14 = load %struct.PyModuleObject*, %struct.PyModuleObject** %mod.addr, align 8, !dbg !963, !tbaa !818
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %14, i32 0, i32 5, !dbg !964
  %15 = load %struct._object*, %struct._object** %md_name, align 8, !dbg !964, !tbaa !852
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8, !dbg !962, !tbaa !818
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !965, !tbaa !818
  %cmp25 = icmp ne %struct._object* %16, null, !dbg !966
  br i1 %cmp25, label %if.then.26, label %if.end.33, !dbg !967

if.then.26:                                       ; preds = %do.body
  br label %do.body.27, !dbg !968

do.body.27:                                       ; preds = %if.then.26
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !970
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !678, metadata !822), !dbg !972
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !973, !tbaa !818
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !972, !tbaa !818
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !974, !tbaa !818
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !976
  %20 = load i64, i64* %ob_refcnt28, align 8, !dbg !977, !tbaa !882
  %dec = add i64 %20, -1, !dbg !977
  store i64 %dec, i64* %ob_refcnt28, align 8, !dbg !977, !tbaa !882
  %cmp29 = icmp ne i64 %dec, 0, !dbg !978
  br i1 %cmp29, label %if.then.30, label %if.else, !dbg !979

if.then.30:                                       ; preds = %do.body.27
  br label %if.end.32, !dbg !980

if.else:                                          ; preds = %do.body.27
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !982, !tbaa !818
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !984
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !984, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !985
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !985, !tbaa !892
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !986, !tbaa !818
  call void %23(%struct._object* %24), !dbg !987
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.30
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !988
  br label %do.cond, !dbg !990

do.cond:                                          ; preds = %if.end.32
  br label %do.end, !dbg !991

do.end:                                           ; preds = %do.cond
  br label %if.end.33, !dbg !993

if.end.33:                                        ; preds = %do.end, %do.body
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !995
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !995
  br label %do.end.35, !dbg !998

do.end.35:                                        ; preds = %if.end.33
  %27 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !999, !tbaa !818
  %28 = load %struct.PyModuleObject*, %struct.PyModuleObject** %mod.addr, align 8, !dbg !1000, !tbaa !818
  %md_name36 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %28, i32 0, i32 5, !dbg !1001
  store %struct._object* %27, %struct._object** %md_name36, align 8, !dbg !1002, !tbaa !852
  br label %if.end.37, !dbg !1003

if.end.37:                                        ; preds = %do.end.35, %if.end.22
  store i32 0, i32* %retval, !dbg !1004
  br label %return, !dbg !1004

return:                                           ; preds = %if.end.37, %if.then.21, %if.then.17, %if.then.13, %if.then.9, %if.then.5, %if.then
  %29 = load i32, i32* %retval, !dbg !1005
  ret i32 %29, !dbg !1005
}

declare void @PyObject_GC_Track(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_New(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %nameobj = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !521, metadata !822), !dbg !1006
  %0 = bitcast %struct._object** %nameobj to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1007
  call void @llvm.dbg.declare(metadata %struct._object** %nameobj, metadata !522, metadata !822), !dbg !1008
  %1 = bitcast %struct._object** %module to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1007
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !523, metadata !822), !dbg !1009
  %2 = load i8*, i8** %name.addr, align 8, !dbg !1010, !tbaa !818
  %call = call %struct._object* @PyUnicode_FromString(i8* %2), !dbg !1011
  store %struct._object* %call, %struct._object** %nameobj, align 8, !dbg !1012, !tbaa !818
  %3 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1013, !tbaa !818
  %cmp = icmp eq %struct._object* %3, null, !dbg !1015
  br i1 %cmp, label %if.then, label %if.end, !dbg !1016

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1017
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1017

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1018, !tbaa !818
  %call1 = call %struct._object* @PyModule_NewObject(%struct._object* %4), !dbg !1019
  store %struct._object* %call1, %struct._object** %module, align 8, !dbg !1020, !tbaa !818
  br label %do.body, !dbg !1021

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1022
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1022
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !524, metadata !822), !dbg !1024
  %6 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1025, !tbaa !818
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1024, !tbaa !818
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1026, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1028
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1029, !tbaa !882
  %dec = add i64 %8, -1, !dbg !1029
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1029, !tbaa !882
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1030
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1031

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !1032

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1034, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1036
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1036, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1037
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1037, !tbaa !892
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1038, !tbaa !818
  call void %11(%struct._object* %12), !dbg !1039
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1040
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1040
  br label %do.cond, !dbg !1042

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1043

do.end:                                           ; preds = %do.cond
  %14 = load %struct._object*, %struct._object** %module, align 8, !dbg !1045, !tbaa !818
  store %struct._object* %14, %struct._object** %retval, !dbg !1046
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1046

cleanup:                                          ; preds = %do.end, %if.then
  %15 = bitcast %struct._object** %module to i8*, !dbg !1047
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1047
  %16 = bitcast %struct._object** %nameobj to i8*, !dbg !1047
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1047
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1047
  ret %struct._object* %17, !dbg !1047
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

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
  %cleanup.dest.slot = alloca i32
  %err = alloca i32, align 4
  %p = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  %_py_decref_tmp167 = alloca %struct._object*, align 8
  %_py_decref_tmp181 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp221 = alloca %struct._object*, align 8
  %_py_decref_tmp237 = alloca %struct._object*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !530, metadata !822), !dbg !1048
  store i32 %module_api_version, i32* %module_api_version.addr, align 4, !tbaa !1049
  call void @llvm.dbg.declare(metadata i32* %module_api_version.addr, metadata !531, metadata !822), !dbg !1050
  %0 = bitcast %struct._object** %d to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1051
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !532, metadata !822), !dbg !1052
  %1 = bitcast %struct._object** %v to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1051
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !533, metadata !822), !dbg !1053
  %2 = bitcast %struct._object** %n to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1051
  call void @llvm.dbg.declare(metadata %struct._object** %n, metadata !534, metadata !822), !dbg !1054
  %3 = bitcast %struct.PyMethodDef** %ml to i8*, !dbg !1055
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1055
  call void @llvm.dbg.declare(metadata %struct.PyMethodDef** %ml, metadata !535, metadata !822), !dbg !1056
  %4 = bitcast i8** %name to i8*, !dbg !1057
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1057
  call void @llvm.dbg.declare(metadata i8** %name, metadata !536, metadata !822), !dbg !1058
  %5 = bitcast %struct.PyModuleObject** %m to i8*, !dbg !1059
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1059
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m, metadata !537, metadata !822), !dbg !1060
  %6 = bitcast %struct._is** %interp to i8*, !dbg !1061
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1061
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !538, metadata !822), !dbg !1062
  %call = call %struct._ts* @PyThreadState_Get(), !dbg !1063
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i32 0, i32 2, !dbg !1064
  %7 = load %struct._is*, %struct._is** %interp1, align 8, !dbg !1064, !tbaa !1065
  store %struct._is* %7, %struct._is** %interp, align 8, !dbg !1062, !tbaa !818
  %8 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1067, !tbaa !818
  %modules = getelementptr inbounds %struct._is, %struct._is* %8, i32 0, i32 2, !dbg !1069
  %9 = load %struct._object*, %struct._object** %modules, align 8, !dbg !1069, !tbaa !1070
  %cmp = icmp eq %struct._object* %9, null, !dbg !1072
  br i1 %cmp, label %if.then, label %if.end, !dbg !1073

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0)) #8, !dbg !1074
  unreachable, !dbg !1074

if.end:                                           ; preds = %entry
  %call2 = call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type to %struct._typeobject*)), !dbg !1075
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1077
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1078

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1079

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1080, !tbaa !818
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %10, i32 0, i32 0, !dbg !1082
  %m_index = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 2, !dbg !1083
  %11 = load i64, i64* %m_index, align 8, !dbg !1083, !tbaa !1084
  %cmp6 = icmp eq i64 %11, 0, !dbg !1087
  br i1 %cmp6, label %if.then.7, label %if.end.10, !dbg !1088

if.then.7:                                        ; preds = %if.end.5
  %12 = load i64, i64* @max_module_number, align 8, !dbg !1089, !tbaa !1091
  %inc = add i64 %12, 1, !dbg !1089
  store i64 %inc, i64* @max_module_number, align 8, !dbg !1089, !tbaa !1091
  %13 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1092, !tbaa !818
  %14 = bitcast %struct.PyModuleDef* %13 to %struct._object*, !dbg !1093
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1094
  store i64 1, i64* %ob_refcnt, align 8, !dbg !1095, !tbaa !882
  %15 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1096, !tbaa !818
  %16 = bitcast %struct.PyModuleDef* %15 to %struct._object*, !dbg !1097
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1098
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type to %struct._typeobject*), %struct._typeobject** %ob_type, align 8, !dbg !1099, !tbaa !890
  %17 = load i64, i64* @max_module_number, align 8, !dbg !1100, !tbaa !1091
  %18 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1101, !tbaa !818
  %m_base8 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %18, i32 0, i32 0, !dbg !1102
  %m_index9 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base8, i32 0, i32 2, !dbg !1103
  store i64 %17, i64* %m_index9, align 8, !dbg !1104, !tbaa !1084
  br label %if.end.10, !dbg !1105

if.end.10:                                        ; preds = %if.then.7, %if.end.5
  %19 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1106, !tbaa !818
  %m_name = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %19, i32 0, i32 1, !dbg !1107
  %20 = load i8*, i8** %m_name, align 8, !dbg !1107, !tbaa !1108
  store i8* %20, i8** %name, align 8, !dbg !1109, !tbaa !818
  %21 = load i32, i32* %module_api_version.addr, align 4, !dbg !1110, !tbaa !1049
  %cmp11 = icmp ne i32 %21, 1013, !dbg !1111
  br i1 %cmp11, label %land.lhs.true, label %if.end.17, !dbg !1112

land.lhs.true:                                    ; preds = %if.end.10
  %22 = load i32, i32* %module_api_version.addr, align 4, !dbg !1113, !tbaa !1049
  %cmp12 = icmp ne i32 %22, 3, !dbg !1115
  br i1 %cmp12, label %if.then.13, label %if.end.17, !dbg !1116

if.then.13:                                       ; preds = %land.lhs.true
  %23 = bitcast i32* %err to i8*, !dbg !1117
  call void @llvm.lifetime.start(i64 4, i8* %23) #2, !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %err, metadata !539, metadata !822), !dbg !1118
  %24 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !1119, !tbaa !818
  %25 = load i8*, i8** %name, align 8, !dbg !1120, !tbaa !818
  %26 = load i8*, i8** %name, align 8, !dbg !1121, !tbaa !818
  %27 = load i32, i32* %module_api_version.addr, align 4, !dbg !1122, !tbaa !1049
  %call14 = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %24, i64 1, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i32 0, i32 0), i8* %25, i32 1013, i8* %26, i32 %27), !dbg !1123
  store i32 %call14, i32* %err, align 4, !dbg !1124, !tbaa !1049
  %28 = load i32, i32* %err, align 4, !dbg !1125, !tbaa !1049
  %tobool = icmp ne i32 %28, 0, !dbg !1125
  br i1 %tobool, label %if.then.15, label %if.end.16, !dbg !1127

if.then.15:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval, !dbg !1128
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1128

if.end.16:                                        ; preds = %if.then.13
  store i32 0, i32* %cleanup.dest.slot, !dbg !1129
  br label %cleanup, !dbg !1129

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %29 = bitcast i32* %err to i8*, !dbg !1130
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !1130
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.17, !dbg !1131

if.end.17:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end.10
  %30 = load i8*, i8** @_Py_PackageContext, align 8, !dbg !1132, !tbaa !818
  %cmp18 = icmp ne i8* %30, null, !dbg !1133
  br i1 %cmp18, label %if.then.19, label %if.end.28, !dbg !1134

if.then.19:                                       ; preds = %if.end.17
  %31 = bitcast i8** %p to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !1135
  call void @llvm.dbg.declare(metadata i8** %p, metadata !542, metadata !822), !dbg !1136
  %32 = load i8*, i8** @_Py_PackageContext, align 8, !dbg !1137, !tbaa !818
  %call20 = call i8* @strrchr(i8* %32, i32 46) #9, !dbg !1138
  store i8* %call20, i8** %p, align 8, !dbg !1136, !tbaa !818
  %33 = load i8*, i8** %p, align 8, !dbg !1139, !tbaa !818
  %cmp21 = icmp ne i8* %33, null, !dbg !1140
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.27, !dbg !1141

land.lhs.true.22:                                 ; preds = %if.then.19
  %34 = bitcast i64* %__s1_len to i8*, !dbg !1142
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1142
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !545, metadata !822), !dbg !1144
  %35 = bitcast i64* %__s2_len to i8*, !dbg !1145
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !1145
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !548, metadata !822), !dbg !1146
  %36 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1147, !tbaa !818
  %m_name23 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %36, i32 0, i32 1, !dbg !1148
  %37 = load i8*, i8** %m_name23, align 8, !dbg !1148, !tbaa !1108
  %38 = load i8*, i8** %p, align 8, !dbg !1149, !tbaa !818
  %add.ptr = getelementptr i8, i8* %38, i64 1, !dbg !1150
  %call24 = call i32 @strcmp(i8* %37, i8* %add.ptr) #2, !dbg !1151
  store i32 %call24, i32* %tmp, !dbg !1145, !tbaa !1049
  %39 = bitcast i64* %__s2_len to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1152
  %40 = bitcast i64* %__s1_len to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !1152
  %41 = load i32, i32* %tmp, !dbg !1153, !tbaa !1049
  %cmp25 = icmp eq i32 %41, 0, !dbg !1154
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !1155

if.then.26:                                       ; preds = %land.lhs.true.22
  %42 = load i8*, i8** @_Py_PackageContext, align 8, !dbg !1156, !tbaa !818
  store i8* %42, i8** %name, align 8, !dbg !1158, !tbaa !818
  store i8* null, i8** @_Py_PackageContext, align 8, !dbg !1159, !tbaa !818
  br label %if.end.27, !dbg !1160

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.22, %if.then.19
  %43 = bitcast i8** %p to i8*, !dbg !1161
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1161
  br label %if.end.28, !dbg !1162

if.end.28:                                        ; preds = %if.end.27, %if.end.17
  %44 = load i8*, i8** %name, align 8, !dbg !1163, !tbaa !818
  %call29 = call %struct._object* @PyModule_New(i8* %44), !dbg !1165
  %45 = bitcast %struct._object* %call29 to %struct.PyModuleObject*, !dbg !1166
  store %struct.PyModuleObject* %45, %struct.PyModuleObject** %m, align 8, !dbg !1167, !tbaa !818
  %cmp30 = icmp eq %struct.PyModuleObject* %45, null, !dbg !1168
  br i1 %cmp30, label %if.then.31, label %if.end.32, !dbg !1169

if.then.31:                                       ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval, !dbg !1170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1170

if.end.32:                                        ; preds = %if.end.28
  %46 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1171, !tbaa !818
  %m_size = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %46, i32 0, i32 3, !dbg !1172
  %47 = load i64, i64* %m_size, align 8, !dbg !1172, !tbaa !1173
  %cmp33 = icmp sgt i64 %47, 0, !dbg !1174
  br i1 %cmp33, label %if.then.34, label %if.end.50, !dbg !1175

if.then.34:                                       ; preds = %if.end.32
  %48 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1176, !tbaa !818
  %m_size35 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %48, i32 0, i32 3, !dbg !1177
  %49 = load i64, i64* %m_size35, align 8, !dbg !1177, !tbaa !1173
  %call36 = call i8* @PyMem_Malloc(i64 %49), !dbg !1178
  %50 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1179, !tbaa !818
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %50, i32 0, i32 3, !dbg !1180
  store i8* %call36, i8** %md_state, align 8, !dbg !1181, !tbaa !844
  %51 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1182, !tbaa !818
  %md_state37 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %51, i32 0, i32 3, !dbg !1183
  %52 = load i8*, i8** %md_state37, align 8, !dbg !1183, !tbaa !844
  %tobool38 = icmp ne i8* %52, null, !dbg !1182
  br i1 %tobool38, label %if.end.47, label %if.then.39, !dbg !1184

if.then.39:                                       ; preds = %if.then.34
  %call40 = call %struct._object* @PyErr_NoMemory(), !dbg !1185
  br label %do.body, !dbg !1186

do.body:                                          ; preds = %if.then.39
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1187
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !1187
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !549, metadata !822), !dbg !1189
  %54 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1190, !tbaa !818
  %55 = bitcast %struct.PyModuleObject* %54 to %struct._object*, !dbg !1191
  store %struct._object* %55, %struct._object** %_py_decref_tmp, align 8, !dbg !1189, !tbaa !818
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1192, !tbaa !818
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1194
  %57 = load i64, i64* %ob_refcnt42, align 8, !dbg !1195, !tbaa !882
  %dec = add i64 %57, -1, !dbg !1195
  store i64 %dec, i64* %ob_refcnt42, align 8, !dbg !1195, !tbaa !882
  %cmp43 = icmp ne i64 %dec, 0, !dbg !1196
  br i1 %cmp43, label %if.then.44, label %if.else, !dbg !1197

if.then.44:                                       ; preds = %do.body
  br label %if.end.46, !dbg !1198

if.else:                                          ; preds = %do.body
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1200, !tbaa !818
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1202
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1202, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1203
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1203, !tbaa !892
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1204, !tbaa !818
  call void %60(%struct._object* %61), !dbg !1205
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.44
  %62 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !1206
  br label %do.cond, !dbg !1208

do.cond:                                          ; preds = %if.end.46
  br label %do.end, !dbg !1209

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1211
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1211

if.end.47:                                        ; preds = %if.then.34
  %63 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1212, !tbaa !818
  %md_state48 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %63, i32 0, i32 3, !dbg !1213
  %64 = load i8*, i8** %md_state48, align 8, !dbg !1213, !tbaa !844
  %65 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1214, !tbaa !818
  %m_size49 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %65, i32 0, i32 3, !dbg !1215
  %66 = load i64, i64* %m_size49, align 8, !dbg !1215, !tbaa !1173
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 %66, i32 1, i1 false), !dbg !1216
  br label %if.end.50, !dbg !1217

if.end.50:                                        ; preds = %if.end.47, %if.end.32
  %67 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1218, !tbaa !818
  %68 = bitcast %struct.PyModuleObject* %67 to %struct._object*, !dbg !1219
  %call51 = call %struct._object* @PyModule_GetDict(%struct._object* %68), !dbg !1220
  store %struct._object* %call51, %struct._object** %d, align 8, !dbg !1221, !tbaa !818
  %69 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1222, !tbaa !818
  %m_methods = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %69, i32 0, i32 4, !dbg !1223
  %70 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_methods, align 8, !dbg !1223, !tbaa !1224
  %cmp52 = icmp ne %struct.PyMethodDef* %70, null, !dbg !1225
  br i1 %cmp52, label %if.then.53, label %if.end.205, !dbg !1226

if.then.53:                                       ; preds = %if.end.50
  %71 = load i8*, i8** %name, align 8, !dbg !1227, !tbaa !818
  %call54 = call %struct._object* @PyUnicode_FromString(i8* %71), !dbg !1228
  store %struct._object* %call54, %struct._object** %n, align 8, !dbg !1229, !tbaa !818
  %72 = load %struct._object*, %struct._object** %n, align 8, !dbg !1230, !tbaa !818
  %cmp55 = icmp eq %struct._object* %72, null, !dbg !1231
  br i1 %cmp55, label %if.then.56, label %if.end.70, !dbg !1232

if.then.56:                                       ; preds = %if.then.53
  br label %do.body.57, !dbg !1233

do.body.57:                                       ; preds = %if.then.56
  %73 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !1234
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !1234
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !555, metadata !822), !dbg !1236
  %74 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1237, !tbaa !818
  %75 = bitcast %struct.PyModuleObject* %74 to %struct._object*, !dbg !1238
  store %struct._object* %75, %struct._object** %_py_decref_tmp59, align 8, !dbg !1236, !tbaa !818
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1239, !tbaa !818
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !1241
  %77 = load i64, i64* %ob_refcnt60, align 8, !dbg !1242, !tbaa !882
  %dec61 = add i64 %77, -1, !dbg !1242
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !1242, !tbaa !882
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !1243
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !1244

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67, !dbg !1245

if.else.64:                                       ; preds = %do.body.57
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1247, !tbaa !818
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !1249
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !1249, !tbaa !890
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4, !dbg !1250
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !1250, !tbaa !892
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1251, !tbaa !818
  call void %80(%struct._object* %81), !dbg !1252
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %82 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !1253
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !1253
  br label %do.cond.68, !dbg !1255

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !1256

do.end.69:                                        ; preds = %do.cond.68
  store %struct._object* null, %struct._object** %retval, !dbg !1258
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1258

if.end.70:                                        ; preds = %if.then.53
  %83 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1259, !tbaa !818
  %m_methods71 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %83, i32 0, i32 4, !dbg !1260
  %84 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_methods71, align 8, !dbg !1260, !tbaa !1224
  store %struct.PyMethodDef* %84, %struct.PyMethodDef** %ml, align 8, !dbg !1261, !tbaa !818
  br label %for.cond, !dbg !1262

for.cond:                                         ; preds = %for.inc, %if.end.70
  %85 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8, !dbg !1263, !tbaa !818
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %85, i32 0, i32 0, !dbg !1266
  %86 = load i8*, i8** %ml_name, align 8, !dbg !1266, !tbaa !1267
  %cmp72 = icmp ne i8* %86, null, !dbg !1269
  br i1 %cmp72, label %for.body, label %for.end, !dbg !1270

for.body:                                         ; preds = %for.cond
  %87 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8, !dbg !1271, !tbaa !818
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %87, i32 0, i32 2, !dbg !1272
  %88 = load i32, i32* %ml_flags, align 4, !dbg !1272, !tbaa !1273
  %and = and i32 %88, 16, !dbg !1274
  %tobool73 = icmp ne i32 %and, 0, !dbg !1274
  br i1 %tobool73, label %if.then.77, label %lor.lhs.false, !dbg !1275

lor.lhs.false:                                    ; preds = %for.body
  %89 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8, !dbg !1276, !tbaa !818
  %ml_flags74 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %89, i32 0, i32 2, !dbg !1277
  %90 = load i32, i32* %ml_flags74, align 4, !dbg !1277, !tbaa !1273
  %and75 = and i32 %90, 32, !dbg !1278
  %tobool76 = icmp ne i32 %and75, 0, !dbg !1278
  br i1 %tobool76, label %if.then.77, label %if.end.104, !dbg !1279

if.then.77:                                       ; preds = %lor.lhs.false, %for.body
  %91 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1280, !tbaa !818
  call void @PyErr_SetString(%struct._object* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0)), !dbg !1281
  br label %do.body.78, !dbg !1282

do.body.78:                                       ; preds = %if.then.77
  %92 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 8, i8* %92) #2, !dbg !1283
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp80, metadata !561, metadata !822), !dbg !1285
  %93 = load %struct._object*, %struct._object** %n, align 8, !dbg !1286, !tbaa !818
  store %struct._object* %93, %struct._object** %_py_decref_tmp80, align 8, !dbg !1285, !tbaa !818
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !1287, !tbaa !818
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0, !dbg !1289
  %95 = load i64, i64* %ob_refcnt81, align 8, !dbg !1290, !tbaa !882
  %dec82 = add i64 %95, -1, !dbg !1290
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !1290, !tbaa !882
  %cmp83 = icmp ne i64 %dec82, 0, !dbg !1291
  br i1 %cmp83, label %if.then.84, label %if.else.85, !dbg !1292

if.then.84:                                       ; preds = %do.body.78
  br label %if.end.88, !dbg !1293

if.else.85:                                       ; preds = %do.body.78
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !1295, !tbaa !818
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1, !dbg !1297
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !1297, !tbaa !890
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4, !dbg !1298
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !1298, !tbaa !892
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !1299, !tbaa !818
  call void %98(%struct._object* %99), !dbg !1300
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  %100 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !1301
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !1301
  br label %do.cond.89, !dbg !1303

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90, !dbg !1304

do.end.90:                                        ; preds = %do.cond.89
  br label %do.body.91, !dbg !1306

do.body.91:                                       ; preds = %do.end.90
  %101 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !1307
  call void @llvm.lifetime.start(i64 8, i8* %101) #2, !dbg !1307
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !568, metadata !822), !dbg !1309
  %102 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1310, !tbaa !818
  %103 = bitcast %struct.PyModuleObject* %102 to %struct._object*, !dbg !1311
  store %struct._object* %103, %struct._object** %_py_decref_tmp93, align 8, !dbg !1309, !tbaa !818
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1312, !tbaa !818
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !1314
  %105 = load i64, i64* %ob_refcnt94, align 8, !dbg !1315, !tbaa !882
  %dec95 = add i64 %105, -1, !dbg !1315
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !1315, !tbaa !882
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !1316
  br i1 %cmp96, label %if.then.97, label %if.else.98, !dbg !1317

if.then.97:                                       ; preds = %do.body.91
  br label %if.end.101, !dbg !1318

if.else.98:                                       ; preds = %do.body.91
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1320, !tbaa !818
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !1322
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !1322, !tbaa !890
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !1323
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1323, !tbaa !892
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1324, !tbaa !818
  call void %108(%struct._object* %109), !dbg !1325
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  %110 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !1326
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !1326
  br label %do.cond.102, !dbg !1327

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103, !dbg !1328

do.end.103:                                       ; preds = %do.cond.102
  store %struct._object* null, %struct._object** %retval, !dbg !1330
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1330

if.end.104:                                       ; preds = %lor.lhs.false
  %111 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8, !dbg !1331, !tbaa !818
  %112 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1332, !tbaa !818
  %113 = bitcast %struct.PyModuleObject* %112 to %struct._object*, !dbg !1333
  %114 = load %struct._object*, %struct._object** %n, align 8, !dbg !1334, !tbaa !818
  %call105 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %111, %struct._object* %113, %struct._object* %114), !dbg !1335
  store %struct._object* %call105, %struct._object** %v, align 8, !dbg !1336, !tbaa !818
  %115 = load %struct._object*, %struct._object** %v, align 8, !dbg !1337, !tbaa !818
  %cmp106 = icmp eq %struct._object* %115, null, !dbg !1338
  br i1 %cmp106, label %if.then.107, label %if.end.134, !dbg !1339

if.then.107:                                      ; preds = %if.end.104
  br label %do.body.108, !dbg !1340

do.body.108:                                      ; preds = %if.then.107
  %116 = bitcast %struct._object** %_py_decref_tmp110 to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %116) #2, !dbg !1341
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp110, metadata !570, metadata !822), !dbg !1343
  %117 = load %struct._object*, %struct._object** %n, align 8, !dbg !1344, !tbaa !818
  store %struct._object* %117, %struct._object** %_py_decref_tmp110, align 8, !dbg !1343, !tbaa !818
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8, !dbg !1345, !tbaa !818
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0, !dbg !1347
  %119 = load i64, i64* %ob_refcnt111, align 8, !dbg !1348, !tbaa !882
  %dec112 = add i64 %119, -1, !dbg !1348
  store i64 %dec112, i64* %ob_refcnt111, align 8, !dbg !1348, !tbaa !882
  %cmp113 = icmp ne i64 %dec112, 0, !dbg !1349
  br i1 %cmp113, label %if.then.114, label %if.else.115, !dbg !1350

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118, !dbg !1351

if.else.115:                                      ; preds = %do.body.108
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8, !dbg !1353, !tbaa !818
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1, !dbg !1355
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8, !dbg !1355, !tbaa !890
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4, !dbg !1356
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8, !dbg !1356, !tbaa !892
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8, !dbg !1357, !tbaa !818
  call void %122(%struct._object* %123), !dbg !1358
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  %124 = bitcast %struct._object** %_py_decref_tmp110 to i8*, !dbg !1359
  call void @llvm.lifetime.end(i64 8, i8* %124) #2, !dbg !1359
  br label %do.cond.119, !dbg !1361

do.cond.119:                                      ; preds = %if.end.118
  br label %do.end.120, !dbg !1362

do.end.120:                                       ; preds = %do.cond.119
  br label %do.body.121, !dbg !1364

do.body.121:                                      ; preds = %do.end.120
  %125 = bitcast %struct._object** %_py_decref_tmp123 to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 8, i8* %125) #2, !dbg !1365
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp123, metadata !574, metadata !822), !dbg !1367
  %126 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1368, !tbaa !818
  %127 = bitcast %struct.PyModuleObject* %126 to %struct._object*, !dbg !1369
  store %struct._object* %127, %struct._object** %_py_decref_tmp123, align 8, !dbg !1367, !tbaa !818
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8, !dbg !1370, !tbaa !818
  %ob_refcnt124 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0, !dbg !1372
  %129 = load i64, i64* %ob_refcnt124, align 8, !dbg !1373, !tbaa !882
  %dec125 = add i64 %129, -1, !dbg !1373
  store i64 %dec125, i64* %ob_refcnt124, align 8, !dbg !1373, !tbaa !882
  %cmp126 = icmp ne i64 %dec125, 0, !dbg !1374
  br i1 %cmp126, label %if.then.127, label %if.else.128, !dbg !1375

if.then.127:                                      ; preds = %do.body.121
  br label %if.end.131, !dbg !1376

if.else.128:                                      ; preds = %do.body.121
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8, !dbg !1378, !tbaa !818
  %ob_type129 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1, !dbg !1380
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type129, align 8, !dbg !1380, !tbaa !890
  %tp_dealloc130 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4, !dbg !1381
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc130, align 8, !dbg !1381, !tbaa !892
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8, !dbg !1382, !tbaa !818
  call void %132(%struct._object* %133), !dbg !1383
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.127
  %134 = bitcast %struct._object** %_py_decref_tmp123 to i8*, !dbg !1384
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !1384
  br label %do.cond.132, !dbg !1385

do.cond.132:                                      ; preds = %if.end.131
  br label %do.end.133, !dbg !1386

do.end.133:                                       ; preds = %do.cond.132
  store %struct._object* null, %struct._object** %retval, !dbg !1388
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1388

if.end.134:                                       ; preds = %if.end.104
  %135 = load %struct._object*, %struct._object** %d, align 8, !dbg !1389, !tbaa !818
  %136 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8, !dbg !1390, !tbaa !818
  %ml_name135 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %136, i32 0, i32 0, !dbg !1391
  %137 = load i8*, i8** %ml_name135, align 8, !dbg !1391, !tbaa !1267
  %138 = load %struct._object*, %struct._object** %v, align 8, !dbg !1392, !tbaa !818
  %call136 = call i32 @PyDict_SetItemString(%struct._object* %135, i8* %137, %struct._object* %138), !dbg !1393
  %cmp137 = icmp ne i32 %call136, 0, !dbg !1394
  br i1 %cmp137, label %if.then.138, label %if.end.178, !dbg !1395

if.then.138:                                      ; preds = %if.end.134
  br label %do.body.139, !dbg !1396

do.body.139:                                      ; preds = %if.then.138
  %139 = bitcast %struct._object** %_py_decref_tmp141 to i8*, !dbg !1397
  call void @llvm.lifetime.start(i64 8, i8* %139) #2, !dbg !1397
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp141, metadata !576, metadata !822), !dbg !1399
  %140 = load %struct._object*, %struct._object** %v, align 8, !dbg !1400, !tbaa !818
  store %struct._object* %140, %struct._object** %_py_decref_tmp141, align 8, !dbg !1399, !tbaa !818
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8, !dbg !1401, !tbaa !818
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0, !dbg !1403
  %142 = load i64, i64* %ob_refcnt142, align 8, !dbg !1404, !tbaa !882
  %dec143 = add i64 %142, -1, !dbg !1404
  store i64 %dec143, i64* %ob_refcnt142, align 8, !dbg !1404, !tbaa !882
  %cmp144 = icmp ne i64 %dec143, 0, !dbg !1405
  br i1 %cmp144, label %if.then.145, label %if.else.146, !dbg !1406

if.then.145:                                      ; preds = %do.body.139
  br label %if.end.149, !dbg !1407

if.else.146:                                      ; preds = %do.body.139
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8, !dbg !1409, !tbaa !818
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1, !dbg !1411
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8, !dbg !1411, !tbaa !890
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 4, !dbg !1412
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8, !dbg !1412, !tbaa !892
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8, !dbg !1413, !tbaa !818
  call void %145(%struct._object* %146), !dbg !1414
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  %147 = bitcast %struct._object** %_py_decref_tmp141 to i8*, !dbg !1415
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !1415
  br label %do.cond.150, !dbg !1417

do.cond.150:                                      ; preds = %if.end.149
  br label %do.end.151, !dbg !1418

do.end.151:                                       ; preds = %do.cond.150
  br label %do.body.152, !dbg !1420

do.body.152:                                      ; preds = %do.end.151
  %148 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !1421
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !1421
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp154, metadata !580, metadata !822), !dbg !1423
  %149 = load %struct._object*, %struct._object** %n, align 8, !dbg !1424, !tbaa !818
  store %struct._object* %149, %struct._object** %_py_decref_tmp154, align 8, !dbg !1423, !tbaa !818
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !1425, !tbaa !818
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0, !dbg !1427
  %151 = load i64, i64* %ob_refcnt155, align 8, !dbg !1428, !tbaa !882
  %dec156 = add i64 %151, -1, !dbg !1428
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !1428, !tbaa !882
  %cmp157 = icmp ne i64 %dec156, 0, !dbg !1429
  br i1 %cmp157, label %if.then.158, label %if.else.159, !dbg !1430

if.then.158:                                      ; preds = %do.body.152
  br label %if.end.162, !dbg !1431

if.else.159:                                      ; preds = %do.body.152
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !1433, !tbaa !818
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1, !dbg !1435
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8, !dbg !1435, !tbaa !890
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4, !dbg !1436
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8, !dbg !1436, !tbaa !892
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8, !dbg !1437, !tbaa !818
  call void %154(%struct._object* %155), !dbg !1438
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.158
  %156 = bitcast %struct._object** %_py_decref_tmp154 to i8*, !dbg !1439
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !1439
  br label %do.cond.163, !dbg !1440

do.cond.163:                                      ; preds = %if.end.162
  br label %do.end.164, !dbg !1441

do.end.164:                                       ; preds = %do.cond.163
  br label %do.body.165, !dbg !1443

do.body.165:                                      ; preds = %do.end.164
  %157 = bitcast %struct._object** %_py_decref_tmp167 to i8*, !dbg !1444
  call void @llvm.lifetime.start(i64 8, i8* %157) #2, !dbg !1444
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp167, metadata !582, metadata !822), !dbg !1446
  %158 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1447, !tbaa !818
  %159 = bitcast %struct.PyModuleObject* %158 to %struct._object*, !dbg !1448
  store %struct._object* %159, %struct._object** %_py_decref_tmp167, align 8, !dbg !1446, !tbaa !818
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8, !dbg !1449, !tbaa !818
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 0, !dbg !1451
  %161 = load i64, i64* %ob_refcnt168, align 8, !dbg !1452, !tbaa !882
  %dec169 = add i64 %161, -1, !dbg !1452
  store i64 %dec169, i64* %ob_refcnt168, align 8, !dbg !1452, !tbaa !882
  %cmp170 = icmp ne i64 %dec169, 0, !dbg !1453
  br i1 %cmp170, label %if.then.171, label %if.else.172, !dbg !1454

if.then.171:                                      ; preds = %do.body.165
  br label %if.end.175, !dbg !1455

if.else.172:                                      ; preds = %do.body.165
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8, !dbg !1457, !tbaa !818
  %ob_type173 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 1, !dbg !1459
  %163 = load %struct._typeobject*, %struct._typeobject** %ob_type173, align 8, !dbg !1459, !tbaa !890
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %163, i32 0, i32 4, !dbg !1460
  %164 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8, !dbg !1460, !tbaa !892
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8, !dbg !1461, !tbaa !818
  call void %164(%struct._object* %165), !dbg !1462
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.then.171
  %166 = bitcast %struct._object** %_py_decref_tmp167 to i8*, !dbg !1463
  call void @llvm.lifetime.end(i64 8, i8* %166) #2, !dbg !1463
  br label %do.cond.176, !dbg !1464

do.cond.176:                                      ; preds = %if.end.175
  br label %do.end.177, !dbg !1465

do.end.177:                                       ; preds = %do.cond.176
  store %struct._object* null, %struct._object** %retval, !dbg !1467
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1467

if.end.178:                                       ; preds = %if.end.134
  br label %do.body.179, !dbg !1468

do.body.179:                                      ; preds = %if.end.178
  %167 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !1469
  call void @llvm.lifetime.start(i64 8, i8* %167) #2, !dbg !1469
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp181, metadata !584, metadata !822), !dbg !1471
  %168 = load %struct._object*, %struct._object** %v, align 8, !dbg !1472, !tbaa !818
  store %struct._object* %168, %struct._object** %_py_decref_tmp181, align 8, !dbg !1471, !tbaa !818
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !1473, !tbaa !818
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0, !dbg !1475
  %170 = load i64, i64* %ob_refcnt182, align 8, !dbg !1476, !tbaa !882
  %dec183 = add i64 %170, -1, !dbg !1476
  store i64 %dec183, i64* %ob_refcnt182, align 8, !dbg !1476, !tbaa !882
  %cmp184 = icmp ne i64 %dec183, 0, !dbg !1477
  br i1 %cmp184, label %if.then.185, label %if.else.186, !dbg !1478

if.then.185:                                      ; preds = %do.body.179
  br label %if.end.189, !dbg !1479

if.else.186:                                      ; preds = %do.body.179
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !1481, !tbaa !818
  %ob_type187 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1, !dbg !1483
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type187, align 8, !dbg !1483, !tbaa !890
  %tp_dealloc188 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4, !dbg !1484
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc188, align 8, !dbg !1484, !tbaa !892
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !1485, !tbaa !818
  call void %173(%struct._object* %174), !dbg !1486
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.186, %if.then.185
  %175 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !1487
  call void @llvm.lifetime.end(i64 8, i8* %175) #2, !dbg !1487
  br label %do.cond.190, !dbg !1489

do.cond.190:                                      ; preds = %if.end.189
  br label %do.end.191, !dbg !1490

do.end.191:                                       ; preds = %do.cond.190
  br label %for.inc, !dbg !1492

for.inc:                                          ; preds = %do.end.191
  %176 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml, align 8, !dbg !1493, !tbaa !818
  %incdec.ptr = getelementptr %struct.PyMethodDef, %struct.PyMethodDef* %176, i32 1, !dbg !1493
  store %struct.PyMethodDef* %incdec.ptr, %struct.PyMethodDef** %ml, align 8, !dbg !1493, !tbaa !818
  br label %for.cond, !dbg !1494

for.end:                                          ; preds = %for.cond
  br label %do.body.192, !dbg !1495

do.body.192:                                      ; preds = %for.end
  %177 = bitcast %struct._object** %_py_decref_tmp194 to i8*, !dbg !1496
  call void @llvm.lifetime.start(i64 8, i8* %177) #2, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp194, metadata !586, metadata !822), !dbg !1498
  %178 = load %struct._object*, %struct._object** %n, align 8, !dbg !1499, !tbaa !818
  store %struct._object* %178, %struct._object** %_py_decref_tmp194, align 8, !dbg !1498, !tbaa !818
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8, !dbg !1500, !tbaa !818
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %179, i32 0, i32 0, !dbg !1502
  %180 = load i64, i64* %ob_refcnt195, align 8, !dbg !1503, !tbaa !882
  %dec196 = add i64 %180, -1, !dbg !1503
  store i64 %dec196, i64* %ob_refcnt195, align 8, !dbg !1503, !tbaa !882
  %cmp197 = icmp ne i64 %dec196, 0, !dbg !1504
  br i1 %cmp197, label %if.then.198, label %if.else.199, !dbg !1505

if.then.198:                                      ; preds = %do.body.192
  br label %if.end.202, !dbg !1506

if.else.199:                                      ; preds = %do.body.192
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8, !dbg !1508, !tbaa !818
  %ob_type200 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 1, !dbg !1510
  %182 = load %struct._typeobject*, %struct._typeobject** %ob_type200, align 8, !dbg !1510, !tbaa !890
  %tp_dealloc201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %182, i32 0, i32 4, !dbg !1511
  %183 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc201, align 8, !dbg !1511, !tbaa !892
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8, !dbg !1512, !tbaa !818
  call void %183(%struct._object* %184), !dbg !1513
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.198
  %185 = bitcast %struct._object** %_py_decref_tmp194 to i8*, !dbg !1514
  call void @llvm.lifetime.end(i64 8, i8* %185) #2, !dbg !1514
  br label %do.cond.203, !dbg !1516

do.cond.203:                                      ; preds = %if.end.202
  br label %do.end.204, !dbg !1517

do.end.204:                                       ; preds = %do.cond.203
  br label %if.end.205, !dbg !1519

if.end.205:                                       ; preds = %do.end.204, %if.end.50
  %186 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1520, !tbaa !818
  %m_doc = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %186, i32 0, i32 2, !dbg !1521
  %187 = load i8*, i8** %m_doc, align 8, !dbg !1521, !tbaa !1522
  %cmp206 = icmp ne i8* %187, null, !dbg !1523
  br i1 %cmp206, label %if.then.207, label %if.end.262, !dbg !1524

if.then.207:                                      ; preds = %if.end.205
  %188 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1525, !tbaa !818
  %m_doc208 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %188, i32 0, i32 2, !dbg !1526
  %189 = load i8*, i8** %m_doc208, align 8, !dbg !1526, !tbaa !1522
  %call209 = call %struct._object* @PyUnicode_FromString(i8* %189), !dbg !1527
  store %struct._object* %call209, %struct._object** %v, align 8, !dbg !1528, !tbaa !818
  %190 = load %struct._object*, %struct._object** %v, align 8, !dbg !1529, !tbaa !818
  %cmp210 = icmp eq %struct._object* %190, null, !dbg !1530
  br i1 %cmp210, label %if.then.214, label %lor.lhs.false.211, !dbg !1531

lor.lhs.false.211:                                ; preds = %if.then.207
  %191 = load %struct._object*, %struct._object** %d, align 8, !dbg !1532, !tbaa !818
  %192 = load %struct._object*, %struct._object** %v, align 8, !dbg !1534, !tbaa !818
  %call212 = call i32 @PyDict_SetItemString(%struct._object* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* %192), !dbg !1535
  %cmp213 = icmp ne i32 %call212, 0, !dbg !1536
  br i1 %cmp213, label %if.then.214, label %if.end.248, !dbg !1537

if.then.214:                                      ; preds = %lor.lhs.false.211, %if.then.207
  br label %do.body.215, !dbg !1538

do.body.215:                                      ; preds = %if.then.214
  %193 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1539
  call void @llvm.lifetime.start(i64 8, i8* %193) #2, !dbg !1539
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !588, metadata !822), !dbg !1541
  %194 = load %struct._object*, %struct._object** %v, align 8, !dbg !1542, !tbaa !818
  store %struct._object* %194, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1541, !tbaa !818
  %195 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1543, !tbaa !818
  %cmp217 = icmp ne %struct._object* %195, null, !dbg !1544
  br i1 %cmp217, label %if.then.218, label %if.end.232, !dbg !1545

if.then.218:                                      ; preds = %do.body.215
  br label %do.body.219, !dbg !1546

do.body.219:                                      ; preds = %if.then.218
  %196 = bitcast %struct._object** %_py_decref_tmp221 to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 8, i8* %196) #2, !dbg !1548
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp221, metadata !594, metadata !822), !dbg !1550
  %197 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1551, !tbaa !818
  store %struct._object* %197, %struct._object** %_py_decref_tmp221, align 8, !dbg !1550, !tbaa !818
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8, !dbg !1552, !tbaa !818
  %ob_refcnt222 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 0, !dbg !1554
  %199 = load i64, i64* %ob_refcnt222, align 8, !dbg !1555, !tbaa !882
  %dec223 = add i64 %199, -1, !dbg !1555
  store i64 %dec223, i64* %ob_refcnt222, align 8, !dbg !1555, !tbaa !882
  %cmp224 = icmp ne i64 %dec223, 0, !dbg !1556
  br i1 %cmp224, label %if.then.225, label %if.else.226, !dbg !1557

if.then.225:                                      ; preds = %do.body.219
  br label %if.end.229, !dbg !1558

if.else.226:                                      ; preds = %do.body.219
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8, !dbg !1560, !tbaa !818
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 1, !dbg !1562
  %201 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8, !dbg !1562, !tbaa !890
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %201, i32 0, i32 4, !dbg !1563
  %202 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8, !dbg !1563, !tbaa !892
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8, !dbg !1564, !tbaa !818
  call void %202(%struct._object* %203), !dbg !1565
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  %204 = bitcast %struct._object** %_py_decref_tmp221 to i8*, !dbg !1566
  call void @llvm.lifetime.end(i64 8, i8* %204) #2, !dbg !1566
  br label %do.cond.230, !dbg !1568

do.cond.230:                                      ; preds = %if.end.229
  br label %do.end.231, !dbg !1569

do.end.231:                                       ; preds = %do.cond.230
  br label %if.end.232, !dbg !1571

if.end.232:                                       ; preds = %do.end.231, %do.body.215
  %205 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1573
  call void @llvm.lifetime.end(i64 8, i8* %205) #2, !dbg !1573
  br label %do.cond.233, !dbg !1576

do.cond.233:                                      ; preds = %if.end.232
  br label %do.end.234, !dbg !1577

do.end.234:                                       ; preds = %do.cond.233
  br label %do.body.235, !dbg !1579

do.body.235:                                      ; preds = %do.end.234
  %206 = bitcast %struct._object** %_py_decref_tmp237 to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %206) #2, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp237, metadata !597, metadata !822), !dbg !1582
  %207 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1583, !tbaa !818
  %208 = bitcast %struct.PyModuleObject* %207 to %struct._object*, !dbg !1584
  store %struct._object* %208, %struct._object** %_py_decref_tmp237, align 8, !dbg !1582, !tbaa !818
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8, !dbg !1585, !tbaa !818
  %ob_refcnt238 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0, !dbg !1587
  %210 = load i64, i64* %ob_refcnt238, align 8, !dbg !1588, !tbaa !882
  %dec239 = add i64 %210, -1, !dbg !1588
  store i64 %dec239, i64* %ob_refcnt238, align 8, !dbg !1588, !tbaa !882
  %cmp240 = icmp ne i64 %dec239, 0, !dbg !1589
  br i1 %cmp240, label %if.then.241, label %if.else.242, !dbg !1590

if.then.241:                                      ; preds = %do.body.235
  br label %if.end.245, !dbg !1591

if.else.242:                                      ; preds = %do.body.235
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8, !dbg !1593, !tbaa !818
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1, !dbg !1595
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8, !dbg !1595, !tbaa !890
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4, !dbg !1596
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8, !dbg !1596, !tbaa !892
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8, !dbg !1597, !tbaa !818
  call void %213(%struct._object* %214), !dbg !1598
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %if.then.241
  %215 = bitcast %struct._object** %_py_decref_tmp237 to i8*, !dbg !1599
  call void @llvm.lifetime.end(i64 8, i8* %215) #2, !dbg !1599
  br label %do.cond.246, !dbg !1601

do.cond.246:                                      ; preds = %if.end.245
  br label %do.end.247, !dbg !1602

do.end.247:                                       ; preds = %do.cond.246
  store %struct._object* null, %struct._object** %retval, !dbg !1604
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1604

if.end.248:                                       ; preds = %lor.lhs.false.211
  br label %do.body.249, !dbg !1605

do.body.249:                                      ; preds = %if.end.248
  %216 = bitcast %struct._object** %_py_decref_tmp251 to i8*, !dbg !1606
  call void @llvm.lifetime.start(i64 8, i8* %216) #2, !dbg !1606
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp251, metadata !599, metadata !822), !dbg !1608
  %217 = load %struct._object*, %struct._object** %v, align 8, !dbg !1609, !tbaa !818
  store %struct._object* %217, %struct._object** %_py_decref_tmp251, align 8, !dbg !1608, !tbaa !818
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !1610, !tbaa !818
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %218, i32 0, i32 0, !dbg !1612
  %219 = load i64, i64* %ob_refcnt252, align 8, !dbg !1613, !tbaa !882
  %dec253 = add i64 %219, -1, !dbg !1613
  store i64 %dec253, i64* %ob_refcnt252, align 8, !dbg !1613, !tbaa !882
  %cmp254 = icmp ne i64 %dec253, 0, !dbg !1614
  br i1 %cmp254, label %if.then.255, label %if.else.256, !dbg !1615

if.then.255:                                      ; preds = %do.body.249
  br label %if.end.259, !dbg !1616

if.else.256:                                      ; preds = %do.body.249
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !1618, !tbaa !818
  %ob_type257 = getelementptr inbounds %struct._object, %struct._object* %220, i32 0, i32 1, !dbg !1620
  %221 = load %struct._typeobject*, %struct._typeobject** %ob_type257, align 8, !dbg !1620, !tbaa !890
  %tp_dealloc258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %221, i32 0, i32 4, !dbg !1621
  %222 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc258, align 8, !dbg !1621, !tbaa !892
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !1622, !tbaa !818
  call void %222(%struct._object* %223), !dbg !1623
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.255
  %224 = bitcast %struct._object** %_py_decref_tmp251 to i8*, !dbg !1624
  call void @llvm.lifetime.end(i64 8, i8* %224) #2, !dbg !1624
  br label %do.cond.260, !dbg !1626

do.cond.260:                                      ; preds = %if.end.259
  br label %do.end.261, !dbg !1627

do.end.261:                                       ; preds = %do.cond.260
  br label %if.end.262, !dbg !1629

if.end.262:                                       ; preds = %do.end.261, %if.end.205
  %225 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1630, !tbaa !818
  %226 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1631, !tbaa !818
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %226, i32 0, i32 2, !dbg !1632
  store %struct.PyModuleDef* %225, %struct.PyModuleDef** %md_def, align 8, !dbg !1633, !tbaa !837
  %227 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m, align 8, !dbg !1634, !tbaa !818
  %228 = bitcast %struct.PyModuleObject* %227 to %struct._object*, !dbg !1635
  store %struct._object* %228, %struct._object** %retval, !dbg !1636
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263, !dbg !1636

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.263

cleanup.263:                                      ; preds = %NewDefault, %if.end.262, %do.end.247, %do.end.177, %do.end.133, %do.end.103, %do.end.69, %do.end, %if.then.31, %if.then.4
  %229 = bitcast %struct._is** %interp to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %229) #2, !dbg !1637
  %230 = bitcast %struct.PyModuleObject** %m to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %230) #2, !dbg !1637
  %231 = bitcast i8** %name to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %231) #2, !dbg !1637
  %232 = bitcast %struct.PyMethodDef** %ml to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %232) #2, !dbg !1637
  %233 = bitcast %struct._object** %n to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %233) #2, !dbg !1637
  %234 = bitcast %struct._object** %v to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %234) #2, !dbg !1637
  %235 = bitcast %struct._object** %d to i8*, !dbg !1637
  call void @llvm.lifetime.end(i64 8, i8* %235) #2, !dbg !1637
  %236 = load %struct._object*, %struct._object** %retval, !dbg !1637
  ret %struct._object* %236, !dbg !1637
}

declare %struct._ts* @PyThreadState_Get() #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #6

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetDict(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !603, metadata !822), !dbg !1638
  %0 = bitcast %struct._object** %d to i8*, !dbg !1639
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1639
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !604, metadata !822), !dbg !1640
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1641, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1643
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1643, !tbaa !890
  %cmp = icmp eq %struct._typeobject* %2, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1644
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1645

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1646, !tbaa !818
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1648
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1648, !tbaa !890
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)), !dbg !1649
  %tobool = icmp ne i32 %call, 0, !dbg !1649
  br i1 %tobool, label %if.end, label %if.then, !dbg !1650

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 205), !dbg !1651
  store %struct._object* null, %struct._object** %retval, !dbg !1653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1653

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1654, !tbaa !818
  %6 = bitcast %struct._object* %5 to %struct.PyModuleObject*, !dbg !1655
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %6, i32 0, i32 1, !dbg !1656
  %7 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1656, !tbaa !857
  store %struct._object* %7, %struct._object** %d, align 8, !dbg !1657, !tbaa !818
  %8 = load %struct._object*, %struct._object** %d, align 8, !dbg !1658, !tbaa !818
  %cmp2 = icmp eq %struct._object* %8, null, !dbg !1660
  br i1 %cmp2, label %if.then.3, label %if.end.6, !dbg !1661

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyDict_New(), !dbg !1662
  store %struct._object* %call4, %struct._object** %d, align 8, !dbg !1663, !tbaa !818
  %9 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1664, !tbaa !818
  %10 = bitcast %struct._object* %9 to %struct.PyModuleObject*, !dbg !1665
  %md_dict5 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %10, i32 0, i32 1, !dbg !1666
  store %struct._object* %call4, %struct._object** %md_dict5, align 8, !dbg !1667, !tbaa !857
  br label %if.end.6, !dbg !1668

if.end.6:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct._object*, %struct._object** %d, align 8, !dbg !1669, !tbaa !818
  store %struct._object* %11, %struct._object** %retval, !dbg !1670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1670

cleanup:                                          ; preds = %if.end.6, %if.then
  %12 = bitcast %struct._object** %d to i8*, !dbg !1671
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !1671
  %13 = load %struct._object*, %struct._object** %retval, !dbg !1671
  ret %struct._object* %13, !dbg !1671
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetNameObject(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !607, metadata !822), !dbg !1672
  %0 = bitcast %struct._object** %d to i8*, !dbg !1673
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1673
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !608, metadata !822), !dbg !1674
  %1 = bitcast %struct._object** %name to i8*, !dbg !1675
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1675
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !609, metadata !822), !dbg !1676
  %2 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1677, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1679
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1679, !tbaa !890
  %cmp = icmp eq %struct._typeobject* %3, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1680
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1681

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1682, !tbaa !818
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1684
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1684, !tbaa !890
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)), !dbg !1685
  %tobool = icmp ne i32 %call, 0, !dbg !1685
  br i1 %tobool, label %if.end, label %if.then, !dbg !1686

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument(), !dbg !1687
  store %struct._object* null, %struct._object** %retval, !dbg !1689
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1689

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1690, !tbaa !818
  %7 = bitcast %struct._object* %6 to %struct.PyModuleObject*, !dbg !1691
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %7, i32 0, i32 1, !dbg !1692
  %8 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1692, !tbaa !857
  store %struct._object* %8, %struct._object** %d, align 8, !dbg !1693, !tbaa !818
  %9 = load %struct._object*, %struct._object** %d, align 8, !dbg !1694, !tbaa !818
  %cmp3 = icmp eq %struct._object* %9, null, !dbg !1696
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4, !dbg !1697

lor.lhs.false.4:                                  ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %d, align 8, !dbg !1698, !tbaa !818
  %call5 = call %struct._object* @PyDict_GetItemString(%struct._object* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !1699
  store %struct._object* %call5, %struct._object** %name, align 8, !dbg !1700, !tbaa !818
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1701
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7, !dbg !1702

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %11 = load %struct._object*, %struct._object** %name, align 8, !dbg !1703, !tbaa !818
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1704
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1704, !tbaa !890
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !1705
  %13 = load i64, i64* %tp_flags, align 8, !dbg !1705, !tbaa !1706
  %and = and i64 %13, 268435456, !dbg !1707
  %cmp9 = icmp ne i64 %and, 0, !dbg !1708
  br i1 %cmp9, label %if.end.11, label %if.then.10, !dbg !1709

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %if.end
  %14 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1710, !tbaa !818
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !1712
  store %struct._object* null, %struct._object** %retval, !dbg !1713
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1713

if.end.11:                                        ; preds = %lor.lhs.false.7
  %15 = load %struct._object*, %struct._object** %name, align 8, !dbg !1714, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1715
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1716, !tbaa !882
  %inc = add i64 %16, 1, !dbg !1716
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1716, !tbaa !882
  %17 = load %struct._object*, %struct._object** %name, align 8, !dbg !1717, !tbaa !818
  store %struct._object* %17, %struct._object** %retval, !dbg !1718
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1718

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %18 = bitcast %struct._object** %name to i8*, !dbg !1719
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1719
  %19 = bitcast %struct._object** %d to i8*, !dbg !1719
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1719
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1719
  ret %struct._object* %20, !dbg !1719
}

declare i32 @PyErr_BadArgument() #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetName(%struct._object* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !614, metadata !822), !dbg !1720
  %0 = bitcast %struct._object** %name to i8*, !dbg !1721
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1721
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !615, metadata !822), !dbg !1722
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1723, !tbaa !818
  %call = call %struct._object* @PyModule_GetNameObject(%struct._object* %1), !dbg !1724
  store %struct._object* %call, %struct._object** %name, align 8, !dbg !1722, !tbaa !818
  %2 = load %struct._object*, %struct._object** %name, align 8, !dbg !1725, !tbaa !818
  %cmp = icmp eq %struct._object* %2, null, !dbg !1727
  br i1 %cmp, label %if.then, label %if.end, !dbg !1728

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1729
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1729

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1730

do.body:                                          ; preds = %if.end
  %3 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1731
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1731
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !616, metadata !822), !dbg !1733
  %4 = load %struct._object*, %struct._object** %name, align 8, !dbg !1734, !tbaa !818
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !1733, !tbaa !818
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1735, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1737
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1738, !tbaa !882
  %dec = add i64 %6, -1, !dbg !1738
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1738, !tbaa !882
  %cmp1 = icmp ne i64 %dec, 0, !dbg !1739
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1740

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !1741

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1743, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1745
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1745, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !1746
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1746, !tbaa !892
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1747, !tbaa !818
  call void %9(%struct._object* %10), !dbg !1748
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1749
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1749
  br label %do.cond, !dbg !1751

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !1752

do.end:                                           ; preds = %do.cond
  %12 = load %struct._object*, %struct._object** %name, align 8, !dbg !1754, !tbaa !818
  %call4 = call i8* @PyUnicode_AsUTF8(%struct._object* %12), !dbg !1755
  store i8* %call4, i8** %retval, !dbg !1756
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1756

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct._object** %name to i8*, !dbg !1757
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1757
  %14 = load i8*, i8** %retval, !dbg !1757
  ret i8* %14, !dbg !1757
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetFilenameObject(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %fileobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !620, metadata !822), !dbg !1758
  %0 = bitcast %struct._object** %d to i8*, !dbg !1759
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1759
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !621, metadata !822), !dbg !1760
  %1 = bitcast %struct._object** %fileobj to i8*, !dbg !1761
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1761
  call void @llvm.dbg.declare(metadata %struct._object** %fileobj, metadata !622, metadata !822), !dbg !1762
  %2 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1763, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1765
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1765, !tbaa !890
  %cmp = icmp eq %struct._typeobject* %3, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1766
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1767

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1768, !tbaa !818
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1770
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1770, !tbaa !890
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)), !dbg !1771
  %tobool = icmp ne i32 %call, 0, !dbg !1771
  br i1 %tobool, label %if.end, label %if.then, !dbg !1772

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument(), !dbg !1773
  store %struct._object* null, %struct._object** %retval, !dbg !1775
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1775

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1776, !tbaa !818
  %7 = bitcast %struct._object* %6 to %struct.PyModuleObject*, !dbg !1777
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %7, i32 0, i32 1, !dbg !1778
  %8 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1778, !tbaa !857
  store %struct._object* %8, %struct._object** %d, align 8, !dbg !1779, !tbaa !818
  %9 = load %struct._object*, %struct._object** %d, align 8, !dbg !1780, !tbaa !818
  %cmp3 = icmp eq %struct._object* %9, null, !dbg !1782
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4, !dbg !1783

lor.lhs.false.4:                                  ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %d, align 8, !dbg !1784, !tbaa !818
  %call5 = call %struct._object* @PyDict_GetItemString(%struct._object* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)), !dbg !1785
  store %struct._object* %call5, %struct._object** %fileobj, align 8, !dbg !1786, !tbaa !818
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1787
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7, !dbg !1788

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %11 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1789, !tbaa !818
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1790
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1790, !tbaa !890
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !1791
  %13 = load i64, i64* %tp_flags, align 8, !dbg !1791, !tbaa !1706
  %and = and i64 %13, 268435456, !dbg !1792
  %cmp9 = icmp ne i64 %and, 0, !dbg !1793
  br i1 %cmp9, label %if.end.11, label %if.then.10, !dbg !1794

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %if.end
  %14 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1795, !tbaa !818
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)), !dbg !1797
  store %struct._object* null, %struct._object** %retval, !dbg !1798
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1798

if.end.11:                                        ; preds = %lor.lhs.false.7
  %15 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1799, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1800
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1801, !tbaa !882
  %inc = add i64 %16, 1, !dbg !1801
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1801, !tbaa !882
  %17 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1802, !tbaa !818
  store %struct._object* %17, %struct._object** %retval, !dbg !1803
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1803

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %18 = bitcast %struct._object** %fileobj to i8*, !dbg !1804
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1804
  %19 = bitcast %struct._object** %d to i8*, !dbg !1804
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1804
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1804
  ret %struct._object* %20, !dbg !1804
}

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetFilename(%struct._object* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct._object*, align 8
  %fileobj = alloca %struct._object*, align 8
  %utf8 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !625, metadata !822), !dbg !1805
  %0 = bitcast %struct._object** %fileobj to i8*, !dbg !1806
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1806
  call void @llvm.dbg.declare(metadata %struct._object** %fileobj, metadata !626, metadata !822), !dbg !1807
  %1 = bitcast i8** %utf8 to i8*, !dbg !1808
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1808
  call void @llvm.dbg.declare(metadata i8** %utf8, metadata !627, metadata !822), !dbg !1809
  %2 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1810, !tbaa !818
  %call = call %struct._object* @PyModule_GetFilenameObject(%struct._object* %2), !dbg !1811
  store %struct._object* %call, %struct._object** %fileobj, align 8, !dbg !1812, !tbaa !818
  %3 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1813, !tbaa !818
  %cmp = icmp eq %struct._object* %3, null, !dbg !1815
  br i1 %cmp, label %if.then, label %if.end, !dbg !1816

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1817
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1817

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1818, !tbaa !818
  %call1 = call i8* @PyUnicode_AsUTF8(%struct._object* %4), !dbg !1819
  store i8* %call1, i8** %utf8, align 8, !dbg !1820, !tbaa !818
  br label %do.body, !dbg !1821

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1822
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1822
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !628, metadata !822), !dbg !1824
  %6 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1825, !tbaa !818
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1824, !tbaa !818
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1826, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1828
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1829, !tbaa !882
  %dec = add i64 %8, -1, !dbg !1829
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1829, !tbaa !882
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1830
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1831

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !1832

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1834, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1836
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1836, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1837
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1837, !tbaa !892
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1838, !tbaa !818
  call void %11(%struct._object* %12), !dbg !1839
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1840
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1840
  br label %do.cond, !dbg !1842

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1843

do.end:                                           ; preds = %do.cond
  %14 = load i8*, i8** %utf8, align 8, !dbg !1845, !tbaa !818
  store i8* %14, i8** %retval, !dbg !1846
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1846

cleanup:                                          ; preds = %do.end, %if.then
  %15 = bitcast i8** %utf8 to i8*, !dbg !1847
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1847
  %16 = bitcast %struct._object** %fileobj to i8*, !dbg !1847
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1847
  %17 = load i8*, i8** %retval, !dbg !1847
  ret i8* %17, !dbg !1847
}

; Function Attrs: nounwind uwtable
define %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct.PyModuleDef*, align 8
  %m.addr = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !634, metadata !822), !dbg !1848
  %0 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1849, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1851
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1851, !tbaa !890
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1852
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1853

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1854, !tbaa !818
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1856
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1856, !tbaa !890
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)), !dbg !1857
  %tobool = icmp ne i32 %call, 0, !dbg !1857
  br i1 %tobool, label %if.end, label %if.then, !dbg !1858

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument(), !dbg !1859
  store %struct.PyModuleDef* null, %struct.PyModuleDef** %retval, !dbg !1861
  br label %return, !dbg !1861

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1862, !tbaa !818
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*, !dbg !1863
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 2, !dbg !1864
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !1864, !tbaa !837
  store %struct.PyModuleDef* %6, %struct.PyModuleDef** %retval, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.PyModuleDef*, %struct.PyModuleDef** %retval, !dbg !1866
  ret %struct.PyModuleDef* %7, !dbg !1866
}

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetState(%struct._object* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !639, metadata !822), !dbg !1867
  %0 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1868, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1870
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1870, !tbaa !890
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1871
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1872

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1873, !tbaa !818
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1875
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1875, !tbaa !890
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)), !dbg !1876
  %tobool = icmp ne i32 %call, 0, !dbg !1876
  br i1 %tobool, label %if.end, label %if.then, !dbg !1877

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @PyErr_BadArgument(), !dbg !1878
  store i8* null, i8** %retval, !dbg !1880
  br label %return, !dbg !1880

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1881, !tbaa !818
  %5 = bitcast %struct._object* %4 to %struct.PyModuleObject*, !dbg !1882
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 3, !dbg !1883
  %6 = load i8*, i8** %md_state, align 8, !dbg !1883, !tbaa !844
  store i8* %6, i8** %retval, !dbg !1884
  br label %return, !dbg !1884

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, !dbg !1885
  ret i8* %7, !dbg !1885
}

; Function Attrs: nounwind uwtable
define void @_PyModule_Clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !642, metadata !822), !dbg !1886
  %0 = bitcast %struct._object** %d to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1887
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !643, metadata !822), !dbg !1888
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1889, !tbaa !818
  %2 = bitcast %struct._object* %1 to %struct.PyModuleObject*, !dbg !1890
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 1, !dbg !1891
  %3 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1891, !tbaa !857
  store %struct._object* %3, %struct._object** %d, align 8, !dbg !1888, !tbaa !818
  %4 = load %struct._object*, %struct._object** %d, align 8, !dbg !1892, !tbaa !818
  %cmp = icmp ne %struct._object* %4, null, !dbg !1894
  br i1 %cmp, label %if.then, label %if.end, !dbg !1895

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %d, align 8, !dbg !1896, !tbaa !818
  call void @_PyModule_ClearDict(%struct._object* %5), !dbg !1897
  br label %if.end, !dbg !1897

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast %struct._object** %d to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !1898
  ret void, !dbg !1898
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
  store %struct._object* %d, %struct._object** %d.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %d.addr, metadata !646, metadata !822), !dbg !1899
  %0 = bitcast i64* %pos to i8*, !dbg !1900
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1900
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !647, metadata !822), !dbg !1901
  %1 = bitcast %struct._object** %key to i8*, !dbg !1902
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1902
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !648, metadata !822), !dbg !1903
  %2 = bitcast %struct._object** %value to i8*, !dbg !1902
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1902
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !649, metadata !822), !dbg !1904
  store i64 0, i64* %pos, align 8, !dbg !1905, !tbaa !1091
  br label %while.cond, !dbg !1906

while.cond:                                       ; preds = %if.end.190, %entry
  %3 = load %struct._object*, %struct._object** %d.addr, align 8, !dbg !1907, !tbaa !818
  %call = call i32 @PyDict_Next(%struct._object* %3, i64* %pos, %struct._object** %key, %struct._object** %value), !dbg !1910
  %tobool = icmp ne i32 %call, 0, !dbg !1906
  br i1 %tobool, label %while.body, label %while.end, !dbg !1906

while.body:                                       ; preds = %while.cond
  %4 = load %struct._object*, %struct._object** %value, align 8, !dbg !1911, !tbaa !818
  %cmp = icmp ne %struct._object* %4, @_Py_NoneStruct, !dbg !1912
  br i1 %cmp, label %land.lhs.true, label %if.end.190, !dbg !1913

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct._object*, %struct._object** %key, align 8, !dbg !1914, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1916
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1916, !tbaa !890
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !1917
  %7 = load i64, i64* %tp_flags, align 8, !dbg !1917, !tbaa !1706
  %and = and i64 %7, 268435456, !dbg !1918
  %cmp1 = icmp ne i64 %and, 0, !dbg !1919
  br i1 %cmp1, label %if.then, label %if.end.190, !dbg !1920

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %key, align 8, !dbg !1921, !tbaa !818
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*, !dbg !1922
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3, !dbg !1923
  %10 = bitcast %struct.anon* %state to i32*, !dbg !1924
  %bf.load = load i32, i32* %10, align 4, !dbg !1924
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1924
  %bf.clear = and i32 %bf.lshr, 7, !dbg !1924
  %cmp2 = icmp eq i32 %bf.clear, 1, !dbg !1925
  br i1 %cmp2, label %cond.true, label %cond.false.19, !dbg !1926

cond.true:                                        ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %key, align 8, !dbg !1927, !tbaa !818
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*, !dbg !1929
  %state3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3, !dbg !1930
  %13 = bitcast %struct.anon* %state3 to i32*, !dbg !1931
  %bf.load4 = load i32, i32* %13, align 4, !dbg !1931
  %bf.lshr5 = lshr i32 %bf.load4, 5, !dbg !1931
  %bf.clear6 = and i32 %bf.lshr5, 1, !dbg !1931
  %tobool7 = icmp ne i32 %bf.clear6, 0, !dbg !1932
  br i1 %tobool7, label %cond.true.8, label %cond.false.16, !dbg !1932

cond.true.8:                                      ; preds = %cond.true
  %14 = load %struct._object*, %struct._object** %key, align 8, !dbg !1933, !tbaa !818
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*, !dbg !1935
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 3, !dbg !1936
  %16 = bitcast %struct.anon* %state9 to i32*, !dbg !1937
  %bf.load10 = load i32, i32* %16, align 4, !dbg !1937
  %bf.lshr11 = lshr i32 %bf.load10, 6, !dbg !1937
  %bf.clear12 = and i32 %bf.lshr11, 1, !dbg !1937
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !1938
  br i1 %tobool13, label %cond.true.14, label %cond.false, !dbg !1938

cond.true.14:                                     ; preds = %cond.true.8
  %17 = load %struct._object*, %struct._object** %key, align 8, !dbg !1939, !tbaa !818
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*, !dbg !1941
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i64 1, !dbg !1942
  %19 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !1943
  br label %cond.end, !dbg !1938

cond.false:                                       ; preds = %cond.true.8
  %20 = load %struct._object*, %struct._object** %key, align 8, !dbg !1944, !tbaa !818
  %21 = bitcast %struct._object* %20 to %struct.PyCompactUnicodeObject*, !dbg !1946
  %add.ptr15 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %21, i64 1, !dbg !1947
  %22 = bitcast %struct.PyCompactUnicodeObject* %add.ptr15 to i8*, !dbg !1948
  br label %cond.end, !dbg !1938

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi i8* [ %19, %cond.true.14 ], [ %22, %cond.false ], !dbg !1938
  br label %cond.end.17, !dbg !1949

cond.false.16:                                    ; preds = %cond.true
  %23 = load %struct._object*, %struct._object** %key, align 8, !dbg !1952, !tbaa !818
  %24 = bitcast %struct._object* %23 to %struct.PyUnicodeObject*, !dbg !1954
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %24, i32 0, i32 1, !dbg !1955
  %any = bitcast %union.anon* %data to i8**, !dbg !1956
  %25 = load i8*, i8** %any, align 8, !dbg !1956, !tbaa !818
  br label %cond.end.17, !dbg !1932

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi i8* [ %cond, %cond.end ], [ %25, %cond.false.16 ], !dbg !1932
  %arrayidx = getelementptr i8, i8* %cond18, i64 0, !dbg !1957
  %26 = load i8, i8* %arrayidx, align 1, !dbg !1957, !tbaa !1960
  %conv = zext i8 %26 to i32, !dbg !1957
  br label %cond.end.77, !dbg !1926

cond.false.19:                                    ; preds = %if.then
  %27 = load %struct._object*, %struct._object** %key, align 8, !dbg !1961, !tbaa !818
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !1963
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 3, !dbg !1964
  %29 = bitcast %struct.anon* %state20 to i32*, !dbg !1965
  %bf.load21 = load i32, i32* %29, align 4, !dbg !1965
  %bf.lshr22 = lshr i32 %bf.load21, 2, !dbg !1965
  %bf.clear23 = and i32 %bf.lshr22, 7, !dbg !1965
  %cmp24 = icmp eq i32 %bf.clear23, 2, !dbg !1966
  br i1 %cmp24, label %cond.true.26, label %cond.false.51, !dbg !1967

cond.true.26:                                     ; preds = %cond.false.19
  %30 = load %struct._object*, %struct._object** %key, align 8, !dbg !1968, !tbaa !818
  %31 = bitcast %struct._object* %30 to %struct.PyASCIIObject*, !dbg !1970
  %state27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %31, i32 0, i32 3, !dbg !1971
  %32 = bitcast %struct.anon* %state27 to i32*, !dbg !1972
  %bf.load28 = load i32, i32* %32, align 4, !dbg !1972
  %bf.lshr29 = lshr i32 %bf.load28, 5, !dbg !1972
  %bf.clear30 = and i32 %bf.lshr29, 1, !dbg !1972
  %tobool31 = icmp ne i32 %bf.clear30, 0, !dbg !1973
  br i1 %tobool31, label %cond.true.32, label %cond.false.44, !dbg !1973

cond.true.32:                                     ; preds = %cond.true.26
  %33 = load %struct._object*, %struct._object** %key, align 8, !dbg !1974, !tbaa !818
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*, !dbg !1976
  %state33 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3, !dbg !1977
  %35 = bitcast %struct.anon* %state33 to i32*, !dbg !1978
  %bf.load34 = load i32, i32* %35, align 4, !dbg !1978
  %bf.lshr35 = lshr i32 %bf.load34, 6, !dbg !1978
  %bf.clear36 = and i32 %bf.lshr35, 1, !dbg !1978
  %tobool37 = icmp ne i32 %bf.clear36, 0, !dbg !1979
  br i1 %tobool37, label %cond.true.38, label %cond.false.40, !dbg !1979

cond.true.38:                                     ; preds = %cond.true.32
  %36 = load %struct._object*, %struct._object** %key, align 8, !dbg !1980, !tbaa !818
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*, !dbg !1982
  %add.ptr39 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i64 1, !dbg !1983
  %38 = bitcast %struct.PyASCIIObject* %add.ptr39 to i8*, !dbg !1984
  br label %cond.end.42, !dbg !1979

cond.false.40:                                    ; preds = %cond.true.32
  %39 = load %struct._object*, %struct._object** %key, align 8, !dbg !1985, !tbaa !818
  %40 = bitcast %struct._object* %39 to %struct.PyCompactUnicodeObject*, !dbg !1987
  %add.ptr41 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %40, i64 1, !dbg !1988
  %41 = bitcast %struct.PyCompactUnicodeObject* %add.ptr41 to i8*, !dbg !1989
  br label %cond.end.42, !dbg !1979

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.38
  %cond43 = phi i8* [ %38, %cond.true.38 ], [ %41, %cond.false.40 ], !dbg !1979
  br label %cond.end.47, !dbg !1990

cond.false.44:                                    ; preds = %cond.true.26
  %42 = load %struct._object*, %struct._object** %key, align 8, !dbg !1993, !tbaa !818
  %43 = bitcast %struct._object* %42 to %struct.PyUnicodeObject*, !dbg !1995
  %data45 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %43, i32 0, i32 1, !dbg !1996
  %any46 = bitcast %union.anon* %data45 to i8**, !dbg !1997
  %44 = load i8*, i8** %any46, align 8, !dbg !1997, !tbaa !818
  br label %cond.end.47, !dbg !1973

cond.end.47:                                      ; preds = %cond.false.44, %cond.end.42
  %cond48 = phi i8* [ %cond43, %cond.end.42 ], [ %44, %cond.false.44 ], !dbg !1973
  %45 = bitcast i8* %cond48 to i16*, !dbg !1998
  %arrayidx49 = getelementptr i16, i16* %45, i64 0, !dbg !2001
  %46 = load i16, i16* %arrayidx49, align 2, !dbg !2001, !tbaa !2002
  %conv50 = zext i16 %46 to i32, !dbg !2001
  br label %cond.end.75, !dbg !1967

cond.false.51:                                    ; preds = %cond.false.19
  %47 = load %struct._object*, %struct._object** %key, align 8, !dbg !2004, !tbaa !818
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*, !dbg !2006
  %state52 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3, !dbg !2007
  %49 = bitcast %struct.anon* %state52 to i32*, !dbg !2008
  %bf.load53 = load i32, i32* %49, align 4, !dbg !2008
  %bf.lshr54 = lshr i32 %bf.load53, 5, !dbg !2008
  %bf.clear55 = and i32 %bf.lshr54, 1, !dbg !2008
  %tobool56 = icmp ne i32 %bf.clear55, 0, !dbg !2009
  br i1 %tobool56, label %cond.true.57, label %cond.false.69, !dbg !2009

cond.true.57:                                     ; preds = %cond.false.51
  %50 = load %struct._object*, %struct._object** %key, align 8, !dbg !2010, !tbaa !818
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*, !dbg !2012
  %state58 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 3, !dbg !2013
  %52 = bitcast %struct.anon* %state58 to i32*, !dbg !2014
  %bf.load59 = load i32, i32* %52, align 4, !dbg !2014
  %bf.lshr60 = lshr i32 %bf.load59, 6, !dbg !2014
  %bf.clear61 = and i32 %bf.lshr60, 1, !dbg !2014
  %tobool62 = icmp ne i32 %bf.clear61, 0, !dbg !2015
  br i1 %tobool62, label %cond.true.63, label %cond.false.65, !dbg !2015

cond.true.63:                                     ; preds = %cond.true.57
  %53 = load %struct._object*, %struct._object** %key, align 8, !dbg !2016, !tbaa !818
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*, !dbg !2018
  %add.ptr64 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i64 1, !dbg !2019
  %55 = bitcast %struct.PyASCIIObject* %add.ptr64 to i8*, !dbg !2020
  br label %cond.end.67, !dbg !2015

cond.false.65:                                    ; preds = %cond.true.57
  %56 = load %struct._object*, %struct._object** %key, align 8, !dbg !2021, !tbaa !818
  %57 = bitcast %struct._object* %56 to %struct.PyCompactUnicodeObject*, !dbg !2023
  %add.ptr66 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %57, i64 1, !dbg !2024
  %58 = bitcast %struct.PyCompactUnicodeObject* %add.ptr66 to i8*, !dbg !2025
  br label %cond.end.67, !dbg !2015

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.63
  %cond68 = phi i8* [ %55, %cond.true.63 ], [ %58, %cond.false.65 ], !dbg !2015
  br label %cond.end.72, !dbg !2026

cond.false.69:                                    ; preds = %cond.false.51
  %59 = load %struct._object*, %struct._object** %key, align 8, !dbg !2029, !tbaa !818
  %60 = bitcast %struct._object* %59 to %struct.PyUnicodeObject*, !dbg !2031
  %data70 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %60, i32 0, i32 1, !dbg !2032
  %any71 = bitcast %union.anon* %data70 to i8**, !dbg !2033
  %61 = load i8*, i8** %any71, align 8, !dbg !2033, !tbaa !818
  br label %cond.end.72, !dbg !2009

cond.end.72:                                      ; preds = %cond.false.69, %cond.end.67
  %cond73 = phi i8* [ %cond68, %cond.end.67 ], [ %61, %cond.false.69 ], !dbg !2009
  %62 = bitcast i8* %cond73 to i32*, !dbg !2034
  %arrayidx74 = getelementptr i32, i32* %62, i64 0, !dbg !2037
  %63 = load i32, i32* %arrayidx74, align 4, !dbg !2037, !tbaa !1049
  br label %cond.end.75, !dbg !1967

cond.end.75:                                      ; preds = %cond.end.72, %cond.end.47
  %cond76 = phi i32 [ %conv50, %cond.end.47 ], [ %63, %cond.end.72 ], !dbg !1967
  br label %cond.end.77, !dbg !2038

cond.end.77:                                      ; preds = %cond.end.75, %cond.end.17
  %cond78 = phi i32 [ %conv, %cond.end.17 ], [ %cond76, %cond.end.75 ], !dbg !1926
  %cmp79 = icmp eq i32 %cond78, 95, !dbg !2041
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.189, !dbg !2044

land.lhs.true.81:                                 ; preds = %cond.end.77
  %64 = load %struct._object*, %struct._object** %key, align 8, !dbg !2045, !tbaa !818
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*, !dbg !2046
  %state82 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i32 0, i32 3, !dbg !2047
  %66 = bitcast %struct.anon* %state82 to i32*, !dbg !2048
  %bf.load83 = load i32, i32* %66, align 4, !dbg !2048
  %bf.lshr84 = lshr i32 %bf.load83, 2, !dbg !2048
  %bf.clear85 = and i32 %bf.lshr84, 7, !dbg !2048
  %cmp86 = icmp eq i32 %bf.clear85, 1, !dbg !2049
  br i1 %cmp86, label %cond.true.88, label %cond.false.113, !dbg !2050

cond.true.88:                                     ; preds = %land.lhs.true.81
  %67 = load %struct._object*, %struct._object** %key, align 8, !dbg !2051, !tbaa !818
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*, !dbg !2052
  %state89 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 3, !dbg !2053
  %69 = bitcast %struct.anon* %state89 to i32*, !dbg !2054
  %bf.load90 = load i32, i32* %69, align 4, !dbg !2054
  %bf.lshr91 = lshr i32 %bf.load90, 5, !dbg !2054
  %bf.clear92 = and i32 %bf.lshr91, 1, !dbg !2054
  %tobool93 = icmp ne i32 %bf.clear92, 0, !dbg !2055
  br i1 %tobool93, label %cond.true.94, label %cond.false.106, !dbg !2055

cond.true.94:                                     ; preds = %cond.true.88
  %70 = load %struct._object*, %struct._object** %key, align 8, !dbg !2056, !tbaa !818
  %71 = bitcast %struct._object* %70 to %struct.PyASCIIObject*, !dbg !2057
  %state95 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %71, i32 0, i32 3, !dbg !2058
  %72 = bitcast %struct.anon* %state95 to i32*, !dbg !2059
  %bf.load96 = load i32, i32* %72, align 4, !dbg !2059
  %bf.lshr97 = lshr i32 %bf.load96, 6, !dbg !2059
  %bf.clear98 = and i32 %bf.lshr97, 1, !dbg !2059
  %tobool99 = icmp ne i32 %bf.clear98, 0, !dbg !2060
  br i1 %tobool99, label %cond.true.100, label %cond.false.102, !dbg !2060

cond.true.100:                                    ; preds = %cond.true.94
  %73 = load %struct._object*, %struct._object** %key, align 8, !dbg !2061, !tbaa !818
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*, !dbg !2062
  %add.ptr101 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i64 1, !dbg !2063
  %75 = bitcast %struct.PyASCIIObject* %add.ptr101 to i8*, !dbg !2064
  br label %cond.end.104, !dbg !2060

cond.false.102:                                   ; preds = %cond.true.94
  %76 = load %struct._object*, %struct._object** %key, align 8, !dbg !2065, !tbaa !818
  %77 = bitcast %struct._object* %76 to %struct.PyCompactUnicodeObject*, !dbg !2066
  %add.ptr103 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %77, i64 1, !dbg !2067
  %78 = bitcast %struct.PyCompactUnicodeObject* %add.ptr103 to i8*, !dbg !2068
  br label %cond.end.104, !dbg !2060

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.100
  %cond105 = phi i8* [ %75, %cond.true.100 ], [ %78, %cond.false.102 ], !dbg !2060
  br label %cond.end.109, !dbg !2069

cond.false.106:                                   ; preds = %cond.true.88
  %79 = load %struct._object*, %struct._object** %key, align 8, !dbg !2070, !tbaa !818
  %80 = bitcast %struct._object* %79 to %struct.PyUnicodeObject*, !dbg !2071
  %data107 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %80, i32 0, i32 1, !dbg !2072
  %any108 = bitcast %union.anon* %data107 to i8**, !dbg !2073
  %81 = load i8*, i8** %any108, align 8, !dbg !2073, !tbaa !818
  br label %cond.end.109, !dbg !2055

cond.end.109:                                     ; preds = %cond.false.106, %cond.end.104
  %cond110 = phi i8* [ %cond105, %cond.end.104 ], [ %81, %cond.false.106 ], !dbg !2055
  %arrayidx111 = getelementptr i8, i8* %cond110, i64 1, !dbg !2074
  %82 = load i8, i8* %arrayidx111, align 1, !dbg !2074, !tbaa !1960
  %conv112 = zext i8 %82 to i32, !dbg !2074
  br label %cond.end.171, !dbg !2050

cond.false.113:                                   ; preds = %land.lhs.true.81
  %83 = load %struct._object*, %struct._object** %key, align 8, !dbg !2075, !tbaa !818
  %84 = bitcast %struct._object* %83 to %struct.PyASCIIObject*, !dbg !2076
  %state114 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %84, i32 0, i32 3, !dbg !2077
  %85 = bitcast %struct.anon* %state114 to i32*, !dbg !2078
  %bf.load115 = load i32, i32* %85, align 4, !dbg !2078
  %bf.lshr116 = lshr i32 %bf.load115, 2, !dbg !2078
  %bf.clear117 = and i32 %bf.lshr116, 7, !dbg !2078
  %cmp118 = icmp eq i32 %bf.clear117, 2, !dbg !2079
  br i1 %cmp118, label %cond.true.120, label %cond.false.145, !dbg !2080

cond.true.120:                                    ; preds = %cond.false.113
  %86 = load %struct._object*, %struct._object** %key, align 8, !dbg !2081, !tbaa !818
  %87 = bitcast %struct._object* %86 to %struct.PyASCIIObject*, !dbg !2082
  %state121 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %87, i32 0, i32 3, !dbg !2083
  %88 = bitcast %struct.anon* %state121 to i32*, !dbg !2084
  %bf.load122 = load i32, i32* %88, align 4, !dbg !2084
  %bf.lshr123 = lshr i32 %bf.load122, 5, !dbg !2084
  %bf.clear124 = and i32 %bf.lshr123, 1, !dbg !2084
  %tobool125 = icmp ne i32 %bf.clear124, 0, !dbg !2085
  br i1 %tobool125, label %cond.true.126, label %cond.false.138, !dbg !2085

cond.true.126:                                    ; preds = %cond.true.120
  %89 = load %struct._object*, %struct._object** %key, align 8, !dbg !2086, !tbaa !818
  %90 = bitcast %struct._object* %89 to %struct.PyASCIIObject*, !dbg !2087
  %state127 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %90, i32 0, i32 3, !dbg !2088
  %91 = bitcast %struct.anon* %state127 to i32*, !dbg !2089
  %bf.load128 = load i32, i32* %91, align 4, !dbg !2089
  %bf.lshr129 = lshr i32 %bf.load128, 6, !dbg !2089
  %bf.clear130 = and i32 %bf.lshr129, 1, !dbg !2089
  %tobool131 = icmp ne i32 %bf.clear130, 0, !dbg !2090
  br i1 %tobool131, label %cond.true.132, label %cond.false.134, !dbg !2090

cond.true.132:                                    ; preds = %cond.true.126
  %92 = load %struct._object*, %struct._object** %key, align 8, !dbg !2091, !tbaa !818
  %93 = bitcast %struct._object* %92 to %struct.PyASCIIObject*, !dbg !2092
  %add.ptr133 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %93, i64 1, !dbg !2093
  %94 = bitcast %struct.PyASCIIObject* %add.ptr133 to i8*, !dbg !2094
  br label %cond.end.136, !dbg !2090

cond.false.134:                                   ; preds = %cond.true.126
  %95 = load %struct._object*, %struct._object** %key, align 8, !dbg !2095, !tbaa !818
  %96 = bitcast %struct._object* %95 to %struct.PyCompactUnicodeObject*, !dbg !2096
  %add.ptr135 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %96, i64 1, !dbg !2097
  %97 = bitcast %struct.PyCompactUnicodeObject* %add.ptr135 to i8*, !dbg !2098
  br label %cond.end.136, !dbg !2090

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.132
  %cond137 = phi i8* [ %94, %cond.true.132 ], [ %97, %cond.false.134 ], !dbg !2090
  br label %cond.end.141, !dbg !2099

cond.false.138:                                   ; preds = %cond.true.120
  %98 = load %struct._object*, %struct._object** %key, align 8, !dbg !2100, !tbaa !818
  %99 = bitcast %struct._object* %98 to %struct.PyUnicodeObject*, !dbg !2101
  %data139 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %99, i32 0, i32 1, !dbg !2102
  %any140 = bitcast %union.anon* %data139 to i8**, !dbg !2103
  %100 = load i8*, i8** %any140, align 8, !dbg !2103, !tbaa !818
  br label %cond.end.141, !dbg !2085

cond.end.141:                                     ; preds = %cond.false.138, %cond.end.136
  %cond142 = phi i8* [ %cond137, %cond.end.136 ], [ %100, %cond.false.138 ], !dbg !2085
  %101 = bitcast i8* %cond142 to i16*, !dbg !2104
  %arrayidx143 = getelementptr i16, i16* %101, i64 1, !dbg !2105
  %102 = load i16, i16* %arrayidx143, align 2, !dbg !2105, !tbaa !2002
  %conv144 = zext i16 %102 to i32, !dbg !2105
  br label %cond.end.169, !dbg !2080

cond.false.145:                                   ; preds = %cond.false.113
  %103 = load %struct._object*, %struct._object** %key, align 8, !dbg !2106, !tbaa !818
  %104 = bitcast %struct._object* %103 to %struct.PyASCIIObject*, !dbg !2107
  %state146 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %104, i32 0, i32 3, !dbg !2108
  %105 = bitcast %struct.anon* %state146 to i32*, !dbg !2109
  %bf.load147 = load i32, i32* %105, align 4, !dbg !2109
  %bf.lshr148 = lshr i32 %bf.load147, 5, !dbg !2109
  %bf.clear149 = and i32 %bf.lshr148, 1, !dbg !2109
  %tobool150 = icmp ne i32 %bf.clear149, 0, !dbg !2110
  br i1 %tobool150, label %cond.true.151, label %cond.false.163, !dbg !2110

cond.true.151:                                    ; preds = %cond.false.145
  %106 = load %struct._object*, %struct._object** %key, align 8, !dbg !2111, !tbaa !818
  %107 = bitcast %struct._object* %106 to %struct.PyASCIIObject*, !dbg !2112
  %state152 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %107, i32 0, i32 3, !dbg !2113
  %108 = bitcast %struct.anon* %state152 to i32*, !dbg !2114
  %bf.load153 = load i32, i32* %108, align 4, !dbg !2114
  %bf.lshr154 = lshr i32 %bf.load153, 6, !dbg !2114
  %bf.clear155 = and i32 %bf.lshr154, 1, !dbg !2114
  %tobool156 = icmp ne i32 %bf.clear155, 0, !dbg !2115
  br i1 %tobool156, label %cond.true.157, label %cond.false.159, !dbg !2115

cond.true.157:                                    ; preds = %cond.true.151
  %109 = load %struct._object*, %struct._object** %key, align 8, !dbg !2116, !tbaa !818
  %110 = bitcast %struct._object* %109 to %struct.PyASCIIObject*, !dbg !2117
  %add.ptr158 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %110, i64 1, !dbg !2118
  %111 = bitcast %struct.PyASCIIObject* %add.ptr158 to i8*, !dbg !2119
  br label %cond.end.161, !dbg !2115

cond.false.159:                                   ; preds = %cond.true.151
  %112 = load %struct._object*, %struct._object** %key, align 8, !dbg !2120, !tbaa !818
  %113 = bitcast %struct._object* %112 to %struct.PyCompactUnicodeObject*, !dbg !2121
  %add.ptr160 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %113, i64 1, !dbg !2122
  %114 = bitcast %struct.PyCompactUnicodeObject* %add.ptr160 to i8*, !dbg !2123
  br label %cond.end.161, !dbg !2115

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi i8* [ %111, %cond.true.157 ], [ %114, %cond.false.159 ], !dbg !2115
  br label %cond.end.166, !dbg !2124

cond.false.163:                                   ; preds = %cond.false.145
  %115 = load %struct._object*, %struct._object** %key, align 8, !dbg !2125, !tbaa !818
  %116 = bitcast %struct._object* %115 to %struct.PyUnicodeObject*, !dbg !2126
  %data164 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %116, i32 0, i32 1, !dbg !2127
  %any165 = bitcast %union.anon* %data164 to i8**, !dbg !2128
  %117 = load i8*, i8** %any165, align 8, !dbg !2128, !tbaa !818
  br label %cond.end.166, !dbg !2110

cond.end.166:                                     ; preds = %cond.false.163, %cond.end.161
  %cond167 = phi i8* [ %cond162, %cond.end.161 ], [ %117, %cond.false.163 ], !dbg !2110
  %118 = bitcast i8* %cond167 to i32*, !dbg !2129
  %arrayidx168 = getelementptr i32, i32* %118, i64 1, !dbg !2130
  %119 = load i32, i32* %arrayidx168, align 4, !dbg !2130, !tbaa !1049
  br label %cond.end.169, !dbg !2080

cond.end.169:                                     ; preds = %cond.end.166, %cond.end.141
  %cond170 = phi i32 [ %conv144, %cond.end.141 ], [ %119, %cond.end.166 ], !dbg !2080
  br label %cond.end.171, !dbg !2131

cond.end.171:                                     ; preds = %cond.end.169, %cond.end.109
  %cond172 = phi i32 [ %conv112, %cond.end.109 ], [ %cond170, %cond.end.169 ], !dbg !2050
  %cmp173 = icmp ne i32 %cond172, 95, !dbg !2132
  br i1 %cmp173, label %if.then.175, label %if.end.189, !dbg !2133

if.then.175:                                      ; preds = %cond.end.171
  %120 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2134, !tbaa !1049
  %cmp176 = icmp sgt i32 %120, 1, !dbg !2135
  br i1 %cmp176, label %if.then.178, label %if.end.183, !dbg !2136

if.then.178:                                      ; preds = %if.then.175
  %121 = bitcast i8** %s to i8*, !dbg !2137
  call void @llvm.lifetime.start(i64 8, i8* %121) #2, !dbg !2137
  call void @llvm.dbg.declare(metadata i8** %s, metadata !650, metadata !822), !dbg !2138
  %122 = load %struct._object*, %struct._object** %key, align 8, !dbg !2139, !tbaa !818
  %call179 = call i8* @PyUnicode_AsUTF8(%struct._object* %122), !dbg !2140
  store i8* %call179, i8** %s, align 8, !dbg !2138, !tbaa !818
  %123 = load i8*, i8** %s, align 8, !dbg !2141, !tbaa !818
  %cmp180 = icmp ne i8* %123, null, !dbg !2143
  br i1 %cmp180, label %if.then.182, label %if.else, !dbg !2144

if.then.182:                                      ; preds = %if.then.178
  %124 = load i8*, i8** %s, align 8, !dbg !2145, !tbaa !818
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %124), !dbg !2146
  br label %if.end, !dbg !2146

if.else:                                          ; preds = %if.then.178
  call void @PyErr_Clear(), !dbg !2147
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.182
  %125 = bitcast i8** %s to i8*, !dbg !2148
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !2148
  br label %if.end.183, !dbg !2149

if.end.183:                                       ; preds = %if.end, %if.then.175
  %126 = load %struct._object*, %struct._object** %d.addr, align 8, !dbg !2150, !tbaa !818
  %127 = load %struct._object*, %struct._object** %key, align 8, !dbg !2152, !tbaa !818
  %call184 = call i32 @PyDict_SetItem(%struct._object* %126, %struct._object* %127, %struct._object* @_Py_NoneStruct), !dbg !2153
  %cmp185 = icmp ne i32 %call184, 0, !dbg !2154
  br i1 %cmp185, label %if.then.187, label %if.end.188, !dbg !2155

if.then.187:                                      ; preds = %if.end.183
  call void @PyErr_Clear(), !dbg !2156
  br label %if.end.188, !dbg !2156

if.end.188:                                       ; preds = %if.then.187, %if.end.183
  br label %if.end.189, !dbg !2157

if.end.189:                                       ; preds = %if.end.188, %cond.end.171, %cond.end.77
  br label %if.end.190, !dbg !2158

if.end.190:                                       ; preds = %if.end.189, %land.lhs.true, %while.body
  br label %while.cond, !dbg !1906

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %pos, align 8, !dbg !2159, !tbaa !1091
  br label %while.cond.191, !dbg !2160

while.cond.191:                                   ; preds = %if.end.318, %while.end
  %128 = load %struct._object*, %struct._object** %d.addr, align 8, !dbg !2161, !tbaa !818
  %call192 = call i32 @PyDict_Next(%struct._object* %128, i64* %pos, %struct._object** %key, %struct._object** %value), !dbg !2162
  %tobool193 = icmp ne i32 %call192, 0, !dbg !2160
  br i1 %tobool193, label %while.body.194, label %while.end.319, !dbg !2160

while.body.194:                                   ; preds = %while.cond.191
  %129 = load %struct._object*, %struct._object** %value, align 8, !dbg !2163, !tbaa !818
  %cmp195 = icmp ne %struct._object* %129, @_Py_NoneStruct, !dbg !2164
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.318, !dbg !2165

land.lhs.true.197:                                ; preds = %while.body.194
  %130 = load %struct._object*, %struct._object** %key, align 8, !dbg !2166, !tbaa !818
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1, !dbg !2168
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8, !dbg !2168, !tbaa !890
  %tp_flags199 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 19, !dbg !2169
  %132 = load i64, i64* %tp_flags199, align 8, !dbg !2169, !tbaa !1706
  %and200 = and i64 %132, 268435456, !dbg !2170
  %cmp201 = icmp ne i64 %and200, 0, !dbg !2171
  br i1 %cmp201, label %if.then.203, label %if.end.318, !dbg !2172

if.then.203:                                      ; preds = %land.lhs.true.197
  %133 = load %struct._object*, %struct._object** %key, align 8, !dbg !2173, !tbaa !818
  %134 = bitcast %struct._object* %133 to %struct.PyASCIIObject*, !dbg !2174
  %state204 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %134, i32 0, i32 3, !dbg !2175
  %135 = bitcast %struct.anon* %state204 to i32*, !dbg !2176
  %bf.load205 = load i32, i32* %135, align 4, !dbg !2176
  %bf.lshr206 = lshr i32 %bf.load205, 2, !dbg !2176
  %bf.clear207 = and i32 %bf.lshr206, 7, !dbg !2176
  %cmp208 = icmp eq i32 %bf.clear207, 1, !dbg !2177
  br i1 %cmp208, label %cond.true.210, label %cond.false.235, !dbg !2178

cond.true.210:                                    ; preds = %if.then.203
  %136 = load %struct._object*, %struct._object** %key, align 8, !dbg !2179, !tbaa !818
  %137 = bitcast %struct._object* %136 to %struct.PyASCIIObject*, !dbg !2181
  %state211 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %137, i32 0, i32 3, !dbg !2182
  %138 = bitcast %struct.anon* %state211 to i32*, !dbg !2183
  %bf.load212 = load i32, i32* %138, align 4, !dbg !2183
  %bf.lshr213 = lshr i32 %bf.load212, 5, !dbg !2183
  %bf.clear214 = and i32 %bf.lshr213, 1, !dbg !2183
  %tobool215 = icmp ne i32 %bf.clear214, 0, !dbg !2184
  br i1 %tobool215, label %cond.true.216, label %cond.false.228, !dbg !2184

cond.true.216:                                    ; preds = %cond.true.210
  %139 = load %struct._object*, %struct._object** %key, align 8, !dbg !2185, !tbaa !818
  %140 = bitcast %struct._object* %139 to %struct.PyASCIIObject*, !dbg !2187
  %state217 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %140, i32 0, i32 3, !dbg !2188
  %141 = bitcast %struct.anon* %state217 to i32*, !dbg !2189
  %bf.load218 = load i32, i32* %141, align 4, !dbg !2189
  %bf.lshr219 = lshr i32 %bf.load218, 6, !dbg !2189
  %bf.clear220 = and i32 %bf.lshr219, 1, !dbg !2189
  %tobool221 = icmp ne i32 %bf.clear220, 0, !dbg !2190
  br i1 %tobool221, label %cond.true.222, label %cond.false.224, !dbg !2190

cond.true.222:                                    ; preds = %cond.true.216
  %142 = load %struct._object*, %struct._object** %key, align 8, !dbg !2191, !tbaa !818
  %143 = bitcast %struct._object* %142 to %struct.PyASCIIObject*, !dbg !2193
  %add.ptr223 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %143, i64 1, !dbg !2194
  %144 = bitcast %struct.PyASCIIObject* %add.ptr223 to i8*, !dbg !2195
  br label %cond.end.226, !dbg !2190

cond.false.224:                                   ; preds = %cond.true.216
  %145 = load %struct._object*, %struct._object** %key, align 8, !dbg !2196, !tbaa !818
  %146 = bitcast %struct._object* %145 to %struct.PyCompactUnicodeObject*, !dbg !2198
  %add.ptr225 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %146, i64 1, !dbg !2199
  %147 = bitcast %struct.PyCompactUnicodeObject* %add.ptr225 to i8*, !dbg !2200
  br label %cond.end.226, !dbg !2190

cond.end.226:                                     ; preds = %cond.false.224, %cond.true.222
  %cond227 = phi i8* [ %144, %cond.true.222 ], [ %147, %cond.false.224 ], !dbg !2190
  br label %cond.end.231, !dbg !2201

cond.false.228:                                   ; preds = %cond.true.210
  %148 = load %struct._object*, %struct._object** %key, align 8, !dbg !2204, !tbaa !818
  %149 = bitcast %struct._object* %148 to %struct.PyUnicodeObject*, !dbg !2206
  %data229 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %149, i32 0, i32 1, !dbg !2207
  %any230 = bitcast %union.anon* %data229 to i8**, !dbg !2208
  %150 = load i8*, i8** %any230, align 8, !dbg !2208, !tbaa !818
  br label %cond.end.231, !dbg !2184

cond.end.231:                                     ; preds = %cond.false.228, %cond.end.226
  %cond232 = phi i8* [ %cond227, %cond.end.226 ], [ %150, %cond.false.228 ], !dbg !2184
  %arrayidx233 = getelementptr i8, i8* %cond232, i64 0, !dbg !2209
  %151 = load i8, i8* %arrayidx233, align 1, !dbg !2209, !tbaa !1960
  %conv234 = zext i8 %151 to i32, !dbg !2209
  br label %cond.end.293, !dbg !2178

cond.false.235:                                   ; preds = %if.then.203
  %152 = load %struct._object*, %struct._object** %key, align 8, !dbg !2212, !tbaa !818
  %153 = bitcast %struct._object* %152 to %struct.PyASCIIObject*, !dbg !2214
  %state236 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %153, i32 0, i32 3, !dbg !2215
  %154 = bitcast %struct.anon* %state236 to i32*, !dbg !2216
  %bf.load237 = load i32, i32* %154, align 4, !dbg !2216
  %bf.lshr238 = lshr i32 %bf.load237, 2, !dbg !2216
  %bf.clear239 = and i32 %bf.lshr238, 7, !dbg !2216
  %cmp240 = icmp eq i32 %bf.clear239, 2, !dbg !2217
  br i1 %cmp240, label %cond.true.242, label %cond.false.267, !dbg !2218

cond.true.242:                                    ; preds = %cond.false.235
  %155 = load %struct._object*, %struct._object** %key, align 8, !dbg !2219, !tbaa !818
  %156 = bitcast %struct._object* %155 to %struct.PyASCIIObject*, !dbg !2221
  %state243 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %156, i32 0, i32 3, !dbg !2222
  %157 = bitcast %struct.anon* %state243 to i32*, !dbg !2223
  %bf.load244 = load i32, i32* %157, align 4, !dbg !2223
  %bf.lshr245 = lshr i32 %bf.load244, 5, !dbg !2223
  %bf.clear246 = and i32 %bf.lshr245, 1, !dbg !2223
  %tobool247 = icmp ne i32 %bf.clear246, 0, !dbg !2224
  br i1 %tobool247, label %cond.true.248, label %cond.false.260, !dbg !2224

cond.true.248:                                    ; preds = %cond.true.242
  %158 = load %struct._object*, %struct._object** %key, align 8, !dbg !2225, !tbaa !818
  %159 = bitcast %struct._object* %158 to %struct.PyASCIIObject*, !dbg !2227
  %state249 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %159, i32 0, i32 3, !dbg !2228
  %160 = bitcast %struct.anon* %state249 to i32*, !dbg !2229
  %bf.load250 = load i32, i32* %160, align 4, !dbg !2229
  %bf.lshr251 = lshr i32 %bf.load250, 6, !dbg !2229
  %bf.clear252 = and i32 %bf.lshr251, 1, !dbg !2229
  %tobool253 = icmp ne i32 %bf.clear252, 0, !dbg !2230
  br i1 %tobool253, label %cond.true.254, label %cond.false.256, !dbg !2230

cond.true.254:                                    ; preds = %cond.true.248
  %161 = load %struct._object*, %struct._object** %key, align 8, !dbg !2231, !tbaa !818
  %162 = bitcast %struct._object* %161 to %struct.PyASCIIObject*, !dbg !2233
  %add.ptr255 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %162, i64 1, !dbg !2234
  %163 = bitcast %struct.PyASCIIObject* %add.ptr255 to i8*, !dbg !2235
  br label %cond.end.258, !dbg !2230

cond.false.256:                                   ; preds = %cond.true.248
  %164 = load %struct._object*, %struct._object** %key, align 8, !dbg !2236, !tbaa !818
  %165 = bitcast %struct._object* %164 to %struct.PyCompactUnicodeObject*, !dbg !2238
  %add.ptr257 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %165, i64 1, !dbg !2239
  %166 = bitcast %struct.PyCompactUnicodeObject* %add.ptr257 to i8*, !dbg !2240
  br label %cond.end.258, !dbg !2230

cond.end.258:                                     ; preds = %cond.false.256, %cond.true.254
  %cond259 = phi i8* [ %163, %cond.true.254 ], [ %166, %cond.false.256 ], !dbg !2230
  br label %cond.end.263, !dbg !2241

cond.false.260:                                   ; preds = %cond.true.242
  %167 = load %struct._object*, %struct._object** %key, align 8, !dbg !2244, !tbaa !818
  %168 = bitcast %struct._object* %167 to %struct.PyUnicodeObject*, !dbg !2246
  %data261 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %168, i32 0, i32 1, !dbg !2247
  %any262 = bitcast %union.anon* %data261 to i8**, !dbg !2248
  %169 = load i8*, i8** %any262, align 8, !dbg !2248, !tbaa !818
  br label %cond.end.263, !dbg !2224

cond.end.263:                                     ; preds = %cond.false.260, %cond.end.258
  %cond264 = phi i8* [ %cond259, %cond.end.258 ], [ %169, %cond.false.260 ], !dbg !2224
  %170 = bitcast i8* %cond264 to i16*, !dbg !2249
  %arrayidx265 = getelementptr i16, i16* %170, i64 0, !dbg !2252
  %171 = load i16, i16* %arrayidx265, align 2, !dbg !2252, !tbaa !2002
  %conv266 = zext i16 %171 to i32, !dbg !2252
  br label %cond.end.291, !dbg !2218

cond.false.267:                                   ; preds = %cond.false.235
  %172 = load %struct._object*, %struct._object** %key, align 8, !dbg !2253, !tbaa !818
  %173 = bitcast %struct._object* %172 to %struct.PyASCIIObject*, !dbg !2255
  %state268 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %173, i32 0, i32 3, !dbg !2256
  %174 = bitcast %struct.anon* %state268 to i32*, !dbg !2257
  %bf.load269 = load i32, i32* %174, align 4, !dbg !2257
  %bf.lshr270 = lshr i32 %bf.load269, 5, !dbg !2257
  %bf.clear271 = and i32 %bf.lshr270, 1, !dbg !2257
  %tobool272 = icmp ne i32 %bf.clear271, 0, !dbg !2258
  br i1 %tobool272, label %cond.true.273, label %cond.false.285, !dbg !2258

cond.true.273:                                    ; preds = %cond.false.267
  %175 = load %struct._object*, %struct._object** %key, align 8, !dbg !2259, !tbaa !818
  %176 = bitcast %struct._object* %175 to %struct.PyASCIIObject*, !dbg !2261
  %state274 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %176, i32 0, i32 3, !dbg !2262
  %177 = bitcast %struct.anon* %state274 to i32*, !dbg !2263
  %bf.load275 = load i32, i32* %177, align 4, !dbg !2263
  %bf.lshr276 = lshr i32 %bf.load275, 6, !dbg !2263
  %bf.clear277 = and i32 %bf.lshr276, 1, !dbg !2263
  %tobool278 = icmp ne i32 %bf.clear277, 0, !dbg !2264
  br i1 %tobool278, label %cond.true.279, label %cond.false.281, !dbg !2264

cond.true.279:                                    ; preds = %cond.true.273
  %178 = load %struct._object*, %struct._object** %key, align 8, !dbg !2265, !tbaa !818
  %179 = bitcast %struct._object* %178 to %struct.PyASCIIObject*, !dbg !2267
  %add.ptr280 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %179, i64 1, !dbg !2268
  %180 = bitcast %struct.PyASCIIObject* %add.ptr280 to i8*, !dbg !2269
  br label %cond.end.283, !dbg !2264

cond.false.281:                                   ; preds = %cond.true.273
  %181 = load %struct._object*, %struct._object** %key, align 8, !dbg !2270, !tbaa !818
  %182 = bitcast %struct._object* %181 to %struct.PyCompactUnicodeObject*, !dbg !2272
  %add.ptr282 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %182, i64 1, !dbg !2273
  %183 = bitcast %struct.PyCompactUnicodeObject* %add.ptr282 to i8*, !dbg !2274
  br label %cond.end.283, !dbg !2264

cond.end.283:                                     ; preds = %cond.false.281, %cond.true.279
  %cond284 = phi i8* [ %180, %cond.true.279 ], [ %183, %cond.false.281 ], !dbg !2264
  br label %cond.end.288, !dbg !2275

cond.false.285:                                   ; preds = %cond.false.267
  %184 = load %struct._object*, %struct._object** %key, align 8, !dbg !2278, !tbaa !818
  %185 = bitcast %struct._object* %184 to %struct.PyUnicodeObject*, !dbg !2280
  %data286 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %185, i32 0, i32 1, !dbg !2281
  %any287 = bitcast %union.anon* %data286 to i8**, !dbg !2282
  %186 = load i8*, i8** %any287, align 8, !dbg !2282, !tbaa !818
  br label %cond.end.288, !dbg !2258

cond.end.288:                                     ; preds = %cond.false.285, %cond.end.283
  %cond289 = phi i8* [ %cond284, %cond.end.283 ], [ %186, %cond.false.285 ], !dbg !2258
  %187 = bitcast i8* %cond289 to i32*, !dbg !2283
  %arrayidx290 = getelementptr i32, i32* %187, i64 0, !dbg !2286
  %188 = load i32, i32* %arrayidx290, align 4, !dbg !2286, !tbaa !1049
  br label %cond.end.291, !dbg !2218

cond.end.291:                                     ; preds = %cond.end.288, %cond.end.263
  %cond292 = phi i32 [ %conv266, %cond.end.263 ], [ %188, %cond.end.288 ], !dbg !2218
  br label %cond.end.293, !dbg !2287

cond.end.293:                                     ; preds = %cond.end.291, %cond.end.231
  %cond294 = phi i32 [ %conv234, %cond.end.231 ], [ %cond292, %cond.end.291 ], !dbg !2178
  %cmp295 = icmp ne i32 %cond294, 95, !dbg !2290
  br i1 %cmp295, label %if.then.300, label %lor.lhs.false, !dbg !2293

lor.lhs.false:                                    ; preds = %cond.end.293
  %189 = load %struct._object*, %struct._object** %key, align 8, !dbg !2294, !tbaa !818
  %call297 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)), !dbg !2295
  %cmp298 = icmp ne i32 %call297, 0, !dbg !2296
  br i1 %cmp298, label %if.then.300, label %if.end.317, !dbg !2297

if.then.300:                                      ; preds = %lor.lhs.false, %cond.end.293
  %190 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2298, !tbaa !1049
  %cmp301 = icmp sgt i32 %190, 1, !dbg !2299
  br i1 %cmp301, label %if.then.303, label %if.end.311, !dbg !2300

if.then.303:                                      ; preds = %if.then.300
  %191 = bitcast i8** %s304 to i8*, !dbg !2301
  call void @llvm.lifetime.start(i64 8, i8* %191) #2, !dbg !2301
  call void @llvm.dbg.declare(metadata i8** %s304, metadata !658, metadata !822), !dbg !2302
  %192 = load %struct._object*, %struct._object** %key, align 8, !dbg !2303, !tbaa !818
  %call305 = call i8* @PyUnicode_AsUTF8(%struct._object* %192), !dbg !2304
  store i8* %call305, i8** %s304, align 8, !dbg !2302, !tbaa !818
  %193 = load i8*, i8** %s304, align 8, !dbg !2305, !tbaa !818
  %cmp306 = icmp ne i8* %193, null, !dbg !2307
  br i1 %cmp306, label %if.then.308, label %if.else.309, !dbg !2308

if.then.308:                                      ; preds = %if.then.303
  %194 = load i8*, i8** %s304, align 8, !dbg !2309, !tbaa !818
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %194), !dbg !2310
  br label %if.end.310, !dbg !2310

if.else.309:                                      ; preds = %if.then.303
  call void @PyErr_Clear(), !dbg !2311
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.308
  %195 = bitcast i8** %s304 to i8*, !dbg !2312
  call void @llvm.lifetime.end(i64 8, i8* %195) #2, !dbg !2312
  br label %if.end.311, !dbg !2313

if.end.311:                                       ; preds = %if.end.310, %if.then.300
  %196 = load %struct._object*, %struct._object** %d.addr, align 8, !dbg !2314, !tbaa !818
  %197 = load %struct._object*, %struct._object** %key, align 8, !dbg !2316, !tbaa !818
  %call312 = call i32 @PyDict_SetItem(%struct._object* %196, %struct._object* %197, %struct._object* @_Py_NoneStruct), !dbg !2317
  %cmp313 = icmp ne i32 %call312, 0, !dbg !2318
  br i1 %cmp313, label %if.then.315, label %if.end.316, !dbg !2319

if.then.315:                                      ; preds = %if.end.311
  call void @PyErr_Clear(), !dbg !2320
  br label %if.end.316, !dbg !2320

if.end.316:                                       ; preds = %if.then.315, %if.end.311
  br label %if.end.317, !dbg !2321

if.end.317:                                       ; preds = %if.end.316, %lor.lhs.false
  br label %if.end.318, !dbg !2322

if.end.318:                                       ; preds = %if.end.317, %land.lhs.true.197, %while.body.194
  br label %while.cond.191, !dbg !2160

while.end.319:                                    ; preds = %while.cond.191
  %198 = bitcast %struct._object** %value to i8*, !dbg !2323
  call void @llvm.lifetime.end(i64 8, i8* %198) #2, !dbg !2323
  %199 = bitcast %struct._object** %key to i8*, !dbg !2323
  call void @llvm.lifetime.end(i64 8, i8* %199) #2, !dbg !2323
  %200 = bitcast i64* %pos to i8*, !dbg !2323
  call void @llvm.lifetime.end(i64 8, i8* %200) #2, !dbg !2323
  ret void, !dbg !2323
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare void @PySys_WriteStderr(i8*, ...) #3

declare void @PyErr_Clear() #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @module_dealloc(%struct.PyModuleObject* %m) #0 {
entry:
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m.addr, metadata !685, metadata !822), !dbg !2324
  %0 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2325, !tbaa !818
  %1 = bitcast %struct.PyModuleObject* %0 to i8*, !dbg !2325
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !2326
  %2 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2327, !tbaa !1049
  %tobool = icmp ne i32 %2, 0, !dbg !2327
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2329

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2330, !tbaa !818
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %3, i32 0, i32 5, !dbg !2332
  %4 = load %struct._object*, %struct._object** %md_name, align 8, !dbg !2332, !tbaa !852
  %tobool1 = icmp ne %struct._object* %4, null, !dbg !2333
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2334

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2335, !tbaa !818
  %md_name2 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 5, !dbg !2337
  %6 = load %struct._object*, %struct._object** %md_name2, align 8, !dbg !2337, !tbaa !852
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct._object* %6), !dbg !2338
  br label %if.end, !dbg !2339

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2340, !tbaa !818
  %md_weaklist = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %7, i32 0, i32 4, !dbg !2342
  %8 = load %struct._object*, %struct._object** %md_weaklist, align 8, !dbg !2342, !tbaa !848
  %cmp = icmp ne %struct._object* %8, null, !dbg !2343
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !2344

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2345, !tbaa !818
  %10 = bitcast %struct.PyModuleObject* %9 to %struct._object*, !dbg !2346
  call void @PyObject_ClearWeakRefs(%struct._object* %10), !dbg !2347
  br label %if.end.4, !dbg !2347

if.end.4:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2348, !tbaa !818
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %11, i32 0, i32 2, !dbg !2350
  %12 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !2350, !tbaa !837
  %tobool5 = icmp ne %struct.PyModuleDef* %12, null, !dbg !2348
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.12, !dbg !2351

land.lhs.true.6:                                  ; preds = %if.end.4
  %13 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2352, !tbaa !818
  %md_def7 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %13, i32 0, i32 2, !dbg !2354
  %14 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def7, align 8, !dbg !2354, !tbaa !837
  %m_free = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %14, i32 0, i32 8, !dbg !2355
  %15 = load void (i8*)*, void (i8*)** %m_free, align 8, !dbg !2355, !tbaa !2356
  %tobool8 = icmp ne void (i8*)* %15, null, !dbg !2357
  br i1 %tobool8, label %if.then.9, label %if.end.12, !dbg !2358

if.then.9:                                        ; preds = %land.lhs.true.6
  %16 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2359, !tbaa !818
  %md_def10 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %16, i32 0, i32 2, !dbg !2360
  %17 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def10, align 8, !dbg !2360, !tbaa !837
  %m_free11 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %17, i32 0, i32 8, !dbg !2361
  %18 = load void (i8*)*, void (i8*)** %m_free11, align 8, !dbg !2361, !tbaa !2356
  %19 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2362, !tbaa !818
  %20 = bitcast %struct.PyModuleObject* %19 to i8*, !dbg !2362
  call void %18(i8* %20), !dbg !2359
  br label %if.end.12, !dbg !2359

if.end.12:                                        ; preds = %if.then.9, %land.lhs.true.6, %if.end.4
  br label %do.body, !dbg !2363

do.body:                                          ; preds = %if.end.12
  %21 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2364
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !2364
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !686, metadata !822), !dbg !2366
  %22 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2367, !tbaa !818
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %22, i32 0, i32 1, !dbg !2368
  %23 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !2368, !tbaa !857
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2366, !tbaa !818
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2369, !tbaa !818
  %cmp13 = icmp ne %struct._object* %24, null, !dbg !2370
  br i1 %cmp13, label %if.then.14, label %if.end.19, !dbg !2371

if.then.14:                                       ; preds = %do.body
  br label %do.body.15, !dbg !2372

do.body.15:                                       ; preds = %if.then.14
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2374
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !2374
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !688, metadata !822), !dbg !2376
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2377, !tbaa !818
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !2376, !tbaa !818
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2378, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !2380
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !2381, !tbaa !882
  %dec = add i64 %28, -1, !dbg !2381
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2381, !tbaa !882
  %cmp16 = icmp ne i64 %dec, 0, !dbg !2382
  br i1 %cmp16, label %if.then.17, label %if.else, !dbg !2383

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.18, !dbg !2384

if.else:                                          ; preds = %do.body.15
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2386, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !2388
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2388, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !2389
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2389, !tbaa !892
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2390, !tbaa !818
  call void %31(%struct._object* %32), !dbg !2391
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2392
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !2392
  br label %do.cond, !dbg !2394

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !2395

do.end:                                           ; preds = %do.cond
  br label %if.end.19, !dbg !2397

if.end.19:                                        ; preds = %do.end, %do.body
  %34 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2399
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !2399
  br label %do.end.21, !dbg !2402

do.end.21:                                        ; preds = %if.end.19
  br label %do.body.22, !dbg !2403

do.body.22:                                       ; preds = %do.end.21
  %35 = bitcast %struct._object** %_py_xdecref_tmp23 to i8*, !dbg !2404
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp23, metadata !691, metadata !822), !dbg !2406
  %36 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2407, !tbaa !818
  %md_name24 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %36, i32 0, i32 5, !dbg !2408
  %37 = load %struct._object*, %struct._object** %md_name24, align 8, !dbg !2408, !tbaa !852
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp23, align 8, !dbg !2406, !tbaa !818
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp23, align 8, !dbg !2409, !tbaa !818
  %cmp25 = icmp ne %struct._object* %38, null, !dbg !2410
  br i1 %cmp25, label %if.then.26, label %if.end.39, !dbg !2411

if.then.26:                                       ; preds = %do.body.22
  br label %do.body.27, !dbg !2412

do.body.27:                                       ; preds = %if.then.26
  %39 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !2414
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !2414
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp28, metadata !693, metadata !822), !dbg !2416
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp23, align 8, !dbg !2417, !tbaa !818
  store %struct._object* %40, %struct._object** %_py_decref_tmp28, align 8, !dbg !2416, !tbaa !818
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !2418, !tbaa !818
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2420
  %42 = load i64, i64* %ob_refcnt29, align 8, !dbg !2421, !tbaa !882
  %dec30 = add i64 %42, -1, !dbg !2421
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !2421, !tbaa !882
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !2422
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !2423

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36, !dbg !2424

if.else.33:                                       ; preds = %do.body.27
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !2426, !tbaa !818
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !2428
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !2428, !tbaa !890
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !2429
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !2429, !tbaa !892
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !2430, !tbaa !818
  call void %45(%struct._object* %46), !dbg !2431
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %47 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !2432
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !2432
  br label %do.cond.37, !dbg !2434

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !2435

do.end.38:                                        ; preds = %do.cond.37
  br label %if.end.39, !dbg !2437

if.end.39:                                        ; preds = %do.end.38, %do.body.22
  %48 = bitcast %struct._object** %_py_xdecref_tmp23 to i8*, !dbg !2439
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !2439
  br label %do.end.41, !dbg !2440

do.end.41:                                        ; preds = %if.end.39
  %49 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2441, !tbaa !818
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %49, i32 0, i32 3, !dbg !2443
  %50 = load i8*, i8** %md_state, align 8, !dbg !2443, !tbaa !844
  %cmp42 = icmp ne i8* %50, null, !dbg !2444
  br i1 %cmp42, label %if.then.43, label %if.end.45, !dbg !2445

if.then.43:                                       ; preds = %do.end.41
  %51 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2446, !tbaa !818
  %md_state44 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %51, i32 0, i32 3, !dbg !2447
  %52 = load i8*, i8** %md_state44, align 8, !dbg !2447, !tbaa !844
  call void @PyMem_Free(i8* %52), !dbg !2448
  br label %if.end.45, !dbg !2448

if.end.45:                                        ; preds = %if.then.43, %do.end.41
  %53 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2449, !tbaa !818
  %54 = bitcast %struct.PyModuleObject* %53 to %struct._object*, !dbg !2450
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !2451
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !2451, !tbaa !890
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 38, !dbg !2452
  %56 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !2452, !tbaa !2453
  %57 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2454, !tbaa !818
  %58 = bitcast %struct.PyModuleObject* %57 to %struct._object*, !dbg !2455
  %59 = bitcast %struct._object* %58 to i8*, !dbg !2455
  call void %56(i8* %59), !dbg !2456
  ret void, !dbg !2457
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
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m.addr, metadata !700, metadata !822), !dbg !2458
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !2459
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2459
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !701, metadata !822), !dbg !2460
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2461
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2461
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !702, metadata !822), !dbg !2462
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2462, !tbaa !818
  %2 = bitcast i8** %result to i8*, !dbg !2463
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2463
  call void @llvm.dbg.declare(metadata i8** %result, metadata !709, metadata !822), !dbg !2464
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !2465
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2465
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !710, metadata !822), !dbg !2466
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2467, !tbaa !818
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !2468
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2466, !tbaa !818
  %5 = bitcast i32* %order to i8*, !dbg !2469
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2469
  call void @llvm.dbg.declare(metadata i32* %order, metadata !713, metadata !822), !dbg !2470
  store i32 0, i32* %order, align 4, !dbg !2470, !tbaa !1960
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2471, !tbaa !818
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !2471
  %8 = load i32, i32* %order, align 4, !dbg !2472, !tbaa !1960
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !2473
  %9 = load i32, i32* %order, align 4, !dbg !2474, !tbaa !1960
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %9, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2475
  br label %sw.epilog, !dbg !2480

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !2481

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !2483, !tbaa !818
  %11 = load volatile i8*, i8** %10, align 8, !dbg !2486, !tbaa !818
  store i8* %11, i8** %result, align 8, !dbg !2487, !tbaa !818
  %12 = load i32, i32* %order, align 4, !dbg !2488, !tbaa !1960
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %12, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %12, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %12, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2489
  br label %sw.epilog.3, !dbg !2494

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !2495

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !2497, !tbaa !818
  store i8* %13, i8** %tmp, !dbg !2500, !tbaa !818
  %14 = bitcast i32* %order to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2501
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2501
  %16 = bitcast i8** %result to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2501
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2501
  %18 = load i8*, i8** %tmp, !dbg !2502, !tbaa !818
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !2503
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !2460, !tbaa !818
  %20 = bitcast %struct._is** %interp to i8*, !dbg !2504
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2504
  call void @llvm.dbg.declare(metadata %struct._is** %interp, metadata !715, metadata !822), !dbg !2505
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2506, !tbaa !818
  %interp5 = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 2, !dbg !2507
  %22 = load %struct._is*, %struct._is** %interp5, align 8, !dbg !2507, !tbaa !1065
  store %struct._is* %22, %struct._is** %interp, align 8, !dbg !2505, !tbaa !818
  %23 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2508, !tbaa !818
  %importlib = getelementptr inbounds %struct._is, %struct._is* %23, i32 0, i32 6, !dbg !2509
  %24 = load %struct._object*, %struct._object** %importlib, align 8, !dbg !2509, !tbaa !2510
  %25 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2511, !tbaa !818
  %call = call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), %struct.PyModuleObject* %25), !dbg !2512
  %26 = bitcast %struct._is** %interp to i8*, !dbg !2513
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2513
  %27 = bitcast %struct._ts** %tstate to i8*, !dbg !2513
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2513
  ret %struct._object* %call, !dbg !2514
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @module_traverse(%struct.PyModuleObject* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret = alloca i32, align 4
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m.addr, metadata !737, metadata !822), !dbg !2515
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !738, metadata !822), !dbg !2516
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !739, metadata !822), !dbg !2517
  %0 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2518, !tbaa !818
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %0, i32 0, i32 2, !dbg !2519
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !2519, !tbaa !837
  %tobool = icmp ne %struct.PyModuleDef* %1, null, !dbg !2518
  br i1 %tobool, label %land.lhs.true, label %if.end.7, !dbg !2520

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2521, !tbaa !818
  %md_def1 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 2, !dbg !2523
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def1, align 8, !dbg !2523, !tbaa !837
  %m_traverse = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %3, i32 0, i32 6, !dbg !2524
  %4 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %m_traverse, align 8, !dbg !2524, !tbaa !2525
  %tobool2 = icmp ne i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %4, null, !dbg !2526
  br i1 %tobool2, label %if.then, label %if.end.7, !dbg !2527

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i32* %res to i8*, !dbg !2528
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2528
  call void @llvm.dbg.declare(metadata i32* %res, metadata !740, metadata !822), !dbg !2529
  %6 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2530, !tbaa !818
  %md_def3 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %6, i32 0, i32 2, !dbg !2531
  %7 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def3, align 8, !dbg !2531, !tbaa !837
  %m_traverse4 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %7, i32 0, i32 6, !dbg !2532
  %8 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %m_traverse4, align 8, !dbg !2532, !tbaa !2525
  %9 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2533, !tbaa !818
  %10 = bitcast %struct.PyModuleObject* %9 to %struct._object*, !dbg !2534
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2535, !tbaa !818
  %12 = load i8*, i8** %arg.addr, align 8, !dbg !2536, !tbaa !818
  %call = call i32 %8(%struct._object* %10, i32 (%struct._object*, i8*)* %11, i8* %12), !dbg !2530
  store i32 %call, i32* %res, align 4, !dbg !2529, !tbaa !1049
  %13 = load i32, i32* %res, align 4, !dbg !2537, !tbaa !1049
  %tobool5 = icmp ne i32 %13, 0, !dbg !2537
  br i1 %tobool5, label %if.then.6, label %if.end, !dbg !2539

if.then.6:                                        ; preds = %if.then
  %14 = load i32, i32* %res, align 4, !dbg !2540, !tbaa !1049
  store i32 %14, i32* %retval, !dbg !2541
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2541

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2542
  br label %cleanup, !dbg !2542

cleanup:                                          ; preds = %if.end, %if.then.6
  %15 = bitcast i32* %res to i8*, !dbg !2543
  call void @llvm.lifetime.end(i64 4, i8* %15) #2, !dbg !2543
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.7, !dbg !2544

if.end.7:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  br label %do.body, !dbg !2545

do.body:                                          ; preds = %if.end.7
  %16 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2546, !tbaa !818
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %16, i32 0, i32 1, !dbg !2548
  %17 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !2548, !tbaa !857
  %tobool8 = icmp ne %struct._object* %17, null, !dbg !2549
  br i1 %tobool8, label %if.then.9, label %if.end.18, !dbg !2550

if.then.9:                                        ; preds = %do.body
  %18 = bitcast i32* %vret to i8*, !dbg !2551
  call void @llvm.lifetime.start(i64 4, i8* %18) #2, !dbg !2551
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !743, metadata !822), !dbg !2553
  %19 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2554, !tbaa !818
  %20 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2555, !tbaa !818
  %md_dict10 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %20, i32 0, i32 1, !dbg !2556
  %21 = load %struct._object*, %struct._object** %md_dict10, align 8, !dbg !2556, !tbaa !857
  %22 = load i8*, i8** %arg.addr, align 8, !dbg !2557, !tbaa !818
  %call11 = call i32 %19(%struct._object* %21, i8* %22), !dbg !2554
  store i32 %call11, i32* %vret, align 4, !dbg !2553, !tbaa !1049
  %23 = load i32, i32* %vret, align 4, !dbg !2558, !tbaa !1049
  %tobool12 = icmp ne i32 %23, 0, !dbg !2558
  br i1 %tobool12, label %if.then.13, label %if.end.14, !dbg !2560

if.then.13:                                       ; preds = %if.then.9
  %24 = load i32, i32* %vret, align 4, !dbg !2561, !tbaa !1049
  store i32 %24, i32* %retval, !dbg !2563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !2563

if.end.14:                                        ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot, !dbg !2564
  br label %cleanup.15, !dbg !2564

cleanup.15:                                       ; preds = %if.end.14, %if.then.13
  %25 = bitcast i32* %vret to i8*, !dbg !2566
  call void @llvm.lifetime.end(i64 4, i8* %25) #2, !dbg !2566
  %cleanup.dest.16 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.15
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.16, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.17

cleanup.cont.17:                                  ; preds = %NewDefault.1
  br label %if.end.18, !dbg !2569

if.end.18:                                        ; preds = %cleanup.cont.17, %do.body
  br label %do.end, !dbg !2570

do.end:                                           ; preds = %if.end.18
  store i32 0, i32* %retval, !dbg !2573
  br label %return, !dbg !2573

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %do.end
  %26 = load i32, i32* %retval, !dbg !2574
  ret i32 %26, !dbg !2574
}

; Function Attrs: nounwind uwtable
define internal i32 @module_clear(%struct.PyModuleObject* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyModuleObject*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m.addr, metadata !751, metadata !822), !dbg !2575
  %0 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2576, !tbaa !818
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %0, i32 0, i32 2, !dbg !2577
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !2577, !tbaa !837
  %tobool = icmp ne %struct.PyModuleDef* %1, null, !dbg !2576
  br i1 %tobool, label %land.lhs.true, label %if.end.7, !dbg !2578

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2579, !tbaa !818
  %md_def1 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %2, i32 0, i32 2, !dbg !2581
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def1, align 8, !dbg !2581, !tbaa !837
  %m_clear = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %3, i32 0, i32 7, !dbg !2582
  %4 = load i32 (%struct._object*)*, i32 (%struct._object*)** %m_clear, align 8, !dbg !2582, !tbaa !2583
  %tobool2 = icmp ne i32 (%struct._object*)* %4, null, !dbg !2584
  br i1 %tobool2, label %if.then, label %if.end.7, !dbg !2585

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i32* %res to i8*, !dbg !2586
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2586
  call void @llvm.dbg.declare(metadata i32* %res, metadata !752, metadata !822), !dbg !2587
  %6 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2588, !tbaa !818
  %md_def3 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %6, i32 0, i32 2, !dbg !2589
  %7 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def3, align 8, !dbg !2589, !tbaa !837
  %m_clear4 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %7, i32 0, i32 7, !dbg !2590
  %8 = load i32 (%struct._object*)*, i32 (%struct._object*)** %m_clear4, align 8, !dbg !2590, !tbaa !2583
  %9 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2591, !tbaa !818
  %10 = bitcast %struct.PyModuleObject* %9 to %struct._object*, !dbg !2592
  %call = call i32 %8(%struct._object* %10), !dbg !2588
  store i32 %call, i32* %res, align 4, !dbg !2587, !tbaa !1049
  %11 = load i32, i32* %res, align 4, !dbg !2593, !tbaa !1049
  %tobool5 = icmp ne i32 %11, 0, !dbg !2593
  br i1 %tobool5, label %if.then.6, label %if.end, !dbg !2595

if.then.6:                                        ; preds = %if.then
  %12 = load i32, i32* %res, align 4, !dbg !2596, !tbaa !1049
  store i32 %12, i32* %retval, !dbg !2597
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2597

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2598
  br label %cleanup, !dbg !2598

cleanup:                                          ; preds = %if.end, %if.then.6
  %13 = bitcast i32* %res to i8*, !dbg !2599
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !2599
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.7, !dbg !2600

if.end.7:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  br label %do.body, !dbg !2601

do.body:                                          ; preds = %if.end.7
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2602
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !2602
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !755, metadata !822), !dbg !2604
  %15 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2605, !tbaa !818
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %15, i32 0, i32 1, !dbg !2606
  %16 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !2606, !tbaa !857
  store %struct._object* %16, %struct._object** %_py_tmp, align 8, !dbg !2604, !tbaa !818
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2607, !tbaa !818
  %cmp = icmp ne %struct._object* %17, null, !dbg !2608
  br i1 %cmp, label %if.then.8, label %if.end.14, !dbg !2609

if.then.8:                                        ; preds = %do.body
  %18 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2610, !tbaa !818
  %md_dict9 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %18, i32 0, i32 1, !dbg !2612
  store %struct._object* null, %struct._object** %md_dict9, align 8, !dbg !2613, !tbaa !857
  br label %do.body.10, !dbg !2614

do.body.10:                                       ; preds = %if.then.8
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2615
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !2615
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !757, metadata !822), !dbg !2617
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2618, !tbaa !818
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !2617, !tbaa !818
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2619, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2621
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !2622, !tbaa !882
  %dec = add i64 %22, -1, !dbg !2622
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2622, !tbaa !882
  %cmp11 = icmp ne i64 %dec, 0, !dbg !2623
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !2624

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13, !dbg !2625

if.else:                                          ; preds = %do.body.10
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2627, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2629
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2629, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2630
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2630, !tbaa !892
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2631, !tbaa !818
  call void %25(%struct._object* %26), !dbg !2632
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2633
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2633
  br label %do.cond, !dbg !2635

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !2636

do.end:                                           ; preds = %do.cond
  br label %if.end.14, !dbg !2638

if.end.14:                                        ; preds = %do.end, %do.body
  %28 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2640
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2640
  br label %do.end.16, !dbg !2643

do.end.16:                                        ; preds = %if.end.14
  store i32 0, i32* %retval, !dbg !2644
  br label %return, !dbg !2644

return:                                           ; preds = %LeafBlock, %do.end.16
  %29 = load i32, i32* %retval, !dbg !2645
  ret i32 %29, !dbg !2645
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
  %cleanup.dest.slot = alloca i32
  store %struct.PyModuleObject* %m, %struct.PyModuleObject** %m.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct.PyModuleObject** %m.addr, metadata !781, metadata !822), !dbg !2646
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !782, metadata !822), !dbg !2647
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !783, metadata !822), !dbg !2648
  %0 = bitcast %struct._object** %dict to i8*, !dbg !2649
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2649
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !784, metadata !822), !dbg !2650
  %1 = bitcast %struct._object** %name to i8*, !dbg !2649
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2649
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !785, metadata !822), !dbg !2651
  store %struct._object* @_Py_NoneStruct, %struct._object** %name, align 8, !dbg !2651, !tbaa !818
  %2 = bitcast %struct._object** %doc to i8*, !dbg !2649
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2649
  call void @llvm.dbg.declare(metadata %struct._object** %doc, metadata !786, metadata !822), !dbg !2652
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8, !dbg !2652, !tbaa !818
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2653, !tbaa !818
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2655, !tbaa !818
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_init.kwlist, i32 0, i32 0), %struct._object** %name, %struct._object** %doc), !dbg !2656
  %tobool = icmp ne i32 %call, 0, !dbg !2656
  br i1 %tobool, label %if.end, label %if.then, !dbg !2657

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !2658
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2658

if.end:                                           ; preds = %entry
  %5 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2659, !tbaa !818
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %5, i32 0, i32 1, !dbg !2660
  %6 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !2660, !tbaa !857
  store %struct._object* %6, %struct._object** %dict, align 8, !dbg !2661, !tbaa !818
  %7 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2662, !tbaa !818
  %cmp = icmp eq %struct._object* %7, null, !dbg !2664
  br i1 %cmp, label %if.then.1, label %if.end.7, !dbg !2665

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyDict_New(), !dbg !2666
  store %struct._object* %call2, %struct._object** %dict, align 8, !dbg !2668, !tbaa !818
  %8 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2669, !tbaa !818
  %cmp3 = icmp eq %struct._object* %8, null, !dbg !2671
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2672

if.then.4:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval, !dbg !2673
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2673

if.end.5:                                         ; preds = %if.then.1
  %9 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2674, !tbaa !818
  %10 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2675, !tbaa !818
  %md_dict6 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %10, i32 0, i32 1, !dbg !2676
  store %struct._object* %9, %struct._object** %md_dict6, align 8, !dbg !2677, !tbaa !857
  br label %if.end.7, !dbg !2678

if.end.7:                                         ; preds = %if.end.5, %if.end
  %11 = load %struct.PyModuleObject*, %struct.PyModuleObject** %m.addr, align 8, !dbg !2679, !tbaa !818
  %12 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2681, !tbaa !818
  %13 = load %struct._object*, %struct._object** %name, align 8, !dbg !2682, !tbaa !818
  %14 = load %struct._object*, %struct._object** %doc, align 8, !dbg !2683, !tbaa !818
  %call8 = call i32 @module_init_dict(%struct.PyModuleObject* %11, %struct._object* %12, %struct._object* %13, %struct._object* %14), !dbg !2684
  %cmp9 = icmp slt i32 %call8, 0, !dbg !2685
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2686

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval, !dbg !2687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2687

if.end.11:                                        ; preds = %if.end.7
  store i32 0, i32* %retval, !dbg !2688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2688

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.4, %if.then
  %15 = bitcast %struct._object** %doc to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2689
  %16 = bitcast %struct._object** %name to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2689
  %17 = bitcast %struct._object** %dict to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2689
  %18 = load i32, i32* %retval, !dbg !2689
  ret i32 %18, !dbg !2689
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare void @PyObject_GC_Del(i8*) #3

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @PySys_FormatStderr(i8*, ...) #3

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #7 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !723, metadata !822), !dbg !2690
  store i32 %order, i32* %order.addr, align 4, !tbaa !1960
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !724, metadata !822), !dbg !2691
  %0 = load i8*, i8** %address.addr, align 8, !dbg !2692, !tbaa !818
  %1 = load i32, i32* %order.addr, align 4, !dbg !2693, !tbaa !1960
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
  br label %sw.epilog, !dbg !2694

sw.bb.1:                                          ; preds = %LeafBlock
  br label %sw.epilog, !dbg !2696

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !2697, !tbaa !1960
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
  br label %sw.epilog.4, !dbg !2698

sw.bb.3:                                          ; preds = %NodeBlock.11, %LeafBlock.4
  br label %sw.epilog.4, !dbg !2700

NewDefault.3:                                     ; preds = %LeafBlock.8, %LeafBlock.4
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %NewDefault.3, %sw.bb.3, %sw.bb.2
  ret void, !dbg !2701
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #7 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1960
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !729, metadata !822), !dbg !2702
  %0 = load i32, i32* %order.addr, align 4, !dbg !2703, !tbaa !1960
  %cmp = icmp ne i32 %0, 0, !dbg !2705
  br i1 %cmp, label %if.then, label %if.end, !dbg !2706

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !2707, !srcloc !2708
  br label %if.end, !dbg !2707

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2709
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #7 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1960
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !732, metadata !822), !dbg !2710
  %0 = load i32, i32* %order.addr, align 4, !dbg !2711, !tbaa !1960
  %cmp = icmp ne i32 %0, 0, !dbg !2713
  br i1 %cmp, label %if.then, label %if.end, !dbg !2714

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !2715, !srcloc !2716
  br label %if.end, !dbg !2715

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2717
}

declare %struct._object* @PyObject_CallMethod(%struct._object*, i8*, i8*, ...) #3

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
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !763, metadata !822), !dbg !2718
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !818
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !764, metadata !822), !dbg !2719
  %0 = bitcast %struct._object** %result to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2720
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !765, metadata !822), !dbg !2721
  store %struct._object* null, %struct._object** %result, align 8, !dbg !2721, !tbaa !818
  %1 = bitcast %struct._object** %dict to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2722
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !766, metadata !822), !dbg !2723
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2724, !tbaa !818
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @module_dir.PyId___dict__), !dbg !2725
  store %struct._object* %call, %struct._object** %dict, align 8, !dbg !2723, !tbaa !818
  %3 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2726, !tbaa !818
  %cmp = icmp ne %struct._object* %3, null, !dbg !2727
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !2728

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2729, !tbaa !818
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2730
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2730, !tbaa !890
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !2731
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2731, !tbaa !1706
  %and = and i64 %6, 536870912, !dbg !2732
  %cmp1 = icmp ne i64 %and, 0, !dbg !2733
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !2734

if.then.2:                                        ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2735, !tbaa !818
  %call3 = call %struct._object* @PyDict_Keys(%struct._object* %7), !dbg !2736
  store %struct._object* %call3, %struct._object** %result, align 8, !dbg !2737, !tbaa !818
  br label %if.end.7, !dbg !2738

if.else:                                          ; preds = %if.then
  %8 = bitcast i8** %name to i8*, !dbg !2739
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2739
  call void @llvm.dbg.declare(metadata i8** %name, metadata !767, metadata !822), !dbg !2740
  %9 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2741, !tbaa !818
  %call4 = call i8* @PyModule_GetName(%struct._object* %9), !dbg !2742
  store i8* %call4, i8** %name, align 8, !dbg !2740, !tbaa !818
  %10 = load i8*, i8** %name, align 8, !dbg !2743, !tbaa !818
  %tobool = icmp ne i8* %10, null, !dbg !2743
  br i1 %tobool, label %if.then.5, label %if.end, !dbg !2745

if.then.5:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2746, !tbaa !818
  %12 = load i8*, i8** %name, align 8, !dbg !2747, !tbaa !818
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* %12), !dbg !2748
  br label %if.end, !dbg !2748

if.end:                                           ; preds = %if.then.5, %if.else
  %13 = bitcast i8** %name to i8*, !dbg !2749
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2749
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.8, !dbg !2750

if.end.8:                                         ; preds = %if.end.7, %entry
  br label %do.body, !dbg !2751

do.body:                                          ; preds = %if.end.8
  %14 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2752
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !2752
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !772, metadata !822), !dbg !2754
  %15 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2755, !tbaa !818
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2754, !tbaa !818
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2756, !tbaa !818
  %cmp9 = icmp ne %struct._object* %16, null, !dbg !2757
  br i1 %cmp9, label %if.then.10, label %if.end.17, !dbg !2758

if.then.10:                                       ; preds = %do.body
  br label %do.body.11, !dbg !2759

do.body.11:                                       ; preds = %if.then.10
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2761
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !2761
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !774, metadata !822), !dbg !2763
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2764, !tbaa !818
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !2763, !tbaa !818
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2765, !tbaa !818
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !2767
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !2768, !tbaa !882
  %dec = add i64 %20, -1, !dbg !2768
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2768, !tbaa !882
  %cmp12 = icmp ne i64 %dec, 0, !dbg !2769
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !2770

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.16, !dbg !2771

if.else.14:                                       ; preds = %do.body.11
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2773, !tbaa !818
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !2775
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !2775, !tbaa !890
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !2776
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2776, !tbaa !892
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2777, !tbaa !818
  call void %23(%struct._object* %24), !dbg !2778
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2779
  br label %do.cond, !dbg !2781

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !2782

do.end:                                           ; preds = %do.cond
  br label %if.end.17, !dbg !2784

if.end.17:                                        ; preds = %do.end, %do.body
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2786
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2786
  br label %do.cond.18, !dbg !2789

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !2790

do.end.19:                                        ; preds = %do.cond.18
  %27 = load %struct._object*, %struct._object** %result, align 8, !dbg !2792, !tbaa !818
  %28 = bitcast %struct._object** %dict to i8*, !dbg !2793
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2793
  %29 = bitcast %struct._object** %result to i8*, !dbg !2793
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2793
  ret %struct._object* %27, !dbg !2794
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @PyDict_Keys(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!815, !816}
!llvm.ident = !{!817}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !510, globals: !787)
!1 = !DIFile(filename: "moduleobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !11, line: 23, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!14 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!15 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!16 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!17 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!18 = !{!19, !110, !58, !401, !402, !420, !424, !432, !448, !450, !452}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleObject", file: !21, line: 16, baseType: !22)
!21 = !DIFile(filename: "Objects/moduleobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 9, size: 448, align: 64, elements: !23)
!23 = !{!24, !371, !372, !398, !399, !400}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !22, file: !21, line: 10, baseType: !25, size: 128, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !26, line: 109, baseType: !27)
!26 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !26, line: 105, size: 128, align: 64, elements: !28)
!28 = !{!29, !37}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !27, file: !26, line: 107, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !31, line: 177, baseType: !32)
!31 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !33, line: 102, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !35, line: 181, baseType: !36)
!35 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !27, file: !26, line: 108, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !26, line: 334, size: 3200, align: 64, elements: !40)
!40 = !{!41, !47, !51, !52, !53, !59, !123, !128, !133, !134, !139, !191, !222, !234, !240, !241, !242, !244, !246, !277, !278, !279, !288, !289, !294, !295, !297, !299, !309, !319, !337, !338, !339, !341, !343, !344, !346, !351, !356, !361, !362, !363, !364, !365, !366, !367, !368, !370}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !39, file: !26, line: 335, baseType: !42, size: 192, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !26, line: 114, baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 111, size: 192, align: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !43, file: !26, line: 112, baseType: !25, size: 128, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !43, file: !26, line: 113, baseType: !30, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !39, file: !26, line: 336, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !39, file: !26, line: 337, baseType: !30, size: 64, align: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !39, file: !26, line: 337, baseType: !30, size: 64, align: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !39, file: !26, line: 341, baseType: !54, size: 64, align: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !26, line: 308, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !39, file: !26, line: 342, baseType: !60, size: 64, align: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !26, line: 314, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !58, !65, !64}
!64 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 48, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !68, line: 246, size: 1728, align: 64, elements: !69)
!68 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!69 = !{!70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !91, !92, !93, !94, !96, !98, !100, !104, !107, !109, !111, !112, !113, !114, !118, !119}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !67, file: !68, line: 247, baseType: !64, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !67, file: !68, line: 252, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !67, file: !68, line: 253, baseType: !72, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !67, file: !68, line: 254, baseType: !72, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !67, file: !68, line: 255, baseType: !72, size: 64, align: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !67, file: !68, line: 256, baseType: !72, size: 64, align: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !67, file: !68, line: 257, baseType: !72, size: 64, align: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !67, file: !68, line: 258, baseType: !72, size: 64, align: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !67, file: !68, line: 259, baseType: !72, size: 64, align: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !67, file: !68, line: 261, baseType: !72, size: 64, align: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !67, file: !68, line: 262, baseType: !72, size: 64, align: 64, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !67, file: !68, line: 263, baseType: !72, size: 64, align: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !67, file: !68, line: 265, baseType: !84, size: 64, align: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !68, line: 161, size: 192, align: 64, elements: !86)
!86 = !{!87, !88, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !85, file: !68, line: 162, baseType: !84, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !85, file: !68, line: 163, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !85, file: !68, line: 167, baseType: !64, size: 32, align: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !67, file: !68, line: 267, baseType: !89, size: 64, align: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !67, file: !68, line: 269, baseType: !64, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !67, file: !68, line: 273, baseType: !64, size: 32, align: 32, offset: 928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !67, file: !68, line: 275, baseType: !95, size: 64, align: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 140, baseType: !36)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !67, file: !68, line: 279, baseType: !97, size: 16, align: 16, offset: 1024)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !67, file: !68, line: 280, baseType: !99, size: 8, align: 8, offset: 1040)
!99 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !67, file: !68, line: 281, baseType: !101, size: 8, align: 8, offset: 1048)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !67, file: !68, line: 285, baseType: !105, size: 64, align: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !68, line: 155, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !67, file: !68, line: 294, baseType: !108, size: 64, align: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 141, baseType: !36)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !67, file: !68, line: 303, baseType: !110, size: 64, align: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !67, file: !68, line: 304, baseType: !110, size: 64, align: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !67, file: !68, line: 305, baseType: !110, size: 64, align: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !67, file: !68, line: 306, baseType: !110, size: 64, align: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !67, file: !68, line: 307, baseType: !115, size: 64, align: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!117 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !67, file: !68, line: 309, baseType: !64, size: 32, align: 32, offset: 1536)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !67, file: !68, line: 311, baseType: !120, size: 160, align: 8, offset: 1568)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 20)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !39, file: !26, line: 343, baseType: !124, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !26, line: 316, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!58, !58, !72}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !39, file: !26, line: 344, baseType: !129, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !26, line: 318, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!64, !58, !72, !58}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !39, file: !26, line: 345, baseType: !110, size: 64, align: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !39, file: !26, line: 346, baseType: !135, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !26, line: 320, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!58, !58}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !39, file: !26, line: 350, baseType: !140, size: 64, align: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !26, line: 278, baseType: !142)
!142 = !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 236, size: 2176, align: 64, elements: !143)
!143 = !{!144, !149, !150, !151, !152, !153, !158, !160, !161, !162, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !142, file: !26, line: 241, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !26, line: 166, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!58, !58, !58}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !142, file: !26, line: 242, baseType: !145, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !142, file: !26, line: 243, baseType: !145, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !142, file: !26, line: 244, baseType: !145, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !142, file: !26, line: 245, baseType: !145, size: 64, align: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !142, file: !26, line: 246, baseType: !154, size: 64, align: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !26, line: 167, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!58, !58, !58, !58}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !142, file: !26, line: 247, baseType: !159, size: 64, align: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !26, line: 165, baseType: !136)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !142, file: !26, line: 248, baseType: !159, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !142, file: !26, line: 249, baseType: !159, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !142, file: !26, line: 250, baseType: !163, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !26, line: 168, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!64, !58}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !142, file: !26, line: 251, baseType: !159, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !142, file: !26, line: 252, baseType: !145, size: 64, align: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !142, file: !26, line: 253, baseType: !145, size: 64, align: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !142, file: !26, line: 254, baseType: !145, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !142, file: !26, line: 255, baseType: !145, size: 64, align: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !142, file: !26, line: 256, baseType: !145, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !142, file: !26, line: 257, baseType: !159, size: 64, align: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !142, file: !26, line: 258, baseType: !110, size: 64, align: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !142, file: !26, line: 259, baseType: !159, size: 64, align: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !142, file: !26, line: 261, baseType: !145, size: 64, align: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !142, file: !26, line: 262, baseType: !145, size: 64, align: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !142, file: !26, line: 263, baseType: !145, size: 64, align: 64, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !142, file: !26, line: 264, baseType: !145, size: 64, align: 64, offset: 1408)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !142, file: !26, line: 265, baseType: !154, size: 64, align: 64, offset: 1472)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !142, file: !26, line: 266, baseType: !145, size: 64, align: 64, offset: 1536)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !142, file: !26, line: 267, baseType: !145, size: 64, align: 64, offset: 1600)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !142, file: !26, line: 268, baseType: !145, size: 64, align: 64, offset: 1664)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !142, file: !26, line: 269, baseType: !145, size: 64, align: 64, offset: 1728)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !142, file: !26, line: 270, baseType: !145, size: 64, align: 64, offset: 1792)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !142, file: !26, line: 272, baseType: !145, size: 64, align: 64, offset: 1856)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !142, file: !26, line: 273, baseType: !145, size: 64, align: 64, offset: 1920)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !142, file: !26, line: 274, baseType: !145, size: 64, align: 64, offset: 1984)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !142, file: !26, line: 275, baseType: !145, size: 64, align: 64, offset: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !142, file: !26, line: 277, baseType: !159, size: 64, align: 64, offset: 2112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !39, file: !26, line: 351, baseType: !192, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !26, line: 292, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 280, size: 640, align: 64, elements: !195)
!195 = !{!196, !201, !202, !207, !208, !209, !214, !215, !220, !221}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !194, file: !26, line: 281, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !26, line: 169, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!30, !58}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !194, file: !26, line: 282, baseType: !145, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !194, file: !26, line: 283, baseType: !203, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !26, line: 170, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!58, !58, !30}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !194, file: !26, line: 284, baseType: !203, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !194, file: !26, line: 285, baseType: !110, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !194, file: !26, line: 286, baseType: !210, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !26, line: 172, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!64, !58, !30, !58}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !194, file: !26, line: 287, baseType: !110, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !194, file: !26, line: 288, baseType: !216, size: 64, align: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !26, line: 231, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!64, !58, !58}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !194, file: !26, line: 290, baseType: !145, size: 64, align: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !194, file: !26, line: 291, baseType: !203, size: 64, align: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !39, file: !26, line: 352, baseType: !223, size: 64, align: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !26, line: 298, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 294, size: 192, align: 64, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !225, file: !26, line: 295, baseType: !197, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !225, file: !26, line: 296, baseType: !145, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !225, file: !26, line: 297, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !26, line: 174, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!64, !58, !58, !58}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !39, file: !26, line: 356, baseType: !235, size: 64, align: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !26, line: 321, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !58}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !31, line: 186, baseType: !30)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !39, file: !26, line: 357, baseType: !154, size: 64, align: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !39, file: !26, line: 358, baseType: !135, size: 64, align: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !39, file: !26, line: 359, baseType: !243, size: 64, align: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !26, line: 317, baseType: !146)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !39, file: !26, line: 360, baseType: !245, size: 64, align: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !26, line: 319, baseType: !231)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !39, file: !26, line: 363, baseType: !247, size: 64, align: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !26, line: 304, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 301, size: 128, align: 64, elements: !250)
!250 = !{!251, !272}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !249, file: !26, line: 302, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !26, line: 193, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!64, !58, !256, !64}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !26, line: 191, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !26, line: 178, size: 640, align: 64, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !258, file: !26, line: 179, baseType: !110, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !258, file: !26, line: 180, baseType: !58, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !258, file: !26, line: 181, baseType: !30, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !258, file: !26, line: 182, baseType: !30, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !258, file: !26, line: 184, baseType: !64, size: 32, align: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !258, file: !26, line: 185, baseType: !64, size: 32, align: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !258, file: !26, line: 186, baseType: !72, size: 64, align: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !258, file: !26, line: 187, baseType: !268, size: 64, align: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !258, file: !26, line: 188, baseType: !268, size: 64, align: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !258, file: !26, line: 189, baseType: !268, size: 64, align: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !258, file: !26, line: 190, baseType: !110, size: 64, align: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !249, file: !26, line: 303, baseType: !273, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !26, line: 194, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !58, !256}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !39, file: !26, line: 366, baseType: !117, size: 64, align: 64, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !39, file: !26, line: 368, baseType: !48, size: 64, align: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !39, file: !26, line: 372, baseType: !280, size: 64, align: 64, offset: 1472)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !26, line: 233, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!64, !58, !284, !110}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !26, line: 232, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!64, !58, !110}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !39, file: !26, line: 375, baseType: !163, size: 64, align: 64, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !39, file: !26, line: 379, baseType: !290, size: 64, align: 64, offset: 1600)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !26, line: 322, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!58, !58, !58, !64}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !39, file: !26, line: 382, baseType: !30, size: 64, align: 64, offset: 1664)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !39, file: !26, line: 385, baseType: !296, size: 64, align: 64, offset: 1728)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !26, line: 323, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !39, file: !26, line: 386, baseType: !298, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !26, line: 324, baseType: !136)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !39, file: !26, line: 389, baseType: !300, size: 64, align: 64, offset: 1856)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !302, line: 40, size: 256, align: 64, elements: !303)
!302 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!303 = !{!304, !305, !307, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !301, file: !302, line: 41, baseType: !48, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !301, file: !302, line: 42, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !302, line: 18, baseType: !146)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !301, file: !302, line: 43, baseType: !64, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !301, file: !302, line: 45, baseType: !48, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !39, file: !26, line: 390, baseType: !310, size: 64, align: 64, offset: 1920)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !312, line: 18, size: 320, align: 64, elements: !313)
!312 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 19, baseType: !72, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !312, line: 20, baseType: !64, size: 32, align: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !311, file: !312, line: 21, baseType: !30, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 22, baseType: !64, size: 32, align: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !311, file: !312, line: 23, baseType: !72, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !39, file: !26, line: 391, baseType: !320, size: 64, align: 64, offset: 1984)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !322, line: 11, size: 320, align: 64, elements: !323)
!322 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!323 = !{!324, !325, !330, !335, !336}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !322, line: 12, baseType: !72, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !321, file: !322, line: 13, baseType: !326, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !322, line: 8, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!58, !58, !110}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !321, file: !322, line: 14, baseType: !331, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !322, line: 9, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!64, !58, !58, !110}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !321, file: !322, line: 15, baseType: !72, size: 64, align: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !321, file: !322, line: 16, baseType: !110, size: 64, align: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !39, file: !26, line: 392, baseType: !38, size: 64, align: 64, offset: 2048)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !39, file: !26, line: 393, baseType: !58, size: 64, align: 64, offset: 2112)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !39, file: !26, line: 394, baseType: !340, size: 64, align: 64, offset: 2176)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !26, line: 325, baseType: !155)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !39, file: !26, line: 395, baseType: !342, size: 64, align: 64, offset: 2240)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !26, line: 326, baseType: !231)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !39, file: !26, line: 396, baseType: !30, size: 64, align: 64, offset: 2304)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !39, file: !26, line: 397, baseType: !345, size: 64, align: 64, offset: 2368)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !26, line: 327, baseType: !231)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !39, file: !26, line: 398, baseType: !347, size: 64, align: 64, offset: 2432)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !26, line: 329, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!58, !38, !30}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !39, file: !26, line: 399, baseType: !352, size: 64, align: 64, offset: 2496)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !26, line: 328, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!58, !38, !58, !58}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !39, file: !26, line: 400, baseType: !357, size: 64, align: 64, offset: 2560)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !26, line: 307, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !110}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !39, file: !26, line: 401, baseType: !163, size: 64, align: 64, offset: 2624)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !39, file: !26, line: 402, baseType: !58, size: 64, align: 64, offset: 2688)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !39, file: !26, line: 403, baseType: !58, size: 64, align: 64, offset: 2752)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !39, file: !26, line: 404, baseType: !58, size: 64, align: 64, offset: 2816)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !39, file: !26, line: 405, baseType: !58, size: 64, align: 64, offset: 2880)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !39, file: !26, line: 406, baseType: !58, size: 64, align: 64, offset: 2944)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !39, file: !26, line: 407, baseType: !54, size: 64, align: 64, offset: 3008)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !39, file: !26, line: 410, baseType: !369, size: 32, align: 32, offset: 3072)
!369 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !39, file: !26, line: 412, baseType: !54, size: 64, align: 64, offset: 3136)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "md_dict", scope: !22, file: !21, line: 11, baseType: !58, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "md_def", scope: !22, file: !21, line: 12, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !375, line: 47, size: 832, align: 64, elements: !376)
!375 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!376 = !{!377, !388, !389, !390, !391, !394, !395, !396, !397}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !374, file: !375, line: 48, baseType: !378, size: 320, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !375, line: 38, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !375, line: 33, size: 320, align: 64, elements: !380)
!380 = !{!381, !382, !386, !387}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !379, file: !375, line: 34, baseType: !25, size: 128, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !379, file: !375, line: 35, baseType: !383, size: 64, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!58}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !379, file: !375, line: 36, baseType: !30, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !379, file: !375, line: 37, baseType: !58, size: 64, align: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !374, file: !375, line: 49, baseType: !48, size: 64, align: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !374, file: !375, line: 50, baseType: !48, size: 64, align: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !374, file: !375, line: 51, baseType: !30, size: 64, align: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !374, file: !375, line: 52, baseType: !392, size: 64, align: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !302, line: 47, baseType: !301)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !374, file: !375, line: 53, baseType: !163, size: 64, align: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !374, file: !375, line: 54, baseType: !280, size: 64, align: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !374, file: !375, line: 55, baseType: !163, size: 64, align: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !374, file: !375, line: 56, baseType: !357, size: 64, align: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "md_state", scope: !22, file: !21, line: 13, baseType: !110, size: 64, align: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "md_weaklist", scope: !22, file: !21, line: 14, baseType: !58, size: 64, align: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "md_name", scope: !22, file: !21, line: 15, baseType: !58, size: 64, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !369)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !405)
!405 = !{!406, !407, !408, !409, !417}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !404, file: !4, line: 291, baseType: !25, size: 128, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !404, file: !4, line: 292, baseType: !30, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !404, file: !4, line: 293, baseType: !239, size: 64, align: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !4, line: 349, baseType: !410, size: 32, align: 32, offset: 256)
!410 = !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !4, line: 294, size: 32, align: 32, elements: !411)
!411 = !{!412, !413, !414, !415, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !410, file: !4, line: 303, baseType: !369, size: 2, align: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !410, file: !4, line: 331, baseType: !369, size: 3, align: 32, offset: 2)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !410, file: !4, line: 336, baseType: !369, size: 1, align: 32, offset: 5)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !410, file: !4, line: 340, baseType: !369, size: 1, align: 32, offset: 6)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !410, file: !4, line: 345, baseType: !369, size: 1, align: 32, offset: 7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !404, file: !4, line: 350, baseType: !418, size: 64, align: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !423)
!423 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !426, file: !4, line: 357, baseType: !403, size: 384, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !426, file: !4, line: 358, baseType: !30, size: 64, align: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !426, file: !4, line: 360, baseType: !72, size: 64, align: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !426, file: !4, line: 361, baseType: !30, size: 64, align: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !434)
!434 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !434, file: !4, line: 369, baseType: !425, size: 576, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !4, line: 375, baseType: !438, size: 64, align: 64, offset: 576)
!438 = !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !4, line: 370, size: 64, align: 64, elements: !439)
!439 = !{!440, !441, !443, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !438, file: !4, line: 371, baseType: !110, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !438, file: !4, line: 372, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !438, file: !4, line: 373, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !97)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !438, file: !4, line: 374, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !454, line: 139, baseType: !455)
!454 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !454, line: 69, size: 1536, align: 64, elements: !456)
!456 = !{!457, !459, !460, !480, !483, !484, !485, !486, !487, !488, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !455, file: !454, line: 72, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !454, line: 73, baseType: !458, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !455, file: !454, line: 74, baseType: !461, size: 64, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !454, line: 44, baseType: !463)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !454, line: 19, size: 832, align: 64, elements: !464)
!464 = !{!465, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !454, line: 21, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !463, file: !454, line: 22, baseType: !458, size: 64, align: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !463, file: !454, line: 24, baseType: !58, size: 64, align: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !463, file: !454, line: 25, baseType: !58, size: 64, align: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !463, file: !454, line: 26, baseType: !58, size: 64, align: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !463, file: !454, line: 27, baseType: !58, size: 64, align: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !463, file: !454, line: 28, baseType: !58, size: 64, align: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !463, file: !454, line: 30, baseType: !58, size: 64, align: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !463, file: !454, line: 31, baseType: !58, size: 64, align: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !463, file: !454, line: 32, baseType: !58, size: 64, align: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !463, file: !454, line: 33, baseType: !64, size: 32, align: 32, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !463, file: !454, line: 34, baseType: !64, size: 32, align: 32, offset: 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !463, file: !454, line: 37, baseType: !64, size: 32, align: 32, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !463, file: !454, line: 43, baseType: !58, size: 64, align: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !455, file: !454, line: 76, baseType: !481, size: 64, align: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !454, line: 50, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !455, file: !454, line: 77, baseType: !64, size: 32, align: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !455, file: !454, line: 78, baseType: !50, size: 8, align: 8, offset: 288)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !455, file: !454, line: 80, baseType: !50, size: 8, align: 8, offset: 296)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !455, file: !454, line: 85, baseType: !64, size: 32, align: 32, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !455, file: !454, line: 86, baseType: !64, size: 32, align: 32, offset: 352)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !455, file: !454, line: 88, baseType: !489, size: 64, align: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !454, line: 54, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!64, !58, !481, !64, !58}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !455, file: !454, line: 89, baseType: !489, size: 64, align: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !455, file: !454, line: 90, baseType: !58, size: 64, align: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !455, file: !454, line: 91, baseType: !58, size: 64, align: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !455, file: !454, line: 93, baseType: !58, size: 64, align: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !455, file: !454, line: 94, baseType: !58, size: 64, align: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !455, file: !454, line: 95, baseType: !58, size: 64, align: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !455, file: !454, line: 97, baseType: !58, size: 64, align: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !455, file: !454, line: 98, baseType: !58, size: 64, align: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !455, file: !454, line: 99, baseType: !58, size: 64, align: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !455, file: !454, line: 101, baseType: !58, size: 64, align: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !455, file: !454, line: 103, baseType: !64, size: 32, align: 32, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !455, file: !454, line: 105, baseType: !58, size: 64, align: 64, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !455, file: !454, line: 106, baseType: !36, size: 64, align: 64, offset: 1216)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !455, file: !454, line: 108, baseType: !64, size: 32, align: 32, offset: 1280)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !455, file: !454, line: 109, baseType: !58, size: 64, align: 64, offset: 1344)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !455, file: !454, line: 134, baseType: !358, size: 64, align: 64, offset: 1408)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !455, file: !454, line: 135, baseType: !110, size: 64, align: 64, offset: 1472)
!510 = !{!511, !517, !526, !601, !605, !610, !618, !623, !630, !635, !640, !644, !666, !681, !696, !716, !725, !730, !733, !747, !761, !777}
!511 = !DISubprogram(name: "PyModule_NewObject", scope: !21, file: !21, line: 61, type: !137, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_NewObject, variables: !512)
!512 = !{!513, !514, !515}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !511, file: !21, line: 61, type: !58)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !511, file: !21, line: 63, type: !19)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !516, file: !21, line: 78, type: !58)
!516 = distinct !DILexicalBlock(scope: !511, file: !21, line: 78, column: 8)
!517 = !DISubprogram(name: "PyModule_New", scope: !21, file: !21, line: 83, type: !518, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyModule_New, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!58, !48}
!520 = !{!521, !522, !523, !524}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !517, file: !21, line: 83, type: !48)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !517, file: !21, line: 85, type: !58)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !517, file: !21, line: 85, type: !58)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !21, line: 90, type: !58)
!525 = distinct !DILexicalBlock(scope: !517, file: !21, line: 90, column: 8)
!526 = !DISubprogram(name: "PyModule_Create2", scope: !21, file: !21, line: 96, type: !527, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, i32)* @PyModule_Create2, variables: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!58, !373, !64}
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !542, !545, !548, !549, !555, !561, !568, !570, !574, !576, !580, !582, !584, !586, !588, !594, !597, !599}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !526, file: !21, line: 96, type: !373)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module_api_version", arg: 2, scope: !526, file: !21, line: 96, type: !64)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !526, file: !21, line: 98, type: !58)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !526, file: !21, line: 98, type: !58)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !526, file: !21, line: 98, type: !58)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ml", scope: !526, file: !21, line: 99, type: !392)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !526, file: !21, line: 100, type: !48)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !526, file: !21, line: 101, type: !19)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !526, file: !21, line: 102, type: !461)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !540, file: !21, line: 115, type: !64)
!540 = distinct !DILexicalBlock(scope: !541, file: !21, line: 114, column: 64)
!541 = distinct !DILexicalBlock(scope: !526, file: !21, line: 114, column: 9)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !543, file: !21, line: 134, type: !72)
!543 = distinct !DILexicalBlock(scope: !544, file: !21, line: 133, column: 43)
!544 = distinct !DILexicalBlock(scope: !526, file: !21, line: 133, column: 9)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !546, file: !21, line: 135, type: !115)
!546 = distinct !DILexicalBlock(scope: !547, file: !21, line: 135, column: 47)
!547 = distinct !DILexicalBlock(scope: !543, file: !21, line: 135, column: 13)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !546, file: !21, line: 135, type: !115)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !550, file: !21, line: 147, type: !58)
!550 = distinct !DILexicalBlock(scope: !551, file: !21, line: 147, column: 16)
!551 = distinct !DILexicalBlock(scope: !552, file: !21, line: 145, column: 27)
!552 = distinct !DILexicalBlock(scope: !553, file: !21, line: 145, column: 13)
!553 = distinct !DILexicalBlock(scope: !554, file: !21, line: 143, column: 29)
!554 = distinct !DILexicalBlock(scope: !526, file: !21, line: 143, column: 9)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !556, file: !21, line: 157, type: !58)
!556 = distinct !DILexicalBlock(scope: !557, file: !21, line: 157, column: 16)
!557 = distinct !DILexicalBlock(scope: !558, file: !21, line: 156, column: 30)
!558 = distinct !DILexicalBlock(scope: !559, file: !21, line: 156, column: 13)
!559 = distinct !DILexicalBlock(scope: !560, file: !21, line: 154, column: 42)
!560 = distinct !DILexicalBlock(scope: !526, file: !21, line: 154, column: 9)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !562, file: !21, line: 166, type: !58)
!562 = distinct !DILexicalBlock(scope: !563, file: !21, line: 166, column: 20)
!563 = distinct !DILexicalBlock(scope: !564, file: !21, line: 162, column: 42)
!564 = distinct !DILexicalBlock(scope: !565, file: !21, line: 161, column: 17)
!565 = distinct !DILexicalBlock(scope: !566, file: !21, line: 160, column: 71)
!566 = distinct !DILexicalBlock(scope: !567, file: !21, line: 160, column: 9)
!567 = distinct !DILexicalBlock(scope: !559, file: !21, line: 160, column: 9)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !569, file: !21, line: 167, type: !58)
!569 = distinct !DILexicalBlock(scope: !563, file: !21, line: 167, column: 20)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !571, file: !21, line: 172, type: !58)
!571 = distinct !DILexicalBlock(scope: !572, file: !21, line: 172, column: 20)
!572 = distinct !DILexicalBlock(scope: !573, file: !21, line: 171, column: 34)
!573 = distinct !DILexicalBlock(scope: !565, file: !21, line: 171, column: 17)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !575, file: !21, line: 173, type: !58)
!575 = distinct !DILexicalBlock(scope: !572, file: !21, line: 173, column: 20)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !577, file: !21, line: 177, type: !58)
!577 = distinct !DILexicalBlock(scope: !578, file: !21, line: 177, column: 20)
!578 = distinct !DILexicalBlock(scope: !579, file: !21, line: 176, column: 63)
!579 = distinct !DILexicalBlock(scope: !565, file: !21, line: 176, column: 17)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !581, file: !21, line: 178, type: !58)
!581 = distinct !DILexicalBlock(scope: !578, file: !21, line: 178, column: 20)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !583, file: !21, line: 179, type: !58)
!583 = distinct !DILexicalBlock(scope: !578, file: !21, line: 179, column: 20)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !21, line: 182, type: !58)
!585 = distinct !DILexicalBlock(scope: !565, file: !21, line: 182, column: 16)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !21, line: 184, type: !58)
!587 = distinct !DILexicalBlock(scope: !559, file: !21, line: 184, column: 12)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !589, file: !21, line: 189, type: !58)
!589 = distinct !DILexicalBlock(scope: !590, file: !21, line: 189, column: 16)
!590 = distinct !DILexicalBlock(scope: !591, file: !21, line: 188, column: 76)
!591 = distinct !DILexicalBlock(scope: !592, file: !21, line: 188, column: 13)
!592 = distinct !DILexicalBlock(scope: !593, file: !21, line: 186, column: 38)
!593 = distinct !DILexicalBlock(scope: !526, file: !21, line: 186, column: 9)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !595, file: !21, line: 189, type: !58)
!595 = distinct !DILexicalBlock(scope: !596, file: !21, line: 189, column: 101)
!596 = distinct !DILexicalBlock(scope: !589, file: !21, line: 189, column: 67)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !21, line: 190, type: !58)
!598 = distinct !DILexicalBlock(scope: !590, file: !21, line: 190, column: 16)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !600, file: !21, line: 193, type: !58)
!600 = distinct !DILexicalBlock(scope: !592, file: !21, line: 193, column: 12)
!601 = !DISubprogram(name: "PyModule_GetDict", scope: !21, file: !21, line: 201, type: !137, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_GetDict, variables: !602)
!602 = !{!603, !604}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !601, file: !21, line: 201, type: !58)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !601, file: !21, line: 203, type: !58)
!605 = !DISubprogram(name: "PyModule_GetNameObject", scope: !21, file: !21, line: 215, type: !137, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_GetNameObject, variables: !606)
!606 = !{!607, !608, !609}
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !605, file: !21, line: 215, type: !58)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !605, file: !21, line: 217, type: !58)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !605, file: !21, line: 218, type: !58)
!610 = !DISubprogram(name: "PyModule_GetName", scope: !21, file: !21, line: 236, type: !611, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyModule_GetName, variables: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!48, !58}
!613 = !{!614, !615, !616}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !610, file: !21, line: 236, type: !58)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !610, file: !21, line: 238, type: !58)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !21, line: 241, type: !58)
!617 = distinct !DILexicalBlock(scope: !610, file: !21, line: 241, column: 8)
!618 = !DISubprogram(name: "PyModule_GetFilenameObject", scope: !21, file: !21, line: 246, type: !137, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_GetFilenameObject, variables: !619)
!619 = !{!620, !621, !622}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !618, file: !21, line: 246, type: !58)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !618, file: !21, line: 248, type: !58)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !618, file: !21, line: 249, type: !58)
!623 = !DISubprogram(name: "PyModule_GetFilename", scope: !21, file: !21, line: 267, type: !611, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyModule_GetFilename, variables: !624)
!624 = !{!625, !626, !627, !628}
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !623, file: !21, line: 267, type: !58)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !623, file: !21, line: 269, type: !58)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "utf8", scope: !623, file: !21, line: 270, type: !72)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !629, file: !21, line: 275, type: !58)
!629 = distinct !DILexicalBlock(scope: !623, file: !21, line: 275, column: 8)
!630 = !DISubprogram(name: "PyModule_GetDef", scope: !21, file: !21, line: 280, type: !631, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyModuleDef* (%struct._object*)* @PyModule_GetDef, variables: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!373, !58}
!633 = !{!634}
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !630, file: !21, line: 280, type: !58)
!635 = !DISubprogram(name: "PyModule_GetState", scope: !21, file: !21, line: 290, type: !636, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyModule_GetState, variables: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!110, !58}
!638 = !{!639}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !635, file: !21, line: 290, type: !58)
!640 = !DISubprogram(name: "_PyModule_Clear", scope: !21, file: !21, line: 300, type: !56, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyModule_Clear, variables: !641)
!641 = !{!642, !643}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !640, file: !21, line: 300, type: !58)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !640, file: !21, line: 302, type: !58)
!644 = !DISubprogram(name: "_PyModule_ClearDict", scope: !21, file: !21, line: 308, type: !56, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyModule_ClearDict, variables: !645)
!645 = !{!646, !647, !648, !649, !650, !658}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !644, file: !21, line: 308, type: !58)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !644, file: !21, line: 317, type: !30)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !644, file: !21, line: 318, type: !58)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !644, file: !21, line: 318, type: !58)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !651, file: !21, line: 327, type: !48)
!651 = distinct !DILexicalBlock(scope: !652, file: !21, line: 326, column: 41)
!652 = distinct !DILexicalBlock(scope: !653, file: !21, line: 326, column: 21)
!653 = distinct !DILexicalBlock(scope: !654, file: !21, line: 325, column: 1189)
!654 = distinct !DILexicalBlock(scope: !655, file: !21, line: 324, column: 17)
!655 = distinct !DILexicalBlock(scope: !656, file: !21, line: 323, column: 111)
!656 = distinct !DILexicalBlock(scope: !657, file: !21, line: 323, column: 13)
!657 = distinct !DILexicalBlock(scope: !644, file: !21, line: 322, column: 48)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !659, file: !21, line: 347, type: !48)
!659 = distinct !DILexicalBlock(scope: !660, file: !21, line: 346, column: 41)
!660 = distinct !DILexicalBlock(scope: !661, file: !21, line: 346, column: 21)
!661 = distinct !DILexicalBlock(scope: !662, file: !21, line: 345, column: 13)
!662 = distinct !DILexicalBlock(scope: !663, file: !21, line: 343, column: 17)
!663 = distinct !DILexicalBlock(scope: !664, file: !21, line: 342, column: 111)
!664 = distinct !DILexicalBlock(scope: !665, file: !21, line: 342, column: 13)
!665 = distinct !DILexicalBlock(scope: !644, file: !21, line: 341, column: 48)
!666 = !DISubprogram(name: "module_init_dict", scope: !21, file: !21, line: 32, type: !667, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*, %struct._object*, %struct._object*, %struct._object*)* @module_init_dict, variables: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!64, !19, !58, !58, !58}
!669 = !{!670, !671, !672, !673, !674, !678}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !666, file: !21, line: 32, type: !19)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md_dict", arg: 2, scope: !666, file: !21, line: 32, type: !58)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !666, file: !21, line: 33, type: !58)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "doc", arg: 4, scope: !666, file: !21, line: 33, type: !58)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !675, file: !21, line: 52, type: !58)
!675 = distinct !DILexicalBlock(scope: !676, file: !21, line: 52, column: 12)
!676 = distinct !DILexicalBlock(scope: !677, file: !21, line: 50, column: 62)
!677 = distinct !DILexicalBlock(scope: !666, file: !21, line: 50, column: 9)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !679, file: !21, line: 52, type: !58)
!679 = distinct !DILexicalBlock(scope: !680, file: !21, line: 52, column: 108)
!680 = distinct !DILexicalBlock(scope: !675, file: !21, line: 52, column: 74)
!681 = !DISubprogram(name: "module_dealloc", scope: !21, file: !21, line: 388, type: !682, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyModuleObject*)* @module_dealloc, variables: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !19}
!684 = !{!685, !686, !688, !691, !693}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !681, file: !21, line: 388, type: !19)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !687, file: !21, line: 398, type: !58)
!687 = distinct !DILexicalBlock(scope: !681, file: !21, line: 398, column: 8)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !689, file: !21, line: 398, type: !58)
!689 = distinct !DILexicalBlock(scope: !690, file: !21, line: 398, column: 102)
!690 = distinct !DILexicalBlock(scope: !687, file: !21, line: 398, column: 68)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !692, file: !21, line: 399, type: !58)
!692 = distinct !DILexicalBlock(scope: !681, file: !21, line: 399, column: 8)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !694, file: !21, line: 399, type: !58)
!694 = distinct !DILexicalBlock(scope: !695, file: !21, line: 399, column: 102)
!695 = distinct !DILexicalBlock(scope: !692, file: !21, line: 399, column: 68)
!696 = !DISubprogram(name: "module_repr", scope: !21, file: !21, line: 406, type: !697, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleObject*)* @module_repr, variables: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!58, !19}
!699 = !{!700, !701, !702, !709, !710, !713, !715}
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !696, file: !21, line: 406, type: !19)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !696, file: !21, line: 408, type: !452)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !703, file: !21, line: 408, type: !704)
!703 = distinct !DILexicalBlock(scope: !696, file: !21, line: 408, column: 61)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !11, line: 33, baseType: !706)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !11, line: 31, size: 64, align: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !706, file: !11, line: 32, baseType: !110, size: 64, align: 64)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !703, file: !21, line: 408, type: !110)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !703, file: !21, line: 408, type: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64, align: 64)
!712 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !703, file: !21, line: 408, type: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !11, line: 29, baseType: !10)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !696, file: !21, line: 409, type: !461)
!716 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !11, file: !11, line: 59, type: !717, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !722)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !719, !714}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!722 = !{!723, !724}
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !716, file: !11, line: 59, type: !719)
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !716, file: !11, line: 59, type: !714)
!725 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !11, file: !11, line: 51, type: !726, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !714}
!728 = !{!729}
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !725, file: !11, line: 51, type: !714)
!730 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !11, file: !11, line: 44, type: !726, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !731)
!731 = !{!732}
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !730, file: !11, line: 44, type: !714)
!733 = !DISubprogram(name: "module_traverse", scope: !21, file: !21, line: 415, type: !734, isLocal: true, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*, i32 (%struct._object*, i8*)*, i8*)* @module_traverse, variables: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!64, !19, !284, !110}
!736 = !{!737, !738, !739, !740, !743}
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !733, file: !21, line: 415, type: !19)
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !733, file: !21, line: 415, type: !284)
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !733, file: !21, line: 415, type: !110)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !741, file: !21, line: 418, type: !64)
!741 = distinct !DILexicalBlock(scope: !742, file: !21, line: 417, column: 45)
!742 = distinct !DILexicalBlock(scope: !733, file: !21, line: 417, column: 9)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !744, file: !21, line: 422, type: !64)
!744 = distinct !DILexicalBlock(scope: !745, file: !21, line: 422, column: 26)
!745 = distinct !DILexicalBlock(scope: !746, file: !21, line: 422, column: 14)
!746 = distinct !DILexicalBlock(scope: !733, file: !21, line: 422, column: 8)
!747 = !DISubprogram(name: "module_clear", scope: !21, file: !21, line: 427, type: !748, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*)* @module_clear, variables: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!64, !19}
!750 = !{!751, !752, !755, !757}
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !747, file: !21, line: 427, type: !19)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !753, file: !21, line: 430, type: !64)
!753 = distinct !DILexicalBlock(scope: !754, file: !21, line: 429, column: 42)
!754 = distinct !DILexicalBlock(scope: !747, file: !21, line: 429, column: 9)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !756, file: !21, line: 434, type: !58)
!756 = distinct !DILexicalBlock(scope: !747, file: !21, line: 434, column: 8)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !758, file: !21, line: 434, type: !58)
!758 = distinct !DILexicalBlock(scope: !759, file: !21, line: 434, column: 115)
!759 = distinct !DILexicalBlock(scope: !760, file: !21, line: 434, column: 83)
!760 = distinct !DILexicalBlock(scope: !756, file: !21, line: 434, column: 60)
!761 = !DISubprogram(name: "module_dir", scope: !21, file: !21, line: 439, type: !147, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @module_dir, variables: !762)
!762 = !{!763, !764, !765, !766, !767, !772, !774}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !761, file: !21, line: 439, type: !58)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !761, file: !21, line: 439, type: !58)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !761, file: !21, line: 442, type: !58)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !761, file: !21, line: 443, type: !58)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !768, file: !21, line: 449, type: !48)
!768 = distinct !DILexicalBlock(scope: !769, file: !21, line: 448, column: 14)
!769 = distinct !DILexicalBlock(scope: !770, file: !21, line: 446, column: 13)
!770 = distinct !DILexicalBlock(scope: !771, file: !21, line: 445, column: 29)
!771 = distinct !DILexicalBlock(scope: !761, file: !21, line: 445, column: 9)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !773, file: !21, line: 457, type: !58)
!773 = distinct !DILexicalBlock(scope: !761, file: !21, line: 457, column: 8)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !775, file: !21, line: 457, type: !58)
!775 = distinct !DILexicalBlock(scope: !776, file: !21, line: 457, column: 96)
!776 = distinct !DILexicalBlock(scope: !773, file: !21, line: 457, column: 62)
!777 = !DISubprogram(name: "module_init", scope: !21, file: !21, line: 368, type: !778, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*, %struct._object*, %struct._object*)* @module_init, variables: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{!64, !19, !58, !58}
!780 = !{!781, !782, !783, !784, !785, !786}
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !777, file: !21, line: 368, type: !19)
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !777, file: !21, line: 368, type: !58)
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !777, file: !21, line: 368, type: !58)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !777, file: !21, line: 371, type: !58)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !777, file: !21, line: 371, type: !58)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !777, file: !21, line: 371, type: !58)
!787 = !{!788, !790, !791, !792, !796, !800, !808, !811}
!788 = !DIGlobalVariable(name: "PyModule_Type", scope: !0, file: !21, line: 474, type: !789, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !26, line: 422, baseType: !39)
!790 = !DIGlobalVariable(name: "max_module_number", scope: !0, file: !21, line: 7, type: !30, isLocal: true, isDefinition: true, variable: i64* @max_module_number)
!791 = !DIGlobalVariable(name: "moduledef_type", scope: !0, file: !21, line: 23, type: !789, isLocal: true, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type)
!792 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !21, line: 468, type: !793, isLocal: true, isDefinition: true, variable: [117 x i8]* @module_doc)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 936, align: 8, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 117)
!796 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !21, line: 461, type: !797, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @module_methods)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 512, align: 64, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 2)
!800 = !DIGlobalVariable(name: "PyId___dict__", scope: !761, file: !21, line: 441, type: !801, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @module_dir.PyId___dict__)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !26, line: 144, baseType: !802)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !26, line: 140, size: 192, align: 64, elements: !803)
!803 = !{!804, !806, !807}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !802, file: !26, line: 141, baseType: !805, size: 64, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !802, file: !26, line: 142, baseType: !48, size: 64, align: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !802, file: !26, line: 143, baseType: !58, size: 64, align: 64, offset: 128)
!808 = !DIGlobalVariable(name: "module_members", scope: !0, file: !21, line: 18, type: !809, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @module_members)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 640, align: 64, elements: !798)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !312, line: 24, baseType: !311)
!811 = !DIGlobalVariable(name: "kwlist", scope: !777, file: !21, line: 370, type: !812, isLocal: true, isDefinition: true, variable: [3 x i8*]* @module_init.kwlist)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, align: 64, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 3)
!815 = !{i32 2, !"Dwarf Version", i32 4}
!816 = !{i32 2, !"Debug Info Version", i32 3}
!817 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!818 = !{!819, !819, i64 0}
!819 = !{!"any pointer", !820, i64 0}
!820 = !{!"omnipotent char", !821, i64 0}
!821 = !{!"Simple C/C++ TBAA"}
!822 = !DIExpression()
!823 = !DILocation(line: 61, column: 30, scope: !511)
!824 = !DILocation(line: 63, column: 5, scope: !511)
!825 = !DILocation(line: 63, column: 21, scope: !511)
!826 = !DILocation(line: 64, column: 30, scope: !511)
!827 = !DILocation(line: 64, column: 11, scope: !511)
!828 = !DILocation(line: 64, column: 7, scope: !511)
!829 = !DILocation(line: 65, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !511, file: !21, line: 65, column: 9)
!831 = !DILocation(line: 65, column: 11, scope: !830)
!832 = !DILocation(line: 65, column: 9, scope: !511)
!833 = !DILocation(line: 66, column: 9, scope: !830)
!834 = !DILocation(line: 67, column: 5, scope: !511)
!835 = !DILocation(line: 67, column: 8, scope: !511)
!836 = !DILocation(line: 67, column: 15, scope: !511)
!837 = !{!838, !819, i64 24}
!838 = !{!"", !839, i64 0, !819, i64 16, !819, i64 24, !819, i64 32, !819, i64 40, !819, i64 48}
!839 = !{!"_object", !840, i64 0, !819, i64 8}
!840 = !{!"long", !820, i64 0}
!841 = !DILocation(line: 68, column: 5, scope: !511)
!842 = !DILocation(line: 68, column: 8, scope: !511)
!843 = !DILocation(line: 68, column: 17, scope: !511)
!844 = !{!838, !819, i64 32}
!845 = !DILocation(line: 69, column: 5, scope: !511)
!846 = !DILocation(line: 69, column: 8, scope: !511)
!847 = !DILocation(line: 69, column: 20, scope: !511)
!848 = !{!838, !819, i64 40}
!849 = !DILocation(line: 70, column: 5, scope: !511)
!850 = !DILocation(line: 70, column: 8, scope: !511)
!851 = !DILocation(line: 70, column: 16, scope: !511)
!852 = !{!838, !819, i64 48}
!853 = !DILocation(line: 71, column: 18, scope: !511)
!854 = !DILocation(line: 71, column: 5, scope: !511)
!855 = !DILocation(line: 71, column: 8, scope: !511)
!856 = !DILocation(line: 71, column: 16, scope: !511)
!857 = !{!838, !819, i64 16}
!858 = !DILocation(line: 72, column: 26, scope: !859)
!859 = distinct !DILexicalBlock(scope: !511, file: !21, line: 72, column: 9)
!860 = !DILocation(line: 72, column: 29, scope: !859)
!861 = !DILocation(line: 72, column: 32, scope: !859)
!862 = !DILocation(line: 72, column: 41, scope: !859)
!863 = !DILocation(line: 72, column: 9, scope: !859)
!864 = !DILocation(line: 72, column: 59, scope: !859)
!865 = !DILocation(line: 72, column: 9, scope: !511)
!866 = !DILocation(line: 73, column: 9, scope: !859)
!867 = !DILocation(line: 74, column: 23, scope: !511)
!868 = !DILocation(line: 74, column: 5, scope: !511)
!869 = !DILocation(line: 75, column: 24, scope: !511)
!870 = !DILocation(line: 75, column: 12, scope: !511)
!871 = !DILocation(line: 75, column: 5, scope: !511)
!872 = !DILocation(line: 78, column: 5, scope: !511)
!873 = !DILocation(line: 78, column: 10, scope: !874)
!874 = !DILexicalBlockFile(scope: !516, file: !21, discriminator: 1)
!875 = !DILocation(line: 78, column: 20, scope: !516)
!876 = !DILocation(line: 78, column: 50, scope: !516)
!877 = !DILocation(line: 78, column: 37, scope: !516)
!878 = !DILocation(line: 78, column: 62, scope: !879)
!879 = distinct !DILexicalBlock(scope: !516, file: !21, line: 78, column: 59)
!880 = !DILocation(line: 78, column: 79, scope: !879)
!881 = !DILocation(line: 78, column: 59, scope: !879)
!882 = !{!839, !840, i64 0}
!883 = !DILocation(line: 78, column: 89, scope: !879)
!884 = !DILocation(line: 78, column: 59, scope: !516)
!885 = !DILocation(line: 78, column: 59, scope: !886)
!886 = !DILexicalBlockFile(scope: !516, file: !21, discriminator: 2)
!887 = !DILocation(line: 78, column: 120, scope: !888)
!888 = !DILexicalBlockFile(scope: !879, file: !21, discriminator: 3)
!889 = !DILocation(line: 78, column: 138, scope: !879)
!890 = !{!839, !819, i64 8}
!891 = !DILocation(line: 78, column: 148, scope: !879)
!892 = !{!893, !819, i64 48}
!893 = !{!"_typeobject", !894, i64 0, !819, i64 24, !840, i64 32, !840, i64 40, !819, i64 48, !819, i64 56, !819, i64 64, !819, i64 72, !819, i64 80, !819, i64 88, !819, i64 96, !819, i64 104, !819, i64 112, !819, i64 120, !819, i64 128, !819, i64 136, !819, i64 144, !819, i64 152, !819, i64 160, !840, i64 168, !819, i64 176, !819, i64 184, !819, i64 192, !819, i64 200, !840, i64 208, !819, i64 216, !819, i64 224, !819, i64 232, !819, i64 240, !819, i64 248, !819, i64 256, !819, i64 264, !819, i64 272, !819, i64 280, !840, i64 288, !819, i64 296, !819, i64 304, !819, i64 312, !819, i64 320, !819, i64 328, !819, i64 336, !819, i64 344, !819, i64 352, !819, i64 360, !819, i64 368, !819, i64 376, !895, i64 384, !819, i64 392}
!894 = !{!"", !839, i64 0, !840, i64 16}
!895 = !{!"int", !820, i64 0}
!896 = !DILocation(line: 78, column: 173, scope: !879)
!897 = !DILocation(line: 78, column: 104, scope: !879)
!898 = !DILocation(line: 78, column: 192, scope: !899)
!899 = !DILexicalBlockFile(scope: !511, file: !21, discriminator: 4)
!900 = !DILocation(line: 78, column: 192, scope: !516)
!901 = !DILocation(line: 78, column: 192, scope: !902)
!902 = !DILexicalBlockFile(scope: !516, file: !21, discriminator: 5)
!903 = !DILocation(line: 79, column: 5, scope: !511)
!904 = !DILocation(line: 80, column: 1, scope: !511)
!905 = !DILocation(line: 32, column: 34, scope: !666)
!906 = !DILocation(line: 32, column: 49, scope: !666)
!907 = !DILocation(line: 33, column: 28, scope: !666)
!908 = !DILocation(line: 33, column: 44, scope: !666)
!909 = !DILocation(line: 35, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !666, file: !21, line: 35, column: 9)
!911 = !DILocation(line: 35, column: 17, scope: !910)
!912 = !DILocation(line: 35, column: 9, scope: !666)
!913 = !DILocation(line: 36, column: 9, scope: !910)
!914 = !DILocation(line: 37, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !666, file: !21, line: 37, column: 9)
!916 = !DILocation(line: 37, column: 13, scope: !915)
!917 = !DILocation(line: 37, column: 9, scope: !666)
!918 = !DILocation(line: 38, column: 13, scope: !915)
!919 = !DILocation(line: 38, column: 9, scope: !915)
!920 = !DILocation(line: 40, column: 30, scope: !921)
!921 = distinct !DILexicalBlock(scope: !666, file: !21, line: 40, column: 9)
!922 = !DILocation(line: 40, column: 51, scope: !921)
!923 = !DILocation(line: 40, column: 9, scope: !921)
!924 = !DILocation(line: 40, column: 57, scope: !921)
!925 = !DILocation(line: 40, column: 9, scope: !666)
!926 = !DILocation(line: 41, column: 9, scope: !921)
!927 = !DILocation(line: 42, column: 30, scope: !928)
!928 = distinct !DILexicalBlock(scope: !666, file: !21, line: 42, column: 9)
!929 = !DILocation(line: 42, column: 50, scope: !928)
!930 = !DILocation(line: 42, column: 9, scope: !928)
!931 = !DILocation(line: 42, column: 55, scope: !928)
!932 = !DILocation(line: 42, column: 9, scope: !666)
!933 = !DILocation(line: 43, column: 9, scope: !928)
!934 = !DILocation(line: 44, column: 30, scope: !935)
!935 = distinct !DILexicalBlock(scope: !666, file: !21, line: 44, column: 9)
!936 = !DILocation(line: 44, column: 9, scope: !935)
!937 = !DILocation(line: 44, column: 73, scope: !935)
!938 = !DILocation(line: 44, column: 9, scope: !666)
!939 = !DILocation(line: 45, column: 9, scope: !935)
!940 = !DILocation(line: 46, column: 30, scope: !941)
!941 = distinct !DILexicalBlock(scope: !666, file: !21, line: 46, column: 9)
!942 = !DILocation(line: 46, column: 9, scope: !941)
!943 = !DILocation(line: 46, column: 72, scope: !941)
!944 = !DILocation(line: 46, column: 9, scope: !666)
!945 = !DILocation(line: 47, column: 9, scope: !941)
!946 = !DILocation(line: 48, column: 30, scope: !947)
!947 = distinct !DILexicalBlock(scope: !666, file: !21, line: 48, column: 9)
!948 = !DILocation(line: 48, column: 9, scope: !947)
!949 = !DILocation(line: 48, column: 70, scope: !947)
!950 = !DILocation(line: 48, column: 9, scope: !666)
!951 = !DILocation(line: 49, column: 9, scope: !947)
!952 = !DILocation(line: 50, column: 24, scope: !677)
!953 = !DILocation(line: 50, column: 32, scope: !677)
!954 = !DILocation(line: 50, column: 41, scope: !677)
!955 = !DILocation(line: 50, column: 9, scope: !666)
!956 = !DILocation(line: 51, column: 25, scope: !676)
!957 = !DILocation(line: 51, column: 33, scope: !676)
!958 = !DILocation(line: 51, column: 42, scope: !676)
!959 = !DILocation(line: 52, column: 9, scope: !676)
!960 = !DILocation(line: 52, column: 14, scope: !961)
!961 = !DILexicalBlockFile(scope: !675, file: !21, discriminator: 1)
!962 = !DILocation(line: 52, column: 24, scope: !675)
!963 = !DILocation(line: 52, column: 55, scope: !675)
!964 = !DILocation(line: 52, column: 60, scope: !675)
!965 = !DILocation(line: 52, column: 74, scope: !680)
!966 = !DILocation(line: 52, column: 90, scope: !680)
!967 = !DILocation(line: 52, column: 74, scope: !675)
!968 = !DILocation(line: 52, column: 105, scope: !969)
!969 = !DILexicalBlockFile(scope: !680, file: !21, discriminator: 2)
!970 = !DILocation(line: 52, column: 110, scope: !971)
!971 = !DILexicalBlockFile(scope: !679, file: !21, discriminator: 4)
!972 = !DILocation(line: 52, column: 120, scope: !679)
!973 = !DILocation(line: 52, column: 150, scope: !679)
!974 = !DILocation(line: 52, column: 176, scope: !975)
!975 = distinct !DILexicalBlock(scope: !679, file: !21, line: 52, column: 173)
!976 = !DILocation(line: 52, column: 193, scope: !975)
!977 = !DILocation(line: 52, column: 173, scope: !975)
!978 = !DILocation(line: 52, column: 203, scope: !975)
!979 = !DILocation(line: 52, column: 173, scope: !679)
!980 = !DILocation(line: 52, column: 173, scope: !981)
!981 = !DILexicalBlockFile(scope: !679, file: !21, discriminator: 5)
!982 = !DILocation(line: 52, column: 234, scope: !983)
!983 = !DILexicalBlockFile(scope: !975, file: !21, discriminator: 6)
!984 = !DILocation(line: 52, column: 252, scope: !975)
!985 = !DILocation(line: 52, column: 262, scope: !975)
!986 = !DILocation(line: 52, column: 287, scope: !975)
!987 = !DILocation(line: 52, column: 218, scope: !975)
!988 = !DILocation(line: 52, column: 306, scope: !989)
!989 = !DILexicalBlockFile(scope: !680, file: !21, discriminator: 7)
!990 = !DILocation(line: 52, column: 306, scope: !679)
!991 = !DILocation(line: 52, column: 306, scope: !992)
!992 = !DILexicalBlockFile(scope: !679, file: !21, discriminator: 8)
!993 = !DILocation(line: 52, column: 306, scope: !994)
!994 = !DILexicalBlockFile(scope: !679, file: !21, discriminator: 9)
!995 = !DILocation(line: 52, column: 319, scope: !996)
!996 = !DILexicalBlockFile(scope: !997, file: !21, discriminator: 10)
!997 = !DILexicalBlockFile(scope: !676, file: !21, discriminator: 3)
!998 = !DILocation(line: 52, column: 319, scope: !675)
!999 = !DILocation(line: 53, column: 24, scope: !676)
!1000 = !DILocation(line: 53, column: 9, scope: !676)
!1001 = !DILocation(line: 53, column: 14, scope: !676)
!1002 = !DILocation(line: 53, column: 22, scope: !676)
!1003 = !DILocation(line: 54, column: 5, scope: !676)
!1004 = !DILocation(line: 56, column: 5, scope: !666)
!1005 = !DILocation(line: 57, column: 1, scope: !666)
!1006 = !DILocation(line: 83, column: 26, scope: !517)
!1007 = !DILocation(line: 85, column: 5, scope: !517)
!1008 = !DILocation(line: 85, column: 15, scope: !517)
!1009 = !DILocation(line: 85, column: 25, scope: !517)
!1010 = !DILocation(line: 86, column: 36, scope: !517)
!1011 = !DILocation(line: 86, column: 15, scope: !517)
!1012 = !DILocation(line: 86, column: 13, scope: !517)
!1013 = !DILocation(line: 87, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !517, file: !21, line: 87, column: 9)
!1015 = !DILocation(line: 87, column: 17, scope: !1014)
!1016 = !DILocation(line: 87, column: 9, scope: !517)
!1017 = !DILocation(line: 88, column: 9, scope: !1014)
!1018 = !DILocation(line: 89, column: 33, scope: !517)
!1019 = !DILocation(line: 89, column: 14, scope: !517)
!1020 = !DILocation(line: 89, column: 12, scope: !517)
!1021 = !DILocation(line: 90, column: 5, scope: !517)
!1022 = !DILocation(line: 90, column: 10, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !525, file: !21, discriminator: 1)
!1024 = !DILocation(line: 90, column: 20, scope: !525)
!1025 = !DILocation(line: 90, column: 50, scope: !525)
!1026 = !DILocation(line: 90, column: 68, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !525, file: !21, line: 90, column: 65)
!1028 = !DILocation(line: 90, column: 85, scope: !1027)
!1029 = !DILocation(line: 90, column: 65, scope: !1027)
!1030 = !DILocation(line: 90, column: 95, scope: !1027)
!1031 = !DILocation(line: 90, column: 65, scope: !525)
!1032 = !DILocation(line: 90, column: 65, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !525, file: !21, discriminator: 2)
!1034 = !DILocation(line: 90, column: 126, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1027, file: !21, discriminator: 3)
!1036 = !DILocation(line: 90, column: 144, scope: !1027)
!1037 = !DILocation(line: 90, column: 154, scope: !1027)
!1038 = !DILocation(line: 90, column: 179, scope: !1027)
!1039 = !DILocation(line: 90, column: 110, scope: !1027)
!1040 = !DILocation(line: 90, column: 198, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !517, file: !21, discriminator: 4)
!1042 = !DILocation(line: 90, column: 198, scope: !525)
!1043 = !DILocation(line: 90, column: 198, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !525, file: !21, discriminator: 5)
!1045 = !DILocation(line: 91, column: 12, scope: !517)
!1046 = !DILocation(line: 91, column: 5, scope: !517)
!1047 = !DILocation(line: 92, column: 1, scope: !517)
!1048 = !DILocation(line: 96, column: 38, scope: !526)
!1049 = !{!895, !895, i64 0}
!1050 = !DILocation(line: 96, column: 50, scope: !526)
!1051 = !DILocation(line: 98, column: 5, scope: !526)
!1052 = !DILocation(line: 98, column: 15, scope: !526)
!1053 = !DILocation(line: 98, column: 19, scope: !526)
!1054 = !DILocation(line: 98, column: 23, scope: !526)
!1055 = !DILocation(line: 99, column: 5, scope: !526)
!1056 = !DILocation(line: 99, column: 18, scope: !526)
!1057 = !DILocation(line: 100, column: 5, scope: !526)
!1058 = !DILocation(line: 100, column: 17, scope: !526)
!1059 = !DILocation(line: 101, column: 5, scope: !526)
!1060 = !DILocation(line: 101, column: 21, scope: !526)
!1061 = !DILocation(line: 102, column: 5, scope: !526)
!1062 = !DILocation(line: 102, column: 25, scope: !526)
!1063 = !DILocation(line: 102, column: 34, scope: !526)
!1064 = !DILocation(line: 102, column: 55, scope: !526)
!1065 = !{!1066, !819, i64 16}
!1066 = !{!"_ts", !819, i64 0, !819, i64 8, !819, i64 16, !819, i64 24, !895, i64 32, !820, i64 36, !820, i64 37, !895, i64 40, !895, i64 44, !819, i64 48, !819, i64 56, !819, i64 64, !819, i64 72, !819, i64 80, !819, i64 88, !819, i64 96, !819, i64 104, !819, i64 112, !819, i64 120, !819, i64 128, !895, i64 136, !819, i64 144, !840, i64 152, !895, i64 160, !819, i64 168, !819, i64 176, !819, i64 184}
!1067 = !DILocation(line: 103, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !526, file: !21, line: 103, column: 9)
!1069 = !DILocation(line: 103, column: 17, scope: !1068)
!1070 = !{!1071, !819, i64 16}
!1071 = !{!"_is", !819, i64 0, !819, i64 8, !819, i64 16, !819, i64 24, !819, i64 32, !819, i64 40, !819, i64 48, !819, i64 56, !819, i64 64, !819, i64 72, !895, i64 80, !895, i64 84, !895, i64 88, !819, i64 96}
!1072 = !DILocation(line: 103, column: 25, scope: !1068)
!1073 = !DILocation(line: 103, column: 9, scope: !526)
!1074 = !DILocation(line: 104, column: 9, scope: !1068)
!1075 = !DILocation(line: 105, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !526, file: !21, line: 105, column: 9)
!1077 = !DILocation(line: 105, column: 39, scope: !1076)
!1078 = !DILocation(line: 105, column: 9, scope: !526)
!1079 = !DILocation(line: 106, column: 9, scope: !1076)
!1080 = !DILocation(line: 107, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !526, file: !21, line: 107, column: 9)
!1082 = !DILocation(line: 107, column: 17, scope: !1081)
!1083 = !DILocation(line: 107, column: 24, scope: !1081)
!1084 = !{!1085, !840, i64 24}
!1085 = !{!"PyModuleDef", !1086, i64 0, !819, i64 40, !819, i64 48, !840, i64 56, !819, i64 64, !819, i64 72, !819, i64 80, !819, i64 88, !819, i64 96}
!1086 = !{!"PyModuleDef_Base", !839, i64 0, !819, i64 16, !840, i64 24, !819, i64 32}
!1087 = !DILocation(line: 107, column: 32, scope: !1081)
!1088 = !DILocation(line: 107, column: 9, scope: !526)
!1089 = !DILocation(line: 108, column: 26, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !21, line: 107, column: 38)
!1091 = !{!840, !840, i64 0}
!1092 = !DILocation(line: 109, column: 23, scope: !1090)
!1093 = !DILocation(line: 109, column: 11, scope: !1090)
!1094 = !DILocation(line: 109, column: 33, scope: !1090)
!1095 = !DILocation(line: 109, column: 44, scope: !1090)
!1096 = !DILocation(line: 110, column: 23, scope: !1090)
!1097 = !DILocation(line: 110, column: 11, scope: !1090)
!1098 = !DILocation(line: 110, column: 33, scope: !1090)
!1099 = !DILocation(line: 110, column: 42, scope: !1090)
!1100 = !DILocation(line: 111, column: 34, scope: !1090)
!1101 = !DILocation(line: 111, column: 9, scope: !1090)
!1102 = !DILocation(line: 111, column: 17, scope: !1090)
!1103 = !DILocation(line: 111, column: 24, scope: !1090)
!1104 = !DILocation(line: 111, column: 32, scope: !1090)
!1105 = !DILocation(line: 112, column: 5, scope: !1090)
!1106 = !DILocation(line: 113, column: 12, scope: !526)
!1107 = !DILocation(line: 113, column: 20, scope: !526)
!1108 = !{!1085, !819, i64 40}
!1109 = !DILocation(line: 113, column: 10, scope: !526)
!1110 = !DILocation(line: 114, column: 9, scope: !541)
!1111 = !DILocation(line: 114, column: 28, scope: !541)
!1112 = !DILocation(line: 114, column: 36, scope: !541)
!1113 = !DILocation(line: 114, column: 39, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !541, file: !21, discriminator: 1)
!1115 = !DILocation(line: 114, column: 58, scope: !541)
!1116 = !DILocation(line: 114, column: 9, scope: !526)
!1117 = !DILocation(line: 115, column: 9, scope: !540)
!1118 = !DILocation(line: 115, column: 13, scope: !540)
!1119 = !DILocation(line: 116, column: 32, scope: !540)
!1120 = !DILocation(line: 119, column: 14, scope: !540)
!1121 = !DILocation(line: 120, column: 20, scope: !540)
!1122 = !DILocation(line: 120, column: 26, scope: !540)
!1123 = !DILocation(line: 116, column: 15, scope: !540)
!1124 = !DILocation(line: 116, column: 13, scope: !540)
!1125 = !DILocation(line: 121, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !540, file: !21, line: 121, column: 13)
!1127 = !DILocation(line: 121, column: 13, scope: !540)
!1128 = !DILocation(line: 122, column: 13, scope: !1126)
!1129 = !DILocation(line: 123, column: 5, scope: !541)
!1130 = !DILocation(line: 123, column: 5, scope: !1114)
!1131 = !DILocation(line: 123, column: 5, scope: !540)
!1132 = !DILocation(line: 133, column: 9, scope: !544)
!1133 = !DILocation(line: 133, column: 28, scope: !544)
!1134 = !DILocation(line: 133, column: 9, scope: !526)
!1135 = !DILocation(line: 134, column: 9, scope: !543)
!1136 = !DILocation(line: 134, column: 15, scope: !543)
!1137 = !DILocation(line: 134, column: 27, scope: !543)
!1138 = !DILocation(line: 134, column: 19, scope: !543)
!1139 = !DILocation(line: 135, column: 13, scope: !547)
!1140 = !DILocation(line: 135, column: 15, scope: !547)
!1141 = !DILocation(line: 135, column: 29, scope: !547)
!1142 = !DILocation(line: 135, column: 49, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !546, file: !21, discriminator: 1)
!1144 = !DILocation(line: 135, column: 56, scope: !546)
!1145 = !DILocation(line: 135, column: 49, scope: !546)
!1146 = !DILocation(line: 135, column: 66, scope: !546)
!1147 = !DILocation(line: 135, column: 2255, scope: !546)
!1148 = !DILocation(line: 135, column: 2263, scope: !546)
!1149 = !DILocation(line: 135, column: 2271, scope: !546)
!1150 = !DILocation(line: 135, column: 2272, scope: !546)
!1151 = !DILocation(line: 135, column: 2237, scope: !546)
!1152 = !DILocation(line: 135, column: 2280, scope: !547)
!1153 = !DILocation(line: 135, column: 2280, scope: !546)
!1154 = !DILocation(line: 135, column: 2283, scope: !547)
!1155 = !DILocation(line: 135, column: 13, scope: !543)
!1156 = !DILocation(line: 136, column: 20, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !547, file: !21, line: 135, column: 2289)
!1158 = !DILocation(line: 136, column: 18, scope: !1157)
!1159 = !DILocation(line: 137, column: 32, scope: !1157)
!1160 = !DILocation(line: 138, column: 9, scope: !1157)
!1161 = !DILocation(line: 139, column: 5, scope: !544)
!1162 = !DILocation(line: 139, column: 5, scope: !543)
!1163 = !DILocation(line: 140, column: 44, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !526, file: !21, line: 140, column: 9)
!1165 = !DILocation(line: 140, column: 31, scope: !1164)
!1166 = !DILocation(line: 140, column: 14, scope: !1164)
!1167 = !DILocation(line: 140, column: 12, scope: !1164)
!1168 = !DILocation(line: 140, column: 51, scope: !1164)
!1169 = !DILocation(line: 140, column: 9, scope: !526)
!1170 = !DILocation(line: 141, column: 9, scope: !1164)
!1171 = !DILocation(line: 143, column: 9, scope: !554)
!1172 = !DILocation(line: 143, column: 17, scope: !554)
!1173 = !{!1085, !840, i64 56}
!1174 = !DILocation(line: 143, column: 24, scope: !554)
!1175 = !DILocation(line: 143, column: 9, scope: !526)
!1176 = !DILocation(line: 144, column: 36, scope: !553)
!1177 = !DILocation(line: 144, column: 44, scope: !553)
!1178 = !DILocation(line: 144, column: 23, scope: !553)
!1179 = !DILocation(line: 144, column: 9, scope: !553)
!1180 = !DILocation(line: 144, column: 12, scope: !553)
!1181 = !DILocation(line: 144, column: 21, scope: !553)
!1182 = !DILocation(line: 145, column: 14, scope: !552)
!1183 = !DILocation(line: 145, column: 17, scope: !552)
!1184 = !DILocation(line: 145, column: 13, scope: !553)
!1185 = !DILocation(line: 146, column: 13, scope: !551)
!1186 = !DILocation(line: 147, column: 13, scope: !551)
!1187 = !DILocation(line: 147, column: 18, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !550, file: !21, discriminator: 1)
!1189 = !DILocation(line: 147, column: 28, scope: !550)
!1190 = !DILocation(line: 147, column: 58, scope: !550)
!1191 = !DILocation(line: 147, column: 45, scope: !550)
!1192 = !DILocation(line: 147, column: 70, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !550, file: !21, line: 147, column: 67)
!1194 = !DILocation(line: 147, column: 87, scope: !1193)
!1195 = !DILocation(line: 147, column: 67, scope: !1193)
!1196 = !DILocation(line: 147, column: 97, scope: !1193)
!1197 = !DILocation(line: 147, column: 67, scope: !550)
!1198 = !DILocation(line: 147, column: 67, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !550, file: !21, discriminator: 2)
!1200 = !DILocation(line: 147, column: 128, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1193, file: !21, discriminator: 3)
!1202 = !DILocation(line: 147, column: 146, scope: !1193)
!1203 = !DILocation(line: 147, column: 156, scope: !1193)
!1204 = !DILocation(line: 147, column: 181, scope: !1193)
!1205 = !DILocation(line: 147, column: 112, scope: !1193)
!1206 = !DILocation(line: 147, column: 200, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !551, file: !21, discriminator: 4)
!1208 = !DILocation(line: 147, column: 200, scope: !550)
!1209 = !DILocation(line: 147, column: 200, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !550, file: !21, discriminator: 5)
!1211 = !DILocation(line: 148, column: 13, scope: !551)
!1212 = !DILocation(line: 150, column: 16, scope: !553)
!1213 = !DILocation(line: 150, column: 19, scope: !553)
!1214 = !DILocation(line: 150, column: 32, scope: !553)
!1215 = !DILocation(line: 150, column: 40, scope: !553)
!1216 = !DILocation(line: 150, column: 9, scope: !553)
!1217 = !DILocation(line: 151, column: 5, scope: !553)
!1218 = !DILocation(line: 153, column: 37, scope: !526)
!1219 = !DILocation(line: 153, column: 26, scope: !526)
!1220 = !DILocation(line: 153, column: 9, scope: !526)
!1221 = !DILocation(line: 153, column: 7, scope: !526)
!1222 = !DILocation(line: 154, column: 9, scope: !560)
!1223 = !DILocation(line: 154, column: 17, scope: !560)
!1224 = !{!1085, !819, i64 64}
!1225 = !DILocation(line: 154, column: 27, scope: !560)
!1226 = !DILocation(line: 154, column: 9, scope: !526)
!1227 = !DILocation(line: 155, column: 34, scope: !559)
!1228 = !DILocation(line: 155, column: 13, scope: !559)
!1229 = !DILocation(line: 155, column: 11, scope: !559)
!1230 = !DILocation(line: 156, column: 13, scope: !558)
!1231 = !DILocation(line: 156, column: 15, scope: !558)
!1232 = !DILocation(line: 156, column: 13, scope: !559)
!1233 = !DILocation(line: 157, column: 13, scope: !557)
!1234 = !DILocation(line: 157, column: 18, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !556, file: !21, discriminator: 1)
!1236 = !DILocation(line: 157, column: 28, scope: !556)
!1237 = !DILocation(line: 157, column: 58, scope: !556)
!1238 = !DILocation(line: 157, column: 45, scope: !556)
!1239 = !DILocation(line: 157, column: 70, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !556, file: !21, line: 157, column: 67)
!1241 = !DILocation(line: 157, column: 87, scope: !1240)
!1242 = !DILocation(line: 157, column: 67, scope: !1240)
!1243 = !DILocation(line: 157, column: 97, scope: !1240)
!1244 = !DILocation(line: 157, column: 67, scope: !556)
!1245 = !DILocation(line: 157, column: 67, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !556, file: !21, discriminator: 2)
!1247 = !DILocation(line: 157, column: 128, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1240, file: !21, discriminator: 3)
!1249 = !DILocation(line: 157, column: 146, scope: !1240)
!1250 = !DILocation(line: 157, column: 156, scope: !1240)
!1251 = !DILocation(line: 157, column: 181, scope: !1240)
!1252 = !DILocation(line: 157, column: 112, scope: !1240)
!1253 = !DILocation(line: 157, column: 200, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !557, file: !21, discriminator: 4)
!1255 = !DILocation(line: 157, column: 200, scope: !556)
!1256 = !DILocation(line: 157, column: 200, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !556, file: !21, discriminator: 5)
!1258 = !DILocation(line: 158, column: 13, scope: !557)
!1259 = !DILocation(line: 160, column: 19, scope: !567)
!1260 = !DILocation(line: 160, column: 27, scope: !567)
!1261 = !DILocation(line: 160, column: 17, scope: !567)
!1262 = !DILocation(line: 160, column: 14, scope: !567)
!1263 = !DILocation(line: 160, column: 38, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1265, file: !21, discriminator: 2)
!1265 = !DILexicalBlockFile(scope: !566, file: !21, discriminator: 1)
!1266 = !DILocation(line: 160, column: 42, scope: !566)
!1267 = !{!1268, !819, i64 0}
!1268 = !{!"PyMethodDef", !819, i64 0, !819, i64 8, !895, i64 16, !819, i64 24}
!1269 = !DILocation(line: 160, column: 50, scope: !566)
!1270 = !DILocation(line: 160, column: 9, scope: !567)
!1271 = !DILocation(line: 161, column: 18, scope: !564)
!1272 = !DILocation(line: 161, column: 22, scope: !564)
!1273 = !{!1268, !895, i64 16}
!1274 = !DILocation(line: 161, column: 31, scope: !564)
!1275 = !DILocation(line: 161, column: 41, scope: !564)
!1276 = !DILocation(line: 162, column: 18, scope: !564)
!1277 = !DILocation(line: 162, column: 22, scope: !564)
!1278 = !DILocation(line: 162, column: 31, scope: !564)
!1279 = !DILocation(line: 161, column: 17, scope: !565)
!1280 = !DILocation(line: 163, column: 33, scope: !563)
!1281 = !DILocation(line: 163, column: 17, scope: !563)
!1282 = !DILocation(line: 166, column: 17, scope: !563)
!1283 = !DILocation(line: 166, column: 22, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !562, file: !21, discriminator: 1)
!1285 = !DILocation(line: 166, column: 32, scope: !562)
!1286 = !DILocation(line: 166, column: 62, scope: !562)
!1287 = !DILocation(line: 166, column: 74, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !562, file: !21, line: 166, column: 71)
!1289 = !DILocation(line: 166, column: 91, scope: !1288)
!1290 = !DILocation(line: 166, column: 71, scope: !1288)
!1291 = !DILocation(line: 166, column: 101, scope: !1288)
!1292 = !DILocation(line: 166, column: 71, scope: !562)
!1293 = !DILocation(line: 166, column: 71, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !562, file: !21, discriminator: 2)
!1295 = !DILocation(line: 166, column: 132, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1288, file: !21, discriminator: 3)
!1297 = !DILocation(line: 166, column: 150, scope: !1288)
!1298 = !DILocation(line: 166, column: 160, scope: !1288)
!1299 = !DILocation(line: 166, column: 185, scope: !1288)
!1300 = !DILocation(line: 166, column: 116, scope: !1288)
!1301 = !DILocation(line: 166, column: 204, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !563, file: !21, discriminator: 4)
!1303 = !DILocation(line: 166, column: 204, scope: !562)
!1304 = !DILocation(line: 166, column: 204, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !562, file: !21, discriminator: 5)
!1306 = !DILocation(line: 167, column: 17, scope: !563)
!1307 = !DILocation(line: 167, column: 22, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !569, file: !21, discriminator: 1)
!1309 = !DILocation(line: 167, column: 32, scope: !569)
!1310 = !DILocation(line: 167, column: 62, scope: !569)
!1311 = !DILocation(line: 167, column: 49, scope: !569)
!1312 = !DILocation(line: 167, column: 74, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !569, file: !21, line: 167, column: 71)
!1314 = !DILocation(line: 167, column: 91, scope: !1313)
!1315 = !DILocation(line: 167, column: 71, scope: !1313)
!1316 = !DILocation(line: 167, column: 101, scope: !1313)
!1317 = !DILocation(line: 167, column: 71, scope: !569)
!1318 = !DILocation(line: 167, column: 71, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !569, file: !21, discriminator: 2)
!1320 = !DILocation(line: 167, column: 132, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1313, file: !21, discriminator: 3)
!1322 = !DILocation(line: 167, column: 150, scope: !1313)
!1323 = !DILocation(line: 167, column: 160, scope: !1313)
!1324 = !DILocation(line: 167, column: 185, scope: !1313)
!1325 = !DILocation(line: 167, column: 116, scope: !1313)
!1326 = !DILocation(line: 167, column: 204, scope: !1302)
!1327 = !DILocation(line: 167, column: 204, scope: !569)
!1328 = !DILocation(line: 167, column: 204, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !569, file: !21, discriminator: 5)
!1330 = !DILocation(line: 168, column: 17, scope: !563)
!1331 = !DILocation(line: 170, column: 35, scope: !565)
!1332 = !DILocation(line: 170, column: 50, scope: !565)
!1333 = !DILocation(line: 170, column: 39, scope: !565)
!1334 = !DILocation(line: 170, column: 53, scope: !565)
!1335 = !DILocation(line: 170, column: 17, scope: !565)
!1336 = !DILocation(line: 170, column: 15, scope: !565)
!1337 = !DILocation(line: 171, column: 17, scope: !573)
!1338 = !DILocation(line: 171, column: 19, scope: !573)
!1339 = !DILocation(line: 171, column: 17, scope: !565)
!1340 = !DILocation(line: 172, column: 17, scope: !572)
!1341 = !DILocation(line: 172, column: 22, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !571, file: !21, discriminator: 1)
!1343 = !DILocation(line: 172, column: 32, scope: !571)
!1344 = !DILocation(line: 172, column: 62, scope: !571)
!1345 = !DILocation(line: 172, column: 74, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !571, file: !21, line: 172, column: 71)
!1347 = !DILocation(line: 172, column: 91, scope: !1346)
!1348 = !DILocation(line: 172, column: 71, scope: !1346)
!1349 = !DILocation(line: 172, column: 101, scope: !1346)
!1350 = !DILocation(line: 172, column: 71, scope: !571)
!1351 = !DILocation(line: 172, column: 71, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !571, file: !21, discriminator: 2)
!1353 = !DILocation(line: 172, column: 132, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1346, file: !21, discriminator: 3)
!1355 = !DILocation(line: 172, column: 150, scope: !1346)
!1356 = !DILocation(line: 172, column: 160, scope: !1346)
!1357 = !DILocation(line: 172, column: 185, scope: !1346)
!1358 = !DILocation(line: 172, column: 116, scope: !1346)
!1359 = !DILocation(line: 172, column: 204, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !572, file: !21, discriminator: 4)
!1361 = !DILocation(line: 172, column: 204, scope: !571)
!1362 = !DILocation(line: 172, column: 204, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !571, file: !21, discriminator: 5)
!1364 = !DILocation(line: 173, column: 17, scope: !572)
!1365 = !DILocation(line: 173, column: 22, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !575, file: !21, discriminator: 1)
!1367 = !DILocation(line: 173, column: 32, scope: !575)
!1368 = !DILocation(line: 173, column: 62, scope: !575)
!1369 = !DILocation(line: 173, column: 49, scope: !575)
!1370 = !DILocation(line: 173, column: 74, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !575, file: !21, line: 173, column: 71)
!1372 = !DILocation(line: 173, column: 91, scope: !1371)
!1373 = !DILocation(line: 173, column: 71, scope: !1371)
!1374 = !DILocation(line: 173, column: 101, scope: !1371)
!1375 = !DILocation(line: 173, column: 71, scope: !575)
!1376 = !DILocation(line: 173, column: 71, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !575, file: !21, discriminator: 2)
!1378 = !DILocation(line: 173, column: 132, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1371, file: !21, discriminator: 3)
!1380 = !DILocation(line: 173, column: 150, scope: !1371)
!1381 = !DILocation(line: 173, column: 160, scope: !1371)
!1382 = !DILocation(line: 173, column: 185, scope: !1371)
!1383 = !DILocation(line: 173, column: 116, scope: !1371)
!1384 = !DILocation(line: 173, column: 204, scope: !1360)
!1385 = !DILocation(line: 173, column: 204, scope: !575)
!1386 = !DILocation(line: 173, column: 204, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !575, file: !21, discriminator: 5)
!1388 = !DILocation(line: 174, column: 17, scope: !572)
!1389 = !DILocation(line: 176, column: 38, scope: !579)
!1390 = !DILocation(line: 176, column: 41, scope: !579)
!1391 = !DILocation(line: 176, column: 45, scope: !579)
!1392 = !DILocation(line: 176, column: 54, scope: !579)
!1393 = !DILocation(line: 176, column: 17, scope: !579)
!1394 = !DILocation(line: 176, column: 57, scope: !579)
!1395 = !DILocation(line: 176, column: 17, scope: !565)
!1396 = !DILocation(line: 177, column: 17, scope: !578)
!1397 = !DILocation(line: 177, column: 22, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !577, file: !21, discriminator: 1)
!1399 = !DILocation(line: 177, column: 32, scope: !577)
!1400 = !DILocation(line: 177, column: 62, scope: !577)
!1401 = !DILocation(line: 177, column: 74, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !577, file: !21, line: 177, column: 71)
!1403 = !DILocation(line: 177, column: 91, scope: !1402)
!1404 = !DILocation(line: 177, column: 71, scope: !1402)
!1405 = !DILocation(line: 177, column: 101, scope: !1402)
!1406 = !DILocation(line: 177, column: 71, scope: !577)
!1407 = !DILocation(line: 177, column: 71, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !577, file: !21, discriminator: 2)
!1409 = !DILocation(line: 177, column: 132, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1402, file: !21, discriminator: 3)
!1411 = !DILocation(line: 177, column: 150, scope: !1402)
!1412 = !DILocation(line: 177, column: 160, scope: !1402)
!1413 = !DILocation(line: 177, column: 185, scope: !1402)
!1414 = !DILocation(line: 177, column: 116, scope: !1402)
!1415 = !DILocation(line: 177, column: 204, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !578, file: !21, discriminator: 4)
!1417 = !DILocation(line: 177, column: 204, scope: !577)
!1418 = !DILocation(line: 177, column: 204, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !577, file: !21, discriminator: 5)
!1420 = !DILocation(line: 178, column: 17, scope: !578)
!1421 = !DILocation(line: 178, column: 22, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !581, file: !21, discriminator: 1)
!1423 = !DILocation(line: 178, column: 32, scope: !581)
!1424 = !DILocation(line: 178, column: 62, scope: !581)
!1425 = !DILocation(line: 178, column: 74, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !581, file: !21, line: 178, column: 71)
!1427 = !DILocation(line: 178, column: 91, scope: !1426)
!1428 = !DILocation(line: 178, column: 71, scope: !1426)
!1429 = !DILocation(line: 178, column: 101, scope: !1426)
!1430 = !DILocation(line: 178, column: 71, scope: !581)
!1431 = !DILocation(line: 178, column: 71, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !581, file: !21, discriminator: 2)
!1433 = !DILocation(line: 178, column: 132, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1426, file: !21, discriminator: 3)
!1435 = !DILocation(line: 178, column: 150, scope: !1426)
!1436 = !DILocation(line: 178, column: 160, scope: !1426)
!1437 = !DILocation(line: 178, column: 185, scope: !1426)
!1438 = !DILocation(line: 178, column: 116, scope: !1426)
!1439 = !DILocation(line: 178, column: 204, scope: !1416)
!1440 = !DILocation(line: 178, column: 204, scope: !581)
!1441 = !DILocation(line: 178, column: 204, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !581, file: !21, discriminator: 5)
!1443 = !DILocation(line: 179, column: 17, scope: !578)
!1444 = !DILocation(line: 179, column: 22, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !583, file: !21, discriminator: 1)
!1446 = !DILocation(line: 179, column: 32, scope: !583)
!1447 = !DILocation(line: 179, column: 62, scope: !583)
!1448 = !DILocation(line: 179, column: 49, scope: !583)
!1449 = !DILocation(line: 179, column: 74, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !583, file: !21, line: 179, column: 71)
!1451 = !DILocation(line: 179, column: 91, scope: !1450)
!1452 = !DILocation(line: 179, column: 71, scope: !1450)
!1453 = !DILocation(line: 179, column: 101, scope: !1450)
!1454 = !DILocation(line: 179, column: 71, scope: !583)
!1455 = !DILocation(line: 179, column: 71, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !583, file: !21, discriminator: 2)
!1457 = !DILocation(line: 179, column: 132, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1450, file: !21, discriminator: 3)
!1459 = !DILocation(line: 179, column: 150, scope: !1450)
!1460 = !DILocation(line: 179, column: 160, scope: !1450)
!1461 = !DILocation(line: 179, column: 185, scope: !1450)
!1462 = !DILocation(line: 179, column: 116, scope: !1450)
!1463 = !DILocation(line: 179, column: 204, scope: !1416)
!1464 = !DILocation(line: 179, column: 204, scope: !583)
!1465 = !DILocation(line: 179, column: 204, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !583, file: !21, discriminator: 5)
!1467 = !DILocation(line: 180, column: 17, scope: !578)
!1468 = !DILocation(line: 182, column: 13, scope: !565)
!1469 = !DILocation(line: 182, column: 18, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !585, file: !21, discriminator: 1)
!1471 = !DILocation(line: 182, column: 28, scope: !585)
!1472 = !DILocation(line: 182, column: 58, scope: !585)
!1473 = !DILocation(line: 182, column: 70, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !585, file: !21, line: 182, column: 67)
!1475 = !DILocation(line: 182, column: 87, scope: !1474)
!1476 = !DILocation(line: 182, column: 67, scope: !1474)
!1477 = !DILocation(line: 182, column: 97, scope: !1474)
!1478 = !DILocation(line: 182, column: 67, scope: !585)
!1479 = !DILocation(line: 182, column: 67, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !585, file: !21, discriminator: 2)
!1481 = !DILocation(line: 182, column: 128, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1474, file: !21, discriminator: 3)
!1483 = !DILocation(line: 182, column: 146, scope: !1474)
!1484 = !DILocation(line: 182, column: 156, scope: !1474)
!1485 = !DILocation(line: 182, column: 181, scope: !1474)
!1486 = !DILocation(line: 182, column: 112, scope: !1474)
!1487 = !DILocation(line: 182, column: 200, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !565, file: !21, discriminator: 4)
!1489 = !DILocation(line: 182, column: 200, scope: !585)
!1490 = !DILocation(line: 182, column: 200, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !585, file: !21, discriminator: 5)
!1492 = !DILocation(line: 183, column: 9, scope: !565)
!1493 = !DILocation(line: 160, column: 67, scope: !566)
!1494 = !DILocation(line: 160, column: 9, scope: !566)
!1495 = !DILocation(line: 184, column: 9, scope: !559)
!1496 = !DILocation(line: 184, column: 14, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !587, file: !21, discriminator: 1)
!1498 = !DILocation(line: 184, column: 24, scope: !587)
!1499 = !DILocation(line: 184, column: 54, scope: !587)
!1500 = !DILocation(line: 184, column: 66, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !587, file: !21, line: 184, column: 63)
!1502 = !DILocation(line: 184, column: 83, scope: !1501)
!1503 = !DILocation(line: 184, column: 63, scope: !1501)
!1504 = !DILocation(line: 184, column: 93, scope: !1501)
!1505 = !DILocation(line: 184, column: 63, scope: !587)
!1506 = !DILocation(line: 184, column: 63, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !587, file: !21, discriminator: 2)
!1508 = !DILocation(line: 184, column: 124, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1501, file: !21, discriminator: 3)
!1510 = !DILocation(line: 184, column: 142, scope: !1501)
!1511 = !DILocation(line: 184, column: 152, scope: !1501)
!1512 = !DILocation(line: 184, column: 177, scope: !1501)
!1513 = !DILocation(line: 184, column: 108, scope: !1501)
!1514 = !DILocation(line: 184, column: 196, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !559, file: !21, discriminator: 4)
!1516 = !DILocation(line: 184, column: 196, scope: !587)
!1517 = !DILocation(line: 184, column: 196, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !587, file: !21, discriminator: 5)
!1519 = !DILocation(line: 185, column: 5, scope: !559)
!1520 = !DILocation(line: 186, column: 9, scope: !593)
!1521 = !DILocation(line: 186, column: 17, scope: !593)
!1522 = !{!1085, !819, i64 48}
!1523 = !DILocation(line: 186, column: 23, scope: !593)
!1524 = !DILocation(line: 186, column: 9, scope: !526)
!1525 = !DILocation(line: 187, column: 34, scope: !592)
!1526 = !DILocation(line: 187, column: 42, scope: !592)
!1527 = !DILocation(line: 187, column: 13, scope: !592)
!1528 = !DILocation(line: 187, column: 11, scope: !592)
!1529 = !DILocation(line: 188, column: 13, scope: !591)
!1530 = !DILocation(line: 188, column: 15, scope: !591)
!1531 = !DILocation(line: 188, column: 29, scope: !591)
!1532 = !DILocation(line: 188, column: 53, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !591, file: !21, discriminator: 1)
!1534 = !DILocation(line: 188, column: 67, scope: !591)
!1535 = !DILocation(line: 188, column: 32, scope: !591)
!1536 = !DILocation(line: 188, column: 70, scope: !591)
!1537 = !DILocation(line: 188, column: 13, scope: !592)
!1538 = !DILocation(line: 189, column: 13, scope: !590)
!1539 = !DILocation(line: 189, column: 18, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !589, file: !21, discriminator: 1)
!1541 = !DILocation(line: 189, column: 28, scope: !589)
!1542 = !DILocation(line: 189, column: 59, scope: !589)
!1543 = !DILocation(line: 189, column: 67, scope: !596)
!1544 = !DILocation(line: 189, column: 83, scope: !596)
!1545 = !DILocation(line: 189, column: 67, scope: !589)
!1546 = !DILocation(line: 189, column: 98, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !596, file: !21, discriminator: 2)
!1548 = !DILocation(line: 189, column: 103, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !595, file: !21, discriminator: 4)
!1550 = !DILocation(line: 189, column: 113, scope: !595)
!1551 = !DILocation(line: 189, column: 143, scope: !595)
!1552 = !DILocation(line: 189, column: 169, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !595, file: !21, line: 189, column: 166)
!1554 = !DILocation(line: 189, column: 186, scope: !1553)
!1555 = !DILocation(line: 189, column: 166, scope: !1553)
!1556 = !DILocation(line: 189, column: 196, scope: !1553)
!1557 = !DILocation(line: 189, column: 166, scope: !595)
!1558 = !DILocation(line: 189, column: 166, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !595, file: !21, discriminator: 5)
!1560 = !DILocation(line: 189, column: 227, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1553, file: !21, discriminator: 6)
!1562 = !DILocation(line: 189, column: 245, scope: !1553)
!1563 = !DILocation(line: 189, column: 255, scope: !1553)
!1564 = !DILocation(line: 189, column: 280, scope: !1553)
!1565 = !DILocation(line: 189, column: 211, scope: !1553)
!1566 = !DILocation(line: 189, column: 299, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !596, file: !21, discriminator: 7)
!1568 = !DILocation(line: 189, column: 299, scope: !595)
!1569 = !DILocation(line: 189, column: 299, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !595, file: !21, discriminator: 8)
!1571 = !DILocation(line: 189, column: 299, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !595, file: !21, discriminator: 9)
!1573 = !DILocation(line: 189, column: 312, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !21, discriminator: 10)
!1575 = !DILexicalBlockFile(scope: !590, file: !21, discriminator: 3)
!1576 = !DILocation(line: 189, column: 312, scope: !589)
!1577 = !DILocation(line: 189, column: 312, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !589, file: !21, discriminator: 11)
!1579 = !DILocation(line: 190, column: 13, scope: !590)
!1580 = !DILocation(line: 190, column: 18, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !598, file: !21, discriminator: 1)
!1582 = !DILocation(line: 190, column: 28, scope: !598)
!1583 = !DILocation(line: 190, column: 58, scope: !598)
!1584 = !DILocation(line: 190, column: 45, scope: !598)
!1585 = !DILocation(line: 190, column: 70, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !598, file: !21, line: 190, column: 67)
!1587 = !DILocation(line: 190, column: 87, scope: !1586)
!1588 = !DILocation(line: 190, column: 67, scope: !1586)
!1589 = !DILocation(line: 190, column: 97, scope: !1586)
!1590 = !DILocation(line: 190, column: 67, scope: !598)
!1591 = !DILocation(line: 190, column: 67, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !598, file: !21, discriminator: 2)
!1593 = !DILocation(line: 190, column: 128, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1586, file: !21, discriminator: 3)
!1595 = !DILocation(line: 190, column: 146, scope: !1586)
!1596 = !DILocation(line: 190, column: 156, scope: !1586)
!1597 = !DILocation(line: 190, column: 181, scope: !1586)
!1598 = !DILocation(line: 190, column: 112, scope: !1586)
!1599 = !DILocation(line: 190, column: 200, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !590, file: !21, discriminator: 4)
!1601 = !DILocation(line: 190, column: 200, scope: !598)
!1602 = !DILocation(line: 190, column: 200, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !598, file: !21, discriminator: 5)
!1604 = !DILocation(line: 191, column: 13, scope: !590)
!1605 = !DILocation(line: 193, column: 9, scope: !592)
!1606 = !DILocation(line: 193, column: 14, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !600, file: !21, discriminator: 1)
!1608 = !DILocation(line: 193, column: 24, scope: !600)
!1609 = !DILocation(line: 193, column: 54, scope: !600)
!1610 = !DILocation(line: 193, column: 66, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !600, file: !21, line: 193, column: 63)
!1612 = !DILocation(line: 193, column: 83, scope: !1611)
!1613 = !DILocation(line: 193, column: 63, scope: !1611)
!1614 = !DILocation(line: 193, column: 93, scope: !1611)
!1615 = !DILocation(line: 193, column: 63, scope: !600)
!1616 = !DILocation(line: 193, column: 63, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !600, file: !21, discriminator: 2)
!1618 = !DILocation(line: 193, column: 124, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1611, file: !21, discriminator: 3)
!1620 = !DILocation(line: 193, column: 142, scope: !1611)
!1621 = !DILocation(line: 193, column: 152, scope: !1611)
!1622 = !DILocation(line: 193, column: 177, scope: !1611)
!1623 = !DILocation(line: 193, column: 108, scope: !1611)
!1624 = !DILocation(line: 193, column: 196, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !592, file: !21, discriminator: 4)
!1626 = !DILocation(line: 193, column: 196, scope: !600)
!1627 = !DILocation(line: 193, column: 196, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !600, file: !21, discriminator: 5)
!1629 = !DILocation(line: 194, column: 5, scope: !592)
!1630 = !DILocation(line: 195, column: 17, scope: !526)
!1631 = !DILocation(line: 195, column: 5, scope: !526)
!1632 = !DILocation(line: 195, column: 8, scope: !526)
!1633 = !DILocation(line: 195, column: 15, scope: !526)
!1634 = !DILocation(line: 196, column: 23, scope: !526)
!1635 = !DILocation(line: 196, column: 12, scope: !526)
!1636 = !DILocation(line: 196, column: 5, scope: !526)
!1637 = !DILocation(line: 197, column: 1, scope: !526)
!1638 = !DILocation(line: 201, column: 28, scope: !601)
!1639 = !DILocation(line: 203, column: 5, scope: !601)
!1640 = !DILocation(line: 203, column: 15, scope: !601)
!1641 = !DILocation(line: 204, column: 25, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !601, file: !21, line: 204, column: 9)
!1643 = !DILocation(line: 204, column: 30, scope: !1642)
!1644 = !DILocation(line: 204, column: 39, scope: !1642)
!1645 = !DILocation(line: 204, column: 59, scope: !1642)
!1646 = !DILocation(line: 204, column: 93, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1642, file: !21, discriminator: 1)
!1648 = !DILocation(line: 204, column: 98, scope: !1642)
!1649 = !DILocation(line: 204, column: 62, scope: !1642)
!1650 = !DILocation(line: 204, column: 9, scope: !601)
!1651 = !DILocation(line: 205, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1642, file: !21, line: 204, column: 128)
!1653 = !DILocation(line: 206, column: 9, scope: !1652)
!1654 = !DILocation(line: 208, column: 28, scope: !601)
!1655 = !DILocation(line: 208, column: 10, scope: !601)
!1656 = !DILocation(line: 208, column: 34, scope: !601)
!1657 = !DILocation(line: 208, column: 7, scope: !601)
!1658 = !DILocation(line: 209, column: 9, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !601, file: !21, line: 209, column: 9)
!1660 = !DILocation(line: 209, column: 11, scope: !1659)
!1661 = !DILocation(line: 209, column: 9, scope: !601)
!1662 = !DILocation(line: 210, column: 48, scope: !1659)
!1663 = !DILocation(line: 210, column: 46, scope: !1659)
!1664 = !DILocation(line: 210, column: 28, scope: !1659)
!1665 = !DILocation(line: 210, column: 10, scope: !1659)
!1666 = !DILocation(line: 210, column: 34, scope: !1659)
!1667 = !DILocation(line: 210, column: 42, scope: !1659)
!1668 = !DILocation(line: 210, column: 9, scope: !1659)
!1669 = !DILocation(line: 211, column: 12, scope: !601)
!1670 = !DILocation(line: 211, column: 5, scope: !601)
!1671 = !DILocation(line: 212, column: 1, scope: !601)
!1672 = !DILocation(line: 215, column: 34, scope: !605)
!1673 = !DILocation(line: 217, column: 5, scope: !605)
!1674 = !DILocation(line: 217, column: 15, scope: !605)
!1675 = !DILocation(line: 218, column: 5, scope: !605)
!1676 = !DILocation(line: 218, column: 15, scope: !605)
!1677 = !DILocation(line: 219, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !605, file: !21, line: 219, column: 9)
!1679 = !DILocation(line: 219, column: 30, scope: !1678)
!1680 = !DILocation(line: 219, column: 39, scope: !1678)
!1681 = !DILocation(line: 219, column: 59, scope: !1678)
!1682 = !DILocation(line: 219, column: 93, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1678, file: !21, discriminator: 1)
!1684 = !DILocation(line: 219, column: 98, scope: !1678)
!1685 = !DILocation(line: 219, column: 62, scope: !1678)
!1686 = !DILocation(line: 219, column: 9, scope: !605)
!1687 = !DILocation(line: 220, column: 9, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1678, file: !21, line: 219, column: 128)
!1689 = !DILocation(line: 221, column: 9, scope: !1688)
!1690 = !DILocation(line: 223, column: 28, scope: !605)
!1691 = !DILocation(line: 223, column: 10, scope: !605)
!1692 = !DILocation(line: 223, column: 32, scope: !605)
!1693 = !DILocation(line: 223, column: 7, scope: !605)
!1694 = !DILocation(line: 224, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !605, file: !21, line: 224, column: 9)
!1696 = !DILocation(line: 224, column: 11, scope: !1695)
!1697 = !DILocation(line: 224, column: 25, scope: !1695)
!1698 = !DILocation(line: 225, column: 38, scope: !1695)
!1699 = !DILocation(line: 225, column: 17, scope: !1695)
!1700 = !DILocation(line: 225, column: 15, scope: !1695)
!1701 = !DILocation(line: 225, column: 54, scope: !1695)
!1702 = !DILocation(line: 225, column: 68, scope: !1695)
!1703 = !DILocation(line: 226, column: 27, scope: !1695)
!1704 = !DILocation(line: 226, column: 35, scope: !1695)
!1705 = !DILocation(line: 226, column: 46, scope: !1695)
!1706 = !{!893, !840, i64 168}
!1707 = !DILocation(line: 226, column: 55, scope: !1695)
!1708 = !DILocation(line: 226, column: 72, scope: !1695)
!1709 = !DILocation(line: 224, column: 9, scope: !605)
!1710 = !DILocation(line: 228, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1695, file: !21, line: 227, column: 5)
!1712 = !DILocation(line: 228, column: 9, scope: !1711)
!1713 = !DILocation(line: 229, column: 9, scope: !1711)
!1714 = !DILocation(line: 231, column: 21, scope: !605)
!1715 = !DILocation(line: 231, column: 29, scope: !605)
!1716 = !DILocation(line: 231, column: 38, scope: !605)
!1717 = !DILocation(line: 232, column: 12, scope: !605)
!1718 = !DILocation(line: 232, column: 5, scope: !605)
!1719 = !DILocation(line: 233, column: 1, scope: !605)
!1720 = !DILocation(line: 236, column: 28, scope: !610)
!1721 = !DILocation(line: 238, column: 5, scope: !610)
!1722 = !DILocation(line: 238, column: 15, scope: !610)
!1723 = !DILocation(line: 238, column: 45, scope: !610)
!1724 = !DILocation(line: 238, column: 22, scope: !610)
!1725 = !DILocation(line: 239, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !610, file: !21, line: 239, column: 9)
!1727 = !DILocation(line: 239, column: 14, scope: !1726)
!1728 = !DILocation(line: 239, column: 9, scope: !610)
!1729 = !DILocation(line: 240, column: 9, scope: !1726)
!1730 = !DILocation(line: 241, column: 5, scope: !610)
!1731 = !DILocation(line: 241, column: 10, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !617, file: !21, discriminator: 1)
!1733 = !DILocation(line: 241, column: 20, scope: !617)
!1734 = !DILocation(line: 241, column: 50, scope: !617)
!1735 = !DILocation(line: 241, column: 65, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !617, file: !21, line: 241, column: 62)
!1737 = !DILocation(line: 241, column: 82, scope: !1736)
!1738 = !DILocation(line: 241, column: 62, scope: !1736)
!1739 = !DILocation(line: 241, column: 92, scope: !1736)
!1740 = !DILocation(line: 241, column: 62, scope: !617)
!1741 = !DILocation(line: 241, column: 62, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !617, file: !21, discriminator: 2)
!1743 = !DILocation(line: 241, column: 123, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1736, file: !21, discriminator: 3)
!1745 = !DILocation(line: 241, column: 141, scope: !1736)
!1746 = !DILocation(line: 241, column: 151, scope: !1736)
!1747 = !DILocation(line: 241, column: 176, scope: !1736)
!1748 = !DILocation(line: 241, column: 107, scope: !1736)
!1749 = !DILocation(line: 241, column: 195, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !610, file: !21, discriminator: 4)
!1751 = !DILocation(line: 241, column: 195, scope: !617)
!1752 = !DILocation(line: 241, column: 195, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !617, file: !21, discriminator: 5)
!1754 = !DILocation(line: 242, column: 29, scope: !610)
!1755 = !DILocation(line: 242, column: 12, scope: !610)
!1756 = !DILocation(line: 242, column: 5, scope: !610)
!1757 = !DILocation(line: 243, column: 1, scope: !610)
!1758 = !DILocation(line: 246, column: 38, scope: !618)
!1759 = !DILocation(line: 248, column: 5, scope: !618)
!1760 = !DILocation(line: 248, column: 15, scope: !618)
!1761 = !DILocation(line: 249, column: 5, scope: !618)
!1762 = !DILocation(line: 249, column: 15, scope: !618)
!1763 = !DILocation(line: 250, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !618, file: !21, line: 250, column: 9)
!1765 = !DILocation(line: 250, column: 30, scope: !1764)
!1766 = !DILocation(line: 250, column: 39, scope: !1764)
!1767 = !DILocation(line: 250, column: 59, scope: !1764)
!1768 = !DILocation(line: 250, column: 93, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1764, file: !21, discriminator: 1)
!1770 = !DILocation(line: 250, column: 98, scope: !1764)
!1771 = !DILocation(line: 250, column: 62, scope: !1764)
!1772 = !DILocation(line: 250, column: 9, scope: !618)
!1773 = !DILocation(line: 251, column: 9, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1764, file: !21, line: 250, column: 128)
!1775 = !DILocation(line: 252, column: 9, scope: !1774)
!1776 = !DILocation(line: 254, column: 28, scope: !618)
!1777 = !DILocation(line: 254, column: 10, scope: !618)
!1778 = !DILocation(line: 254, column: 32, scope: !618)
!1779 = !DILocation(line: 254, column: 7, scope: !618)
!1780 = !DILocation(line: 255, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !618, file: !21, line: 255, column: 9)
!1782 = !DILocation(line: 255, column: 11, scope: !1781)
!1783 = !DILocation(line: 255, column: 25, scope: !1781)
!1784 = !DILocation(line: 256, column: 41, scope: !1781)
!1785 = !DILocation(line: 256, column: 20, scope: !1781)
!1786 = !DILocation(line: 256, column: 18, scope: !1781)
!1787 = !DILocation(line: 256, column: 57, scope: !1781)
!1788 = !DILocation(line: 256, column: 71, scope: !1781)
!1789 = !DILocation(line: 257, column: 27, scope: !1781)
!1790 = !DILocation(line: 257, column: 38, scope: !1781)
!1791 = !DILocation(line: 257, column: 49, scope: !1781)
!1792 = !DILocation(line: 257, column: 58, scope: !1781)
!1793 = !DILocation(line: 257, column: 75, scope: !1781)
!1794 = !DILocation(line: 255, column: 9, scope: !618)
!1795 = !DILocation(line: 259, column: 25, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1781, file: !21, line: 258, column: 5)
!1797 = !DILocation(line: 259, column: 9, scope: !1796)
!1798 = !DILocation(line: 260, column: 9, scope: !1796)
!1799 = !DILocation(line: 262, column: 21, scope: !618)
!1800 = !DILocation(line: 262, column: 32, scope: !618)
!1801 = !DILocation(line: 262, column: 41, scope: !618)
!1802 = !DILocation(line: 263, column: 12, scope: !618)
!1803 = !DILocation(line: 263, column: 5, scope: !618)
!1804 = !DILocation(line: 264, column: 1, scope: !618)
!1805 = !DILocation(line: 267, column: 32, scope: !623)
!1806 = !DILocation(line: 269, column: 5, scope: !623)
!1807 = !DILocation(line: 269, column: 15, scope: !623)
!1808 = !DILocation(line: 270, column: 5, scope: !623)
!1809 = !DILocation(line: 270, column: 11, scope: !623)
!1810 = !DILocation(line: 271, column: 42, scope: !623)
!1811 = !DILocation(line: 271, column: 15, scope: !623)
!1812 = !DILocation(line: 271, column: 13, scope: !623)
!1813 = !DILocation(line: 272, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !623, file: !21, line: 272, column: 9)
!1815 = !DILocation(line: 272, column: 17, scope: !1814)
!1816 = !DILocation(line: 272, column: 9, scope: !623)
!1817 = !DILocation(line: 273, column: 9, scope: !1814)
!1818 = !DILocation(line: 274, column: 29, scope: !623)
!1819 = !DILocation(line: 274, column: 12, scope: !623)
!1820 = !DILocation(line: 274, column: 10, scope: !623)
!1821 = !DILocation(line: 275, column: 5, scope: !623)
!1822 = !DILocation(line: 275, column: 10, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !629, file: !21, discriminator: 1)
!1824 = !DILocation(line: 275, column: 20, scope: !629)
!1825 = !DILocation(line: 275, column: 50, scope: !629)
!1826 = !DILocation(line: 275, column: 68, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !629, file: !21, line: 275, column: 65)
!1828 = !DILocation(line: 275, column: 85, scope: !1827)
!1829 = !DILocation(line: 275, column: 65, scope: !1827)
!1830 = !DILocation(line: 275, column: 95, scope: !1827)
!1831 = !DILocation(line: 275, column: 65, scope: !629)
!1832 = !DILocation(line: 275, column: 65, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !629, file: !21, discriminator: 2)
!1834 = !DILocation(line: 275, column: 126, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1827, file: !21, discriminator: 3)
!1836 = !DILocation(line: 275, column: 144, scope: !1827)
!1837 = !DILocation(line: 275, column: 154, scope: !1827)
!1838 = !DILocation(line: 275, column: 179, scope: !1827)
!1839 = !DILocation(line: 275, column: 110, scope: !1827)
!1840 = !DILocation(line: 275, column: 198, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !623, file: !21, discriminator: 4)
!1842 = !DILocation(line: 275, column: 198, scope: !629)
!1843 = !DILocation(line: 275, column: 198, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !629, file: !21, discriminator: 5)
!1845 = !DILocation(line: 276, column: 12, scope: !623)
!1846 = !DILocation(line: 276, column: 5, scope: !623)
!1847 = !DILocation(line: 277, column: 1, scope: !623)
!1848 = !DILocation(line: 280, column: 27, scope: !630)
!1849 = !DILocation(line: 282, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !630, file: !21, line: 282, column: 9)
!1851 = !DILocation(line: 282, column: 30, scope: !1850)
!1852 = !DILocation(line: 282, column: 39, scope: !1850)
!1853 = !DILocation(line: 282, column: 59, scope: !1850)
!1854 = !DILocation(line: 282, column: 93, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1850, file: !21, discriminator: 1)
!1856 = !DILocation(line: 282, column: 98, scope: !1850)
!1857 = !DILocation(line: 282, column: 62, scope: !1850)
!1858 = !DILocation(line: 282, column: 9, scope: !630)
!1859 = !DILocation(line: 283, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1850, file: !21, line: 282, column: 128)
!1861 = !DILocation(line: 284, column: 9, scope: !1860)
!1862 = !DILocation(line: 286, column: 31, scope: !630)
!1863 = !DILocation(line: 286, column: 13, scope: !630)
!1864 = !DILocation(line: 286, column: 35, scope: !630)
!1865 = !DILocation(line: 286, column: 5, scope: !630)
!1866 = !DILocation(line: 287, column: 1, scope: !630)
!1867 = !DILocation(line: 290, column: 29, scope: !635)
!1868 = !DILocation(line: 292, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !635, file: !21, line: 292, column: 9)
!1870 = !DILocation(line: 292, column: 30, scope: !1869)
!1871 = !DILocation(line: 292, column: 39, scope: !1869)
!1872 = !DILocation(line: 292, column: 59, scope: !1869)
!1873 = !DILocation(line: 292, column: 93, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1869, file: !21, discriminator: 1)
!1875 = !DILocation(line: 292, column: 98, scope: !1869)
!1876 = !DILocation(line: 292, column: 62, scope: !1869)
!1877 = !DILocation(line: 292, column: 9, scope: !635)
!1878 = !DILocation(line: 293, column: 9, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1869, file: !21, line: 292, column: 128)
!1880 = !DILocation(line: 294, column: 9, scope: !1879)
!1881 = !DILocation(line: 296, column: 31, scope: !635)
!1882 = !DILocation(line: 296, column: 13, scope: !635)
!1883 = !DILocation(line: 296, column: 35, scope: !635)
!1884 = !DILocation(line: 296, column: 5, scope: !635)
!1885 = !DILocation(line: 297, column: 1, scope: !635)
!1886 = !DILocation(line: 300, column: 27, scope: !640)
!1887 = !DILocation(line: 302, column: 5, scope: !640)
!1888 = !DILocation(line: 302, column: 15, scope: !640)
!1889 = !DILocation(line: 302, column: 38, scope: !640)
!1890 = !DILocation(line: 302, column: 20, scope: !640)
!1891 = !DILocation(line: 302, column: 42, scope: !640)
!1892 = !DILocation(line: 303, column: 9, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !640, file: !21, line: 303, column: 9)
!1894 = !DILocation(line: 303, column: 11, scope: !1893)
!1895 = !DILocation(line: 303, column: 9, scope: !640)
!1896 = !DILocation(line: 304, column: 29, scope: !1893)
!1897 = !DILocation(line: 304, column: 9, scope: !1893)
!1898 = !DILocation(line: 305, column: 1, scope: !640)
!1899 = !DILocation(line: 308, column: 31, scope: !644)
!1900 = !DILocation(line: 317, column: 5, scope: !644)
!1901 = !DILocation(line: 317, column: 16, scope: !644)
!1902 = !DILocation(line: 318, column: 5, scope: !644)
!1903 = !DILocation(line: 318, column: 15, scope: !644)
!1904 = !DILocation(line: 318, column: 21, scope: !644)
!1905 = !DILocation(line: 321, column: 9, scope: !644)
!1906 = !DILocation(line: 322, column: 5, scope: !644)
!1907 = !DILocation(line: 322, column: 24, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1909, file: !21, discriminator: 2)
!1909 = !DILexicalBlockFile(scope: !644, file: !21, discriminator: 1)
!1910 = !DILocation(line: 322, column: 12, scope: !644)
!1911 = !DILocation(line: 323, column: 13, scope: !656)
!1912 = !DILocation(line: 323, column: 19, scope: !656)
!1913 = !DILocation(line: 323, column: 40, scope: !656)
!1914 = !DILocation(line: 323, column: 60, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !656, file: !21, discriminator: 1)
!1916 = !DILocation(line: 323, column: 67, scope: !656)
!1917 = !DILocation(line: 323, column: 78, scope: !656)
!1918 = !DILocation(line: 323, column: 87, scope: !656)
!1919 = !DILocation(line: 323, column: 104, scope: !656)
!1920 = !DILocation(line: 323, column: 13, scope: !657)
!1921 = !DILocation(line: 324, column: 106, scope: !654)
!1922 = !DILocation(line: 324, column: 87, scope: !654)
!1923 = !DILocation(line: 324, column: 114, scope: !654)
!1924 = !DILocation(line: 324, column: 120, scope: !654)
!1925 = !DILocation(line: 324, column: 126, scope: !654)
!1926 = !DILocation(line: 324, column: 57, scope: !654)
!1927 = !DILocation(line: 324, column: 206, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 1)
!1929 = !DILocation(line: 324, column: 188, scope: !654)
!1930 = !DILocation(line: 324, column: 214, scope: !654)
!1931 = !DILocation(line: 324, column: 220, scope: !654)
!1932 = !DILocation(line: 324, column: 186, scope: !654)
!1933 = !DILocation(line: 324, column: 279, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 3)
!1935 = !DILocation(line: 324, column: 262, scope: !654)
!1936 = !DILocation(line: 324, column: 286, scope: !654)
!1937 = !DILocation(line: 324, column: 292, scope: !654)
!1938 = !DILocation(line: 324, column: 232, scope: !654)
!1939 = !DILocation(line: 324, column: 328, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 5)
!1941 = !DILocation(line: 324, column: 310, scope: !654)
!1942 = !DILocation(line: 324, column: 334, scope: !654)
!1943 = !DILocation(line: 324, column: 302, scope: !654)
!1944 = !DILocation(line: 324, column: 378, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 6)
!1946 = !DILocation(line: 324, column: 351, scope: !654)
!1947 = !DILocation(line: 324, column: 384, scope: !654)
!1948 = !DILocation(line: 324, column: 343, scope: !654)
!1949 = !DILocation(line: 324, column: 186, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1951, file: !21, discriminator: 8)
!1951 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 7)
!1952 = !DILocation(line: 324, column: 432, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 4)
!1954 = !DILocation(line: 324, column: 411, scope: !654)
!1955 = !DILocation(line: 324, column: 440, scope: !654)
!1956 = !DILocation(line: 324, column: 445, scope: !654)
!1957 = !DILocation(line: 324, column: 152, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !21, discriminator: 10)
!1959 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 9)
!1960 = !{!820, !820, i64 0}
!1961 = !DILocation(line: 324, column: 512, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 2)
!1963 = !DILocation(line: 324, column: 493, scope: !654)
!1964 = !DILocation(line: 324, column: 520, scope: !654)
!1965 = !DILocation(line: 324, column: 526, scope: !654)
!1966 = !DILocation(line: 324, column: 532, scope: !654)
!1967 = !DILocation(line: 324, column: 463, scope: !654)
!1968 = !DILocation(line: 324, column: 612, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 12)
!1970 = !DILocation(line: 324, column: 594, scope: !654)
!1971 = !DILocation(line: 324, column: 620, scope: !654)
!1972 = !DILocation(line: 324, column: 626, scope: !654)
!1973 = !DILocation(line: 324, column: 592, scope: !654)
!1974 = !DILocation(line: 324, column: 685, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 14)
!1976 = !DILocation(line: 324, column: 668, scope: !654)
!1977 = !DILocation(line: 324, column: 692, scope: !654)
!1978 = !DILocation(line: 324, column: 698, scope: !654)
!1979 = !DILocation(line: 324, column: 638, scope: !654)
!1980 = !DILocation(line: 324, column: 734, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 16)
!1982 = !DILocation(line: 324, column: 716, scope: !654)
!1983 = !DILocation(line: 324, column: 740, scope: !654)
!1984 = !DILocation(line: 324, column: 708, scope: !654)
!1985 = !DILocation(line: 324, column: 784, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 17)
!1987 = !DILocation(line: 324, column: 757, scope: !654)
!1988 = !DILocation(line: 324, column: 790, scope: !654)
!1989 = !DILocation(line: 324, column: 749, scope: !654)
!1990 = !DILocation(line: 324, column: 592, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1992, file: !21, discriminator: 19)
!1992 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 18)
!1993 = !DILocation(line: 324, column: 838, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 15)
!1995 = !DILocation(line: 324, column: 817, scope: !654)
!1996 = !DILocation(line: 324, column: 846, scope: !654)
!1997 = !DILocation(line: 324, column: 851, scope: !654)
!1998 = !DILocation(line: 324, column: 559, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !21, discriminator: 21)
!2000 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 20)
!2001 = !DILocation(line: 324, column: 558, scope: !654)
!2002 = !{!2003, !2003, i64 0}
!2003 = !{!"short", !820, i64 0}
!2004 = !DILocation(line: 324, column: 922, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 13)
!2006 = !DILocation(line: 324, column: 904, scope: !654)
!2007 = !DILocation(line: 324, column: 930, scope: !654)
!2008 = !DILocation(line: 324, column: 936, scope: !654)
!2009 = !DILocation(line: 324, column: 902, scope: !654)
!2010 = !DILocation(line: 324, column: 995, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 23)
!2012 = !DILocation(line: 324, column: 978, scope: !654)
!2013 = !DILocation(line: 324, column: 1002, scope: !654)
!2014 = !DILocation(line: 324, column: 1008, scope: !654)
!2015 = !DILocation(line: 324, column: 948, scope: !654)
!2016 = !DILocation(line: 324, column: 1044, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 25)
!2018 = !DILocation(line: 324, column: 1026, scope: !654)
!2019 = !DILocation(line: 324, column: 1050, scope: !654)
!2020 = !DILocation(line: 324, column: 1018, scope: !654)
!2021 = !DILocation(line: 324, column: 1094, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 26)
!2023 = !DILocation(line: 324, column: 1067, scope: !654)
!2024 = !DILocation(line: 324, column: 1100, scope: !654)
!2025 = !DILocation(line: 324, column: 1059, scope: !654)
!2026 = !DILocation(line: 324, column: 902, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !21, discriminator: 28)
!2028 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 27)
!2029 = !DILocation(line: 324, column: 1148, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 24)
!2031 = !DILocation(line: 324, column: 1127, scope: !654)
!2032 = !DILocation(line: 324, column: 1156, scope: !654)
!2033 = !DILocation(line: 324, column: 1161, scope: !654)
!2034 = !DILocation(line: 324, column: 869, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2036, file: !21, discriminator: 30)
!2036 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 29)
!2037 = !DILocation(line: 324, column: 868, scope: !654)
!2038 = !DILocation(line: 324, column: 57, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2040, file: !21, discriminator: 31)
!2040 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 22)
!2041 = !DILocation(line: 324, column: 1181, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2043, file: !21, discriminator: 32)
!2043 = !DILexicalBlockFile(scope: !654, file: !21, discriminator: 11)
!2044 = !DILocation(line: 324, column: 1188, scope: !654)
!2045 = !DILocation(line: 325, column: 106, scope: !654)
!2046 = !DILocation(line: 325, column: 87, scope: !654)
!2047 = !DILocation(line: 325, column: 114, scope: !654)
!2048 = !DILocation(line: 325, column: 120, scope: !654)
!2049 = !DILocation(line: 325, column: 126, scope: !654)
!2050 = !DILocation(line: 325, column: 57, scope: !654)
!2051 = !DILocation(line: 325, column: 206, scope: !1928)
!2052 = !DILocation(line: 325, column: 188, scope: !654)
!2053 = !DILocation(line: 325, column: 214, scope: !654)
!2054 = !DILocation(line: 325, column: 220, scope: !654)
!2055 = !DILocation(line: 325, column: 186, scope: !654)
!2056 = !DILocation(line: 325, column: 279, scope: !1934)
!2057 = !DILocation(line: 325, column: 262, scope: !654)
!2058 = !DILocation(line: 325, column: 286, scope: !654)
!2059 = !DILocation(line: 325, column: 292, scope: !654)
!2060 = !DILocation(line: 325, column: 232, scope: !654)
!2061 = !DILocation(line: 325, column: 328, scope: !1940)
!2062 = !DILocation(line: 325, column: 310, scope: !654)
!2063 = !DILocation(line: 325, column: 334, scope: !654)
!2064 = !DILocation(line: 325, column: 302, scope: !654)
!2065 = !DILocation(line: 325, column: 378, scope: !1945)
!2066 = !DILocation(line: 325, column: 351, scope: !654)
!2067 = !DILocation(line: 325, column: 384, scope: !654)
!2068 = !DILocation(line: 325, column: 343, scope: !654)
!2069 = !DILocation(line: 325, column: 186, scope: !1950)
!2070 = !DILocation(line: 325, column: 432, scope: !1953)
!2071 = !DILocation(line: 325, column: 411, scope: !654)
!2072 = !DILocation(line: 325, column: 440, scope: !654)
!2073 = !DILocation(line: 325, column: 445, scope: !654)
!2074 = !DILocation(line: 325, column: 152, scope: !1958)
!2075 = !DILocation(line: 325, column: 512, scope: !1962)
!2076 = !DILocation(line: 325, column: 493, scope: !654)
!2077 = !DILocation(line: 325, column: 520, scope: !654)
!2078 = !DILocation(line: 325, column: 526, scope: !654)
!2079 = !DILocation(line: 325, column: 532, scope: !654)
!2080 = !DILocation(line: 325, column: 463, scope: !654)
!2081 = !DILocation(line: 325, column: 612, scope: !1969)
!2082 = !DILocation(line: 325, column: 594, scope: !654)
!2083 = !DILocation(line: 325, column: 620, scope: !654)
!2084 = !DILocation(line: 325, column: 626, scope: !654)
!2085 = !DILocation(line: 325, column: 592, scope: !654)
!2086 = !DILocation(line: 325, column: 685, scope: !1975)
!2087 = !DILocation(line: 325, column: 668, scope: !654)
!2088 = !DILocation(line: 325, column: 692, scope: !654)
!2089 = !DILocation(line: 325, column: 698, scope: !654)
!2090 = !DILocation(line: 325, column: 638, scope: !654)
!2091 = !DILocation(line: 325, column: 734, scope: !1981)
!2092 = !DILocation(line: 325, column: 716, scope: !654)
!2093 = !DILocation(line: 325, column: 740, scope: !654)
!2094 = !DILocation(line: 325, column: 708, scope: !654)
!2095 = !DILocation(line: 325, column: 784, scope: !1986)
!2096 = !DILocation(line: 325, column: 757, scope: !654)
!2097 = !DILocation(line: 325, column: 790, scope: !654)
!2098 = !DILocation(line: 325, column: 749, scope: !654)
!2099 = !DILocation(line: 325, column: 592, scope: !1991)
!2100 = !DILocation(line: 325, column: 838, scope: !1994)
!2101 = !DILocation(line: 325, column: 817, scope: !654)
!2102 = !DILocation(line: 325, column: 846, scope: !654)
!2103 = !DILocation(line: 325, column: 851, scope: !654)
!2104 = !DILocation(line: 325, column: 559, scope: !1999)
!2105 = !DILocation(line: 325, column: 558, scope: !654)
!2106 = !DILocation(line: 325, column: 922, scope: !2005)
!2107 = !DILocation(line: 325, column: 904, scope: !654)
!2108 = !DILocation(line: 325, column: 930, scope: !654)
!2109 = !DILocation(line: 325, column: 936, scope: !654)
!2110 = !DILocation(line: 325, column: 902, scope: !654)
!2111 = !DILocation(line: 325, column: 995, scope: !2011)
!2112 = !DILocation(line: 325, column: 978, scope: !654)
!2113 = !DILocation(line: 325, column: 1002, scope: !654)
!2114 = !DILocation(line: 325, column: 1008, scope: !654)
!2115 = !DILocation(line: 325, column: 948, scope: !654)
!2116 = !DILocation(line: 325, column: 1044, scope: !2017)
!2117 = !DILocation(line: 325, column: 1026, scope: !654)
!2118 = !DILocation(line: 325, column: 1050, scope: !654)
!2119 = !DILocation(line: 325, column: 1018, scope: !654)
!2120 = !DILocation(line: 325, column: 1094, scope: !2022)
!2121 = !DILocation(line: 325, column: 1067, scope: !654)
!2122 = !DILocation(line: 325, column: 1100, scope: !654)
!2123 = !DILocation(line: 325, column: 1059, scope: !654)
!2124 = !DILocation(line: 325, column: 902, scope: !2027)
!2125 = !DILocation(line: 325, column: 1148, scope: !2030)
!2126 = !DILocation(line: 325, column: 1127, scope: !654)
!2127 = !DILocation(line: 325, column: 1156, scope: !654)
!2128 = !DILocation(line: 325, column: 1161, scope: !654)
!2129 = !DILocation(line: 325, column: 869, scope: !2035)
!2130 = !DILocation(line: 325, column: 868, scope: !654)
!2131 = !DILocation(line: 325, column: 57, scope: !2039)
!2132 = !DILocation(line: 325, column: 1181, scope: !2042)
!2133 = !DILocation(line: 324, column: 17, scope: !655)
!2134 = !DILocation(line: 326, column: 21, scope: !652)
!2135 = !DILocation(line: 326, column: 36, scope: !652)
!2136 = !DILocation(line: 326, column: 21, scope: !653)
!2137 = !DILocation(line: 327, column: 21, scope: !651)
!2138 = !DILocation(line: 327, column: 33, scope: !651)
!2139 = !DILocation(line: 327, column: 54, scope: !651)
!2140 = !DILocation(line: 327, column: 37, scope: !651)
!2141 = !DILocation(line: 328, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !651, file: !21, line: 328, column: 25)
!2143 = !DILocation(line: 328, column: 27, scope: !2142)
!2144 = !DILocation(line: 328, column: 25, scope: !651)
!2145 = !DILocation(line: 329, column: 64, scope: !2142)
!2146 = !DILocation(line: 329, column: 25, scope: !2142)
!2147 = !DILocation(line: 331, column: 25, scope: !2142)
!2148 = !DILocation(line: 332, column: 17, scope: !652)
!2149 = !DILocation(line: 332, column: 17, scope: !651)
!2150 = !DILocation(line: 333, column: 36, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !653, file: !21, line: 333, column: 21)
!2152 = !DILocation(line: 333, column: 39, scope: !2151)
!2153 = !DILocation(line: 333, column: 21, scope: !2151)
!2154 = !DILocation(line: 333, column: 63, scope: !2151)
!2155 = !DILocation(line: 333, column: 21, scope: !653)
!2156 = !DILocation(line: 334, column: 21, scope: !2151)
!2157 = !DILocation(line: 335, column: 13, scope: !653)
!2158 = !DILocation(line: 336, column: 9, scope: !655)
!2159 = !DILocation(line: 340, column: 9, scope: !644)
!2160 = !DILocation(line: 341, column: 5, scope: !644)
!2161 = !DILocation(line: 341, column: 24, scope: !1908)
!2162 = !DILocation(line: 341, column: 12, scope: !644)
!2163 = !DILocation(line: 342, column: 13, scope: !664)
!2164 = !DILocation(line: 342, column: 19, scope: !664)
!2165 = !DILocation(line: 342, column: 40, scope: !664)
!2166 = !DILocation(line: 342, column: 60, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !664, file: !21, discriminator: 1)
!2168 = !DILocation(line: 342, column: 67, scope: !664)
!2169 = !DILocation(line: 342, column: 78, scope: !664)
!2170 = !DILocation(line: 342, column: 87, scope: !664)
!2171 = !DILocation(line: 342, column: 104, scope: !664)
!2172 = !DILocation(line: 342, column: 13, scope: !665)
!2173 = !DILocation(line: 343, column: 106, scope: !662)
!2174 = !DILocation(line: 343, column: 87, scope: !662)
!2175 = !DILocation(line: 343, column: 114, scope: !662)
!2176 = !DILocation(line: 343, column: 120, scope: !662)
!2177 = !DILocation(line: 343, column: 126, scope: !662)
!2178 = !DILocation(line: 343, column: 57, scope: !662)
!2179 = !DILocation(line: 343, column: 206, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 1)
!2181 = !DILocation(line: 343, column: 188, scope: !662)
!2182 = !DILocation(line: 343, column: 214, scope: !662)
!2183 = !DILocation(line: 343, column: 220, scope: !662)
!2184 = !DILocation(line: 343, column: 186, scope: !662)
!2185 = !DILocation(line: 343, column: 279, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 3)
!2187 = !DILocation(line: 343, column: 262, scope: !662)
!2188 = !DILocation(line: 343, column: 286, scope: !662)
!2189 = !DILocation(line: 343, column: 292, scope: !662)
!2190 = !DILocation(line: 343, column: 232, scope: !662)
!2191 = !DILocation(line: 343, column: 328, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 5)
!2193 = !DILocation(line: 343, column: 310, scope: !662)
!2194 = !DILocation(line: 343, column: 334, scope: !662)
!2195 = !DILocation(line: 343, column: 302, scope: !662)
!2196 = !DILocation(line: 343, column: 378, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 6)
!2198 = !DILocation(line: 343, column: 351, scope: !662)
!2199 = !DILocation(line: 343, column: 384, scope: !662)
!2200 = !DILocation(line: 343, column: 343, scope: !662)
!2201 = !DILocation(line: 343, column: 186, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2203, file: !21, discriminator: 8)
!2203 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 7)
!2204 = !DILocation(line: 343, column: 432, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 4)
!2206 = !DILocation(line: 343, column: 411, scope: !662)
!2207 = !DILocation(line: 343, column: 440, scope: !662)
!2208 = !DILocation(line: 343, column: 445, scope: !662)
!2209 = !DILocation(line: 343, column: 152, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !21, discriminator: 10)
!2211 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 9)
!2212 = !DILocation(line: 343, column: 512, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 2)
!2214 = !DILocation(line: 343, column: 493, scope: !662)
!2215 = !DILocation(line: 343, column: 520, scope: !662)
!2216 = !DILocation(line: 343, column: 526, scope: !662)
!2217 = !DILocation(line: 343, column: 532, scope: !662)
!2218 = !DILocation(line: 343, column: 463, scope: !662)
!2219 = !DILocation(line: 343, column: 612, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 12)
!2221 = !DILocation(line: 343, column: 594, scope: !662)
!2222 = !DILocation(line: 343, column: 620, scope: !662)
!2223 = !DILocation(line: 343, column: 626, scope: !662)
!2224 = !DILocation(line: 343, column: 592, scope: !662)
!2225 = !DILocation(line: 343, column: 685, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 14)
!2227 = !DILocation(line: 343, column: 668, scope: !662)
!2228 = !DILocation(line: 343, column: 692, scope: !662)
!2229 = !DILocation(line: 343, column: 698, scope: !662)
!2230 = !DILocation(line: 343, column: 638, scope: !662)
!2231 = !DILocation(line: 343, column: 734, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 16)
!2233 = !DILocation(line: 343, column: 716, scope: !662)
!2234 = !DILocation(line: 343, column: 740, scope: !662)
!2235 = !DILocation(line: 343, column: 708, scope: !662)
!2236 = !DILocation(line: 343, column: 784, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 17)
!2238 = !DILocation(line: 343, column: 757, scope: !662)
!2239 = !DILocation(line: 343, column: 790, scope: !662)
!2240 = !DILocation(line: 343, column: 749, scope: !662)
!2241 = !DILocation(line: 343, column: 592, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2243, file: !21, discriminator: 19)
!2243 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 18)
!2244 = !DILocation(line: 343, column: 838, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 15)
!2246 = !DILocation(line: 343, column: 817, scope: !662)
!2247 = !DILocation(line: 343, column: 846, scope: !662)
!2248 = !DILocation(line: 343, column: 851, scope: !662)
!2249 = !DILocation(line: 343, column: 559, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2251, file: !21, discriminator: 21)
!2251 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 20)
!2252 = !DILocation(line: 343, column: 558, scope: !662)
!2253 = !DILocation(line: 343, column: 922, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 13)
!2255 = !DILocation(line: 343, column: 904, scope: !662)
!2256 = !DILocation(line: 343, column: 930, scope: !662)
!2257 = !DILocation(line: 343, column: 936, scope: !662)
!2258 = !DILocation(line: 343, column: 902, scope: !662)
!2259 = !DILocation(line: 343, column: 995, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 23)
!2261 = !DILocation(line: 343, column: 978, scope: !662)
!2262 = !DILocation(line: 343, column: 1002, scope: !662)
!2263 = !DILocation(line: 343, column: 1008, scope: !662)
!2264 = !DILocation(line: 343, column: 948, scope: !662)
!2265 = !DILocation(line: 343, column: 1044, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 25)
!2267 = !DILocation(line: 343, column: 1026, scope: !662)
!2268 = !DILocation(line: 343, column: 1050, scope: !662)
!2269 = !DILocation(line: 343, column: 1018, scope: !662)
!2270 = !DILocation(line: 343, column: 1094, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 26)
!2272 = !DILocation(line: 343, column: 1067, scope: !662)
!2273 = !DILocation(line: 343, column: 1100, scope: !662)
!2274 = !DILocation(line: 343, column: 1059, scope: !662)
!2275 = !DILocation(line: 343, column: 902, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2277, file: !21, discriminator: 28)
!2277 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 27)
!2278 = !DILocation(line: 343, column: 1148, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 24)
!2280 = !DILocation(line: 343, column: 1127, scope: !662)
!2281 = !DILocation(line: 343, column: 1156, scope: !662)
!2282 = !DILocation(line: 343, column: 1161, scope: !662)
!2283 = !DILocation(line: 343, column: 869, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2285, file: !21, discriminator: 30)
!2285 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 29)
!2286 = !DILocation(line: 343, column: 868, scope: !662)
!2287 = !DILocation(line: 343, column: 57, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !21, discriminator: 31)
!2289 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 22)
!2290 = !DILocation(line: 343, column: 1181, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !21, discriminator: 32)
!2292 = !DILexicalBlockFile(scope: !662, file: !21, discriminator: 11)
!2293 = !DILocation(line: 343, column: 1188, scope: !662)
!2294 = !DILocation(line: 344, column: 50, scope: !662)
!2295 = !DILocation(line: 344, column: 17, scope: !662)
!2296 = !DILocation(line: 344, column: 71, scope: !662)
!2297 = !DILocation(line: 343, column: 17, scope: !663)
!2298 = !DILocation(line: 346, column: 21, scope: !660)
!2299 = !DILocation(line: 346, column: 36, scope: !660)
!2300 = !DILocation(line: 346, column: 21, scope: !661)
!2301 = !DILocation(line: 347, column: 21, scope: !659)
!2302 = !DILocation(line: 347, column: 33, scope: !659)
!2303 = !DILocation(line: 347, column: 54, scope: !659)
!2304 = !DILocation(line: 347, column: 37, scope: !659)
!2305 = !DILocation(line: 348, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !659, file: !21, line: 348, column: 25)
!2307 = !DILocation(line: 348, column: 27, scope: !2306)
!2308 = !DILocation(line: 348, column: 25, scope: !659)
!2309 = !DILocation(line: 349, column: 64, scope: !2306)
!2310 = !DILocation(line: 349, column: 25, scope: !2306)
!2311 = !DILocation(line: 351, column: 25, scope: !2306)
!2312 = !DILocation(line: 352, column: 17, scope: !660)
!2313 = !DILocation(line: 352, column: 17, scope: !659)
!2314 = !DILocation(line: 353, column: 36, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !661, file: !21, line: 353, column: 21)
!2316 = !DILocation(line: 353, column: 39, scope: !2315)
!2317 = !DILocation(line: 353, column: 21, scope: !2315)
!2318 = !DILocation(line: 353, column: 63, scope: !2315)
!2319 = !DILocation(line: 353, column: 21, scope: !661)
!2320 = !DILocation(line: 354, column: 21, scope: !2315)
!2321 = !DILocation(line: 355, column: 13, scope: !661)
!2322 = !DILocation(line: 356, column: 9, scope: !663)
!2323 = !DILocation(line: 363, column: 1, scope: !644)
!2324 = !DILocation(line: 388, column: 32, scope: !681)
!2325 = !DILocation(line: 390, column: 25, scope: !681)
!2326 = !DILocation(line: 390, column: 5, scope: !681)
!2327 = !DILocation(line: 391, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !681, file: !21, line: 391, column: 9)
!2329 = !DILocation(line: 391, column: 24, scope: !2328)
!2330 = !DILocation(line: 391, column: 27, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2328, file: !21, discriminator: 1)
!2332 = !DILocation(line: 391, column: 30, scope: !2328)
!2333 = !DILocation(line: 391, column: 27, scope: !2328)
!2334 = !DILocation(line: 391, column: 9, scope: !681)
!2335 = !DILocation(line: 392, column: 46, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2328, file: !21, line: 391, column: 39)
!2337 = !DILocation(line: 392, column: 49, scope: !2336)
!2338 = !DILocation(line: 392, column: 9, scope: !2336)
!2339 = !DILocation(line: 393, column: 5, scope: !2336)
!2340 = !DILocation(line: 394, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !681, file: !21, line: 394, column: 9)
!2342 = !DILocation(line: 394, column: 12, scope: !2341)
!2343 = !DILocation(line: 394, column: 24, scope: !2341)
!2344 = !DILocation(line: 394, column: 9, scope: !681)
!2345 = !DILocation(line: 395, column: 45, scope: !2341)
!2346 = !DILocation(line: 395, column: 32, scope: !2341)
!2347 = !DILocation(line: 395, column: 9, scope: !2341)
!2348 = !DILocation(line: 396, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !681, file: !21, line: 396, column: 9)
!2350 = !DILocation(line: 396, column: 12, scope: !2349)
!2351 = !DILocation(line: 396, column: 19, scope: !2349)
!2352 = !DILocation(line: 396, column: 22, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2349, file: !21, discriminator: 1)
!2354 = !DILocation(line: 396, column: 25, scope: !2349)
!2355 = !DILocation(line: 396, column: 33, scope: !2349)
!2356 = !{!1085, !819, i64 96}
!2357 = !DILocation(line: 396, column: 22, scope: !2349)
!2358 = !DILocation(line: 396, column: 9, scope: !681)
!2359 = !DILocation(line: 397, column: 9, scope: !2349)
!2360 = !DILocation(line: 397, column: 12, scope: !2349)
!2361 = !DILocation(line: 397, column: 20, scope: !2349)
!2362 = !DILocation(line: 397, column: 27, scope: !2349)
!2363 = !DILocation(line: 398, column: 5, scope: !681)
!2364 = !DILocation(line: 398, column: 10, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !687, file: !21, discriminator: 1)
!2366 = !DILocation(line: 398, column: 20, scope: !687)
!2367 = !DILocation(line: 398, column: 51, scope: !687)
!2368 = !DILocation(line: 398, column: 54, scope: !687)
!2369 = !DILocation(line: 398, column: 68, scope: !690)
!2370 = !DILocation(line: 398, column: 84, scope: !690)
!2371 = !DILocation(line: 398, column: 68, scope: !687)
!2372 = !DILocation(line: 398, column: 99, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !690, file: !21, discriminator: 2)
!2374 = !DILocation(line: 398, column: 104, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !689, file: !21, discriminator: 4)
!2376 = !DILocation(line: 398, column: 114, scope: !689)
!2377 = !DILocation(line: 398, column: 144, scope: !689)
!2378 = !DILocation(line: 398, column: 170, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !689, file: !21, line: 398, column: 167)
!2380 = !DILocation(line: 398, column: 187, scope: !2379)
!2381 = !DILocation(line: 398, column: 167, scope: !2379)
!2382 = !DILocation(line: 398, column: 197, scope: !2379)
!2383 = !DILocation(line: 398, column: 167, scope: !689)
!2384 = !DILocation(line: 398, column: 167, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !689, file: !21, discriminator: 5)
!2386 = !DILocation(line: 398, column: 228, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2379, file: !21, discriminator: 6)
!2388 = !DILocation(line: 398, column: 246, scope: !2379)
!2389 = !DILocation(line: 398, column: 256, scope: !2379)
!2390 = !DILocation(line: 398, column: 281, scope: !2379)
!2391 = !DILocation(line: 398, column: 212, scope: !2379)
!2392 = !DILocation(line: 398, column: 300, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !690, file: !21, discriminator: 7)
!2394 = !DILocation(line: 398, column: 300, scope: !689)
!2395 = !DILocation(line: 398, column: 300, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !689, file: !21, discriminator: 8)
!2397 = !DILocation(line: 398, column: 300, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !689, file: !21, discriminator: 9)
!2399 = !DILocation(line: 398, column: 313, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2401, file: !21, discriminator: 10)
!2401 = !DILexicalBlockFile(scope: !681, file: !21, discriminator: 3)
!2402 = !DILocation(line: 398, column: 313, scope: !687)
!2403 = !DILocation(line: 399, column: 5, scope: !681)
!2404 = !DILocation(line: 399, column: 10, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !692, file: !21, discriminator: 1)
!2406 = !DILocation(line: 399, column: 20, scope: !692)
!2407 = !DILocation(line: 399, column: 51, scope: !692)
!2408 = !DILocation(line: 399, column: 54, scope: !692)
!2409 = !DILocation(line: 399, column: 68, scope: !695)
!2410 = !DILocation(line: 399, column: 84, scope: !695)
!2411 = !DILocation(line: 399, column: 68, scope: !692)
!2412 = !DILocation(line: 399, column: 99, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !695, file: !21, discriminator: 2)
!2414 = !DILocation(line: 399, column: 104, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !694, file: !21, discriminator: 4)
!2416 = !DILocation(line: 399, column: 114, scope: !694)
!2417 = !DILocation(line: 399, column: 144, scope: !694)
!2418 = !DILocation(line: 399, column: 170, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !694, file: !21, line: 399, column: 167)
!2420 = !DILocation(line: 399, column: 187, scope: !2419)
!2421 = !DILocation(line: 399, column: 167, scope: !2419)
!2422 = !DILocation(line: 399, column: 197, scope: !2419)
!2423 = !DILocation(line: 399, column: 167, scope: !694)
!2424 = !DILocation(line: 399, column: 167, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !694, file: !21, discriminator: 5)
!2426 = !DILocation(line: 399, column: 228, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2419, file: !21, discriminator: 6)
!2428 = !DILocation(line: 399, column: 246, scope: !2419)
!2429 = !DILocation(line: 399, column: 256, scope: !2419)
!2430 = !DILocation(line: 399, column: 281, scope: !2419)
!2431 = !DILocation(line: 399, column: 212, scope: !2419)
!2432 = !DILocation(line: 399, column: 300, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !695, file: !21, discriminator: 7)
!2434 = !DILocation(line: 399, column: 300, scope: !694)
!2435 = !DILocation(line: 399, column: 300, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !694, file: !21, discriminator: 8)
!2437 = !DILocation(line: 399, column: 300, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !694, file: !21, discriminator: 9)
!2439 = !DILocation(line: 399, column: 313, scope: !2400)
!2440 = !DILocation(line: 399, column: 313, scope: !692)
!2441 = !DILocation(line: 400, column: 9, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !681, file: !21, line: 400, column: 9)
!2443 = !DILocation(line: 400, column: 12, scope: !2442)
!2444 = !DILocation(line: 400, column: 21, scope: !2442)
!2445 = !DILocation(line: 400, column: 9, scope: !681)
!2446 = !DILocation(line: 401, column: 20, scope: !2442)
!2447 = !DILocation(line: 401, column: 23, scope: !2442)
!2448 = !DILocation(line: 401, column: 9, scope: !2442)
!2449 = !DILocation(line: 402, column: 19, scope: !681)
!2450 = !DILocation(line: 402, column: 7, scope: !681)
!2451 = !DILocation(line: 402, column: 24, scope: !681)
!2452 = !DILocation(line: 402, column: 34, scope: !681)
!2453 = !{!893, !819, i64 320}
!2454 = !DILocation(line: 402, column: 54, scope: !681)
!2455 = !DILocation(line: 402, column: 42, scope: !681)
!2456 = !DILocation(line: 402, column: 5, scope: !681)
!2457 = !DILocation(line: 403, column: 1, scope: !681)
!2458 = !DILocation(line: 406, column: 29, scope: !696)
!2459 = !DILocation(line: 408, column: 5, scope: !696)
!2460 = !DILocation(line: 408, column: 20, scope: !696)
!2461 = !DILocation(line: 408, column: 63, scope: !703)
!2462 = !DILocation(line: 408, column: 99, scope: !703)
!2463 = !DILocation(line: 408, column: 137, scope: !703)
!2464 = !DILocation(line: 408, column: 168, scope: !703)
!2465 = !DILocation(line: 408, column: 176, scope: !703)
!2466 = !DILocation(line: 408, column: 205, scope: !703)
!2467 = !DILocation(line: 408, column: 222, scope: !703)
!2468 = !DILocation(line: 408, column: 234, scope: !703)
!2469 = !DILocation(line: 408, column: 242, scope: !703)
!2470 = !DILocation(line: 408, column: 259, scope: !703)
!2471 = !DILocation(line: 408, column: 319, scope: !703)
!2472 = !DILocation(line: 408, column: 331, scope: !703)
!2473 = !DILocation(line: 408, column: 293, scope: !703)
!2474 = !DILocation(line: 408, column: 348, scope: !703)
!2475 = !DILocation(line: 408, column: 450, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2477, file: !21, discriminator: 4)
!2477 = !DILexicalBlockFile(scope: !2478, file: !21, discriminator: 3)
!2478 = !DILexicalBlockFile(scope: !2479, file: !21, discriminator: 2)
!2479 = distinct !DILexicalBlock(scope: !703, file: !21, line: 408, column: 355)
!2480 = !DILocation(line: 408, column: 501, scope: !2479)
!2481 = !DILocation(line: 408, column: 517, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2479, file: !21, discriminator: 1)
!2483 = !DILocation(line: 408, column: 536, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2485, file: !21, discriminator: 6)
!2485 = !DILexicalBlockFile(scope: !703, file: !21, discriminator: 5)
!2486 = !DILocation(line: 408, column: 535, scope: !703)
!2487 = !DILocation(line: 408, column: 533, scope: !703)
!2488 = !DILocation(line: 408, column: 558, scope: !703)
!2489 = !DILocation(line: 408, column: 660, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2491, file: !21, discriminator: 10)
!2491 = !DILexicalBlockFile(scope: !2492, file: !21, discriminator: 9)
!2492 = !DILexicalBlockFile(scope: !2493, file: !21, discriminator: 8)
!2493 = distinct !DILexicalBlock(scope: !703, file: !21, line: 408, column: 565)
!2494 = !DILocation(line: 408, column: 711, scope: !2493)
!2495 = !DILocation(line: 408, column: 727, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2493, file: !21, discriminator: 7)
!2497 = !DILocation(line: 408, column: 738, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2499, file: !21, discriminator: 12)
!2499 = !DILexicalBlockFile(scope: !703, file: !21, discriminator: 11)
!2500 = !DILocation(line: 408, column: 734, scope: !2493)
!2501 = !DILocation(line: 408, column: 746, scope: !696)
!2502 = !DILocation(line: 408, column: 746, scope: !703)
!2503 = !DILocation(line: 408, column: 30, scope: !696)
!2504 = !DILocation(line: 409, column: 5, scope: !696)
!2505 = !DILocation(line: 409, column: 25, scope: !696)
!2506 = !DILocation(line: 409, column: 34, scope: !696)
!2507 = !DILocation(line: 409, column: 42, scope: !696)
!2508 = !DILocation(line: 411, column: 32, scope: !696)
!2509 = !DILocation(line: 411, column: 40, scope: !696)
!2510 = !{!1071, !819, i64 48}
!2511 = !DILocation(line: 411, column: 72, scope: !696)
!2512 = !DILocation(line: 411, column: 12, scope: !696)
!2513 = !DILocation(line: 412, column: 1, scope: !696)
!2514 = !DILocation(line: 411, column: 5, scope: !696)
!2515 = !DILocation(line: 415, column: 33, scope: !733)
!2516 = !DILocation(line: 415, column: 46, scope: !733)
!2517 = !DILocation(line: 415, column: 59, scope: !733)
!2518 = !DILocation(line: 417, column: 9, scope: !742)
!2519 = !DILocation(line: 417, column: 12, scope: !742)
!2520 = !DILocation(line: 417, column: 19, scope: !742)
!2521 = !DILocation(line: 417, column: 22, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !742, file: !21, discriminator: 1)
!2523 = !DILocation(line: 417, column: 25, scope: !742)
!2524 = !DILocation(line: 417, column: 33, scope: !742)
!2525 = !{!1085, !819, i64 80}
!2526 = !DILocation(line: 417, column: 22, scope: !742)
!2527 = !DILocation(line: 417, column: 9, scope: !733)
!2528 = !DILocation(line: 418, column: 9, scope: !741)
!2529 = !DILocation(line: 418, column: 13, scope: !741)
!2530 = !DILocation(line: 418, column: 19, scope: !741)
!2531 = !DILocation(line: 418, column: 22, scope: !741)
!2532 = !DILocation(line: 418, column: 30, scope: !741)
!2533 = !DILocation(line: 418, column: 52, scope: !741)
!2534 = !DILocation(line: 418, column: 41, scope: !741)
!2535 = !DILocation(line: 418, column: 55, scope: !741)
!2536 = !DILocation(line: 418, column: 62, scope: !741)
!2537 = !DILocation(line: 419, column: 13, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !741, file: !21, line: 419, column: 13)
!2539 = !DILocation(line: 419, column: 13, scope: !741)
!2540 = !DILocation(line: 420, column: 20, scope: !2538)
!2541 = !DILocation(line: 420, column: 13, scope: !2538)
!2542 = !DILocation(line: 421, column: 5, scope: !742)
!2543 = !DILocation(line: 421, column: 5, scope: !2522)
!2544 = !DILocation(line: 421, column: 5, scope: !741)
!2545 = !DILocation(line: 422, column: 5, scope: !733)
!2546 = !DILocation(line: 422, column: 14, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !745, file: !21, discriminator: 1)
!2548 = !DILocation(line: 422, column: 17, scope: !745)
!2549 = !DILocation(line: 422, column: 14, scope: !745)
!2550 = !DILocation(line: 422, column: 14, scope: !746)
!2551 = !DILocation(line: 422, column: 28, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !744, file: !21, discriminator: 2)
!2553 = !DILocation(line: 422, column: 32, scope: !744)
!2554 = !DILocation(line: 422, column: 39, scope: !744)
!2555 = !DILocation(line: 422, column: 58, scope: !744)
!2556 = !DILocation(line: 422, column: 61, scope: !744)
!2557 = !DILocation(line: 422, column: 71, scope: !744)
!2558 = !DILocation(line: 422, column: 81, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !744, file: !21, line: 422, column: 81)
!2560 = !DILocation(line: 422, column: 81, scope: !744)
!2561 = !DILocation(line: 422, column: 94, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2559, file: !21, discriminator: 4)
!2563 = !DILocation(line: 422, column: 87, scope: !2559)
!2564 = !DILocation(line: 422, column: 100, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !745, file: !21, discriminator: 5)
!2566 = !DILocation(line: 422, column: 100, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2568, file: !21, discriminator: 7)
!2568 = !DILexicalBlockFile(scope: !745, file: !21, discriminator: 6)
!2569 = !DILocation(line: 422, column: 100, scope: !744)
!2570 = !DILocation(line: 422, column: 102, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2572, file: !21, discriminator: 8)
!2572 = !DILexicalBlockFile(scope: !746, file: !21, discriminator: 3)
!2573 = !DILocation(line: 423, column: 5, scope: !733)
!2574 = !DILocation(line: 424, column: 1, scope: !733)
!2575 = !DILocation(line: 427, column: 30, scope: !747)
!2576 = !DILocation(line: 429, column: 9, scope: !754)
!2577 = !DILocation(line: 429, column: 12, scope: !754)
!2578 = !DILocation(line: 429, column: 19, scope: !754)
!2579 = !DILocation(line: 429, column: 22, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !754, file: !21, discriminator: 1)
!2581 = !DILocation(line: 429, column: 25, scope: !754)
!2582 = !DILocation(line: 429, column: 33, scope: !754)
!2583 = !{!1085, !819, i64 88}
!2584 = !DILocation(line: 429, column: 22, scope: !754)
!2585 = !DILocation(line: 429, column: 9, scope: !747)
!2586 = !DILocation(line: 430, column: 9, scope: !753)
!2587 = !DILocation(line: 430, column: 13, scope: !753)
!2588 = !DILocation(line: 430, column: 19, scope: !753)
!2589 = !DILocation(line: 430, column: 22, scope: !753)
!2590 = !DILocation(line: 430, column: 30, scope: !753)
!2591 = !DILocation(line: 430, column: 49, scope: !753)
!2592 = !DILocation(line: 430, column: 38, scope: !753)
!2593 = !DILocation(line: 431, column: 13, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !753, file: !21, line: 431, column: 13)
!2595 = !DILocation(line: 431, column: 13, scope: !753)
!2596 = !DILocation(line: 432, column: 20, scope: !2594)
!2597 = !DILocation(line: 432, column: 13, scope: !2594)
!2598 = !DILocation(line: 433, column: 5, scope: !754)
!2599 = !DILocation(line: 433, column: 5, scope: !2580)
!2600 = !DILocation(line: 433, column: 5, scope: !753)
!2601 = !DILocation(line: 434, column: 5, scope: !747)
!2602 = !DILocation(line: 434, column: 10, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !756, file: !21, discriminator: 1)
!2604 = !DILocation(line: 434, column: 20, scope: !756)
!2605 = !DILocation(line: 434, column: 43, scope: !756)
!2606 = !DILocation(line: 434, column: 46, scope: !756)
!2607 = !DILocation(line: 434, column: 60, scope: !760)
!2608 = !DILocation(line: 434, column: 68, scope: !760)
!2609 = !DILocation(line: 434, column: 60, scope: !756)
!2610 = !DILocation(line: 434, column: 86, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !759, file: !21, discriminator: 2)
!2612 = !DILocation(line: 434, column: 89, scope: !759)
!2613 = !DILocation(line: 434, column: 98, scope: !759)
!2614 = !DILocation(line: 434, column: 112, scope: !759)
!2615 = !DILocation(line: 434, column: 117, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !758, file: !21, discriminator: 4)
!2617 = !DILocation(line: 434, column: 127, scope: !758)
!2618 = !DILocation(line: 434, column: 157, scope: !758)
!2619 = !DILocation(line: 434, column: 175, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !758, file: !21, line: 434, column: 172)
!2621 = !DILocation(line: 434, column: 192, scope: !2620)
!2622 = !DILocation(line: 434, column: 172, scope: !2620)
!2623 = !DILocation(line: 434, column: 202, scope: !2620)
!2624 = !DILocation(line: 434, column: 172, scope: !758)
!2625 = !DILocation(line: 434, column: 172, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !758, file: !21, discriminator: 5)
!2627 = !DILocation(line: 434, column: 233, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2620, file: !21, discriminator: 6)
!2629 = !DILocation(line: 434, column: 251, scope: !2620)
!2630 = !DILocation(line: 434, column: 261, scope: !2620)
!2631 = !DILocation(line: 434, column: 286, scope: !2620)
!2632 = !DILocation(line: 434, column: 217, scope: !2620)
!2633 = !DILocation(line: 434, column: 305, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !759, file: !21, discriminator: 7)
!2635 = !DILocation(line: 434, column: 305, scope: !758)
!2636 = !DILocation(line: 434, column: 305, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !758, file: !21, discriminator: 8)
!2638 = !DILocation(line: 434, column: 318, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !759, file: !21, discriminator: 9)
!2640 = !DILocation(line: 434, column: 320, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2642, file: !21, discriminator: 10)
!2642 = !DILexicalBlockFile(scope: !747, file: !21, discriminator: 3)
!2643 = !DILocation(line: 434, column: 320, scope: !756)
!2644 = !DILocation(line: 435, column: 5, scope: !747)
!2645 = !DILocation(line: 436, column: 1, scope: !747)
!2646 = !DILocation(line: 368, column: 29, scope: !777)
!2647 = !DILocation(line: 368, column: 42, scope: !777)
!2648 = !DILocation(line: 368, column: 58, scope: !777)
!2649 = !DILocation(line: 371, column: 5, scope: !777)
!2650 = !DILocation(line: 371, column: 15, scope: !777)
!2651 = !DILocation(line: 371, column: 22, scope: !777)
!2652 = !DILocation(line: 371, column: 49, scope: !777)
!2653 = !DILocation(line: 372, column: 38, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !777, file: !21, line: 372, column: 9)
!2655 = !DILocation(line: 372, column: 44, scope: !2654)
!2656 = !DILocation(line: 372, column: 10, scope: !2654)
!2657 = !DILocation(line: 372, column: 9, scope: !777)
!2658 = !DILocation(line: 374, column: 9, scope: !2654)
!2659 = !DILocation(line: 375, column: 12, scope: !777)
!2660 = !DILocation(line: 375, column: 15, scope: !777)
!2661 = !DILocation(line: 375, column: 10, scope: !777)
!2662 = !DILocation(line: 376, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !777, file: !21, line: 376, column: 9)
!2664 = !DILocation(line: 376, column: 14, scope: !2663)
!2665 = !DILocation(line: 376, column: 9, scope: !777)
!2666 = !DILocation(line: 377, column: 16, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !21, line: 376, column: 29)
!2668 = !DILocation(line: 377, column: 14, scope: !2667)
!2669 = !DILocation(line: 378, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !21, line: 378, column: 13)
!2671 = !DILocation(line: 378, column: 18, scope: !2670)
!2672 = !DILocation(line: 378, column: 13, scope: !2667)
!2673 = !DILocation(line: 379, column: 13, scope: !2670)
!2674 = !DILocation(line: 380, column: 22, scope: !2667)
!2675 = !DILocation(line: 380, column: 9, scope: !2667)
!2676 = !DILocation(line: 380, column: 12, scope: !2667)
!2677 = !DILocation(line: 380, column: 20, scope: !2667)
!2678 = !DILocation(line: 381, column: 5, scope: !2667)
!2679 = !DILocation(line: 382, column: 26, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !777, file: !21, line: 382, column: 9)
!2681 = !DILocation(line: 382, column: 29, scope: !2680)
!2682 = !DILocation(line: 382, column: 35, scope: !2680)
!2683 = !DILocation(line: 382, column: 41, scope: !2680)
!2684 = !DILocation(line: 382, column: 9, scope: !2680)
!2685 = !DILocation(line: 382, column: 46, scope: !2680)
!2686 = !DILocation(line: 382, column: 9, scope: !777)
!2687 = !DILocation(line: 383, column: 9, scope: !2680)
!2688 = !DILocation(line: 384, column: 5, scope: !777)
!2689 = !DILocation(line: 385, column: 1, scope: !777)
!2690 = !DILocation(line: 59, column: 48, scope: !716)
!2691 = !DILocation(line: 59, column: 74, scope: !716)
!2692 = !DILocation(line: 61, column: 11, scope: !716)
!2693 = !DILocation(line: 62, column: 12, scope: !716)
!2694 = !DILocation(line: 67, column: 9, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !716, file: !11, line: 62, column: 19)
!2696 = !DILocation(line: 70, column: 9, scope: !2695)
!2697 = !DILocation(line: 72, column: 12, scope: !716)
!2698 = !DILocation(line: 77, column: 9, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !716, file: !11, line: 72, column: 19)
!2700 = !DILocation(line: 80, column: 9, scope: !2699)
!2701 = !DILocation(line: 82, column: 1, scope: !716)
!2702 = !DILocation(line: 51, column: 42, scope: !725)
!2703 = !DILocation(line: 53, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !725, file: !11, line: 53, column: 9)
!2705 = !DILocation(line: 53, column: 15, scope: !2704)
!2706 = !DILocation(line: 53, column: 9, scope: !725)
!2707 = !DILocation(line: 54, column: 9, scope: !2704)
!2708 = !{i32 154978}
!2709 = !DILocation(line: 55, column: 1, scope: !725)
!2710 = !DILocation(line: 44, column: 42, scope: !730)
!2711 = !DILocation(line: 46, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !730, file: !11, line: 46, column: 9)
!2713 = !DILocation(line: 46, column: 15, scope: !2712)
!2714 = !DILocation(line: 46, column: 9, scope: !730)
!2715 = !DILocation(line: 47, column: 9, scope: !2712)
!2716 = !{i32 154818}
!2717 = !DILocation(line: 48, column: 1, scope: !730)
!2718 = !DILocation(line: 439, column: 22, scope: !761)
!2719 = !DILocation(line: 439, column: 38, scope: !761)
!2720 = !DILocation(line: 442, column: 5, scope: !761)
!2721 = !DILocation(line: 442, column: 15, scope: !761)
!2722 = !DILocation(line: 443, column: 5, scope: !761)
!2723 = !DILocation(line: 443, column: 15, scope: !761)
!2724 = !DILocation(line: 443, column: 42, scope: !761)
!2725 = !DILocation(line: 443, column: 22, scope: !761)
!2726 = !DILocation(line: 445, column: 9, scope: !771)
!2727 = !DILocation(line: 445, column: 14, scope: !771)
!2728 = !DILocation(line: 445, column: 9, scope: !761)
!2729 = !DILocation(line: 446, column: 30, scope: !769)
!2730 = !DILocation(line: 446, column: 38, scope: !769)
!2731 = !DILocation(line: 446, column: 49, scope: !769)
!2732 = !DILocation(line: 446, column: 58, scope: !769)
!2733 = !DILocation(line: 446, column: 75, scope: !769)
!2734 = !DILocation(line: 446, column: 13, scope: !770)
!2735 = !DILocation(line: 447, column: 34, scope: !769)
!2736 = !DILocation(line: 447, column: 22, scope: !769)
!2737 = !DILocation(line: 447, column: 20, scope: !769)
!2738 = !DILocation(line: 447, column: 13, scope: !769)
!2739 = !DILocation(line: 449, column: 13, scope: !768)
!2740 = !DILocation(line: 449, column: 25, scope: !768)
!2741 = !DILocation(line: 449, column: 49, scope: !768)
!2742 = !DILocation(line: 449, column: 32, scope: !768)
!2743 = !DILocation(line: 450, column: 17, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !768, file: !21, line: 450, column: 17)
!2745 = !DILocation(line: 450, column: 17, scope: !768)
!2746 = !DILocation(line: 451, column: 30, scope: !2744)
!2747 = !DILocation(line: 453, column: 30, scope: !2744)
!2748 = !DILocation(line: 451, column: 17, scope: !2744)
!2749 = !DILocation(line: 454, column: 9, scope: !769)
!2750 = !DILocation(line: 455, column: 5, scope: !770)
!2751 = !DILocation(line: 457, column: 5, scope: !761)
!2752 = !DILocation(line: 457, column: 10, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !773, file: !21, discriminator: 1)
!2754 = !DILocation(line: 457, column: 20, scope: !773)
!2755 = !DILocation(line: 457, column: 51, scope: !773)
!2756 = !DILocation(line: 457, column: 62, scope: !776)
!2757 = !DILocation(line: 457, column: 78, scope: !776)
!2758 = !DILocation(line: 457, column: 62, scope: !773)
!2759 = !DILocation(line: 457, column: 93, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !776, file: !21, discriminator: 2)
!2761 = !DILocation(line: 457, column: 98, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !775, file: !21, discriminator: 4)
!2763 = !DILocation(line: 457, column: 108, scope: !775)
!2764 = !DILocation(line: 457, column: 138, scope: !775)
!2765 = !DILocation(line: 457, column: 164, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !775, file: !21, line: 457, column: 161)
!2767 = !DILocation(line: 457, column: 181, scope: !2766)
!2768 = !DILocation(line: 457, column: 161, scope: !2766)
!2769 = !DILocation(line: 457, column: 191, scope: !2766)
!2770 = !DILocation(line: 457, column: 161, scope: !775)
!2771 = !DILocation(line: 457, column: 161, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !775, file: !21, discriminator: 5)
!2773 = !DILocation(line: 457, column: 222, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2766, file: !21, discriminator: 6)
!2775 = !DILocation(line: 457, column: 240, scope: !2766)
!2776 = !DILocation(line: 457, column: 250, scope: !2766)
!2777 = !DILocation(line: 457, column: 275, scope: !2766)
!2778 = !DILocation(line: 457, column: 206, scope: !2766)
!2779 = !DILocation(line: 457, column: 294, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !776, file: !21, discriminator: 7)
!2781 = !DILocation(line: 457, column: 294, scope: !775)
!2782 = !DILocation(line: 457, column: 294, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !775, file: !21, discriminator: 8)
!2784 = !DILocation(line: 457, column: 294, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !775, file: !21, discriminator: 9)
!2786 = !DILocation(line: 457, column: 307, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2788, file: !21, discriminator: 10)
!2788 = !DILexicalBlockFile(scope: !761, file: !21, discriminator: 3)
!2789 = !DILocation(line: 457, column: 307, scope: !773)
!2790 = !DILocation(line: 457, column: 307, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !773, file: !21, discriminator: 11)
!2792 = !DILocation(line: 458, column: 12, scope: !761)
!2793 = !DILocation(line: 459, column: 1, scope: !761)
!2794 = !DILocation(line: 458, column: 5, scope: !761)
