; ModuleID = 'moduleobject.o.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@.str = private unnamed_addr constant [40 x i8] c"Python import machinery not initialized\00", align 1
@max_module_number = internal unnamed_addr global i64 0, align 8
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
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !512, metadata !817), !dbg !818
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !819
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %0, i64 0, metadata !513, metadata !817), !dbg !820
  %cmp = icmp eq %struct._object* %call, null, !dbg !821
  br i1 %cmp, label %cleanup, label %if.end, !dbg !823

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._object* %call to %struct.PyModuleObject*, !dbg !819
  %md_def = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !824
  %1 = bitcast %struct._typeobject** %md_def to i8*, !dbg !825
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false), !dbg !826
  %call1 = tail call %struct._object* @PyDict_New() #1, !dbg !825
  %md_dict = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !827
  %2 = bitcast %struct._object* %md_dict to %struct._object**, !dbg !827
  store %struct._object* %call1, %struct._object** %2, align 8, !dbg !828, !tbaa !829
  %call3 = tail call fastcc i32 @module_init_dict(%struct.PyModuleObject* %0, %struct._object* %call1, %struct._object* %name, %struct._object* null), !dbg !836
  %cmp4 = icmp eq i32 %call3, 0, !dbg !838
  br i1 %cmp4, label %if.end.6, label %do.body, !dbg !839

if.end.6:                                         ; preds = %if.end
  %3 = bitcast %struct._object* %call to i8*, !dbg !840
  tail call void @PyObject_GC_Track(i8* %3) #1, !dbg !841
  br label %cleanup, !dbg !842

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !514, metadata !817), !dbg !843
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !845
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !845, !tbaa !847
  %dec = add i64 %4, -1, !dbg !845
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !845, !tbaa !847
  %cmp7 = icmp eq i64 %dec, 0, !dbg !845
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !848

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !849
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !849, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !849
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !849, !tbaa !852
  tail call void %6(%struct._object* %call) #1, !dbg !849
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body, %entry, %if.end.6
  %retval.0 = phi %struct._object* [ %call, %if.end.6 ], [ null, %entry ], [ null, %do.body ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !856
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #2

declare %struct._object* @PyDict_New() #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @module_init_dict(%struct.PyModuleObject* nocapture %mod, %struct._object* %md_dict, %struct._object* %name, %struct._object* %doc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %mod, i64 0, metadata !669, metadata !817), !dbg !857
  tail call void @llvm.dbg.value(metadata %struct._object* %md_dict, i64 0, metadata !670, metadata !817), !dbg !858
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !671, metadata !817), !dbg !859
  tail call void @llvm.dbg.value(metadata %struct._object* %doc, i64 0, metadata !672, metadata !817), !dbg !860
  %cmp = icmp eq %struct._object* %md_dict, null, !dbg !861
  br i1 %cmp, label %return, label %if.end, !dbg !863

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !672, metadata !817), !dbg !860
  %call = tail call i32 @PyDict_SetItemString(%struct._object* %md_dict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct._object* %name) #1, !dbg !864
  %cmp4 = icmp eq i32 %call, 0, !dbg !866
  br i1 %cmp4, label %if.end.6, label %return, !dbg !867

if.end.6:                                         ; preds = %if.end
  %cmp1 = icmp eq %struct._object* %doc, null, !dbg !868
  %_Py_NoneStruct.doc = select i1 %cmp1, %struct._object* @_Py_NoneStruct, %struct._object* %doc, !dbg !870
  %call7 = tail call i32 @PyDict_SetItemString(%struct._object* %md_dict, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct._object* %_Py_NoneStruct.doc) #1, !dbg !871
  %cmp8 = icmp eq i32 %call7, 0, !dbg !873
  br i1 %cmp8, label %if.end.10, label %return, !dbg !874

if.end.10:                                        ; preds = %if.end.6
  %call11 = tail call i32 @PyDict_SetItemString(%struct._object* %md_dict, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !875
  %cmp12 = icmp eq i32 %call11, 0, !dbg !877
  br i1 %cmp12, label %if.end.14, label %return, !dbg !878

if.end.14:                                        ; preds = %if.end.10
  %call15 = tail call i32 @PyDict_SetItemString(%struct._object* %md_dict, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !879
  %cmp16 = icmp eq i32 %call15, 0, !dbg !881
  br i1 %cmp16, label %if.end.18, label %return, !dbg !882

if.end.18:                                        ; preds = %if.end.14
  %call19 = tail call i32 @PyDict_SetItemString(%struct._object* %md_dict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !883
  %cmp20 = icmp eq i32 %call19, 0, !dbg !885
  br i1 %cmp20, label %if.end.22, label %return, !dbg !886

if.end.22:                                        ; preds = %if.end.18
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %name, i64 0, i32 1, !dbg !887
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !887, !tbaa !851
  %cmp23 = icmp eq %struct._typeobject* %0, @PyUnicode_Type, !dbg !887
  br i1 %cmp23, label %if.then.24, label %return, !dbg !888

if.then.24:                                       ; preds = %if.end.22
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %name, i64 0, i32 0, !dbg !889
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !889, !tbaa !847
  %inc = add i64 %1, 1, !dbg !889
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !889, !tbaa !847
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %mod, i64 0, i32 5, !dbg !890
  %2 = load %struct._object*, %struct._object** %md_name, align 8, !dbg !890, !tbaa !892
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !673, metadata !817), !dbg !890
  %cmp25 = icmp eq %struct._object* %2, null, !dbg !893
  br i1 %cmp25, label %if.end.33, label %do.body.27, !dbg !894

do.body.27:                                       ; preds = %if.then.24
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !677, metadata !817), !dbg !895
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !897
  %3 = load i64, i64* %ob_refcnt28, align 8, !dbg !897, !tbaa !847
  %dec = add i64 %3, -1, !dbg !897
  store i64 %dec, i64* %ob_refcnt28, align 8, !dbg !897, !tbaa !847
  %cmp29 = icmp eq i64 %dec, 0, !dbg !897
  br i1 %cmp29, label %if.else, label %if.end.33, !dbg !899

if.else:                                          ; preds = %do.body.27
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !900
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !900, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !900
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !900, !tbaa !852
  tail call void %5(%struct._object* %2) #1, !dbg !900
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %do.body.27, %if.then.24
  store %struct._object* %name, %struct._object** %md_name, align 8, !dbg !902, !tbaa !892
  br label %return, !dbg !903

return:                                           ; preds = %if.end.22, %if.end.33, %if.end.18, %if.end.14, %if.end.10, %if.end.6, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end.6 ], [ -1, %if.end.10 ], [ -1, %if.end.14 ], [ -1, %if.end.18 ], [ 0, %if.end.33 ], [ 0, %if.end.22 ]
  ret i32 %retval.0, !dbg !904
}

declare void @PyObject_GC_Track(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_New(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !520, metadata !817), !dbg !905
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %name) #1, !dbg !906
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !521, metadata !817), !dbg !907
  %cmp = icmp eq %struct._object* %call, null, !dbg !908
  br i1 %cmp, label %cleanup, label %if.end, !dbg !910

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !512, metadata !817) #1, !dbg !911
  %call.i = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !913
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !914
  br i1 %cmp.i, label %PyModule_NewObject.exit, label %if.end.i, !dbg !915

if.end.i:                                         ; preds = %if.end
  %0 = bitcast %struct._object* %call.i to %struct.PyModuleObject*, !dbg !913
  %md_def.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !916
  %1 = bitcast %struct._typeobject** %md_def.i to i8*, !dbg !917
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false) #1, !dbg !918
  %call1.i = tail call %struct._object* @PyDict_New() #1, !dbg !917
  %md_dict.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !919
  %2 = bitcast %struct._object* %md_dict.i to %struct._object**, !dbg !919
  store %struct._object* %call1.i, %struct._object** %2, align 8, !dbg !920, !tbaa !829
  %call3.i = tail call fastcc i32 @module_init_dict(%struct.PyModuleObject* %0, %struct._object* %call1.i, %struct._object* %call, %struct._object* null) #1, !dbg !921
  %cmp4.i = icmp eq i32 %call3.i, 0, !dbg !922
  br i1 %cmp4.i, label %if.end.6.i, label %do.body.i, !dbg !923

if.end.6.i:                                       ; preds = %if.end.i
  %3 = bitcast %struct._object* %call.i to i8*, !dbg !924
  tail call void @PyObject_GC_Track(i8* %3) #1, !dbg !925
  br label %PyModule_NewObject.exit, !dbg !926

do.body.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !514, metadata !817) #1, !dbg !927
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !928
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !928, !tbaa !847
  %dec.i = add i64 %4, -1, !dbg !928
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !928, !tbaa !847
  %cmp7.i = icmp eq i64 %dec.i, 0, !dbg !928
  br i1 %cmp7.i, label %if.else.i, label %PyModule_NewObject.exit, !dbg !929

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !930
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !930, !tbaa !851
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !930
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !930, !tbaa !852
  tail call void %6(%struct._object* %call.i) #1, !dbg !930
  br label %PyModule_NewObject.exit, !dbg !931

PyModule_NewObject.exit:                          ; preds = %if.end, %if.end.6.i, %do.body.i, %if.else.i
  %retval.0.i = phi %struct._object* [ %call.i, %if.end.6.i ], [ null, %if.end ], [ null, %do.body.i ], [ null, %if.else.i ], !dbg !931
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !522, metadata !817), !dbg !932
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !523, metadata !817), !dbg !933
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !935
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !935, !tbaa !847
  %dec = add i64 %7, -1, !dbg !935
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !935, !tbaa !847
  %cmp2 = icmp eq i64 %dec, 0, !dbg !935
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !937

if.else:                                          ; preds = %PyModule_NewObject.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !938
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !938, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !938
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !938, !tbaa !852
  tail call void %9(%struct._object* %call) #1, !dbg !938
  br label %cleanup

cleanup:                                          ; preds = %if.else, %PyModule_NewObject.exit, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %retval.0.i, %PyModule_NewObject.exit ], [ %retval.0.i, %if.else ]
  ret %struct._object* %retval.0, !dbg !940
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_Create2(%struct.PyModuleDef* %module, i32 %module_api_version) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !529, metadata !817), !dbg !941
  tail call void @llvm.dbg.value(metadata i32 %module_api_version, i64 0, metadata !530, metadata !817), !dbg !942
  %call = tail call %struct._ts* @PyThreadState_Get() #1, !dbg !943
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 2, !dbg !944
  %0 = load %struct._is*, %struct._is** %interp1, align 8, !dbg !944, !tbaa !945
  tail call void @llvm.dbg.value(metadata %struct._is* %0, i64 0, metadata !537, metadata !817), !dbg !947
  %modules = getelementptr inbounds %struct._is, %struct._is* %0, i64 0, i32 2, !dbg !948
  %1 = load %struct._object*, %struct._object** %modules, align 8, !dbg !948, !tbaa !950
  %cmp = icmp eq %struct._object* %1, null, !dbg !952
  br i1 %cmp, label %if.then, label %if.end, !dbg !953

if.then:                                          ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #6, !dbg !954
  unreachable, !dbg !954

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type to %struct._typeobject*)) #1, !dbg !955
  %cmp3 = icmp slt i32 %call2, 0, !dbg !957
  br i1 %cmp3, label %cleanup.263, label %if.end.5, !dbg !958

if.end.5:                                         ; preds = %if.end
  %m_index = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 0, i32 2, !dbg !959
  %2 = load i64, i64* %m_index, align 8, !dbg !959, !tbaa !961
  %cmp6 = icmp eq i64 %2, 0, !dbg !964
  br i1 %cmp6, label %if.then.7, label %if.end.10, !dbg !965

if.then.7:                                        ; preds = %if.end.5
  %3 = load i64, i64* @max_module_number, align 8, !dbg !966, !tbaa !968
  %inc = add i64 %3, 1, !dbg !966
  store i64 %inc, i64* @max_module_number, align 8, !dbg !966, !tbaa !968
  %ob_refcnt = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 0, i32 0, i32 0, !dbg !969
  store i64 1, i64* %ob_refcnt, align 8, !dbg !970, !tbaa !847
  %ob_type = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 0, i32 0, i32 1, !dbg !971
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type to %struct._typeobject*), %struct._typeobject** %ob_type, align 8, !dbg !972, !tbaa !851
  %4 = load i64, i64* @max_module_number, align 8, !dbg !973, !tbaa !968
  store i64 %4, i64* %m_index, align 8, !dbg !974, !tbaa !961
  br label %if.end.10, !dbg !975

if.end.10:                                        ; preds = %if.then.7, %if.end.5
  %m_name = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 1, !dbg !976
  %5 = load i8*, i8** %m_name, align 8, !dbg !976, !tbaa !977
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !535, metadata !817), !dbg !978
  switch i32 %module_api_version, label %if.then.13 [
    i32 1013, label %if.end.17
    i32 3, label %if.end.17
  ], !dbg !979

if.then.13:                                       ; preds = %if.end.10
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !980, !tbaa !981
  %call14 = tail call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %6, i64 1, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i8* %5, i32 1013, i8* %5, i32 %module_api_version) #1, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %call14, i64 0, metadata !538, metadata !817), !dbg !983
  %tobool = icmp eq i32 %call14, 0, !dbg !984
  br i1 %tobool, label %if.end.17, label %cleanup.263

if.end.17:                                        ; preds = %if.end.10, %if.end.10, %if.then.13
  %7 = load i8*, i8** @_Py_PackageContext, align 8, !dbg !986, !tbaa !981
  %cmp18 = icmp eq i8* %7, null, !dbg !987
  br i1 %cmp18, label %if.end.28, label %if.then.19, !dbg !988

if.then.19:                                       ; preds = %if.end.17
  %call20 = tail call i8* @strrchr(i8* %7, i32 46) #7, !dbg !989
  tail call void @llvm.dbg.value(metadata i8* %call20, i64 0, metadata !541, metadata !817), !dbg !990
  %cmp21 = icmp eq i8* %call20, null, !dbg !991
  br i1 %cmp21, label %if.end.28, label %land.lhs.true.22, !dbg !992

land.lhs.true.22:                                 ; preds = %if.then.19
  %8 = load i8*, i8** %m_name, align 8, !dbg !993, !tbaa !977
  %add.ptr = getelementptr i8, i8* %call20, i64 1, !dbg !993
  %call24 = tail call i32 @strcmp(i8* %8, i8* %add.ptr) #1, !dbg !993
  %cmp25 = icmp eq i32 %call24, 0, !dbg !995
  br i1 %cmp25, label %if.then.26, label %if.end.28, !dbg !996

if.then.26:                                       ; preds = %land.lhs.true.22
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !535, metadata !817), !dbg !978
  store i8* null, i8** @_Py_PackageContext, align 8, !dbg !997, !tbaa !981
  br label %if.end.28, !dbg !999

if.end.28:                                        ; preds = %land.lhs.true.22, %if.then.26, %if.then.19, %if.end.17
  %name.1 = phi i8* [ %5, %if.end.17 ], [ %7, %if.then.26 ], [ %5, %land.lhs.true.22 ], [ %5, %if.then.19 ]
  %call29 = tail call %struct._object* @PyModule_New(i8* %name.1), !dbg !1000
  %cmp30 = icmp eq %struct._object* %call29, null, !dbg !1002
  br i1 %cmp30, label %cleanup.263, label %if.end.32, !dbg !1003

if.end.32:                                        ; preds = %if.end.28
  %m_size = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 3, !dbg !1004
  %9 = load i64, i64* %m_size, align 8, !dbg !1004, !tbaa !1005
  %cmp33 = icmp sgt i64 %9, 0, !dbg !1006
  br i1 %cmp33, label %if.then.34, label %if.end.50, !dbg !1007

if.then.34:                                       ; preds = %if.end.32
  %call36 = tail call i8* @PyMem_Malloc(i64 %9) #1, !dbg !1008
  %md_state = getelementptr inbounds %struct._object, %struct._object* %call29, i64 2, !dbg !1009
  %10 = bitcast %struct._object* %md_state to i8**, !dbg !1009
  store i8* %call36, i8** %10, align 8, !dbg !1010, !tbaa !1011
  %tobool38 = icmp eq i8* %call36, null, !dbg !1012
  br i1 %tobool38, label %if.then.39, label %if.end.47, !dbg !1013

if.then.39:                                       ; preds = %if.then.34
  %call40 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !548, metadata !817), !dbg !1015
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1017
  %11 = load i64, i64* %ob_refcnt42, align 8, !dbg !1017, !tbaa !847
  %dec = add i64 %11, -1, !dbg !1017
  store i64 %dec, i64* %ob_refcnt42, align 8, !dbg !1017, !tbaa !847
  %cmp43 = icmp eq i64 %dec, 0, !dbg !1017
  br i1 %cmp43, label %if.else, label %cleanup.263, !dbg !1019

if.else:                                          ; preds = %if.then.39
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 1, !dbg !1020
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1020, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1020
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1020, !tbaa !852
  tail call void %13(%struct._object* %call29) #1, !dbg !1020
  br label %cleanup.263

if.end.47:                                        ; preds = %if.then.34
  %14 = load i64, i64* %m_size, align 8, !dbg !1022, !tbaa !1005
  tail call void @llvm.memset.p0i8.i64(i8* %call36, i8 0, i64 %14, i32 1, i1 false), !dbg !1023
  br label %if.end.50, !dbg !1024

if.end.50:                                        ; preds = %if.end.47, %if.end.32
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !602, metadata !817) #1, !dbg !1025
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 1, !dbg !1027
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1027, !tbaa !851
  %cmp.i = icmp eq %struct._typeobject* %15, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1027
  br i1 %cmp.i, label %if.end.i, label %lor.lhs.false.i, !dbg !1027

lor.lhs.false.i:                                  ; preds = %if.end.50
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %15, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1029
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1029
  br i1 %tobool.i, label %if.then.i, label %if.end.i, !dbg !1031

if.then.i:                                        ; preds = %lor.lhs.false.i
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 205) #1, !dbg !1032
  br label %PyModule_GetDict.exit, !dbg !1034

if.end.i:                                         ; preds = %lor.lhs.false.i, %if.end.50
  %md_dict.i = getelementptr inbounds %struct._object, %struct._object* %call29, i64 1, !dbg !1035
  %16 = bitcast %struct._object* %md_dict.i to %struct._object**, !dbg !1035
  %17 = load %struct._object*, %struct._object** %16, align 8, !dbg !1035, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !603, metadata !817) #1, !dbg !1036
  %cmp2.i = icmp eq %struct._object* %17, null, !dbg !1037
  br i1 %cmp2.i, label %if.then.3.i, label %PyModule_GetDict.exit, !dbg !1039

if.then.3.i:                                      ; preds = %if.end.i
  %call4.i = tail call %struct._object* @PyDict_New() #1, !dbg !1040
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !603, metadata !817) #1, !dbg !1036
  store %struct._object* %call4.i, %struct._object** %16, align 8, !dbg !1041, !tbaa !829
  br label %PyModule_GetDict.exit, !dbg !1042

PyModule_GetDict.exit:                            ; preds = %if.then.i, %if.end.i, %if.then.3.i
  %retval.0.i = phi %struct._object* [ null, %if.then.i ], [ %call4.i, %if.then.3.i ], [ %17, %if.end.i ], !dbg !1043
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !531, metadata !817), !dbg !1044
  %m_methods = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 4, !dbg !1045
  %18 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_methods, align 8, !dbg !1045, !tbaa !1046
  %cmp52 = icmp eq %struct.PyMethodDef* %18, null, !dbg !1047
  br i1 %cmp52, label %if.end.205, label %if.then.53, !dbg !1048

if.then.53:                                       ; preds = %PyModule_GetDict.exit
  %call54 = tail call %struct._object* @PyUnicode_FromString(i8* %name.1) #1, !dbg !1049
  tail call void @llvm.dbg.value(metadata %struct._object* %call54, i64 0, metadata !533, metadata !817), !dbg !1050
  %cmp55 = icmp eq %struct._object* %call54, null, !dbg !1051
  br i1 %cmp55, label %do.body.57, label %if.end.70, !dbg !1052

do.body.57:                                       ; preds = %if.then.53
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !554, metadata !817), !dbg !1053
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1055
  %19 = load i64, i64* %ob_refcnt60, align 8, !dbg !1055, !tbaa !847
  %dec61 = add i64 %19, -1, !dbg !1055
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !1055, !tbaa !847
  %cmp62 = icmp eq i64 %dec61, 0, !dbg !1055
  br i1 %cmp62, label %if.else.64, label %cleanup.263, !dbg !1057

if.else.64:                                       ; preds = %do.body.57
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1058, !tbaa !851
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1058
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !1058, !tbaa !852
  tail call void %21(%struct._object* %call29) #1, !dbg !1058
  br label %cleanup.263

if.end.70:                                        ; preds = %if.then.53
  %22 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_methods, align 8, !dbg !1060, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %22, i64 0, metadata !534, metadata !817), !dbg !1061
  %ml_name.375 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %22, i64 0, i32 0, !dbg !1062
  %23 = load i8*, i8** %ml_name.375, align 8, !dbg !1062, !tbaa !1063
  %cmp72.376 = icmp eq i8* %23, null, !dbg !1065
  br i1 %cmp72.376, label %do.body.192, label %for.body.preheader, !dbg !1066

for.body.preheader:                               ; preds = %if.end.70
  br label %for.body, !dbg !1062

for.body:                                         ; preds = %for.body.preheader, %if.end.189
  %24 = phi %struct.PyMethodDef* [ %incdec.ptr382, %if.end.189 ], [ %22, %for.body.preheader ]
  %ml_name378 = phi i8** [ %ml_name, %if.end.189 ], [ %ml_name.375, %for.body.preheader ]
  %25 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %24, i64 0, i32 0, !dbg !1062
  %ml_flags = getelementptr inbounds i8*, i8** %25, i64 2, !dbg !1067
  %26 = bitcast i8** %ml_flags to i32*, !dbg !1067
  %27 = load i32, i32* %26, align 4, !dbg !1067, !tbaa !1068
  %28 = and i32 %27, 48, !dbg !1069
  %29 = icmp eq i32 %28, 0, !dbg !1069
  br i1 %29, label %if.end.104, label %if.then.77, !dbg !1069

if.then.77:                                       ; preds = %for.body
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1070, !tbaa !981
  tail call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0)) #1, !dbg !1071
  tail call void @llvm.dbg.value(metadata %struct._object* %call54, i64 0, metadata !560, metadata !817), !dbg !1072
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 0, !dbg !1074
  %31 = load i64, i64* %ob_refcnt81, align 8, !dbg !1074, !tbaa !847
  %dec82 = add i64 %31, -1, !dbg !1074
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !1074, !tbaa !847
  %cmp83 = icmp eq i64 %dec82, 0, !dbg !1074
  br i1 %cmp83, label %if.else.85, label %if.end.88, !dbg !1076

if.else.85:                                       ; preds = %if.then.77
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 1, !dbg !1077
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !1077, !tbaa !851
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1077
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !1077, !tbaa !852
  tail call void %33(%struct._object* %call54) #1, !dbg !1077
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.77, %if.else.85
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !567, metadata !817), !dbg !1079
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1081
  %34 = load i64, i64* %ob_refcnt94, align 8, !dbg !1081, !tbaa !847
  %dec95 = add i64 %34, -1, !dbg !1081
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !1081, !tbaa !847
  %cmp96 = icmp eq i64 %dec95, 0, !dbg !1081
  br i1 %cmp96, label %if.else.98, label %cleanup.263, !dbg !1083

if.else.98:                                       ; preds = %if.end.88
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1084, !tbaa !851
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !1084
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1084, !tbaa !852
  tail call void %36(%struct._object* %call29) #1, !dbg !1084
  br label %cleanup.263

if.end.104:                                       ; preds = %for.body
  %indvars = bitcast i8** %ml_name378 to %struct.PyMethodDef*
  %call105 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %indvars, %struct._object* %call29, %struct._object* %call54) #1, !dbg !1086
  tail call void @llvm.dbg.value(metadata %struct._object* %call105, i64 0, metadata !532, metadata !817), !dbg !1087
  %cmp106 = icmp eq %struct._object* %call105, null, !dbg !1088
  br i1 %cmp106, label %do.body.108, label %if.end.134, !dbg !1089

do.body.108:                                      ; preds = %if.end.104
  tail call void @llvm.dbg.value(metadata %struct._object* %call54, i64 0, metadata !569, metadata !817), !dbg !1090
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 0, !dbg !1092
  %37 = load i64, i64* %ob_refcnt111, align 8, !dbg !1092, !tbaa !847
  %dec112 = add i64 %37, -1, !dbg !1092
  store i64 %dec112, i64* %ob_refcnt111, align 8, !dbg !1092, !tbaa !847
  %cmp113 = icmp eq i64 %dec112, 0, !dbg !1092
  br i1 %cmp113, label %if.else.115, label %if.end.118, !dbg !1094

if.else.115:                                      ; preds = %do.body.108
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 1, !dbg !1095
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8, !dbg !1095, !tbaa !851
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !1095
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8, !dbg !1095, !tbaa !852
  tail call void %39(%struct._object* %call54) #1, !dbg !1095
  br label %if.end.118

if.end.118:                                       ; preds = %do.body.108, %if.else.115
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !573, metadata !817), !dbg !1097
  %ob_refcnt124 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1099
  %40 = load i64, i64* %ob_refcnt124, align 8, !dbg !1099, !tbaa !847
  %dec125 = add i64 %40, -1, !dbg !1099
  store i64 %dec125, i64* %ob_refcnt124, align 8, !dbg !1099, !tbaa !847
  %cmp126 = icmp eq i64 %dec125, 0, !dbg !1099
  br i1 %cmp126, label %if.else.128, label %cleanup.263, !dbg !1101

if.else.128:                                      ; preds = %if.end.118
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1102, !tbaa !851
  %tp_dealloc130 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !1102
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc130, align 8, !dbg !1102, !tbaa !852
  tail call void %42(%struct._object* %call29) #1, !dbg !1102
  br label %cleanup.263

if.end.134:                                       ; preds = %if.end.104
  %43 = load i8*, i8** %ml_name378, align 8, !dbg !1104, !tbaa !1063
  %call136 = tail call i32 @PyDict_SetItemString(%struct._object* %retval.0.i, i8* %43, %struct._object* %call105) #1, !dbg !1105
  %cmp137 = icmp eq i32 %call136, 0, !dbg !1106
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %call105, i64 0, i32 0, !dbg !1107
  %44 = load i64, i64* %ob_refcnt182, align 8, !dbg !1107, !tbaa !847
  %dec183 = add i64 %44, -1, !dbg !1107
  store i64 %dec183, i64* %ob_refcnt182, align 8, !dbg !1107, !tbaa !847
  %cmp184 = icmp eq i64 %dec183, 0, !dbg !1107
  br i1 %cmp137, label %do.body.179, label %do.body.139, !dbg !1109

do.body.139:                                      ; preds = %if.end.134
  %cmp184.lcssa = phi i1 [ %cmp184, %if.end.134 ]
  %call105.lcssa392 = phi %struct._object* [ %call105, %if.end.134 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call105, i64 0, metadata !575, metadata !817), !dbg !1110
  br i1 %cmp184.lcssa, label %if.else.146, label %if.end.149, !dbg !1112

if.else.146:                                      ; preds = %do.body.139
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %call105.lcssa392, i64 0, i32 1, !dbg !1113
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8, !dbg !1113, !tbaa !851
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !1113
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8, !dbg !1113, !tbaa !852
  tail call void %46(%struct._object* %call105.lcssa392) #1, !dbg !1113
  br label %if.end.149

if.end.149:                                       ; preds = %do.body.139, %if.else.146
  tail call void @llvm.dbg.value(metadata %struct._object* %call54, i64 0, metadata !579, metadata !817), !dbg !1116
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 0, !dbg !1118
  %47 = load i64, i64* %ob_refcnt155, align 8, !dbg !1118, !tbaa !847
  %dec156 = add i64 %47, -1, !dbg !1118
  store i64 %dec156, i64* %ob_refcnt155, align 8, !dbg !1118, !tbaa !847
  %cmp157 = icmp eq i64 %dec156, 0, !dbg !1118
  br i1 %cmp157, label %if.else.159, label %if.end.162, !dbg !1120

if.else.159:                                      ; preds = %if.end.149
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 1, !dbg !1121
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8, !dbg !1121, !tbaa !851
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i64 0, i32 4, !dbg !1121
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8, !dbg !1121, !tbaa !852
  tail call void %49(%struct._object* %call54) #1, !dbg !1121
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.149, %if.else.159
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !581, metadata !817), !dbg !1123
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1125
  %50 = load i64, i64* %ob_refcnt168, align 8, !dbg !1125, !tbaa !847
  %dec169 = add i64 %50, -1, !dbg !1125
  store i64 %dec169, i64* %ob_refcnt168, align 8, !dbg !1125, !tbaa !847
  %cmp170 = icmp eq i64 %dec169, 0, !dbg !1125
  br i1 %cmp170, label %if.else.172, label %cleanup.263, !dbg !1127

if.else.172:                                      ; preds = %if.end.162
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1128, !tbaa !851
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i64 0, i32 4, !dbg !1128
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8, !dbg !1128, !tbaa !852
  tail call void %52(%struct._object* %call29) #1, !dbg !1128
  br label %cleanup.263

do.body.179:                                      ; preds = %if.end.134
  tail call void @llvm.dbg.value(metadata %struct._object* %call105, i64 0, metadata !583, metadata !817), !dbg !1130
  br i1 %cmp184, label %if.else.186, label %if.end.189, !dbg !1132

if.else.186:                                      ; preds = %do.body.179
  %ob_type187 = getelementptr inbounds %struct._object, %struct._object* %call105, i64 0, i32 1, !dbg !1133
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type187, align 8, !dbg !1133, !tbaa !851
  %tp_dealloc188 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i64 0, i32 4, !dbg !1133
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc188, align 8, !dbg !1133, !tbaa !852
  tail call void %54(%struct._object* %call105) #1, !dbg !1133
  br label %if.end.189

if.end.189:                                       ; preds = %do.body.179, %if.else.186
  %incdec.ptr382 = getelementptr %struct.PyMethodDef, %struct.PyMethodDef* %24, i64 1, !dbg !1135
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %incdec.ptr382, i64 0, metadata !534, metadata !817), !dbg !1061
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %incdec.ptr382, i64 0, i32 0, !dbg !1062
  %55 = load i8*, i8** %ml_name, align 8, !dbg !1062, !tbaa !1063
  %cmp72 = icmp eq i8* %55, null, !dbg !1065
  br i1 %cmp72, label %do.body.192.loopexit, label %for.body, !dbg !1066

do.body.192.loopexit:                             ; preds = %if.end.189
  br label %do.body.192, !dbg !1136

do.body.192:                                      ; preds = %do.body.192.loopexit, %if.end.70
  tail call void @llvm.dbg.value(metadata %struct._object* %call54, i64 0, metadata !585, metadata !817), !dbg !1136
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 0, !dbg !1138
  %56 = load i64, i64* %ob_refcnt195, align 8, !dbg !1138, !tbaa !847
  %dec196 = add i64 %56, -1, !dbg !1138
  store i64 %dec196, i64* %ob_refcnt195, align 8, !dbg !1138, !tbaa !847
  %cmp197 = icmp eq i64 %dec196, 0, !dbg !1138
  br i1 %cmp197, label %if.else.199, label %if.end.205, !dbg !1140

if.else.199:                                      ; preds = %do.body.192
  %ob_type200 = getelementptr inbounds %struct._object, %struct._object* %call54, i64 0, i32 1, !dbg !1141
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type200, align 8, !dbg !1141, !tbaa !851
  %tp_dealloc201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !1141
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc201, align 8, !dbg !1141, !tbaa !852
  tail call void %58(%struct._object* %call54) #1, !dbg !1141
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.199, %do.body.192, %PyModule_GetDict.exit
  %m_doc = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %module, i64 0, i32 2, !dbg !1143
  %59 = load i8*, i8** %m_doc, align 8, !dbg !1143, !tbaa !1144
  %cmp206 = icmp eq i8* %59, null, !dbg !1145
  br i1 %cmp206, label %if.end.262, label %if.then.207, !dbg !1146

if.then.207:                                      ; preds = %if.end.205
  %call209 = tail call %struct._object* @PyUnicode_FromString(i8* %59) #1, !dbg !1147
  tail call void @llvm.dbg.value(metadata %struct._object* %call209, i64 0, metadata !532, metadata !817), !dbg !1087
  %cond = icmp eq %struct._object* %call209, null, !dbg !1148
  br i1 %cond, label %if.end.232, label %lor.lhs.false.211, !dbg !1148

lor.lhs.false.211:                                ; preds = %if.then.207
  %call212 = tail call i32 @PyDict_SetItemString(%struct._object* %retval.0.i, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct._object* %call209) #1, !dbg !1149
  %cmp213 = icmp eq i32 %call212, 0, !dbg !1150
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %call209, i64 0, i32 0, !dbg !1151
  %60 = load i64, i64* %ob_refcnt252, align 8, !dbg !1151, !tbaa !847
  %dec253 = add i64 %60, -1, !dbg !1151
  store i64 %dec253, i64* %ob_refcnt252, align 8, !dbg !1151, !tbaa !847
  %cmp254 = icmp eq i64 %dec253, 0, !dbg !1151
  br i1 %cmp213, label %do.body.249, label %do.body.219, !dbg !1153

do.body.219:                                      ; preds = %lor.lhs.false.211
  tail call void @llvm.dbg.value(metadata %struct._object* %call209, i64 0, metadata !587, metadata !817), !dbg !1154
  tail call void @llvm.dbg.value(metadata %struct._object* %call209, i64 0, metadata !593, metadata !817), !dbg !1156
  br i1 %cmp254, label %if.else.226, label %if.end.232, !dbg !1158

if.else.226:                                      ; preds = %do.body.219
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %call209, i64 0, i32 1, !dbg !1159
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8, !dbg !1159, !tbaa !851
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i64 0, i32 4, !dbg !1159
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8, !dbg !1159, !tbaa !852
  tail call void %62(%struct._object* %call209) #1, !dbg !1159
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.207, %if.else.226, %do.body.219
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !596, metadata !817), !dbg !1162
  %ob_refcnt238 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1164
  %63 = load i64, i64* %ob_refcnt238, align 8, !dbg !1164, !tbaa !847
  %dec239 = add i64 %63, -1, !dbg !1164
  store i64 %dec239, i64* %ob_refcnt238, align 8, !dbg !1164, !tbaa !847
  %cmp240 = icmp eq i64 %dec239, 0, !dbg !1164
  br i1 %cmp240, label %if.else.242, label %cleanup.263, !dbg !1166

if.else.242:                                      ; preds = %if.end.232
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1167, !tbaa !851
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i64 0, i32 4, !dbg !1167
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8, !dbg !1167, !tbaa !852
  tail call void %65(%struct._object* %call29) #1, !dbg !1167
  br label %cleanup.263

do.body.249:                                      ; preds = %lor.lhs.false.211
  tail call void @llvm.dbg.value(metadata %struct._object* %call209, i64 0, metadata !598, metadata !817), !dbg !1169
  br i1 %cmp254, label %if.else.256, label %if.end.262, !dbg !1171

if.else.256:                                      ; preds = %do.body.249
  %ob_type257 = getelementptr inbounds %struct._object, %struct._object* %call209, i64 0, i32 1, !dbg !1172
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type257, align 8, !dbg !1172, !tbaa !851
  %tp_dealloc258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i64 0, i32 4, !dbg !1172
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc258, align 8, !dbg !1172, !tbaa !852
  tail call void %67(%struct._object* %call209) #1, !dbg !1172
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.256, %do.body.249, %if.end.205
  %md_def = getelementptr inbounds %struct._object, %struct._object* %call29, i64 1, i32 1, !dbg !1174
  %68 = bitcast %struct._typeobject** %md_def to %struct.PyModuleDef**, !dbg !1174
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %68, align 8, !dbg !1175, !tbaa !1176
  br label %cleanup.263, !dbg !1177

cleanup.263:                                      ; preds = %if.else.242, %if.end.232, %if.else.172, %if.end.162, %if.else.128, %if.end.118, %if.else.98, %if.end.88, %if.else.64, %do.body.57, %if.else, %if.then.39, %if.end.28, %if.end, %if.then.13, %if.end.262
  %retval.1 = phi %struct._object* [ %call29, %if.end.262 ], [ null, %if.then.13 ], [ null, %if.end ], [ null, %if.end.28 ], [ null, %if.then.39 ], [ null, %if.else ], [ null, %do.body.57 ], [ null, %if.else.64 ], [ null, %if.end.88 ], [ null, %if.else.98 ], [ null, %if.end.118 ], [ null, %if.else.128 ], [ null, %if.end.162 ], [ null, %if.else.172 ], [ null, %if.end.232 ], [ null, %if.else.242 ]
  ret %struct._object* %retval.1, !dbg !1178
}

declare %struct._ts* @PyThreadState_Get() #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

declare i8* @PyMem_Malloc(i64) #2

declare %struct._object* @PyErr_NoMemory() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetDict(%struct._object* nocapture %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !602, metadata !817), !dbg !1179
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1180
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1180, !tbaa !851
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1180
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1180

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1181
  %tobool = icmp eq i32 %call, 0, !dbg !1181
  br i1 %tobool, label %if.then, label %if.end, !dbg !1182

if.then:                                          ; preds = %lor.lhs.false
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 205) #1, !dbg !1183
  br label %cleanup, !dbg !1184

if.end:                                           ; preds = %lor.lhs.false, %entry
  %md_dict = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, !dbg !1185
  %1 = bitcast %struct._object* %md_dict to %struct._object**, !dbg !1185
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1185, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !603, metadata !817), !dbg !1186
  %cmp2 = icmp eq %struct._object* %2, null, !dbg !1187
  br i1 %cmp2, label %if.then.3, label %cleanup, !dbg !1188

if.then.3:                                        ; preds = %if.end
  %call4 = tail call %struct._object* @PyDict_New() #1, !dbg !1189
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !603, metadata !817), !dbg !1186
  store %struct._object* %call4, %struct._object** %1, align 8, !dbg !1190, !tbaa !829
  br label %cleanup, !dbg !1191

cleanup:                                          ; preds = %if.end, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call4, %if.then.3 ], [ %2, %if.end ]
  ret %struct._object* %retval.0, !dbg !1192
}

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #2

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

declare void @_PyErr_BadInternalCall(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetNameObject(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !606, metadata !817), !dbg !1193
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1194
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1194, !tbaa !851
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1194
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1194

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1196
  %tobool = icmp eq i32 %call, 0, !dbg !1196
  br i1 %tobool, label %if.then, label %if.end, !dbg !1198

if.then:                                          ; preds = %lor.lhs.false
  %call2 = tail call i32 @PyErr_BadArgument() #1, !dbg !1199
  br label %cleanup, !dbg !1201

if.end:                                           ; preds = %lor.lhs.false, %entry
  %md_dict = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, !dbg !1202
  %1 = bitcast %struct._object* %md_dict to %struct._object**, !dbg !1202
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1202, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !607, metadata !817), !dbg !1203
  %cmp3 = icmp eq %struct._object* %2, null, !dbg !1204
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4, !dbg !1206

lor.lhs.false.4:                                  ; preds = %if.end
  %call5 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !1207
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !608, metadata !817), !dbg !1208
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1209
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7, !dbg !1210

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1211
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1211, !tbaa !851
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1211
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1211, !tbaa !1212
  %and = and i64 %4, 268435456, !dbg !1211
  %cmp9 = icmp eq i64 %and, 0, !dbg !1211
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1213

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1214, !tbaa !981
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !1216
  br label %cleanup, !dbg !1217

if.end.11:                                        ; preds = %lor.lhs.false.7
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1218
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1218, !tbaa !847
  %inc = add i64 %6, 1, !dbg !1218
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1218, !tbaa !847
  br label %cleanup, !dbg !1219

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then.10 ], [ %call5, %if.end.11 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1220
}

declare i32 @PyErr_BadArgument() #2

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetName(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !613, metadata !817), !dbg !1221
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !606, metadata !817) #1, !dbg !1222
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1224
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1224, !tbaa !851
  %cmp.i = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1224
  br i1 %cmp.i, label %if.end.i, label %lor.lhs.false.i, !dbg !1224

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1225
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1225
  br i1 %tobool.i, label %if.then.i, label %if.end.i, !dbg !1226

if.then.i:                                        ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @PyErr_BadArgument() #1, !dbg !1227
  br label %cleanup, !dbg !1228

if.end.i:                                         ; preds = %lor.lhs.false.i, %entry
  %md_dict.i = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, !dbg !1229
  %1 = bitcast %struct._object* %md_dict.i to %struct._object**, !dbg !1229
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1229, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !607, metadata !817) #1, !dbg !1230
  %cmp3.i = icmp eq %struct._object* %2, null, !dbg !1231
  br i1 %cmp3.i, label %if.then.10.i, label %lor.lhs.false.4.i, !dbg !1232

lor.lhs.false.4.i:                                ; preds = %if.end.i
  %call5.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !1233
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !608, metadata !817) #1, !dbg !1234
  %cmp6.i = icmp eq %struct._object* %call5.i, null, !dbg !1235
  br i1 %cmp6.i, label %if.then.10.i, label %lor.lhs.false.7.i, !dbg !1236

lor.lhs.false.7.i:                                ; preds = %lor.lhs.false.4.i
  %ob_type8.i = getelementptr inbounds %struct._object, %struct._object* %call5.i, i64 0, i32 1, !dbg !1237
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type8.i, align 8, !dbg !1238, !tbaa !851
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1237
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1237, !tbaa !1212
  %and.i = and i64 %4, 268435456, !dbg !1237
  %cmp9.i = icmp eq i64 %and.i, 0, !dbg !1237
  br i1 %cmp9.i, label %if.then.10.i, label %do.body, !dbg !1241

if.then.10.i:                                     ; preds = %lor.lhs.false.7.i, %lor.lhs.false.4.i, %if.end.i
  %5 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1242, !tbaa !981
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !1243
  br label %cleanup, !dbg !1244

do.body:                                          ; preds = %lor.lhs.false.7.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call5.i, i64 0, i32 0, !dbg !1245
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1245, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !614, metadata !817), !dbg !1246
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !615, metadata !817), !dbg !1247
  %cmp1 = icmp eq i64 %6, 0, !dbg !1249
  br i1 %cmp1, label %if.else, label %if.end.3, !dbg !1250

if.else:                                          ; preds = %do.body
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1238
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1238, !tbaa !852
  tail call void %7(%struct._object* %call5.i) #1, !dbg !1238
  br label %if.end.3

if.end.3:                                         ; preds = %do.body, %if.else
  %call4 = tail call i8* @PyUnicode_AsUTF8(%struct._object* %call5.i) #1, !dbg !1251
  br label %cleanup, !dbg !1252

cleanup:                                          ; preds = %if.then.i, %if.then.10.i, %if.end.3
  %retval.0 = phi i8* [ %call4, %if.end.3 ], [ null, %if.then.10.i ], [ null, %if.then.i ]
  ret i8* %retval.0, !dbg !1253
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetFilenameObject(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !619, metadata !817), !dbg !1254
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1255
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1255, !tbaa !851
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1255
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1255

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1257
  %tobool = icmp eq i32 %call, 0, !dbg !1257
  br i1 %tobool, label %if.then, label %if.end, !dbg !1259

if.then:                                          ; preds = %lor.lhs.false
  %call2 = tail call i32 @PyErr_BadArgument() #1, !dbg !1260
  br label %cleanup, !dbg !1262

if.end:                                           ; preds = %lor.lhs.false, %entry
  %md_dict = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, !dbg !1263
  %1 = bitcast %struct._object* %md_dict to %struct._object**, !dbg !1263
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1263, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !620, metadata !817), !dbg !1264
  %cmp3 = icmp eq %struct._object* %2, null, !dbg !1265
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4, !dbg !1267

lor.lhs.false.4:                                  ; preds = %if.end
  %call5 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !1268
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !621, metadata !817), !dbg !1269
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1270
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7, !dbg !1271

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1272
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1272, !tbaa !851
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1272
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1272, !tbaa !1212
  %and = and i64 %4, 268435456, !dbg !1272
  %cmp9 = icmp eq i64 %and, 0, !dbg !1272
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1273

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1274, !tbaa !981
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #1, !dbg !1276
  br label %cleanup, !dbg !1277

if.end.11:                                        ; preds = %lor.lhs.false.7
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1278
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1278, !tbaa !847
  %inc = add i64 %6, 1, !dbg !1278
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1278, !tbaa !847
  br label %cleanup, !dbg !1279

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then.10 ], [ %call5, %if.end.11 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1280
}

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetFilename(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !624, metadata !817), !dbg !1281
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !619, metadata !817) #1, !dbg !1282
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1284
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1284, !tbaa !851
  %cmp.i = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1284
  br i1 %cmp.i, label %if.end.i, label %lor.lhs.false.i, !dbg !1284

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1285
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1285
  br i1 %tobool.i, label %if.then.i, label %if.end.i, !dbg !1286

if.then.i:                                        ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @PyErr_BadArgument() #1, !dbg !1287
  br label %cleanup, !dbg !1288

if.end.i:                                         ; preds = %lor.lhs.false.i, %entry
  %md_dict.i = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, !dbg !1289
  %1 = bitcast %struct._object* %md_dict.i to %struct._object**, !dbg !1289
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1289, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !620, metadata !817) #1, !dbg !1290
  %cmp3.i = icmp eq %struct._object* %2, null, !dbg !1291
  br i1 %cmp3.i, label %if.then.10.i, label %lor.lhs.false.4.i, !dbg !1292

lor.lhs.false.4.i:                                ; preds = %if.end.i
  %call5.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !1293
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !621, metadata !817) #1, !dbg !1294
  %cmp6.i = icmp eq %struct._object* %call5.i, null, !dbg !1295
  br i1 %cmp6.i, label %if.then.10.i, label %lor.lhs.false.7.i, !dbg !1296

lor.lhs.false.7.i:                                ; preds = %lor.lhs.false.4.i
  %ob_type8.i = getelementptr inbounds %struct._object, %struct._object* %call5.i, i64 0, i32 1, !dbg !1297
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type8.i, align 8, !dbg !1297, !tbaa !851
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1297
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !1297, !tbaa !1212
  %and.i = and i64 %4, 268435456, !dbg !1297
  %cmp9.i = icmp eq i64 %and.i, 0, !dbg !1297
  br i1 %cmp9.i, label %if.then.10.i, label %if.end, !dbg !1298

if.then.10.i:                                     ; preds = %lor.lhs.false.7.i, %lor.lhs.false.4.i, %if.end.i
  %5 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1299, !tbaa !981
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #1, !dbg !1300
  br label %cleanup, !dbg !1301

if.end:                                           ; preds = %lor.lhs.false.7.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call5.i, i64 0, i32 0, !dbg !1302
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1302, !tbaa !847
  %inc.i = add i64 %6, 1, !dbg !1302
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1302, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !625, metadata !817), !dbg !1303
  %call1 = tail call i8* @PyUnicode_AsUTF8(%struct._object* %call5.i) #1, !dbg !1304
  tail call void @llvm.dbg.value(metadata i8* %call1, i64 0, metadata !626, metadata !817), !dbg !1305
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !627, metadata !817), !dbg !1306
  %7 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1308, !tbaa !847
  %dec = add i64 %7, -1, !dbg !1308
  store i64 %dec, i64* %ob_refcnt.i, align 8, !dbg !1308, !tbaa !847
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1308
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !1310

if.else:                                          ; preds = %if.end
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type8.i, align 8, !dbg !1311, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1311
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1311, !tbaa !852
  tail call void %9(%struct._object* %call5.i) #1, !dbg !1311
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then.10.i, %if.else, %if.end
  %retval.0 = phi i8* [ %call1, %if.end ], [ %call1, %if.else ], [ null, %if.then.10.i ], [ null, %if.then.i ]
  ret i8* %retval.0, !dbg !1313
}

; Function Attrs: nounwind uwtable
define %struct.PyModuleDef* @PyModule_GetDef(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !633, metadata !817), !dbg !1314
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1315
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1315, !tbaa !851
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1315
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1315

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1317
  %tobool = icmp eq i32 %call, 0, !dbg !1317
  br i1 %tobool, label %if.then, label %if.end, !dbg !1319

if.then:                                          ; preds = %lor.lhs.false
  %call2 = tail call i32 @PyErr_BadArgument() #1, !dbg !1320
  br label %return, !dbg !1322

if.end:                                           ; preds = %lor.lhs.false, %entry
  %md_def = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, i32 1, !dbg !1323
  %1 = bitcast %struct._typeobject** %md_def to %struct.PyModuleDef**, !dbg !1323
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %1, align 8, !dbg !1323, !tbaa !1176
  br label %return, !dbg !1324

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.PyModuleDef* [ %2, %if.end ], [ null, %if.then ]
  ret %struct.PyModuleDef* %retval.0, !dbg !1325
}

; Function Attrs: nounwind uwtable
define i8* @PyModule_GetState(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !638, metadata !817), !dbg !1326
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %m, i64 0, i32 1, !dbg !1327
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1327, !tbaa !851
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*), !dbg !1327
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1327

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type to %struct._typeobject*)) #1, !dbg !1329
  %tobool = icmp eq i32 %call, 0, !dbg !1329
  br i1 %tobool, label %if.then, label %if.end, !dbg !1331

if.then:                                          ; preds = %lor.lhs.false
  %call2 = tail call i32 @PyErr_BadArgument() #1, !dbg !1332
  br label %return, !dbg !1334

if.end:                                           ; preds = %lor.lhs.false, %entry
  %md_state = getelementptr inbounds %struct._object, %struct._object* %m, i64 2, !dbg !1335
  %1 = bitcast %struct._object* %md_state to i8**, !dbg !1335
  %2 = load i8*, i8** %1, align 8, !dbg !1335, !tbaa !1011
  br label %return, !dbg !1336

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %2, %if.end ], [ null, %if.then ]
  ret i8* %retval.0, !dbg !1337
}

; Function Attrs: nounwind uwtable
define void @_PyModule_Clear(%struct._object* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !641, metadata !817), !dbg !1338
  %md_dict = getelementptr inbounds %struct._object, %struct._object* %m, i64 1, !dbg !1339
  %0 = bitcast %struct._object* %md_dict to %struct._object**, !dbg !1339
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1339, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !642, metadata !817), !dbg !1340
  %cmp = icmp eq %struct._object* %1, null, !dbg !1341
  br i1 %cmp, label %if.end, label %if.then, !dbg !1343

if.then:                                          ; preds = %entry
  tail call void @_PyModule_ClearDict(%struct._object* %1), !dbg !1344
  br label %if.end, !dbg !1344

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1345
}

; Function Attrs: nounwind uwtable
define void @_PyModule_ClearDict(%struct._object* %d) #0 {
entry:
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %d, i64 0, metadata !645, metadata !817), !dbg !1346
  %0 = bitcast i64* %pos to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1347
  %1 = bitcast %struct._object** %key to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1348
  %2 = bitcast %struct._object** %value to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !646, metadata !817), !dbg !1349
  store i64 0, i64* %pos, align 8, !dbg !1350, !tbaa !968
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !646, metadata !817), !dbg !1349
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !648, metadata !817), !dbg !1352
  %call.329 = call i32 @PyDict_Next(%struct._object* %d, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1353
  %tobool.330 = icmp eq i32 %call.329, 0, !dbg !1354
  br i1 %tobool.330, label %while.end, label %while.body.preheader, !dbg !1354

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !1352

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !648, metadata !817), !dbg !1352
  %3 = load %struct._object*, %struct._object** %value, align 8, !dbg !1355, !tbaa !981
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !1356
  br i1 %cmp, label %while.cond.backedge, label %land.lhs.true, !dbg !1357

land.lhs.true:                                    ; preds = %while.body
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %4 = load %struct._object*, %struct._object** %key, align 8, !dbg !1358, !tbaa !981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1359
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1359, !tbaa !851
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1359
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1359, !tbaa !1212
  %and = and i64 %6, 268435456, !dbg !1359
  %cmp1 = icmp eq i64 %and, 0, !dbg !1359
  br i1 %cmp1, label %while.cond.backedge, label %if.then, !dbg !1361

if.then:                                          ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct._object, %struct._object* %4, i64 2, !dbg !1362
  %7 = bitcast %struct._object* %state to i32*, !dbg !1362
  %bf.load = load i32, i32* %7, align 4, !dbg !1363
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1362
  %bf.clear = and i32 %bf.lshr, 7, !dbg !1362
  %cmp2 = icmp eq i32 %bf.clear, 1, !dbg !1362
  br i1 %cmp2, label %cond.true, label %cond.false.19, !dbg !1362

cond.true:                                        ; preds = %if.then
  %bf.clear6 = and i32 %bf.load, 32, !dbg !1364
  %tobool7 = icmp eq i32 %bf.clear6, 0, !dbg !1364
  br i1 %tobool7, label %cond.false.16, label %cond.true.8, !dbg !1364

cond.true.8:                                      ; preds = %cond.true
  %bf.clear12 = and i32 %bf.load, 64, !dbg !1366
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !1366
  %add.ptr = getelementptr %struct._object, %struct._object* %4, i64 3, !dbg !1368
  %8 = bitcast %struct._object* %add.ptr to i8*, !dbg !1368
  %add.ptr15 = getelementptr %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1370
  %9 = bitcast %struct._typeobject** %add.ptr15 to i8*, !dbg !1370
  %cond = select i1 %tobool13, i8* %8, i8* %9, !dbg !1366
  br label %cond.end.17, !dbg !1366

cond.false.16:                                    ; preds = %cond.true
  %data = getelementptr inbounds %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1372
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !1372
  %10 = load i8*, i8** %any, align 8, !dbg !1372, !tbaa !981
  br label %cond.end.17, !dbg !1372

cond.end.17:                                      ; preds = %cond.true.8, %cond.false.16
  %cond18 = phi i8* [ %10, %cond.false.16 ], [ %cond, %cond.true.8 ], !dbg !1362
  %11 = load i8, i8* %cond18, align 1, !dbg !1374, !tbaa !1377
  %conv = zext i8 %11 to i32, !dbg !1374
  br label %cond.end.77, !dbg !1374

cond.false.19:                                    ; preds = %if.then
  %cmp24 = icmp eq i32 %bf.clear, 2, !dbg !1378
  %bf.clear30 = and i32 %bf.load, 32, !dbg !1380
  %tobool31 = icmp ne i32 %bf.clear30, 0, !dbg !1380
  br i1 %cmp24, label %cond.true.26, label %cond.false.51, !dbg !1378

cond.true.26:                                     ; preds = %cond.false.19
  br i1 %tobool31, label %cond.true.32, label %cond.false.44, !dbg !1380

cond.true.32:                                     ; preds = %cond.true.26
  %bf.clear36 = and i32 %bf.load, 64, !dbg !1382
  %tobool37 = icmp ne i32 %bf.clear36, 0, !dbg !1382
  %add.ptr39 = getelementptr %struct._object, %struct._object* %4, i64 3, !dbg !1384
  %12 = bitcast %struct._object* %add.ptr39 to i8*, !dbg !1384
  %add.ptr41 = getelementptr %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1386
  %13 = bitcast %struct._typeobject** %add.ptr41 to i8*, !dbg !1386
  %cond43 = select i1 %tobool37, i8* %12, i8* %13, !dbg !1382
  br label %cond.end.47, !dbg !1382

cond.false.44:                                    ; preds = %cond.true.26
  %data45 = getelementptr inbounds %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1388
  %any46 = bitcast %struct._typeobject** %data45 to i8**, !dbg !1388
  %14 = load i8*, i8** %any46, align 8, !dbg !1388, !tbaa !981
  br label %cond.end.47, !dbg !1388

cond.end.47:                                      ; preds = %cond.true.32, %cond.false.44
  %cond48 = phi i8* [ %14, %cond.false.44 ], [ %cond43, %cond.true.32 ], !dbg !1362
  %15 = bitcast i8* %cond48 to i16*, !dbg !1390
  %16 = load i16, i16* %15, align 2, !dbg !1390, !tbaa !1393
  %conv50 = zext i16 %16 to i32, !dbg !1390
  br label %cond.end.77, !dbg !1390

cond.false.51:                                    ; preds = %cond.false.19
  br i1 %tobool31, label %cond.true.57, label %cond.false.69, !dbg !1395

cond.true.57:                                     ; preds = %cond.false.51
  %bf.clear61 = and i32 %bf.load, 64, !dbg !1397
  %tobool62 = icmp ne i32 %bf.clear61, 0, !dbg !1397
  %add.ptr64 = getelementptr %struct._object, %struct._object* %4, i64 3, !dbg !1399
  %17 = bitcast %struct._object* %add.ptr64 to i8*, !dbg !1399
  %add.ptr66 = getelementptr %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1401
  %18 = bitcast %struct._typeobject** %add.ptr66 to i8*, !dbg !1401
  %cond68 = select i1 %tobool62, i8* %17, i8* %18, !dbg !1397
  br label %cond.end.72, !dbg !1397

cond.false.69:                                    ; preds = %cond.false.51
  %data70 = getelementptr inbounds %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1403
  %any71 = bitcast %struct._typeobject** %data70 to i8**, !dbg !1403
  %19 = load i8*, i8** %any71, align 8, !dbg !1403, !tbaa !981
  br label %cond.end.72, !dbg !1403

cond.end.72:                                      ; preds = %cond.true.57, %cond.false.69
  %cond73 = phi i8* [ %19, %cond.false.69 ], [ %cond68, %cond.true.57 ], !dbg !1362
  %20 = bitcast i8* %cond73 to i32*, !dbg !1405
  %21 = load i32, i32* %20, align 4, !dbg !1405, !tbaa !1408
  br label %cond.end.77, !dbg !1405

cond.end.77:                                      ; preds = %cond.end.47, %cond.end.72, %cond.end.17
  %cond78 = phi i32 [ %conv, %cond.end.17 ], [ %conv50, %cond.end.47 ], [ %21, %cond.end.72 ], !dbg !1362
  %cmp79 = icmp eq i32 %cond78, 95, !dbg !1409
  br i1 %cmp79, label %land.lhs.true.81, label %while.cond.backedge, !dbg !1412

while.cond.backedge:                              ; preds = %cond.end.77, %if.then.187, %while.body, %land.lhs.true, %cond.end.171, %if.end.183
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !646, metadata !817), !dbg !1349
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !648, metadata !817), !dbg !1352
  %call = call i32 @PyDict_Next(%struct._object* %d, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1353
  %tobool = icmp eq i32 %call, 0, !dbg !1354
  br i1 %tobool, label %while.end.loopexit, label %while.body, !dbg !1354

land.lhs.true.81:                                 ; preds = %cond.end.77
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  br i1 %cmp2, label %cond.true.88, label %cond.false.113, !dbg !1363

cond.true.88:                                     ; preds = %land.lhs.true.81
  %bf.clear92 = and i32 %bf.load, 32, !dbg !1413
  %tobool93 = icmp eq i32 %bf.clear92, 0, !dbg !1413
  br i1 %tobool93, label %cond.false.106, label %cond.true.94, !dbg !1413

cond.true.94:                                     ; preds = %cond.true.88
  %bf.clear98 = and i32 %bf.load, 64, !dbg !1414
  %tobool99 = icmp ne i32 %bf.clear98, 0, !dbg !1414
  %add.ptr101 = getelementptr %struct._object, %struct._object* %4, i64 3, !dbg !1415
  %22 = bitcast %struct._object* %add.ptr101 to i8*, !dbg !1415
  %add.ptr103 = getelementptr %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1416
  %23 = bitcast %struct._typeobject** %add.ptr103 to i8*, !dbg !1416
  %cond105 = select i1 %tobool99, i8* %22, i8* %23, !dbg !1414
  br label %cond.end.109, !dbg !1414

cond.false.106:                                   ; preds = %cond.true.88
  %data107 = getelementptr inbounds %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1417
  %any108 = bitcast %struct._typeobject** %data107 to i8**, !dbg !1417
  %24 = load i8*, i8** %any108, align 8, !dbg !1417, !tbaa !981
  br label %cond.end.109, !dbg !1417

cond.end.109:                                     ; preds = %cond.true.94, %cond.false.106
  %cond110 = phi i8* [ %24, %cond.false.106 ], [ %cond105, %cond.true.94 ], !dbg !1363
  %arrayidx111 = getelementptr i8, i8* %cond110, i64 1, !dbg !1418
  %25 = load i8, i8* %arrayidx111, align 1, !dbg !1418, !tbaa !1377
  %conv112 = zext i8 %25 to i32, !dbg !1418
  br label %cond.end.171, !dbg !1418

cond.false.113:                                   ; preds = %land.lhs.true.81
  %cmp118 = icmp eq i32 %bf.clear, 2, !dbg !1419
  %bf.clear124 = and i32 %bf.load, 32, !dbg !1420
  %tobool125 = icmp ne i32 %bf.clear124, 0, !dbg !1420
  br i1 %cmp118, label %cond.true.120, label %cond.false.145, !dbg !1419

cond.true.120:                                    ; preds = %cond.false.113
  br i1 %tobool125, label %cond.true.126, label %cond.false.138, !dbg !1420

cond.true.126:                                    ; preds = %cond.true.120
  %bf.clear130 = and i32 %bf.load, 64, !dbg !1421
  %tobool131 = icmp ne i32 %bf.clear130, 0, !dbg !1421
  %add.ptr133 = getelementptr %struct._object, %struct._object* %4, i64 3, !dbg !1422
  %26 = bitcast %struct._object* %add.ptr133 to i8*, !dbg !1422
  %add.ptr135 = getelementptr %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1423
  %27 = bitcast %struct._typeobject** %add.ptr135 to i8*, !dbg !1423
  %cond137 = select i1 %tobool131, i8* %26, i8* %27, !dbg !1421
  br label %cond.end.141, !dbg !1421

cond.false.138:                                   ; preds = %cond.true.120
  %data139 = getelementptr inbounds %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1424
  %any140 = bitcast %struct._typeobject** %data139 to i8**, !dbg !1424
  %28 = load i8*, i8** %any140, align 8, !dbg !1424, !tbaa !981
  br label %cond.end.141, !dbg !1424

cond.end.141:                                     ; preds = %cond.true.126, %cond.false.138
  %cond142 = phi i8* [ %28, %cond.false.138 ], [ %cond137, %cond.true.126 ], !dbg !1363
  %arrayidx143 = getelementptr i8, i8* %cond142, i64 2, !dbg !1425
  %29 = bitcast i8* %arrayidx143 to i16*, !dbg !1425
  %30 = load i16, i16* %29, align 2, !dbg !1425, !tbaa !1393
  %conv144 = zext i16 %30 to i32, !dbg !1425
  br label %cond.end.171, !dbg !1425

cond.false.145:                                   ; preds = %cond.false.113
  br i1 %tobool125, label %cond.true.151, label %cond.false.163, !dbg !1426

cond.true.151:                                    ; preds = %cond.false.145
  %bf.clear155 = and i32 %bf.load, 64, !dbg !1427
  %tobool156 = icmp ne i32 %bf.clear155, 0, !dbg !1427
  %add.ptr158 = getelementptr %struct._object, %struct._object* %4, i64 3, !dbg !1428
  %31 = bitcast %struct._object* %add.ptr158 to i8*, !dbg !1428
  %add.ptr160 = getelementptr %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1429
  %32 = bitcast %struct._typeobject** %add.ptr160 to i8*, !dbg !1429
  %cond162 = select i1 %tobool156, i8* %31, i8* %32, !dbg !1427
  br label %cond.end.166, !dbg !1427

cond.false.163:                                   ; preds = %cond.false.145
  %data164 = getelementptr inbounds %struct._object, %struct._object* %4, i64 4, i32 1, !dbg !1430
  %any165 = bitcast %struct._typeobject** %data164 to i8**, !dbg !1430
  %33 = load i8*, i8** %any165, align 8, !dbg !1430, !tbaa !981
  br label %cond.end.166, !dbg !1430

cond.end.166:                                     ; preds = %cond.true.151, %cond.false.163
  %cond167 = phi i8* [ %33, %cond.false.163 ], [ %cond162, %cond.true.151 ], !dbg !1363
  %arrayidx168 = getelementptr i8, i8* %cond167, i64 4, !dbg !1431
  %34 = bitcast i8* %arrayidx168 to i32*, !dbg !1431
  %35 = load i32, i32* %34, align 4, !dbg !1431, !tbaa !1408
  br label %cond.end.171, !dbg !1431

cond.end.171:                                     ; preds = %cond.end.141, %cond.end.166, %cond.end.109
  %cond172 = phi i32 [ %conv112, %cond.end.109 ], [ %conv144, %cond.end.141 ], [ %35, %cond.end.166 ], !dbg !1363
  %cmp173 = icmp eq i32 %cond172, 95, !dbg !1432
  br i1 %cmp173, label %while.cond.backedge, label %if.then.175, !dbg !1433

if.then.175:                                      ; preds = %cond.end.171
  %36 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1434, !tbaa !1408
  %cmp176 = icmp sgt i32 %36, 1, !dbg !1435
  br i1 %cmp176, label %if.then.178, label %if.end.183, !dbg !1436

if.then.178:                                      ; preds = %if.then.175
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %call179 = call i8* @PyUnicode_AsUTF8(%struct._object* %4) #1, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %call179, i64 0, metadata !649, metadata !817), !dbg !1438
  %cmp180 = icmp eq i8* %call179, null, !dbg !1439
  br i1 %cmp180, label %if.else, label %if.then.182, !dbg !1441

if.then.182:                                      ; preds = %if.then.178
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %call179) #1, !dbg !1442
  br label %if.end.183, !dbg !1442

if.else:                                          ; preds = %if.then.178
  call void @PyErr_Clear() #1, !dbg !1443
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %if.else, %if.then.175
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %37 = load %struct._object*, %struct._object** %key, align 8, !dbg !1444, !tbaa !981
  %call184 = call i32 @PyDict_SetItem(%struct._object* %d, %struct._object* %37, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1446
  %cmp185 = icmp eq i32 %call184, 0, !dbg !1447
  br i1 %cmp185, label %while.cond.backedge, label %if.then.187, !dbg !1448

if.then.187:                                      ; preds = %if.end.183
  call void @PyErr_Clear() #1, !dbg !1449
  br label %while.cond.backedge, !dbg !1449

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end, !dbg !1349

while.end:                                        ; preds = %while.end.loopexit, %entry
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !646, metadata !817), !dbg !1349
  store i64 0, i64* %pos, align 8, !dbg !1450, !tbaa !968
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !646, metadata !817), !dbg !1349
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !648, metadata !817), !dbg !1352
  %call192.327 = call i32 @PyDict_Next(%struct._object* %d, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1451
  %tobool193.328 = icmp eq i32 %call192.327, 0, !dbg !1452
  br i1 %tobool193.328, label %while.end.319, label %while.body.194.preheader, !dbg !1452

while.body.194.preheader:                         ; preds = %while.end
  br label %while.body.194, !dbg !1352

while.body.194:                                   ; preds = %while.body.194.preheader, %while.cond.191.backedge
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !648, metadata !817), !dbg !1352
  %38 = load %struct._object*, %struct._object** %value, align 8, !dbg !1453, !tbaa !981
  %cmp195 = icmp eq %struct._object* %38, @_Py_NoneStruct, !dbg !1454
  br i1 %cmp195, label %while.cond.191.backedge, label %land.lhs.true.197, !dbg !1455

land.lhs.true.197:                                ; preds = %while.body.194
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %39 = load %struct._object*, %struct._object** %key, align 8, !dbg !1456, !tbaa !981
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 1, !dbg !1457
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8, !dbg !1457, !tbaa !851
  %tp_flags199 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 19, !dbg !1457
  %41 = load i64, i64* %tp_flags199, align 8, !dbg !1457, !tbaa !1212
  %and200 = and i64 %41, 268435456, !dbg !1457
  %cmp201 = icmp eq i64 %and200, 0, !dbg !1457
  br i1 %cmp201, label %while.cond.191.backedge, label %if.then.203, !dbg !1459

if.then.203:                                      ; preds = %land.lhs.true.197
  %state204 = getelementptr inbounds %struct._object, %struct._object* %39, i64 2, !dbg !1460
  %42 = bitcast %struct._object* %state204 to i32*, !dbg !1460
  %bf.load205 = load i32, i32* %42, align 4, !dbg !1460
  %bf.lshr206 = lshr i32 %bf.load205, 2, !dbg !1460
  %bf.clear207 = and i32 %bf.lshr206, 7, !dbg !1460
  %cmp208 = icmp eq i32 %bf.clear207, 1, !dbg !1460
  br i1 %cmp208, label %cond.true.210, label %cond.false.235, !dbg !1460

cond.true.210:                                    ; preds = %if.then.203
  %bf.clear214 = and i32 %bf.load205, 32, !dbg !1461
  %tobool215 = icmp eq i32 %bf.clear214, 0, !dbg !1461
  br i1 %tobool215, label %cond.false.228, label %cond.true.216, !dbg !1461

cond.true.216:                                    ; preds = %cond.true.210
  %bf.clear220 = and i32 %bf.load205, 64, !dbg !1463
  %tobool221 = icmp ne i32 %bf.clear220, 0, !dbg !1463
  %add.ptr223 = getelementptr %struct._object, %struct._object* %39, i64 3, !dbg !1465
  %43 = bitcast %struct._object* %add.ptr223 to i8*, !dbg !1465
  %add.ptr225 = getelementptr %struct._object, %struct._object* %39, i64 4, i32 1, !dbg !1467
  %44 = bitcast %struct._typeobject** %add.ptr225 to i8*, !dbg !1467
  %cond227 = select i1 %tobool221, i8* %43, i8* %44, !dbg !1463
  br label %cond.end.231, !dbg !1463

cond.false.228:                                   ; preds = %cond.true.210
  %data229 = getelementptr inbounds %struct._object, %struct._object* %39, i64 4, i32 1, !dbg !1469
  %any230 = bitcast %struct._typeobject** %data229 to i8**, !dbg !1469
  %45 = load i8*, i8** %any230, align 8, !dbg !1469, !tbaa !981
  br label %cond.end.231, !dbg !1469

cond.end.231:                                     ; preds = %cond.true.216, %cond.false.228
  %cond232 = phi i8* [ %45, %cond.false.228 ], [ %cond227, %cond.true.216 ], !dbg !1460
  %46 = load i8, i8* %cond232, align 1, !dbg !1471, !tbaa !1377
  %conv234 = zext i8 %46 to i32, !dbg !1471
  br label %cond.end.293, !dbg !1471

cond.false.235:                                   ; preds = %if.then.203
  %cmp240 = icmp eq i32 %bf.clear207, 2, !dbg !1474
  %bf.clear246 = and i32 %bf.load205, 32, !dbg !1476
  %tobool247 = icmp ne i32 %bf.clear246, 0, !dbg !1476
  br i1 %cmp240, label %cond.true.242, label %cond.false.267, !dbg !1474

cond.true.242:                                    ; preds = %cond.false.235
  br i1 %tobool247, label %cond.true.248, label %cond.false.260, !dbg !1476

cond.true.248:                                    ; preds = %cond.true.242
  %bf.clear252 = and i32 %bf.load205, 64, !dbg !1478
  %tobool253 = icmp ne i32 %bf.clear252, 0, !dbg !1478
  %add.ptr255 = getelementptr %struct._object, %struct._object* %39, i64 3, !dbg !1480
  %47 = bitcast %struct._object* %add.ptr255 to i8*, !dbg !1480
  %add.ptr257 = getelementptr %struct._object, %struct._object* %39, i64 4, i32 1, !dbg !1482
  %48 = bitcast %struct._typeobject** %add.ptr257 to i8*, !dbg !1482
  %cond259 = select i1 %tobool253, i8* %47, i8* %48, !dbg !1478
  br label %cond.end.263, !dbg !1478

cond.false.260:                                   ; preds = %cond.true.242
  %data261 = getelementptr inbounds %struct._object, %struct._object* %39, i64 4, i32 1, !dbg !1484
  %any262 = bitcast %struct._typeobject** %data261 to i8**, !dbg !1484
  %49 = load i8*, i8** %any262, align 8, !dbg !1484, !tbaa !981
  br label %cond.end.263, !dbg !1484

cond.end.263:                                     ; preds = %cond.true.248, %cond.false.260
  %cond264 = phi i8* [ %49, %cond.false.260 ], [ %cond259, %cond.true.248 ], !dbg !1460
  %50 = bitcast i8* %cond264 to i16*, !dbg !1486
  %51 = load i16, i16* %50, align 2, !dbg !1486, !tbaa !1393
  %conv266 = zext i16 %51 to i32, !dbg !1486
  br label %cond.end.293, !dbg !1486

cond.false.267:                                   ; preds = %cond.false.235
  br i1 %tobool247, label %cond.true.273, label %cond.false.285, !dbg !1489

cond.true.273:                                    ; preds = %cond.false.267
  %bf.clear277 = and i32 %bf.load205, 64, !dbg !1491
  %tobool278 = icmp ne i32 %bf.clear277, 0, !dbg !1491
  %add.ptr280 = getelementptr %struct._object, %struct._object* %39, i64 3, !dbg !1493
  %52 = bitcast %struct._object* %add.ptr280 to i8*, !dbg !1493
  %add.ptr282 = getelementptr %struct._object, %struct._object* %39, i64 4, i32 1, !dbg !1495
  %53 = bitcast %struct._typeobject** %add.ptr282 to i8*, !dbg !1495
  %cond284 = select i1 %tobool278, i8* %52, i8* %53, !dbg !1491
  br label %cond.end.288, !dbg !1491

cond.false.285:                                   ; preds = %cond.false.267
  %data286 = getelementptr inbounds %struct._object, %struct._object* %39, i64 4, i32 1, !dbg !1497
  %any287 = bitcast %struct._typeobject** %data286 to i8**, !dbg !1497
  %54 = load i8*, i8** %any287, align 8, !dbg !1497, !tbaa !981
  br label %cond.end.288, !dbg !1497

cond.end.288:                                     ; preds = %cond.true.273, %cond.false.285
  %cond289 = phi i8* [ %54, %cond.false.285 ], [ %cond284, %cond.true.273 ], !dbg !1460
  %55 = bitcast i8* %cond289 to i32*, !dbg !1499
  %56 = load i32, i32* %55, align 4, !dbg !1499, !tbaa !1408
  br label %cond.end.293, !dbg !1499

cond.end.293:                                     ; preds = %cond.end.263, %cond.end.288, %cond.end.231
  %cond294 = phi i32 [ %conv234, %cond.end.231 ], [ %conv266, %cond.end.263 ], [ %56, %cond.end.288 ], !dbg !1460
  %cmp295 = icmp eq i32 %cond294, 95, !dbg !1502
  br i1 %cmp295, label %lor.lhs.false, label %if.then.300, !dbg !1505

lor.lhs.false:                                    ; preds = %cond.end.293
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %call297 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1506
  %cmp298 = icmp eq i32 %call297, 0, !dbg !1507
  br i1 %cmp298, label %while.cond.191.backedge, label %if.then.300, !dbg !1508

if.then.300:                                      ; preds = %lor.lhs.false, %cond.end.293
  %57 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1509, !tbaa !1408
  %cmp301 = icmp sgt i32 %57, 1, !dbg !1510
  br i1 %cmp301, label %if.then.303, label %if.end.311, !dbg !1511

if.then.303:                                      ; preds = %if.then.300
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %58 = load %struct._object*, %struct._object** %key, align 8, !dbg !1512, !tbaa !981
  %call305 = call i8* @PyUnicode_AsUTF8(%struct._object* %58) #1, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %call305, i64 0, metadata !657, metadata !817), !dbg !1514
  %cmp306 = icmp eq i8* %call305, null, !dbg !1515
  br i1 %cmp306, label %if.else.309, label %if.then.308, !dbg !1517

if.then.308:                                      ; preds = %if.then.303
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %call305) #1, !dbg !1518
  br label %if.end.311, !dbg !1518

if.else.309:                                      ; preds = %if.then.303
  call void @PyErr_Clear() #1, !dbg !1519
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.308, %if.else.309, %if.then.300
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  %59 = load %struct._object*, %struct._object** %key, align 8, !dbg !1520, !tbaa !981
  %call312 = call i32 @PyDict_SetItem(%struct._object* %d, %struct._object* %59, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1522
  %cmp313 = icmp eq i32 %call312, 0, !dbg !1523
  br i1 %cmp313, label %while.cond.191.backedge, label %if.then.315, !dbg !1524

if.then.315:                                      ; preds = %if.end.311
  call void @PyErr_Clear() #1, !dbg !1525
  br label %while.cond.191.backedge, !dbg !1525

while.cond.191.backedge:                          ; preds = %if.then.315, %while.body.194, %land.lhs.true.197, %lor.lhs.false, %if.end.311
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !646, metadata !817), !dbg !1349
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !647, metadata !817), !dbg !1351
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !648, metadata !817), !dbg !1352
  %call192 = call i32 @PyDict_Next(%struct._object* %d, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1451
  %tobool193 = icmp eq i32 %call192, 0, !dbg !1452
  br i1 %tobool193, label %while.end.319.loopexit, label %while.body.194, !dbg !1452

while.end.319.loopexit:                           ; preds = %while.cond.191.backedge
  br label %while.end.319, !dbg !1526

while.end.319:                                    ; preds = %while.end.319.loopexit, %while.end
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1526
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1526
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1526
  ret void, !dbg !1526
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #2

declare void @PySys_WriteStderr(i8*, ...) #2

declare void @PyErr_Clear() #2

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @module_dealloc(%struct.PyModuleObject* %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %m, i64 0, metadata !684, metadata !817), !dbg !1527
  %0 = bitcast %struct.PyModuleObject* %m to i8*, !dbg !1528
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !1529
  %1 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1530, !tbaa !1408
  %tobool = icmp eq i32 %1, 0, !dbg !1530
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1532

land.lhs.true:                                    ; preds = %entry
  %md_name = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 5, !dbg !1533
  %2 = load %struct._object*, %struct._object** %md_name, align 8, !dbg !1533, !tbaa !892
  %tobool1 = icmp eq %struct._object* %2, null, !dbg !1534
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1535

if.then:                                          ; preds = %land.lhs.true
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), %struct._object* %2) #1, !dbg !1536
  br label %if.end, !dbg !1538

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %md_weaklist = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 4, !dbg !1539
  %3 = load %struct._object*, %struct._object** %md_weaklist, align 8, !dbg !1539, !tbaa !1541
  %cmp = icmp eq %struct._object* %3, null, !dbg !1542
  br i1 %cmp, label %if.end.4, label %if.then.3, !dbg !1543

if.then.3:                                        ; preds = %if.end
  %4 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 0, !dbg !1544
  tail call void @PyObject_ClearWeakRefs(%struct._object* %4) #1, !dbg !1545
  br label %if.end.4, !dbg !1545

if.end.4:                                         ; preds = %if.end, %if.then.3
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 2, !dbg !1546
  %5 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !1546, !tbaa !1176
  %tobool5 = icmp eq %struct.PyModuleDef* %5, null, !dbg !1548
  br i1 %tobool5, label %do.body, label %land.lhs.true.6, !dbg !1549

land.lhs.true.6:                                  ; preds = %if.end.4
  %m_free = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %5, i64 0, i32 8, !dbg !1550
  %6 = load void (i8*)*, void (i8*)** %m_free, align 8, !dbg !1550, !tbaa !1551
  %tobool8 = icmp eq void (i8*)* %6, null, !dbg !1552
  br i1 %tobool8, label %do.body, label %if.then.9, !dbg !1553

if.then.9:                                        ; preds = %land.lhs.true.6
  tail call void %6(i8* %0) #1, !dbg !1554
  br label %do.body, !dbg !1554

do.body:                                          ; preds = %land.lhs.true.6, %if.end.4, %if.then.9
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 1, !dbg !1555
  %7 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1555, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !685, metadata !817), !dbg !1555
  %cmp13 = icmp eq %struct._object* %7, null, !dbg !1557
  br i1 %cmp13, label %if.end.19, label %do.body.15, !dbg !1558

do.body.15:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !687, metadata !817), !dbg !1559
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !1561
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1561, !tbaa !847
  %dec = add i64 %8, -1, !dbg !1561
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1561, !tbaa !847
  %cmp16 = icmp eq i64 %dec, 0, !dbg !1561
  br i1 %cmp16, label %if.else, label %if.end.19, !dbg !1563

if.else:                                          ; preds = %do.body.15
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1564
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1564, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1564
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1564, !tbaa !852
  tail call void %10(%struct._object* %7) #1, !dbg !1564
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %do.body.15, %do.body
  %md_name24 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 5, !dbg !1566
  %11 = load %struct._object*, %struct._object** %md_name24, align 8, !dbg !1566, !tbaa !892
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !690, metadata !817), !dbg !1566
  %cmp25 = icmp eq %struct._object* %11, null, !dbg !1568
  br i1 %cmp25, label %if.end.39, label %do.body.27, !dbg !1569

do.body.27:                                       ; preds = %if.end.19
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !692, metadata !817), !dbg !1570
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1572
  %12 = load i64, i64* %ob_refcnt29, align 8, !dbg !1572, !tbaa !847
  %dec30 = add i64 %12, -1, !dbg !1572
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !1572, !tbaa !847
  %cmp31 = icmp eq i64 %dec30, 0, !dbg !1572
  br i1 %cmp31, label %if.else.33, label %if.end.39, !dbg !1574

if.else.33:                                       ; preds = %do.body.27
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !1575
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1575, !tbaa !851
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1575
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !1575, !tbaa !852
  tail call void %14(%struct._object* %11) #1, !dbg !1575
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.33, %do.body.27, %if.end.19
  %md_state = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 3, !dbg !1577
  %15 = load i8*, i8** %md_state, align 8, !dbg !1577, !tbaa !1011
  %cmp42 = icmp eq i8* %15, null, !dbg !1579
  br i1 %cmp42, label %if.end.45, label %if.then.43, !dbg !1580

if.then.43:                                       ; preds = %if.end.39
  tail call void @PyMem_Free(i8* %15) #1, !dbg !1581
  br label %if.end.45, !dbg !1581

if.end.45:                                        ; preds = %if.end.39, %if.then.43
  %ob_type46 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 0, i32 1, !dbg !1582
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !1582, !tbaa !851
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 38, !dbg !1583
  %17 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1583, !tbaa !1584
  tail call void %17(i8* %0) #1, !dbg !1582
  ret void, !dbg !1585
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_repr(%struct.PyModuleObject* %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %m, i64 0, metadata !699, metadata !817), !dbg !1586
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !701, metadata !817), !dbg !1587
  tail call void @llvm.dbg.value(metadata !1588, i64 0, metadata !709, metadata !817), !dbg !1587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !712, metadata !817), !dbg !1587
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1589, !tbaa !981
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !708, metadata !817), !dbg !1587
  %interp5 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1592
  %1 = bitcast i8* %interp5 to %struct._is**, !dbg !1592
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !1592, !tbaa !945
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !714, metadata !817), !dbg !1593
  %importlib = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 6, !dbg !1594
  %3 = load %struct._object*, %struct._object** %importlib, align 8, !dbg !1594, !tbaa !1595
  %call = tail call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %struct.PyModuleObject* %m) #1, !dbg !1596
  ret %struct._object* %call, !dbg !1597
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @module_traverse(%struct.PyModuleObject* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %m, i64 0, metadata !736, metadata !817), !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !737, metadata !817), !dbg !1599
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !738, metadata !817), !dbg !1600
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 2, !dbg !1601
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !1601, !tbaa !1176
  %tobool = icmp eq %struct.PyModuleDef* %0, null, !dbg !1602
  br i1 %tobool, label %do.body, label %land.lhs.true, !dbg !1603

land.lhs.true:                                    ; preds = %entry
  %m_traverse = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %0, i64 0, i32 6, !dbg !1604
  %1 = load i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)** %m_traverse, align 8, !dbg !1604, !tbaa !1605
  %tobool2 = icmp eq i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* %1, null, !dbg !1606
  br i1 %tobool2, label %do.body, label %if.then, !dbg !1607

if.then:                                          ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 0, !dbg !1608
  %call = tail call i32 %1(%struct._object* %2, i32 (%struct._object*, i8*)* %visit, i8* %arg) #1, !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !739, metadata !817), !dbg !1610
  %tobool5 = icmp eq i32 %call, 0, !dbg !1611
  br i1 %tobool5, label %do.body, label %return

do.body:                                          ; preds = %land.lhs.true, %entry, %if.then
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 1, !dbg !1613
  %3 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1613, !tbaa !829
  %tobool8 = icmp eq %struct._object* %3, null, !dbg !1613
  br i1 %tobool8, label %do.end, label %if.then.9, !dbg !1615

if.then.9:                                        ; preds = %do.body
  %call11 = tail call i32 %visit(%struct._object* %3, i8* %arg) #1, !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %call11, i64 0, metadata !742, metadata !817), !dbg !1616
  %tobool12 = icmp eq i32 %call11, 0, !dbg !1618
  br i1 %tobool12, label %do.end, label %return

do.end:                                           ; preds = %do.body, %if.then.9
  br label %return, !dbg !1620

return:                                           ; preds = %if.then.9, %if.then, %do.end
  %retval.3 = phi i32 [ 0, %do.end ], [ %call11, %if.then.9 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !1621
}

; Function Attrs: nounwind uwtable
define internal i32 @module_clear(%struct.PyModuleObject* %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %m, i64 0, metadata !750, metadata !817), !dbg !1622
  %md_def = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 2, !dbg !1623
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %md_def, align 8, !dbg !1623, !tbaa !1176
  %tobool = icmp eq %struct.PyModuleDef* %0, null, !dbg !1624
  br i1 %tobool, label %do.body, label %land.lhs.true, !dbg !1625

land.lhs.true:                                    ; preds = %entry
  %m_clear = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %0, i64 0, i32 7, !dbg !1626
  %1 = load i32 (%struct._object*)*, i32 (%struct._object*)** %m_clear, align 8, !dbg !1626, !tbaa !1627
  %tobool2 = icmp eq i32 (%struct._object*)* %1, null, !dbg !1628
  br i1 %tobool2, label %do.body, label %if.then, !dbg !1629

if.then:                                          ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 0, !dbg !1630
  %call = tail call i32 %1(%struct._object* %2) #1, !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !751, metadata !817), !dbg !1632
  %tobool5 = icmp eq i32 %call, 0, !dbg !1633
  br i1 %tobool5, label %do.body, label %return

do.body:                                          ; preds = %land.lhs.true, %entry, %if.then
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 1, !dbg !1635
  %3 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1635, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !754, metadata !817), !dbg !1635
  %cmp = icmp eq %struct._object* %3, null, !dbg !1637
  br i1 %cmp, label %return, label %if.then.8, !dbg !1638

if.then.8:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %md_dict, align 8, !dbg !1639, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !756, metadata !817), !dbg !1641
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1643
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1643, !tbaa !847
  %dec = add i64 %4, -1, !dbg !1643
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1643, !tbaa !847
  %cmp11 = icmp eq i64 %dec, 0, !dbg !1643
  br i1 %cmp11, label %if.else, label %return, !dbg !1645

if.else:                                          ; preds = %if.then.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1646
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1646, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1646
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1646, !tbaa !852
  tail call void %6(%struct._object* %3) #1, !dbg !1646
  br label %return

return:                                           ; preds = %do.body, %if.then.8, %if.else, %if.then
  %retval.1 = phi i32 [ %call, %if.then ], [ 0, %if.else ], [ 0, %if.then.8 ], [ 0, %do.body ]
  ret i32 %retval.1, !dbg !1648
}

; Function Attrs: nounwind uwtable
define internal i32 @module_init(%struct.PyModuleObject* nocapture %m, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %name = alloca %struct._object*, align 8
  %doc = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleObject* %m, i64 0, metadata !780, metadata !817), !dbg !1649
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !781, metadata !817), !dbg !1650
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !782, metadata !817), !dbg !1651
  %0 = bitcast %struct._object** %name to i8*, !dbg !1652
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1652
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !784, metadata !817), !dbg !1653
  store %struct._object* @_Py_NoneStruct, %struct._object** %name, align 8, !dbg !1653, !tbaa !981
  %1 = bitcast %struct._object** %doc to i8*, !dbg !1652
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1652
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !785, metadata !817), !dbg !1654
  store %struct._object* @_Py_NoneStruct, %struct._object** %doc, align 8, !dbg !1654, !tbaa !981
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !784, metadata !817), !dbg !1653
  tail call void @llvm.dbg.value(metadata %struct._object** %doc, i64 0, metadata !785, metadata !817), !dbg !1654
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_init.kwlist, i64 0, i64 0), %struct._object** nonnull %name, %struct._object** nonnull %doc) #1, !dbg !1655
  %tobool = icmp eq i32 %call, 0, !dbg !1655
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1657

if.end:                                           ; preds = %entry
  %md_dict = getelementptr inbounds %struct.PyModuleObject, %struct.PyModuleObject* %m, i64 0, i32 1, !dbg !1658
  %2 = load %struct._object*, %struct._object** %md_dict, align 8, !dbg !1658, !tbaa !829
  call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !783, metadata !817), !dbg !1659
  %cmp = icmp eq %struct._object* %2, null, !dbg !1660
  br i1 %cmp, label %if.then.1, label %if.end.7, !dbg !1662

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyDict_New() #1, !dbg !1663
  call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !783, metadata !817), !dbg !1659
  %cmp3 = icmp eq %struct._object* %call2, null, !dbg !1665
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !1667

if.end.5:                                         ; preds = %if.then.1
  store %struct._object* %call2, %struct._object** %md_dict, align 8, !dbg !1668, !tbaa !829
  br label %if.end.7, !dbg !1669

if.end.7:                                         ; preds = %if.end.5, %if.end
  %dict.0 = phi %struct._object* [ %call2, %if.end.5 ], [ %2, %if.end ]
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !784, metadata !817), !dbg !1653
  %3 = load %struct._object*, %struct._object** %name, align 8, !dbg !1670, !tbaa !981
  call void @llvm.dbg.value(metadata %struct._object** %doc, i64 0, metadata !785, metadata !817), !dbg !1654
  %4 = load %struct._object*, %struct._object** %doc, align 8, !dbg !1672, !tbaa !981
  %call8 = call fastcc i32 @module_init_dict(%struct.PyModuleObject* %m, %struct._object* %dict.0, %struct._object* %3, %struct._object* %4), !dbg !1673
  %call8.lobit = ashr i32 %call8, 31, !dbg !1674
  br label %cleanup, !dbg !1674

cleanup:                                          ; preds = %if.end.7, %if.then.1, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.then.1 ], [ %call8.lobit, %if.end.7 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1675
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1675
  ret i32 %retval.0, !dbg !1675
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #2

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #2

declare void @PyObject_GC_Del(i8*) #2

declare void @PyObject_GC_UnTrack(i8*) #2

declare void @PySys_FormatStderr(i8*, ...) #2

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare void @PyMem_Free(i8*) #2

declare %struct._object* @PyObject_CallMethod(%struct._object*, i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_dir(%struct._object* %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !762, metadata !817), !dbg !1676
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !763, metadata !817), !dbg !1677
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !764, metadata !817), !dbg !1678
  %call = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %self, %struct._Py_Identifier* nonnull @module_dir.PyId___dict__) #1, !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !765, metadata !817), !dbg !1680
  %cmp = icmp eq %struct._object* %call, null, !dbg !1681
  br i1 %cmp, label %if.end.17, label %if.then, !dbg !1682

if.then:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1683
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1683, !tbaa !851
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1683
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1683, !tbaa !1212
  %and = and i64 %1, 536870912, !dbg !1683
  %cmp1 = icmp eq i64 %and, 0, !dbg !1683
  br i1 %cmp1, label %if.else, label %if.then.2, !dbg !1684

if.then.2:                                        ; preds = %if.then
  %call3 = tail call %struct._object* @PyDict_Keys(%struct._object* %call) #1, !dbg !1685
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !764, metadata !817), !dbg !1678
  br label %do.body.11, !dbg !1686

if.else:                                          ; preds = %if.then
  %call4 = tail call i8* @PyModule_GetName(%struct._object* %self), !dbg !1687
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !766, metadata !817), !dbg !1688
  %tobool = icmp eq i8* %call4, null, !dbg !1689
  br i1 %tobool, label %do.body.11, label %if.then.5, !dbg !1691

if.then.5:                                        ; preds = %if.else
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1692, !tbaa !981
  %call6 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* %call4) #1, !dbg !1693
  br label %do.body.11, !dbg !1693

do.body.11:                                       ; preds = %if.then.5, %if.else, %if.then.2
  %result.0.ph = phi %struct._object* [ null, %if.then.5 ], [ null, %if.else ], [ %call3, %if.then.2 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !771, metadata !817), !dbg !1694
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !773, metadata !817), !dbg !1696
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1698
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1698, !tbaa !847
  %dec = add i64 %3, -1, !dbg !1698
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1698, !tbaa !847
  %cmp12 = icmp eq i64 %dec, 0, !dbg !1698
  br i1 %cmp12, label %if.else.14, label %if.end.17, !dbg !1700

if.else.14:                                       ; preds = %do.body.11
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1701, !tbaa !851
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1701
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1701, !tbaa !852
  tail call void %5(%struct._object* %call) #1, !dbg !1701
  br label %if.end.17

if.end.17:                                        ; preds = %entry, %if.else.14, %do.body.11
  %result.033 = phi %struct._object* [ %result.0.ph, %if.else.14 ], [ %result.0.ph, %do.body.11 ], [ null, %entry ]
  ret %struct._object* %result.033, !dbg !1703
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @PyDict_Keys(%struct._object*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!814, !815}
!llvm.ident = !{!816}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !509, globals: !786)
!1 = !DIFile(filename: "Objects/moduleobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !11, line: 23, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!14 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!15 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!16 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!17 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!18 = !{!19, !109, !57, !400, !401, !419, !423, !431, !447, !449, !451}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleObject", file: !1, line: 16, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 448, align: 64, elements: !22)
!22 = !{!23, !370, !371, !397, !398, !399}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !21, file: !1, line: 10, baseType: !24, size: 128, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !25, line: 109, baseType: !26)
!25 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !25, line: 105, size: 128, align: 64, elements: !27)
!27 = !{!28, !36}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !26, file: !25, line: 107, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !30, line: 177, baseType: !31)
!30 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !32, line: 102, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !34, line: 181, baseType: !35)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!35 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !26, file: !25, line: 108, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !25, line: 334, size: 3200, align: 64, elements: !39)
!39 = !{!40, !46, !50, !51, !52, !58, !122, !127, !132, !133, !138, !190, !221, !233, !239, !240, !241, !243, !245, !276, !277, !278, !287, !288, !293, !294, !296, !298, !308, !318, !336, !337, !338, !340, !342, !343, !345, !350, !355, !360, !361, !362, !363, !364, !365, !366, !367, !369}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !38, file: !25, line: 335, baseType: !41, size: 192, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !25, line: 114, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 111, size: 192, align: 64, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !42, file: !25, line: 112, baseType: !24, size: 128, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !42, file: !25, line: 113, baseType: !29, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !38, file: !25, line: 336, baseType: !47, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !38, file: !25, line: 337, baseType: !29, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !38, file: !25, line: 337, baseType: !29, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !38, file: !25, line: 341, baseType: !53, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !25, line: 308, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !38, file: !25, line: 342, baseType: !59, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !25, line: 314, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !57, !64, !63}
!63 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 48, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 246, size: 1728, align: 64, elements: !68)
!67 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!68 = !{!69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !90, !91, !92, !93, !95, !97, !99, !103, !106, !108, !110, !111, !112, !113, !117, !118}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !66, file: !67, line: 247, baseType: !63, size: 32, align: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !66, file: !67, line: 252, baseType: !71, size: 64, align: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !66, file: !67, line: 253, baseType: !71, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !66, file: !67, line: 254, baseType: !71, size: 64, align: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !66, file: !67, line: 255, baseType: !71, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !66, file: !67, line: 256, baseType: !71, size: 64, align: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !66, file: !67, line: 257, baseType: !71, size: 64, align: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !66, file: !67, line: 258, baseType: !71, size: 64, align: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !66, file: !67, line: 259, baseType: !71, size: 64, align: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !66, file: !67, line: 261, baseType: !71, size: 64, align: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !66, file: !67, line: 262, baseType: !71, size: 64, align: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !66, file: !67, line: 263, baseType: !71, size: 64, align: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !66, file: !67, line: 265, baseType: !83, size: 64, align: 64, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !67, line: 161, size: 192, align: 64, elements: !85)
!85 = !{!86, !87, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !84, file: !67, line: 162, baseType: !83, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !84, file: !67, line: 163, baseType: !88, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !84, file: !67, line: 167, baseType: !63, size: 32, align: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !66, file: !67, line: 267, baseType: !88, size: 64, align: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !66, file: !67, line: 269, baseType: !63, size: 32, align: 32, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !66, file: !67, line: 273, baseType: !63, size: 32, align: 32, offset: 928)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !66, file: !67, line: 275, baseType: !94, size: 64, align: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 140, baseType: !35)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !66, file: !67, line: 279, baseType: !96, size: 16, align: 16, offset: 1024)
!96 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !66, file: !67, line: 280, baseType: !98, size: 8, align: 8, offset: 1040)
!98 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !66, file: !67, line: 281, baseType: !100, size: 8, align: 8, offset: 1048)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 1)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !66, file: !67, line: 285, baseType: !104, size: 64, align: 64, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !67, line: 155, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !66, file: !67, line: 294, baseType: !107, size: 64, align: 64, offset: 1152)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !34, line: 141, baseType: !35)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !66, file: !67, line: 303, baseType: !109, size: 64, align: 64, offset: 1216)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !66, file: !67, line: 304, baseType: !109, size: 64, align: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !66, file: !67, line: 305, baseType: !109, size: 64, align: 64, offset: 1344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !66, file: !67, line: 306, baseType: !109, size: 64, align: 64, offset: 1408)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !66, file: !67, line: 307, baseType: !114, size: 64, align: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 62, baseType: !116)
!115 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!116 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !66, file: !67, line: 309, baseType: !63, size: 32, align: 32, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !66, file: !67, line: 311, baseType: !119, size: 160, align: 8, offset: 1568)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, align: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !38, file: !25, line: 343, baseType: !123, size: 64, align: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !25, line: 316, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!57, !57, !71}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !38, file: !25, line: 344, baseType: !128, size: 64, align: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !25, line: 318, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!63, !57, !71, !57}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !38, file: !25, line: 345, baseType: !109, size: 64, align: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !38, file: !25, line: 346, baseType: !134, size: 64, align: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !25, line: 320, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!57, !57}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !38, file: !25, line: 350, baseType: !139, size: 64, align: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !25, line: 278, baseType: !141)
!141 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 236, size: 2176, align: 64, elements: !142)
!142 = !{!143, !148, !149, !150, !151, !152, !157, !159, !160, !161, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !141, file: !25, line: 241, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !25, line: 166, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!57, !57, !57}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !141, file: !25, line: 242, baseType: !144, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !141, file: !25, line: 243, baseType: !144, size: 64, align: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !141, file: !25, line: 244, baseType: !144, size: 64, align: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !141, file: !25, line: 245, baseType: !144, size: 64, align: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !141, file: !25, line: 246, baseType: !153, size: 64, align: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !25, line: 167, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!57, !57, !57, !57}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !141, file: !25, line: 247, baseType: !158, size: 64, align: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !25, line: 165, baseType: !135)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !141, file: !25, line: 248, baseType: !158, size: 64, align: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !141, file: !25, line: 249, baseType: !158, size: 64, align: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !141, file: !25, line: 250, baseType: !162, size: 64, align: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !25, line: 168, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!63, !57}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !141, file: !25, line: 251, baseType: !158, size: 64, align: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !141, file: !25, line: 252, baseType: !144, size: 64, align: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !141, file: !25, line: 253, baseType: !144, size: 64, align: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !141, file: !25, line: 254, baseType: !144, size: 64, align: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !141, file: !25, line: 255, baseType: !144, size: 64, align: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !141, file: !25, line: 256, baseType: !144, size: 64, align: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !141, file: !25, line: 257, baseType: !158, size: 64, align: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !141, file: !25, line: 258, baseType: !109, size: 64, align: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !141, file: !25, line: 259, baseType: !158, size: 64, align: 64, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !141, file: !25, line: 261, baseType: !144, size: 64, align: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !141, file: !25, line: 262, baseType: !144, size: 64, align: 64, offset: 1280)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !141, file: !25, line: 263, baseType: !144, size: 64, align: 64, offset: 1344)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !141, file: !25, line: 264, baseType: !144, size: 64, align: 64, offset: 1408)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !141, file: !25, line: 265, baseType: !153, size: 64, align: 64, offset: 1472)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !141, file: !25, line: 266, baseType: !144, size: 64, align: 64, offset: 1536)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !141, file: !25, line: 267, baseType: !144, size: 64, align: 64, offset: 1600)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !141, file: !25, line: 268, baseType: !144, size: 64, align: 64, offset: 1664)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !141, file: !25, line: 269, baseType: !144, size: 64, align: 64, offset: 1728)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !141, file: !25, line: 270, baseType: !144, size: 64, align: 64, offset: 1792)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !141, file: !25, line: 272, baseType: !144, size: 64, align: 64, offset: 1856)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !141, file: !25, line: 273, baseType: !144, size: 64, align: 64, offset: 1920)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !141, file: !25, line: 274, baseType: !144, size: 64, align: 64, offset: 1984)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !141, file: !25, line: 275, baseType: !144, size: 64, align: 64, offset: 2048)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !141, file: !25, line: 277, baseType: !158, size: 64, align: 64, offset: 2112)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !38, file: !25, line: 351, baseType: !191, size: 64, align: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !25, line: 292, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 280, size: 640, align: 64, elements: !194)
!194 = !{!195, !200, !201, !206, !207, !208, !213, !214, !219, !220}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !193, file: !25, line: 281, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !25, line: 169, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!29, !57}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !193, file: !25, line: 282, baseType: !144, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !193, file: !25, line: 283, baseType: !202, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !25, line: 170, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!57, !57, !29}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !193, file: !25, line: 284, baseType: !202, size: 64, align: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !193, file: !25, line: 285, baseType: !109, size: 64, align: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !193, file: !25, line: 286, baseType: !209, size: 64, align: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !25, line: 172, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!63, !57, !29, !57}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !193, file: !25, line: 287, baseType: !109, size: 64, align: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !193, file: !25, line: 288, baseType: !215, size: 64, align: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !25, line: 231, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!63, !57, !57}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !193, file: !25, line: 290, baseType: !144, size: 64, align: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !193, file: !25, line: 291, baseType: !202, size: 64, align: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !38, file: !25, line: 352, baseType: !222, size: 64, align: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !25, line: 298, baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 294, size: 192, align: 64, elements: !225)
!225 = !{!226, !227, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !224, file: !25, line: 295, baseType: !196, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !224, file: !25, line: 296, baseType: !144, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !224, file: !25, line: 297, baseType: !229, size: 64, align: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !25, line: 174, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!63, !57, !57, !57}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !38, file: !25, line: 356, baseType: !234, size: 64, align: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !25, line: 321, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !57}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !30, line: 186, baseType: !29)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !38, file: !25, line: 357, baseType: !153, size: 64, align: 64, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !38, file: !25, line: 358, baseType: !134, size: 64, align: 64, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !38, file: !25, line: 359, baseType: !242, size: 64, align: 64, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !25, line: 317, baseType: !145)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !38, file: !25, line: 360, baseType: !244, size: 64, align: 64, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !25, line: 319, baseType: !230)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !38, file: !25, line: 363, baseType: !246, size: 64, align: 64, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !25, line: 304, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 301, size: 128, align: 64, elements: !249)
!249 = !{!250, !271}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !248, file: !25, line: 302, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !25, line: 193, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!63, !57, !255, !63}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !25, line: 191, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !25, line: 178, size: 640, align: 64, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !268, !269, !270}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !257, file: !25, line: 179, baseType: !109, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !257, file: !25, line: 180, baseType: !57, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !257, file: !25, line: 181, baseType: !29, size: 64, align: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !257, file: !25, line: 182, baseType: !29, size: 64, align: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !257, file: !25, line: 184, baseType: !63, size: 32, align: 32, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !257, file: !25, line: 185, baseType: !63, size: 32, align: 32, offset: 288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !257, file: !25, line: 186, baseType: !71, size: 64, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !257, file: !25, line: 187, baseType: !267, size: 64, align: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !257, file: !25, line: 188, baseType: !267, size: 64, align: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !257, file: !25, line: 189, baseType: !267, size: 64, align: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !257, file: !25, line: 190, baseType: !109, size: 64, align: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !248, file: !25, line: 303, baseType: !272, size: 64, align: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !25, line: 194, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !57, !255}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !38, file: !25, line: 366, baseType: !116, size: 64, align: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !38, file: !25, line: 368, baseType: !47, size: 64, align: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !38, file: !25, line: 372, baseType: !279, size: 64, align: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !25, line: 233, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!63, !57, !283, !109}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !25, line: 232, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!63, !57, !109}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !38, file: !25, line: 375, baseType: !162, size: 64, align: 64, offset: 1536)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !38, file: !25, line: 379, baseType: !289, size: 64, align: 64, offset: 1600)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !25, line: 322, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!57, !57, !57, !63}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !38, file: !25, line: 382, baseType: !29, size: 64, align: 64, offset: 1664)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !38, file: !25, line: 385, baseType: !295, size: 64, align: 64, offset: 1728)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !25, line: 323, baseType: !135)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !38, file: !25, line: 386, baseType: !297, size: 64, align: 64, offset: 1792)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !25, line: 324, baseType: !135)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !38, file: !25, line: 389, baseType: !299, size: 64, align: 64, offset: 1856)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !301, line: 40, size: 256, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !306, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !300, file: !301, line: 41, baseType: !47, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !300, file: !301, line: 42, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !301, line: 18, baseType: !145)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !300, file: !301, line: 43, baseType: !63, size: 32, align: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !300, file: !301, line: 45, baseType: !47, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !38, file: !25, line: 390, baseType: !309, size: 64, align: 64, offset: 1920)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !311, line: 18, size: 320, align: 64, elements: !312)
!311 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!312 = !{!313, !314, !315, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !311, line: 19, baseType: !71, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !310, file: !311, line: 20, baseType: !63, size: 32, align: 32, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !310, file: !311, line: 21, baseType: !29, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !311, line: 22, baseType: !63, size: 32, align: 32, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !310, file: !311, line: 23, baseType: !71, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !38, file: !25, line: 391, baseType: !319, size: 64, align: 64, offset: 1984)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !321, line: 11, size: 320, align: 64, elements: !322)
!321 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!322 = !{!323, !324, !329, !334, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !321, line: 12, baseType: !71, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !320, file: !321, line: 13, baseType: !325, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !321, line: 8, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!57, !57, !109}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !320, file: !321, line: 14, baseType: !330, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !321, line: 9, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!63, !57, !57, !109}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !320, file: !321, line: 15, baseType: !71, size: 64, align: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !320, file: !321, line: 16, baseType: !109, size: 64, align: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !38, file: !25, line: 392, baseType: !37, size: 64, align: 64, offset: 2048)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !38, file: !25, line: 393, baseType: !57, size: 64, align: 64, offset: 2112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !38, file: !25, line: 394, baseType: !339, size: 64, align: 64, offset: 2176)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !25, line: 325, baseType: !154)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !38, file: !25, line: 395, baseType: !341, size: 64, align: 64, offset: 2240)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !25, line: 326, baseType: !230)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !38, file: !25, line: 396, baseType: !29, size: 64, align: 64, offset: 2304)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !38, file: !25, line: 397, baseType: !344, size: 64, align: 64, offset: 2368)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !25, line: 327, baseType: !230)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !38, file: !25, line: 398, baseType: !346, size: 64, align: 64, offset: 2432)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !25, line: 329, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!57, !37, !29}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !38, file: !25, line: 399, baseType: !351, size: 64, align: 64, offset: 2496)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !25, line: 328, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!57, !37, !57, !57}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !38, file: !25, line: 400, baseType: !356, size: 64, align: 64, offset: 2560)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !25, line: 307, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !109}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !38, file: !25, line: 401, baseType: !162, size: 64, align: 64, offset: 2624)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !38, file: !25, line: 402, baseType: !57, size: 64, align: 64, offset: 2688)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !38, file: !25, line: 403, baseType: !57, size: 64, align: 64, offset: 2752)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !38, file: !25, line: 404, baseType: !57, size: 64, align: 64, offset: 2816)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !38, file: !25, line: 405, baseType: !57, size: 64, align: 64, offset: 2880)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !38, file: !25, line: 406, baseType: !57, size: 64, align: 64, offset: 2944)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !38, file: !25, line: 407, baseType: !53, size: 64, align: 64, offset: 3008)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !38, file: !25, line: 410, baseType: !368, size: 32, align: 32, offset: 3072)
!368 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !38, file: !25, line: 412, baseType: !53, size: 64, align: 64, offset: 3136)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "md_dict", scope: !21, file: !1, line: 11, baseType: !57, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "md_def", scope: !21, file: !1, line: 12, baseType: !372, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !374, line: 47, size: 832, align: 64, elements: !375)
!374 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!375 = !{!376, !387, !388, !389, !390, !393, !394, !395, !396}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !373, file: !374, line: 48, baseType: !377, size: 320, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !374, line: 38, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !374, line: 33, size: 320, align: 64, elements: !379)
!379 = !{!380, !381, !385, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !378, file: !374, line: 34, baseType: !24, size: 128, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !378, file: !374, line: 35, baseType: !382, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!57}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !378, file: !374, line: 36, baseType: !29, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !378, file: !374, line: 37, baseType: !57, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !373, file: !374, line: 49, baseType: !47, size: 64, align: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !373, file: !374, line: 50, baseType: !47, size: 64, align: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !373, file: !374, line: 51, baseType: !29, size: 64, align: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !373, file: !374, line: 52, baseType: !391, size: 64, align: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !301, line: 47, baseType: !300)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !373, file: !374, line: 53, baseType: !162, size: 64, align: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !373, file: !374, line: 54, baseType: !279, size: 64, align: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !373, file: !374, line: 55, baseType: !162, size: 64, align: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !373, file: !374, line: 56, baseType: !356, size: 64, align: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "md_state", scope: !21, file: !1, line: 13, baseType: !109, size: 64, align: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "md_weaklist", scope: !21, file: !1, line: 14, baseType: !57, size: 64, align: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "md_name", scope: !21, file: !1, line: 15, baseType: !57, size: 64, align: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !368)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !404)
!404 = !{!405, !406, !407, !408, !416}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !403, file: !4, line: 291, baseType: !24, size: 128, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !403, file: !4, line: 292, baseType: !29, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !403, file: !4, line: 293, baseType: !238, size: 64, align: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !4, line: 349, baseType: !409, size: 32, align: 32, offset: 256)
!409 = !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !4, line: 294, size: 32, align: 32, elements: !410)
!410 = !{!411, !412, !413, !414, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !409, file: !4, line: 303, baseType: !368, size: 2, align: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !409, file: !4, line: 331, baseType: !368, size: 3, align: 32, offset: 2)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !409, file: !4, line: 336, baseType: !368, size: 1, align: 32, offset: 5)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !409, file: !4, line: 340, baseType: !368, size: 1, align: 32, offset: 6)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !409, file: !4, line: 345, baseType: !368, size: 1, align: 32, offset: 7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !403, file: !4, line: 350, baseType: !417, size: 64, align: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !115, line: 90, baseType: !63)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !422)
!422 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !425)
!425 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !425, file: !4, line: 357, baseType: !402, size: 384, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !425, file: !4, line: 358, baseType: !29, size: 64, align: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !425, file: !4, line: 360, baseType: !71, size: 64, align: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !425, file: !4, line: 361, baseType: !29, size: 64, align: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !433, file: !4, line: 369, baseType: !424, size: 576, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !433, file: !4, line: 375, baseType: !437, size: 64, align: 64, offset: 576)
!437 = !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !4, line: 370, size: 64, align: 64, elements: !438)
!438 = !{!439, !440, !442, !445}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !437, file: !4, line: 371, baseType: !109, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !437, file: !4, line: 372, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !437, file: !4, line: 373, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !437, file: !4, line: 374, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !453, line: 139, baseType: !454)
!453 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !453, line: 69, size: 1536, align: 64, elements: !455)
!455 = !{!456, !458, !459, !479, !482, !483, !484, !485, !486, !487, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !454, file: !453, line: 72, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !453, line: 73, baseType: !457, size: 64, align: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !454, file: !453, line: 74, baseType: !460, size: 64, align: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !453, line: 44, baseType: !462)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !453, line: 19, size: 832, align: 64, elements: !463)
!463 = !{!464, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !453, line: 21, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !462, file: !453, line: 22, baseType: !457, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !462, file: !453, line: 24, baseType: !57, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !462, file: !453, line: 25, baseType: !57, size: 64, align: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !462, file: !453, line: 26, baseType: !57, size: 64, align: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !462, file: !453, line: 27, baseType: !57, size: 64, align: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !462, file: !453, line: 28, baseType: !57, size: 64, align: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !462, file: !453, line: 30, baseType: !57, size: 64, align: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !462, file: !453, line: 31, baseType: !57, size: 64, align: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !462, file: !453, line: 32, baseType: !57, size: 64, align: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !462, file: !453, line: 33, baseType: !63, size: 32, align: 32, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !462, file: !453, line: 34, baseType: !63, size: 32, align: 32, offset: 672)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !462, file: !453, line: 37, baseType: !63, size: 32, align: 32, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !462, file: !453, line: 43, baseType: !57, size: 64, align: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !454, file: !453, line: 76, baseType: !480, size: 64, align: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !453, line: 50, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !454, file: !453, line: 77, baseType: !63, size: 32, align: 32, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !454, file: !453, line: 78, baseType: !49, size: 8, align: 8, offset: 288)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !454, file: !453, line: 80, baseType: !49, size: 8, align: 8, offset: 296)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !454, file: !453, line: 85, baseType: !63, size: 32, align: 32, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !454, file: !453, line: 86, baseType: !63, size: 32, align: 32, offset: 352)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !454, file: !453, line: 88, baseType: !488, size: 64, align: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !453, line: 54, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!63, !57, !480, !63, !57}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !454, file: !453, line: 89, baseType: !488, size: 64, align: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !454, file: !453, line: 90, baseType: !57, size: 64, align: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !454, file: !453, line: 91, baseType: !57, size: 64, align: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !454, file: !453, line: 93, baseType: !57, size: 64, align: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !454, file: !453, line: 94, baseType: !57, size: 64, align: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !454, file: !453, line: 95, baseType: !57, size: 64, align: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !454, file: !453, line: 97, baseType: !57, size: 64, align: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !454, file: !453, line: 98, baseType: !57, size: 64, align: 64, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !454, file: !453, line: 99, baseType: !57, size: 64, align: 64, offset: 960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !454, file: !453, line: 101, baseType: !57, size: 64, align: 64, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !454, file: !453, line: 103, baseType: !63, size: 32, align: 32, offset: 1088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !454, file: !453, line: 105, baseType: !57, size: 64, align: 64, offset: 1152)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !454, file: !453, line: 106, baseType: !35, size: 64, align: 64, offset: 1216)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !454, file: !453, line: 108, baseType: !63, size: 32, align: 32, offset: 1280)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !454, file: !453, line: 109, baseType: !57, size: 64, align: 64, offset: 1344)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !454, file: !453, line: 134, baseType: !357, size: 64, align: 64, offset: 1408)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !454, file: !453, line: 135, baseType: !109, size: 64, align: 64, offset: 1472)
!509 = !{!510, !516, !525, !600, !604, !609, !617, !622, !629, !634, !639, !643, !665, !680, !695, !715, !724, !729, !732, !746, !760, !776}
!510 = !DISubprogram(name: "PyModule_NewObject", scope: !1, file: !1, line: 61, type: !136, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_NewObject, variables: !511)
!511 = !{!512, !513, !514}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !510, file: !1, line: 61, type: !57)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !510, file: !1, line: 63, type: !19)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !515, file: !1, line: 78, type: !57)
!515 = distinct !DILexicalBlock(scope: !510, file: !1, line: 78, column: 5)
!516 = !DISubprogram(name: "PyModule_New", scope: !1, file: !1, line: 83, type: !517, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyModule_New, variables: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{!57, !47}
!519 = !{!520, !521, !522, !523}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !516, file: !1, line: 83, type: !47)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !516, file: !1, line: 85, type: !57)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !516, file: !1, line: 85, type: !57)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !1, line: 90, type: !57)
!524 = distinct !DILexicalBlock(scope: !516, file: !1, line: 90, column: 5)
!525 = !DISubprogram(name: "PyModule_Create2", scope: !1, file: !1, line: 96, type: !526, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, i32)* @PyModule_Create2, variables: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!57, !372, !63}
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !541, !544, !547, !548, !554, !560, !567, !569, !573, !575, !579, !581, !583, !585, !587, !593, !596, !598}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !525, file: !1, line: 96, type: !372)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module_api_version", arg: 2, scope: !525, file: !1, line: 96, type: !63)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !525, file: !1, line: 98, type: !57)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !525, file: !1, line: 98, type: !57)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !525, file: !1, line: 98, type: !57)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ml", scope: !525, file: !1, line: 99, type: !391)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !525, file: !1, line: 100, type: !47)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !525, file: !1, line: 101, type: !19)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !525, file: !1, line: 102, type: !460)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !539, file: !1, line: 115, type: !63)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 114, column: 95)
!540 = distinct !DILexicalBlock(scope: !525, file: !1, line: 114, column: 9)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !542, file: !1, line: 134, type: !71)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 133, column: 37)
!543 = distinct !DILexicalBlock(scope: !525, file: !1, line: 133, column: 9)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !545, file: !1, line: 135, type: !114)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 135, column: 26)
!546 = distinct !DILexicalBlock(scope: !542, file: !1, line: 135, column: 13)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !545, file: !1, line: 135, type: !114)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !549, file: !1, line: 147, type: !57)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 147, column: 13)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 145, column: 27)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 145, column: 13)
!552 = distinct !DILexicalBlock(scope: !553, file: !1, line: 143, column: 29)
!553 = distinct !DILexicalBlock(scope: !525, file: !1, line: 143, column: 9)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !555, file: !1, line: 157, type: !57)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 157, column: 13)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 156, column: 24)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 156, column: 13)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 154, column: 36)
!559 = distinct !DILexicalBlock(scope: !525, file: !1, line: 154, column: 9)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !561, file: !1, line: 166, type: !57)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 166, column: 17)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 162, column: 47)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 161, column: 17)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 160, column: 65)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 160, column: 9)
!566 = distinct !DILexicalBlock(scope: !558, file: !1, line: 160, column: 9)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !1, line: 167, type: !57)
!568 = distinct !DILexicalBlock(scope: !562, file: !1, line: 167, column: 17)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !570, file: !1, line: 172, type: !57)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 172, column: 17)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 171, column: 28)
!572 = distinct !DILexicalBlock(scope: !564, file: !1, line: 171, column: 17)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !574, file: !1, line: 173, type: !57)
!574 = distinct !DILexicalBlock(scope: !571, file: !1, line: 173, column: 17)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !576, file: !1, line: 177, type: !57)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 177, column: 17)
!577 = distinct !DILexicalBlock(scope: !578, file: !1, line: 176, column: 63)
!578 = distinct !DILexicalBlock(scope: !564, file: !1, line: 176, column: 17)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !580, file: !1, line: 178, type: !57)
!580 = distinct !DILexicalBlock(scope: !577, file: !1, line: 178, column: 17)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !1, line: 179, type: !57)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 179, column: 17)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 182, type: !57)
!584 = distinct !DILexicalBlock(scope: !564, file: !1, line: 182, column: 13)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !1, line: 184, type: !57)
!586 = distinct !DILexicalBlock(scope: !558, file: !1, line: 184, column: 9)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !588, file: !1, line: 189, type: !57)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 189, column: 13)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 188, column: 70)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 188, column: 13)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 186, column: 32)
!592 = distinct !DILexicalBlock(scope: !525, file: !1, line: 186, column: 9)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !1, line: 189, type: !57)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 189, column: 13)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 189, column: 13)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !597, file: !1, line: 190, type: !57)
!597 = distinct !DILexicalBlock(scope: !589, file: !1, line: 190, column: 13)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !1, line: 193, type: !57)
!599 = distinct !DILexicalBlock(scope: !591, file: !1, line: 193, column: 9)
!600 = !DISubprogram(name: "PyModule_GetDict", scope: !1, file: !1, line: 201, type: !136, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_GetDict, variables: !601)
!601 = !{!602, !603}
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !600, file: !1, line: 201, type: !57)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !600, file: !1, line: 203, type: !57)
!604 = !DISubprogram(name: "PyModule_GetNameObject", scope: !1, file: !1, line: 215, type: !136, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_GetNameObject, variables: !605)
!605 = !{!606, !607, !608}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !604, file: !1, line: 215, type: !57)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !604, file: !1, line: 217, type: !57)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !604, file: !1, line: 218, type: !57)
!609 = !DISubprogram(name: "PyModule_GetName", scope: !1, file: !1, line: 236, type: !610, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyModule_GetName, variables: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!47, !57}
!612 = !{!613, !614, !615}
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !609, file: !1, line: 236, type: !57)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !609, file: !1, line: 238, type: !57)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !1, line: 241, type: !57)
!616 = distinct !DILexicalBlock(scope: !609, file: !1, line: 241, column: 5)
!617 = !DISubprogram(name: "PyModule_GetFilenameObject", scope: !1, file: !1, line: 246, type: !136, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyModule_GetFilenameObject, variables: !618)
!618 = !{!619, !620, !621}
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !617, file: !1, line: 246, type: !57)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !617, file: !1, line: 248, type: !57)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !617, file: !1, line: 249, type: !57)
!622 = !DISubprogram(name: "PyModule_GetFilename", scope: !1, file: !1, line: 267, type: !610, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyModule_GetFilename, variables: !623)
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !622, file: !1, line: 267, type: !57)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !622, file: !1, line: 269, type: !57)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "utf8", scope: !622, file: !1, line: 270, type: !71)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !628, file: !1, line: 275, type: !57)
!628 = distinct !DILexicalBlock(scope: !622, file: !1, line: 275, column: 5)
!629 = !DISubprogram(name: "PyModule_GetDef", scope: !1, file: !1, line: 280, type: !630, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyModuleDef* (%struct._object*)* @PyModule_GetDef, variables: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{!372, !57}
!632 = !{!633}
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !629, file: !1, line: 280, type: !57)
!634 = !DISubprogram(name: "PyModule_GetState", scope: !1, file: !1, line: 290, type: !635, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyModule_GetState, variables: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!109, !57}
!637 = !{!638}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !634, file: !1, line: 290, type: !57)
!639 = !DISubprogram(name: "_PyModule_Clear", scope: !1, file: !1, line: 300, type: !55, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyModule_Clear, variables: !640)
!640 = !{!641, !642}
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !639, file: !1, line: 300, type: !57)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !639, file: !1, line: 302, type: !57)
!643 = !DISubprogram(name: "_PyModule_ClearDict", scope: !1, file: !1, line: 308, type: !55, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyModule_ClearDict, variables: !644)
!644 = !{!645, !646, !647, !648, !649, !657}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !643, file: !1, line: 308, type: !57)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !643, file: !1, line: 317, type: !29)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !643, file: !1, line: 318, type: !57)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !643, file: !1, line: 318, type: !57)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !650, file: !1, line: 327, type: !47)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 326, column: 41)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 326, column: 21)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 325, column: 53)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 324, column: 17)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 323, column: 55)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 323, column: 13)
!656 = distinct !DILexicalBlock(scope: !643, file: !1, line: 322, column: 48)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !658, file: !1, line: 347, type: !47)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 346, column: 41)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 346, column: 21)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 345, column: 13)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 343, column: 17)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 342, column: 55)
!663 = distinct !DILexicalBlock(scope: !664, file: !1, line: 342, column: 13)
!664 = distinct !DILexicalBlock(scope: !643, file: !1, line: 341, column: 48)
!665 = !DISubprogram(name: "module_init_dict", scope: !1, file: !1, line: 32, type: !666, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*, %struct._object*, %struct._object*, %struct._object*)* @module_init_dict, variables: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{!63, !19, !57, !57, !57}
!668 = !{!669, !670, !671, !672, !673, !677}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !665, file: !1, line: 32, type: !19)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md_dict", arg: 2, scope: !665, file: !1, line: 32, type: !57)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !665, file: !1, line: 33, type: !57)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "doc", arg: 4, scope: !665, file: !1, line: 33, type: !57)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !674, file: !1, line: 52, type: !57)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 52, column: 9)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 50, column: 37)
!676 = distinct !DILexicalBlock(scope: !665, file: !1, line: 50, column: 9)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !1, line: 52, type: !57)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 52, column: 9)
!679 = distinct !DILexicalBlock(scope: !674, file: !1, line: 52, column: 9)
!680 = !DISubprogram(name: "module_dealloc", scope: !1, file: !1, line: 388, type: !681, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyModuleObject*)* @module_dealloc, variables: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !19}
!683 = !{!684, !685, !687, !690, !692}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !680, file: !1, line: 388, type: !19)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !686, file: !1, line: 398, type: !57)
!686 = distinct !DILexicalBlock(scope: !680, file: !1, line: 398, column: 5)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !688, file: !1, line: 398, type: !57)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 398, column: 5)
!689 = distinct !DILexicalBlock(scope: !686, file: !1, line: 398, column: 5)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !691, file: !1, line: 399, type: !57)
!691 = distinct !DILexicalBlock(scope: !680, file: !1, line: 399, column: 5)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !693, file: !1, line: 399, type: !57)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 399, column: 5)
!694 = distinct !DILexicalBlock(scope: !691, file: !1, line: 399, column: 5)
!695 = !DISubprogram(name: "module_repr", scope: !1, file: !1, line: 406, type: !696, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleObject*)* @module_repr, variables: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!57, !19}
!698 = !{!699, !700, !701, !708, !709, !712, !714}
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !695, file: !1, line: 406, type: !19)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !695, file: !1, line: 408, type: !451)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !702, file: !1, line: 408, type: !703)
!702 = distinct !DILexicalBlock(scope: !695, file: !1, line: 408, column: 29)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !11, line: 33, baseType: !705)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !11, line: 31, size: 64, align: 64, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !705, file: !11, line: 32, baseType: !109, size: 64, align: 64)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !702, file: !1, line: 408, type: !109)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !702, file: !1, line: 408, type: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !702, file: !1, line: 408, type: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !11, line: 29, baseType: !10)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !695, file: !1, line: 409, type: !460)
!715 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !11, file: !11, line: 59, type: !716, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !721)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !718, !713}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!721 = !{!722, !723}
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !715, file: !11, line: 59, type: !718)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !715, file: !11, line: 59, type: !713)
!724 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !11, file: !11, line: 51, type: !725, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !713}
!727 = !{!728}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !724, file: !11, line: 51, type: !713)
!729 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !11, file: !11, line: 44, type: !725, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !730)
!730 = !{!731}
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !729, file: !11, line: 44, type: !713)
!732 = !DISubprogram(name: "module_traverse", scope: !1, file: !1, line: 415, type: !733, isLocal: true, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*, i32 (%struct._object*, i8*)*, i8*)* @module_traverse, variables: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!63, !19, !283, !109}
!735 = !{!736, !737, !738, !739, !742}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !732, file: !1, line: 415, type: !19)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !732, file: !1, line: 415, type: !283)
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !732, file: !1, line: 415, type: !109)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !740, file: !1, line: 418, type: !63)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 417, column: 45)
!741 = distinct !DILexicalBlock(scope: !732, file: !1, line: 417, column: 9)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !743, file: !1, line: 422, type: !63)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 422, column: 5)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 422, column: 5)
!745 = distinct !DILexicalBlock(scope: !732, file: !1, line: 422, column: 5)
!746 = !DISubprogram(name: "module_clear", scope: !1, file: !1, line: 427, type: !747, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*)* @module_clear, variables: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{!63, !19}
!749 = !{!750, !751, !754, !756}
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !746, file: !1, line: 427, type: !19)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !752, file: !1, line: 430, type: !63)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 429, column: 42)
!753 = distinct !DILexicalBlock(scope: !746, file: !1, line: 429, column: 9)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !755, file: !1, line: 434, type: !57)
!755 = distinct !DILexicalBlock(scope: !746, file: !1, line: 434, column: 5)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !757, file: !1, line: 434, type: !57)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 434, column: 5)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 434, column: 5)
!759 = distinct !DILexicalBlock(scope: !755, file: !1, line: 434, column: 5)
!760 = !DISubprogram(name: "module_dir", scope: !1, file: !1, line: 439, type: !146, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @module_dir, variables: !761)
!761 = !{!762, !763, !764, !765, !766, !771, !773}
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !760, file: !1, line: 439, type: !57)
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !760, file: !1, line: 439, type: !57)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !760, file: !1, line: 442, type: !57)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !760, file: !1, line: 443, type: !57)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !767, file: !1, line: 449, type: !47)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 448, column: 14)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 446, column: 13)
!769 = distinct !DILexicalBlock(scope: !770, file: !1, line: 445, column: 23)
!770 = distinct !DILexicalBlock(scope: !760, file: !1, line: 445, column: 9)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !772, file: !1, line: 457, type: !57)
!772 = distinct !DILexicalBlock(scope: !760, file: !1, line: 457, column: 5)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !774, file: !1, line: 457, type: !57)
!774 = distinct !DILexicalBlock(scope: !775, file: !1, line: 457, column: 5)
!775 = distinct !DILexicalBlock(scope: !772, file: !1, line: 457, column: 5)
!776 = !DISubprogram(name: "module_init", scope: !1, file: !1, line: 368, type: !777, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleObject*, %struct._object*, %struct._object*)* @module_init, variables: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{!63, !19, !57, !57}
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !776, file: !1, line: 368, type: !19)
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !776, file: !1, line: 368, type: !57)
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !776, file: !1, line: 368, type: !57)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !776, file: !1, line: 371, type: !57)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !776, file: !1, line: 371, type: !57)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doc", scope: !776, file: !1, line: 371, type: !57)
!786 = !{!787, !789, !790, !791, !795, !799, !807, !810}
!787 = !DIGlobalVariable(name: "PyModule_Type", scope: !0, file: !1, line: 474, type: !788, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyModule_Type)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !25, line: 422, baseType: !38)
!789 = !DIGlobalVariable(name: "max_module_number", scope: !0, file: !1, line: 7, type: !29, isLocal: true, isDefinition: true, variable: i64* @max_module_number)
!790 = !DIGlobalVariable(name: "moduledef_type", scope: !0, file: !1, line: 23, type: !788, isLocal: true, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @moduledef_type)
!791 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 468, type: !792, isLocal: true, isDefinition: true, variable: [117 x i8]* @module_doc)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 936, align: 8, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 117)
!795 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !1, line: 461, type: !796, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @module_methods)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 512, align: 64, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 2)
!799 = !DIGlobalVariable(name: "PyId___dict__", scope: !760, file: !1, line: 441, type: !800, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @module_dir.PyId___dict__)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !25, line: 144, baseType: !801)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !25, line: 140, size: 192, align: 64, elements: !802)
!802 = !{!803, !805, !806}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !25, line: 141, baseType: !804, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !801, file: !25, line: 142, baseType: !47, size: 64, align: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !801, file: !25, line: 143, baseType: !57, size: 64, align: 64, offset: 128)
!807 = !DIGlobalVariable(name: "module_members", scope: !0, file: !1, line: 18, type: !808, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @module_members)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 640, align: 64, elements: !797)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !311, line: 24, baseType: !310)
!810 = !DIGlobalVariable(name: "kwlist", scope: !776, file: !1, line: 370, type: !811, isLocal: true, isDefinition: true, variable: [3 x i8*]* @module_init.kwlist)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 192, align: 64, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 3)
!814 = !{i32 2, !"Dwarf Version", i32 4}
!815 = !{i32 2, !"Debug Info Version", i32 3}
!816 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!817 = !DIExpression()
!818 = !DILocation(line: 61, column: 30, scope: !510)
!819 = !DILocation(line: 64, column: 9, scope: !510)
!820 = !DILocation(line: 63, column: 21, scope: !510)
!821 = !DILocation(line: 65, column: 11, scope: !822)
!822 = distinct !DILexicalBlock(scope: !510, file: !1, line: 65, column: 9)
!823 = !DILocation(line: 65, column: 9, scope: !510)
!824 = !DILocation(line: 67, column: 8, scope: !510)
!825 = !DILocation(line: 71, column: 18, scope: !510)
!826 = !DILocation(line: 68, column: 17, scope: !510)
!827 = !DILocation(line: 71, column: 8, scope: !510)
!828 = !DILocation(line: 71, column: 16, scope: !510)
!829 = !{!830, !835, i64 16}
!830 = !{!"", !831, i64 0, !835, i64 16, !835, i64 24, !835, i64 32, !835, i64 40, !835, i64 48}
!831 = !{!"_object", !832, i64 0, !835, i64 8}
!832 = !{!"long", !833, i64 0}
!833 = !{!"omnipotent char", !834, i64 0}
!834 = !{!"Simple C/C++ TBAA"}
!835 = !{!"any pointer", !833, i64 0}
!836 = !DILocation(line: 72, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !510, file: !1, line: 72, column: 9)
!838 = !DILocation(line: 72, column: 53, scope: !837)
!839 = !DILocation(line: 72, column: 9, scope: !510)
!840 = !DILocation(line: 74, column: 23, scope: !510)
!841 = !DILocation(line: 74, column: 5, scope: !510)
!842 = !DILocation(line: 75, column: 5, scope: !510)
!843 = !DILocation(line: 78, column: 5, scope: !844)
!844 = !DILexicalBlockFile(scope: !515, file: !1, discriminator: 1)
!845 = !DILocation(line: 78, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !515, file: !1, line: 78, column: 5)
!847 = !{!831, !832, i64 0}
!848 = !DILocation(line: 78, column: 5, scope: !515)
!849 = !DILocation(line: 78, column: 5, scope: !850)
!850 = !DILexicalBlockFile(scope: !846, file: !1, discriminator: 3)
!851 = !{!831, !835, i64 8}
!852 = !{!853, !835, i64 48}
!853 = !{!"_typeobject", !854, i64 0, !835, i64 24, !832, i64 32, !832, i64 40, !835, i64 48, !835, i64 56, !835, i64 64, !835, i64 72, !835, i64 80, !835, i64 88, !835, i64 96, !835, i64 104, !835, i64 112, !835, i64 120, !835, i64 128, !835, i64 136, !835, i64 144, !835, i64 152, !835, i64 160, !832, i64 168, !835, i64 176, !835, i64 184, !835, i64 192, !835, i64 200, !832, i64 208, !835, i64 216, !835, i64 224, !835, i64 232, !835, i64 240, !835, i64 248, !835, i64 256, !835, i64 264, !835, i64 272, !835, i64 280, !832, i64 288, !835, i64 296, !835, i64 304, !835, i64 312, !835, i64 320, !835, i64 328, !835, i64 336, !835, i64 344, !835, i64 352, !835, i64 360, !835, i64 368, !835, i64 376, !855, i64 384, !835, i64 392}
!854 = !{!"", !831, i64 0, !832, i64 16}
!855 = !{!"int", !833, i64 0}
!856 = !DILocation(line: 80, column: 1, scope: !510)
!857 = !DILocation(line: 32, column: 34, scope: !665)
!858 = !DILocation(line: 32, column: 49, scope: !665)
!859 = !DILocation(line: 33, column: 28, scope: !665)
!860 = !DILocation(line: 33, column: 44, scope: !665)
!861 = !DILocation(line: 35, column: 17, scope: !862)
!862 = distinct !DILexicalBlock(scope: !665, file: !1, line: 35, column: 9)
!863 = !DILocation(line: 35, column: 9, scope: !665)
!864 = !DILocation(line: 40, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !665, file: !1, line: 40, column: 9)
!866 = !DILocation(line: 40, column: 57, scope: !865)
!867 = !DILocation(line: 40, column: 9, scope: !665)
!868 = !DILocation(line: 37, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !665, file: !1, line: 37, column: 9)
!870 = !DILocation(line: 37, column: 9, scope: !665)
!871 = !DILocation(line: 42, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !665, file: !1, line: 42, column: 9)
!873 = !DILocation(line: 42, column: 55, scope: !872)
!874 = !DILocation(line: 42, column: 9, scope: !665)
!875 = !DILocation(line: 44, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !665, file: !1, line: 44, column: 9)
!877 = !DILocation(line: 44, column: 63, scope: !876)
!878 = !DILocation(line: 44, column: 9, scope: !665)
!879 = !DILocation(line: 46, column: 9, scope: !880)
!880 = distinct !DILexicalBlock(scope: !665, file: !1, line: 46, column: 9)
!881 = !DILocation(line: 46, column: 62, scope: !880)
!882 = !DILocation(line: 46, column: 9, scope: !665)
!883 = !DILocation(line: 48, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !665, file: !1, line: 48, column: 9)
!885 = !DILocation(line: 48, column: 60, scope: !884)
!886 = !DILocation(line: 48, column: 9, scope: !665)
!887 = !DILocation(line: 50, column: 9, scope: !676)
!888 = !DILocation(line: 50, column: 9, scope: !665)
!889 = !DILocation(line: 51, column: 9, scope: !675)
!890 = !DILocation(line: 52, column: 9, scope: !891)
!891 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 1)
!892 = !{!830, !835, i64 48}
!893 = !DILocation(line: 52, column: 9, scope: !679)
!894 = !DILocation(line: 52, column: 9, scope: !674)
!895 = !DILocation(line: 52, column: 9, scope: !896)
!896 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 4)
!897 = !DILocation(line: 52, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !678, file: !1, line: 52, column: 9)
!899 = !DILocation(line: 52, column: 9, scope: !678)
!900 = !DILocation(line: 52, column: 9, scope: !901)
!901 = !DILexicalBlockFile(scope: !898, file: !1, discriminator: 6)
!902 = !DILocation(line: 53, column: 22, scope: !675)
!903 = !DILocation(line: 54, column: 5, scope: !675)
!904 = !DILocation(line: 57, column: 1, scope: !665)
!905 = !DILocation(line: 83, column: 26, scope: !516)
!906 = !DILocation(line: 86, column: 15, scope: !516)
!907 = !DILocation(line: 85, column: 15, scope: !516)
!908 = !DILocation(line: 87, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !516, file: !1, line: 87, column: 9)
!910 = !DILocation(line: 87, column: 9, scope: !516)
!911 = !DILocation(line: 61, column: 30, scope: !510, inlinedAt: !912)
!912 = distinct !DILocation(line: 89, column: 14, scope: !516)
!913 = !DILocation(line: 64, column: 9, scope: !510, inlinedAt: !912)
!914 = !DILocation(line: 65, column: 11, scope: !822, inlinedAt: !912)
!915 = !DILocation(line: 65, column: 9, scope: !510, inlinedAt: !912)
!916 = !DILocation(line: 67, column: 8, scope: !510, inlinedAt: !912)
!917 = !DILocation(line: 71, column: 18, scope: !510, inlinedAt: !912)
!918 = !DILocation(line: 68, column: 17, scope: !510, inlinedAt: !912)
!919 = !DILocation(line: 71, column: 8, scope: !510, inlinedAt: !912)
!920 = !DILocation(line: 71, column: 16, scope: !510, inlinedAt: !912)
!921 = !DILocation(line: 72, column: 9, scope: !837, inlinedAt: !912)
!922 = !DILocation(line: 72, column: 53, scope: !837, inlinedAt: !912)
!923 = !DILocation(line: 72, column: 9, scope: !510, inlinedAt: !912)
!924 = !DILocation(line: 74, column: 23, scope: !510, inlinedAt: !912)
!925 = !DILocation(line: 74, column: 5, scope: !510, inlinedAt: !912)
!926 = !DILocation(line: 75, column: 5, scope: !510, inlinedAt: !912)
!927 = !DILocation(line: 78, column: 5, scope: !844, inlinedAt: !912)
!928 = !DILocation(line: 78, column: 5, scope: !846, inlinedAt: !912)
!929 = !DILocation(line: 78, column: 5, scope: !515, inlinedAt: !912)
!930 = !DILocation(line: 78, column: 5, scope: !850, inlinedAt: !912)
!931 = !DILocation(line: 89, column: 14, scope: !516)
!932 = !DILocation(line: 85, column: 25, scope: !516)
!933 = !DILocation(line: 90, column: 5, scope: !934)
!934 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!935 = !DILocation(line: 90, column: 5, scope: !936)
!936 = distinct !DILexicalBlock(scope: !524, file: !1, line: 90, column: 5)
!937 = !DILocation(line: 90, column: 5, scope: !524)
!938 = !DILocation(line: 90, column: 5, scope: !939)
!939 = !DILexicalBlockFile(scope: !936, file: !1, discriminator: 3)
!940 = !DILocation(line: 92, column: 1, scope: !516)
!941 = !DILocation(line: 96, column: 38, scope: !525)
!942 = !DILocation(line: 96, column: 50, scope: !525)
!943 = !DILocation(line: 102, column: 34, scope: !525)
!944 = !DILocation(line: 102, column: 55, scope: !525)
!945 = !{!946, !835, i64 16}
!946 = !{!"_ts", !835, i64 0, !835, i64 8, !835, i64 16, !835, i64 24, !855, i64 32, !833, i64 36, !833, i64 37, !855, i64 40, !855, i64 44, !835, i64 48, !835, i64 56, !835, i64 64, !835, i64 72, !835, i64 80, !835, i64 88, !835, i64 96, !835, i64 104, !835, i64 112, !835, i64 120, !835, i64 128, !855, i64 136, !835, i64 144, !832, i64 152, !855, i64 160, !835, i64 168, !835, i64 176, !835, i64 184}
!947 = !DILocation(line: 102, column: 25, scope: !525)
!948 = !DILocation(line: 103, column: 17, scope: !949)
!949 = distinct !DILexicalBlock(scope: !525, file: !1, line: 103, column: 9)
!950 = !{!951, !835, i64 16}
!951 = !{!"_is", !835, i64 0, !835, i64 8, !835, i64 16, !835, i64 24, !835, i64 32, !835, i64 40, !835, i64 48, !835, i64 56, !835, i64 64, !835, i64 72, !855, i64 80, !855, i64 84, !855, i64 88, !835, i64 96}
!952 = !DILocation(line: 103, column: 25, scope: !949)
!953 = !DILocation(line: 103, column: 9, scope: !525)
!954 = !DILocation(line: 104, column: 9, scope: !949)
!955 = !DILocation(line: 105, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !525, file: !1, line: 105, column: 9)
!957 = !DILocation(line: 105, column: 39, scope: !956)
!958 = !DILocation(line: 105, column: 9, scope: !525)
!959 = !DILocation(line: 107, column: 24, scope: !960)
!960 = distinct !DILexicalBlock(scope: !525, file: !1, line: 107, column: 9)
!961 = !{!962, !832, i64 24}
!962 = !{!"PyModuleDef", !963, i64 0, !835, i64 40, !835, i64 48, !832, i64 56, !835, i64 64, !835, i64 72, !835, i64 80, !835, i64 88, !835, i64 96}
!963 = !{!"PyModuleDef_Base", !831, i64 0, !835, i64 16, !832, i64 24, !835, i64 32}
!964 = !DILocation(line: 107, column: 32, scope: !960)
!965 = !DILocation(line: 107, column: 9, scope: !525)
!966 = !DILocation(line: 108, column: 26, scope: !967)
!967 = distinct !DILexicalBlock(scope: !960, file: !1, line: 107, column: 38)
!968 = !{!832, !832, i64 0}
!969 = !DILocation(line: 109, column: 9, scope: !967)
!970 = !DILocation(line: 109, column: 27, scope: !967)
!971 = !DILocation(line: 110, column: 9, scope: !967)
!972 = !DILocation(line: 110, column: 25, scope: !967)
!973 = !DILocation(line: 111, column: 34, scope: !967)
!974 = !DILocation(line: 111, column: 32, scope: !967)
!975 = !DILocation(line: 112, column: 5, scope: !967)
!976 = !DILocation(line: 113, column: 20, scope: !525)
!977 = !{!962, !835, i64 40}
!978 = !DILocation(line: 100, column: 17, scope: !525)
!979 = !DILocation(line: 114, column: 50, scope: !540)
!980 = !DILocation(line: 116, column: 32, scope: !539)
!981 = !{!835, !835, i64 0}
!982 = !DILocation(line: 116, column: 15, scope: !539)
!983 = !DILocation(line: 115, column: 13, scope: !539)
!984 = !DILocation(line: 121, column: 13, scope: !985)
!985 = distinct !DILexicalBlock(scope: !539, file: !1, line: 121, column: 13)
!986 = !DILocation(line: 133, column: 9, scope: !543)
!987 = !DILocation(line: 133, column: 28, scope: !543)
!988 = !DILocation(line: 133, column: 9, scope: !525)
!989 = !DILocation(line: 134, column: 19, scope: !542)
!990 = !DILocation(line: 134, column: 15, scope: !542)
!991 = !DILocation(line: 135, column: 15, scope: !546)
!992 = !DILocation(line: 135, column: 23, scope: !546)
!993 = !DILocation(line: 135, column: 26, scope: !994)
!994 = !DILexicalBlockFile(scope: !545, file: !1, discriminator: 1)
!995 = !DILocation(line: 135, column: 54, scope: !546)
!996 = !DILocation(line: 135, column: 13, scope: !542)
!997 = !DILocation(line: 137, column: 32, scope: !998)
!998 = distinct !DILexicalBlock(scope: !546, file: !1, line: 135, column: 60)
!999 = !DILocation(line: 138, column: 9, scope: !998)
!1000 = !DILocation(line: 140, column: 31, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !525, file: !1, line: 140, column: 9)
!1002 = !DILocation(line: 140, column: 51, scope: !1001)
!1003 = !DILocation(line: 140, column: 9, scope: !525)
!1004 = !DILocation(line: 143, column: 17, scope: !553)
!1005 = !{!962, !832, i64 56}
!1006 = !DILocation(line: 143, column: 24, scope: !553)
!1007 = !DILocation(line: 143, column: 9, scope: !525)
!1008 = !DILocation(line: 144, column: 23, scope: !552)
!1009 = !DILocation(line: 144, column: 12, scope: !552)
!1010 = !DILocation(line: 144, column: 21, scope: !552)
!1011 = !{!830, !835, i64 32}
!1012 = !DILocation(line: 145, column: 14, scope: !551)
!1013 = !DILocation(line: 145, column: 13, scope: !552)
!1014 = !DILocation(line: 146, column: 13, scope: !550)
!1015 = !DILocation(line: 147, column: 13, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !549, file: !1, discriminator: 1)
!1017 = !DILocation(line: 147, column: 13, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !549, file: !1, line: 147, column: 13)
!1019 = !DILocation(line: 147, column: 13, scope: !549)
!1020 = !DILocation(line: 147, column: 13, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1018, file: !1, discriminator: 3)
!1022 = !DILocation(line: 150, column: 40, scope: !552)
!1023 = !DILocation(line: 150, column: 9, scope: !552)
!1024 = !DILocation(line: 151, column: 5, scope: !552)
!1025 = !DILocation(line: 201, column: 28, scope: !600, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 153, column: 9, scope: !525)
!1027 = !DILocation(line: 204, column: 10, scope: !1028, inlinedAt: !1026)
!1028 = distinct !DILexicalBlock(scope: !600, file: !1, line: 204, column: 9)
!1029 = !DILocation(line: 204, column: 10, scope: !1030, inlinedAt: !1026)
!1030 = !DILexicalBlockFile(scope: !1028, file: !1, discriminator: 1)
!1031 = !DILocation(line: 204, column: 9, scope: !600, inlinedAt: !1026)
!1032 = !DILocation(line: 205, column: 9, scope: !1033, inlinedAt: !1026)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 204, column: 29)
!1034 = !DILocation(line: 206, column: 9, scope: !1033, inlinedAt: !1026)
!1035 = !DILocation(line: 208, column: 34, scope: !600, inlinedAt: !1026)
!1036 = !DILocation(line: 203, column: 15, scope: !600, inlinedAt: !1026)
!1037 = !DILocation(line: 209, column: 11, scope: !1038, inlinedAt: !1026)
!1038 = distinct !DILexicalBlock(scope: !600, file: !1, line: 209, column: 9)
!1039 = !DILocation(line: 209, column: 9, scope: !600, inlinedAt: !1026)
!1040 = !DILocation(line: 210, column: 48, scope: !1038, inlinedAt: !1026)
!1041 = !DILocation(line: 210, column: 42, scope: !1038, inlinedAt: !1026)
!1042 = !DILocation(line: 210, column: 9, scope: !1038, inlinedAt: !1026)
!1043 = !DILocation(line: 153, column: 9, scope: !525)
!1044 = !DILocation(line: 98, column: 15, scope: !525)
!1045 = !DILocation(line: 154, column: 17, scope: !559)
!1046 = !{!962, !835, i64 64}
!1047 = !DILocation(line: 154, column: 27, scope: !559)
!1048 = !DILocation(line: 154, column: 9, scope: !525)
!1049 = !DILocation(line: 155, column: 13, scope: !558)
!1050 = !DILocation(line: 98, column: 23, scope: !525)
!1051 = !DILocation(line: 156, column: 15, scope: !557)
!1052 = !DILocation(line: 156, column: 13, scope: !558)
!1053 = !DILocation(line: 157, column: 13, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!1055 = !DILocation(line: 157, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !555, file: !1, line: 157, column: 13)
!1057 = !DILocation(line: 157, column: 13, scope: !555)
!1058 = !DILocation(line: 157, column: 13, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1056, file: !1, discriminator: 3)
!1060 = !DILocation(line: 160, column: 27, scope: !566)
!1061 = !DILocation(line: 99, column: 18, scope: !525)
!1062 = !DILocation(line: 160, column: 42, scope: !565)
!1063 = !{!1064, !835, i64 0}
!1064 = !{!"PyMethodDef", !835, i64 0, !835, i64 8, !855, i64 16, !835, i64 24}
!1065 = !DILocation(line: 160, column: 50, scope: !565)
!1066 = !DILocation(line: 160, column: 9, scope: !566)
!1067 = !DILocation(line: 161, column: 22, scope: !563)
!1068 = !{!1064, !855, i64 16}
!1069 = !DILocation(line: 161, column: 45, scope: !563)
!1070 = !DILocation(line: 163, column: 33, scope: !562)
!1071 = !DILocation(line: 163, column: 17, scope: !562)
!1072 = !DILocation(line: 166, column: 17, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!1074 = !DILocation(line: 166, column: 17, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !561, file: !1, line: 166, column: 17)
!1076 = !DILocation(line: 166, column: 17, scope: !561)
!1077 = !DILocation(line: 166, column: 17, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1075, file: !1, discriminator: 3)
!1079 = !DILocation(line: 167, column: 17, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !568, file: !1, discriminator: 1)
!1081 = !DILocation(line: 167, column: 17, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !568, file: !1, line: 167, column: 17)
!1083 = !DILocation(line: 167, column: 17, scope: !568)
!1084 = !DILocation(line: 167, column: 17, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1082, file: !1, discriminator: 3)
!1086 = !DILocation(line: 170, column: 17, scope: !564)
!1087 = !DILocation(line: 98, column: 19, scope: !525)
!1088 = !DILocation(line: 171, column: 19, scope: !572)
!1089 = !DILocation(line: 171, column: 17, scope: !564)
!1090 = !DILocation(line: 172, column: 17, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 1)
!1092 = !DILocation(line: 172, column: 17, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !570, file: !1, line: 172, column: 17)
!1094 = !DILocation(line: 172, column: 17, scope: !570)
!1095 = !DILocation(line: 172, column: 17, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1093, file: !1, discriminator: 3)
!1097 = !DILocation(line: 173, column: 17, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!1099 = !DILocation(line: 173, column: 17, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !574, file: !1, line: 173, column: 17)
!1101 = !DILocation(line: 173, column: 17, scope: !574)
!1102 = !DILocation(line: 173, column: 17, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1100, file: !1, discriminator: 3)
!1104 = !DILocation(line: 176, column: 45, scope: !578)
!1105 = !DILocation(line: 176, column: 17, scope: !578)
!1106 = !DILocation(line: 176, column: 57, scope: !578)
!1107 = !DILocation(line: 182, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !584, file: !1, line: 182, column: 13)
!1109 = !DILocation(line: 176, column: 17, scope: !564)
!1110 = !DILocation(line: 177, column: 17, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!1112 = !DILocation(line: 177, column: 17, scope: !576)
!1113 = !DILocation(line: 177, column: 17, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1115, file: !1, discriminator: 3)
!1115 = distinct !DILexicalBlock(scope: !576, file: !1, line: 177, column: 17)
!1116 = !DILocation(line: 178, column: 17, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1118 = !DILocation(line: 178, column: 17, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !580, file: !1, line: 178, column: 17)
!1120 = !DILocation(line: 178, column: 17, scope: !580)
!1121 = !DILocation(line: 178, column: 17, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1119, file: !1, discriminator: 3)
!1123 = !DILocation(line: 179, column: 17, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1125 = !DILocation(line: 179, column: 17, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !582, file: !1, line: 179, column: 17)
!1127 = !DILocation(line: 179, column: 17, scope: !582)
!1128 = !DILocation(line: 179, column: 17, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 3)
!1130 = !DILocation(line: 182, column: 13, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 1)
!1132 = !DILocation(line: 182, column: 13, scope: !584)
!1133 = !DILocation(line: 182, column: 13, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 3)
!1135 = !DILocation(line: 160, column: 61, scope: !565)
!1136 = !DILocation(line: 184, column: 9, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!1138 = !DILocation(line: 184, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !586, file: !1, line: 184, column: 9)
!1140 = !DILocation(line: 184, column: 9, scope: !586)
!1141 = !DILocation(line: 184, column: 9, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1139, file: !1, discriminator: 3)
!1143 = !DILocation(line: 186, column: 17, scope: !592)
!1144 = !{!962, !835, i64 48}
!1145 = !DILocation(line: 186, column: 23, scope: !592)
!1146 = !DILocation(line: 186, column: 9, scope: !525)
!1147 = !DILocation(line: 187, column: 13, scope: !591)
!1148 = !DILocation(line: 188, column: 23, scope: !590)
!1149 = !DILocation(line: 188, column: 26, scope: !590)
!1150 = !DILocation(line: 188, column: 64, scope: !590)
!1151 = !DILocation(line: 193, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !599, file: !1, line: 193, column: 9)
!1153 = !DILocation(line: 188, column: 13, scope: !591)
!1154 = !DILocation(line: 189, column: 13, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!1156 = !DILocation(line: 189, column: 13, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !594, file: !1, discriminator: 4)
!1158 = !DILocation(line: 189, column: 13, scope: !594)
!1159 = !DILocation(line: 189, column: 13, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !1, discriminator: 6)
!1161 = distinct !DILexicalBlock(scope: !594, file: !1, line: 189, column: 13)
!1162 = !DILocation(line: 190, column: 13, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!1164 = !DILocation(line: 190, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !597, file: !1, line: 190, column: 13)
!1166 = !DILocation(line: 190, column: 13, scope: !597)
!1167 = !DILocation(line: 190, column: 13, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1165, file: !1, discriminator: 3)
!1169 = !DILocation(line: 193, column: 9, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 1)
!1171 = !DILocation(line: 193, column: 9, scope: !599)
!1172 = !DILocation(line: 193, column: 9, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 3)
!1174 = !DILocation(line: 195, column: 8, scope: !525)
!1175 = !DILocation(line: 195, column: 15, scope: !525)
!1176 = !{!830, !835, i64 24}
!1177 = !DILocation(line: 196, column: 5, scope: !525)
!1178 = !DILocation(line: 197, column: 1, scope: !525)
!1179 = !DILocation(line: 201, column: 28, scope: !600)
!1180 = !DILocation(line: 204, column: 10, scope: !1028)
!1181 = !DILocation(line: 204, column: 10, scope: !1030)
!1182 = !DILocation(line: 204, column: 9, scope: !600)
!1183 = !DILocation(line: 205, column: 9, scope: !1033)
!1184 = !DILocation(line: 206, column: 9, scope: !1033)
!1185 = !DILocation(line: 208, column: 34, scope: !600)
!1186 = !DILocation(line: 203, column: 15, scope: !600)
!1187 = !DILocation(line: 209, column: 11, scope: !1038)
!1188 = !DILocation(line: 209, column: 9, scope: !600)
!1189 = !DILocation(line: 210, column: 48, scope: !1038)
!1190 = !DILocation(line: 210, column: 42, scope: !1038)
!1191 = !DILocation(line: 210, column: 9, scope: !1038)
!1192 = !DILocation(line: 212, column: 1, scope: !600)
!1193 = !DILocation(line: 215, column: 34, scope: !604)
!1194 = !DILocation(line: 219, column: 10, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !604, file: !1, line: 219, column: 9)
!1196 = !DILocation(line: 219, column: 10, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1195, file: !1, discriminator: 1)
!1198 = !DILocation(line: 219, column: 9, scope: !604)
!1199 = !DILocation(line: 220, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 219, column: 29)
!1201 = !DILocation(line: 221, column: 9, scope: !1200)
!1202 = !DILocation(line: 223, column: 32, scope: !604)
!1203 = !DILocation(line: 217, column: 15, scope: !604)
!1204 = !DILocation(line: 224, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !604, file: !1, line: 224, column: 9)
!1206 = !DILocation(line: 224, column: 19, scope: !1205)
!1207 = !DILocation(line: 225, column: 17, scope: !1205)
!1208 = !DILocation(line: 218, column: 15, scope: !604)
!1209 = !DILocation(line: 225, column: 54, scope: !1205)
!1210 = !DILocation(line: 225, column: 62, scope: !1205)
!1211 = !DILocation(line: 226, column: 10, scope: !1205)
!1212 = !{!853, !832, i64 168}
!1213 = !DILocation(line: 224, column: 9, scope: !604)
!1214 = !DILocation(line: 228, column: 25, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 227, column: 5)
!1216 = !DILocation(line: 228, column: 9, scope: !1215)
!1217 = !DILocation(line: 229, column: 9, scope: !1215)
!1218 = !DILocation(line: 231, column: 5, scope: !604)
!1219 = !DILocation(line: 232, column: 5, scope: !604)
!1220 = !DILocation(line: 233, column: 1, scope: !604)
!1221 = !DILocation(line: 236, column: 28, scope: !609)
!1222 = !DILocation(line: 215, column: 34, scope: !604, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 238, column: 22, scope: !609)
!1224 = !DILocation(line: 219, column: 10, scope: !1195, inlinedAt: !1223)
!1225 = !DILocation(line: 219, column: 10, scope: !1197, inlinedAt: !1223)
!1226 = !DILocation(line: 219, column: 9, scope: !604, inlinedAt: !1223)
!1227 = !DILocation(line: 220, column: 9, scope: !1200, inlinedAt: !1223)
!1228 = !DILocation(line: 221, column: 9, scope: !1200, inlinedAt: !1223)
!1229 = !DILocation(line: 223, column: 32, scope: !604, inlinedAt: !1223)
!1230 = !DILocation(line: 217, column: 15, scope: !604, inlinedAt: !1223)
!1231 = !DILocation(line: 224, column: 11, scope: !1205, inlinedAt: !1223)
!1232 = !DILocation(line: 224, column: 19, scope: !1205, inlinedAt: !1223)
!1233 = !DILocation(line: 225, column: 17, scope: !1205, inlinedAt: !1223)
!1234 = !DILocation(line: 218, column: 15, scope: !604, inlinedAt: !1223)
!1235 = !DILocation(line: 225, column: 54, scope: !1205, inlinedAt: !1223)
!1236 = !DILocation(line: 225, column: 62, scope: !1205, inlinedAt: !1223)
!1237 = !DILocation(line: 226, column: 10, scope: !1205, inlinedAt: !1223)
!1238 = !DILocation(line: 241, column: 5, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 3)
!1240 = distinct !DILexicalBlock(scope: !616, file: !1, line: 241, column: 5)
!1241 = !DILocation(line: 224, column: 9, scope: !604, inlinedAt: !1223)
!1242 = !DILocation(line: 228, column: 25, scope: !1215, inlinedAt: !1223)
!1243 = !DILocation(line: 228, column: 9, scope: !1215, inlinedAt: !1223)
!1244 = !DILocation(line: 229, column: 9, scope: !1215, inlinedAt: !1223)
!1245 = !DILocation(line: 231, column: 5, scope: !604, inlinedAt: !1223)
!1246 = !DILocation(line: 238, column: 15, scope: !609)
!1247 = !DILocation(line: 241, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 1)
!1249 = !DILocation(line: 241, column: 5, scope: !1240)
!1250 = !DILocation(line: 241, column: 5, scope: !616)
!1251 = !DILocation(line: 242, column: 12, scope: !609)
!1252 = !DILocation(line: 242, column: 5, scope: !609)
!1253 = !DILocation(line: 243, column: 1, scope: !609)
!1254 = !DILocation(line: 246, column: 38, scope: !617)
!1255 = !DILocation(line: 250, column: 10, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !617, file: !1, line: 250, column: 9)
!1257 = !DILocation(line: 250, column: 10, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1256, file: !1, discriminator: 1)
!1259 = !DILocation(line: 250, column: 9, scope: !617)
!1260 = !DILocation(line: 251, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 250, column: 29)
!1262 = !DILocation(line: 252, column: 9, scope: !1261)
!1263 = !DILocation(line: 254, column: 32, scope: !617)
!1264 = !DILocation(line: 248, column: 15, scope: !617)
!1265 = !DILocation(line: 255, column: 11, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !617, file: !1, line: 255, column: 9)
!1267 = !DILocation(line: 255, column: 19, scope: !1266)
!1268 = !DILocation(line: 256, column: 20, scope: !1266)
!1269 = !DILocation(line: 249, column: 15, scope: !617)
!1270 = !DILocation(line: 256, column: 57, scope: !1266)
!1271 = !DILocation(line: 256, column: 65, scope: !1266)
!1272 = !DILocation(line: 257, column: 10, scope: !1266)
!1273 = !DILocation(line: 255, column: 9, scope: !617)
!1274 = !DILocation(line: 259, column: 25, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 258, column: 5)
!1276 = !DILocation(line: 259, column: 9, scope: !1275)
!1277 = !DILocation(line: 260, column: 9, scope: !1275)
!1278 = !DILocation(line: 262, column: 5, scope: !617)
!1279 = !DILocation(line: 263, column: 5, scope: !617)
!1280 = !DILocation(line: 264, column: 1, scope: !617)
!1281 = !DILocation(line: 267, column: 32, scope: !622)
!1282 = !DILocation(line: 246, column: 38, scope: !617, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 271, column: 15, scope: !622)
!1284 = !DILocation(line: 250, column: 10, scope: !1256, inlinedAt: !1283)
!1285 = !DILocation(line: 250, column: 10, scope: !1258, inlinedAt: !1283)
!1286 = !DILocation(line: 250, column: 9, scope: !617, inlinedAt: !1283)
!1287 = !DILocation(line: 251, column: 9, scope: !1261, inlinedAt: !1283)
!1288 = !DILocation(line: 252, column: 9, scope: !1261, inlinedAt: !1283)
!1289 = !DILocation(line: 254, column: 32, scope: !617, inlinedAt: !1283)
!1290 = !DILocation(line: 248, column: 15, scope: !617, inlinedAt: !1283)
!1291 = !DILocation(line: 255, column: 11, scope: !1266, inlinedAt: !1283)
!1292 = !DILocation(line: 255, column: 19, scope: !1266, inlinedAt: !1283)
!1293 = !DILocation(line: 256, column: 20, scope: !1266, inlinedAt: !1283)
!1294 = !DILocation(line: 249, column: 15, scope: !617, inlinedAt: !1283)
!1295 = !DILocation(line: 256, column: 57, scope: !1266, inlinedAt: !1283)
!1296 = !DILocation(line: 256, column: 65, scope: !1266, inlinedAt: !1283)
!1297 = !DILocation(line: 257, column: 10, scope: !1266, inlinedAt: !1283)
!1298 = !DILocation(line: 255, column: 9, scope: !617, inlinedAt: !1283)
!1299 = !DILocation(line: 259, column: 25, scope: !1275, inlinedAt: !1283)
!1300 = !DILocation(line: 259, column: 9, scope: !1275, inlinedAt: !1283)
!1301 = !DILocation(line: 260, column: 9, scope: !1275, inlinedAt: !1283)
!1302 = !DILocation(line: 262, column: 5, scope: !617, inlinedAt: !1283)
!1303 = !DILocation(line: 269, column: 15, scope: !622)
!1304 = !DILocation(line: 274, column: 12, scope: !622)
!1305 = !DILocation(line: 270, column: 11, scope: !622)
!1306 = !DILocation(line: 275, column: 5, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 1)
!1308 = !DILocation(line: 275, column: 5, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !628, file: !1, line: 275, column: 5)
!1310 = !DILocation(line: 275, column: 5, scope: !628)
!1311 = !DILocation(line: 275, column: 5, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1309, file: !1, discriminator: 3)
!1313 = !DILocation(line: 277, column: 1, scope: !622)
!1314 = !DILocation(line: 280, column: 27, scope: !629)
!1315 = !DILocation(line: 282, column: 10, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !629, file: !1, line: 282, column: 9)
!1317 = !DILocation(line: 282, column: 10, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1316, file: !1, discriminator: 1)
!1319 = !DILocation(line: 282, column: 9, scope: !629)
!1320 = !DILocation(line: 283, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 282, column: 29)
!1322 = !DILocation(line: 284, column: 9, scope: !1321)
!1323 = !DILocation(line: 286, column: 35, scope: !629)
!1324 = !DILocation(line: 286, column: 5, scope: !629)
!1325 = !DILocation(line: 287, column: 1, scope: !629)
!1326 = !DILocation(line: 290, column: 29, scope: !634)
!1327 = !DILocation(line: 292, column: 10, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !634, file: !1, line: 292, column: 9)
!1329 = !DILocation(line: 292, column: 10, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 1)
!1331 = !DILocation(line: 292, column: 9, scope: !634)
!1332 = !DILocation(line: 293, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 292, column: 29)
!1334 = !DILocation(line: 294, column: 9, scope: !1333)
!1335 = !DILocation(line: 296, column: 35, scope: !634)
!1336 = !DILocation(line: 296, column: 5, scope: !634)
!1337 = !DILocation(line: 297, column: 1, scope: !634)
!1338 = !DILocation(line: 300, column: 27, scope: !639)
!1339 = !DILocation(line: 302, column: 42, scope: !639)
!1340 = !DILocation(line: 302, column: 15, scope: !639)
!1341 = !DILocation(line: 303, column: 11, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !639, file: !1, line: 303, column: 9)
!1343 = !DILocation(line: 303, column: 9, scope: !639)
!1344 = !DILocation(line: 304, column: 9, scope: !1342)
!1345 = !DILocation(line: 305, column: 1, scope: !639)
!1346 = !DILocation(line: 308, column: 31, scope: !643)
!1347 = !DILocation(line: 317, column: 5, scope: !643)
!1348 = !DILocation(line: 318, column: 5, scope: !643)
!1349 = !DILocation(line: 317, column: 16, scope: !643)
!1350 = !DILocation(line: 321, column: 9, scope: !643)
!1351 = !DILocation(line: 318, column: 15, scope: !643)
!1352 = !DILocation(line: 318, column: 21, scope: !643)
!1353 = !DILocation(line: 322, column: 12, scope: !643)
!1354 = !DILocation(line: 322, column: 5, scope: !643)
!1355 = !DILocation(line: 323, column: 13, scope: !655)
!1356 = !DILocation(line: 323, column: 19, scope: !655)
!1357 = !DILocation(line: 323, column: 30, scope: !655)
!1358 = !DILocation(line: 327, column: 57, scope: !650)
!1359 = !DILocation(line: 323, column: 33, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 1)
!1361 = !DILocation(line: 323, column: 13, scope: !656)
!1362 = !DILocation(line: 324, column: 17, scope: !653)
!1363 = !DILocation(line: 325, column: 17, scope: !653)
!1364 = !DILocation(line: 324, column: 17, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 1)
!1366 = !DILocation(line: 324, column: 17, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 3)
!1368 = !DILocation(line: 324, column: 17, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 5)
!1370 = !DILocation(line: 324, column: 17, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 6)
!1372 = !DILocation(line: 324, column: 17, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 4)
!1374 = !DILocation(line: 324, column: 17, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1376, file: !1, discriminator: 10)
!1376 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 9)
!1377 = !{!833, !833, i64 0}
!1378 = !DILocation(line: 324, column: 17, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 2)
!1380 = !DILocation(line: 324, column: 17, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 12)
!1382 = !DILocation(line: 324, column: 17, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 14)
!1384 = !DILocation(line: 324, column: 17, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 16)
!1386 = !DILocation(line: 324, column: 17, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 17)
!1388 = !DILocation(line: 324, column: 17, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 15)
!1390 = !DILocation(line: 324, column: 17, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !1, discriminator: 21)
!1392 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 20)
!1393 = !{!1394, !1394, i64 0}
!1394 = !{!"short", !833, i64 0}
!1395 = !DILocation(line: 324, column: 17, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 13)
!1397 = !DILocation(line: 324, column: 17, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 23)
!1399 = !DILocation(line: 324, column: 17, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 25)
!1401 = !DILocation(line: 324, column: 17, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 26)
!1403 = !DILocation(line: 324, column: 17, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 24)
!1405 = !DILocation(line: 324, column: 17, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !1, discriminator: 30)
!1407 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 29)
!1408 = !{!855, !855, i64 0}
!1409 = !DILocation(line: 324, column: 45, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !1, discriminator: 32)
!1411 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 11)
!1412 = !DILocation(line: 324, column: 52, scope: !653)
!1413 = !DILocation(line: 325, column: 17, scope: !1365)
!1414 = !DILocation(line: 325, column: 17, scope: !1367)
!1415 = !DILocation(line: 325, column: 17, scope: !1369)
!1416 = !DILocation(line: 325, column: 17, scope: !1371)
!1417 = !DILocation(line: 325, column: 17, scope: !1373)
!1418 = !DILocation(line: 325, column: 17, scope: !1375)
!1419 = !DILocation(line: 325, column: 17, scope: !1379)
!1420 = !DILocation(line: 325, column: 17, scope: !1381)
!1421 = !DILocation(line: 325, column: 17, scope: !1383)
!1422 = !DILocation(line: 325, column: 17, scope: !1385)
!1423 = !DILocation(line: 325, column: 17, scope: !1387)
!1424 = !DILocation(line: 325, column: 17, scope: !1389)
!1425 = !DILocation(line: 325, column: 17, scope: !1391)
!1426 = !DILocation(line: 325, column: 17, scope: !1396)
!1427 = !DILocation(line: 325, column: 17, scope: !1398)
!1428 = !DILocation(line: 325, column: 17, scope: !1400)
!1429 = !DILocation(line: 325, column: 17, scope: !1402)
!1430 = !DILocation(line: 325, column: 17, scope: !1404)
!1431 = !DILocation(line: 325, column: 17, scope: !1406)
!1432 = !DILocation(line: 325, column: 45, scope: !1410)
!1433 = !DILocation(line: 324, column: 17, scope: !654)
!1434 = !DILocation(line: 326, column: 21, scope: !651)
!1435 = !DILocation(line: 326, column: 36, scope: !651)
!1436 = !DILocation(line: 326, column: 21, scope: !652)
!1437 = !DILocation(line: 327, column: 37, scope: !650)
!1438 = !DILocation(line: 327, column: 33, scope: !650)
!1439 = !DILocation(line: 328, column: 27, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !650, file: !1, line: 328, column: 25)
!1441 = !DILocation(line: 328, column: 25, scope: !650)
!1442 = !DILocation(line: 329, column: 25, scope: !1440)
!1443 = !DILocation(line: 331, column: 25, scope: !1440)
!1444 = !DILocation(line: 333, column: 39, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !652, file: !1, line: 333, column: 21)
!1446 = !DILocation(line: 333, column: 21, scope: !1445)
!1447 = !DILocation(line: 333, column: 53, scope: !1445)
!1448 = !DILocation(line: 333, column: 21, scope: !652)
!1449 = !DILocation(line: 334, column: 21, scope: !1445)
!1450 = !DILocation(line: 340, column: 9, scope: !643)
!1451 = !DILocation(line: 341, column: 12, scope: !643)
!1452 = !DILocation(line: 341, column: 5, scope: !643)
!1453 = !DILocation(line: 342, column: 13, scope: !663)
!1454 = !DILocation(line: 342, column: 19, scope: !663)
!1455 = !DILocation(line: 342, column: 30, scope: !663)
!1456 = !DILocation(line: 344, column: 50, scope: !661)
!1457 = !DILocation(line: 342, column: 33, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 1)
!1459 = !DILocation(line: 342, column: 13, scope: !664)
!1460 = !DILocation(line: 343, column: 17, scope: !661)
!1461 = !DILocation(line: 343, column: 17, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 1)
!1463 = !DILocation(line: 343, column: 17, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 3)
!1465 = !DILocation(line: 343, column: 17, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 5)
!1467 = !DILocation(line: 343, column: 17, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 6)
!1469 = !DILocation(line: 343, column: 17, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 4)
!1471 = !DILocation(line: 343, column: 17, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 10)
!1473 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 9)
!1474 = !DILocation(line: 343, column: 17, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 2)
!1476 = !DILocation(line: 343, column: 17, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 12)
!1478 = !DILocation(line: 343, column: 17, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 14)
!1480 = !DILocation(line: 343, column: 17, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 16)
!1482 = !DILocation(line: 343, column: 17, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 17)
!1484 = !DILocation(line: 343, column: 17, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 15)
!1486 = !DILocation(line: 343, column: 17, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1488, file: !1, discriminator: 21)
!1488 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 20)
!1489 = !DILocation(line: 343, column: 17, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 13)
!1491 = !DILocation(line: 343, column: 17, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 23)
!1493 = !DILocation(line: 343, column: 17, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 25)
!1495 = !DILocation(line: 343, column: 17, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 26)
!1497 = !DILocation(line: 343, column: 17, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 24)
!1499 = !DILocation(line: 343, column: 17, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 30)
!1501 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 29)
!1502 = !DILocation(line: 343, column: 45, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !1, discriminator: 32)
!1504 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 11)
!1505 = !DILocation(line: 343, column: 52, scope: !661)
!1506 = !DILocation(line: 344, column: 17, scope: !661)
!1507 = !DILocation(line: 344, column: 71, scope: !661)
!1508 = !DILocation(line: 343, column: 17, scope: !662)
!1509 = !DILocation(line: 346, column: 21, scope: !659)
!1510 = !DILocation(line: 346, column: 36, scope: !659)
!1511 = !DILocation(line: 346, column: 21, scope: !660)
!1512 = !DILocation(line: 347, column: 57, scope: !658)
!1513 = !DILocation(line: 347, column: 37, scope: !658)
!1514 = !DILocation(line: 347, column: 33, scope: !658)
!1515 = !DILocation(line: 348, column: 27, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !658, file: !1, line: 348, column: 25)
!1517 = !DILocation(line: 348, column: 25, scope: !658)
!1518 = !DILocation(line: 349, column: 25, scope: !1516)
!1519 = !DILocation(line: 351, column: 25, scope: !1516)
!1520 = !DILocation(line: 353, column: 39, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !660, file: !1, line: 353, column: 21)
!1522 = !DILocation(line: 353, column: 21, scope: !1521)
!1523 = !DILocation(line: 353, column: 53, scope: !1521)
!1524 = !DILocation(line: 353, column: 21, scope: !660)
!1525 = !DILocation(line: 354, column: 21, scope: !1521)
!1526 = !DILocation(line: 363, column: 1, scope: !643)
!1527 = !DILocation(line: 388, column: 32, scope: !680)
!1528 = !DILocation(line: 390, column: 25, scope: !680)
!1529 = !DILocation(line: 390, column: 5, scope: !680)
!1530 = !DILocation(line: 391, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !680, file: !1, line: 391, column: 9)
!1532 = !DILocation(line: 391, column: 24, scope: !1531)
!1533 = !DILocation(line: 391, column: 30, scope: !1531)
!1534 = !DILocation(line: 391, column: 27, scope: !1531)
!1535 = !DILocation(line: 391, column: 9, scope: !680)
!1536 = !DILocation(line: 392, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 391, column: 39)
!1538 = !DILocation(line: 393, column: 5, scope: !1537)
!1539 = !DILocation(line: 394, column: 12, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !680, file: !1, line: 394, column: 9)
!1541 = !{!830, !835, i64 40}
!1542 = !DILocation(line: 394, column: 24, scope: !1540)
!1543 = !DILocation(line: 394, column: 9, scope: !680)
!1544 = !DILocation(line: 395, column: 32, scope: !1540)
!1545 = !DILocation(line: 395, column: 9, scope: !1540)
!1546 = !DILocation(line: 396, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !680, file: !1, line: 396, column: 9)
!1548 = !DILocation(line: 396, column: 9, scope: !1547)
!1549 = !DILocation(line: 396, column: 19, scope: !1547)
!1550 = !DILocation(line: 396, column: 33, scope: !1547)
!1551 = !{!962, !835, i64 96}
!1552 = !DILocation(line: 396, column: 22, scope: !1547)
!1553 = !DILocation(line: 396, column: 9, scope: !680)
!1554 = !DILocation(line: 397, column: 9, scope: !1547)
!1555 = !DILocation(line: 398, column: 5, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !686, file: !1, discriminator: 1)
!1557 = !DILocation(line: 398, column: 5, scope: !689)
!1558 = !DILocation(line: 398, column: 5, scope: !686)
!1559 = !DILocation(line: 398, column: 5, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !688, file: !1, discriminator: 4)
!1561 = !DILocation(line: 398, column: 5, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !688, file: !1, line: 398, column: 5)
!1563 = !DILocation(line: 398, column: 5, scope: !688)
!1564 = !DILocation(line: 398, column: 5, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1562, file: !1, discriminator: 6)
!1566 = !DILocation(line: 399, column: 5, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 1)
!1568 = !DILocation(line: 399, column: 5, scope: !694)
!1569 = !DILocation(line: 399, column: 5, scope: !691)
!1570 = !DILocation(line: 399, column: 5, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !693, file: !1, discriminator: 4)
!1572 = !DILocation(line: 399, column: 5, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !693, file: !1, line: 399, column: 5)
!1574 = !DILocation(line: 399, column: 5, scope: !693)
!1575 = !DILocation(line: 399, column: 5, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1573, file: !1, discriminator: 6)
!1577 = !DILocation(line: 400, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !680, file: !1, line: 400, column: 9)
!1579 = !DILocation(line: 400, column: 21, scope: !1578)
!1580 = !DILocation(line: 400, column: 9, scope: !680)
!1581 = !DILocation(line: 401, column: 9, scope: !1578)
!1582 = !DILocation(line: 402, column: 5, scope: !680)
!1583 = !DILocation(line: 402, column: 17, scope: !680)
!1584 = !{!853, !835, i64 320}
!1585 = !DILocation(line: 403, column: 1, scope: !680)
!1586 = !DILocation(line: 406, column: 29, scope: !695)
!1587 = !DILocation(line: 408, column: 29, scope: !702)
!1588 = !{}
!1589 = !DILocation(line: 408, column: 29, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 6)
!1591 = !DILexicalBlockFile(scope: !702, file: !1, discriminator: 5)
!1592 = !DILocation(line: 409, column: 42, scope: !695)
!1593 = !DILocation(line: 409, column: 25, scope: !695)
!1594 = !DILocation(line: 411, column: 40, scope: !695)
!1595 = !{!951, !835, i64 48}
!1596 = !DILocation(line: 411, column: 12, scope: !695)
!1597 = !DILocation(line: 411, column: 5, scope: !695)
!1598 = !DILocation(line: 415, column: 33, scope: !732)
!1599 = !DILocation(line: 415, column: 46, scope: !732)
!1600 = !DILocation(line: 415, column: 59, scope: !732)
!1601 = !DILocation(line: 417, column: 12, scope: !741)
!1602 = !DILocation(line: 417, column: 9, scope: !741)
!1603 = !DILocation(line: 417, column: 19, scope: !741)
!1604 = !DILocation(line: 417, column: 33, scope: !741)
!1605 = !{!962, !835, i64 80}
!1606 = !DILocation(line: 417, column: 22, scope: !741)
!1607 = !DILocation(line: 417, column: 9, scope: !732)
!1608 = !DILocation(line: 418, column: 41, scope: !740)
!1609 = !DILocation(line: 418, column: 19, scope: !740)
!1610 = !DILocation(line: 418, column: 13, scope: !740)
!1611 = !DILocation(line: 419, column: 13, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !740, file: !1, line: 419, column: 13)
!1613 = !DILocation(line: 422, column: 5, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 1)
!1615 = !DILocation(line: 422, column: 5, scope: !745)
!1616 = !DILocation(line: 422, column: 5, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 2)
!1618 = !DILocation(line: 422, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !743, file: !1, line: 422, column: 5)
!1620 = !DILocation(line: 423, column: 5, scope: !732)
!1621 = !DILocation(line: 424, column: 1, scope: !732)
!1622 = !DILocation(line: 427, column: 30, scope: !746)
!1623 = !DILocation(line: 429, column: 12, scope: !753)
!1624 = !DILocation(line: 429, column: 9, scope: !753)
!1625 = !DILocation(line: 429, column: 19, scope: !753)
!1626 = !DILocation(line: 429, column: 33, scope: !753)
!1627 = !{!962, !835, i64 88}
!1628 = !DILocation(line: 429, column: 22, scope: !753)
!1629 = !DILocation(line: 429, column: 9, scope: !746)
!1630 = !DILocation(line: 430, column: 38, scope: !752)
!1631 = !DILocation(line: 430, column: 19, scope: !752)
!1632 = !DILocation(line: 430, column: 13, scope: !752)
!1633 = !DILocation(line: 431, column: 13, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !752, file: !1, line: 431, column: 13)
!1635 = !DILocation(line: 434, column: 5, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !755, file: !1, discriminator: 1)
!1637 = !DILocation(line: 434, column: 5, scope: !759)
!1638 = !DILocation(line: 434, column: 5, scope: !755)
!1639 = !DILocation(line: 434, column: 5, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 2)
!1641 = !DILocation(line: 434, column: 5, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 4)
!1643 = !DILocation(line: 434, column: 5, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !757, file: !1, line: 434, column: 5)
!1645 = !DILocation(line: 434, column: 5, scope: !757)
!1646 = !DILocation(line: 434, column: 5, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1644, file: !1, discriminator: 6)
!1648 = !DILocation(line: 436, column: 1, scope: !746)
!1649 = !DILocation(line: 368, column: 29, scope: !776)
!1650 = !DILocation(line: 368, column: 42, scope: !776)
!1651 = !DILocation(line: 368, column: 58, scope: !776)
!1652 = !DILocation(line: 371, column: 5, scope: !776)
!1653 = !DILocation(line: 371, column: 22, scope: !776)
!1654 = !DILocation(line: 371, column: 39, scope: !776)
!1655 = !DILocation(line: 372, column: 10, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !776, file: !1, line: 372, column: 9)
!1657 = !DILocation(line: 372, column: 9, scope: !776)
!1658 = !DILocation(line: 375, column: 15, scope: !776)
!1659 = !DILocation(line: 371, column: 15, scope: !776)
!1660 = !DILocation(line: 376, column: 14, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !776, file: !1, line: 376, column: 9)
!1662 = !DILocation(line: 376, column: 9, scope: !776)
!1663 = !DILocation(line: 377, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 376, column: 23)
!1665 = !DILocation(line: 378, column: 18, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 378, column: 13)
!1667 = !DILocation(line: 378, column: 13, scope: !1664)
!1668 = !DILocation(line: 380, column: 20, scope: !1664)
!1669 = !DILocation(line: 381, column: 5, scope: !1664)
!1670 = !DILocation(line: 382, column: 35, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !776, file: !1, line: 382, column: 9)
!1672 = !DILocation(line: 382, column: 41, scope: !1671)
!1673 = !DILocation(line: 382, column: 9, scope: !1671)
!1674 = !DILocation(line: 383, column: 9, scope: !1671)
!1675 = !DILocation(line: 385, column: 1, scope: !776)
!1676 = !DILocation(line: 439, column: 22, scope: !760)
!1677 = !DILocation(line: 439, column: 38, scope: !760)
!1678 = !DILocation(line: 442, column: 15, scope: !760)
!1679 = !DILocation(line: 443, column: 22, scope: !760)
!1680 = !DILocation(line: 443, column: 15, scope: !760)
!1681 = !DILocation(line: 445, column: 14, scope: !770)
!1682 = !DILocation(line: 445, column: 9, scope: !760)
!1683 = !DILocation(line: 446, column: 13, scope: !768)
!1684 = !DILocation(line: 446, column: 13, scope: !769)
!1685 = !DILocation(line: 447, column: 22, scope: !768)
!1686 = !DILocation(line: 447, column: 13, scope: !768)
!1687 = !DILocation(line: 449, column: 32, scope: !767)
!1688 = !DILocation(line: 449, column: 25, scope: !767)
!1689 = !DILocation(line: 450, column: 17, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !767, file: !1, line: 450, column: 17)
!1691 = !DILocation(line: 450, column: 17, scope: !767)
!1692 = !DILocation(line: 451, column: 30, scope: !1690)
!1693 = !DILocation(line: 451, column: 17, scope: !1690)
!1694 = !DILocation(line: 457, column: 5, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !772, file: !1, discriminator: 1)
!1696 = !DILocation(line: 457, column: 5, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !774, file: !1, discriminator: 4)
!1698 = !DILocation(line: 457, column: 5, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !774, file: !1, line: 457, column: 5)
!1700 = !DILocation(line: 457, column: 5, scope: !774)
!1701 = !DILocation(line: 457, column: 5, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1699, file: !1, discriminator: 6)
!1703 = !DILocation(line: 458, column: 5, scope: !760)
