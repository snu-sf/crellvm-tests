; ModuleID = '_functoolsmodule.o.bc'
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.partialobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.keyobject = type { %struct._object, %struct._object*, %struct._object* }

@partial_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.partialobject*)* @partial_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.partialobject*)* @partial_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.partialobject*, %struct._object*, %struct._object*)* @partial_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @partial_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.partialobject*, i32 (%struct._object*, i8*)*, i8*)* @partial_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 48, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @partial_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @partial_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @partial_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 40, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @partial_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_functoolsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [18 x i8] c"functools.partial\00", align 1
@partial_doc = internal global [115 x i8] c"partial(func, *args, **keywords) - new function with partial application\0A    of the given arguments and keywords.\0A\00", align 16
@partial_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.partialobject*, %struct._object*)* @partial_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.partialobject*, %struct._object*)* @partial_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@partial_memberlist = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 6, i64 16, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 6, i64 24, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 32, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@partial_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyObject_GenericGetDict, i32 (%struct._object*, %struct._object*, i8*)* @PyObject_GenericSetDict, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%U, %R\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%U, %U=%R\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s(%R%U)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"O(O)(OOOO)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OOOO\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"function object to use in future partial calls\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"tuple of arguments to future partial calls\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"keywords\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"dictionary of keyword arguments to future partial calls\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.16 = private unnamed_addr constant [43 x i8] c"type 'partial' takes at least one argument\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"the first argument must be callable\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"_functools\00", align 1
@module_doc = internal global [33 x i8] c"Tools that operate on functions.\00", align 16
@module_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @functools_reduce, i32 1, i8* getelementptr inbounds ([418 x i8], [418 x i8]* @functools_reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @functools_cmp_to_key to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @functools_cmp_to_key_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@functools_reduce_doc = internal global [418 x i8] c"reduce(function, sequence[, initial]) -> value\0A\0AApply a function of two arguments cumulatively to the items of a sequence,\0Afrom left to right, so as to reduce the sequence to a single value.\0AFor example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates\0A((((1+2)+3)+4)+5).  If initial is present, it is placed before the items\0Aof the sequence in the calculation, and serves as a default when the\0Asequence is empty.\00", align 16
@.str.20 = private unnamed_addr constant [11 x i8] c"cmp_to_key\00", align 1
@functools_cmp_to_key_doc = internal global [46 x i8] c"Convert a cmp= function into a key= function.\00", align 16
@.str.21 = private unnamed_addr constant [38 x i8] c"reduce() arg 2 must support iteration\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"reduce() of empty sequence with no initial value\00", align 1
@functools_cmp_to_key.kwargs = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* null], align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"mycmp\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"O:cmp_to_key\00", align 1
@keyobject_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.keyobject*)* @keyobject_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.keyobject*, %struct._object*, %struct._object*)* @keyobject_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.keyobject*, i32 (%struct._object*, i8*)*, i8*)* @keyobject_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.keyobject*)* @keyobject_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @keyobject_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @keyobject_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"functools.KeyWrapper\00", align 1
@keyobject_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 6, i64 24, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@keyobject_call.kwargs = internal global [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"O:K\00", align 1
@keyobject_richcompare.zero = internal unnamed_addr global %struct._object* null, align 8
@.str.28 = private unnamed_addr constant [34 x i8] c"other argument must be K instance\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Value wrapped by a key function.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__functools() #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !2, metadata !384, metadata !738), !dbg !739
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @_functoolsmodule, i32 1013) #1, !dbg !740
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !382, metadata !738), !dbg !741
  %cmp = icmp eq %struct._object* %call, null, !dbg !742
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !744

for.cond.preheader:                               ; preds = %entry
  %call4 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @partial_type) #1, !dbg !745
  %cmp5 = icmp slt i32 %call4, 0, !dbg !746
  br i1 %cmp5, label %do.body, label %if.end.10, !dbg !747

do.body:                                          ; preds = %for.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !390, metadata !738), !dbg !748
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !750
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !750, !tbaa !752
  %dec = add i64 %0, -1, !dbg !750
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !750, !tbaa !752
  %cmp7 = icmp eq i64 %dec, 0, !dbg !750
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !758

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !759
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !759, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !759
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !759, !tbaa !762
  tail call void %2(%struct._object* %call) #1, !dbg !759
  br label %cleanup

if.end.10:                                        ; preds = %for.cond.preheader
  %3 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @partial_type, i64 0, i32 1), align 8, !dbg !766, !tbaa !767
  %call13 = tail call i8* @strchr(i8* %3, i32 46) #1, !dbg !766
  tail call void @llvm.dbg.value(metadata i8* %call13, i64 0, metadata !383, metadata !738), !dbg !768
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @partial_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !769, !tbaa !752
  %inc = add i64 %4, 1, !dbg !769
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @partial_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !769, !tbaa !752
  %add.ptr = getelementptr i8, i8* %call13, i64 1, !dbg !770
  %call19 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* %add.ptr, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @partial_type, i64 0, i32 0, i32 0)) #1, !dbg !771
  br label %cleanup, !dbg !772

cleanup:                                          ; preds = %if.end.10, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %call, %if.end.10 ]
  ret %struct._object* %retval.0, !dbg !772
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @partial_dealloc(%struct.partialobject* %pto) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.partialobject* %pto, i64 0, metadata !401, metadata !738), !dbg !773
  %0 = bitcast %struct.partialobject* %pto to i8*, !dbg !774
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !775
  %weakreflist = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 5, !dbg !776
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !776, !tbaa !778
  %cmp = icmp eq %struct._object* %1, null, !dbg !780
  br i1 %cmp, label %do.body, label %if.then, !dbg !781

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 0, !dbg !782
  tail call void @PyObject_ClearWeakRefs(%struct._object* %2) #1, !dbg !783
  br label %do.body, !dbg !783

do.body:                                          ; preds = %entry, %if.then
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 1, !dbg !784
  %3 = load %struct._object*, %struct._object** %fn, align 8, !dbg !784, !tbaa !786
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !402, metadata !738), !dbg !784
  %cmp1 = icmp eq %struct._object* %3, null, !dbg !787
  br i1 %cmp1, label %if.end.7, label %do.body.3, !dbg !788

do.body.3:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !404, metadata !738), !dbg !789
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !791
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !791, !tbaa !752
  %dec = add i64 %4, -1, !dbg !791
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !791, !tbaa !752
  %cmp4 = icmp eq i64 %dec, 0, !dbg !791
  br i1 %cmp4, label %if.else, label %if.end.7, !dbg !793

if.else:                                          ; preds = %do.body.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !794
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !794, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !794
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !794, !tbaa !762
  tail call void %6(%struct._object* %3) #1, !dbg !794
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %do.body.3, %do.body
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 2, !dbg !796
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !796, !tbaa !798
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !407, metadata !738), !dbg !796
  %cmp12 = icmp eq %struct._object* %7, null, !dbg !799
  br i1 %cmp12, label %if.end.26, label %do.body.14, !dbg !800

do.body.14:                                       ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !409, metadata !738), !dbg !801
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !803
  %8 = load i64, i64* %ob_refcnt16, align 8, !dbg !803, !tbaa !752
  %dec17 = add i64 %8, -1, !dbg !803
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !803, !tbaa !752
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !803
  br i1 %cmp18, label %if.else.20, label %if.end.26, !dbg !805

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !806
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !806, !tbaa !761
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !806
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !806, !tbaa !762
  tail call void %10(%struct._object* %7) #1, !dbg !806
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.20, %do.body.14, %if.end.7
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 3, !dbg !808
  %11 = load %struct._object*, %struct._object** %kw, align 8, !dbg !808, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !412, metadata !738), !dbg !808
  %cmp31 = icmp eq %struct._object* %11, null, !dbg !811
  br i1 %cmp31, label %if.end.45, label %do.body.33, !dbg !812

do.body.33:                                       ; preds = %if.end.26
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !414, metadata !738), !dbg !813
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !815
  %12 = load i64, i64* %ob_refcnt35, align 8, !dbg !815, !tbaa !752
  %dec36 = add i64 %12, -1, !dbg !815
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !815, !tbaa !752
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !815
  br i1 %cmp37, label %if.else.39, label %if.end.45, !dbg !817

if.else.39:                                       ; preds = %do.body.33
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !818
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !818, !tbaa !761
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !818
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !818, !tbaa !762
  tail call void %14(%struct._object* %11) #1, !dbg !818
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.39, %do.body.33, %if.end.26
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 4, !dbg !820
  %15 = load %struct._object*, %struct._object** %dict, align 8, !dbg !820, !tbaa !822
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !417, metadata !738), !dbg !820
  %cmp50 = icmp eq %struct._object* %15, null, !dbg !823
  br i1 %cmp50, label %if.end.64, label %do.body.52, !dbg !824

do.body.52:                                       ; preds = %if.end.45
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !419, metadata !738), !dbg !825
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !827
  %16 = load i64, i64* %ob_refcnt54, align 8, !dbg !827, !tbaa !752
  %dec55 = add i64 %16, -1, !dbg !827
  store i64 %dec55, i64* %ob_refcnt54, align 8, !dbg !827, !tbaa !752
  %cmp56 = icmp eq i64 %dec55, 0, !dbg !827
  br i1 %cmp56, label %if.else.58, label %if.end.64, !dbg !829

if.else.58:                                       ; preds = %do.body.52
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !830
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !830, !tbaa !761
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !830
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !830, !tbaa !762
  tail call void %18(%struct._object* %15) #1, !dbg !830
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.58, %do.body.52, %if.end.45
  %ob_type67 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 0, i32 1, !dbg !832
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !832, !tbaa !761
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 38, !dbg !833
  %20 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !833, !tbaa !834
  tail call void %20(i8* %0) #1, !dbg !832
  ret void, !dbg !835
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_repr(%struct.partialobject* nocapture readonly %pto) #0 {
entry:
  %i = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.partialobject* %pto, i64 0, metadata !426, metadata !738), !dbg !836
  %0 = bitcast i64* %i to i8*, !dbg !837
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !837
  %call = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #1, !dbg !838
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !428, metadata !738), !dbg !839
  %cmp = icmp eq %struct._object* %call, null, !dbg !840
  br i1 %cmp, label %cleanup.56, label %if.end, !dbg !842

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 2, !dbg !843
  %1 = bitcast %struct._object** %args to %struct.PyVarObject**, !dbg !843
  %2 = load %struct.PyVarObject*, %struct.PyVarObject** %1, align 8, !dbg !843, !tbaa !798
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i64 0, i32 1, !dbg !843
  %3 = load i64, i64* %ob_size, align 8, !dbg !843, !tbaa !844
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !431, metadata !738), !dbg !845
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !430, metadata !738), !dbg !846
  store i64 0, i64* %i, align 8, !dbg !847, !tbaa !848
  tail call void @llvm.dbg.value(metadata i64* %i, i64 0, metadata !430, metadata !738), !dbg !846
  %cmp3.90 = icmp sgt i64 %3, 0, !dbg !849
  br i1 %cmp3.90, label %for.body.lr.ph, label %for.end, !dbg !850

for.body.lr.ph:                                   ; preds = %if.end
  %4 = bitcast %struct.PyVarObject* %2 to %struct.PyTupleObject*, !dbg !850
  %5 = bitcast %struct._object** %args to %struct.PyTupleObject**, !dbg !851
  br label %for.body, !dbg !850

for.body:                                         ; preds = %if.end.12.for.body_crit_edge, %for.body.lr.ph
  %6 = phi %struct.PyTupleObject* [ %4, %for.body.lr.ph ], [ %.pre, %if.end.12.for.body_crit_edge ], !dbg !851
  %arglist.092 = phi %struct._object* [ %call, %for.body.lr.ph ], [ %call5, %if.end.12.for.body_crit_edge ]
  %storemerge91 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end.12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %6, i64 0, i32 1, i64 %storemerge91, !dbg !851
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !851, !tbaa !852
  %call5 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct._object* %arglist.092, %struct._object* %7) #1, !dbg !853
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !429, metadata !738), !dbg !854
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !432, metadata !738), !dbg !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %arglist.092, i64 0, i32 0, !dbg !857
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !857, !tbaa !752
  %dec = add i64 %8, -1, !dbg !857
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !857, !tbaa !752
  %cmp7 = icmp eq i64 %dec, 0, !dbg !857
  br i1 %cmp7, label %if.else, label %if.end.9, !dbg !859

if.else:                                          ; preds = %for.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %arglist.092, i64 0, i32 1, !dbg !860
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !860, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !860
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !860, !tbaa !762
  tail call void %10(%struct._object* %arglist.092) #1, !dbg !860
  br label %if.end.9

if.end.9:                                         ; preds = %for.body, %if.else
  %cmp10 = icmp eq %struct._object* %call5, null, !dbg !862
  br i1 %cmp10, label %cleanup.56.loopexit, label %if.end.12, !dbg !864

if.end.12:                                        ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !428, metadata !738), !dbg !839
  tail call void @llvm.dbg.value(metadata i64* %i, i64 0, metadata !430, metadata !738), !dbg !846
  %11 = load i64, i64* %i, align 8, !dbg !847, !tbaa !848
  %inc = add i64 %11, 1, !dbg !847
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !430, metadata !738), !dbg !846
  store i64 %inc, i64* %i, align 8, !dbg !847, !tbaa !848
  tail call void @llvm.dbg.value(metadata i64* %i, i64 0, metadata !430, metadata !738), !dbg !846
  %cmp3 = icmp slt i64 %inc, %3, !dbg !849
  br i1 %cmp3, label %if.end.12.for.body_crit_edge, label %for.end.loopexit, !dbg !850

if.end.12.for.body_crit_edge:                     ; preds = %if.end.12
  %.pre = load %struct.PyTupleObject*, %struct.PyTupleObject** %5, align 8, !dbg !851, !tbaa !798
  br label %for.body, !dbg !850

for.end.loopexit:                                 ; preds = %if.end.12
  %call5.lcssa106 = phi %struct._object* [ %call5, %if.end.12 ]
  br label %for.end, !dbg !865

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %arglist.0.lcssa = phi %struct._object* [ %call, %if.end ], [ %call5.lcssa106, %for.end.loopexit ]
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 3, !dbg !865
  %12 = load %struct._object*, %struct._object** %kw, align 8, !dbg !865, !tbaa !810
  %cmp13 = icmp eq %struct._object* %12, @_Py_NoneStruct, !dbg !866
  br i1 %cmp13, label %if.end.40, label %if.then.14, !dbg !867

if.then.14:                                       ; preds = %for.end
  %13 = bitcast %struct._object** %key to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !868
  %14 = bitcast %struct._object** %value to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !868
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !430, metadata !738), !dbg !846
  store i64 0, i64* %i, align 8, !dbg !869, !tbaa !848
  call void @llvm.dbg.value(metadata i64* %i, i64 0, metadata !430, metadata !738), !dbg !846
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !437, metadata !738), !dbg !870
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !440, metadata !738), !dbg !871
  %call19.100 = call i32 @PyDict_Next(%struct._object* %12, i64* nonnull %i, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !872
  %tobool.101 = icmp eq i32 %call19.100, 0, !dbg !873
  br i1 %tobool.101, label %cleanup, label %for.body.20.preheader, !dbg !873

for.body.20.preheader:                            ; preds = %if.then.14
  br label %for.body.20, !dbg !870

for.body.20:                                      ; preds = %for.body.20.preheader, %if.end.32.for.cond.17_crit_edge
  %arglist.1102 = phi %struct._object* [ %call21, %if.end.32.for.cond.17_crit_edge ], [ %arglist.0.lcssa, %for.body.20.preheader ]
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !437, metadata !738), !dbg !870
  %15 = load %struct._object*, %struct._object** %key, align 8, !dbg !874, !tbaa !852
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !440, metadata !738), !dbg !871
  %16 = load %struct._object*, %struct._object** %value, align 8, !dbg !875, !tbaa !852
  %call21 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct._object* %arglist.1102, %struct._object* %15, %struct._object* %16) #1, !dbg !876
  call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !429, metadata !738), !dbg !854
  call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !441, metadata !738), !dbg !877
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %arglist.1102, i64 0, i32 0, !dbg !879
  %17 = load i64, i64* %ob_refcnt25, align 8, !dbg !879, !tbaa !752
  %dec26 = add i64 %17, -1, !dbg !879
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !879, !tbaa !752
  %cmp27 = icmp eq i64 %dec26, 0, !dbg !879
  br i1 %cmp27, label %if.else.29, label %if.end.32, !dbg !881

if.else.29:                                       ; preds = %for.body.20
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %arglist.1102, i64 0, i32 1, !dbg !882
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !882, !tbaa !761
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !882
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !882, !tbaa !762
  call void %19(%struct._object* %arglist.1102) #1, !dbg !882
  br label %if.end.32

if.end.32:                                        ; preds = %for.body.20, %if.else.29
  %cmp35 = icmp eq %struct._object* %call21, null, !dbg !884
  br i1 %cmp35, label %cleanup.56.critedge, label %if.end.32.for.cond.17_crit_edge, !dbg !886

if.end.32.for.cond.17_crit_edge:                  ; preds = %if.end.32
  %.pre95 = load %struct._object*, %struct._object** %kw, align 8, !dbg !887, !tbaa !810
  call void @llvm.dbg.value(metadata i64* %i, i64 0, metadata !430, metadata !738), !dbg !846
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !437, metadata !738), !dbg !870
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !440, metadata !738), !dbg !871
  %call19 = call i32 @PyDict_Next(%struct._object* %.pre95, i64* nonnull %i, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !872
  %tobool = icmp eq i32 %call19, 0, !dbg !873
  br i1 %tobool, label %cleanup.loopexit, label %for.body.20, !dbg !873

cleanup.loopexit:                                 ; preds = %if.end.32.for.cond.17_crit_edge
  %call21.lcssa105 = phi %struct._object* [ %call21, %if.end.32.for.cond.17_crit_edge ]
  br label %cleanup, !dbg !888

cleanup:                                          ; preds = %cleanup.loopexit, %if.then.14
  %arglist.1.lcssa = phi %struct._object* [ %arglist.0.lcssa, %if.then.14 ], [ %call21.lcssa105, %cleanup.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !888
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !888
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup, %for.end
  %arglist.2 = phi %struct._object* [ %arglist.1.lcssa, %cleanup ], [ %arglist.0.lcssa, %for.end ]
  %ob_type41 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 0, i32 1, !dbg !890
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !890, !tbaa !761
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 1, !dbg !891
  %21 = load i8*, i8** %tp_name, align 8, !dbg !891, !tbaa !767
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 1, !dbg !892
  %22 = load %struct._object*, %struct._object** %fn, align 8, !dbg !892, !tbaa !786
  %call42 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %21, %struct._object* %22, %struct._object* %arglist.2) #1, !dbg !893
  call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !427, metadata !738), !dbg !894
  call void @llvm.dbg.value(metadata %struct._object* %arglist.2, i64 0, metadata !446, metadata !738), !dbg !895
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %arglist.2, i64 0, i32 0, !dbg !897
  %23 = load i64, i64* %ob_refcnt46, align 8, !dbg !897, !tbaa !752
  %dec47 = add i64 %23, -1, !dbg !897
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !897, !tbaa !752
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !897
  br i1 %cmp48, label %if.else.50, label %cleanup.56, !dbg !899

if.else.50:                                       ; preds = %if.end.40
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %arglist.2, i64 0, i32 1, !dbg !900
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !900, !tbaa !761
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !900
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !900, !tbaa !762
  call void %25(%struct._object* %arglist.2) #1, !dbg !900
  br label %cleanup.56

cleanup.56.critedge:                              ; preds = %if.end.32
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !888
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !888
  br label %cleanup.56

cleanup.56.loopexit:                              ; preds = %if.end.9
  br label %cleanup.56, !dbg !902

cleanup.56:                                       ; preds = %cleanup.56.loopexit, %if.else.50, %if.end.40, %cleanup.56.critedge, %entry
  %retval.1 = phi %struct._object* [ null, %entry ], [ null, %cleanup.56.critedge ], [ %call42, %if.end.40 ], [ %call42, %if.else.50 ], [ null, %cleanup.56.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !902
  ret %struct._object* %retval.1, !dbg !902
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_call(%struct.partialobject* nocapture readonly %pto, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.partialobject* %pto, i64 0, metadata !452, metadata !738), !dbg !903
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !453, metadata !738), !dbg !904
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !454, metadata !738), !dbg !905
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !456, metadata !738), !dbg !906
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !457, metadata !738), !dbg !907
  %args1 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 2, !dbg !908
  %0 = load %struct._object*, %struct._object** %args1, align 8, !dbg !908, !tbaa !798
  %1 = getelementptr inbounds %struct._object, %struct._object* %0, i64 1, i32 0, !dbg !908
  %2 = load i64, i64* %1, align 8, !dbg !908, !tbaa !844
  %cmp = icmp eq i64 %2, 0, !dbg !910
  br i1 %cmp, label %if.then, label %if.else, !dbg !911

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !456, metadata !738), !dbg !906
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 0, !dbg !912
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !912, !tbaa !752
  %inc = add i64 %3, 1, !dbg !912
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !912, !tbaa !752
  br label %if.end.14, !dbg !914

if.else:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !915
  %5 = load i64, i64* %4, align 8, !dbg !915, !tbaa !844
  %cmp3 = icmp eq i64 %5, 0, !dbg !917
  br i1 %cmp3, label %if.then.4, label %if.else.9, !dbg !918

if.then.4:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !456, metadata !738), !dbg !906
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !919
  %6 = load i64, i64* %ob_refcnt7, align 8, !dbg !919, !tbaa !752
  %inc8 = add i64 %6, 1, !dbg !919
  store i64 %inc8, i64* %ob_refcnt7, align 8, !dbg !919, !tbaa !752
  br label %if.end.14, !dbg !921

if.else.9:                                        ; preds = %if.else
  %call = tail call %struct._object* @PySequence_Concat(%struct._object* %0, %struct._object* %args) #1, !dbg !922
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !456, metadata !738), !dbg !906
  %cmp11 = icmp eq %struct._object* %call, null, !dbg !924
  br i1 %cmp11, label %cleanup, label %if.end.14, !dbg !926

if.end.14:                                        ; preds = %if.then.4, %if.else.9, %if.then
  %argappl.0 = phi %struct._object* [ %args, %if.then ], [ %0, %if.then.4 ], [ %call, %if.else.9 ]
  %kw15 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 3, !dbg !927
  %7 = load %struct._object*, %struct._object** %kw15, align 8, !dbg !927, !tbaa !810
  %cmp16 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !928
  br i1 %cmp16, label %if.then.17, label %if.else.23, !dbg !929

if.then.17:                                       ; preds = %if.end.14
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !457, metadata !738), !dbg !907
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !458, metadata !738), !dbg !930
  %cmp18 = icmp eq %struct._object* %kw, null, !dbg !932
  br i1 %cmp18, label %if.end.68, label %if.then.19, !dbg !934

if.then.19:                                       ; preds = %if.then.17
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %kw, i64 0, i32 0, !dbg !935
  %8 = load i64, i64* %ob_refcnt20, align 8, !dbg !935, !tbaa !752
  %inc21 = add i64 %8, 1, !dbg !935
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !935, !tbaa !752
  br label %if.end.68, !dbg !935

if.else.23:                                       ; preds = %if.end.14
  %call25 = tail call %struct._object* @PyDict_Copy(%struct._object* %7) #1, !dbg !937
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !457, metadata !738), !dbg !907
  %cmp26 = icmp eq %struct._object* %call25, null, !dbg !938
  br i1 %cmp26, label %do.body.28, label %if.end.36, !dbg !939

do.body.28:                                       ; preds = %if.else.23
  tail call void @llvm.dbg.value(metadata %struct._object* %argappl.0, i64 0, metadata !462, metadata !738), !dbg !940
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %argappl.0, i64 0, i32 0, !dbg !942
  %9 = load i64, i64* %ob_refcnt29, align 8, !dbg !942, !tbaa !752
  %dec = add i64 %9, -1, !dbg !942
  store i64 %dec, i64* %ob_refcnt29, align 8, !dbg !942, !tbaa !752
  %cmp30 = icmp eq i64 %dec, 0, !dbg !942
  br i1 %cmp30, label %if.else.32, label %cleanup, !dbg !944

if.else.32:                                       ; preds = %do.body.28
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %argappl.0, i64 0, i32 1, !dbg !945
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !945, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !945
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !945, !tbaa !762
  tail call void %11(%struct._object* %argappl.0) #1, !dbg !945
  br label %cleanup

if.end.36:                                        ; preds = %if.else.23
  %cmp37 = icmp eq %struct._object* %kw, null, !dbg !947
  br i1 %cmp37, label %if.end.68, label %if.then.38, !dbg !948

if.then.38:                                       ; preds = %if.end.36
  %call39 = tail call i32 @PyDict_Merge(%struct._object* %call25, %struct._object* %kw, i32 1) #1, !dbg !949
  %cmp40 = icmp eq i32 %call39, 0, !dbg !950
  br i1 %cmp40, label %if.end.68, label %do.body.42, !dbg !951

do.body.42:                                       ; preds = %if.then.38
  tail call void @llvm.dbg.value(metadata %struct._object* %argappl.0, i64 0, metadata !467, metadata !738), !dbg !952
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %argappl.0, i64 0, i32 0, !dbg !954
  %12 = load i64, i64* %ob_refcnt44, align 8, !dbg !954, !tbaa !752
  %dec45 = add i64 %12, -1, !dbg !954
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !954, !tbaa !752
  %cmp46 = icmp eq i64 %dec45, 0, !dbg !954
  br i1 %cmp46, label %if.else.48, label %if.end.51, !dbg !956

if.else.48:                                       ; preds = %do.body.42
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %argappl.0, i64 0, i32 1, !dbg !957
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !957, !tbaa !761
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !957
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !957, !tbaa !762
  tail call void %14(%struct._object* %argappl.0) #1, !dbg !957
  br label %if.end.51

if.end.51:                                        ; preds = %do.body.42, %if.else.48
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !473, metadata !738), !dbg !959
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 0, !dbg !961
  %15 = load i64, i64* %ob_refcnt56, align 8, !dbg !961, !tbaa !752
  %dec57 = add i64 %15, -1, !dbg !961
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !961, !tbaa !752
  %cmp58 = icmp eq i64 %dec57, 0, !dbg !961
  br i1 %cmp58, label %if.else.60, label %cleanup, !dbg !963

if.else.60:                                       ; preds = %if.end.51
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 1, !dbg !964
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !964, !tbaa !761
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !964
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !964, !tbaa !762
  tail call void %17(%struct._object* %call25) #1, !dbg !964
  br label %cleanup

if.end.68:                                        ; preds = %if.then.19, %if.then.17, %if.then.38, %if.end.36
  %kwappl.0 = phi %struct._object* [ %call25, %if.then.38 ], [ %call25, %if.end.36 ], [ null, %if.then.17 ], [ %kw, %if.then.19 ]
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 1, !dbg !966
  %18 = load %struct._object*, %struct._object** %fn, align 8, !dbg !966, !tbaa !786
  %call69 = tail call %struct._object* @PyObject_Call(%struct._object* %18, %struct._object* %argappl.0, %struct._object* %kwappl.0) #1, !dbg !967
  tail call void @llvm.dbg.value(metadata %struct._object* %call69, i64 0, metadata !455, metadata !738), !dbg !968
  tail call void @llvm.dbg.value(metadata %struct._object* %argappl.0, i64 0, metadata !475, metadata !738), !dbg !969
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %argappl.0, i64 0, i32 0, !dbg !971
  %19 = load i64, i64* %ob_refcnt72, align 8, !dbg !971, !tbaa !752
  %dec73 = add i64 %19, -1, !dbg !971
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !971, !tbaa !752
  %cmp74 = icmp eq i64 %dec73, 0, !dbg !971
  br i1 %cmp74, label %if.else.76, label %if.end.79, !dbg !973

if.else.76:                                       ; preds = %if.end.68
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %argappl.0, i64 0, i32 1, !dbg !974
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !974, !tbaa !761
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !974
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !974, !tbaa !762
  tail call void %21(%struct._object* %argappl.0) #1, !dbg !974
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.68, %if.else.76
  tail call void @llvm.dbg.value(metadata %struct._object* %kwappl.0, i64 0, metadata !477, metadata !738), !dbg !976
  %cmp83 = icmp eq %struct._object* %kwappl.0, null, !dbg !978
  br i1 %cmp83, label %cleanup, label %do.body.85, !dbg !979

do.body.85:                                       ; preds = %if.end.79
  tail call void @llvm.dbg.value(metadata %struct._object* %kwappl.0, i64 0, metadata !479, metadata !738), !dbg !980
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %kwappl.0, i64 0, i32 0, !dbg !982
  %22 = load i64, i64* %ob_refcnt87, align 8, !dbg !982, !tbaa !752
  %dec88 = add i64 %22, -1, !dbg !982
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !982, !tbaa !752
  %cmp89 = icmp eq i64 %dec88, 0, !dbg !982
  br i1 %cmp89, label %if.else.91, label %cleanup, !dbg !984

if.else.91:                                       ; preds = %do.body.85
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %kwappl.0, i64 0, i32 1, !dbg !985
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !985, !tbaa !761
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !985
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !985, !tbaa !762
  tail call void %24(%struct._object* %kwappl.0) #1, !dbg !985
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %do.body.85, %if.else.91, %if.else.60, %if.end.51, %if.else.32, %do.body.28, %if.else.9
  %retval.0 = phi %struct._object* [ null, %if.else.9 ], [ null, %do.body.28 ], [ null, %if.else.32 ], [ null, %if.end.51 ], [ null, %if.else.60 ], [ %call69, %if.else.91 ], [ %call69, %do.body.85 ], [ %call69, %if.end.79 ]
  ret %struct._object* %retval.0, !dbg !987
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @partial_traverse(%struct.partialobject* nocapture readonly %pto, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.partialobject* %pto, i64 0, metadata !486, metadata !738), !dbg !988
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !487, metadata !738), !dbg !989
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !488, metadata !738), !dbg !990
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 1, !dbg !991
  %0 = load %struct._object*, %struct._object** %fn, align 8, !dbg !991, !tbaa !786
  %tobool = icmp eq %struct._object* %0, null, !dbg !991
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !993

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !994
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !489, metadata !738), !dbg !994
  %tobool2 = icmp eq i32 %call, 0, !dbg !996
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 2, !dbg !998
  %1 = load %struct._object*, %struct._object** %args, align 8, !dbg !998, !tbaa !798
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !998
  br i1 %tobool6, label %do.body.19, label %if.then.7, !dbg !1000

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !493, metadata !738), !dbg !1001
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1003
  br i1 %tobool11, label %do.body.19, label %return

do.body.19:                                       ; preds = %do.body.5, %if.then.7
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 3, !dbg !1005
  %2 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1005, !tbaa !810
  %tobool20 = icmp eq %struct._object* %2, null, !dbg !1005
  br i1 %tobool20, label %do.body.33, label %if.then.21, !dbg !1007

if.then.21:                                       ; preds = %do.body.19
  %call24 = tail call i32 %visit(%struct._object* %2, i8* %arg) #1, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %call24, i64 0, metadata !497, metadata !738), !dbg !1008
  %tobool25 = icmp eq i32 %call24, 0, !dbg !1010
  br i1 %tobool25, label %do.body.33, label %return

do.body.33:                                       ; preds = %do.body.19, %if.then.21
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 4, !dbg !1012
  %3 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1012, !tbaa !822
  %tobool34 = icmp eq %struct._object* %3, null, !dbg !1012
  br i1 %tobool34, label %do.end.46, label %if.then.35, !dbg !1014

if.then.35:                                       ; preds = %do.body.33
  %call38 = tail call i32 %visit(%struct._object* %3, i8* %arg) #1, !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %call38, i64 0, metadata !501, metadata !738), !dbg !1015
  %tobool39 = icmp eq i32 %call38, 0, !dbg !1017
  br i1 %tobool39, label %do.end.46, label %return

do.end.46:                                        ; preds = %do.body.33, %if.then.35
  br label %return, !dbg !1019

return:                                           ; preds = %if.then.35, %if.then.21, %if.then.7, %if.then, %do.end.46
  %retval.7 = phi i32 [ 0, %do.end.46 ], [ %call38, %if.then.35 ], [ %call24, %if.then.21 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.7, !dbg !1020
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !543, metadata !738), !dbg !1021
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !544, metadata !738), !dbg !1022
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !545, metadata !738), !dbg !1023
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1024
  %1 = load i64, i64* %0, align 8, !dbg !1024, !tbaa !844
  %cmp = icmp slt i64 %1, 1, !dbg !1026
  br i1 %cmp, label %if.then, label %if.end, !dbg !1027

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1028, !tbaa !852
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0)) #1, !dbg !1030
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %entry
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1032
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1032
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1032, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !546, metadata !738), !dbg !1033
  %call = tail call i32 @PyCallable_Check(%struct._object* %3) #1, !dbg !1034
  %tobool = icmp eq i32 %call, 0, !dbg !1034
  br i1 %tobool, label %if.then.1, label %if.end.2, !dbg !1036

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1037, !tbaa !852
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0)) #1, !dbg !1039
  br label %cleanup, !dbg !1040

if.end.2:                                         ; preds = %if.end
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1041
  %5 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1041, !tbaa !1042
  %call3 = tail call %struct._object* %5(%struct._typeobject* %type, i64 0) #1, !dbg !1043
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1044
  br i1 %cmp4, label %cleanup, label %if.end.6, !dbg !1046

if.end.6:                                         ; preds = %if.end.2
  %fn = getelementptr inbounds %struct._object, %struct._object* %call3, i64 1, !dbg !1047
  %6 = bitcast %struct._object* %fn to %struct._object**, !dbg !1047
  store %struct._object* %3, %struct._object** %6, align 8, !dbg !1048, !tbaa !786
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1049
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1049, !tbaa !752
  %inc = add i64 %7, 1, !dbg !1049
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1049, !tbaa !752
  %call7 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %args, i64 1, i64 9223372036854775807) #1, !dbg !1050
  %args8 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 1, i32 1, !dbg !1051
  %8 = bitcast %struct._typeobject** %args8 to %struct._object**, !dbg !1051
  store %struct._object* %call7, %struct._object** %8, align 8, !dbg !1052, !tbaa !798
  %cmp10 = icmp eq %struct._object* %call7, null, !dbg !1053
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !1054

if.then.11:                                       ; preds = %if.end.6
  %kw12 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 2, !dbg !1055
  %9 = bitcast %struct._object* %kw12 to %struct._object**, !dbg !1055
  store %struct._object* null, %struct._object** %9, align 8, !dbg !1056, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !548, metadata !738), !dbg !1057
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1059
  %10 = load i64, i64* %ob_refcnt13, align 8, !dbg !1059, !tbaa !752
  %dec = add i64 %10, -1, !dbg !1059
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !1059, !tbaa !752
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1059
  br i1 %cmp14, label %if.else, label %cleanup, !dbg !1061

if.else:                                          ; preds = %if.then.11
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1062
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1062, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1062
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1062, !tbaa !762
  tail call void %12(%struct._object* %call3) #1, !dbg !1062
  br label %cleanup

if.end.17:                                        ; preds = %if.end.6
  %cmp18 = icmp eq %struct._object* %kw, null, !dbg !1064
  br i1 %cmp18, label %if.else.38, label %if.then.19, !dbg !1065

if.then.19:                                       ; preds = %if.end.17
  %call20 = tail call %struct._object* @PyDict_Copy(%struct._object* %kw) #1, !dbg !1066
  %kw21 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 2, !dbg !1067
  %13 = bitcast %struct._object* %kw21 to %struct._object**, !dbg !1067
  store %struct._object* %call20, %struct._object** %13, align 8, !dbg !1068, !tbaa !810
  %cmp23 = icmp eq %struct._object* %call20, null, !dbg !1069
  br i1 %cmp23, label %do.body.25, label %if.end.41, !dbg !1070

do.body.25:                                       ; preds = %if.then.19
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !552, metadata !738), !dbg !1071
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1073
  %14 = load i64, i64* %ob_refcnt27, align 8, !dbg !1073, !tbaa !752
  %dec28 = add i64 %14, -1, !dbg !1073
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1073, !tbaa !752
  %cmp29 = icmp eq i64 %dec28, 0, !dbg !1073
  br i1 %cmp29, label %if.else.31, label %cleanup, !dbg !1075

if.else.31:                                       ; preds = %do.body.25
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1076
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1076, !tbaa !761
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1076
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1076, !tbaa !762
  tail call void %16(%struct._object* %call3) #1, !dbg !1076
  br label %cleanup

if.else.38:                                       ; preds = %if.end.17
  %kw39 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 2, !dbg !1078
  %17 = bitcast %struct._object* %kw39 to %struct._object**, !dbg !1078
  store %struct._object* @_Py_NoneStruct, %struct._object** %17, align 8, !dbg !1080, !tbaa !810
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1081, !tbaa !752
  %inc40 = add i64 %18, 1, !dbg !1081
  store i64 %inc40, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1081, !tbaa !752
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.19, %if.else.38
  %dict = getelementptr inbounds %struct._object, %struct._object* %call3, i64 2, i32 1, !dbg !1082
  %19 = bitcast %struct._typeobject** %dict to i8*, !dbg !1083
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 8, i1 false), !dbg !1084
  br label %cleanup, !dbg !1083

cleanup:                                          ; preds = %if.else.31, %do.body.25, %if.else, %if.then.11, %if.end.2, %if.end.41, %if.then.1, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call3, %if.end.41 ], [ null, %if.then.1 ], [ null, %if.end.2 ], [ null, %if.then.11 ], [ null, %if.else ], [ null, %do.body.25 ], [ null, %if.else.31 ]
  ret %struct._object* %retval.0, !dbg !1085
}

declare void @PyObject_GC_Del(i8*) #3

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare %struct._object* @PySequence_Concat(%struct._object*, %struct._object*) #3

declare %struct._object* @PyDict_Copy(%struct._object*) #3

declare i32 @PyDict_Merge(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_reduce(%struct.partialobject* nocapture readonly %pto, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.partialobject* %pto, i64 0, metadata !509, metadata !738), !dbg !1086
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !510, metadata !738), !dbg !1087
  %ob_type = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 0, i32 1, !dbg !1088
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1088, !tbaa !761
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 1, !dbg !1089
  %1 = load %struct._object*, %struct._object** %fn, align 8, !dbg !1089, !tbaa !786
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 2, !dbg !1090
  %2 = load %struct._object*, %struct._object** %args, align 8, !dbg !1090, !tbaa !798
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 3, !dbg !1091
  %3 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1091, !tbaa !810
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 4, !dbg !1092
  %4 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1092, !tbaa !822
  %tobool = icmp eq %struct._object* %4, null, !dbg !1093
  %_Py_NoneStruct. = select i1 %tobool, %struct._object* @_Py_NoneStruct, %struct._object* %4, !dbg !1093
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct._typeobject* %0, %struct._object* %1, %struct._object* %1, %struct._object* %2, %struct._object* %3, %struct._object* %_Py_NoneStruct.) #1, !dbg !1094
  ret %struct._object* %call, !dbg !1095
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_setstate(%struct.partialobject* nocapture %pto, %struct._object* %state) #0 {
entry:
  %fn = alloca %struct._object*, align 8
  %fnargs = alloca %struct._object*, align 8
  %kw = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.partialobject* %pto, i64 0, metadata !513, metadata !738), !dbg !1096
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !514, metadata !738), !dbg !1097
  %0 = bitcast %struct._object** %fn to i8*, !dbg !1098
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1098
  %1 = bitcast %struct._object** %fnargs to i8*, !dbg !1098
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1098
  %2 = bitcast %struct._object** %kw to i8*, !dbg !1098
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1098
  %3 = bitcast %struct._object** %dict to i8*, !dbg !1098
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1098
  tail call void @llvm.dbg.value(metadata %struct._object** %fn, i64 0, metadata !515, metadata !738), !dbg !1099
  tail call void @llvm.dbg.value(metadata %struct._object** %fnargs, i64 0, metadata !516, metadata !738), !dbg !1100
  tail call void @llvm.dbg.value(metadata %struct._object** %kw, i64 0, metadata !517, metadata !738), !dbg !1101
  tail call void @llvm.dbg.value(metadata %struct._object** %dict, i64 0, metadata !518, metadata !738), !dbg !1102
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %state, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct._object** nonnull %fn, %struct._object** nonnull %fnargs, %struct._object** nonnull %kw, %struct._object** nonnull %dict) #1, !dbg !1103
  %tobool = icmp eq i32 %call, 0, !dbg !1103
  br i1 %tobool, label %cleanup, label %do.body, !dbg !1105

do.body:                                          ; preds = %entry
  %fn1 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 1, !dbg !1106
  %4 = load %struct._object*, %struct._object** %fn1, align 8, !dbg !1106, !tbaa !786
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !519, metadata !738), !dbg !1106
  %cmp = icmp eq %struct._object* %4, null, !dbg !1108
  br i1 %cmp, label %if.end.7, label %do.body.3, !dbg !1109

do.body.3:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !521, metadata !738), !dbg !1110
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1112
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1112, !tbaa !752
  %dec = add i64 %5, -1, !dbg !1112
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1112, !tbaa !752
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1112
  br i1 %cmp4, label %if.else, label %if.end.7, !dbg !1114

if.else:                                          ; preds = %do.body.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1115
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1115, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1115
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1115, !tbaa !762
  call void %7(%struct._object* %4) #1, !dbg !1115
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %do.body.3, %do.body
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 2, !dbg !1117
  %8 = load %struct._object*, %struct._object** %args, align 8, !dbg !1117, !tbaa !798
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !524, metadata !738), !dbg !1117
  %cmp12 = icmp eq %struct._object* %8, null, !dbg !1119
  br i1 %cmp12, label %if.end.26, label %do.body.14, !dbg !1120

do.body.14:                                       ; preds = %if.end.7
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !526, metadata !738), !dbg !1121
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1123
  %9 = load i64, i64* %ob_refcnt16, align 8, !dbg !1123, !tbaa !752
  %dec17 = add i64 %9, -1, !dbg !1123
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !1123, !tbaa !752
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !1123
  br i1 %cmp18, label %if.else.20, label %if.end.26, !dbg !1125

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1126
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1126, !tbaa !761
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1126
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1126, !tbaa !762
  call void %11(%struct._object* %8) #1, !dbg !1126
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.20, %do.body.14, %if.end.7
  %kw31 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 3, !dbg !1128
  %12 = load %struct._object*, %struct._object** %kw31, align 8, !dbg !1128, !tbaa !810
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !529, metadata !738), !dbg !1128
  %cmp32 = icmp eq %struct._object* %12, null, !dbg !1130
  br i1 %cmp32, label %if.end.46, label %do.body.34, !dbg !1131

do.body.34:                                       ; preds = %if.end.26
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !531, metadata !738), !dbg !1132
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1134
  %13 = load i64, i64* %ob_refcnt36, align 8, !dbg !1134, !tbaa !752
  %dec37 = add i64 %13, -1, !dbg !1134
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1134, !tbaa !752
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !1134
  br i1 %cmp38, label %if.else.40, label %if.end.46, !dbg !1136

if.else.40:                                       ; preds = %do.body.34
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1137
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1137, !tbaa !761
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1137
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1137, !tbaa !762
  call void %15(%struct._object* %12) #1, !dbg !1137
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %do.body.34, %if.end.26
  %dict51 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %pto, i64 0, i32 4, !dbg !1139
  %16 = load %struct._object*, %struct._object** %dict51, align 8, !dbg !1139, !tbaa !822
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !534, metadata !738), !dbg !1139
  %cmp52 = icmp eq %struct._object* %16, null, !dbg !1141
  br i1 %cmp52, label %if.end.66, label %do.body.54, !dbg !1142

do.body.54:                                       ; preds = %if.end.46
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !536, metadata !738), !dbg !1143
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1145
  %17 = load i64, i64* %ob_refcnt56, align 8, !dbg !1145, !tbaa !752
  %dec57 = add i64 %17, -1, !dbg !1145
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1145, !tbaa !752
  %cmp58 = icmp eq i64 %dec57, 0, !dbg !1145
  br i1 %cmp58, label %if.else.60, label %if.end.66, !dbg !1147

if.else.60:                                       ; preds = %do.body.54
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1148
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1148, !tbaa !761
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1148
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1148, !tbaa !762
  call void %19(%struct._object* %16) #1, !dbg !1148
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.60, %do.body.54, %if.end.46
  call void @llvm.dbg.value(metadata %struct._object** %fn, i64 0, metadata !515, metadata !738), !dbg !1099
  %20 = bitcast %struct._object** %fn to i64*, !dbg !1150
  %21 = load i64, i64* %20, align 8, !dbg !1150, !tbaa !852
  %22 = bitcast %struct._object** %fn1 to i64*, !dbg !1151
  store i64 %21, i64* %22, align 8, !dbg !1151, !tbaa !786
  call void @llvm.dbg.value(metadata %struct._object** %fnargs, i64 0, metadata !516, metadata !738), !dbg !1100
  %23 = bitcast %struct._object** %fnargs to i64*, !dbg !1152
  %24 = load i64, i64* %23, align 8, !dbg !1152, !tbaa !852
  %25 = bitcast %struct._object** %args to i64*, !dbg !1153
  store i64 %24, i64* %25, align 8, !dbg !1153, !tbaa !798
  call void @llvm.dbg.value(metadata %struct._object** %kw, i64 0, metadata !517, metadata !738), !dbg !1101
  %26 = bitcast %struct._object** %kw to i64*, !dbg !1154
  %27 = load i64, i64* %26, align 8, !dbg !1154, !tbaa !852
  %28 = bitcast %struct._object** %kw31 to i64*, !dbg !1155
  store i64 %27, i64* %28, align 8, !dbg !1155, !tbaa !810
  call void @llvm.dbg.value(metadata %struct._object** %dict, i64 0, metadata !518, metadata !738), !dbg !1102
  %29 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1156, !tbaa !852
  %cmp72 = icmp eq %struct._object* %29, @_Py_NoneStruct, !dbg !1159
  %30 = inttoptr i64 %21 to %struct._object*, !dbg !1160
  %31 = inttoptr i64 %24 to %struct._object*, !dbg !1161
  %32 = inttoptr i64 %27 to %struct._object*, !dbg !1162
  br i1 %cmp72, label %if.else.76, label %if.then.73, !dbg !1163

if.then.73:                                       ; preds = %if.end.66
  store %struct._object* %29, %struct._object** %dict51, align 8, !dbg !1164, !tbaa !822
  call void @llvm.dbg.value(metadata %struct._object** %dict, i64 0, metadata !518, metadata !738), !dbg !1102
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1156
  %33 = load i64, i64* %ob_refcnt75, align 8, !dbg !1156, !tbaa !752
  %inc = add i64 %33, 1, !dbg !1156
  store i64 %inc, i64* %ob_refcnt75, align 8, !dbg !1156, !tbaa !752
  br label %if.end.78, !dbg !1165

if.else.76:                                       ; preds = %if.end.66
  store %struct._object* null, %struct._object** %dict51, align 8, !dbg !1166, !tbaa !822
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.73
  call void @llvm.dbg.value(metadata %struct._object** %fn, i64 0, metadata !515, metadata !738), !dbg !1099
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 0, !dbg !1160
  %34 = load i64, i64* %ob_refcnt79, align 8, !dbg !1160, !tbaa !752
  %inc80 = add i64 %34, 1, !dbg !1160
  store i64 %inc80, i64* %ob_refcnt79, align 8, !dbg !1160, !tbaa !752
  call void @llvm.dbg.value(metadata %struct._object** %fnargs, i64 0, metadata !516, metadata !738), !dbg !1100
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1161
  %35 = load i64, i64* %ob_refcnt81, align 8, !dbg !1161, !tbaa !752
  %inc82 = add i64 %35, 1, !dbg !1161
  store i64 %inc82, i64* %ob_refcnt81, align 8, !dbg !1161, !tbaa !752
  call void @llvm.dbg.value(metadata %struct._object** %kw, i64 0, metadata !517, metadata !738), !dbg !1101
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 0, !dbg !1162
  %36 = load i64, i64* %ob_refcnt83, align 8, !dbg !1162, !tbaa !752
  %inc84 = add i64 %36, 1, !dbg !1162
  store i64 %inc84, i64* %ob_refcnt83, align 8, !dbg !1162, !tbaa !752
  %37 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1168, !tbaa !752
  %inc85 = add i64 %37, 1, !dbg !1168
  store i64 %inc85, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1168, !tbaa !752
  br label %cleanup, !dbg !1168

cleanup:                                          ; preds = %entry, %if.end.78
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.78 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1169
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1169
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1169
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1169
  ret %struct._object* %retval.0, !dbg !1169
}

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #3

declare i32 @PyObject_GenericSetDict(%struct._object*, %struct._object*, i8*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @functools_reduce(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %seq = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !560, metadata !738), !dbg !1170
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !561, metadata !738), !dbg !1171
  %0 = bitcast %struct._object** %seq to i8*, !dbg !1172
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1172
  %1 = bitcast %struct._object** %func to i8*, !dbg !1172
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1172
  %2 = bitcast %struct._object** %result to i8*, !dbg !1172
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1172
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !564, metadata !738), !dbg !1173
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1173, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !562, metadata !738), !dbg !1174
  tail call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !563, metadata !738), !dbg !1175
  tail call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i64 2, i64 3, %struct._object** nonnull %func, %struct._object** nonnull %seq, %struct._object** nonnull %result) #1, !dbg !1176
  %tobool = icmp eq i32 %call, 0, !dbg !1176
  br i1 %tobool, label %cleanup.140, label %if.end, !dbg !1178

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %3 = load %struct._object*, %struct._object** %result, align 8, !dbg !1179, !tbaa !852
  %cmp = icmp eq %struct._object* %3, null, !dbg !1181
  br i1 %cmp, label %if.end.2, label %if.then.1, !dbg !1182

if.then.1:                                        ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1183
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1183, !tbaa !752
  %inc = add i64 %4, 1, !dbg !1183
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1183, !tbaa !752
  br label %if.end.2, !dbg !1183

if.end.2:                                         ; preds = %if.end, %if.then.1
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !562, metadata !738), !dbg !1174
  %5 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1184, !tbaa !852
  %call3 = call %struct._object* @PyObject_GetIter(%struct._object* %5) #1, !dbg !1185
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !565, metadata !738), !dbg !1186
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1187
  br i1 %cmp4, label %if.then.5, label %if.end.20, !dbg !1188

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1189, !tbaa !852
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %6) #1, !dbg !1191
  %tobool7 = icmp eq i32 %call6, 0, !dbg !1191
  br i1 %tobool7, label %do.body, label %if.then.8, !dbg !1192

if.then.8:                                        ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1193, !tbaa !852
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0)) #1, !dbg !1194
  br label %do.body, !dbg !1194

do.body:                                          ; preds = %if.then.5, %if.then.8
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !1195, !tbaa !852
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !566, metadata !738), !dbg !1195
  %cmp10 = icmp eq %struct._object* %8, null, !dbg !1197
  br i1 %cmp10, label %cleanup.140, label %do.body.12, !dbg !1198

do.body.12:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !570, metadata !738), !dbg !1199
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1201
  %9 = load i64, i64* %ob_refcnt13, align 8, !dbg !1201, !tbaa !752
  %dec = add i64 %9, -1, !dbg !1201
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !1201, !tbaa !752
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1201
  br i1 %cmp14, label %if.else, label %cleanup.140, !dbg !1203

if.else:                                          ; preds = %do.body.12
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1204
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1204, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1204
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1204, !tbaa !762
  call void %11(%struct._object* %8) #1, !dbg !1204
  br label %cleanup.140

if.end.20:                                        ; preds = %if.end.2
  %call21 = call %struct._object* @PyTuple_New(i64 2) #1, !dbg !1206
  call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !561, metadata !738), !dbg !1171
  %cmp22 = icmp eq %struct._object* %call21, null, !dbg !1208
  br i1 %cmp22, label %if.end.106, label %for.cond.preheader, !dbg !1209

for.cond.preheader:                               ; preds = %if.end.20
  br label %for.cond, !dbg !1210

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %args.addr.0 = phi %struct._object* [ %call21, %for.cond.preheader ], [ %args.addr.1, %for.cond.backedge ]
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %args.addr.0, i64 0, i32 0, !dbg !1210
  %12 = load i64, i64* %ob_refcnt25, align 8, !dbg !1210, !tbaa !752
  %cmp26 = icmp sgt i64 %12, 1, !dbg !1211
  br i1 %cmp26, label %do.body.28, label %if.end.44, !dbg !1212

do.body.28:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct._object* %args.addr.0, i64 0, metadata !577, metadata !738), !dbg !1213
  %dec31 = add i64 %12, -1, !dbg !1215
  store i64 %dec31, i64* %ob_refcnt25, align 8, !dbg !1215, !tbaa !752
  %cmp32 = icmp eq i64 %dec31, 0, !dbg !1215
  br i1 %cmp32, label %if.else.34, label %if.end.37, !dbg !1217

if.else.34:                                       ; preds = %do.body.28
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %args.addr.0, i64 0, i32 1, !dbg !1218
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1218, !tbaa !761
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1218
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !1218, !tbaa !762
  call void %14(%struct._object* %args.addr.0) #1, !dbg !1218
  br label %if.end.37

if.end.37:                                        ; preds = %do.body.28, %if.else.34
  %call40 = call %struct._object* @PyTuple_New(i64 2) #1, !dbg !1220
  call void @llvm.dbg.value(metadata %struct._object* %call40, i64 0, metadata !561, metadata !738), !dbg !1171
  %cmp41 = icmp eq %struct._object* %call40, null, !dbg !1222
  br i1 %cmp41, label %if.end.106.loopexit, label %if.end.44, !dbg !1223

if.end.44:                                        ; preds = %if.end.37, %for.cond
  %args.addr.1 = phi %struct._object* [ %call40, %if.end.37 ], [ %args.addr.0, %for.cond ]
  %call45 = call %struct._object* @PyIter_Next(%struct._object* %call3) #1, !dbg !1224
  call void @llvm.dbg.value(metadata %struct._object* %call45, i64 0, metadata !573, metadata !738), !dbg !1225
  %cmp46 = icmp eq %struct._object* %call45, null, !dbg !1226
  br i1 %cmp46, label %cleanup, label %if.end.52, !dbg !1228

if.end.52:                                        ; preds = %if.end.44
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %15 = load %struct._object*, %struct._object** %result, align 8, !dbg !1229, !tbaa !852
  %cmp53 = icmp eq %struct._object* %15, null, !dbg !1231
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !1232

if.then.54:                                       ; preds = %if.end.52
  call void @llvm.dbg.value(metadata %struct._object* %call45, i64 0, metadata !564, metadata !738), !dbg !1173
  store %struct._object* %call45, %struct._object** %result, align 8, !dbg !1233, !tbaa !852
  br label %for.cond.backedge, !dbg !1234

for.cond.backedge:                                ; preds = %if.then.54, %if.else.55
  br label %for.cond, !dbg !1210

if.else.55:                                       ; preds = %if.end.52
  %call56 = call i32 @PyTuple_SetItem(%struct._object* %args.addr.1, i64 0, %struct._object* %15) #1, !dbg !1235
  %call57 = call i32 @PyTuple_SetItem(%struct._object* %args.addr.1, i64 1, %struct._object* %call45) #1, !dbg !1237
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !563, metadata !738), !dbg !1175
  %16 = load %struct._object*, %struct._object** %func, align 8, !dbg !1238, !tbaa !852
  %call58 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %16, %struct._object* %args.addr.1, %struct._object* null) #1, !dbg !1238
  call void @llvm.dbg.value(metadata %struct._object* %call58, i64 0, metadata !564, metadata !738), !dbg !1173
  store %struct._object* %call58, %struct._object** %result, align 8, !dbg !1240, !tbaa !852
  %cmp59 = icmp eq %struct._object* %call58, null, !dbg !1241
  br i1 %cmp59, label %do.body.90.loopexit, label %for.cond.backedge, !dbg !1242

cleanup:                                          ; preds = %if.end.44
  %args.addr.1.lcssa = phi %struct._object* [ %args.addr.1, %if.end.44 ]
  %call48 = call %struct._object* @PyErr_Occurred() #1, !dbg !1243
  %tobool49 = icmp eq %struct._object* %call48, null, !dbg !1243
  br i1 %tobool49, label %do.body.63, label %do.body.90

do.body.63:                                       ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct._object* %args.addr.1, i64 0, metadata !581, metadata !738), !dbg !1246
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %args.addr.1.lcssa, i64 0, i32 0, !dbg !1248
  %17 = load i64, i64* %ob_refcnt65, align 8, !dbg !1248, !tbaa !752
  %dec66 = add i64 %17, -1, !dbg !1248
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !1248, !tbaa !752
  %cmp67 = icmp eq i64 %dec66, 0, !dbg !1248
  br i1 %cmp67, label %if.else.69, label %if.end.72, !dbg !1250

if.else.69:                                       ; preds = %do.body.63
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %args.addr.1.lcssa, i64 0, i32 1, !dbg !1251
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !1251, !tbaa !761
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1251
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !1251, !tbaa !762
  call void %19(%struct._object* %args.addr.1.lcssa) #1, !dbg !1251
  br label %if.end.72

if.end.72:                                        ; preds = %do.body.63, %if.else.69
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %20 = load %struct._object*, %struct._object** %result, align 8, !dbg !1253, !tbaa !852
  %cmp75 = icmp eq %struct._object* %20, null, !dbg !1255
  br i1 %cmp75, label %if.then.76, label %do.body.78, !dbg !1256

if.then.76:                                       ; preds = %if.end.72
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1257, !tbaa !852
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0)) #1, !dbg !1258
  br label %do.body.78, !dbg !1258

do.body.78:                                       ; preds = %if.end.72, %if.then.76
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !583, metadata !738), !dbg !1259
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1261
  %22 = load i64, i64* %ob_refcnt80, align 8, !dbg !1261, !tbaa !752
  %dec81 = add i64 %22, -1, !dbg !1261
  store i64 %dec81, i64* %ob_refcnt80, align 8, !dbg !1261, !tbaa !752
  %cmp82 = icmp eq i64 %dec81, 0, !dbg !1261
  br i1 %cmp82, label %if.else.84, label %if.end.87, !dbg !1263

if.else.84:                                       ; preds = %do.body.78
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1264
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !1264, !tbaa !761
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1264
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !1264, !tbaa !762
  call void %24(%struct._object* %call3) #1, !dbg !1264
  br label %if.end.87

if.end.87:                                        ; preds = %do.body.78, %if.else.84
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %25 = load %struct._object*, %struct._object** %result, align 8, !dbg !1266, !tbaa !852
  br label %cleanup.140, !dbg !1267

do.body.90.loopexit:                              ; preds = %if.else.55
  %args.addr.1.lcssa198 = phi %struct._object* [ %args.addr.1, %if.else.55 ]
  br label %do.body.90, !dbg !1268

do.body.90:                                       ; preds = %do.body.90.loopexit, %cleanup
  %args.addr.1199 = phi %struct._object* [ %args.addr.1.lcssa198, %do.body.90.loopexit ], [ %args.addr.1.lcssa, %cleanup ]
  call void @llvm.dbg.value(metadata %struct._object* %args.addr.1, i64 0, metadata !585, metadata !738), !dbg !1268
  %cmp92 = icmp eq %struct._object* %args.addr.1199, null, !dbg !1270
  br i1 %cmp92, label %if.end.106, label %do.body.94, !dbg !1271

do.body.94:                                       ; preds = %do.body.90
  call void @llvm.dbg.value(metadata %struct._object* %args.addr.1, i64 0, metadata !587, metadata !738), !dbg !1272
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %args.addr.1199, i64 0, i32 0, !dbg !1274
  %26 = load i64, i64* %ob_refcnt96, align 8, !dbg !1274, !tbaa !752
  %dec97 = add i64 %26, -1, !dbg !1274
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !1274, !tbaa !752
  %cmp98 = icmp eq i64 %dec97, 0, !dbg !1274
  br i1 %cmp98, label %if.else.100, label %if.end.106, !dbg !1276

if.else.100:                                      ; preds = %do.body.94
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %args.addr.1199, i64 0, i32 1, !dbg !1277
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8, !dbg !1277, !tbaa !761
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1277
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8, !dbg !1277, !tbaa !762
  call void %28(%struct._object* %args.addr.1199) #1, !dbg !1277
  br label %if.end.106

if.end.106.loopexit:                              ; preds = %if.end.37
  br label %if.end.106, !dbg !1173

if.end.106:                                       ; preds = %if.end.106.loopexit, %if.end.20, %if.else.100, %do.body.94, %do.body.90
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !564, metadata !738), !dbg !1173
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !1279, !tbaa !852
  call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !590, metadata !738), !dbg !1279
  %cmp111 = icmp eq %struct._object* %29, null, !dbg !1281
  br i1 %cmp111, label %if.end.125, label %do.body.113, !dbg !1282

do.body.113:                                      ; preds = %if.end.106
  call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !592, metadata !738), !dbg !1283
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1285
  %30 = load i64, i64* %ob_refcnt115, align 8, !dbg !1285, !tbaa !752
  %dec116 = add i64 %30, -1, !dbg !1285
  store i64 %dec116, i64* %ob_refcnt115, align 8, !dbg !1285, !tbaa !752
  %cmp117 = icmp eq i64 %dec116, 0, !dbg !1285
  br i1 %cmp117, label %if.else.119, label %if.end.125, !dbg !1287

if.else.119:                                      ; preds = %do.body.113
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1288
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !1288, !tbaa !761
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !1288
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8, !dbg !1288, !tbaa !762
  call void %32(%struct._object* %29) #1, !dbg !1288
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.119, %do.body.113, %if.end.106
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !595, metadata !738), !dbg !1290
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1292
  %33 = load i64, i64* %ob_refcnt130, align 8, !dbg !1292, !tbaa !752
  %dec131 = add i64 %33, -1, !dbg !1292
  store i64 %dec131, i64* %ob_refcnt130, align 8, !dbg !1292, !tbaa !752
  %cmp132 = icmp eq i64 %dec131, 0, !dbg !1292
  br i1 %cmp132, label %if.else.134, label %cleanup.140, !dbg !1294

if.else.134:                                      ; preds = %if.end.125
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1295
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8, !dbg !1295, !tbaa !761
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !1295
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !1295, !tbaa !762
  call void %35(%struct._object* %call3) #1, !dbg !1295
  br label %cleanup.140

cleanup.140:                                      ; preds = %if.else.134, %if.end.125, %do.body, %do.body.12, %if.else, %entry, %if.end.87
  %retval.0 = phi %struct._object* [ %25, %if.end.87 ], [ null, %entry ], [ null, %if.else ], [ null, %do.body.12 ], [ null, %do.body ], [ null, %if.end.125 ], [ null, %if.else.134 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1297
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1297
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1297
  ret %struct._object* %retval.0, !dbg !1297
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @functools_cmp_to_key(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %cmp = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !599, metadata !738), !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !600, metadata !738), !dbg !1299
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !601, metadata !738), !dbg !1300
  %0 = bitcast %struct._object** %cmp to i8*, !dbg !1301
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1301
  tail call void @llvm.dbg.value(metadata %struct._object** %cmp, i64 0, metadata !602, metadata !738), !dbg !1302
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @functools_cmp_to_key.kwargs, i64 0, i64 0), %struct._object** nonnull %cmp) #1, !dbg !1303
  %tobool = icmp eq i32 %call, 0, !dbg !1303
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1305

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @keyobject_type) #1, !dbg !1306
  %tobool2 = icmp eq %struct._object* %call1, null, !dbg !1307
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1309

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %cmp, i64 0, metadata !602, metadata !738), !dbg !1302
  %1 = load %struct._object*, %struct._object** %cmp, align 8, !dbg !1310, !tbaa !852
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1310
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1310, !tbaa !752
  %inc = add i64 %2, 1, !dbg !1310
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1310, !tbaa !752
  call void @llvm.dbg.value(metadata %struct._object** %cmp, i64 0, metadata !602, metadata !738), !dbg !1302
  %3 = ptrtoint %struct._object* %1 to i64, !dbg !1311
  %4 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !1312
  store i64 %3, i64* %4, align 8, !dbg !1312, !tbaa !1313
  %object6 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !1315
  %5 = bitcast %struct._typeobject** %object6 to %struct._object**, !dbg !1315
  store %struct._object* null, %struct._object** %5, align 8, !dbg !1316, !tbaa !1317
  br label %cleanup, !dbg !1318

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi %struct._object* [ %call1, %if.end.4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1319
  ret %struct._object* %retval.0, !dbg !1319
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyIter_Next(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define internal void @keyobject_dealloc(%struct.keyobject* %ko) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.keyobject* %ko, i64 0, metadata !608, metadata !738), !dbg !1320
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 1, !dbg !1321
  %0 = load %struct._object*, %struct._object** %cmp, align 8, !dbg !1321, !tbaa !1313
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !609, metadata !738), !dbg !1321
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1323
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1323, !tbaa !752
  %dec = add i64 %1, -1, !dbg !1323
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1323, !tbaa !752
  %cmp1 = icmp eq i64 %dec, 0, !dbg !1323
  br i1 %cmp1, label %if.else, label %if.end, !dbg !1325

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1326
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1326, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1326
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1326, !tbaa !762
  tail call void %3(%struct._object* %0) #1, !dbg !1326
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 2, !dbg !1328
  %4 = load %struct._object*, %struct._object** %object, align 8, !dbg !1328, !tbaa !1317
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !611, metadata !738), !dbg !1328
  %cmp3 = icmp eq %struct._object* %4, null, !dbg !1330
  br i1 %cmp3, label %if.end.16, label %do.body.5, !dbg !1331

do.body.5:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !613, metadata !738), !dbg !1332
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1334
  %5 = load i64, i64* %ob_refcnt7, align 8, !dbg !1334, !tbaa !752
  %dec8 = add i64 %5, -1, !dbg !1334
  store i64 %dec8, i64* %ob_refcnt7, align 8, !dbg !1334, !tbaa !752
  %cmp9 = icmp eq i64 %dec8, 0, !dbg !1334
  br i1 %cmp9, label %if.else.11, label %if.end.16, !dbg !1336

if.else.11:                                       ; preds = %do.body.5
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1337
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1337, !tbaa !761
  %tp_dealloc13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1337
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc13, align 8, !dbg !1337, !tbaa !762
  tail call void %7(%struct._object* %4) #1, !dbg !1337
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %do.body.5, %if.end
  %8 = bitcast %struct.keyobject* %ko to i8*, !dbg !1339
  tail call void @PyObject_Free(i8* %8) #1, !dbg !1340
  ret void, !dbg !1341
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @keyobject_call(%struct.keyobject* nocapture readonly %ko, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %object = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.keyobject* %ko, i64 0, metadata !620, metadata !738), !dbg !1342
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !621, metadata !738), !dbg !1343
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !622, metadata !738), !dbg !1344
  %0 = bitcast %struct._object** %object to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1345
  tail call void @llvm.dbg.value(metadata %struct._object** %object, i64 0, metadata !623, metadata !738), !dbg !1346
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @keyobject_call.kwargs, i64 0, i64 0), %struct._object** nonnull %object) #1, !dbg !1347
  %tobool = icmp eq i32 %call, 0, !dbg !1347
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1349

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @keyobject_type) #1, !dbg !1350
  %tobool2 = icmp eq %struct._object* %call1, null, !dbg !1351
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1353

if.end.4:                                         ; preds = %if.end
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 1, !dbg !1354
  %1 = load %struct._object*, %struct._object** %cmp, align 8, !dbg !1354, !tbaa !1313
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1354
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1354, !tbaa !752
  %inc = add i64 %2, 1, !dbg !1354
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1354, !tbaa !752
  %3 = ptrtoint %struct._object* %1 to i64, !dbg !1355
  %4 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !1356
  store i64 %3, i64* %4, align 8, !dbg !1356, !tbaa !1313
  call void @llvm.dbg.value(metadata %struct._object** %object, i64 0, metadata !623, metadata !738), !dbg !1346
  %5 = load %struct._object*, %struct._object** %object, align 8, !dbg !1357, !tbaa !852
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1357
  %6 = load i64, i64* %ob_refcnt7, align 8, !dbg !1357, !tbaa !752
  %inc8 = add i64 %6, 1, !dbg !1357
  store i64 %inc8, i64* %ob_refcnt7, align 8, !dbg !1357, !tbaa !752
  call void @llvm.dbg.value(metadata %struct._object** %object, i64 0, metadata !623, metadata !738), !dbg !1346
  %7 = ptrtoint %struct._object* %5 to i64, !dbg !1358
  %object9 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !1359
  %8 = bitcast %struct._typeobject** %object9 to i64*, !dbg !1360
  store i64 %7, i64* %8, align 8, !dbg !1360, !tbaa !1317
  br label %cleanup, !dbg !1361

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi %struct._object* [ %call1, %if.end.4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1362
  ret %struct._object* %retval.0, !dbg !1362
}

; Function Attrs: nounwind uwtable
define internal i32 @keyobject_traverse(%struct.keyobject* nocapture readonly %ko, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.keyobject* %ko, i64 0, metadata !629, metadata !738), !dbg !1363
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !630, metadata !738), !dbg !1364
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !631, metadata !738), !dbg !1365
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 1, !dbg !1366
  %0 = load %struct._object*, %struct._object** %cmp, align 8, !dbg !1366, !tbaa !1313
  %tobool = icmp eq %struct._object* %0, null, !dbg !1366
  br i1 %tobool, label %do.end, label %if.then, !dbg !1368

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1369
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !632, metadata !738), !dbg !1369
  %tobool2 = icmp eq i32 %call, 0, !dbg !1371
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 2, !dbg !1373
  %1 = load %struct._object*, %struct._object** %object, align 8, !dbg !1373, !tbaa !1317
  %tobool5 = icmp eq %struct._object* %1, null, !dbg !1374
  br i1 %tobool5, label %if.end.22, label %if.then.10, !dbg !1375

if.then.10:                                       ; preds = %do.end
  %call13 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1376
  tail call void @llvm.dbg.value(metadata i32 %call13, i64 0, metadata !636, metadata !738), !dbg !1376
  %tobool14 = icmp eq i32 %call13, 0, !dbg !1378
  br i1 %tobool14, label %if.end.22, label %return

if.end.22:                                        ; preds = %do.end, %if.then.10
  br label %return, !dbg !1380

return:                                           ; preds = %if.then.10, %if.then, %if.end.22
  %retval.3 = phi i32 [ 0, %if.end.22 ], [ %call13, %if.then.10 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !1381
}

; Function Attrs: nounwind uwtable
define internal i32 @keyobject_clear(%struct.keyobject* nocapture %ko) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.keyobject* %ko, i64 0, metadata !645, metadata !738), !dbg !1382
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 1, !dbg !1383
  %0 = load %struct._object*, %struct._object** %cmp, align 8, !dbg !1383, !tbaa !1313
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !646, metadata !738), !dbg !1383
  %cmp1 = icmp eq %struct._object* %0, null, !dbg !1385
  br i1 %cmp1, label %if.end.6, label %if.then, !dbg !1386

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %cmp, align 8, !dbg !1387, !tbaa !1313
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !648, metadata !738), !dbg !1389
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1391
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1391, !tbaa !752
  %dec = add i64 %1, -1, !dbg !1391
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1391, !tbaa !752
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1391
  br i1 %cmp4, label %if.else, label %if.end.6, !dbg !1393

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1394
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1394, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1394
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1394, !tbaa !762
  tail call void %3(%struct._object* %0) #1, !dbg !1394
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then, %entry
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %ko, i64 0, i32 2, !dbg !1396
  %4 = load %struct._object*, %struct._object** %object, align 8, !dbg !1396, !tbaa !1317
  %tobool = icmp eq %struct._object* %4, null, !dbg !1397
  br i1 %tobool, label %if.end.31, label %if.then.14, !dbg !1398

if.then.14:                                       ; preds = %if.end.6
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !652, metadata !738), !dbg !1399
  store %struct._object* null, %struct._object** %object, align 8, !dbg !1401, !tbaa !1317
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !655, metadata !738), !dbg !1403
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1405
  %5 = load i64, i64* %ob_refcnt18, align 8, !dbg !1405, !tbaa !752
  %dec19 = add i64 %5, -1, !dbg !1405
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !1405, !tbaa !752
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !1405
  br i1 %cmp20, label %if.else.22, label %if.end.31, !dbg !1407

if.else.22:                                       ; preds = %if.then.14
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1408
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1408, !tbaa !761
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1408
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !1408, !tbaa !762
  tail call void %7(%struct._object* %4) #1, !dbg !1408
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.14, %if.else.22, %if.end.6
  ret i32 0, !dbg !1410
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @keyobject_richcompare(%struct._object* nocapture readonly %ko, %struct._object* nocapture readonly %other, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %ko, i64 0, metadata !661, metadata !738), !dbg !1411
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !662, metadata !738), !dbg !1412
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !663, metadata !738), !dbg !1413
  %0 = load %struct._object*, %struct._object** @keyobject_richcompare.zero, align 8, !dbg !1414, !tbaa !852
  %cmp = icmp eq %struct._object* %0, null, !dbg !1416
  br i1 %cmp, label %if.then, label %if.end.2, !dbg !1417

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyLong_FromLong(i64 0) #1, !dbg !1418
  store %struct._object* %call, %struct._object** @keyobject_richcompare.zero, align 8, !dbg !1420, !tbaa !852
  %tobool = icmp eq %struct._object* %call, null, !dbg !1421
  br i1 %tobool, label %cleanup, label %if.end.2, !dbg !1423

if.end.2:                                         ; preds = %if.then, %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %other, i64 0, i32 1, !dbg !1424
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1424, !tbaa !761
  %cmp3 = icmp eq %struct._typeobject* %1, @keyobject_type, !dbg !1426
  br i1 %cmp3, label %if.end.6, label %if.then.4, !dbg !1427

if.then.4:                                        ; preds = %if.end.2
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1428, !tbaa !852
  %call5 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0)) #1, !dbg !1430
  br label %cleanup, !dbg !1431

if.end.6:                                         ; preds = %if.end.2
  %cmp7 = getelementptr inbounds %struct._object, %struct._object* %ko, i64 1, !dbg !1432
  %3 = bitcast %struct._object* %cmp7 to %struct._object**, !dbg !1432
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !1432, !tbaa !1313
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !668, metadata !738), !dbg !1433
  %object = getelementptr inbounds %struct._object, %struct._object* %ko, i64 1, i32 1, !dbg !1434
  %5 = bitcast %struct._typeobject** %object to %struct._object**, !dbg !1434
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1434, !tbaa !1317
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !666, metadata !738), !dbg !1435
  %object8 = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, i32 1, !dbg !1436
  %7 = bitcast %struct._typeobject** %object8 to %struct._object**, !dbg !1436
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !1436, !tbaa !1317
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !667, metadata !738), !dbg !1437
  %tobool9 = icmp ne %struct._object* %6, null, !dbg !1438
  %tobool10 = icmp ne %struct._object* %8, null, !dbg !1440
  %or.cond = and i1 %tobool9, %tobool10, !dbg !1442
  br i1 %or.cond, label %if.end.13, label %if.then.11, !dbg !1442

if.then.11:                                       ; preds = %if.end.6
  %9 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1443, !tbaa !852
  %call12 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #1, !dbg !1445
  br label %cleanup, !dbg !1446

if.end.13:                                        ; preds = %if.end.6
  %call14 = tail call %struct._object* @PyTuple_New(i64 2) #1, !dbg !1447
  tail call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !665, metadata !738), !dbg !1448
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !1449
  br i1 %cmp15, label %cleanup, label %if.end.17, !dbg !1451

if.end.17:                                        ; preds = %if.end.13
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1452
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1452, !tbaa !752
  %inc = add i64 %10, 1, !dbg !1452
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1452, !tbaa !752
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1453
  %11 = load i64, i64* %ob_refcnt18, align 8, !dbg !1453, !tbaa !752
  %inc19 = add i64 %11, 1, !dbg !1453
  store i64 %inc19, i64* %ob_refcnt18, align 8, !dbg !1453, !tbaa !752
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call14, i64 1, i32 1, !dbg !1454
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1454
  store %struct._object* %6, %struct._object** %arrayidx, align 8, !dbg !1454, !tbaa !852
  %arrayidx21 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !1455
  %12 = bitcast %struct._typeobject** %arrayidx21 to %struct._object**, !dbg !1455
  store %struct._object* %8, %struct._object** %12, align 8, !dbg !1455, !tbaa !852
  %call22 = tail call %struct._object* @PyObject_Call(%struct._object* %4, %struct._object* %call14, %struct._object* null) #1, !dbg !1456
  tail call void @llvm.dbg.value(metadata %struct._object* %call22, i64 0, metadata !664, metadata !738), !dbg !1457
  tail call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !670, metadata !738), !dbg !1458
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 0, !dbg !1460
  %13 = load i64, i64* %ob_refcnt23, align 8, !dbg !1460, !tbaa !752
  %dec = add i64 %13, -1, !dbg !1460
  store i64 %dec, i64* %ob_refcnt23, align 8, !dbg !1460, !tbaa !752
  %cmp24 = icmp eq i64 %dec, 0, !dbg !1460
  br i1 %cmp24, label %if.else, label %if.end.27, !dbg !1462

if.else:                                          ; preds = %if.end.17
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 1, !dbg !1463
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1463, !tbaa !761
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1463
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1463, !tbaa !762
  tail call void %15(%struct._object* %call14) #1, !dbg !1463
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.17, %if.else
  %cmp28 = icmp eq %struct._object* %call22, null, !dbg !1465
  br i1 %cmp28, label %cleanup, label %if.end.30, !dbg !1467

if.end.30:                                        ; preds = %if.end.27
  %16 = load %struct._object*, %struct._object** @keyobject_richcompare.zero, align 8, !dbg !1468, !tbaa !852
  %call31 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %call22, %struct._object* %16, i32 %op) #1, !dbg !1469
  tail call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !669, metadata !738), !dbg !1470
  tail call void @llvm.dbg.value(metadata %struct._object* %call22, i64 0, metadata !672, metadata !738), !dbg !1471
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %call22, i64 0, i32 0, !dbg !1473
  %17 = load i64, i64* %ob_refcnt34, align 8, !dbg !1473, !tbaa !752
  %dec35 = add i64 %17, -1, !dbg !1473
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1473, !tbaa !752
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !1473
  br i1 %cmp36, label %if.else.38, label %cleanup, !dbg !1475

if.else.38:                                       ; preds = %if.end.30
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %call22, i64 0, i32 1, !dbg !1476
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1476, !tbaa !761
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1476
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1476, !tbaa !762
  tail call void %19(%struct._object* %call22) #1, !dbg !1476
  br label %cleanup

cleanup:                                          ; preds = %if.else.38, %if.end.30, %if.end.27, %if.end.13, %if.then, %if.then.11, %if.then.4
  %retval.0 = phi %struct._object* [ null, %if.then.4 ], [ null, %if.then.11 ], [ null, %if.then ], [ null, %if.end.13 ], [ null, %if.end.27 ], [ %call31, %if.end.30 ], [ %call31, %if.else.38 ]
  ret %struct._object* %retval.0, !dbg !1478
}

declare void @PyObject_Free(i8*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!735, !736}
!llvm.ident = !{!737}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !376, globals: !674)
!1 = !DIFile(filename: "./Modules/_functoolsmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !351, !359, !11, !94, !369}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !353, line: 33, baseType: !354)
!353 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 25, size: 256, align: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !354, file: !353, line: 26, baseType: !23, size: 192, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !354, file: !353, line: 27, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "partialobject", file: !1, line: 21, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 14, size: 448, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !1, line: 15, baseType: !6, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !361, file: !1, line: 16, baseType: !5, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !361, file: !1, line: 17, baseType: !5, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "kw", scope: !361, file: !1, line: 18, baseType: !5, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !361, file: !1, line: 19, baseType: !5, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !361, file: !1, line: 20, baseType: !5, size: 64, align: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyobject", file: !1, line: 303, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 299, size: 256, align: 64, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !371, file: !1, line: 300, baseType: !6, size: 128, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !371, file: !1, line: 301, baseType: !5, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !371, file: !1, line: 302, baseType: !5, size: 64, align: 64, offset: 192)
!376 = !{!377, !397, !422, !448, !482, !505, !511, !539, !558, !597, !604, !616, !625, !641, !659}
!377 = !DISubprogram(name: "PyInit__functools", scope: !1, file: !1, line: 569, type: !378, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__functools, variables: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!5}
!380 = !{!381, !382, !383, !384, !390}
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !377, file: !1, line: 571, type: !44)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !377, file: !1, line: 572, type: !5)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !377, file: !1, line: 573, type: !52)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typelist", scope: !377, file: !1, line: 574, type: !385)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, align: 64, elements: !388)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!388 = !{!389}
!389 = !DISubrange(count: 2)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !391, file: !1, line: 585, type: !5)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 585, column: 13)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 584, column: 44)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 584, column: 13)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 583, column: 43)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 583, column: 5)
!396 = distinct !DILexicalBlock(scope: !377, file: !1, line: 583, column: 5)
!397 = !DISubprogram(name: "partial_dealloc", scope: !1, file: !1, line: 75, type: !398, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.partialobject*)* @partial_dealloc, variables: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !359}
!400 = !{!401, !402, !404, !407, !409, !412, !414, !417, !419}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pto", arg: 1, scope: !397, file: !1, line: 75, type: !359)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !403, file: !1, line: 80, type: !5)
!403 = distinct !DILexicalBlock(scope: !397, file: !1, line: 80, column: 5)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !405, file: !1, line: 80, type: !5)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 80, column: 5)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 80, column: 5)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !408, file: !1, line: 81, type: !5)
!408 = distinct !DILexicalBlock(scope: !397, file: !1, line: 81, column: 5)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !410, file: !1, line: 81, type: !5)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 81, column: 5)
!411 = distinct !DILexicalBlock(scope: !408, file: !1, line: 81, column: 5)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !413, file: !1, line: 82, type: !5)
!413 = distinct !DILexicalBlock(scope: !397, file: !1, line: 82, column: 5)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !415, file: !1, line: 82, type: !5)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 82, column: 5)
!416 = distinct !DILexicalBlock(scope: !413, file: !1, line: 82, column: 5)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !418, file: !1, line: 83, type: !5)
!418 = distinct !DILexicalBlock(scope: !397, file: !1, line: 83, column: 5)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !420, file: !1, line: 83, type: !5)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 83, column: 5)
!421 = distinct !DILexicalBlock(scope: !418, file: !1, line: 83, column: 5)
!422 = !DISubprogram(name: "partial_repr", scope: !1, file: !1, line: 164, type: !423, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.partialobject*)* @partial_repr, variables: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!5, !359}
!425 = !{!426, !427, !428, !429, !430, !431, !432, !437, !440, !441, !446}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pto", arg: 1, scope: !422, file: !1, line: 164, type: !359)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !422, file: !1, line: 166, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arglist", scope: !422, file: !1, line: 167, type: !5)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !422, file: !1, line: 168, type: !5)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !422, file: !1, line: 169, type: !11)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !422, file: !1, line: 169, type: !11)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !1, line: 181, type: !5)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 181, column: 9)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 178, column: 29)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 178, column: 5)
!436 = distinct !DILexicalBlock(scope: !422, file: !1, line: 178, column: 5)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !438, file: !1, line: 189, type: !5)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 188, column: 29)
!439 = distinct !DILexicalBlock(scope: !422, file: !1, line: 188, column: 9)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !438, file: !1, line: 189, type: !5)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !1, line: 193, type: !5)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 193, column: 13)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 190, column: 62)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 190, column: 9)
!445 = distinct !DILexicalBlock(scope: !438, file: !1, line: 190, column: 9)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !447, file: !1, line: 201, type: !5)
!447 = distinct !DILexicalBlock(scope: !422, file: !1, line: 201, column: 5)
!448 = !DISubprogram(name: "partial_call", scope: !1, file: !1, line: 88, type: !449, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.partialobject*, %struct._object*, %struct._object*)* @partial_call, variables: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!5, !359, !5, !5}
!451 = !{!452, !453, !454, !455, !456, !457, !458, !462, !467, !473, !475, !477, !479}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pto", arg: 1, scope: !448, file: !1, line: 88, type: !359)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !448, file: !1, line: 88, type: !5)
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !448, file: !1, line: 88, type: !5)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !448, file: !1, line: 90, type: !5)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argappl", scope: !448, file: !1, line: 91, type: !5)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwappl", scope: !448, file: !1, line: 91, type: !5)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !459, file: !1, line: 111, type: !5)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 111, column: 9)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 109, column: 29)
!461 = distinct !DILexicalBlock(scope: !448, file: !1, line: 109, column: 9)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !463, file: !1, line: 115, type: !5)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 115, column: 13)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 114, column: 29)
!465 = distinct !DILexicalBlock(scope: !466, file: !1, line: 114, column: 13)
!466 = distinct !DILexicalBlock(scope: !461, file: !1, line: 112, column: 12)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !1, line: 120, type: !5)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 120, column: 17)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 119, column: 51)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 119, column: 17)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 118, column: 25)
!472 = distinct !DILexicalBlock(scope: !466, file: !1, line: 118, column: 13)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !474, file: !1, line: 121, type: !5)
!474 = distinct !DILexicalBlock(scope: !469, file: !1, line: 121, column: 17)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !1, line: 128, type: !5)
!476 = distinct !DILexicalBlock(scope: !448, file: !1, line: 128, column: 5)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !478, file: !1, line: 129, type: !5)
!478 = distinct !DILexicalBlock(scope: !448, file: !1, line: 129, column: 5)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !480, file: !1, line: 129, type: !5)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 129, column: 5)
!481 = distinct !DILexicalBlock(scope: !478, file: !1, line: 129, column: 5)
!482 = !DISubprogram(name: "partial_traverse", scope: !1, file: !1, line: 134, type: !483, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.partialobject*, i32 (%struct._object*, i8*)*, i8*)* @partial_traverse, variables: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!44, !359, !263, !4}
!485 = !{!486, !487, !488, !489, !493, !497, !501}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pto", arg: 1, scope: !482, file: !1, line: 134, type: !359)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !482, file: !1, line: 134, type: !263)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !482, file: !1, line: 134, type: !4)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !490, file: !1, line: 136, type: !44)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 136, column: 5)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 136, column: 5)
!492 = distinct !DILexicalBlock(scope: !482, file: !1, line: 136, column: 5)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !494, file: !1, line: 137, type: !44)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 137, column: 5)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 137, column: 5)
!496 = distinct !DILexicalBlock(scope: !482, file: !1, line: 137, column: 5)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !498, file: !1, line: 138, type: !44)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 138, column: 5)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 138, column: 5)
!500 = distinct !DILexicalBlock(scope: !482, file: !1, line: 138, column: 5)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !502, file: !1, line: 139, type: !44)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 139, column: 5)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 139, column: 5)
!504 = distinct !DILexicalBlock(scope: !482, file: !1, line: 139, column: 5)
!505 = !DISubprogram(name: "partial_reduce", scope: !1, file: !1, line: 213, type: !506, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.partialobject*, %struct._object*)* @partial_reduce, variables: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!5, !359, !5}
!508 = !{!509, !510}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pto", arg: 1, scope: !505, file: !1, line: 213, type: !359)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !505, file: !1, line: 213, type: !5)
!511 = !DISubprogram(name: "partial_setstate", scope: !1, file: !1, line: 221, type: !506, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.partialobject*, %struct._object*)* @partial_setstate, variables: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !521, !524, !526, !529, !531, !534, !536}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pto", arg: 1, scope: !511, file: !1, line: 221, type: !359)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !511, file: !1, line: 221, type: !5)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fn", scope: !511, file: !1, line: 223, type: !5)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnargs", scope: !511, file: !1, line: 223, type: !5)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kw", scope: !511, file: !1, line: 223, type: !5)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !511, file: !1, line: 223, type: !5)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !520, file: !1, line: 227, type: !5)
!520 = distinct !DILexicalBlock(scope: !511, file: !1, line: 227, column: 5)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !522, file: !1, line: 227, type: !5)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 227, column: 5)
!523 = distinct !DILexicalBlock(scope: !520, file: !1, line: 227, column: 5)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !525, file: !1, line: 228, type: !5)
!525 = distinct !DILexicalBlock(scope: !511, file: !1, line: 228, column: 5)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !1, line: 228, type: !5)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 228, column: 5)
!528 = distinct !DILexicalBlock(scope: !525, file: !1, line: 228, column: 5)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !530, file: !1, line: 229, type: !5)
!530 = distinct !DILexicalBlock(scope: !511, file: !1, line: 229, column: 5)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !532, file: !1, line: 229, type: !5)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 229, column: 5)
!533 = distinct !DILexicalBlock(scope: !530, file: !1, line: 229, column: 5)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !535, file: !1, line: 230, type: !5)
!535 = distinct !DILexicalBlock(scope: !511, file: !1, line: 230, column: 5)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !1, line: 230, type: !5)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 230, column: 5)
!538 = distinct !DILexicalBlock(scope: !535, file: !1, line: 230, column: 5)
!539 = !DISubprogram(name: "partial_new", scope: !1, file: !1, line: 26, type: !540, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @partial_new, variables: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!5, !386, !5, !5}
!542 = !{!543, !544, !545, !546, !547, !548, !552}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !539, file: !1, line: 26, type: !386)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !539, file: !1, line: 26, type: !5)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !539, file: !1, line: 26, type: !5)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !539, file: !1, line: 28, type: !5)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pto", scope: !539, file: !1, line: 29, type: !359)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !549, file: !1, line: 54, type: !5)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 54, column: 9)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 52, column: 28)
!551 = distinct !DILexicalBlock(scope: !539, file: !1, line: 52, column: 9)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !553, file: !1, line: 60, type: !5)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 60, column: 13)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 59, column: 30)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 59, column: 13)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 57, column: 21)
!557 = distinct !DILexicalBlock(scope: !539, file: !1, line: 57, column: 9)
!558 = !DISubprogram(name: "functools_reduce", scope: !1, file: !1, line: 470, type: !126, isLocal: true, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @functools_reduce, variables: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !570, !573, !577, !581, !583, !585, !587, !590, !592, !595}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !558, file: !1, line: 470, type: !5)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !558, file: !1, line: 470, type: !5)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !558, file: !1, line: 472, type: !5)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !558, file: !1, line: 472, type: !5)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !558, file: !1, line: 472, type: !5)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !558, file: !1, line: 472, type: !5)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !567, file: !1, line: 484, type: !5)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 484, column: 9)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 480, column: 21)
!569 = distinct !DILexicalBlock(scope: !558, file: !1, line: 480, column: 9)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !571, file: !1, line: 484, type: !5)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 484, column: 9)
!572 = distinct !DILexicalBlock(scope: !567, file: !1, line: 484, column: 9)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op2", scope: !574, file: !1, line: 492, type: !5)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 491, column: 14)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 491, column: 5)
!576 = distinct !DILexicalBlock(scope: !558, file: !1, line: 491, column: 5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !578, file: !1, line: 495, type: !5)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 495, column: 13)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 494, column: 34)
!580 = distinct !DILexicalBlock(scope: !574, file: !1, line: 494, column: 13)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !1, line: 517, type: !5)
!582 = distinct !DILexicalBlock(scope: !558, file: !1, line: 517, column: 5)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 523, type: !5)
!584 = distinct !DILexicalBlock(scope: !558, file: !1, line: 523, column: 5)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !586, file: !1, line: 527, type: !5)
!586 = distinct !DILexicalBlock(scope: !558, file: !1, line: 527, column: 5)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !588, file: !1, line: 527, type: !5)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 527, column: 5)
!589 = distinct !DILexicalBlock(scope: !586, file: !1, line: 527, column: 5)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !591, file: !1, line: 528, type: !5)
!591 = distinct !DILexicalBlock(scope: !558, file: !1, line: 528, column: 5)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !593, file: !1, line: 528, type: !5)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 528, column: 5)
!594 = distinct !DILexicalBlock(scope: !591, file: !1, line: 528, column: 5)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !1, line: 529, type: !5)
!596 = distinct !DILexicalBlock(scope: !558, file: !1, line: 529, column: 5)
!597 = !DISubprogram(name: "functools_cmp_to_key", scope: !1, file: !1, line: 447, type: !135, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @functools_cmp_to_key, variables: !598)
!598 = !{!599, !600, !601, !602, !603}
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !597, file: !1, line: 447, type: !5)
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !597, file: !1, line: 447, type: !5)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !597, file: !1, line: 447, type: !5)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !597, file: !1, line: 449, type: !5)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !597, file: !1, line: 451, type: !369)
!604 = !DISubprogram(name: "keyobject_dealloc", scope: !1, file: !1, line: 306, type: !605, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.keyobject*)* @keyobject_dealloc, variables: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !369}
!607 = !{!608, !609, !611, !613}
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ko", arg: 1, scope: !604, file: !1, line: 306, type: !369)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !610, file: !1, line: 308, type: !5)
!610 = distinct !DILexicalBlock(scope: !604, file: !1, line: 308, column: 5)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !612, file: !1, line: 309, type: !5)
!612 = distinct !DILexicalBlock(scope: !604, file: !1, line: 309, column: 5)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !614, file: !1, line: 309, type: !5)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 309, column: 5)
!615 = distinct !DILexicalBlock(scope: !612, file: !1, line: 309, column: 5)
!616 = !DISubprogram(name: "keyobject_call", scope: !1, file: !1, line: 379, type: !617, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.keyobject*, %struct._object*, %struct._object*)* @keyobject_call, variables: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!5, !369, !5, !5}
!619 = !{!620, !621, !622, !623, !624}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ko", arg: 1, scope: !616, file: !1, line: 379, type: !369)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !616, file: !1, line: 379, type: !5)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !616, file: !1, line: 379, type: !5)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !616, file: !1, line: 381, type: !5)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !616, file: !1, line: 382, type: !369)
!625 = !DISubprogram(name: "keyobject_traverse", scope: !1, file: !1, line: 314, type: !626, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.keyobject*, i32 (%struct._object*, i8*)*, i8*)* @keyobject_traverse, variables: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!44, !369, !263, !4}
!628 = !{!629, !630, !631, !632, !636}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ko", arg: 1, scope: !625, file: !1, line: 314, type: !369)
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !625, file: !1, line: 314, type: !263)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !625, file: !1, line: 314, type: !4)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !633, file: !1, line: 316, type: !44)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 316, column: 5)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 316, column: 5)
!635 = distinct !DILexicalBlock(scope: !625, file: !1, line: 316, column: 5)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !637, file: !1, line: 318, type: !44)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 318, column: 9)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 318, column: 9)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 318, column: 9)
!640 = distinct !DILexicalBlock(scope: !625, file: !1, line: 317, column: 9)
!641 = !DISubprogram(name: "keyobject_clear", scope: !1, file: !1, line: 323, type: !642, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.keyobject*)* @keyobject_clear, variables: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!44, !369}
!644 = !{!645, !646, !648, !652, !655}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ko", arg: 1, scope: !641, file: !1, line: 323, type: !369)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !647, file: !1, line: 325, type: !5)
!647 = distinct !DILexicalBlock(scope: !641, file: !1, line: 325, column: 5)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !649, file: !1, line: 325, type: !5)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 325, column: 5)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 325, column: 5)
!651 = distinct !DILexicalBlock(scope: !647, file: !1, line: 325, column: 5)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !653, file: !1, line: 327, type: !5)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 327, column: 9)
!654 = distinct !DILexicalBlock(scope: !641, file: !1, line: 326, column: 9)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !656, file: !1, line: 327, type: !5)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 327, column: 9)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 327, column: 9)
!658 = distinct !DILexicalBlock(scope: !653, file: !1, line: 327, column: 9)
!659 = !DISubprogram(name: "keyobject_richcompare", scope: !1, file: !1, line: 398, type: !271, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @keyobject_richcompare, variables: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !672}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ko", arg: 1, scope: !659, file: !1, line: 398, type: !5)
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !659, file: !1, line: 398, type: !5)
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !659, file: !1, line: 398, type: !44)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !659, file: !1, line: 400, type: !5)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !659, file: !1, line: 401, type: !5)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !659, file: !1, line: 402, type: !5)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !659, file: !1, line: 403, type: !5)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compare", scope: !659, file: !1, line: 404, type: !5)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "answer", scope: !659, file: !1, line: 405, type: !5)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !1, line: 438, type: !5)
!671 = distinct !DILexicalBlock(scope: !659, file: !1, line: 438, column: 5)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !673, file: !1, line: 442, type: !5)
!673 = distinct !DILexicalBlock(scope: !659, file: !1, line: 442, column: 5)
!674 = !{!675, !676, !680, !685, !690, !693, !715, !719, !720, !724, !726, !727, !728, !729, !731}
!675 = !DIGlobalVariable(name: "partial_type", scope: !0, file: !1, line: 252, type: !387, isLocal: true, isDefinition: true, variable: %struct._typeobject* @partial_type)
!676 = !DIGlobalVariable(name: "partial_doc", scope: !0, file: !1, line: 143, type: !677, isLocal: true, isDefinition: true, variable: [115 x i8]* @partial_doc)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 920, align: 8, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 115)
!680 = !DIGlobalVariable(name: "partial_methods", scope: !0, file: !1, line: 246, type: !681, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @partial_methods)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 768, align: 64, elements: !683)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!683 = !{!684}
!684 = !DISubrange(count: 3)
!685 = !DIGlobalVariable(name: "partial_memberlist", scope: !0, file: !1, line: 148, type: !686, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @partial_memberlist)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 1280, align: 64, elements: !688)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!688 = !{!689}
!689 = !DISubrange(count: 4)
!690 = !DIGlobalVariable(name: "partial_getsetlist", scope: !0, file: !1, line: 158, type: !691, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @partial_getsetlist)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 640, align: 64, elements: !388)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!693 = !DIGlobalVariable(name: "_functoolsmodule", scope: !0, file: !1, line: 556, type: !694, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_functoolsmodule)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !695, line: 47, size: 832, align: 64, elements: !696)
!695 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!696 = !{!697, !706, !707, !708, !709, !711, !712, !713, !714}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !694, file: !695, line: 48, baseType: !698, size: 320, align: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !695, line: 38, baseType: !699)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !695, line: 33, size: 320, align: 64, elements: !700)
!700 = !{!701, !702, !704, !705}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !699, file: !695, line: 34, baseType: !6, size: 128, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !699, file: !695, line: 35, baseType: !703, size: 64, align: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !699, file: !695, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !699, file: !695, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !694, file: !695, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !694, file: !695, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !694, file: !695, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !694, file: !695, line: 52, baseType: !710, size: 64, align: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !694, file: !695, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !694, file: !695, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !694, file: !695, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !694, file: !695, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!715 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 545, type: !716, isLocal: true, isDefinition: true, variable: [33 x i8]* @module_doc)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 264, align: 8, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 33)
!719 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !1, line: 548, type: !681, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @module_methods)
!720 = !DIGlobalVariable(name: "functools_reduce_doc", scope: !0, file: !1, line: 533, type: !721, isLocal: true, isDefinition: true, variable: [418 x i8]* @functools_reduce_doc)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3344, align: 8, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 418)
!724 = !DIGlobalVariable(name: "kwargs", scope: !597, file: !1, line: 450, type: !725, isLocal: true, isDefinition: true, variable: [2 x i8*]* @functools_cmp_to_key.kwargs)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 64, elements: !388)
!726 = !DIGlobalVariable(name: "keyobject_type", scope: !0, file: !1, line: 344, type: !387, isLocal: true, isDefinition: true, variable: %struct._typeobject* @keyobject_type)
!727 = !DIGlobalVariable(name: "kwargs", scope: !616, file: !1, line: 383, type: !725, isLocal: true, isDefinition: true, variable: [2 x i8*]* @keyobject_call.kwargs)
!728 = !DIGlobalVariable(name: "zero", scope: !659, file: !1, line: 406, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @keyobject_richcompare.zero)
!729 = !DIGlobalVariable(name: "keyobject_members", scope: !0, file: !1, line: 331, type: !730, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @keyobject_members)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 640, align: 64, elements: !388)
!731 = !DIGlobalVariable(name: "functools_cmp_to_key_doc", scope: !0, file: !1, line: 464, type: !732, isLocal: true, isDefinition: true, variable: [46 x i8]* @functools_cmp_to_key_doc)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 368, align: 8, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 46)
!735 = !{i32 2, !"Dwarf Version", i32 4}
!736 = !{i32 2, !"Debug Info Version", i32 3}
!737 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!738 = !DIExpression()
!739 = !DILocation(line: 574, column: 19, scope: !377)
!740 = !DILocation(line: 579, column: 9, scope: !377)
!741 = !DILocation(line: 572, column: 15, scope: !377)
!742 = !DILocation(line: 580, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !377, file: !1, line: 580, column: 9)
!744 = !DILocation(line: 580, column: 9, scope: !377)
!745 = !DILocation(line: 584, column: 13, scope: !393)
!746 = !DILocation(line: 584, column: 39, scope: !393)
!747 = !DILocation(line: 584, column: 13, scope: !394)
!748 = !DILocation(line: 585, column: 13, scope: !749)
!749 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!750 = !DILocation(line: 585, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !391, file: !1, line: 585, column: 13)
!752 = !{!753, !754, i64 0}
!753 = !{!"_object", !754, i64 0, !757, i64 8}
!754 = !{!"long", !755, i64 0}
!755 = !{!"omnipotent char", !756, i64 0}
!756 = !{!"Simple C/C++ TBAA"}
!757 = !{!"any pointer", !755, i64 0}
!758 = !DILocation(line: 585, column: 13, scope: !391)
!759 = !DILocation(line: 585, column: 13, scope: !760)
!760 = !DILexicalBlockFile(scope: !751, file: !1, discriminator: 3)
!761 = !{!753, !757, i64 8}
!762 = !{!763, !757, i64 48}
!763 = !{!"_typeobject", !764, i64 0, !757, i64 24, !754, i64 32, !754, i64 40, !757, i64 48, !757, i64 56, !757, i64 64, !757, i64 72, !757, i64 80, !757, i64 88, !757, i64 96, !757, i64 104, !757, i64 112, !757, i64 120, !757, i64 128, !757, i64 136, !757, i64 144, !757, i64 152, !757, i64 160, !754, i64 168, !757, i64 176, !757, i64 184, !757, i64 192, !757, i64 200, !754, i64 208, !757, i64 216, !757, i64 224, !757, i64 232, !757, i64 240, !757, i64 248, !757, i64 256, !757, i64 264, !757, i64 272, !757, i64 280, !754, i64 288, !757, i64 296, !757, i64 304, !757, i64 312, !757, i64 320, !757, i64 328, !757, i64 336, !757, i64 344, !757, i64 352, !757, i64 360, !757, i64 368, !757, i64 376, !765, i64 384, !757, i64 392}
!764 = !{!"", !753, i64 0, !754, i64 16}
!765 = !{!"int", !755, i64 0}
!766 = !DILocation(line: 588, column: 16, scope: !394)
!767 = !{!763, !757, i64 24}
!768 = !DILocation(line: 573, column: 11, scope: !377)
!769 = !DILocation(line: 590, column: 9, scope: !394)
!770 = !DILocation(line: 591, column: 35, scope: !394)
!771 = !DILocation(line: 591, column: 9, scope: !394)
!772 = !DILocation(line: 594, column: 1, scope: !377)
!773 = !DILocation(line: 75, column: 32, scope: !397)
!774 = !DILocation(line: 77, column: 25, scope: !397)
!775 = !DILocation(line: 77, column: 5, scope: !397)
!776 = !DILocation(line: 78, column: 14, scope: !777)
!777 = distinct !DILexicalBlock(scope: !397, file: !1, line: 78, column: 9)
!778 = !{!779, !757, i64 48}
!779 = !{!"", !753, i64 0, !757, i64 16, !757, i64 24, !757, i64 32, !757, i64 40, !757, i64 48}
!780 = !DILocation(line: 78, column: 26, scope: !777)
!781 = !DILocation(line: 78, column: 9, scope: !397)
!782 = !DILocation(line: 79, column: 32, scope: !777)
!783 = !DILocation(line: 79, column: 9, scope: !777)
!784 = !DILocation(line: 80, column: 5, scope: !785)
!785 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 1)
!786 = !{!779, !757, i64 16}
!787 = !DILocation(line: 80, column: 5, scope: !406)
!788 = !DILocation(line: 80, column: 5, scope: !403)
!789 = !DILocation(line: 80, column: 5, scope: !790)
!790 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 4)
!791 = !DILocation(line: 80, column: 5, scope: !792)
!792 = distinct !DILexicalBlock(scope: !405, file: !1, line: 80, column: 5)
!793 = !DILocation(line: 80, column: 5, scope: !405)
!794 = !DILocation(line: 80, column: 5, scope: !795)
!795 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 6)
!796 = !DILocation(line: 81, column: 5, scope: !797)
!797 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 1)
!798 = !{!779, !757, i64 24}
!799 = !DILocation(line: 81, column: 5, scope: !411)
!800 = !DILocation(line: 81, column: 5, scope: !408)
!801 = !DILocation(line: 81, column: 5, scope: !802)
!802 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 4)
!803 = !DILocation(line: 81, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !410, file: !1, line: 81, column: 5)
!805 = !DILocation(line: 81, column: 5, scope: !410)
!806 = !DILocation(line: 81, column: 5, scope: !807)
!807 = !DILexicalBlockFile(scope: !804, file: !1, discriminator: 6)
!808 = !DILocation(line: 82, column: 5, scope: !809)
!809 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 1)
!810 = !{!779, !757, i64 32}
!811 = !DILocation(line: 82, column: 5, scope: !416)
!812 = !DILocation(line: 82, column: 5, scope: !413)
!813 = !DILocation(line: 82, column: 5, scope: !814)
!814 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 4)
!815 = !DILocation(line: 82, column: 5, scope: !816)
!816 = distinct !DILexicalBlock(scope: !415, file: !1, line: 82, column: 5)
!817 = !DILocation(line: 82, column: 5, scope: !415)
!818 = !DILocation(line: 82, column: 5, scope: !819)
!819 = !DILexicalBlockFile(scope: !816, file: !1, discriminator: 6)
!820 = !DILocation(line: 83, column: 5, scope: !821)
!821 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 1)
!822 = !{!779, !757, i64 40}
!823 = !DILocation(line: 83, column: 5, scope: !421)
!824 = !DILocation(line: 83, column: 5, scope: !418)
!825 = !DILocation(line: 83, column: 5, scope: !826)
!826 = !DILexicalBlockFile(scope: !420, file: !1, discriminator: 4)
!827 = !DILocation(line: 83, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !420, file: !1, line: 83, column: 5)
!829 = !DILocation(line: 83, column: 5, scope: !420)
!830 = !DILocation(line: 83, column: 5, scope: !831)
!831 = !DILexicalBlockFile(scope: !828, file: !1, discriminator: 6)
!832 = !DILocation(line: 84, column: 5, scope: !397)
!833 = !DILocation(line: 84, column: 19, scope: !397)
!834 = !{!763, !757, i64 320}
!835 = !DILocation(line: 85, column: 1, scope: !397)
!836 = !DILocation(line: 164, column: 29, scope: !422)
!837 = !DILocation(line: 169, column: 5, scope: !422)
!838 = !DILocation(line: 171, column: 15, scope: !422)
!839 = !DILocation(line: 167, column: 15, scope: !422)
!840 = !DILocation(line: 172, column: 17, scope: !841)
!841 = distinct !DILexicalBlock(scope: !422, file: !1, line: 172, column: 9)
!842 = !DILocation(line: 172, column: 9, scope: !422)
!843 = !DILocation(line: 177, column: 9, scope: !422)
!844 = !{!764, !754, i64 16}
!845 = !DILocation(line: 169, column: 19, scope: !422)
!846 = !DILocation(line: 169, column: 16, scope: !422)
!847 = !DILocation(line: 178, column: 25, scope: !435)
!848 = !{!754, !754, i64 0}
!849 = !DILocation(line: 178, column: 19, scope: !435)
!850 = !DILocation(line: 178, column: 5, scope: !436)
!851 = !DILocation(line: 180, column: 36, scope: !434)
!852 = !{!757, !757, i64 0}
!853 = !DILocation(line: 179, column: 15, scope: !434)
!854 = !DILocation(line: 168, column: 15, scope: !422)
!855 = !DILocation(line: 181, column: 9, scope: !856)
!856 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!857 = !DILocation(line: 181, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !433, file: !1, line: 181, column: 9)
!859 = !DILocation(line: 181, column: 9, scope: !433)
!860 = !DILocation(line: 181, column: 9, scope: !861)
!861 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 3)
!862 = !DILocation(line: 182, column: 17, scope: !863)
!863 = distinct !DILexicalBlock(scope: !434, file: !1, line: 182, column: 13)
!864 = !DILocation(line: 182, column: 13, scope: !434)
!865 = !DILocation(line: 188, column: 14, scope: !439)
!866 = !DILocation(line: 188, column: 17, scope: !439)
!867 = !DILocation(line: 188, column: 9, scope: !422)
!868 = !DILocation(line: 189, column: 9, scope: !438)
!869 = !DILocation(line: 190, column: 16, scope: !445)
!870 = !DILocation(line: 189, column: 19, scope: !438)
!871 = !DILocation(line: 189, column: 25, scope: !438)
!872 = !DILocation(line: 190, column: 21, scope: !444)
!873 = !DILocation(line: 190, column: 9, scope: !445)
!874 = !DILocation(line: 192, column: 40, scope: !443)
!875 = !DILocation(line: 192, column: 45, scope: !443)
!876 = !DILocation(line: 191, column: 19, scope: !443)
!877 = !DILocation(line: 193, column: 13, scope: !878)
!878 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 1)
!879 = !DILocation(line: 193, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !442, file: !1, line: 193, column: 13)
!881 = !DILocation(line: 193, column: 13, scope: !442)
!882 = !DILocation(line: 193, column: 13, scope: !883)
!883 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 3)
!884 = !DILocation(line: 194, column: 21, scope: !885)
!885 = distinct !DILexicalBlock(scope: !443, file: !1, line: 194, column: 17)
!886 = !DILocation(line: 194, column: 17, scope: !443)
!887 = !DILocation(line: 190, column: 38, scope: !444)
!888 = !DILocation(line: 198, column: 5, scope: !889)
!889 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 1)
!890 = !DILocation(line: 199, column: 47, scope: !422)
!891 = !DILocation(line: 199, column: 61, scope: !422)
!892 = !DILocation(line: 200, column: 40, scope: !422)
!893 = !DILocation(line: 199, column: 14, scope: !422)
!894 = !DILocation(line: 166, column: 15, scope: !422)
!895 = !DILocation(line: 201, column: 5, scope: !896)
!896 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!897 = !DILocation(line: 201, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !447, file: !1, line: 201, column: 5)
!899 = !DILocation(line: 201, column: 5, scope: !447)
!900 = !DILocation(line: 201, column: 5, scope: !901)
!901 = !DILexicalBlockFile(scope: !898, file: !1, discriminator: 3)
!902 = !DILocation(line: 203, column: 1, scope: !422)
!903 = !DILocation(line: 88, column: 29, scope: !448)
!904 = !DILocation(line: 88, column: 44, scope: !448)
!905 = !DILocation(line: 88, column: 60, scope: !448)
!906 = !DILocation(line: 91, column: 15, scope: !448)
!907 = !DILocation(line: 91, column: 32, scope: !448)
!908 = !DILocation(line: 97, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !448, file: !1, line: 97, column: 9)
!910 = !DILocation(line: 97, column: 37, scope: !909)
!911 = !DILocation(line: 97, column: 9, scope: !448)
!912 = !DILocation(line: 99, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !1, line: 97, column: 43)
!914 = !DILocation(line: 100, column: 5, scope: !913)
!915 = !DILocation(line: 100, column: 16, scope: !916)
!916 = distinct !DILexicalBlock(scope: !909, file: !1, line: 100, column: 16)
!917 = !DILocation(line: 100, column: 39, scope: !916)
!918 = !DILocation(line: 100, column: 16, scope: !909)
!919 = !DILocation(line: 102, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !1, line: 100, column: 45)
!921 = !DILocation(line: 103, column: 5, scope: !920)
!922 = !DILocation(line: 104, column: 19, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !1, line: 103, column: 12)
!924 = !DILocation(line: 105, column: 21, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !1, line: 105, column: 13)
!926 = !DILocation(line: 105, column: 13, scope: !923)
!927 = !DILocation(line: 109, column: 14, scope: !461)
!928 = !DILocation(line: 109, column: 17, scope: !461)
!929 = !DILocation(line: 109, column: 9, scope: !448)
!930 = !DILocation(line: 111, column: 9, scope: !931)
!931 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 1)
!932 = !DILocation(line: 111, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !459, file: !1, line: 111, column: 9)
!934 = !DILocation(line: 111, column: 9, scope: !459)
!935 = !DILocation(line: 111, column: 9, scope: !936)
!936 = !DILexicalBlockFile(scope: !933, file: !1, discriminator: 2)
!937 = !DILocation(line: 113, column: 18, scope: !466)
!938 = !DILocation(line: 114, column: 20, scope: !465)
!939 = !DILocation(line: 114, column: 13, scope: !466)
!940 = !DILocation(line: 115, column: 13, scope: !941)
!941 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 1)
!942 = !DILocation(line: 115, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !463, file: !1, line: 115, column: 13)
!944 = !DILocation(line: 115, column: 13, scope: !463)
!945 = !DILocation(line: 115, column: 13, scope: !946)
!946 = !DILexicalBlockFile(scope: !943, file: !1, discriminator: 3)
!947 = !DILocation(line: 118, column: 16, scope: !472)
!948 = !DILocation(line: 118, column: 13, scope: !466)
!949 = !DILocation(line: 119, column: 17, scope: !470)
!950 = !DILocation(line: 119, column: 45, scope: !470)
!951 = !DILocation(line: 119, column: 17, scope: !471)
!952 = !DILocation(line: 120, column: 17, scope: !953)
!953 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 1)
!954 = !DILocation(line: 120, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !468, file: !1, line: 120, column: 17)
!956 = !DILocation(line: 120, column: 17, scope: !468)
!957 = !DILocation(line: 120, column: 17, scope: !958)
!958 = !DILexicalBlockFile(scope: !955, file: !1, discriminator: 3)
!959 = !DILocation(line: 121, column: 17, scope: !960)
!960 = !DILexicalBlockFile(scope: !474, file: !1, discriminator: 1)
!961 = !DILocation(line: 121, column: 17, scope: !962)
!962 = distinct !DILexicalBlock(scope: !474, file: !1, line: 121, column: 17)
!963 = !DILocation(line: 121, column: 17, scope: !474)
!964 = !DILocation(line: 121, column: 17, scope: !965)
!965 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 3)
!966 = !DILocation(line: 127, column: 30, scope: !448)
!967 = !DILocation(line: 127, column: 11, scope: !448)
!968 = !DILocation(line: 90, column: 15, scope: !448)
!969 = !DILocation(line: 128, column: 5, scope: !970)
!970 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!971 = !DILocation(line: 128, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !476, file: !1, line: 128, column: 5)
!973 = !DILocation(line: 128, column: 5, scope: !476)
!974 = !DILocation(line: 128, column: 5, scope: !975)
!975 = !DILexicalBlockFile(scope: !972, file: !1, discriminator: 3)
!976 = !DILocation(line: 129, column: 5, scope: !977)
!977 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 1)
!978 = !DILocation(line: 129, column: 5, scope: !481)
!979 = !DILocation(line: 129, column: 5, scope: !478)
!980 = !DILocation(line: 129, column: 5, scope: !981)
!981 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 4)
!982 = !DILocation(line: 129, column: 5, scope: !983)
!983 = distinct !DILexicalBlock(scope: !480, file: !1, line: 129, column: 5)
!984 = !DILocation(line: 129, column: 5, scope: !480)
!985 = !DILocation(line: 129, column: 5, scope: !986)
!986 = !DILexicalBlockFile(scope: !983, file: !1, discriminator: 6)
!987 = !DILocation(line: 131, column: 1, scope: !448)
!988 = !DILocation(line: 134, column: 33, scope: !482)
!989 = !DILocation(line: 134, column: 48, scope: !482)
!990 = !DILocation(line: 134, column: 61, scope: !482)
!991 = !DILocation(line: 136, column: 5, scope: !992)
!992 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 1)
!993 = !DILocation(line: 136, column: 5, scope: !492)
!994 = !DILocation(line: 136, column: 5, scope: !995)
!995 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 2)
!996 = !DILocation(line: 136, column: 5, scope: !997)
!997 = distinct !DILexicalBlock(scope: !490, file: !1, line: 136, column: 5)
!998 = !DILocation(line: 137, column: 5, scope: !999)
!999 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 1)
!1000 = !DILocation(line: 137, column: 5, scope: !496)
!1001 = !DILocation(line: 137, column: 5, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 2)
!1003 = !DILocation(line: 137, column: 5, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !494, file: !1, line: 137, column: 5)
!1005 = !DILocation(line: 138, column: 5, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 1)
!1007 = !DILocation(line: 138, column: 5, scope: !500)
!1008 = !DILocation(line: 138, column: 5, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !498, file: !1, discriminator: 2)
!1010 = !DILocation(line: 138, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !498, file: !1, line: 138, column: 5)
!1012 = !DILocation(line: 139, column: 5, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 1)
!1014 = !DILocation(line: 139, column: 5, scope: !504)
!1015 = !DILocation(line: 139, column: 5, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 2)
!1017 = !DILocation(line: 139, column: 5, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !502, file: !1, line: 139, column: 5)
!1019 = !DILocation(line: 140, column: 5, scope: !482)
!1020 = !DILocation(line: 141, column: 1, scope: !482)
!1021 = !DILocation(line: 26, column: 27, scope: !539)
!1022 = !DILocation(line: 26, column: 43, scope: !539)
!1023 = !DILocation(line: 26, column: 59, scope: !539)
!1024 = !DILocation(line: 31, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !539, file: !1, line: 31, column: 9)
!1026 = !DILocation(line: 31, column: 32, scope: !1025)
!1027 = !DILocation(line: 31, column: 9, scope: !539)
!1028 = !DILocation(line: 32, column: 25, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 31, column: 37)
!1030 = !DILocation(line: 32, column: 9, scope: !1029)
!1031 = !DILocation(line: 34, column: 9, scope: !1029)
!1032 = !DILocation(line: 37, column: 12, scope: !539)
!1033 = !DILocation(line: 28, column: 15, scope: !539)
!1034 = !DILocation(line: 38, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !539, file: !1, line: 38, column: 9)
!1036 = !DILocation(line: 38, column: 9, scope: !539)
!1037 = !DILocation(line: 39, column: 25, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 38, column: 34)
!1039 = !DILocation(line: 39, column: 9, scope: !1038)
!1040 = !DILocation(line: 41, column: 9, scope: !1038)
!1041 = !DILocation(line: 45, column: 34, scope: !539)
!1042 = !{!763, !757, i64 304}
!1043 = !DILocation(line: 45, column: 28, scope: !539)
!1044 = !DILocation(line: 46, column: 13, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !539, file: !1, line: 46, column: 9)
!1046 = !DILocation(line: 46, column: 9, scope: !539)
!1047 = !DILocation(line: 49, column: 10, scope: !539)
!1048 = !DILocation(line: 49, column: 13, scope: !539)
!1049 = !DILocation(line: 50, column: 5, scope: !539)
!1050 = !DILocation(line: 51, column: 17, scope: !539)
!1051 = !DILocation(line: 51, column: 10, scope: !539)
!1052 = !DILocation(line: 51, column: 15, scope: !539)
!1053 = !DILocation(line: 52, column: 19, scope: !551)
!1054 = !DILocation(line: 52, column: 9, scope: !539)
!1055 = !DILocation(line: 53, column: 14, scope: !550)
!1056 = !DILocation(line: 53, column: 17, scope: !550)
!1057 = !DILocation(line: 54, column: 9, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !549, file: !1, discriminator: 1)
!1059 = !DILocation(line: 54, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !549, file: !1, line: 54, column: 9)
!1061 = !DILocation(line: 54, column: 9, scope: !549)
!1062 = !DILocation(line: 54, column: 9, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1060, file: !1, discriminator: 3)
!1064 = !DILocation(line: 57, column: 12, scope: !557)
!1065 = !DILocation(line: 57, column: 9, scope: !539)
!1066 = !DILocation(line: 58, column: 19, scope: !556)
!1067 = !DILocation(line: 58, column: 14, scope: !556)
!1068 = !DILocation(line: 58, column: 17, scope: !556)
!1069 = !DILocation(line: 59, column: 21, scope: !555)
!1070 = !DILocation(line: 59, column: 13, scope: !556)
!1071 = !DILocation(line: 60, column: 13, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 1)
!1073 = !DILocation(line: 60, column: 13, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !553, file: !1, line: 60, column: 13)
!1075 = !DILocation(line: 60, column: 13, scope: !553)
!1076 = !DILocation(line: 60, column: 13, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1074, file: !1, discriminator: 3)
!1078 = !DILocation(line: 64, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !557, file: !1, line: 63, column: 12)
!1080 = !DILocation(line: 64, column: 17, scope: !1079)
!1081 = !DILocation(line: 65, column: 9, scope: !1079)
!1082 = !DILocation(line: 69, column: 10, scope: !539)
!1083 = !DILocation(line: 71, column: 5, scope: !539)
!1084 = !DILocation(line: 69, column: 15, scope: !539)
!1085 = !DILocation(line: 72, column: 1, scope: !539)
!1086 = !DILocation(line: 213, column: 31, scope: !505)
!1087 = !DILocation(line: 213, column: 46, scope: !505)
!1088 = !DILocation(line: 215, column: 40, scope: !505)
!1089 = !DILocation(line: 215, column: 59, scope: !505)
!1090 = !DILocation(line: 216, column: 31, scope: !505)
!1091 = !DILocation(line: 216, column: 42, scope: !505)
!1092 = !DILocation(line: 217, column: 31, scope: !505)
!1093 = !DILocation(line: 217, column: 26, scope: !505)
!1094 = !DILocation(line: 215, column: 12, scope: !505)
!1095 = !DILocation(line: 215, column: 5, scope: !505)
!1096 = !DILocation(line: 221, column: 33, scope: !511)
!1097 = !DILocation(line: 221, column: 48, scope: !511)
!1098 = !DILocation(line: 223, column: 5, scope: !511)
!1099 = !DILocation(line: 223, column: 15, scope: !511)
!1100 = !DILocation(line: 223, column: 20, scope: !511)
!1101 = !DILocation(line: 223, column: 29, scope: !511)
!1102 = !DILocation(line: 223, column: 34, scope: !511)
!1103 = !DILocation(line: 224, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !511, file: !1, line: 224, column: 9)
!1105 = !DILocation(line: 224, column: 9, scope: !511)
!1106 = !DILocation(line: 227, column: 5, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 1)
!1108 = !DILocation(line: 227, column: 5, scope: !523)
!1109 = !DILocation(line: 227, column: 5, scope: !520)
!1110 = !DILocation(line: 227, column: 5, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 4)
!1112 = !DILocation(line: 227, column: 5, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !522, file: !1, line: 227, column: 5)
!1114 = !DILocation(line: 227, column: 5, scope: !522)
!1115 = !DILocation(line: 227, column: 5, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1113, file: !1, discriminator: 6)
!1117 = !DILocation(line: 228, column: 5, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 1)
!1119 = !DILocation(line: 228, column: 5, scope: !528)
!1120 = !DILocation(line: 228, column: 5, scope: !525)
!1121 = !DILocation(line: 228, column: 5, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !527, file: !1, discriminator: 4)
!1123 = !DILocation(line: 228, column: 5, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !527, file: !1, line: 228, column: 5)
!1125 = !DILocation(line: 228, column: 5, scope: !527)
!1126 = !DILocation(line: 228, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1124, file: !1, discriminator: 6)
!1128 = !DILocation(line: 229, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 1)
!1130 = !DILocation(line: 229, column: 5, scope: !533)
!1131 = !DILocation(line: 229, column: 5, scope: !530)
!1132 = !DILocation(line: 229, column: 5, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !532, file: !1, discriminator: 4)
!1134 = !DILocation(line: 229, column: 5, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !532, file: !1, line: 229, column: 5)
!1136 = !DILocation(line: 229, column: 5, scope: !532)
!1137 = !DILocation(line: 229, column: 5, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1135, file: !1, discriminator: 6)
!1139 = !DILocation(line: 230, column: 5, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!1141 = !DILocation(line: 230, column: 5, scope: !538)
!1142 = !DILocation(line: 230, column: 5, scope: !535)
!1143 = !DILocation(line: 230, column: 5, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 4)
!1145 = !DILocation(line: 230, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !537, file: !1, line: 230, column: 5)
!1147 = !DILocation(line: 230, column: 5, scope: !537)
!1148 = !DILocation(line: 230, column: 5, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1146, file: !1, discriminator: 6)
!1150 = !DILocation(line: 231, column: 15, scope: !511)
!1151 = !DILocation(line: 231, column: 13, scope: !511)
!1152 = !DILocation(line: 232, column: 17, scope: !511)
!1153 = !DILocation(line: 232, column: 15, scope: !511)
!1154 = !DILocation(line: 233, column: 15, scope: !511)
!1155 = !DILocation(line: 233, column: 13, scope: !511)
!1156 = !DILocation(line: 236, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 234, column: 26)
!1158 = distinct !DILexicalBlock(scope: !511, file: !1, line: 234, column: 9)
!1159 = !DILocation(line: 234, column: 14, scope: !1158)
!1160 = !DILocation(line: 240, column: 5, scope: !511)
!1161 = !DILocation(line: 241, column: 5, scope: !511)
!1162 = !DILocation(line: 242, column: 5, scope: !511)
!1163 = !DILocation(line: 234, column: 9, scope: !511)
!1164 = !DILocation(line: 235, column: 17, scope: !1157)
!1165 = !DILocation(line: 237, column: 5, scope: !1157)
!1166 = !DILocation(line: 238, column: 17, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 237, column: 12)
!1168 = !DILocation(line: 243, column: 5, scope: !511)
!1169 = !DILocation(line: 244, column: 1, scope: !511)
!1170 = !DILocation(line: 470, column: 28, scope: !558)
!1171 = !DILocation(line: 470, column: 44, scope: !558)
!1172 = !DILocation(line: 472, column: 5, scope: !558)
!1173 = !DILocation(line: 472, column: 28, scope: !558)
!1174 = !DILocation(line: 472, column: 15, scope: !558)
!1175 = !DILocation(line: 472, column: 21, scope: !558)
!1176 = !DILocation(line: 474, column: 10, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !558, file: !1, line: 474, column: 9)
!1178 = !DILocation(line: 474, column: 9, scope: !558)
!1179 = !DILocation(line: 476, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !558, file: !1, line: 476, column: 9)
!1181 = !DILocation(line: 476, column: 16, scope: !1180)
!1182 = !DILocation(line: 476, column: 9, scope: !558)
!1183 = !DILocation(line: 477, column: 9, scope: !1180)
!1184 = !DILocation(line: 479, column: 27, scope: !558)
!1185 = !DILocation(line: 479, column: 10, scope: !558)
!1186 = !DILocation(line: 472, column: 44, scope: !558)
!1187 = !DILocation(line: 480, column: 12, scope: !569)
!1188 = !DILocation(line: 480, column: 9, scope: !558)
!1189 = !DILocation(line: 481, column: 36, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !568, file: !1, line: 481, column: 13)
!1191 = !DILocation(line: 481, column: 13, scope: !1190)
!1192 = !DILocation(line: 481, column: 13, scope: !568)
!1193 = !DILocation(line: 482, column: 29, scope: !1190)
!1194 = !DILocation(line: 482, column: 13, scope: !1190)
!1195 = !DILocation(line: 484, column: 9, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!1197 = !DILocation(line: 484, column: 9, scope: !572)
!1198 = !DILocation(line: 484, column: 9, scope: !567)
!1199 = !DILocation(line: 484, column: 9, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 4)
!1201 = !DILocation(line: 484, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !571, file: !1, line: 484, column: 9)
!1203 = !DILocation(line: 484, column: 9, scope: !571)
!1204 = !DILocation(line: 484, column: 9, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 6)
!1206 = !DILocation(line: 488, column: 17, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !558, file: !1, line: 488, column: 9)
!1208 = !DILocation(line: 488, column: 33, scope: !1207)
!1209 = !DILocation(line: 488, column: 9, scope: !558)
!1210 = !DILocation(line: 494, column: 19, scope: !580)
!1211 = !DILocation(line: 494, column: 29, scope: !580)
!1212 = !DILocation(line: 494, column: 13, scope: !574)
!1213 = !DILocation(line: 495, column: 13, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 1)
!1215 = !DILocation(line: 495, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !578, file: !1, line: 495, column: 13)
!1217 = !DILocation(line: 495, column: 13, scope: !578)
!1218 = !DILocation(line: 495, column: 13, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1216, file: !1, discriminator: 3)
!1220 = !DILocation(line: 496, column: 25, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !579, file: !1, line: 496, column: 17)
!1222 = !DILocation(line: 496, column: 41, scope: !1221)
!1223 = !DILocation(line: 496, column: 17, scope: !579)
!1224 = !DILocation(line: 500, column: 15, scope: !574)
!1225 = !DILocation(line: 492, column: 19, scope: !574)
!1226 = !DILocation(line: 501, column: 17, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !574, file: !1, line: 501, column: 13)
!1228 = !DILocation(line: 501, column: 13, scope: !574)
!1229 = !DILocation(line: 507, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !574, file: !1, line: 507, column: 13)
!1231 = !DILocation(line: 507, column: 20, scope: !1230)
!1232 = !DILocation(line: 507, column: 13, scope: !574)
!1233 = !DILocation(line: 508, column: 20, scope: !1230)
!1234 = !DILocation(line: 508, column: 13, scope: !1230)
!1235 = !DILocation(line: 510, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 509, column: 14)
!1237 = !DILocation(line: 511, column: 13, scope: !1236)
!1238 = !DILocation(line: 512, column: 27, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 512, column: 17)
!1240 = !DILocation(line: 512, column: 25, scope: !1239)
!1241 = !DILocation(line: 512, column: 58, scope: !1239)
!1242 = !DILocation(line: 512, column: 17, scope: !1236)
!1243 = !DILocation(line: 502, column: 17, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 502, column: 17)
!1245 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 501, column: 26)
!1246 = !DILocation(line: 517, column: 5, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1248 = !DILocation(line: 517, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !582, file: !1, line: 517, column: 5)
!1250 = !DILocation(line: 517, column: 5, scope: !582)
!1251 = !DILocation(line: 517, column: 5, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1249, file: !1, discriminator: 3)
!1253 = !DILocation(line: 519, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !558, file: !1, line: 519, column: 9)
!1255 = !DILocation(line: 519, column: 16, scope: !1254)
!1256 = !DILocation(line: 519, column: 9, scope: !558)
!1257 = !DILocation(line: 520, column: 25, scope: !1254)
!1258 = !DILocation(line: 520, column: 9, scope: !1254)
!1259 = !DILocation(line: 523, column: 5, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 1)
!1261 = !DILocation(line: 523, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !584, file: !1, line: 523, column: 5)
!1263 = !DILocation(line: 523, column: 5, scope: !584)
!1264 = !DILocation(line: 523, column: 5, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1262, file: !1, discriminator: 3)
!1266 = !DILocation(line: 524, column: 12, scope: !558)
!1267 = !DILocation(line: 524, column: 5, scope: !558)
!1268 = !DILocation(line: 527, column: 5, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!1270 = !DILocation(line: 527, column: 5, scope: !589)
!1271 = !DILocation(line: 527, column: 5, scope: !586)
!1272 = !DILocation(line: 527, column: 5, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 4)
!1274 = !DILocation(line: 527, column: 5, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !588, file: !1, line: 527, column: 5)
!1276 = !DILocation(line: 527, column: 5, scope: !588)
!1277 = !DILocation(line: 527, column: 5, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1275, file: !1, discriminator: 6)
!1279 = !DILocation(line: 528, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!1281 = !DILocation(line: 528, column: 5, scope: !594)
!1282 = !DILocation(line: 528, column: 5, scope: !591)
!1283 = !DILocation(line: 528, column: 5, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 4)
!1285 = !DILocation(line: 528, column: 5, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !593, file: !1, line: 528, column: 5)
!1287 = !DILocation(line: 528, column: 5, scope: !593)
!1288 = !DILocation(line: 528, column: 5, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1286, file: !1, discriminator: 6)
!1290 = !DILocation(line: 529, column: 5, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!1292 = !DILocation(line: 529, column: 5, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !596, file: !1, line: 529, column: 5)
!1294 = !DILocation(line: 529, column: 5, scope: !596)
!1295 = !DILocation(line: 529, column: 5, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1293, file: !1, discriminator: 3)
!1297 = !DILocation(line: 531, column: 1, scope: !558)
!1298 = !DILocation(line: 447, column: 32, scope: !597)
!1299 = !DILocation(line: 447, column: 48, scope: !597)
!1300 = !DILocation(line: 447, column: 64, scope: !597)
!1301 = !DILocation(line: 449, column: 5, scope: !597)
!1302 = !DILocation(line: 449, column: 15, scope: !597)
!1303 = !DILocation(line: 453, column: 10, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !597, file: !1, line: 453, column: 9)
!1305 = !DILocation(line: 453, column: 9, scope: !597)
!1306 = !DILocation(line: 455, column: 14, scope: !597)
!1307 = !DILocation(line: 456, column: 10, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !597, file: !1, line: 456, column: 9)
!1309 = !DILocation(line: 456, column: 9, scope: !597)
!1310 = !DILocation(line: 458, column: 5, scope: !597)
!1311 = !DILocation(line: 459, column: 19, scope: !597)
!1312 = !DILocation(line: 459, column: 17, scope: !597)
!1313 = !{!1314, !757, i64 16}
!1314 = !{!"", !753, i64 0, !757, i64 16, !757, i64 24}
!1315 = !DILocation(line: 460, column: 13, scope: !597)
!1316 = !DILocation(line: 460, column: 20, scope: !597)
!1317 = !{!1314, !757, i64 24}
!1318 = !DILocation(line: 461, column: 5, scope: !597)
!1319 = !DILocation(line: 462, column: 1, scope: !597)
!1320 = !DILocation(line: 306, column: 30, scope: !604)
!1321 = !DILocation(line: 308, column: 5, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 1)
!1323 = !DILocation(line: 308, column: 5, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !610, file: !1, line: 308, column: 5)
!1325 = !DILocation(line: 308, column: 5, scope: !610)
!1326 = !DILocation(line: 308, column: 5, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1324, file: !1, discriminator: 3)
!1328 = !DILocation(line: 309, column: 5, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!1330 = !DILocation(line: 309, column: 5, scope: !615)
!1331 = !DILocation(line: 309, column: 5, scope: !612)
!1332 = !DILocation(line: 309, column: 5, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 4)
!1334 = !DILocation(line: 309, column: 5, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !614, file: !1, line: 309, column: 5)
!1336 = !DILocation(line: 309, column: 5, scope: !614)
!1337 = !DILocation(line: 309, column: 5, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1335, file: !1, discriminator: 6)
!1339 = !DILocation(line: 310, column: 19, scope: !604)
!1340 = !DILocation(line: 310, column: 5, scope: !604)
!1341 = !DILocation(line: 311, column: 1, scope: !604)
!1342 = !DILocation(line: 379, column: 27, scope: !616)
!1343 = !DILocation(line: 379, column: 41, scope: !616)
!1344 = !DILocation(line: 379, column: 57, scope: !616)
!1345 = !DILocation(line: 381, column: 5, scope: !616)
!1346 = !DILocation(line: 381, column: 15, scope: !616)
!1347 = !DILocation(line: 385, column: 10, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !616, file: !1, line: 385, column: 9)
!1349 = !DILocation(line: 385, column: 9, scope: !616)
!1350 = !DILocation(line: 387, column: 14, scope: !616)
!1351 = !DILocation(line: 388, column: 10, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !616, file: !1, line: 388, column: 9)
!1353 = !DILocation(line: 388, column: 9, scope: !616)
!1354 = !DILocation(line: 390, column: 5, scope: !616)
!1355 = !DILocation(line: 391, column: 23, scope: !616)
!1356 = !DILocation(line: 391, column: 17, scope: !616)
!1357 = !DILocation(line: 392, column: 5, scope: !616)
!1358 = !DILocation(line: 393, column: 22, scope: !616)
!1359 = !DILocation(line: 393, column: 13, scope: !616)
!1360 = !DILocation(line: 393, column: 20, scope: !616)
!1361 = !DILocation(line: 394, column: 5, scope: !616)
!1362 = !DILocation(line: 395, column: 1, scope: !616)
!1363 = !DILocation(line: 314, column: 31, scope: !625)
!1364 = !DILocation(line: 314, column: 45, scope: !625)
!1365 = !DILocation(line: 314, column: 58, scope: !625)
!1366 = !DILocation(line: 316, column: 5, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !634, file: !1, discriminator: 1)
!1368 = !DILocation(line: 316, column: 5, scope: !635)
!1369 = !DILocation(line: 316, column: 5, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !633, file: !1, discriminator: 2)
!1371 = !DILocation(line: 316, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !633, file: !1, line: 316, column: 5)
!1373 = !DILocation(line: 317, column: 13, scope: !640)
!1374 = !DILocation(line: 317, column: 9, scope: !640)
!1375 = !DILocation(line: 317, column: 9, scope: !625)
!1376 = !DILocation(line: 318, column: 9, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 2)
!1378 = !DILocation(line: 318, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !637, file: !1, line: 318, column: 9)
!1380 = !DILocation(line: 319, column: 5, scope: !625)
!1381 = !DILocation(line: 320, column: 1, scope: !625)
!1382 = !DILocation(line: 323, column: 28, scope: !641)
!1383 = !DILocation(line: 325, column: 5, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 1)
!1385 = !DILocation(line: 325, column: 5, scope: !651)
!1386 = !DILocation(line: 325, column: 5, scope: !647)
!1387 = !DILocation(line: 325, column: 5, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 2)
!1389 = !DILocation(line: 325, column: 5, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 4)
!1391 = !DILocation(line: 325, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !649, file: !1, line: 325, column: 5)
!1393 = !DILocation(line: 325, column: 5, scope: !649)
!1394 = !DILocation(line: 325, column: 5, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1392, file: !1, discriminator: 6)
!1396 = !DILocation(line: 326, column: 13, scope: !654)
!1397 = !DILocation(line: 326, column: 9, scope: !654)
!1398 = !DILocation(line: 326, column: 9, scope: !641)
!1399 = !DILocation(line: 327, column: 9, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 1)
!1401 = !DILocation(line: 327, column: 9, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 2)
!1403 = !DILocation(line: 327, column: 9, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !656, file: !1, discriminator: 4)
!1405 = !DILocation(line: 327, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !656, file: !1, line: 327, column: 9)
!1407 = !DILocation(line: 327, column: 9, scope: !656)
!1408 = !DILocation(line: 327, column: 9, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1406, file: !1, discriminator: 6)
!1410 = !DILocation(line: 328, column: 5, scope: !641)
!1411 = !DILocation(line: 398, column: 33, scope: !659)
!1412 = !DILocation(line: 398, column: 47, scope: !659)
!1413 = !DILocation(line: 398, column: 58, scope: !659)
!1414 = !DILocation(line: 408, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !659, file: !1, line: 408, column: 9)
!1416 = !DILocation(line: 408, column: 14, scope: !1415)
!1417 = !DILocation(line: 408, column: 9, scope: !659)
!1418 = !DILocation(line: 409, column: 16, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 408, column: 23)
!1420 = !DILocation(line: 409, column: 14, scope: !1419)
!1421 = !DILocation(line: 410, column: 14, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 410, column: 13)
!1423 = !DILocation(line: 410, column: 13, scope: !1419)
!1424 = !DILocation(line: 414, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !659, file: !1, line: 414, column: 9)
!1426 = !DILocation(line: 414, column: 24, scope: !1425)
!1427 = !DILocation(line: 414, column: 9, scope: !659)
!1428 = !DILocation(line: 415, column: 22, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 414, column: 43)
!1430 = !DILocation(line: 415, column: 9, scope: !1429)
!1431 = !DILocation(line: 416, column: 9, scope: !1429)
!1432 = !DILocation(line: 418, column: 35, scope: !659)
!1433 = !DILocation(line: 404, column: 15, scope: !659)
!1434 = !DILocation(line: 420, column: 29, scope: !659)
!1435 = !DILocation(line: 402, column: 15, scope: !659)
!1436 = !DILocation(line: 421, column: 32, scope: !659)
!1437 = !DILocation(line: 403, column: 15, scope: !659)
!1438 = !DILocation(line: 422, column: 10, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !659, file: !1, line: 422, column: 9)
!1440 = !DILocation(line: 422, column: 16, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1439, file: !1, discriminator: 1)
!1442 = !DILocation(line: 422, column: 12, scope: !1439)
!1443 = !DILocation(line: 423, column: 22, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 422, column: 18)
!1445 = !DILocation(line: 423, column: 9, scope: !1444)
!1446 = !DILocation(line: 424, column: 9, scope: !1444)
!1447 = !DILocation(line: 430, column: 12, scope: !659)
!1448 = !DILocation(line: 401, column: 15, scope: !659)
!1449 = !DILocation(line: 431, column: 14, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !659, file: !1, line: 431, column: 9)
!1451 = !DILocation(line: 431, column: 9, scope: !659)
!1452 = !DILocation(line: 433, column: 5, scope: !659)
!1453 = !DILocation(line: 434, column: 5, scope: !659)
!1454 = !DILocation(line: 435, column: 5, scope: !659)
!1455 = !DILocation(line: 436, column: 5, scope: !659)
!1456 = !DILocation(line: 437, column: 11, scope: !659)
!1457 = !DILocation(line: 400, column: 15, scope: !659)
!1458 = !DILocation(line: 438, column: 5, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!1460 = !DILocation(line: 438, column: 5, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !671, file: !1, line: 438, column: 5)
!1462 = !DILocation(line: 438, column: 5, scope: !671)
!1463 = !DILocation(line: 438, column: 5, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1461, file: !1, discriminator: 3)
!1465 = !DILocation(line: 439, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !659, file: !1, line: 439, column: 9)
!1467 = !DILocation(line: 439, column: 9, scope: !659)
!1468 = !DILocation(line: 441, column: 40, scope: !659)
!1469 = !DILocation(line: 441, column: 14, scope: !659)
!1470 = !DILocation(line: 405, column: 15, scope: !659)
!1471 = !DILocation(line: 442, column: 5, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 1)
!1473 = !DILocation(line: 442, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !673, file: !1, line: 442, column: 5)
!1475 = !DILocation(line: 442, column: 5, scope: !673)
!1476 = !DILocation(line: 442, column: 5, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1474, file: !1, discriminator: 3)
!1478 = !DILocation(line: 444, column: 1, scope: !659)
