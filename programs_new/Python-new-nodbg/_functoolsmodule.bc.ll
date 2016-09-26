; ModuleID = './_functoolsmodule.bc'
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
@PyInit__functools.typelist = private unnamed_addr constant [2 x %struct._typeobject*] [%struct._typeobject* @partial_type, %struct._typeobject* null], align 16
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
@keyobject_richcompare.zero = internal global %struct._object* null, align 8
@.str.28 = private unnamed_addr constant [34 x i8] c"other argument must be K instance\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Value wrapped by a key function.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__functools() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %typelist = alloca [2 x %struct._typeobject*], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast [2 x %struct._typeobject*]* %typelist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x %struct._typeobject*]* @PyInit__functools.typelist to i8*), i64 16, i32 16, i1 false)
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_functoolsmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [2 x %struct._typeobject*], [2 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom
  %3 = load %struct._typeobject*, %struct._typeobject** %arrayidx, align 8
  %cmp1 = icmp ne %struct._typeobject* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr [2 x %struct._typeobject*], [2 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom2
  %5 = load %struct._typeobject*, %struct._typeobject** %arrayidx3, align 8
  %call4 = call i32 @PyType_Ready(%struct._typeobject* %5)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %6 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr [2 x %struct._typeobject*], [2 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom11
  %14 = load %struct._typeobject*, %struct._typeobject** %arrayidx12, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %tp_name, align 8
  %call13 = call i8* @strchr(i8* %15, i32 46) #4
  store i8* %call13, i8** %name, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr [2 x %struct._typeobject*], [2 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom14
  %17 = load %struct._typeobject*, %struct._typeobject** %arrayidx15, align 8
  %18 = bitcast %struct._typeobject* %17 to %struct._object*
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %20 = load %struct._object*, %struct._object** %m, align 8
  %21 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 1
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr [2 x %struct._typeobject*], [2 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom17
  %23 = load %struct._typeobject*, %struct._typeobject** %arrayidx18, align 8
  %24 = bitcast %struct._typeobject* %23 to %struct._object*
  %call19 = call i32 @PyModule_AddObject(%struct._object* %20, i8* %add.ptr, %struct._object* %24)
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %25 = load i32, i32* %i, align 4
  %inc20 = add i32 %25, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyType_Ready(%struct._typeobject*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal void @partial_dealloc(%struct.partialobject* %pto) #0 {
entry:
  %pto.addr = alloca %struct.partialobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_xdecref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct.partialobject* %pto, %struct.partialobject** %pto.addr, align 8
  %0 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %1 = bitcast %struct.partialobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %weakreflist = getelementptr inbounds %struct.partialobject, %struct.partialobject* %2, i32 0, i32 5
  %3 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %5 = bitcast %struct.partialobject* %4 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %fn, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6

if.else:                                          ; preds = %do.body.3
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %16 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %16, i32 0, i32 2
  %17 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp10, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp10, align 8
  %cmp11 = icmp ne %struct._object* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.body.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp10, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp14, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %21, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %24(%struct._object* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.9
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %26 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %26, i32 0, i32 3
  %27 = load %struct._object*, %struct._object** %kw, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp27, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8
  %cmp28 = icmp ne %struct._object* %28, null
  br i1 %cmp28, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp31, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %31, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %34(%struct._object* %35)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.26
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %36 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %36, i32 0, i32 4
  %37 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp44, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %38, null
  br i1 %cmp45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %do.body.43
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp48, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %41, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %44(%struct._object* %45)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %do.end.57, %do.body.43
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %46 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %47 = bitcast %struct.partialobject* %46 to %struct._object*
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 38
  %49 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %50 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %51 = bitcast %struct.partialobject* %50 to i8*
  call void %49(i8* %51)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_repr(%struct.partialobject* %pto) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pto.addr = alloca %struct.partialobject*, align 8
  %result = alloca %struct._object*, align 8
  %arglist = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct.partialobject* %pto, %struct.partialobject** %pto.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %arglist, align 8
  %0 = load %struct._object*, %struct._object** %arglist, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %args, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %n, align 8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._object*, %struct._object** %arglist, align 8
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args4 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %args4, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %8
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call5 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* %7, %struct._object* %12)
  store %struct._object* %call5, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %13 = load %struct._object*, %struct._object** %arglist, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %20 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp10 = icmp eq %struct._object* %20, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %21, %struct._object** %arglist, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %23, i32 0, i32 3
  %24 = load %struct._object*, %struct._object** %kw, align 8
  %cmp13 = icmp ne %struct._object* %24, @_Py_NoneStruct
  br i1 %cmp13, label %if.then.14, label %if.end.38

if.then.14:                                       ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %if.end.36, %if.then.14
  %25 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw18 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %25, i32 0, i32 3
  %26 = load %struct._object*, %struct._object** %kw18, align 8
  %call19 = call i32 @PyDict_Next(%struct._object* %26, i64* %i, %struct._object** %key, %struct._object** %value)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %for.body.20, label %for.end.37

for.body.20:                                      ; preds = %for.cond.17
  %27 = load %struct._object*, %struct._object** %arglist, align 8
  %28 = load %struct._object*, %struct._object** %key, align 8
  %29 = load %struct._object*, %struct._object** %value, align 8
  %call21 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct._object* %27, %struct._object* %28, %struct._object* %29)
  store %struct._object* %call21, %struct._object** %tmp, align 8
  br label %do.body.22

do.body.22:                                       ; preds = %for.body.20
  %30 = load %struct._object*, %struct._object** %arglist, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp24, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %32, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.22
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.22
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %35(%struct._object* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %37 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp34 = icmp eq %struct._object* %37, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %do.end.33
  %38 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %38, %struct._object** %arglist, align 8
  br label %for.cond.17

for.end.37:                                       ; preds = %for.cond.17
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %for.end
  %39 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %40 = bitcast %struct.partialobject* %39 to %struct._object*
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 1
  %42 = load i8*, i8** %tp_name, align 8
  %43 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %43, i32 0, i32 1
  %44 = load %struct._object*, %struct._object** %fn, align 8
  %45 = load %struct._object*, %struct._object** %arglist, align 8
  %call40 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %42, %struct._object* %44, %struct._object* %45)
  store %struct._object* %call40, %struct._object** %result, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.38
  %46 = load %struct._object*, %struct._object** %arglist, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp43, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %48, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.41
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %51(%struct._object* %52)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %53 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.52, %if.then.35, %if.then.11, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_call(%struct.partialobject* %pto, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pto.addr = alloca %struct.partialobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %argappl = alloca %struct._object*, align 8
  %kwappl = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store %struct.partialobject* %pto, %struct.partialobject** %pto.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %argappl, align 8
  store %struct._object* null, %struct._object** %kwappl, align 8
  %0 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args1 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args1, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %4, %struct._object** %argappl, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size2, align 8
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.else.9

if.then.4:                                        ; preds = %if.else
  %10 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args5 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %args5, align 8
  store %struct._object* %11, %struct._object** %argappl, align 8
  %12 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args6 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %args6, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt7, align 8
  %inc8 = add i64 %14, 1
  store i64 %inc8, i64* %ob_refcnt7, align 8
  br label %if.end.13

if.else.9:                                        ; preds = %if.else
  %15 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args10 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %15, i32 0, i32 2
  %16 = load %struct._object*, %struct._object** %args10, align 8
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PySequence_Concat(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call, %struct._object** %argappl, align 8
  %18 = load %struct._object*, %struct._object** %argappl, align 8
  %cmp11 = icmp eq %struct._object* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  %19 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw15 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %19, i32 0, i32 3
  %20 = load %struct._object*, %struct._object** %kw15, align 8
  %cmp16 = icmp eq %struct._object* %20, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %kw.addr, align 8
  store %struct._object* %21, %struct._object** %kwappl, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %22 = load %struct._object*, %struct._object** %kw.addr, align 8
  store %struct._object* %22, %struct._object** %_py_xincref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt20, align 8
  %inc21 = add i64 %25, 1
  store i64 %inc21, i64* %ob_refcnt20, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.65

if.else.23:                                       ; preds = %if.end.14
  %26 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw24 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %26, i32 0, i32 3
  %27 = load %struct._object*, %struct._object** %kw24, align 8
  %call25 = call %struct._object* @PyDict_Copy(%struct._object* %27)
  store %struct._object* %call25, %struct._object** %kwappl, align 8
  %28 = load %struct._object*, %struct._object** %kwappl, align 8
  %cmp26 = icmp eq %struct._object* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.else.23
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %argappl, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.28
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.28
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.else.23
  %36 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp36 = icmp ne %struct._object* %36, null
  br i1 %cmp36, label %if.then.37, label %if.end.64

if.then.37:                                       ; preds = %if.end.35
  %37 = load %struct._object*, %struct._object** %kwappl, align 8
  %38 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call38 = call i32 @PyDict_Merge(%struct._object* %37, %struct._object* %38, i32 1)
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.63

if.then.40:                                       ; preds = %if.then.37
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %39 = load %struct._object*, %struct._object** %argappl, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp42, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %41, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %44(%struct._object* %45)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %46 = load %struct._object*, %struct._object** %kwappl, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp53, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %48, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %51(%struct._object* %52)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %if.then.37
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.35
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %do.end
  %53 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %53, i32 0, i32 1
  %54 = load %struct._object*, %struct._object** %fn, align 8
  %55 = load %struct._object*, %struct._object** %argappl, align 8
  %56 = load %struct._object*, %struct._object** %kwappl, align 8
  %call66 = call %struct._object* @PyObject_Call(%struct._object* %54, %struct._object* %55, %struct._object* %56)
  store %struct._object* %call66, %struct._object** %ret, align 8
  br label %do.body.67

do.body.67:                                       ; preds = %if.end.65
  %57 = load %struct._object*, %struct._object** %argappl, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp68, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %59, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.67
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %62(%struct._object* %63)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.77
  %64 = load %struct._object*, %struct._object** %kwappl, align 8
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp79 = icmp ne %struct._object* %65, null
  br i1 %cmp79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %do.body.78
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp82, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %68, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %71(%struct._object* %72)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.91, %do.body.78
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  %73 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %73, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.93, %do.end.62, %do.end.34, %if.then.12
  %74 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %74
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @partial_traverse(%struct.partialobject* %pto, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %pto.addr = alloca %struct.partialobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  store %struct.partialobject* %pto, %struct.partialobject** %pto.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %fn, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn1 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %fn1, align 8
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
  %8 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %args, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args9 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %args9, align 8
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
  %16 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %kw, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw20 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %19, i32 0, i32 3
  %20 = load %struct._object*, %struct._object** %kw20, align 8
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
  %24 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %24, i32 0, i32 4
  %25 = load %struct._object*, %struct._object** %dict, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict31 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %27, i32 0, i32 4
  %28 = load %struct._object*, %struct._object** %dict31, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.37, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %pto = alloca %struct.partialobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %6, %struct._object** %func, align 8
  %7 = load %struct._object*, %struct._object** %func, align 8
  %call = call i32 @PyCallable_Check(%struct._object* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %9 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 36
  %10 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %11 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call3 = call %struct._object* %10(%struct._typeobject* %11, i64 0)
  %12 = bitcast %struct._object* %call3 to %struct.partialobject*
  store %struct.partialobject* %12, %struct.partialobject** %pto, align 8
  %13 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %cmp4 = icmp eq %struct.partialobject* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %14 = load %struct._object*, %struct._object** %func, align 8
  %15 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %15, i32 0, i32 1
  store %struct._object* %14, %struct._object** %fn, align 8
  %16 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %18 = load %struct._object*, %struct._object** %args.addr, align 8
  %call7 = call %struct._object* @PyTuple_GetSlice(%struct._object* %18, i64 1, i64 9223372036854775807)
  %19 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %args8 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %19, i32 0, i32 2
  store %struct._object* %call7, %struct._object** %args8, align 8
  %20 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %args9 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %20, i32 0, i32 2
  %21 = load %struct._object*, %struct._object** %args9, align 8
  %cmp10 = icmp eq %struct._object* %21, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.6
  %22 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %kw12 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %22, i32 0, i32 3
  store %struct._object* null, %struct._object** %kw12, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %23 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %24 = bitcast %struct.partialobject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.6
  %31 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp18 = icmp ne %struct._object* %31, null
  br i1 %cmp18, label %if.then.19, label %if.else.37

if.then.19:                                       ; preds = %if.end.17
  %32 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call20 = call %struct._object* @PyDict_Copy(%struct._object* %32)
  %33 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %kw21 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %33, i32 0, i32 3
  store %struct._object* %call20, %struct._object** %kw21, align 8
  %34 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %kw22 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %34, i32 0, i32 3
  %35 = load %struct._object*, %struct._object** %kw22, align 8
  %cmp23 = icmp eq %struct._object* %35, null
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.then.19
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %36 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %37 = bitcast %struct.partialobject* %36 to %struct._object*
  store %struct._object* %37, %struct._object** %_py_decref_tmp26, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %39, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %42(%struct._object* %43)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.then.19
  br label %if.end.40

if.else.37:                                       ; preds = %if.end.17
  %44 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %kw38 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %44, i32 0, i32 3
  store %struct._object* @_Py_NoneStruct, %struct._object** %kw38, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc39 = add i64 %45, 1
  store i64 %inc39, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.end.36
  %46 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %weakreflist = getelementptr inbounds %struct.partialobject, %struct.partialobject* %46, i32 0, i32 5
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %47 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %47, i32 0, i32 4
  store %struct._object* null, %struct._object** %dict, align 8
  %48 = load %struct.partialobject*, %struct.partialobject** %pto, align 8
  %49 = bitcast %struct.partialobject* %48 to %struct._object*
  store %struct._object* %49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.40, %do.end.35, %do.end, %if.then.5, %if.then.1, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

declare void @PyObject_GC_Del(i8*) #2

declare void @PyObject_GC_UnTrack(i8*) #2

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #2

declare %struct._object* @PySequence_Concat(%struct._object*, %struct._object*) #2

declare %struct._object* @PyDict_Copy(%struct._object*) #2

declare i32 @PyDict_Merge(%struct._object*, %struct._object*, i32) #2

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_reduce(%struct.partialobject* %pto, %struct._object* %unused) #0 {
entry:
  %pto.addr = alloca %struct.partialobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.partialobject* %pto, %struct.partialobject** %pto.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %1 = bitcast %struct.partialobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn = getelementptr inbounds %struct.partialobject, %struct.partialobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %fn, align 8
  %5 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn1 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %fn1, align 8
  %7 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %args, align 8
  %9 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw = getelementptr inbounds %struct.partialobject, %struct.partialobject* %9, i32 0, i32 3
  %10 = load %struct._object*, %struct._object** %kw, align 8
  %11 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict = getelementptr inbounds %struct.partialobject, %struct.partialobject* %11, i32 0, i32 4
  %12 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %12, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict2 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %13, i32 0, i32 4
  %14 = load %struct._object*, %struct._object** %dict2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %14, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, %struct._object* %8, %struct._object* %10, %struct._object* %cond)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @partial_setstate(%struct.partialobject* %pto, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pto.addr = alloca %struct.partialobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %fn = alloca %struct._object*, align 8
  %fnargs = alloca %struct._object*, align 8
  %kw = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_xdecref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct.partialobject* %pto, %struct.partialobject** %pto.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object** %fn, %struct._object** %fnargs, %struct._object** %kw, %struct._object** %dict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn1 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %fn1, align 8
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6

if.else:                                          ; preds = %do.body.3
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %11 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args = getelementptr inbounds %struct.partialobject, %struct.partialobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp10, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp10, align 8
  %cmp11 = icmp ne %struct._object* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.body.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp10, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp14, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %16, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %19(%struct._object* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.9
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %21 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw28 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %21, i32 0, i32 3
  %22 = load %struct._object*, %struct._object** %kw28, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp27, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8
  %cmp29 = icmp ne %struct._object* %23, null
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %do.body.26
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp32, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %26, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %29(%struct._object* %30)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %31 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict46 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %31, i32 0, i32 4
  %32 = load %struct._object*, %struct._object** %dict46, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp45, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  %cmp47 = icmp ne %struct._object* %33, null
  br i1 %cmp47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %do.body.44
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp50, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %36, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %39(%struct._object* %40)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.44
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %41 = load %struct._object*, %struct._object** %fn, align 8
  %42 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %fn62 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %42, i32 0, i32 1
  store %struct._object* %41, %struct._object** %fn62, align 8
  %43 = load %struct._object*, %struct._object** %fnargs, align 8
  %44 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %args63 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %44, i32 0, i32 2
  store %struct._object* %43, %struct._object** %args63, align 8
  %45 = load %struct._object*, %struct._object** %kw, align 8
  %46 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %kw64 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %46, i32 0, i32 3
  store %struct._object* %45, %struct._object** %kw64, align 8
  %47 = load %struct._object*, %struct._object** %dict, align 8
  %cmp65 = icmp ne %struct._object* %47, @_Py_NoneStruct
  br i1 %cmp65, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %do.end.61
  %48 = load %struct._object*, %struct._object** %dict, align 8
  %49 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict67 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %49, i32 0, i32 4
  store %struct._object* %48, %struct._object** %dict67, align 8
  %50 = load %struct._object*, %struct._object** %dict, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt68, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %ob_refcnt68, align 8
  br label %if.end.71

if.else.69:                                       ; preds = %do.end.61
  %52 = load %struct.partialobject*, %struct.partialobject** %pto.addr, align 8
  %dict70 = getelementptr inbounds %struct.partialobject, %struct.partialobject* %52, i32 0, i32 4
  store %struct._object* null, %struct._object** %dict70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.66
  %53 = load %struct._object*, %struct._object** %fn, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt72, align 8
  %inc73 = add i64 %54, 1
  store i64 %inc73, i64* %ob_refcnt72, align 8
  %55 = load %struct._object*, %struct._object** %fnargs, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt74, align 8
  %inc75 = add i64 %56, 1
  store i64 %inc75, i64* %ob_refcnt74, align 8
  %57 = load %struct._object*, %struct._object** %kw, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt76, align 8
  %inc77 = add i64 %58, 1
  store i64 %inc77, i64* %ob_refcnt76, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc78 = add i64 %59, 1
  store i64 %inc78, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #2

declare i32 @PyObject_GenericSetDict(%struct._object*, %struct._object*, i8*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i32 @PyCallable_Check(%struct._object*) #2

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @functools_reduce(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %op2 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_xdecref_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %_py_xdecref_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i64 2, i64 3, %struct._object** %func, %struct._object** %seq, %struct._object** %result)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %4 = load %struct._object*, %struct._object** %seq, align 8
  %call3 = call %struct._object* @PyObject_GetIter(%struct._object* %4)
  store %struct._object* %call3, %struct._object** %it, align 8
  %5 = load %struct._object*, %struct._object** %it, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %6)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.16

if.else:                                          ; preds = %do.body.12
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.2
  %call20 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call20, %struct._object** %args.addr, align 8
  %cmp21 = icmp eq %struct._object* %call20, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  br label %Fail

if.end.23:                                        ; preds = %if.end.19
  br label %for.cond

for.cond:                                         ; preds = %if.end.60, %if.end.23
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt24, align 8
  %cmp25 = icmp sgt i64 %18, 1
  br i1 %cmp25, label %if.then.26, label %if.end.42

if.then.26:                                       ; preds = %for.cond
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %19 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp28, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %21, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %24(%struct._object* %25)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %call38 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call38, %struct._object** %args.addr, align 8
  %cmp39 = icmp eq %struct._object* %call38, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %do.end.37
  br label %Fail

if.end.41:                                        ; preds = %do.end.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.cond
  %26 = load %struct._object*, %struct._object** %it, align 8
  %call43 = call %struct._object* @PyIter_Next(%struct._object* %26)
  store %struct._object* %call43, %struct._object** %op2, align 8
  %27 = load %struct._object*, %struct._object** %op2, align 8
  %cmp44 = icmp eq %struct._object* %27, null
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %call46 = call %struct._object* @PyErr_Occurred()
  %tobool47 = icmp ne %struct._object* %call46, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  br label %Fail

if.end.49:                                        ; preds = %if.then.45
  br label %for.end

if.end.50:                                        ; preds = %if.end.42
  %28 = load %struct._object*, %struct._object** %result, align 8
  %cmp51 = icmp eq %struct._object* %28, null
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.50
  %29 = load %struct._object*, %struct._object** %op2, align 8
  store %struct._object* %29, %struct._object** %result, align 8
  br label %if.end.60

if.else.53:                                       ; preds = %if.end.50
  %30 = load %struct._object*, %struct._object** %args.addr, align 8
  %31 = load %struct._object*, %struct._object** %result, align 8
  %call54 = call i32 @PyTuple_SetItem(%struct._object* %30, i64 0, %struct._object* %31)
  %32 = load %struct._object*, %struct._object** %args.addr, align 8
  %33 = load %struct._object*, %struct._object** %op2, align 8
  %call55 = call i32 @PyTuple_SetItem(%struct._object* %32, i64 1, %struct._object* %33)
  %34 = load %struct._object*, %struct._object** %func, align 8
  %35 = load %struct._object*, %struct._object** %args.addr, align 8
  %call56 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %34, %struct._object* %35, %struct._object* null)
  store %struct._object* %call56, %struct._object** %result, align 8
  %cmp57 = icmp eq %struct._object* %call56, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.53
  br label %Fail

if.end.59:                                        ; preds = %if.else.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.52
  br label %for.cond

for.end:                                          ; preds = %if.end.49
  br label %do.body.61

do.body.61:                                       ; preds = %for.end
  %36 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp62, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %38, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %41(%struct._object* %42)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  %43 = load %struct._object*, %struct._object** %result, align 8
  %cmp72 = icmp eq %struct._object* %43, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.end.71
  %44 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %do.end.71
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.74
  %45 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp76, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %47, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %50(%struct._object* %51)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  %52 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.58, %if.then.48, %if.then.40, %if.then.22
  br label %do.body.86

do.body.86:                                       ; preds = %Fail
  %53 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp87, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp87, align 8
  %cmp88 = icmp ne %struct._object* %54, null
  br i1 %cmp88, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %do.body.86
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp87, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp91, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %57, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %60(%struct._object* %61)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %do.body.86
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %62 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp104, align 8
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp104, align 8
  %cmp105 = icmp ne %struct._object* %63, null
  br i1 %cmp105, label %if.then.106, label %if.end.118

if.then.106:                                      ; preds = %do.body.103
  br label %do.body.107

do.body.107:                                      ; preds = %if.then.106
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp104, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp108, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt109, align 8
  %dec110 = add i64 %66, -1
  store i64 %dec110, i64* %ob_refcnt109, align 8
  %cmp111 = icmp ne i64 %dec110, 0
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.107
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  call void %69(%struct._object* %70)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.body.103
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.119
  %71 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp121, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %73, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.120
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.120
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %76(%struct._object* %77)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.130, %do.end.85, %do.end.18, %if.then
  %78 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %78
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @functools_cmp_to_key(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %cmp = alloca %struct._object*, align 8
  %object = alloca %struct.keyobject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @functools_cmp_to_key.kwargs, i32 0, i32 0), %struct._object** %cmp)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* @keyobject_type)
  %2 = bitcast %struct._object* %call1 to %struct.keyobject*
  store %struct.keyobject* %2, %struct.keyobject** %object, align 8
  %3 = load %struct.keyobject*, %struct.keyobject** %object, align 8
  %tobool2 = icmp ne %struct.keyobject* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %cmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %cmp, align 8
  %7 = load %struct.keyobject*, %struct.keyobject** %object, align 8
  %cmp5 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %cmp5, align 8
  %8 = load %struct.keyobject*, %struct.keyobject** %object, align 8
  %object6 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %8, i32 0, i32 2
  store %struct._object* null, %struct._object** %object6, align 8
  %9 = load %struct.keyobject*, %struct.keyobject** %object, align 8
  %10 = bitcast %struct.keyobject* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare %struct._object* @PyObject_GetIter(%struct._object*) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare %struct._object* @PyIter_Next(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #2

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

declare %struct._object* @_PyObject_New(%struct._typeobject*) #2

; Function Attrs: nounwind uwtable
define internal void @keyobject_dealloc(%struct.keyobject* %ko) #0 {
entry:
  %ko.addr = alloca %struct.keyobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp6 = alloca %struct._object*, align 8
  store %struct.keyobject* %ko, %struct.keyobject** %ko.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %cmp, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %8 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %9, %struct._object** %_py_xdecref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp3 = icmp ne %struct._object* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %do.body.2
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp6, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp6, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt7, align 8
  %dec8 = add i64 %13, -1
  store i64 %dec8, i64* %ob_refcnt7, align 8
  %cmp9 = icmp ne i64 %dec8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.5
  br label %if.end.14

if.else.11:                                       ; preds = %do.body.5
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp6, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc13, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp6, align 8
  call void %16(%struct._object* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %do.body.2
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %18 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %19 = bitcast %struct.keyobject* %18 to i8*
  call void @PyObject_Free(i8* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @keyobject_call(%struct.keyobject* %ko, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ko.addr = alloca %struct.keyobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %result = alloca %struct.keyobject*, align 8
  store %struct.keyobject* %ko, %struct.keyobject** %ko.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @keyobject_call.kwargs, i32 0, i32 0), %struct._object** %object)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* @keyobject_type)
  %2 = bitcast %struct._object* %call1 to %struct.keyobject*
  store %struct.keyobject* %2, %struct.keyobject** %result, align 8
  %3 = load %struct.keyobject*, %struct.keyobject** %result, align 8
  %tobool2 = icmp ne %struct.keyobject* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %cmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp5 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %cmp5, align 8
  %9 = load %struct.keyobject*, %struct.keyobject** %result, align 8
  %cmp6 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %9, i32 0, i32 1
  store %struct._object* %8, %struct._object** %cmp6, align 8
  %10 = load %struct._object*, %struct._object** %object, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt7, align 8
  %inc8 = add i64 %11, 1
  store i64 %inc8, i64* %ob_refcnt7, align 8
  %12 = load %struct._object*, %struct._object** %object, align 8
  %13 = load %struct.keyobject*, %struct.keyobject** %result, align 8
  %object9 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %13, i32 0, i32 2
  store %struct._object* %12, %struct._object** %object9, align 8
  %14 = load %struct.keyobject*, %struct.keyobject** %result, align 8
  %15 = bitcast %struct.keyobject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @keyobject_traverse(%struct.keyobject* %ko, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ko.addr = alloca %struct.keyobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret11 = alloca i32, align 4
  store %struct.keyobject* %ko, %struct.keyobject** %ko.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %cmp, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp1 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %cmp1, align 8
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
  %8 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %object, align 8
  %tobool5 = icmp ne %struct._object* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %do.end
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %10 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object8 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %object8, align 8
  %tobool9 = icmp ne %struct._object* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %do.body.7
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object12 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %object12, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call13 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call13, i32* %vret11, align 4
  %16 = load i32, i32* %vret11, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  %17 = load i32, i32* %vret11, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %do.body.7
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.15, %if.then.3
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @keyobject_clear(%struct.keyobject* %ko) #0 {
entry:
  %ko.addr = alloca %struct.keyobject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.keyobject* %ko, %struct.keyobject** %ko.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp = getelementptr inbounds %struct.keyobject, %struct.keyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %cmp, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %2, null
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %3 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %cmp2 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %cmp2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %11 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %object, align 8
  %tobool = icmp ne %struct._object* %12, null
  br i1 %tobool, label %if.then.8, label %if.end.28

if.then.8:                                        ; preds = %do.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %13 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object11 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %object11, align 8
  store %struct._object* %14, %struct._object** %_py_tmp10, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp10, align 8
  %cmp12 = icmp ne %struct._object* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %do.body.9
  %16 = load %struct.keyobject*, %struct.keyobject** %ko.addr, align 8
  %object14 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %16, i32 0, i32 2
  store %struct._object* null, %struct._object** %object14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %17 = load %struct._object*, %struct._object** %_py_tmp10, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp16, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %19, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %22(%struct._object* %23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.9
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %do.end.7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @keyobject_richcompare(%struct._object* %ko, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ko.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %y = alloca %struct._object*, align 8
  %compare = alloca %struct._object*, align 8
  %answer = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct._object* %ko, %struct._object** %ko.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** @keyobject_richcompare.zero, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** @keyobject_richcompare.zero, align 8
  %1 = load %struct._object*, %struct._object** @keyobject_richcompare.zero, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp ne %struct._typeobject* %3, @keyobject_type
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct._object*, %struct._object** %ko.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.keyobject*
  %cmp7 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %cmp7, align 8
  store %struct._object* %7, %struct._object** %compare, align 8
  %8 = load %struct._object*, %struct._object** %ko.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.keyobject*
  %object = getelementptr inbounds %struct.keyobject, %struct.keyobject* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %10, %struct._object** %x, align 8
  %11 = load %struct._object*, %struct._object** %other.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.keyobject*
  %object8 = getelementptr inbounds %struct.keyobject, %struct.keyobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %object8, align 8
  store %struct._object* %13, %struct._object** %y, align 8
  %14 = load %struct._object*, %struct._object** %x, align 8
  %tobool9 = icmp ne %struct._object* %14, null
  br i1 %tobool9, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y, align 8
  %tobool10 = icmp ne %struct._object* %15, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.6
  %16 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %call14 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call14, %struct._object** %args, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %cmp15 = icmp eq %struct._object* %17, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %18 = load %struct._object*, %struct._object** %x, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load %struct._object*, %struct._object** %y, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %21, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %22 = load %struct._object*, %struct._object** %x, align 8
  %23 = load %struct._object*, %struct._object** %args, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %22, %struct._object** %arrayidx, align 8
  %25 = load %struct._object*, %struct._object** %y, align 8
  %26 = load %struct._object*, %struct._object** %args, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 1
  store %struct._object* %25, %struct._object** %arrayidx21, align 8
  %28 = load %struct._object*, %struct._object** %compare, align 8
  %29 = load %struct._object*, %struct._object** %args, align 8
  %call22 = call %struct._object* @PyObject_Call(%struct._object* %28, %struct._object* %29, %struct._object* null)
  store %struct._object* %call22, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %30 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt23, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt23, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %37 = load %struct._object*, %struct._object** %res, align 8
  %cmp28 = icmp eq %struct._object* %37, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %do.end
  %38 = load %struct._object*, %struct._object** %res, align 8
  %39 = load %struct._object*, %struct._object** @keyobject_richcompare.zero, align 8
  %40 = load i32, i32* %op.addr, align 4
  %call31 = call %struct._object* @PyObject_RichCompare(%struct._object* %38, %struct._object* %39, i32 %40)
  store %struct._object* %call31, %struct._object** %answer, align 8
  br label %do.body.32

do.body.32:                                       ; preds = %if.end.30
  %41 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp33, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %43, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %46(%struct._object* %47)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %48 = load %struct._object*, %struct._object** %answer, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.42, %if.then.29, %if.then.16, %if.then.11, %if.then.4, %if.then.1
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

declare void @PyObject_Free(i8*) #2

declare %struct._object* @PyLong_FromLong(i64) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
