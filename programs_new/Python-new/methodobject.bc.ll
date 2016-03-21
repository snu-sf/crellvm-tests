; ModuleID = 'irs-onlybc/methodobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyCFunctionObject = type { %struct._object, %struct.PyMethodDef*, %struct._object*, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@free_list = internal global %struct.PyCFunctionObject* null, align 8
@PyCFunction_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.PyCFunctionObject*)* @meth_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyCFunctionObject*)* @meth_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.PyCFunctionObject*)* @meth_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyCFunction_Call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyCFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @meth_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @meth_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @meth_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @meth_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([6 x %struct.PyGetSetDef], [6 x %struct.PyGetSetDef]* @meth_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@numfree = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Objects/methodobject.c\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"%.200s() takes no arguments (%zd given)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%.200s() takes exactly one argument (%zd given)\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [73 x i8] c"Bad call flags in PyCFunction_Call. METH_OLDARGS is no longer supported!\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%.200s() takes no keyword arguments\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"builtin_function_or_method\00", align 1
@meth_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCFunctionObject*)* @meth_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@meth_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 32, i32 4, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@meth_getsets = internal global [6 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__doc__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__name__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__qualname__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__self__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__text_signature__ to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [23 x i8] c"free PyCFunctionObject\00", align 1
@PyModule_Type = external global %struct._typeobject, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"<built-in function %s>\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"<built-in method %s of %s object at %p>\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@meth_reduce.PyId_getattr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct._object* null }, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"O(Os)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"__module__\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"__qualname__\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"__self__\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"__text_signature__\00", align 1
@meth_get__qualname__.PyId___qualname__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* null }, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"<method>.__class__.__qualname__ is not a unicode object\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%S.%s\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_New(%struct.PyMethodDef* %ml, %struct._object* %self) #0 {
entry:
  %ml.addr = alloca %struct.PyMethodDef*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct.PyMethodDef* %ml, %struct.PyMethodDef** %ml.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyMethodDef** %ml.addr, metadata !390, metadata !568), !dbg !569
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !391, metadata !568), !dbg !570
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml.addr, align 8, !dbg !571, !tbaa !564
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !572, !tbaa !564
  %call = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %0, %struct._object* %1, %struct._object* null), !dbg !573
  ret %struct._object* %call, !dbg !574
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %ml, %struct._object* %self, %struct._object* %module) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ml.addr = alloca %struct.PyMethodDef*, align 8
  %self.addr = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %op = alloca %struct.PyCFunctionObject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp10 = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyMethodDef* %ml, %struct.PyMethodDef** %ml.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyMethodDef** %ml.addr, metadata !396, metadata !568), !dbg !575
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !397, metadata !568), !dbg !576
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !398, metadata !568), !dbg !577
  %0 = bitcast %struct.PyCFunctionObject** %op to i8*, !dbg !578
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !578
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %op, metadata !399, metadata !568), !dbg !579
  %1 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !580, !tbaa !564
  store %struct.PyCFunctionObject* %1, %struct.PyCFunctionObject** %op, align 8, !dbg !581, !tbaa !564
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !582, !tbaa !564
  %cmp = icmp ne %struct.PyCFunctionObject* %2, null, !dbg !584
  br i1 %cmp, label %if.then, label %if.else, !dbg !585

if.then:                                          ; preds = %entry
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !586, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 2, !dbg !588
  %4 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !588, !tbaa !589
  %5 = bitcast %struct._object* %4 to %struct.PyCFunctionObject*, !dbg !593
  store %struct.PyCFunctionObject* %5, %struct.PyCFunctionObject** @free_list, align 8, !dbg !594, !tbaa !564
  %6 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !595, !tbaa !564
  %7 = bitcast %struct.PyCFunctionObject* %6 to %struct._object*, !dbg !596
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !597
  store %struct._typeobject* @PyCFunction_Type, %struct._typeobject** %ob_type, align 8, !dbg !598, !tbaa !599
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !600, !tbaa !564
  %9 = bitcast %struct.PyCFunctionObject* %8 to %struct._object*, !dbg !601
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !602
  store i64 1, i64* %ob_refcnt, align 8, !dbg !603, !tbaa !604
  %10 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !605, !tbaa !564
  %11 = load i32, i32* @numfree, align 4, !dbg !606, !tbaa !607
  %dec = add i32 %11, -1, !dbg !606
  store i32 %dec, i32* @numfree, align 4, !dbg !606, !tbaa !607
  br label %if.end.3, !dbg !609

if.else:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyCFunction_Type), !dbg !610
  %12 = bitcast %struct._object* %call to %struct.PyCFunctionObject*, !dbg !612
  store %struct.PyCFunctionObject* %12, %struct.PyCFunctionObject** %op, align 8, !dbg !613, !tbaa !564
  %13 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !614, !tbaa !564
  %cmp1 = icmp eq %struct.PyCFunctionObject* %13, null, !dbg !616
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !617

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !618
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !618

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %14 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml.addr, align 8, !dbg !619, !tbaa !564
  %15 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !620, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %15, i32 0, i32 1, !dbg !621
  store %struct.PyMethodDef* %14, %struct.PyMethodDef** %m_ml, align 8, !dbg !622, !tbaa !623
  br label %do.body, !dbg !624

do.body:                                          ; preds = %if.end.3
  %16 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !625
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !625
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !400, metadata !568), !dbg !627
  %17 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !628, !tbaa !564
  store %struct._object* %17, %struct._object** %_py_xincref_tmp, align 8, !dbg !627, !tbaa !564
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !629, !tbaa !564
  %cmp4 = icmp ne %struct._object* %18, null, !dbg !631
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !632

if.then.5:                                        ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !633, !tbaa !564
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !635
  %20 = load i64, i64* %ob_refcnt6, align 8, !dbg !636, !tbaa !604
  %inc = add i64 %20, 1, !dbg !636
  store i64 %inc, i64* %ob_refcnt6, align 8, !dbg !636, !tbaa !604
  br label %if.end.7, !dbg !637

if.end.7:                                         ; preds = %if.then.5, %do.body
  %21 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !638
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !638
  br label %do.cond, !dbg !641

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !642

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !644, !tbaa !564
  %23 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !645, !tbaa !564
  %m_self8 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %23, i32 0, i32 2, !dbg !646
  store %struct._object* %22, %struct._object** %m_self8, align 8, !dbg !647, !tbaa !589
  br label %do.body.9, !dbg !648

do.body.9:                                        ; preds = %do.end
  %24 = bitcast %struct._object** %_py_xincref_tmp10 to i8*, !dbg !649
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !649
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp10, metadata !402, metadata !568), !dbg !651
  %25 = load %struct._object*, %struct._object** %module.addr, align 8, !dbg !652, !tbaa !564
  store %struct._object* %25, %struct._object** %_py_xincref_tmp10, align 8, !dbg !651, !tbaa !564
  %26 = load %struct._object*, %struct._object** %_py_xincref_tmp10, align 8, !dbg !653, !tbaa !564
  %cmp11 = icmp ne %struct._object* %26, null, !dbg !655
  br i1 %cmp11, label %if.then.12, label %if.end.15, !dbg !656

if.then.12:                                       ; preds = %do.body.9
  %27 = load %struct._object*, %struct._object** %_py_xincref_tmp10, align 8, !dbg !657, !tbaa !564
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !659
  %28 = load i64, i64* %ob_refcnt13, align 8, !dbg !660, !tbaa !604
  %inc14 = add i64 %28, 1, !dbg !660
  store i64 %inc14, i64* %ob_refcnt13, align 8, !dbg !660, !tbaa !604
  br label %if.end.15, !dbg !661

if.end.15:                                        ; preds = %if.then.12, %do.body.9
  %29 = bitcast %struct._object** %_py_xincref_tmp10 to i8*, !dbg !662
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !662
  br label %do.cond.16, !dbg !663

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17, !dbg !664

do.end.17:                                        ; preds = %do.cond.16
  %30 = load %struct._object*, %struct._object** %module.addr, align 8, !dbg !666, !tbaa !564
  %31 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !667, !tbaa !564
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %31, i32 0, i32 3, !dbg !668
  store %struct._object* %30, %struct._object** %m_module, align 8, !dbg !669, !tbaa !670
  br label %do.body.18, !dbg !671

do.body.18:                                       ; preds = %do.end.17
  %32 = bitcast %union._gc_head** %g to i8*, !dbg !672
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !672
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !404, metadata !568), !dbg !674
  %33 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !675, !tbaa !564
  %34 = bitcast %struct.PyCFunctionObject* %33 to %union._gc_head*, !dbg !676
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %34, i64 -1, !dbg !677
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !674, !tbaa !564
  %35 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !678, !tbaa !564
  %gc = bitcast %union._gc_head* %35 to %struct.anon*, !dbg !680
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !681
  %36 = load i64, i64* %gc_refs, align 8, !dbg !681, !tbaa !682
  %shr = ashr i64 %36, 1, !dbg !684
  %cmp19 = icmp ne i64 %shr, -2, !dbg !685
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !686

if.then.20:                                       ; preds = %do.body.18
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #5, !dbg !687
  unreachable, !dbg !687

if.end.21:                                        ; preds = %do.body.18
  br label %do.body.22, !dbg !689

do.body.22:                                       ; preds = %if.end.21
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !691, !tbaa !564
  %gc23 = bitcast %union._gc_head* %37 to %struct.anon*, !dbg !694
  %gc_refs24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 2, !dbg !695
  %38 = load i64, i64* %gc_refs24, align 8, !dbg !695, !tbaa !682
  %and = and i64 %38, 1, !dbg !696
  %or = or i64 %and, -6, !dbg !697
  %39 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !698, !tbaa !564
  %gc25 = bitcast %union._gc_head* %39 to %struct.anon*, !dbg !699
  %gc_refs26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 2, !dbg !700
  store i64 %or, i64* %gc_refs26, align 8, !dbg !701, !tbaa !682
  br label %do.cond.27, !dbg !702

do.cond.27:                                       ; preds = %do.body.22
  br label %do.end.28, !dbg !703

do.end.28:                                        ; preds = %do.cond.27
  %40 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !705, !tbaa !564
  %41 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !707, !tbaa !564
  %gc29 = bitcast %union._gc_head* %41 to %struct.anon*, !dbg !708
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc29, i32 0, i32 0, !dbg !709
  store %union._gc_head* %40, %union._gc_head** %gc_next, align 8, !dbg !710, !tbaa !711
  %42 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !712, !tbaa !564
  %gc30 = bitcast %union._gc_head* %42 to %struct.anon*, !dbg !713
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc30, i32 0, i32 1, !dbg !714
  %43 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !714, !tbaa !715
  %44 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !716, !tbaa !564
  %gc31 = bitcast %union._gc_head* %44 to %struct.anon*, !dbg !717
  %gc_prev32 = getelementptr inbounds %struct.anon, %struct.anon* %gc31, i32 0, i32 1, !dbg !718
  store %union._gc_head* %43, %union._gc_head** %gc_prev32, align 8, !dbg !719, !tbaa !715
  %45 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !720, !tbaa !564
  %46 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !721, !tbaa !564
  %gc33 = bitcast %union._gc_head* %46 to %struct.anon*, !dbg !722
  %gc_prev34 = getelementptr inbounds %struct.anon, %struct.anon* %gc33, i32 0, i32 1, !dbg !723
  %47 = load %union._gc_head*, %union._gc_head** %gc_prev34, align 8, !dbg !723, !tbaa !715
  %gc35 = bitcast %union._gc_head* %47 to %struct.anon*, !dbg !724
  %gc_next36 = getelementptr inbounds %struct.anon, %struct.anon* %gc35, i32 0, i32 0, !dbg !725
  store %union._gc_head* %45, %union._gc_head** %gc_next36, align 8, !dbg !726, !tbaa !711
  %48 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !727, !tbaa !564
  %49 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !728, !tbaa !564
  %gc37 = bitcast %union._gc_head* %49 to %struct.anon*, !dbg !729
  %gc_prev38 = getelementptr inbounds %struct.anon, %struct.anon* %gc37, i32 0, i32 1, !dbg !730
  store %union._gc_head* %48, %union._gc_head** %gc_prev38, align 8, !dbg !731, !tbaa !715
  %50 = bitcast %union._gc_head** %g to i8*, !dbg !732
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !732
  br label %do.cond.39, !dbg !733

do.cond.39:                                       ; preds = %do.end.28
  br label %do.end.40, !dbg !734

do.end.40:                                        ; preds = %do.cond.39
  %51 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8, !dbg !736, !tbaa !564
  %52 = bitcast %struct.PyCFunctionObject* %51 to %struct._object*, !dbg !737
  store %struct._object* %52, %struct._object** %retval, !dbg !738
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !738

cleanup:                                          ; preds = %do.end.40, %if.then.2
  %53 = bitcast %struct.PyCFunctionObject** %op to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !739
  %54 = load %struct._object*, %struct._object** %retval, !dbg !739
  ret %struct._object* %54, !dbg !739
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* (%struct._object*, %struct._object*)* @PyCFunction_GetFunction(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !410, metadata !568), !dbg !740
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !741, !tbaa !564
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !743
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !743, !tbaa !599
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type, !dbg !744
  br i1 %cmp, label %if.end, label %if.then, !dbg !745

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 53), !dbg !746
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %retval, !dbg !748
  br label %return, !dbg !748

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !749, !tbaa !564
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*, !dbg !750
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1, !dbg !751
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !751, !tbaa !623
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 1, !dbg !752
  %5 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !752, !tbaa !753
  store %struct._object* (%struct._object*, %struct._object*)* %5, %struct._object* (%struct._object*, %struct._object*)** %retval, !dbg !755
  br label %return, !dbg !755

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %retval, !dbg !756
  ret %struct._object* (%struct._object*, %struct._object*)* %6, !dbg !756
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_GetSelf(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !413, metadata !568), !dbg !757
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !758, !tbaa !564
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !760
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !760, !tbaa !599
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type, !dbg !761
  br i1 %cmp, label %if.end, label %if.then, !dbg !762

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 63), !dbg !763
  store %struct._object* null, %struct._object** %retval, !dbg !765
  br label %return, !dbg !765

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !766, !tbaa !564
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*, !dbg !767
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1, !dbg !768
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !768, !tbaa !623
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 2, !dbg !769
  %5 = load i32, i32* %ml_flags, align 4, !dbg !769, !tbaa !770
  %and = and i32 %5, 32, !dbg !771
  %tobool = icmp ne i32 %and, 0, !dbg !771
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !772

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !773

cond.false:                                       ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !775, !tbaa !564
  %7 = bitcast %struct._object* %6 to %struct.PyCFunctionObject*, !dbg !777
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %7, i32 0, i32 2, !dbg !778
  %8 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !778, !tbaa !589
  br label %cond.end, !dbg !772

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %8, %cond.false ], !dbg !772
  store %struct._object* %cond, %struct._object** %retval, !dbg !779
  br label %return, !dbg !779

return:                                           ; preds = %cond.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval, !dbg !782
  ret %struct._object* %9, !dbg !782
}

; Function Attrs: nounwind uwtable
define i32 @PyCFunction_GetFlags(%struct._object* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !416, metadata !568), !dbg !783
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !784, !tbaa !564
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !786
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !786, !tbaa !599
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type, !dbg !787
  br i1 %cmp, label %if.end, label %if.then, !dbg !788

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 73), !dbg !789
  store i32 -1, i32* %retval, !dbg !791
  br label %return, !dbg !791

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !792, !tbaa !564
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*, !dbg !793
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1, !dbg !794
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !794, !tbaa !623
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 2, !dbg !795
  %5 = load i32, i32* %ml_flags, align 4, !dbg !795, !tbaa !770
  store i32 %5, i32* %retval, !dbg !796
  br label %return, !dbg !796

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, !dbg !797
  ret i32 %6, !dbg !797
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_Call(%struct._object* %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %f = alloca %struct.PyCFunctionObject*, align 8
  %meth = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  %self = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !419, metadata !568), !dbg !798
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !420, metadata !568), !dbg !799
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !421, metadata !568), !dbg !800
  %0 = bitcast %struct.PyCFunctionObject** %f to i8*, !dbg !801
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !801
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %f, metadata !422, metadata !568), !dbg !802
  %1 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !803, !tbaa !564
  %2 = bitcast %struct._object* %1 to %struct.PyCFunctionObject*, !dbg !804
  store %struct.PyCFunctionObject* %2, %struct.PyCFunctionObject** %f, align 8, !dbg !802, !tbaa !564
  %3 = bitcast %struct._object* (%struct._object*, %struct._object*)** %meth to i8*, !dbg !805
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !805
  call void @llvm.dbg.declare(metadata %struct._object* (%struct._object*, %struct._object*)** %meth, metadata !423, metadata !568), !dbg !806
  %4 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !807, !tbaa !564
  %5 = bitcast %struct._object* %4 to %struct.PyCFunctionObject*, !dbg !808
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 1, !dbg !809
  %6 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !809, !tbaa !623
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %6, i32 0, i32 1, !dbg !810
  %7 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !810, !tbaa !753
  store %struct._object* (%struct._object*, %struct._object*)* %7, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8, !dbg !806, !tbaa !564
  %8 = bitcast %struct._object** %self to i8*, !dbg !811
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !811
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !424, metadata !568), !dbg !812
  %9 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !813, !tbaa !564
  %10 = bitcast %struct._object* %9 to %struct.PyCFunctionObject*, !dbg !814
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %10, i32 0, i32 1, !dbg !815
  %11 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml1, align 8, !dbg !815, !tbaa !623
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %11, i32 0, i32 2, !dbg !816
  %12 = load i32, i32* %ml_flags, align 4, !dbg !816, !tbaa !770
  %and = and i32 %12, 32, !dbg !817
  %tobool = icmp ne i32 %and, 0, !dbg !817
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !818

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !819

cond.false:                                       ; preds = %entry
  %13 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !821, !tbaa !564
  %14 = bitcast %struct._object* %13 to %struct.PyCFunctionObject*, !dbg !823
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 2, !dbg !824
  %15 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !824, !tbaa !589
  br label %cond.end, !dbg !818

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %15, %cond.false ], !dbg !818
  store %struct._object* %cond, %struct._object** %self, align 8, !dbg !825, !tbaa !564
  %16 = bitcast %struct._object** %res to i8*, !dbg !828
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !828
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !425, metadata !568), !dbg !829
  %17 = bitcast i64* %size to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !830
  call void @llvm.dbg.declare(metadata i64* %size, metadata !426, metadata !568), !dbg !831
  %18 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !832, !tbaa !564
  %19 = bitcast %struct._object* %18 to %struct.PyCFunctionObject*, !dbg !833
  %m_ml2 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %19, i32 0, i32 1, !dbg !834
  %20 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml2, align 8, !dbg !834, !tbaa !623
  %ml_flags3 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %20, i32 0, i32 2, !dbg !835
  %21 = load i32, i32* %ml_flags3, align 4, !dbg !835, !tbaa !770
  %and4 = and i32 %21, -113, !dbg !836
  switch i32 %and4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 8, label %sw.bb.22
  ], !dbg !837

sw.bb:                                            ; preds = %cond.end
  %22 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !838, !tbaa !564
  %cmp = icmp eq %struct._object* %22, null, !dbg !841
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !842

lor.lhs.false:                                    ; preds = %sw.bb
  %23 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !843, !tbaa !564
  %call = call i64 @PyDict_Size(%struct._object* %23), !dbg !845
  %cmp5 = icmp eq i64 %call, 0, !dbg !846
  br i1 %cmp5, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %24 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8, !dbg !848, !tbaa !564
  %25 = load %struct._object*, %struct._object** %self, align 8, !dbg !850, !tbaa !564
  %26 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !851, !tbaa !564
  %call6 = call %struct._object* %24(%struct._object* %25, %struct._object* %26), !dbg !852
  store %struct._object* %call6, %struct._object** %res, align 8, !dbg !853, !tbaa !564
  %27 = load %struct._object*, %struct._object** %res, align 8, !dbg !854, !tbaa !564
  store %struct._object* %27, %struct._object** %retval, !dbg !855
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !855

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog, !dbg !856

sw.bb.7:                                          ; preds = %cond.end
  %28 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8, !dbg !857, !tbaa !564
  %29 = bitcast %struct._object* (%struct._object*, %struct._object*)* %28 to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, !dbg !858
  %30 = load %struct._object*, %struct._object** %self, align 8, !dbg !859, !tbaa !564
  %31 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !860, !tbaa !564
  %32 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !861, !tbaa !564
  %call8 = call %struct._object* %29(%struct._object* %30, %struct._object* %31, %struct._object* %32), !dbg !862
  store %struct._object* %call8, %struct._object** %res, align 8, !dbg !863, !tbaa !564
  %33 = load %struct._object*, %struct._object** %res, align 8, !dbg !864, !tbaa !564
  store %struct._object* %33, %struct._object** %retval, !dbg !865
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !865

sw.bb.9:                                          ; preds = %cond.end
  %34 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !866, !tbaa !564
  %cmp10 = icmp eq %struct._object* %34, null, !dbg !868
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11, !dbg !869

lor.lhs.false.11:                                 ; preds = %sw.bb.9
  %35 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !870, !tbaa !564
  %call12 = call i64 @PyDict_Size(%struct._object* %35), !dbg !872
  %cmp13 = icmp eq i64 %call12, 0, !dbg !873
  br i1 %cmp13, label %if.then.14, label %if.end.21, !dbg !874

if.then.14:                                       ; preds = %lor.lhs.false.11, %sw.bb.9
  %36 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !875, !tbaa !564
  %37 = bitcast %struct._object* %36 to %struct.PyVarObject*, !dbg !877
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1, !dbg !878
  %38 = load i64, i64* %ob_size, align 8, !dbg !878, !tbaa !879
  store i64 %38, i64* %size, align 8, !dbg !881, !tbaa !882
  %39 = load i64, i64* %size, align 8, !dbg !883, !tbaa !882
  %cmp15 = icmp eq i64 %39, 0, !dbg !885
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !886

if.then.16:                                       ; preds = %if.then.14
  %40 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8, !dbg !887, !tbaa !564
  %41 = load %struct._object*, %struct._object** %self, align 8, !dbg !889, !tbaa !564
  %call17 = call %struct._object* %40(%struct._object* %41, %struct._object* null), !dbg !890
  store %struct._object* %call17, %struct._object** %res, align 8, !dbg !891, !tbaa !564
  %42 = load %struct._object*, %struct._object** %res, align 8, !dbg !892, !tbaa !564
  store %struct._object* %42, %struct._object** %retval, !dbg !893
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !893

if.end.18:                                        ; preds = %if.then.14
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !894, !tbaa !564
  %44 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %f, align 8, !dbg !895, !tbaa !564
  %m_ml19 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %44, i32 0, i32 1, !dbg !896
  %45 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml19, align 8, !dbg !896, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %45, i32 0, i32 0, !dbg !897
  %46 = load i8*, i8** %ml_name, align 8, !dbg !897, !tbaa !898
  %47 = load i64, i64* %size, align 8, !dbg !899, !tbaa !882
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* %46, i64 %47), !dbg !900
  store %struct._object* null, %struct._object** %retval, !dbg !901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !901

if.end.21:                                        ; preds = %lor.lhs.false.11
  br label %sw.epilog, !dbg !902

sw.bb.22:                                         ; preds = %cond.end
  %48 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !903, !tbaa !564
  %cmp23 = icmp eq %struct._object* %48, null, !dbg !905
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24, !dbg !906

lor.lhs.false.24:                                 ; preds = %sw.bb.22
  %49 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !907, !tbaa !564
  %call25 = call i64 @PyDict_Size(%struct._object* %49), !dbg !909
  %cmp26 = icmp eq i64 %call25, 0, !dbg !910
  br i1 %cmp26, label %if.then.27, label %if.end.36, !dbg !911

if.then.27:                                       ; preds = %lor.lhs.false.24, %sw.bb.22
  %50 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !912, !tbaa !564
  %51 = bitcast %struct._object* %50 to %struct.PyVarObject*, !dbg !914
  %ob_size28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1, !dbg !915
  %52 = load i64, i64* %ob_size28, align 8, !dbg !915, !tbaa !879
  store i64 %52, i64* %size, align 8, !dbg !916, !tbaa !882
  %53 = load i64, i64* %size, align 8, !dbg !917, !tbaa !882
  %cmp29 = icmp eq i64 %53, 1, !dbg !919
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !920

if.then.30:                                       ; preds = %if.then.27
  %54 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8, !dbg !921, !tbaa !564
  %55 = load %struct._object*, %struct._object** %self, align 8, !dbg !923, !tbaa !564
  %56 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !924, !tbaa !564
  %57 = bitcast %struct._object* %56 to %struct.PyTupleObject*, !dbg !925
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %57, i32 0, i32 1, !dbg !926
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !927
  %58 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !927, !tbaa !564
  %call31 = call %struct._object* %54(%struct._object* %55, %struct._object* %58), !dbg !928
  store %struct._object* %call31, %struct._object** %res, align 8, !dbg !929, !tbaa !564
  %59 = load %struct._object*, %struct._object** %res, align 8, !dbg !930, !tbaa !564
  store %struct._object* %59, %struct._object** %retval, !dbg !931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !931

if.end.32:                                        ; preds = %if.then.27
  %60 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !932, !tbaa !564
  %61 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %f, align 8, !dbg !933, !tbaa !564
  %m_ml33 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %61, i32 0, i32 1, !dbg !934
  %62 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml33, align 8, !dbg !934, !tbaa !623
  %ml_name34 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %62, i32 0, i32 0, !dbg !935
  %63 = load i8*, i8** %ml_name34, align 8, !dbg !935, !tbaa !898
  %64 = load i64, i64* %size, align 8, !dbg !936, !tbaa !882
  %call35 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8* %63, i64 %64), !dbg !937
  store %struct._object* null, %struct._object** %retval, !dbg !938
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !938

if.end.36:                                        ; preds = %lor.lhs.false.24
  br label %sw.epilog, !dbg !939

sw.default:                                       ; preds = %cond.end
  %65 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !940, !tbaa !564
  call void @PyErr_SetString(%struct._object* %65, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i32 0, i32 0)), !dbg !941
  store %struct._object* null, %struct._object** %retval, !dbg !942
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !942

sw.epilog:                                        ; preds = %if.end.36, %if.end.21, %if.end
  %66 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !943, !tbaa !564
  %67 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %f, align 8, !dbg !944, !tbaa !564
  %m_ml37 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %67, i32 0, i32 1, !dbg !945
  %68 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml37, align 8, !dbg !945, !tbaa !623
  %ml_name38 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %68, i32 0, i32 0, !dbg !946
  %69 = load i8*, i8** %ml_name38, align 8, !dbg !946, !tbaa !898
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %69), !dbg !947
  store %struct._object* null, %struct._object** %retval, !dbg !948
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !948

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.32, %if.then.30, %if.end.18, %if.then.16, %sw.bb.7, %if.then
  %70 = bitcast i64* %size to i8*, !dbg !949
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !949
  %71 = bitcast %struct._object** %res to i8*, !dbg !949
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !949
  %72 = bitcast %struct._object** %self to i8*, !dbg !949
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !949
  %73 = bitcast %struct._object* (%struct._object*, %struct._object*)** %meth to i8*, !dbg !949
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !949
  %74 = bitcast %struct.PyCFunctionObject** %f to i8*, !dbg !949
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !949
  %75 = load %struct._object*, %struct._object** %retval, !dbg !949
  ret %struct._object* %75, !dbg !949
}

declare i64 @PyDict_Size(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @meth_dealloc(%struct.PyCFunctionObject* %m) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !446, metadata !568), !dbg !950
  br label %do.body, !dbg !951

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !952
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !952
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !447, metadata !568), !dbg !954
  %1 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !955, !tbaa !564
  %2 = bitcast %struct.PyCFunctionObject* %1 to %union._gc_head*, !dbg !956
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !957
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !954, !tbaa !564
  br label %do.body.1, !dbg !958

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !959, !tbaa !564
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !962
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !963
  %4 = load i64, i64* %gc_refs, align 8, !dbg !963, !tbaa !682
  %and = and i64 %4, 1, !dbg !964
  %or = or i64 %and, -4, !dbg !965
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !966, !tbaa !564
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !967
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !968
  store i64 %or, i64* %gc_refs3, align 8, !dbg !969, !tbaa !682
  br label %do.cond, !dbg !970

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !971

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !973, !tbaa !564
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !975
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !976
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !976, !tbaa !711
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !977, !tbaa !564
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !978
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !979
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !979, !tbaa !715
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !980
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !981
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !982, !tbaa !711
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !983, !tbaa !564
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !984
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !985
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !985, !tbaa !715
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !986, !tbaa !564
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !987
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !988
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !988, !tbaa !711
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !989
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !990
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !991, !tbaa !715
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !992, !tbaa !564
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !993
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !994
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !995, !tbaa !711
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !996
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !996
  br label %do.end.17, !dbg !997

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !998

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !999
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !999
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !449, metadata !568), !dbg !1001
  %17 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1002, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %17, i32 0, i32 2, !dbg !1003
  %18 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1003, !tbaa !589
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1001, !tbaa !564
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1004, !tbaa !564
  %cmp = icmp ne %struct._object* %19, null, !dbg !1005
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !1006

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !1007

do.body.19:                                       ; preds = %if.then
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1009
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1009
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !451, metadata !568), !dbg !1011
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1012, !tbaa !564
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !1011, !tbaa !564
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1013, !tbaa !564
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1015
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !1016, !tbaa !604
  %dec = add i64 %23, -1, !dbg !1016
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1016, !tbaa !604
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1017
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !1018

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !1019

if.else:                                          ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1021, !tbaa !564
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1023
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1023, !tbaa !599
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1024
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1024, !tbaa !1025
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1027, !tbaa !564
  call void %26(%struct._object* %27), !dbg !1028
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1029
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1029
  br label %do.cond.22, !dbg !1031

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !1032

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !1034

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1036
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1036
  br label %do.end.26, !dbg !1039

do.end.26:                                        ; preds = %if.end.24
  br label %do.body.27, !dbg !1040

do.body.27:                                       ; preds = %do.end.26
  %30 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !1041
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1041
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp28, metadata !454, metadata !568), !dbg !1043
  %31 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1044, !tbaa !564
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %31, i32 0, i32 3, !dbg !1045
  %32 = load %struct._object*, %struct._object** %m_module, align 8, !dbg !1045, !tbaa !670
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1043, !tbaa !564
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1046, !tbaa !564
  %cmp29 = icmp ne %struct._object* %33, null, !dbg !1047
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !1048

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31, !dbg !1049

do.body.31:                                       ; preds = %if.then.30
  %34 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1051
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !456, metadata !568), !dbg !1053
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1054, !tbaa !564
  store %struct._object* %35, %struct._object** %_py_decref_tmp32, align 8, !dbg !1053, !tbaa !564
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1055, !tbaa !564
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1057
  %37 = load i64, i64* %ob_refcnt33, align 8, !dbg !1058, !tbaa !604
  %dec34 = add i64 %37, -1, !dbg !1058
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1058, !tbaa !604
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !1059
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !1060

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !1061

if.else.37:                                       ; preds = %do.body.31
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1063, !tbaa !564
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1065
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1065, !tbaa !599
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !1066
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1066, !tbaa !1025
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1067, !tbaa !564
  call void %40(%struct._object* %41), !dbg !1068
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !1069
  br label %do.cond.41, !dbg !1071

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !1072

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43, !dbg !1074

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  %43 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !1076
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1076
  br label %do.end.45, !dbg !1077

do.end.45:                                        ; preds = %if.end.43
  %44 = load i32, i32* @numfree, align 4, !dbg !1078, !tbaa !607
  %cmp46 = icmp slt i32 %44, 256, !dbg !1080
  br i1 %cmp46, label %if.then.47, label %if.else.49, !dbg !1081

if.then.47:                                       ; preds = %do.end.45
  %45 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !1082, !tbaa !564
  %46 = bitcast %struct.PyCFunctionObject* %45 to %struct._object*, !dbg !1084
  %47 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1085, !tbaa !564
  %m_self48 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %47, i32 0, i32 2, !dbg !1086
  store %struct._object* %46, %struct._object** %m_self48, align 8, !dbg !1087, !tbaa !589
  %48 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1088, !tbaa !564
  store %struct.PyCFunctionObject* %48, %struct.PyCFunctionObject** @free_list, align 8, !dbg !1089, !tbaa !564
  %49 = load i32, i32* @numfree, align 4, !dbg !1090, !tbaa !607
  %inc = add i32 %49, 1, !dbg !1090
  store i32 %inc, i32* @numfree, align 4, !dbg !1090, !tbaa !607
  br label %if.end.50, !dbg !1091

if.else.49:                                       ; preds = %do.end.45
  %50 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1092, !tbaa !564
  %51 = bitcast %struct.PyCFunctionObject* %50 to i8*, !dbg !1092
  call void @PyObject_GC_Del(i8* %51), !dbg !1094
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.47
  ret void, !dbg !1095
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_repr(%struct.PyCFunctionObject* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !463, metadata !568), !dbg !1096
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1097, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2, !dbg !1099
  %1 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1099, !tbaa !589
  %cmp = icmp eq %struct._object* %1, null, !dbg !1100
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1101

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1102, !tbaa !564
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2, !dbg !1104
  %3 = load %struct._object*, %struct._object** %m_self1, align 8, !dbg !1104, !tbaa !589
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1105
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1105, !tbaa !599
  %cmp2 = icmp eq %struct._typeobject* %4, @PyModule_Type, !dbg !1106
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1107

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1108, !tbaa !564
  %m_self4 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 2, !dbg !1110
  %6 = load %struct._object*, %struct._object** %m_self4, align 8, !dbg !1110, !tbaa !589
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1111
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1111, !tbaa !599
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyModule_Type), !dbg !1112
  %tobool = icmp ne i32 %call, 0, !dbg !1112
  br i1 %tobool, label %if.then, label %if.end, !dbg !1113

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1114, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 1, !dbg !1115
  %9 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1115, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %9, i32 0, i32 0, !dbg !1116
  %10 = load i8*, i8** %ml_name, align 8, !dbg !1116, !tbaa !898
  %call6 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %10), !dbg !1117
  store %struct._object* %call6, %struct._object** %retval, !dbg !1118
  br label %return, !dbg !1118

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1119, !tbaa !564
  %m_ml7 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 1, !dbg !1120
  %12 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml7, align 8, !dbg !1120, !tbaa !623
  %ml_name8 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %12, i32 0, i32 0, !dbg !1121
  %13 = load i8*, i8** %ml_name8, align 8, !dbg !1121, !tbaa !898
  %14 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1122, !tbaa !564
  %m_self9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 2, !dbg !1123
  %15 = load %struct._object*, %struct._object** %m_self9, align 8, !dbg !1123, !tbaa !589
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1124
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1124, !tbaa !599
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1, !dbg !1125
  %17 = load i8*, i8** %tp_name, align 8, !dbg !1125, !tbaa !1126
  %18 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1127, !tbaa !564
  %m_self11 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %18, i32 0, i32 2, !dbg !1128
  %19 = load %struct._object*, %struct._object** %m_self11, align 8, !dbg !1128, !tbaa !589
  %call12 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i8* %13, i8* %17, %struct._object* %19), !dbg !1129
  store %struct._object* %call12, %struct._object** %retval, !dbg !1130
  br label %return, !dbg !1130

return:                                           ; preds = %if.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1131
  ret %struct._object* %20, !dbg !1131
}

; Function Attrs: nounwind uwtable
define internal i64 @meth_hash(%struct.PyCFunctionObject* %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca %struct.PyCFunctionObject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyCFunctionObject* %a, %struct.PyCFunctionObject** %a.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %a.addr, metadata !468, metadata !568), !dbg !1132
  %0 = bitcast i64* %x to i8*, !dbg !1133
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1133
  call void @llvm.dbg.declare(metadata i64* %x, metadata !469, metadata !568), !dbg !1134
  %1 = bitcast i64* %y to i8*, !dbg !1133
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1133
  call void @llvm.dbg.declare(metadata i64* %y, metadata !470, metadata !568), !dbg !1135
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a.addr, align 8, !dbg !1136, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2, !dbg !1138
  %3 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1138, !tbaa !589
  %cmp = icmp eq %struct._object* %3, null, !dbg !1139
  br i1 %cmp, label %if.then, label %if.else, !dbg !1140

if.then:                                          ; preds = %entry
  store i64 0, i64* %x, align 8, !dbg !1141, !tbaa !882
  br label %if.end.4, !dbg !1142

if.else:                                          ; preds = %entry
  %4 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a.addr, align 8, !dbg !1143, !tbaa !564
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %4, i32 0, i32 2, !dbg !1145
  %5 = load %struct._object*, %struct._object** %m_self1, align 8, !dbg !1145, !tbaa !589
  %call = call i64 @PyObject_Hash(%struct._object* %5), !dbg !1146
  store i64 %call, i64* %x, align 8, !dbg !1147, !tbaa !882
  %6 = load i64, i64* %x, align 8, !dbg !1148, !tbaa !882
  %cmp2 = icmp eq i64 %6, -1, !dbg !1150
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !1151

if.then.3:                                        ; preds = %if.else
  store i64 -1, i64* %retval, !dbg !1152
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1152

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a.addr, align 8, !dbg !1153, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %7, i32 0, i32 1, !dbg !1154
  %8 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1154, !tbaa !623
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %8, i32 0, i32 1, !dbg !1155
  %9 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !1155, !tbaa !753
  %10 = bitcast %struct._object* (%struct._object*, %struct._object*)* %9 to i8*, !dbg !1156
  %call5 = call i64 @_Py_HashPointer(i8* %10), !dbg !1157
  store i64 %call5, i64* %y, align 8, !dbg !1158, !tbaa !882
  %11 = load i64, i64* %y, align 8, !dbg !1159, !tbaa !882
  %cmp6 = icmp eq i64 %11, -1, !dbg !1161
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1162

if.then.7:                                        ; preds = %if.end.4
  store i64 -1, i64* %retval, !dbg !1163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1163

if.end.8:                                         ; preds = %if.end.4
  %12 = load i64, i64* %y, align 8, !dbg !1164, !tbaa !882
  %13 = load i64, i64* %x, align 8, !dbg !1165, !tbaa !882
  %xor = xor i64 %13, %12, !dbg !1165
  store i64 %xor, i64* %x, align 8, !dbg !1165, !tbaa !882
  %14 = load i64, i64* %x, align 8, !dbg !1166, !tbaa !882
  %cmp9 = icmp eq i64 %14, -1, !dbg !1168
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1169

if.then.10:                                       ; preds = %if.end.8
  store i64 -2, i64* %x, align 8, !dbg !1170, !tbaa !882
  br label %if.end.11, !dbg !1171

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %15 = load i64, i64* %x, align 8, !dbg !1172, !tbaa !882
  store i64 %15, i64* %retval, !dbg !1173
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1173

cleanup:                                          ; preds = %if.end.11, %if.then.7, %if.then.3
  %16 = bitcast i64* %y to i8*, !dbg !1174
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1174
  %17 = bitcast i64* %x to i8*, !dbg !1174
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1174
  %18 = load i64, i64* %retval, !dbg !1174
  ret i64 %18, !dbg !1174
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @meth_traverse(%struct.PyCFunctionObject* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !475, metadata !568), !dbg !1175
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !476, metadata !568), !dbg !1176
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !477, metadata !568), !dbg !1177
  br label %do.body, !dbg !1178

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1179, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2, !dbg !1181
  %1 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1181, !tbaa !589
  %tobool = icmp ne %struct._object* %1, null, !dbg !1182
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1183

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1184
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1184
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !478, metadata !568), !dbg !1186
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1187, !tbaa !564
  %4 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1188, !tbaa !564
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %4, i32 0, i32 2, !dbg !1189
  %5 = load %struct._object*, %struct._object** %m_self1, align 8, !dbg !1189, !tbaa !589
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1190, !tbaa !564
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1187
  store i32 %call, i32* %vret, align 4, !dbg !1186, !tbaa !607
  %7 = load i32, i32* %vret, align 4, !dbg !1191, !tbaa !607
  %tobool2 = icmp ne i32 %7, 0, !dbg !1191
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1193

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1194, !tbaa !607
  store i32 %8, i32* %retval, !dbg !1196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1196

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1197
  br label %cleanup, !dbg !1197

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1199
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1199
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1202

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1203

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !1206

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1207, !tbaa !564
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %10, i32 0, i32 3, !dbg !1209
  %11 = load %struct._object*, %struct._object** %m_module, align 8, !dbg !1209, !tbaa !670
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !1210
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !1211

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !482, metadata !568), !dbg !1214
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1215, !tbaa !564
  %14 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1216, !tbaa !564
  %m_module9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 3, !dbg !1217
  %15 = load %struct._object*, %struct._object** %m_module9, align 8, !dbg !1217, !tbaa !670
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !1218, !tbaa !564
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !1215
  store i32 %call10, i32* %vret8, align 4, !dbg !1214, !tbaa !607
  %17 = load i32, i32* %vret8, align 4, !dbg !1219, !tbaa !607
  %tobool11 = icmp ne i32 %17, 0, !dbg !1219
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !1221

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !1222, !tbaa !607
  store i32 %18, i32* %retval, !dbg !1224
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1224

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !1225
  br label %cleanup.14, !dbg !1225

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !1227
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !1227
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !1230

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !1231

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !1234
  br label %return, !dbg !1234

return:                                           ; preds = %do.end.18, %cleanup.14, %cleanup
  %20 = load i32, i32* %retval, !dbg !1235
  ret i32 %20, !dbg !1235

unreachable:                                      ; preds = %cleanup.14, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %a = alloca %struct.PyCFunctionObject*, align 8
  %b = alloca %struct.PyCFunctionObject*, align 8
  %res = alloca %struct._object*, align 8
  %eq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !488, metadata !568), !dbg !1236
  store %struct._object* %other, %struct._object** %other.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._object** %other.addr, metadata !489, metadata !568), !dbg !1237
  store i32 %op, i32* %op.addr, align 4, !tbaa !607
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !490, metadata !568), !dbg !1238
  %0 = bitcast %struct.PyCFunctionObject** %a to i8*, !dbg !1239
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1239
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %a, metadata !491, metadata !568), !dbg !1240
  %1 = bitcast %struct.PyCFunctionObject** %b to i8*, !dbg !1239
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1239
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %b, metadata !492, metadata !568), !dbg !1241
  %2 = bitcast %struct._object** %res to i8*, !dbg !1242
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1242
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !493, metadata !568), !dbg !1243
  %3 = bitcast i32* %eq to i8*, !dbg !1244
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %eq, metadata !494, metadata !568), !dbg !1245
  %4 = load i32, i32* %op.addr, align 4, !dbg !1246, !tbaa !607
  %cmp = icmp ne i32 %4, 2, !dbg !1248
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1249

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %op.addr, align 4, !dbg !1250, !tbaa !607
  %cmp1 = icmp ne i32 %5, 3, !dbg !1252
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1253

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1254, !tbaa !564
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1255
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1255, !tbaa !599
  %cmp2 = icmp eq %struct._typeobject* %7, @PyCFunction_Type, !dbg !1256
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !1257

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1258, !tbaa !564
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1259
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1259, !tbaa !599
  %cmp5 = icmp eq %struct._typeobject* %9, @PyCFunction_Type, !dbg !1260
  br i1 %cmp5, label %if.end, label %if.then, !dbg !1261

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1262, !tbaa !604
  %inc = add i64 %10, 1, !dbg !1262
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1262, !tbaa !604
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1264
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1264

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1265, !tbaa !564
  %12 = bitcast %struct._object* %11 to %struct.PyCFunctionObject*, !dbg !1266
  store %struct.PyCFunctionObject* %12, %struct.PyCFunctionObject** %a, align 8, !dbg !1267, !tbaa !564
  %13 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1268, !tbaa !564
  %14 = bitcast %struct._object* %13 to %struct.PyCFunctionObject*, !dbg !1269
  store %struct.PyCFunctionObject* %14, %struct.PyCFunctionObject** %b, align 8, !dbg !1270, !tbaa !564
  %15 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a, align 8, !dbg !1271, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %15, i32 0, i32 2, !dbg !1272
  %16 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1272, !tbaa !589
  %17 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %b, align 8, !dbg !1273, !tbaa !564
  %m_self6 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %17, i32 0, i32 2, !dbg !1274
  %18 = load %struct._object*, %struct._object** %m_self6, align 8, !dbg !1274, !tbaa !589
  %cmp7 = icmp eq %struct._object* %16, %18, !dbg !1275
  %conv = zext i1 %cmp7 to i32, !dbg !1275
  store i32 %conv, i32* %eq, align 4, !dbg !1276, !tbaa !607
  %19 = load i32, i32* %eq, align 4, !dbg !1277, !tbaa !607
  %tobool = icmp ne i32 %19, 0, !dbg !1277
  br i1 %tobool, label %if.then.8, label %if.end.13, !dbg !1279

if.then.8:                                        ; preds = %if.end
  %20 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a, align 8, !dbg !1280, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %20, i32 0, i32 1, !dbg !1281
  %21 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1281, !tbaa !623
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %21, i32 0, i32 1, !dbg !1282
  %22 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !1282, !tbaa !753
  %23 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %b, align 8, !dbg !1283, !tbaa !564
  %m_ml9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %23, i32 0, i32 1, !dbg !1284
  %24 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml9, align 8, !dbg !1284, !tbaa !623
  %ml_meth10 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %24, i32 0, i32 1, !dbg !1285
  %25 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth10, align 8, !dbg !1285, !tbaa !753
  %cmp11 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %22, %25, !dbg !1286
  %conv12 = zext i1 %cmp11 to i32, !dbg !1286
  store i32 %conv12, i32* %eq, align 4, !dbg !1287, !tbaa !607
  br label %if.end.13, !dbg !1288

if.end.13:                                        ; preds = %if.then.8, %if.end
  %26 = load i32, i32* %op.addr, align 4, !dbg !1289, !tbaa !607
  %cmp14 = icmp eq i32 %26, 2, !dbg !1291
  br i1 %cmp14, label %if.then.16, label %if.else, !dbg !1292

if.then.16:                                       ; preds = %if.end.13
  %27 = load i32, i32* %eq, align 4, !dbg !1293, !tbaa !607
  %tobool17 = icmp ne i32 %27, 0, !dbg !1293
  %cond = select i1 %tobool17, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1293
  store %struct._object* %cond, %struct._object** %res, align 8, !dbg !1294, !tbaa !564
  br label %if.end.20, !dbg !1295

if.else:                                          ; preds = %if.end.13
  %28 = load i32, i32* %eq, align 4, !dbg !1296, !tbaa !607
  %tobool18 = icmp ne i32 %28, 0, !dbg !1296
  %cond19 = select i1 %tobool18, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1296
  store %struct._object* %cond19, %struct._object** %res, align 8, !dbg !1297, !tbaa !564
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  %29 = load %struct._object*, %struct._object** %res, align 8, !dbg !1298, !tbaa !564
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1299
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !1300, !tbaa !604
  %inc21 = add i64 %30, 1, !dbg !1300
  store i64 %inc21, i64* %ob_refcnt, align 8, !dbg !1300, !tbaa !604
  %31 = load %struct._object*, %struct._object** %res, align 8, !dbg !1301, !tbaa !564
  store %struct._object* %31, %struct._object** %retval, !dbg !1302
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1302

cleanup:                                          ; preds = %if.end.20, %if.then
  %32 = bitcast i32* %eq to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 4, i8* %32) #2, !dbg !1303
  %33 = bitcast %struct._object** %res to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1303
  %34 = bitcast %struct.PyCFunctionObject** %b to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1303
  %35 = bitcast %struct.PyCFunctionObject** %a to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1303
  %36 = load %struct._object*, %struct._object** %retval, !dbg !1303
  ret %struct._object* %36, !dbg !1303
}

; Function Attrs: nounwind uwtable
define i32 @PyCFunction_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %v = alloca %struct.PyCFunctionObject*, align 8
  %0 = bitcast i32* %freelist_size to i8*, !dbg !1304
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1304
  call void @llvm.dbg.declare(metadata i32* %freelist_size, metadata !431, metadata !568), !dbg !1305
  %1 = load i32, i32* @numfree, align 4, !dbg !1306, !tbaa !607
  store i32 %1, i32* %freelist_size, align 4, !dbg !1305, !tbaa !607
  br label %while.cond, !dbg !1307

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !1308, !tbaa !564
  %tobool = icmp ne %struct.PyCFunctionObject* %2, null, !dbg !1307
  br i1 %tobool, label %while.body, label %while.end, !dbg !1307

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.PyCFunctionObject** %v to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %v, metadata !432, metadata !568), !dbg !1312
  %4 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !1313, !tbaa !564
  store %struct.PyCFunctionObject* %4, %struct.PyCFunctionObject** %v, align 8, !dbg !1312, !tbaa !564
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %v, align 8, !dbg !1314, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 2, !dbg !1315
  %6 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1315, !tbaa !589
  %7 = bitcast %struct._object* %6 to %struct.PyCFunctionObject*, !dbg !1316
  store %struct.PyCFunctionObject* %7, %struct.PyCFunctionObject** @free_list, align 8, !dbg !1317, !tbaa !564
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %v, align 8, !dbg !1318, !tbaa !564
  %9 = bitcast %struct.PyCFunctionObject* %8 to i8*, !dbg !1318
  call void @PyObject_GC_Del(i8* %9), !dbg !1319
  %10 = load i32, i32* @numfree, align 4, !dbg !1320, !tbaa !607
  %dec = add i32 %10, -1, !dbg !1320
  store i32 %dec, i32* @numfree, align 4, !dbg !1320, !tbaa !607
  %11 = bitcast %struct.PyCFunctionObject** %v to i8*, !dbg !1321
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1321
  br label %while.cond, !dbg !1307

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %freelist_size, align 4, !dbg !1322, !tbaa !607
  %13 = bitcast i32* %freelist_size to i8*, !dbg !1323
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !1323
  ret i32 %12, !dbg !1324
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define void @PyCFunction_Fini() #0 {
entry:
  %call = call i32 @PyCFunction_ClearFreeList(), !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: nounwind uwtable
define void @_PyCFunction_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !441, metadata !568), !dbg !1327
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !1328, !tbaa !564
  %1 = load i32, i32* @numfree, align 4, !dbg !1329, !tbaa !607
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %1, i64 40), !dbg !1330
  ret void, !dbg !1331
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare i64 @PyObject_Hash(%struct._object*) #3

declare i64 @_Py_HashPointer(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_reduce(%struct.PyCFunctionObject* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %builtins = alloca %struct._object*, align 8
  %getattr = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !497, metadata !568), !dbg !1332
  %0 = bitcast %struct._object** %builtins to i8*, !dbg !1333
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1333
  call void @llvm.dbg.declare(metadata %struct._object** %builtins, metadata !498, metadata !568), !dbg !1334
  %1 = bitcast %struct._object** %getattr to i8*, !dbg !1335
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1335
  call void @llvm.dbg.declare(metadata %struct._object** %getattr, metadata !499, metadata !568), !dbg !1336
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1337, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2, !dbg !1339
  %3 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1339, !tbaa !589
  %cmp = icmp eq %struct._object* %3, null, !dbg !1340
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1341

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1342, !tbaa !564
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %4, i32 0, i32 2, !dbg !1344
  %5 = load %struct._object*, %struct._object** %m_self1, align 8, !dbg !1344, !tbaa !589
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1345
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1345, !tbaa !599
  %cmp2 = icmp eq %struct._typeobject* %6, @PyModule_Type, !dbg !1346
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1347

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1348, !tbaa !564
  %m_self4 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %7, i32 0, i32 2, !dbg !1350
  %8 = load %struct._object*, %struct._object** %m_self4, align 8, !dbg !1350, !tbaa !589
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1351
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1351, !tbaa !599
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* @PyModule_Type), !dbg !1352
  %tobool = icmp ne i32 %call, 0, !dbg !1352
  br i1 %tobool, label %if.then, label %if.end, !dbg !1353

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %10 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1354, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %10, i32 0, i32 1, !dbg !1355
  %11 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1355, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %11, i32 0, i32 0, !dbg !1356
  %12 = load i8*, i8** %ml_name, align 8, !dbg !1356, !tbaa !898
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %12), !dbg !1357
  store %struct._object* %call6, %struct._object** %retval, !dbg !1358
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1358

if.end:                                           ; preds = %lor.lhs.false.3
  %call7 = call %struct._object* @PyEval_GetBuiltins(), !dbg !1359
  store %struct._object* %call7, %struct._object** %builtins, align 8, !dbg !1360, !tbaa !564
  %13 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1361, !tbaa !564
  %call8 = call %struct._object* @_PyDict_GetItemId(%struct._object* %13, %struct._Py_Identifier* @meth_reduce.PyId_getattr), !dbg !1362
  store %struct._object* %call8, %struct._object** %getattr, align 8, !dbg !1363, !tbaa !564
  %14 = load %struct._object*, %struct._object** %getattr, align 8, !dbg !1364, !tbaa !564
  %15 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1365, !tbaa !564
  %m_self9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %15, i32 0, i32 2, !dbg !1366
  %16 = load %struct._object*, %struct._object** %m_self9, align 8, !dbg !1366, !tbaa !589
  %17 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1367, !tbaa !564
  %m_ml10 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %17, i32 0, i32 1, !dbg !1368
  %18 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml10, align 8, !dbg !1368, !tbaa !623
  %ml_name11 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %18, i32 0, i32 0, !dbg !1369
  %19 = load i8*, i8** %ml_name11, align 8, !dbg !1369, !tbaa !898
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._object* %14, %struct._object* %16, i8* %19), !dbg !1370
  store %struct._object* %call12, %struct._object** %retval, !dbg !1371
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1371

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct._object** %getattr to i8*, !dbg !1372
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1372
  %21 = bitcast %struct._object** %builtins to i8*, !dbg !1372
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1372
  %22 = load %struct._object*, %struct._object** %retval, !dbg !1372
  ret %struct._object* %22, !dbg !1372
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @PyEval_GetBuiltins() #3

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__doc__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !504, metadata !568), !dbg !1373
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !505, metadata !568), !dbg !1374
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1375, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1, !dbg !1376
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1376, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0, !dbg !1377
  %2 = load i8*, i8** %ml_name, align 8, !dbg !1377, !tbaa !898
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1378, !tbaa !564
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1, !dbg !1379
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml1, align 8, !dbg !1379, !tbaa !623
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3, !dbg !1380
  %5 = load i8*, i8** %ml_doc, align 8, !dbg !1380, !tbaa !1381
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %5), !dbg !1382
  ret %struct._object* %call, !dbg !1383
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__name__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !508, metadata !568), !dbg !1384
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !509, metadata !568), !dbg !1385
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1386, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1, !dbg !1387
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1387, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0, !dbg !1388
  %2 = load i8*, i8** %ml_name, align 8, !dbg !1388, !tbaa !898
  %call = call %struct._object* @PyUnicode_FromString(i8* %2), !dbg !1389
  ret %struct._object* %call, !dbg !1390
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__qualname__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  %type = alloca %struct._object*, align 8
  %type_qualname = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !512, metadata !568), !dbg !1391
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !513, metadata !568), !dbg !1392
  %0 = bitcast %struct._object** %type to i8*, !dbg !1393
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1393
  call void @llvm.dbg.declare(metadata %struct._object** %type, metadata !514, metadata !568), !dbg !1394
  %1 = bitcast %struct._object** %type_qualname to i8*, !dbg !1393
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1393
  call void @llvm.dbg.declare(metadata %struct._object** %type_qualname, metadata !515, metadata !568), !dbg !1395
  %2 = bitcast %struct._object** %res to i8*, !dbg !1393
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1393
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !516, metadata !568), !dbg !1396
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1397, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 2, !dbg !1399
  %4 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1399, !tbaa !589
  %cmp = icmp eq %struct._object* %4, null, !dbg !1400
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1401

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1402, !tbaa !564
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 2, !dbg !1404
  %6 = load %struct._object*, %struct._object** %m_self1, align 8, !dbg !1404, !tbaa !589
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1405
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1405, !tbaa !599
  %cmp2 = icmp eq %struct._typeobject* %7, @PyModule_Type, !dbg !1406
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1407

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1408, !tbaa !564
  %m_self4 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 2, !dbg !1410
  %9 = load %struct._object*, %struct._object** %m_self4, align 8, !dbg !1410, !tbaa !589
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1411
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1411, !tbaa !599
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %10, %struct._typeobject* @PyModule_Type), !dbg !1412
  %tobool = icmp ne i32 %call, 0, !dbg !1412
  br i1 %tobool, label %if.then, label %if.end, !dbg !1413

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1414, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 1, !dbg !1415
  %12 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1415, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %12, i32 0, i32 0, !dbg !1416
  %13 = load i8*, i8** %ml_name, align 8, !dbg !1416, !tbaa !898
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %13), !dbg !1417
  store %struct._object* %call6, %struct._object** %retval, !dbg !1418
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1418

if.end:                                           ; preds = %lor.lhs.false.3
  %14 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1419, !tbaa !564
  %m_self7 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 2, !dbg !1420
  %15 = load %struct._object*, %struct._object** %m_self7, align 8, !dbg !1420, !tbaa !589
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1421
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1421, !tbaa !599
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19, !dbg !1422
  %17 = load i64, i64* %tp_flags, align 8, !dbg !1422, !tbaa !1423
  %and = and i64 %17, 2147483648, !dbg !1424
  %cmp9 = icmp ne i64 %and, 0, !dbg !1425
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !1426

cond.true:                                        ; preds = %if.end
  %18 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1427, !tbaa !564
  %m_self10 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %18, i32 0, i32 2, !dbg !1429
  %19 = load %struct._object*, %struct._object** %m_self10, align 8, !dbg !1429, !tbaa !589
  br label %cond.end, !dbg !1426

cond.false:                                       ; preds = %if.end
  %20 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1430, !tbaa !564
  %m_self11 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %20, i32 0, i32 2, !dbg !1432
  %21 = load %struct._object*, %struct._object** %m_self11, align 8, !dbg !1432, !tbaa !589
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1433
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1433, !tbaa !599
  %23 = bitcast %struct._typeobject* %22 to %struct._object*, !dbg !1434
  br label %cond.end, !dbg !1426

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %19, %cond.true ], [ %23, %cond.false ], !dbg !1426
  store %struct._object* %cond, %struct._object** %type, align 8, !dbg !1435, !tbaa !564
  %24 = load %struct._object*, %struct._object** %type, align 8, !dbg !1438, !tbaa !564
  %call13 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %24, %struct._Py_Identifier* @meth_get__qualname__.PyId___qualname__), !dbg !1439
  store %struct._object* %call13, %struct._object** %type_qualname, align 8, !dbg !1440, !tbaa !564
  %25 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !1441, !tbaa !564
  %cmp14 = icmp eq %struct._object* %25, null, !dbg !1443
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1444

if.then.15:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1445

if.end.16:                                        ; preds = %cond.end
  %26 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !1446, !tbaa !564
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1447
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1447, !tbaa !599
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19, !dbg !1448
  %28 = load i64, i64* %tp_flags18, align 8, !dbg !1448, !tbaa !1423
  %and19 = and i64 %28, 268435456, !dbg !1449
  %cmp20 = icmp ne i64 %and19, 0, !dbg !1450
  br i1 %cmp20, label %if.end.32, label %if.then.21, !dbg !1451

if.then.21:                                       ; preds = %if.end.16
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1452, !tbaa !564
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0)), !dbg !1453
  br label %do.body, !dbg !1454

do.body:                                          ; preds = %if.then.21
  %30 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1455
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1455
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !517, metadata !568), !dbg !1457
  %31 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !1458, !tbaa !564
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1457, !tbaa !564
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1459, !tbaa !564
  %cmp22 = icmp ne %struct._object* %32, null, !dbg !1460
  br i1 %cmp22, label %if.then.23, label %if.end.29, !dbg !1461

if.then.23:                                       ; preds = %do.body
  br label %do.body.24, !dbg !1462

do.body.24:                                       ; preds = %if.then.23
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1464
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !1464
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !521, metadata !568), !dbg !1466
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1467, !tbaa !564
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8, !dbg !1466, !tbaa !564
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1468, !tbaa !564
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1470
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1471, !tbaa !604
  %dec = add i64 %36, -1, !dbg !1471
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1471, !tbaa !604
  %cmp25 = icmp ne i64 %dec, 0, !dbg !1472
  br i1 %cmp25, label %if.then.26, label %if.else, !dbg !1473

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.28, !dbg !1474

if.else:                                          ; preds = %do.body.24
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1476, !tbaa !564
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1478
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !1478, !tbaa !599
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1479
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1479, !tbaa !1025
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1480, !tbaa !564
  call void %39(%struct._object* %40), !dbg !1481
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1482
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !1482
  br label %do.cond, !dbg !1484

do.cond:                                          ; preds = %if.end.28
  br label %do.end, !dbg !1485

do.end:                                           ; preds = %do.cond
  br label %if.end.29, !dbg !1487

if.end.29:                                        ; preds = %do.end, %do.body
  %42 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1489
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !1489
  br label %do.cond.30, !dbg !1492

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !1493

do.end.31:                                        ; preds = %do.cond.30
  store %struct._object* null, %struct._object** %retval, !dbg !1495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1495

if.end.32:                                        ; preds = %if.end.16
  %43 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !1496, !tbaa !564
  %44 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1497, !tbaa !564
  %m_ml33 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %44, i32 0, i32 1, !dbg !1498
  %45 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml33, align 8, !dbg !1498, !tbaa !623
  %ml_name34 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %45, i32 0, i32 0, !dbg !1499
  %46 = load i8*, i8** %ml_name34, align 8, !dbg !1499, !tbaa !898
  %call35 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %struct._object* %43, i8* %46), !dbg !1500
  store %struct._object* %call35, %struct._object** %res, align 8, !dbg !1501, !tbaa !564
  br label %do.body.36, !dbg !1502

do.body.36:                                       ; preds = %if.end.32
  %47 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !1503
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !1503
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp37, metadata !524, metadata !568), !dbg !1505
  %48 = load %struct._object*, %struct._object** %type_qualname, align 8, !dbg !1506, !tbaa !564
  store %struct._object* %48, %struct._object** %_py_decref_tmp37, align 8, !dbg !1505, !tbaa !564
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !1507, !tbaa !564
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !1509
  %50 = load i64, i64* %ob_refcnt38, align 8, !dbg !1510, !tbaa !604
  %dec39 = add i64 %50, -1, !dbg !1510
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !1510, !tbaa !604
  %cmp40 = icmp ne i64 %dec39, 0, !dbg !1511
  br i1 %cmp40, label %if.then.41, label %if.else.42, !dbg !1512

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45, !dbg !1513

if.else.42:                                       ; preds = %do.body.36
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !1515, !tbaa !564
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !1517
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !1517, !tbaa !599
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !1518
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !1518, !tbaa !1025
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !1519, !tbaa !564
  call void %53(%struct._object* %54), !dbg !1520
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  %55 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !1521
  br label %do.cond.46, !dbg !1523

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !1524

do.end.47:                                        ; preds = %do.cond.46
  %56 = load %struct._object*, %struct._object** %res, align 8, !dbg !1526, !tbaa !564
  store %struct._object* %56, %struct._object** %retval, !dbg !1527
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1527

cleanup:                                          ; preds = %do.end.47, %do.end.31, %if.then.15, %if.then
  %57 = bitcast %struct._object** %res to i8*, !dbg !1528
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !1528
  %58 = bitcast %struct._object** %type_qualname to i8*, !dbg !1528
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1528
  %59 = bitcast %struct._object** %type to i8*, !dbg !1528
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1528
  %60 = load %struct._object*, %struct._object** %retval, !dbg !1528
  ret %struct._object* %60, !dbg !1528
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__self__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  %self = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !528, metadata !568), !dbg !1529
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !529, metadata !568), !dbg !1530
  %0 = bitcast %struct._object** %self to i8*, !dbg !1531
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1531
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !530, metadata !568), !dbg !1532
  %1 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1533, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %1, i32 0, i32 1, !dbg !1534
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1534, !tbaa !623
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i32 0, i32 2, !dbg !1535
  %3 = load i32, i32* %ml_flags, align 4, !dbg !1535, !tbaa !770
  %and = and i32 %3, 32, !dbg !1536
  %tobool = icmp ne i32 %and, 0, !dbg !1536
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1537

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1538

cond.false:                                       ; preds = %entry
  %4 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1540, !tbaa !564
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %4, i32 0, i32 2, !dbg !1542
  %5 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1542, !tbaa !589
  br label %cond.end, !dbg !1537

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %5, %cond.false ], !dbg !1537
  store %struct._object* %cond, %struct._object** %self, align 8, !dbg !1543, !tbaa !564
  %6 = load %struct._object*, %struct._object** %self, align 8, !dbg !1546, !tbaa !564
  %cmp = icmp eq %struct._object* %6, null, !dbg !1548
  br i1 %cmp, label %if.then, label %if.end, !dbg !1549

if.then:                                          ; preds = %cond.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %self, align 8, !dbg !1550, !tbaa !564
  br label %if.end, !dbg !1551

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load %struct._object*, %struct._object** %self, align 8, !dbg !1552, !tbaa !564
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1553
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1554, !tbaa !604
  %inc = add i64 %8, 1, !dbg !1554
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1554, !tbaa !604
  %9 = load %struct._object*, %struct._object** %self, align 8, !dbg !1555, !tbaa !564
  %10 = bitcast %struct._object** %self to i8*, !dbg !1556
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1556
  ret %struct._object* %9, !dbg !1557
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__text_signature__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata %struct.PyCFunctionObject** %m.addr, metadata !533, metadata !568), !dbg !1558
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !564
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !534, metadata !568), !dbg !1559
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1560, !tbaa !564
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1, !dbg !1561
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1561, !tbaa !623
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0, !dbg !1562
  %2 = load i8*, i8** %ml_name, align 8, !dbg !1562, !tbaa !898
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8, !dbg !1563, !tbaa !564
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1, !dbg !1564
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml1, align 8, !dbg !1564, !tbaa !623
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3, !dbg !1565
  %5 = load i8*, i8** %ml_doc, align 8, !dbg !1565, !tbaa !1381
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %5), !dbg !1566
  ret %struct._object* %call, !dbg !1567
}

declare %struct._object* @_PyType_GetDocFromInternalDoc(i8*, i8*) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!561, !562}
!llvm.ident = !{!563}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !384, globals: !535)
!1 = !DIFile(filename: "methodobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !44, !360, !100, !374, !375, !376}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunctionObject", file: !7, line: 80, baseType: !8)
!7 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 75, size: 320, align: 64, elements: !9)
!9 = !{!10, !355, !358, !359}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !8, file: !7, line: 76, baseType: !11, size: 128, align: 64)
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
!26 = !{!27, !33, !37, !38, !39, !45, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !293, !303, !321, !322, !323, !325, !327, !328, !330, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !354}
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
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !7, line: 40, size: 256, align: 64, elements: !287)
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !7, line: 41, baseType: !34, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !7, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !7, line: 18, baseType: !131)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !7, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !7, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !25, file: !12, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !296, line: 18, size: 320, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 19, baseType: !58, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !296, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !295, file: !296, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !25, file: !12, line: 391, baseType: !304, size: 64, align: 64, offset: 1984)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !306, line: 11, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!307 = !{!308, !309, !314, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 12, baseType: !58, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !305, file: !306, line: 13, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !306, line: 8, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !44, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !305, file: !306, line: 14, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !306, line: 9, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!50, !44, !44, !4}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !305, file: !306, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !305, file: !306, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !25, file: !12, line: 392, baseType: !24, size: 64, align: 64, offset: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !25, file: !12, line: 393, baseType: !44, size: 64, align: 64, offset: 2112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !25, file: !12, line: 394, baseType: !324, size: 64, align: 64, offset: 2176)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !12, line: 325, baseType: !140)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !25, file: !12, line: 395, baseType: !326, size: 64, align: 64, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !12, line: 326, baseType: !216)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !25, file: !12, line: 396, baseType: !16, size: 64, align: 64, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !25, file: !12, line: 397, baseType: !329, size: 64, align: 64, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !12, line: 327, baseType: !216)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !25, file: !12, line: 398, baseType: !331, size: 64, align: 64, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !12, line: 329, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!44, !24, !16}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !25, file: !12, line: 399, baseType: !336, size: 64, align: 64, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !12, line: 328, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!44, !24, !44, !44}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !25, file: !12, line: 400, baseType: !341, size: 64, align: 64, offset: 2560)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !12, line: 307, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !4}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !25, file: !12, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !25, file: !12, line: 402, baseType: !44, size: 64, align: 64, offset: 2688)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !25, file: !12, line: 403, baseType: !44, size: 64, align: 64, offset: 2752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !25, file: !12, line: 404, baseType: !44, size: 64, align: 64, offset: 2816)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !25, file: !12, line: 405, baseType: !44, size: 64, align: 64, offset: 2880)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !25, file: !12, line: 406, baseType: !44, size: 64, align: 64, offset: 2944)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !25, file: !12, line: 407, baseType: !40, size: 64, align: 64, offset: 3008)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !25, file: !12, line: 410, baseType: !353, size: 32, align: 32, offset: 3072)
!353 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !25, file: !12, line: 412, baseType: !40, size: 64, align: 64, offset: 3136)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "m_ml", scope: !8, file: !7, line: 77, baseType: !356, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !7, line: 47, baseType: !286)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "m_self", scope: !8, file: !7, line: 78, baseType: !44, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "m_module", scope: !8, file: !7, line: 79, baseType: !44, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !362, line: 253, baseType: !363)
!362 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !362, line: 246, size: 192, align: 64, elements: !364)
!364 = !{!365, !372}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !363, file: !362, line: 251, baseType: !366, size: 192, align: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !362, line: 247, size: 192, align: 64, elements: !367)
!367 = !{!368, !370, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !366, file: !362, line: 248, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !366, file: !362, line: 249, baseType: !369, size: 64, align: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !366, file: !362, line: 250, baseType: !16, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !363, file: !362, line: 252, baseType: !373, size: 64, align: 64)
!373 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunctionWithKeywords", file: !7, line: 19, baseType: !140)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !378, line: 33, baseType: !379)
!378 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!379 = !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 25, size: 256, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !379, file: !378, line: 26, baseType: !28, size: 192, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !379, file: !378, line: 27, baseType: !383, size: 64, align: 64, offset: 192)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 64, elements: !88)
!384 = !{!385, !392, !406, !411, !414, !417, !427, !434, !437, !442, !459, !464, !471, !486, !495, !500, !506, !510, !526, !531}
!385 = !DISubprogram(name: "PyCFunction_New", scope: !386, file: !386, line: 20, type: !387, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDef*, %struct._object*)* @PyCFunction_New, variables: !389)
!386 = !DIFile(filename: "Objects/methodobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!387 = !DISubroutineType(types: !388)
!388 = !{!44, !356, !44}
!389 = !{!390, !391}
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ml", arg: 1, scope: !385, file: !386, line: 20, type: !356)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !385, file: !386, line: 20, type: !44)
!392 = !DISubprogram(name: "PyCFunction_NewEx", scope: !386, file: !386, line: 26, type: !393, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDef*, %struct._object*, %struct._object*)* @PyCFunction_NewEx, variables: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{!44, !356, !44, !44}
!395 = !{!396, !397, !398, !399, !400, !402, !404}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ml", arg: 1, scope: !392, file: !386, line: 26, type: !356)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !392, file: !386, line: 26, type: !44)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 3, scope: !392, file: !386, line: 26, type: !44)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !392, file: !386, line: 28, type: !5)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !401, file: !386, line: 41, type: !44)
!401 = distinct !DILexicalBlock(scope: !392, file: !386, line: 41, column: 8)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !403, file: !386, line: 43, type: !44)
!403 = distinct !DILexicalBlock(scope: !392, file: !386, line: 43, column: 8)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !405, file: !386, line: 45, type: !360)
!405 = distinct !DILexicalBlock(scope: !392, file: !386, line: 45, column: 8)
!406 = !DISubprogram(name: "PyCFunction_GetFunction", scope: !386, file: !386, line: 50, type: !407, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* (%struct._object*)* @PyCFunction_GetFunction, variables: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!290, !44}
!409 = !{!410}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !406, file: !386, line: 50, type: !44)
!411 = !DISubprogram(name: "PyCFunction_GetSelf", scope: !386, file: !386, line: 60, type: !122, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCFunction_GetSelf, variables: !412)
!412 = !{!413}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !411, file: !386, line: 60, type: !44)
!414 = !DISubprogram(name: "PyCFunction_GetFlags", scope: !386, file: !386, line: 70, type: !150, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyCFunction_GetFlags, variables: !415)
!415 = !{!416}
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !414, file: !386, line: 70, type: !44)
!417 = !DISubprogram(name: "PyCFunction_Call", scope: !386, file: !386, line: 80, type: !141, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyCFunction_Call, variables: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !417, file: !386, line: 80, type: !44)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !417, file: !386, line: 80, type: !44)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !417, file: !386, line: 80, type: !44)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !417, file: !386, line: 84, type: !5)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !417, file: !386, line: 85, type: !290)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !417, file: !386, line: 86, type: !44)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !417, file: !386, line: 87, type: !44)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !417, file: !386, line: 88, type: !16)
!427 = !DISubprogram(name: "PyCFunction_ClearFreeList", scope: !386, file: !386, line: 368, type: !428, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyCFunction_ClearFreeList, variables: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!50}
!430 = !{!431, !432}
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist_size", scope: !427, file: !386, line: 370, type: !50)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !433, file: !386, line: 373, type: !5)
!433 = distinct !DILexicalBlock(scope: !427, file: !386, line: 372, column: 23)
!434 = !DISubprogram(name: "PyCFunction_Fini", scope: !386, file: !386, line: 383, type: !435, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyCFunction_Fini, variables: !2)
!435 = !DISubroutineType(types: !436)
!436 = !{null}
!437 = !DISubprogram(name: "_PyCFunction_DebugMallocStats", scope: !386, file: !386, line: 390, type: !438, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyCFunction_DebugMallocStats, variables: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !51}
!440 = !{!441}
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !437, file: !386, line: 390, type: !51)
!442 = !DISubprogram(name: "meth_dealloc", scope: !386, file: !386, line: 147, type: !443, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyCFunctionObject*)* @meth_dealloc, variables: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !5}
!445 = !{!446, !447, !449, !451, !454, !456}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !442, file: !386, line: 147, type: !5)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !448, file: !386, line: 149, type: !360)
!448 = distinct !DILexicalBlock(scope: !442, file: !386, line: 149, column: 8)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !450, file: !386, line: 150, type: !44)
!450 = distinct !DILexicalBlock(scope: !442, file: !386, line: 150, column: 8)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !386, line: 150, type: !44)
!452 = distinct !DILexicalBlock(scope: !453, file: !386, line: 150, column: 101)
!453 = distinct !DILexicalBlock(scope: !450, file: !386, line: 150, column: 67)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !455, file: !386, line: 151, type: !44)
!455 = distinct !DILexicalBlock(scope: !442, file: !386, line: 151, column: 8)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !386, line: 151, type: !44)
!457 = distinct !DILexicalBlock(scope: !458, file: !386, line: 151, column: 103)
!458 = distinct !DILexicalBlock(scope: !455, file: !386, line: 151, column: 69)
!459 = !DISubprogram(name: "meth_repr", scope: !386, file: !386, line: 272, type: !460, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*)* @meth_repr, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!44, !5}
!462 = !{!463}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !459, file: !386, line: 272, type: !5)
!464 = !DISubprogram(name: "meth_hash", scope: !386, file: !386, line: 310, type: !465, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyCFunctionObject*)* @meth_hash, variables: !467)
!465 = !DISubroutineType(types: !466)
!466 = !{!224, !5}
!467 = !{!468, !469, !470}
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !464, file: !386, line: 310, type: !5)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !464, file: !386, line: 312, type: !224)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !464, file: !386, line: 312, type: !224)
!471 = !DISubprogram(name: "meth_traverse", scope: !386, file: !386, line: 236, type: !472, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @meth_traverse, variables: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!50, !5, !269, !4}
!474 = !{!475, !476, !477, !478, !482}
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !471, file: !386, line: 236, type: !5)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !471, file: !386, line: 236, type: !269)
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !471, file: !386, line: 236, type: !4)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !479, file: !386, line: 238, type: !50)
!479 = distinct !DILexicalBlock(scope: !480, file: !386, line: 238, column: 25)
!480 = distinct !DILexicalBlock(scope: !481, file: !386, line: 238, column: 14)
!481 = distinct !DILexicalBlock(scope: !471, file: !386, line: 238, column: 8)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !483, file: !386, line: 239, type: !50)
!483 = distinct !DILexicalBlock(scope: !484, file: !386, line: 239, column: 27)
!484 = distinct !DILexicalBlock(scope: !485, file: !386, line: 239, column: 14)
!485 = distinct !DILexicalBlock(scope: !471, file: !386, line: 239, column: 8)
!486 = !DISubprogram(name: "meth_richcompare", scope: !386, file: !386, line: 284, type: !277, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @meth_richcompare, variables: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !486, file: !386, line: 284, type: !44)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !486, file: !386, line: 284, type: !44)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !486, file: !386, line: 284, type: !50)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !486, file: !386, line: 286, type: !5)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !486, file: !386, line: 286, type: !5)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !486, file: !386, line: 287, type: !44)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !486, file: !386, line: 288, type: !50)
!495 = !DISubprogram(name: "meth_reduce", scope: !386, file: !386, line: 163, type: !460, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*)* @meth_reduce, variables: !496)
!496 = !{!497, !498, !499}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !495, file: !386, line: 163, type: !5)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !495, file: !386, line: 165, type: !44)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !495, file: !386, line: 166, type: !44)
!500 = !DISubprogram(name: "meth_get__doc__", scope: !386, file: !386, line: 189, type: !501, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__doc__, variables: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!44, !5, !4}
!503 = !{!504, !505}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !500, file: !386, line: 189, type: !5)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !500, file: !386, line: 189, type: !4)
!506 = !DISubprogram(name: "meth_get__name__", scope: !386, file: !386, line: 195, type: !501, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__name__, variables: !507)
!507 = !{!508, !509}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !506, file: !386, line: 195, type: !5)
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !506, file: !386, line: 195, type: !4)
!510 = !DISubprogram(name: "meth_get__qualname__", scope: !386, file: !386, line: 201, type: !501, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__qualname__, variables: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !521, !524}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !510, file: !386, line: 201, type: !5)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !510, file: !386, line: 201, type: !4)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !510, file: !386, line: 211, type: !44)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type_qualname", scope: !510, file: !386, line: 211, type: !44)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !510, file: !386, line: 211, type: !44)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !518, file: !386, line: 226, type: !44)
!518 = distinct !DILexicalBlock(scope: !519, file: !386, line: 226, column: 12)
!519 = distinct !DILexicalBlock(scope: !520, file: !386, line: 223, column: 88)
!520 = distinct !DILexicalBlock(scope: !510, file: !386, line: 223, column: 9)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !522, file: !386, line: 226, type: !44)
!522 = distinct !DILexicalBlock(scope: !523, file: !386, line: 226, column: 109)
!523 = distinct !DILexicalBlock(scope: !518, file: !386, line: 226, column: 75)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !386, line: 231, type: !44)
!525 = distinct !DILexicalBlock(scope: !510, file: !386, line: 231, column: 8)
!526 = !DISubprogram(name: "meth_get__self__", scope: !386, file: !386, line: 244, type: !501, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__self__, variables: !527)
!527 = !{!528, !529, !530}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !526, file: !386, line: 244, type: !5)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !526, file: !386, line: 244, type: !4)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !526, file: !386, line: 246, type: !44)
!531 = !DISubprogram(name: "meth_get__text_signature__", scope: !386, file: !386, line: 183, type: !501, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__text_signature__, variables: !532)
!532 = !{!533, !534}
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !531, file: !386, line: 183, type: !5)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !531, file: !386, line: 183, type: !4)
!535 = !{!536, !538, !539, !540, !544, !552, !555, !560}
!536 = !DIGlobalVariable(name: "PyCFunction_Type", scope: !0, file: !386, line: 330, type: !537, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCFunction_Type)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !12, line: 422, baseType: !25)
!538 = !DIGlobalVariable(name: "free_list", scope: !0, file: !386, line: 10, type: !5, isLocal: true, isDefinition: true, variable: %struct.PyCFunctionObject** @free_list)
!539 = !DIGlobalVariable(name: "numfree", scope: !0, file: !386, line: 11, type: !50, isLocal: true, isDefinition: true, variable: i32* @numfree)
!540 = !DIGlobalVariable(name: "meth_methods", scope: !0, file: !386, line: 177, type: !541, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @meth_methods)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 512, align: 64, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 2)
!544 = !DIGlobalVariable(name: "PyId_getattr", scope: !495, file: !386, line: 167, type: !545, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @meth_reduce.PyId_getattr)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !12, line: 144, baseType: !546)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !12, line: 140, size: 192, align: 64, elements: !547)
!547 = !{!548, !550, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !546, file: !12, line: 141, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !546, file: !12, line: 142, baseType: !34, size: 64, align: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !546, file: !12, line: 143, baseType: !44, size: 64, align: 64, offset: 128)
!552 = !DIGlobalVariable(name: "meth_members", scope: !0, file: !386, line: 266, type: !553, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @meth_members)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 640, align: 64, elements: !542)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !296, line: 24, baseType: !295)
!555 = !DIGlobalVariable(name: "meth_getsets", scope: !0, file: !386, line: 255, type: !556, isLocal: true, isDefinition: true, variable: [6 x %struct.PyGetSetDef]* @meth_getsets)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 1920, align: 64, elements: !558)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !306, line: 17, baseType: !305)
!558 = !{!559}
!559 = !DISubrange(count: 6)
!560 = !DIGlobalVariable(name: "PyId___qualname__", scope: !510, file: !386, line: 212, type: !545, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @meth_get__qualname__.PyId___qualname__)
!561 = !{i32 2, !"Dwarf Version", i32 4}
!562 = !{i32 2, !"Debug Info Version", i32 3}
!563 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!564 = !{!565, !565, i64 0}
!565 = !{!"any pointer", !566, i64 0}
!566 = !{!"omnipotent char", !567, i64 0}
!567 = !{!"Simple C/C++ TBAA"}
!568 = !DIExpression()
!569 = !DILocation(line: 20, column: 30, scope: !385)
!570 = !DILocation(line: 20, column: 44, scope: !385)
!571 = !DILocation(line: 22, column: 30, scope: !385)
!572 = !DILocation(line: 22, column: 34, scope: !385)
!573 = !DILocation(line: 22, column: 12, scope: !385)
!574 = !DILocation(line: 22, column: 5, scope: !385)
!575 = !DILocation(line: 26, column: 32, scope: !392)
!576 = !DILocation(line: 26, column: 46, scope: !392)
!577 = !DILocation(line: 26, column: 62, scope: !392)
!578 = !DILocation(line: 28, column: 5, scope: !392)
!579 = !DILocation(line: 28, column: 24, scope: !392)
!580 = !DILocation(line: 29, column: 10, scope: !392)
!581 = !DILocation(line: 29, column: 8, scope: !392)
!582 = !DILocation(line: 30, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !392, file: !386, line: 30, column: 9)
!584 = !DILocation(line: 30, column: 12, scope: !583)
!585 = !DILocation(line: 30, column: 9, scope: !392)
!586 = !DILocation(line: 31, column: 43, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !386, line: 30, column: 27)
!588 = !DILocation(line: 31, column: 47, scope: !587)
!589 = !{!590, !565, i64 24}
!590 = !{!"", !591, i64 0, !565, i64 16, !565, i64 24, !565, i64 32}
!591 = !{!"_object", !592, i64 0, !565, i64 8}
!592 = !{!"long", !566, i64 0}
!593 = !DILocation(line: 31, column: 21, scope: !587)
!594 = !DILocation(line: 31, column: 19, scope: !587)
!595 = !DILocation(line: 32, column: 31, scope: !587)
!596 = !DILocation(line: 32, column: 19, scope: !587)
!597 = !DILocation(line: 32, column: 37, scope: !587)
!598 = !DILocation(line: 32, column: 46, scope: !587)
!599 = !{!591, !565, i64 8}
!600 = !DILocation(line: 32, column: 98, scope: !587)
!601 = !DILocation(line: 32, column: 85, scope: !587)
!602 = !DILocation(line: 32, column: 105, scope: !587)
!603 = !DILocation(line: 32, column: 116, scope: !587)
!604 = !{!591, !592, i64 0}
!605 = !DILocation(line: 32, column: 123, scope: !587)
!606 = !DILocation(line: 33, column: 16, scope: !587)
!607 = !{!608, !608, i64 0}
!608 = !{!"int", !566, i64 0}
!609 = !DILocation(line: 34, column: 5, scope: !587)
!610 = !DILocation(line: 36, column: 38, scope: !611)
!611 = distinct !DILexicalBlock(scope: !583, file: !386, line: 35, column: 10)
!612 = !DILocation(line: 36, column: 16, scope: !611)
!613 = !DILocation(line: 36, column: 12, scope: !611)
!614 = !DILocation(line: 37, column: 13, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !386, line: 37, column: 13)
!616 = !DILocation(line: 37, column: 16, scope: !615)
!617 = !DILocation(line: 37, column: 13, scope: !611)
!618 = !DILocation(line: 38, column: 13, scope: !615)
!619 = !DILocation(line: 40, column: 16, scope: !392)
!620 = !DILocation(line: 40, column: 5, scope: !392)
!621 = !DILocation(line: 40, column: 9, scope: !392)
!622 = !DILocation(line: 40, column: 14, scope: !392)
!623 = !{!590, !565, i64 16}
!624 = !DILocation(line: 41, column: 5, scope: !392)
!625 = !DILocation(line: 41, column: 10, scope: !626)
!626 = !DILexicalBlockFile(scope: !401, file: !386, discriminator: 1)
!627 = !DILocation(line: 41, column: 20, scope: !401)
!628 = !DILocation(line: 41, column: 51, scope: !401)
!629 = !DILocation(line: 41, column: 62, scope: !630)
!630 = distinct !DILexicalBlock(scope: !401, file: !386, line: 41, column: 62)
!631 = !DILocation(line: 41, column: 78, scope: !630)
!632 = !DILocation(line: 41, column: 62, scope: !401)
!633 = !DILocation(line: 41, column: 109, scope: !634)
!634 = !DILexicalBlockFile(scope: !630, file: !386, discriminator: 2)
!635 = !DILocation(line: 41, column: 128, scope: !630)
!636 = !DILocation(line: 41, column: 137, scope: !630)
!637 = !DILocation(line: 41, column: 93, scope: !630)
!638 = !DILocation(line: 41, column: 142, scope: !639)
!639 = !DILexicalBlockFile(scope: !640, file: !386, discriminator: 4)
!640 = !DILexicalBlockFile(scope: !392, file: !386, discriminator: 3)
!641 = !DILocation(line: 41, column: 142, scope: !401)
!642 = !DILocation(line: 41, column: 142, scope: !643)
!643 = !DILexicalBlockFile(scope: !401, file: !386, discriminator: 5)
!644 = !DILocation(line: 42, column: 18, scope: !392)
!645 = !DILocation(line: 42, column: 5, scope: !392)
!646 = !DILocation(line: 42, column: 9, scope: !392)
!647 = !DILocation(line: 42, column: 16, scope: !392)
!648 = !DILocation(line: 43, column: 5, scope: !392)
!649 = !DILocation(line: 43, column: 10, scope: !650)
!650 = !DILexicalBlockFile(scope: !403, file: !386, discriminator: 1)
!651 = !DILocation(line: 43, column: 20, scope: !403)
!652 = !DILocation(line: 43, column: 51, scope: !403)
!653 = !DILocation(line: 43, column: 64, scope: !654)
!654 = distinct !DILexicalBlock(scope: !403, file: !386, line: 43, column: 64)
!655 = !DILocation(line: 43, column: 80, scope: !654)
!656 = !DILocation(line: 43, column: 64, scope: !403)
!657 = !DILocation(line: 43, column: 111, scope: !658)
!658 = !DILexicalBlockFile(scope: !654, file: !386, discriminator: 2)
!659 = !DILocation(line: 43, column: 130, scope: !654)
!660 = !DILocation(line: 43, column: 139, scope: !654)
!661 = !DILocation(line: 43, column: 95, scope: !654)
!662 = !DILocation(line: 43, column: 144, scope: !639)
!663 = !DILocation(line: 43, column: 144, scope: !403)
!664 = !DILocation(line: 43, column: 144, scope: !665)
!665 = !DILexicalBlockFile(scope: !403, file: !386, discriminator: 5)
!666 = !DILocation(line: 44, column: 20, scope: !392)
!667 = !DILocation(line: 44, column: 5, scope: !392)
!668 = !DILocation(line: 44, column: 9, scope: !392)
!669 = !DILocation(line: 44, column: 18, scope: !392)
!670 = !{!590, !565, i64 32}
!671 = !DILocation(line: 45, column: 5, scope: !392)
!672 = !DILocation(line: 45, column: 10, scope: !673)
!673 = !DILexicalBlockFile(scope: !405, file: !386, discriminator: 1)
!674 = !DILocation(line: 45, column: 21, scope: !405)
!675 = !DILocation(line: 45, column: 40, scope: !405)
!676 = !DILocation(line: 45, column: 26, scope: !405)
!677 = !DILocation(line: 45, column: 43, scope: !405)
!678 = !DILocation(line: 45, column: 54, scope: !679)
!679 = distinct !DILexicalBlock(scope: !405, file: !386, line: 45, column: 52)
!680 = !DILocation(line: 45, column: 58, scope: !679)
!681 = !DILocation(line: 45, column: 61, scope: !679)
!682 = !{!683, !592, i64 16}
!683 = !{!"", !565, i64 0, !565, i64 8, !592, i64 16}
!684 = !DILocation(line: 45, column: 69, scope: !679)
!685 = !DILocation(line: 45, column: 77, scope: !679)
!686 = !DILocation(line: 45, column: 52, scope: !405)
!687 = !DILocation(line: 45, column: 86, scope: !688)
!688 = !DILexicalBlockFile(scope: !679, file: !386, discriminator: 2)
!689 = !DILocation(line: 45, column: 130, scope: !690)
!690 = !DILexicalBlockFile(scope: !405, file: !386, discriminator: 3)
!691 = !DILocation(line: 45, column: 155, scope: !692)
!692 = !DILexicalBlockFile(scope: !693, file: !386, discriminator: 4)
!693 = distinct !DILexicalBlock(scope: !405, file: !386, line: 45, column: 133)
!694 = !DILocation(line: 45, column: 159, scope: !693)
!695 = !DILocation(line: 45, column: 162, scope: !693)
!696 = !DILocation(line: 45, column: 170, scope: !693)
!697 = !DILocation(line: 45, column: 197, scope: !693)
!698 = !DILocation(line: 45, column: 136, scope: !693)
!699 = !DILocation(line: 45, column: 140, scope: !693)
!700 = !DILocation(line: 45, column: 143, scope: !693)
!701 = !DILocation(line: 45, column: 151, scope: !693)
!702 = !DILocation(line: 45, column: 226, scope: !693)
!703 = !DILocation(line: 45, column: 226, scope: !704)
!704 = !DILexicalBlockFile(scope: !693, file: !386, discriminator: 5)
!705 = !DILocation(line: 45, column: 255, scope: !706)
!706 = !DILexicalBlockFile(scope: !405, file: !386, discriminator: 6)
!707 = !DILocation(line: 45, column: 239, scope: !405)
!708 = !DILocation(line: 45, column: 242, scope: !405)
!709 = !DILocation(line: 45, column: 245, scope: !405)
!710 = !DILocation(line: 45, column: 253, scope: !405)
!711 = !{!683, !565, i64 0}
!712 = !DILocation(line: 45, column: 290, scope: !405)
!713 = !DILocation(line: 45, column: 309, scope: !405)
!714 = !DILocation(line: 45, column: 312, scope: !405)
!715 = !{!683, !565, i64 8}
!716 = !DILocation(line: 45, column: 274, scope: !405)
!717 = !DILocation(line: 45, column: 277, scope: !405)
!718 = !DILocation(line: 45, column: 280, scope: !405)
!719 = !DILocation(line: 45, column: 288, scope: !405)
!720 = !DILocation(line: 45, column: 349, scope: !405)
!721 = !DILocation(line: 45, column: 321, scope: !405)
!722 = !DILocation(line: 45, column: 324, scope: !405)
!723 = !DILocation(line: 45, column: 327, scope: !405)
!724 = !DILocation(line: 45, column: 336, scope: !405)
!725 = !DILocation(line: 45, column: 339, scope: !405)
!726 = !DILocation(line: 45, column: 347, scope: !405)
!727 = !DILocation(line: 45, column: 384, scope: !405)
!728 = !DILocation(line: 45, column: 352, scope: !405)
!729 = !DILocation(line: 45, column: 371, scope: !405)
!730 = !DILocation(line: 45, column: 374, scope: !405)
!731 = !DILocation(line: 45, column: 382, scope: !405)
!732 = !DILocation(line: 45, column: 387, scope: !392)
!733 = !DILocation(line: 45, column: 387, scope: !405)
!734 = !DILocation(line: 45, column: 387, scope: !735)
!735 = !DILexicalBlockFile(scope: !405, file: !386, discriminator: 7)
!736 = !DILocation(line: 46, column: 24, scope: !392)
!737 = !DILocation(line: 46, column: 12, scope: !392)
!738 = !DILocation(line: 46, column: 5, scope: !392)
!739 = !DILocation(line: 47, column: 1, scope: !392)
!740 = !DILocation(line: 50, column: 35, scope: !406)
!741 = !DILocation(line: 52, column: 25, scope: !742)
!742 = distinct !DILexicalBlock(scope: !406, file: !386, line: 52, column: 9)
!743 = !DILocation(line: 52, column: 31, scope: !742)
!744 = !DILocation(line: 52, column: 40, scope: !742)
!745 = !DILocation(line: 52, column: 9, scope: !406)
!746 = !DILocation(line: 53, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !742, file: !386, line: 52, column: 63)
!748 = !DILocation(line: 54, column: 9, scope: !747)
!749 = !DILocation(line: 56, column: 35, scope: !406)
!750 = !DILocation(line: 56, column: 14, scope: !406)
!751 = !DILocation(line: 56, column: 42, scope: !406)
!752 = !DILocation(line: 56, column: 50, scope: !406)
!753 = !{!754, !565, i64 8}
!754 = !{!"PyMethodDef", !565, i64 0, !565, i64 8, !608, i64 16, !565, i64 24}
!755 = !DILocation(line: 56, column: 5, scope: !406)
!756 = !DILocation(line: 57, column: 1, scope: !406)
!757 = !DILocation(line: 60, column: 31, scope: !411)
!758 = !DILocation(line: 62, column: 25, scope: !759)
!759 = distinct !DILexicalBlock(scope: !411, file: !386, line: 62, column: 9)
!760 = !DILocation(line: 62, column: 31, scope: !759)
!761 = !DILocation(line: 62, column: 40, scope: !759)
!762 = !DILocation(line: 62, column: 9, scope: !411)
!763 = !DILocation(line: 63, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !386, line: 62, column: 63)
!765 = !DILocation(line: 64, column: 9, scope: !764)
!766 = !DILocation(line: 66, column: 35, scope: !411)
!767 = !DILocation(line: 66, column: 14, scope: !411)
!768 = !DILocation(line: 66, column: 42, scope: !411)
!769 = !DILocation(line: 66, column: 50, scope: !411)
!770 = !{!754, !608, i64 16}
!771 = !DILocation(line: 66, column: 59, scope: !411)
!772 = !DILocation(line: 66, column: 13, scope: !411)
!773 = !DILocation(line: 66, column: 13, scope: !774)
!774 = !DILexicalBlockFile(scope: !411, file: !386, discriminator: 1)
!775 = !DILocation(line: 66, column: 105, scope: !776)
!776 = !DILexicalBlockFile(scope: !411, file: !386, discriminator: 2)
!777 = !DILocation(line: 66, column: 84, scope: !411)
!778 = !DILocation(line: 66, column: 112, scope: !411)
!779 = !DILocation(line: 66, column: 5, scope: !780)
!780 = !DILexicalBlockFile(scope: !781, file: !386, discriminator: 4)
!781 = !DILexicalBlockFile(scope: !411, file: !386, discriminator: 3)
!782 = !DILocation(line: 67, column: 1, scope: !411)
!783 = !DILocation(line: 70, column: 32, scope: !414)
!784 = !DILocation(line: 72, column: 25, scope: !785)
!785 = distinct !DILexicalBlock(scope: !414, file: !386, line: 72, column: 9)
!786 = !DILocation(line: 72, column: 31, scope: !785)
!787 = !DILocation(line: 72, column: 40, scope: !785)
!788 = !DILocation(line: 72, column: 9, scope: !414)
!789 = !DILocation(line: 73, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !386, line: 72, column: 63)
!791 = !DILocation(line: 74, column: 9, scope: !790)
!792 = !DILocation(line: 76, column: 35, scope: !414)
!793 = !DILocation(line: 76, column: 14, scope: !414)
!794 = !DILocation(line: 76, column: 42, scope: !414)
!795 = !DILocation(line: 76, column: 50, scope: !414)
!796 = !DILocation(line: 76, column: 5, scope: !414)
!797 = !DILocation(line: 77, column: 1, scope: !414)
!798 = !DILocation(line: 80, column: 28, scope: !417)
!799 = !DILocation(line: 80, column: 44, scope: !417)
!800 = !DILocation(line: 80, column: 59, scope: !417)
!801 = !DILocation(line: 84, column: 5, scope: !417)
!802 = !DILocation(line: 84, column: 24, scope: !417)
!803 = !DILocation(line: 84, column: 48, scope: !417)
!804 = !DILocation(line: 84, column: 28, scope: !417)
!805 = !DILocation(line: 85, column: 5, scope: !417)
!806 = !DILocation(line: 85, column: 17, scope: !417)
!807 = !DILocation(line: 85, column: 47, scope: !417)
!808 = !DILocation(line: 85, column: 26, scope: !417)
!809 = !DILocation(line: 85, column: 56, scope: !417)
!810 = !DILocation(line: 85, column: 64, scope: !417)
!811 = !DILocation(line: 86, column: 5, scope: !417)
!812 = !DILocation(line: 86, column: 15, scope: !417)
!813 = !DILocation(line: 86, column: 45, scope: !417)
!814 = !DILocation(line: 86, column: 24, scope: !417)
!815 = !DILocation(line: 86, column: 54, scope: !417)
!816 = !DILocation(line: 86, column: 62, scope: !417)
!817 = !DILocation(line: 86, column: 71, scope: !417)
!818 = !DILocation(line: 86, column: 23, scope: !417)
!819 = !DILocation(line: 86, column: 23, scope: !820)
!820 = !DILexicalBlockFile(scope: !417, file: !386, discriminator: 1)
!821 = !DILocation(line: 86, column: 117, scope: !822)
!822 = !DILexicalBlockFile(scope: !417, file: !386, discriminator: 2)
!823 = !DILocation(line: 86, column: 96, scope: !417)
!824 = !DILocation(line: 86, column: 126, scope: !417)
!825 = !DILocation(line: 86, column: 15, scope: !826)
!826 = !DILexicalBlockFile(scope: !827, file: !386, discriminator: 4)
!827 = !DILexicalBlockFile(scope: !417, file: !386, discriminator: 3)
!828 = !DILocation(line: 87, column: 5, scope: !417)
!829 = !DILocation(line: 87, column: 15, scope: !417)
!830 = !DILocation(line: 88, column: 5, scope: !417)
!831 = !DILocation(line: 88, column: 16, scope: !417)
!832 = !DILocation(line: 90, column: 36, scope: !417)
!833 = !DILocation(line: 90, column: 15, scope: !417)
!834 = !DILocation(line: 90, column: 45, scope: !417)
!835 = !DILocation(line: 90, column: 53, scope: !417)
!836 = !DILocation(line: 90, column: 63, scope: !417)
!837 = !DILocation(line: 90, column: 5, scope: !417)
!838 = !DILocation(line: 92, column: 13, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !386, line: 92, column: 13)
!840 = distinct !DILexicalBlock(scope: !417, file: !386, line: 90, column: 94)
!841 = !DILocation(line: 92, column: 16, scope: !839)
!842 = !DILocation(line: 92, column: 30, scope: !839)
!843 = !DILocation(line: 92, column: 45, scope: !844)
!844 = !DILexicalBlockFile(scope: !839, file: !386, discriminator: 1)
!845 = !DILocation(line: 92, column: 33, scope: !839)
!846 = !DILocation(line: 92, column: 49, scope: !839)
!847 = !DILocation(line: 92, column: 13, scope: !840)
!848 = !DILocation(line: 93, column: 21, scope: !849)
!849 = distinct !DILexicalBlock(scope: !839, file: !386, line: 92, column: 55)
!850 = !DILocation(line: 93, column: 27, scope: !849)
!851 = !DILocation(line: 93, column: 33, scope: !849)
!852 = !DILocation(line: 93, column: 19, scope: !849)
!853 = !DILocation(line: 93, column: 17, scope: !849)
!854 = !DILocation(line: 95, column: 20, scope: !849)
!855 = !DILocation(line: 95, column: 13, scope: !849)
!856 = !DILocation(line: 97, column: 9, scope: !840)
!857 = !DILocation(line: 99, column: 42, scope: !840)
!858 = !DILocation(line: 99, column: 17, scope: !840)
!859 = !DILocation(line: 99, column: 48, scope: !840)
!860 = !DILocation(line: 99, column: 54, scope: !840)
!861 = !DILocation(line: 99, column: 59, scope: !840)
!862 = !DILocation(line: 99, column: 15, scope: !840)
!863 = !DILocation(line: 99, column: 13, scope: !840)
!864 = !DILocation(line: 101, column: 16, scope: !840)
!865 = !DILocation(line: 101, column: 9, scope: !840)
!866 = !DILocation(line: 103, column: 13, scope: !867)
!867 = distinct !DILexicalBlock(scope: !840, file: !386, line: 103, column: 13)
!868 = !DILocation(line: 103, column: 16, scope: !867)
!869 = !DILocation(line: 103, column: 30, scope: !867)
!870 = !DILocation(line: 103, column: 45, scope: !871)
!871 = !DILexicalBlockFile(scope: !867, file: !386, discriminator: 1)
!872 = !DILocation(line: 103, column: 33, scope: !867)
!873 = !DILocation(line: 103, column: 49, scope: !867)
!874 = !DILocation(line: 103, column: 13, scope: !840)
!875 = !DILocation(line: 104, column: 37, scope: !876)
!876 = distinct !DILexicalBlock(scope: !867, file: !386, line: 103, column: 55)
!877 = !DILocation(line: 104, column: 22, scope: !876)
!878 = !DILocation(line: 104, column: 44, scope: !876)
!879 = !{!880, !592, i64 16}
!880 = !{!"", !591, i64 0, !592, i64 16}
!881 = !DILocation(line: 104, column: 18, scope: !876)
!882 = !{!592, !592, i64 0}
!883 = !DILocation(line: 105, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !386, line: 105, column: 17)
!885 = !DILocation(line: 105, column: 22, scope: !884)
!886 = !DILocation(line: 105, column: 17, scope: !876)
!887 = !DILocation(line: 106, column: 25, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !386, line: 105, column: 28)
!889 = !DILocation(line: 106, column: 31, scope: !888)
!890 = !DILocation(line: 106, column: 23, scope: !888)
!891 = !DILocation(line: 106, column: 21, scope: !888)
!892 = !DILocation(line: 108, column: 24, scope: !888)
!893 = !DILocation(line: 108, column: 17, scope: !888)
!894 = !DILocation(line: 110, column: 26, scope: !876)
!895 = !DILocation(line: 112, column: 17, scope: !876)
!896 = !DILocation(line: 112, column: 20, scope: !876)
!897 = !DILocation(line: 112, column: 26, scope: !876)
!898 = !{!754, !565, i64 0}
!899 = !DILocation(line: 112, column: 35, scope: !876)
!900 = !DILocation(line: 110, column: 13, scope: !876)
!901 = !DILocation(line: 113, column: 13, scope: !876)
!902 = !DILocation(line: 115, column: 9, scope: !840)
!903 = !DILocation(line: 117, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !840, file: !386, line: 117, column: 13)
!905 = !DILocation(line: 117, column: 16, scope: !904)
!906 = !DILocation(line: 117, column: 30, scope: !904)
!907 = !DILocation(line: 117, column: 45, scope: !908)
!908 = !DILexicalBlockFile(scope: !904, file: !386, discriminator: 1)
!909 = !DILocation(line: 117, column: 33, scope: !904)
!910 = !DILocation(line: 117, column: 49, scope: !904)
!911 = !DILocation(line: 117, column: 13, scope: !840)
!912 = !DILocation(line: 118, column: 37, scope: !913)
!913 = distinct !DILexicalBlock(scope: !904, file: !386, line: 117, column: 55)
!914 = !DILocation(line: 118, column: 22, scope: !913)
!915 = !DILocation(line: 118, column: 44, scope: !913)
!916 = !DILocation(line: 118, column: 18, scope: !913)
!917 = !DILocation(line: 119, column: 17, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !386, line: 119, column: 17)
!919 = !DILocation(line: 119, column: 22, scope: !918)
!920 = !DILocation(line: 119, column: 17, scope: !913)
!921 = !DILocation(line: 120, column: 25, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !386, line: 119, column: 28)
!923 = !DILocation(line: 120, column: 31, scope: !922)
!924 = !DILocation(line: 120, column: 57, scope: !922)
!925 = !DILocation(line: 120, column: 39, scope: !922)
!926 = !DILocation(line: 120, column: 64, scope: !922)
!927 = !DILocation(line: 120, column: 38, scope: !922)
!928 = !DILocation(line: 120, column: 23, scope: !922)
!929 = !DILocation(line: 120, column: 21, scope: !922)
!930 = !DILocation(line: 122, column: 24, scope: !922)
!931 = !DILocation(line: 122, column: 17, scope: !922)
!932 = !DILocation(line: 124, column: 26, scope: !913)
!933 = !DILocation(line: 126, column: 17, scope: !913)
!934 = !DILocation(line: 126, column: 20, scope: !913)
!935 = !DILocation(line: 126, column: 26, scope: !913)
!936 = !DILocation(line: 126, column: 35, scope: !913)
!937 = !DILocation(line: 124, column: 13, scope: !913)
!938 = !DILocation(line: 127, column: 13, scope: !913)
!939 = !DILocation(line: 129, column: 9, scope: !840)
!940 = !DILocation(line: 131, column: 25, scope: !840)
!941 = !DILocation(line: 131, column: 9, scope: !840)
!942 = !DILocation(line: 135, column: 9, scope: !840)
!943 = !DILocation(line: 137, column: 18, scope: !417)
!944 = !DILocation(line: 138, column: 18, scope: !417)
!945 = !DILocation(line: 138, column: 21, scope: !417)
!946 = !DILocation(line: 138, column: 27, scope: !417)
!947 = !DILocation(line: 137, column: 5, scope: !417)
!948 = !DILocation(line: 139, column: 5, scope: !417)
!949 = !DILocation(line: 142, column: 1, scope: !417)
!950 = !DILocation(line: 147, column: 33, scope: !442)
!951 = !DILocation(line: 149, column: 5, scope: !442)
!952 = !DILocation(line: 149, column: 10, scope: !953)
!953 = !DILexicalBlockFile(scope: !448, file: !386, discriminator: 1)
!954 = !DILocation(line: 149, column: 21, scope: !448)
!955 = !DILocation(line: 149, column: 40, scope: !448)
!956 = !DILocation(line: 149, column: 26, scope: !448)
!957 = !DILocation(line: 149, column: 42, scope: !448)
!958 = !DILocation(line: 149, column: 61, scope: !448)
!959 = !DILocation(line: 149, column: 86, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !386, discriminator: 2)
!961 = distinct !DILexicalBlock(scope: !448, file: !386, line: 149, column: 64)
!962 = !DILocation(line: 149, column: 90, scope: !961)
!963 = !DILocation(line: 149, column: 93, scope: !961)
!964 = !DILocation(line: 149, column: 101, scope: !961)
!965 = !DILocation(line: 149, column: 128, scope: !961)
!966 = !DILocation(line: 149, column: 67, scope: !961)
!967 = !DILocation(line: 149, column: 71, scope: !961)
!968 = !DILocation(line: 149, column: 74, scope: !961)
!969 = !DILocation(line: 149, column: 82, scope: !961)
!970 = !DILocation(line: 149, column: 157, scope: !961)
!971 = !DILocation(line: 149, column: 157, scope: !972)
!972 = !DILexicalBlockFile(scope: !961, file: !386, discriminator: 3)
!973 = !DILocation(line: 149, column: 198, scope: !974)
!974 = !DILexicalBlockFile(scope: !448, file: !386, discriminator: 4)
!975 = !DILocation(line: 149, column: 201, scope: !448)
!976 = !DILocation(line: 149, column: 204, scope: !448)
!977 = !DILocation(line: 149, column: 170, scope: !448)
!978 = !DILocation(line: 149, column: 173, scope: !448)
!979 = !DILocation(line: 149, column: 176, scope: !448)
!980 = !DILocation(line: 149, column: 185, scope: !448)
!981 = !DILocation(line: 149, column: 188, scope: !448)
!982 = !DILocation(line: 149, column: 196, scope: !448)
!983 = !DILocation(line: 149, column: 241, scope: !448)
!984 = !DILocation(line: 149, column: 244, scope: !448)
!985 = !DILocation(line: 149, column: 247, scope: !448)
!986 = !DILocation(line: 149, column: 213, scope: !448)
!987 = !DILocation(line: 149, column: 216, scope: !448)
!988 = !DILocation(line: 149, column: 219, scope: !448)
!989 = !DILocation(line: 149, column: 228, scope: !448)
!990 = !DILocation(line: 149, column: 231, scope: !448)
!991 = !DILocation(line: 149, column: 239, scope: !448)
!992 = !DILocation(line: 149, column: 256, scope: !448)
!993 = !DILocation(line: 149, column: 259, scope: !448)
!994 = !DILocation(line: 149, column: 262, scope: !448)
!995 = !DILocation(line: 149, column: 270, scope: !448)
!996 = !DILocation(line: 149, column: 284, scope: !442)
!997 = !DILocation(line: 149, column: 284, scope: !448)
!998 = !DILocation(line: 150, column: 5, scope: !442)
!999 = !DILocation(line: 150, column: 10, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !450, file: !386, discriminator: 1)
!1001 = !DILocation(line: 150, column: 20, scope: !450)
!1002 = !DILocation(line: 150, column: 51, scope: !450)
!1003 = !DILocation(line: 150, column: 54, scope: !450)
!1004 = !DILocation(line: 150, column: 67, scope: !453)
!1005 = !DILocation(line: 150, column: 83, scope: !453)
!1006 = !DILocation(line: 150, column: 67, scope: !450)
!1007 = !DILocation(line: 150, column: 98, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !453, file: !386, discriminator: 2)
!1009 = !DILocation(line: 150, column: 103, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !452, file: !386, discriminator: 4)
!1011 = !DILocation(line: 150, column: 113, scope: !452)
!1012 = !DILocation(line: 150, column: 143, scope: !452)
!1013 = !DILocation(line: 150, column: 169, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !452, file: !386, line: 150, column: 166)
!1015 = !DILocation(line: 150, column: 186, scope: !1014)
!1016 = !DILocation(line: 150, column: 166, scope: !1014)
!1017 = !DILocation(line: 150, column: 196, scope: !1014)
!1018 = !DILocation(line: 150, column: 166, scope: !452)
!1019 = !DILocation(line: 150, column: 166, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !452, file: !386, discriminator: 5)
!1021 = !DILocation(line: 150, column: 227, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1014, file: !386, discriminator: 6)
!1023 = !DILocation(line: 150, column: 245, scope: !1014)
!1024 = !DILocation(line: 150, column: 255, scope: !1014)
!1025 = !{!1026, !565, i64 48}
!1026 = !{!"_typeobject", !880, i64 0, !565, i64 24, !592, i64 32, !592, i64 40, !565, i64 48, !565, i64 56, !565, i64 64, !565, i64 72, !565, i64 80, !565, i64 88, !565, i64 96, !565, i64 104, !565, i64 112, !565, i64 120, !565, i64 128, !565, i64 136, !565, i64 144, !565, i64 152, !565, i64 160, !592, i64 168, !565, i64 176, !565, i64 184, !565, i64 192, !565, i64 200, !592, i64 208, !565, i64 216, !565, i64 224, !565, i64 232, !565, i64 240, !565, i64 248, !565, i64 256, !565, i64 264, !565, i64 272, !565, i64 280, !592, i64 288, !565, i64 296, !565, i64 304, !565, i64 312, !565, i64 320, !565, i64 328, !565, i64 336, !565, i64 344, !565, i64 352, !565, i64 360, !565, i64 368, !565, i64 376, !608, i64 384, !565, i64 392}
!1027 = !DILocation(line: 150, column: 280, scope: !1014)
!1028 = !DILocation(line: 150, column: 211, scope: !1014)
!1029 = !DILocation(line: 150, column: 299, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !453, file: !386, discriminator: 7)
!1031 = !DILocation(line: 150, column: 299, scope: !452)
!1032 = !DILocation(line: 150, column: 299, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !452, file: !386, discriminator: 8)
!1034 = !DILocation(line: 150, column: 299, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !452, file: !386, discriminator: 9)
!1036 = !DILocation(line: 150, column: 312, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1038, file: !386, discriminator: 10)
!1038 = !DILexicalBlockFile(scope: !442, file: !386, discriminator: 3)
!1039 = !DILocation(line: 150, column: 312, scope: !450)
!1040 = !DILocation(line: 151, column: 5, scope: !442)
!1041 = !DILocation(line: 151, column: 10, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !455, file: !386, discriminator: 1)
!1043 = !DILocation(line: 151, column: 20, scope: !455)
!1044 = !DILocation(line: 151, column: 51, scope: !455)
!1045 = !DILocation(line: 151, column: 54, scope: !455)
!1046 = !DILocation(line: 151, column: 69, scope: !458)
!1047 = !DILocation(line: 151, column: 85, scope: !458)
!1048 = !DILocation(line: 151, column: 69, scope: !455)
!1049 = !DILocation(line: 151, column: 100, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !458, file: !386, discriminator: 2)
!1051 = !DILocation(line: 151, column: 105, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !457, file: !386, discriminator: 4)
!1053 = !DILocation(line: 151, column: 115, scope: !457)
!1054 = !DILocation(line: 151, column: 145, scope: !457)
!1055 = !DILocation(line: 151, column: 171, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !457, file: !386, line: 151, column: 168)
!1057 = !DILocation(line: 151, column: 188, scope: !1056)
!1058 = !DILocation(line: 151, column: 168, scope: !1056)
!1059 = !DILocation(line: 151, column: 198, scope: !1056)
!1060 = !DILocation(line: 151, column: 168, scope: !457)
!1061 = !DILocation(line: 151, column: 168, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !457, file: !386, discriminator: 5)
!1063 = !DILocation(line: 151, column: 229, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1056, file: !386, discriminator: 6)
!1065 = !DILocation(line: 151, column: 247, scope: !1056)
!1066 = !DILocation(line: 151, column: 257, scope: !1056)
!1067 = !DILocation(line: 151, column: 282, scope: !1056)
!1068 = !DILocation(line: 151, column: 213, scope: !1056)
!1069 = !DILocation(line: 151, column: 301, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !458, file: !386, discriminator: 7)
!1071 = !DILocation(line: 151, column: 301, scope: !457)
!1072 = !DILocation(line: 151, column: 301, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !457, file: !386, discriminator: 8)
!1074 = !DILocation(line: 151, column: 301, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !457, file: !386, discriminator: 9)
!1076 = !DILocation(line: 151, column: 314, scope: !1037)
!1077 = !DILocation(line: 151, column: 314, scope: !455)
!1078 = !DILocation(line: 152, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !442, file: !386, line: 152, column: 9)
!1080 = !DILocation(line: 152, column: 17, scope: !1079)
!1081 = !DILocation(line: 152, column: 9, scope: !442)
!1082 = !DILocation(line: 153, column: 33, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !386, line: 152, column: 24)
!1084 = !DILocation(line: 153, column: 21, scope: !1083)
!1085 = !DILocation(line: 153, column: 9, scope: !1083)
!1086 = !DILocation(line: 153, column: 12, scope: !1083)
!1087 = !DILocation(line: 153, column: 19, scope: !1083)
!1088 = !DILocation(line: 154, column: 21, scope: !1083)
!1089 = !DILocation(line: 154, column: 19, scope: !1083)
!1090 = !DILocation(line: 155, column: 16, scope: !1083)
!1091 = !DILocation(line: 156, column: 5, scope: !1083)
!1092 = !DILocation(line: 158, column: 25, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1079, file: !386, line: 157, column: 10)
!1094 = !DILocation(line: 158, column: 9, scope: !1093)
!1095 = !DILocation(line: 160, column: 1, scope: !442)
!1096 = !DILocation(line: 272, column: 30, scope: !459)
!1097 = !DILocation(line: 274, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !459, file: !386, line: 274, column: 9)
!1099 = !DILocation(line: 274, column: 12, scope: !1098)
!1100 = !DILocation(line: 274, column: 19, scope: !1098)
!1101 = !DILocation(line: 274, column: 33, scope: !1098)
!1102 = !DILocation(line: 274, column: 51, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1098, file: !386, discriminator: 1)
!1104 = !DILocation(line: 274, column: 54, scope: !1098)
!1105 = !DILocation(line: 274, column: 64, scope: !1098)
!1106 = !DILocation(line: 274, column: 73, scope: !1098)
!1107 = !DILocation(line: 274, column: 93, scope: !1098)
!1108 = !DILocation(line: 274, column: 127, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1098, file: !386, discriminator: 2)
!1110 = !DILocation(line: 274, column: 130, scope: !1098)
!1111 = !DILocation(line: 274, column: 140, scope: !1098)
!1112 = !DILocation(line: 274, column: 96, scope: !1098)
!1113 = !DILocation(line: 274, column: 9, scope: !459)
!1114 = !DILocation(line: 276, column: 36, scope: !1098)
!1115 = !DILocation(line: 276, column: 39, scope: !1098)
!1116 = !DILocation(line: 276, column: 45, scope: !1098)
!1117 = !DILocation(line: 275, column: 16, scope: !1098)
!1118 = !DILocation(line: 275, column: 9, scope: !1098)
!1119 = !DILocation(line: 278, column: 32, scope: !459)
!1120 = !DILocation(line: 278, column: 35, scope: !459)
!1121 = !DILocation(line: 278, column: 41, scope: !459)
!1122 = !DILocation(line: 279, column: 32, scope: !459)
!1123 = !DILocation(line: 279, column: 35, scope: !459)
!1124 = !DILocation(line: 279, column: 43, scope: !459)
!1125 = !DILocation(line: 279, column: 52, scope: !459)
!1126 = !{!1026, !565, i64 24}
!1127 = !DILocation(line: 280, column: 32, scope: !459)
!1128 = !DILocation(line: 280, column: 35, scope: !459)
!1129 = !DILocation(line: 277, column: 12, scope: !459)
!1130 = !DILocation(line: 277, column: 5, scope: !459)
!1131 = !DILocation(line: 281, column: 1, scope: !459)
!1132 = !DILocation(line: 310, column: 30, scope: !464)
!1133 = !DILocation(line: 312, column: 5, scope: !464)
!1134 = !DILocation(line: 312, column: 15, scope: !464)
!1135 = !DILocation(line: 312, column: 18, scope: !464)
!1136 = !DILocation(line: 313, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !464, file: !386, line: 313, column: 9)
!1138 = !DILocation(line: 313, column: 12, scope: !1137)
!1139 = !DILocation(line: 313, column: 19, scope: !1137)
!1140 = !DILocation(line: 313, column: 9, scope: !464)
!1141 = !DILocation(line: 314, column: 11, scope: !1137)
!1142 = !DILocation(line: 314, column: 9, scope: !1137)
!1143 = !DILocation(line: 316, column: 27, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !386, line: 315, column: 10)
!1145 = !DILocation(line: 316, column: 30, scope: !1144)
!1146 = !DILocation(line: 316, column: 13, scope: !1144)
!1147 = !DILocation(line: 316, column: 11, scope: !1144)
!1148 = !DILocation(line: 317, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !386, line: 317, column: 13)
!1150 = !DILocation(line: 317, column: 15, scope: !1149)
!1151 = !DILocation(line: 317, column: 13, scope: !1144)
!1152 = !DILocation(line: 318, column: 13, scope: !1149)
!1153 = !DILocation(line: 320, column: 33, scope: !464)
!1154 = !DILocation(line: 320, column: 36, scope: !464)
!1155 = !DILocation(line: 320, column: 42, scope: !464)
!1156 = !DILocation(line: 320, column: 25, scope: !464)
!1157 = !DILocation(line: 320, column: 9, scope: !464)
!1158 = !DILocation(line: 320, column: 7, scope: !464)
!1159 = !DILocation(line: 321, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !464, file: !386, line: 321, column: 9)
!1161 = !DILocation(line: 321, column: 11, scope: !1160)
!1162 = !DILocation(line: 321, column: 9, scope: !464)
!1163 = !DILocation(line: 322, column: 9, scope: !1160)
!1164 = !DILocation(line: 323, column: 10, scope: !464)
!1165 = !DILocation(line: 323, column: 7, scope: !464)
!1166 = !DILocation(line: 324, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !464, file: !386, line: 324, column: 9)
!1168 = !DILocation(line: 324, column: 11, scope: !1167)
!1169 = !DILocation(line: 324, column: 9, scope: !464)
!1170 = !DILocation(line: 325, column: 11, scope: !1167)
!1171 = !DILocation(line: 325, column: 9, scope: !1167)
!1172 = !DILocation(line: 326, column: 12, scope: !464)
!1173 = !DILocation(line: 326, column: 5, scope: !464)
!1174 = !DILocation(line: 327, column: 1, scope: !464)
!1175 = !DILocation(line: 236, column: 34, scope: !471)
!1176 = !DILocation(line: 236, column: 47, scope: !471)
!1177 = !DILocation(line: 236, column: 60, scope: !471)
!1178 = !DILocation(line: 238, column: 5, scope: !471)
!1179 = !DILocation(line: 238, column: 14, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !480, file: !386, discriminator: 1)
!1181 = !DILocation(line: 238, column: 17, scope: !480)
!1182 = !DILocation(line: 238, column: 14, scope: !480)
!1183 = !DILocation(line: 238, column: 14, scope: !481)
!1184 = !DILocation(line: 238, column: 27, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !479, file: !386, discriminator: 2)
!1186 = !DILocation(line: 238, column: 31, scope: !479)
!1187 = !DILocation(line: 238, column: 38, scope: !479)
!1188 = !DILocation(line: 238, column: 57, scope: !479)
!1189 = !DILocation(line: 238, column: 60, scope: !479)
!1190 = !DILocation(line: 238, column: 69, scope: !479)
!1191 = !DILocation(line: 238, column: 79, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !479, file: !386, line: 238, column: 79)
!1193 = !DILocation(line: 238, column: 79, scope: !479)
!1194 = !DILocation(line: 238, column: 92, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1192, file: !386, discriminator: 4)
!1196 = !DILocation(line: 238, column: 85, scope: !1192)
!1197 = !DILocation(line: 238, column: 98, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !480, file: !386, discriminator: 5)
!1199 = !DILocation(line: 238, column: 98, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !386, discriminator: 7)
!1201 = !DILexicalBlockFile(scope: !480, file: !386, discriminator: 6)
!1202 = !DILocation(line: 238, column: 98, scope: !479)
!1203 = !DILocation(line: 238, column: 100, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1205, file: !386, discriminator: 8)
!1205 = !DILexicalBlockFile(scope: !481, file: !386, discriminator: 3)
!1206 = !DILocation(line: 239, column: 5, scope: !471)
!1207 = !DILocation(line: 239, column: 14, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !484, file: !386, discriminator: 1)
!1209 = !DILocation(line: 239, column: 17, scope: !484)
!1210 = !DILocation(line: 239, column: 14, scope: !484)
!1211 = !DILocation(line: 239, column: 14, scope: !485)
!1212 = !DILocation(line: 239, column: 29, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !483, file: !386, discriminator: 2)
!1214 = !DILocation(line: 239, column: 33, scope: !483)
!1215 = !DILocation(line: 239, column: 40, scope: !483)
!1216 = !DILocation(line: 239, column: 59, scope: !483)
!1217 = !DILocation(line: 239, column: 62, scope: !483)
!1218 = !DILocation(line: 239, column: 73, scope: !483)
!1219 = !DILocation(line: 239, column: 83, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !483, file: !386, line: 239, column: 83)
!1221 = !DILocation(line: 239, column: 83, scope: !483)
!1222 = !DILocation(line: 239, column: 96, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1220, file: !386, discriminator: 4)
!1224 = !DILocation(line: 239, column: 89, scope: !1220)
!1225 = !DILocation(line: 239, column: 102, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !484, file: !386, discriminator: 5)
!1227 = !DILocation(line: 239, column: 102, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1229, file: !386, discriminator: 7)
!1229 = !DILexicalBlockFile(scope: !484, file: !386, discriminator: 6)
!1230 = !DILocation(line: 239, column: 102, scope: !483)
!1231 = !DILocation(line: 239, column: 104, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1233, file: !386, discriminator: 8)
!1233 = !DILexicalBlockFile(scope: !485, file: !386, discriminator: 3)
!1234 = !DILocation(line: 240, column: 5, scope: !471)
!1235 = !DILocation(line: 241, column: 1, scope: !471)
!1236 = !DILocation(line: 284, column: 28, scope: !486)
!1237 = !DILocation(line: 284, column: 44, scope: !486)
!1238 = !DILocation(line: 284, column: 55, scope: !486)
!1239 = !DILocation(line: 286, column: 5, scope: !486)
!1240 = !DILocation(line: 286, column: 24, scope: !486)
!1241 = !DILocation(line: 286, column: 28, scope: !486)
!1242 = !DILocation(line: 287, column: 5, scope: !486)
!1243 = !DILocation(line: 287, column: 15, scope: !486)
!1244 = !DILocation(line: 288, column: 5, scope: !486)
!1245 = !DILocation(line: 288, column: 9, scope: !486)
!1246 = !DILocation(line: 290, column: 10, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !486, file: !386, line: 290, column: 9)
!1248 = !DILocation(line: 290, column: 13, scope: !1247)
!1249 = !DILocation(line: 290, column: 18, scope: !1247)
!1250 = !DILocation(line: 290, column: 21, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1247, file: !386, discriminator: 1)
!1252 = !DILocation(line: 290, column: 24, scope: !1247)
!1253 = !DILocation(line: 290, column: 30, scope: !1247)
!1254 = !DILocation(line: 291, column: 25, scope: !1247)
!1255 = !DILocation(line: 291, column: 33, scope: !1247)
!1256 = !DILocation(line: 291, column: 42, scope: !1247)
!1257 = !DILocation(line: 291, column: 64, scope: !1247)
!1258 = !DILocation(line: 292, column: 25, scope: !1247)
!1259 = !DILocation(line: 292, column: 34, scope: !1247)
!1260 = !DILocation(line: 292, column: 43, scope: !1247)
!1261 = !DILocation(line: 290, column: 9, scope: !486)
!1262 = !DILocation(line: 294, column: 72, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1247, file: !386, line: 293, column: 5)
!1264 = !DILocation(line: 294, column: 9, scope: !1263)
!1265 = !DILocation(line: 296, column: 30, scope: !486)
!1266 = !DILocation(line: 296, column: 9, scope: !486)
!1267 = !DILocation(line: 296, column: 7, scope: !486)
!1268 = !DILocation(line: 297, column: 30, scope: !486)
!1269 = !DILocation(line: 297, column: 9, scope: !486)
!1270 = !DILocation(line: 297, column: 7, scope: !486)
!1271 = !DILocation(line: 298, column: 10, scope: !486)
!1272 = !DILocation(line: 298, column: 13, scope: !486)
!1273 = !DILocation(line: 298, column: 23, scope: !486)
!1274 = !DILocation(line: 298, column: 26, scope: !486)
!1275 = !DILocation(line: 298, column: 20, scope: !486)
!1276 = !DILocation(line: 298, column: 8, scope: !486)
!1277 = !DILocation(line: 299, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !486, file: !386, line: 299, column: 9)
!1279 = !DILocation(line: 299, column: 9, scope: !486)
!1280 = !DILocation(line: 300, column: 14, scope: !1278)
!1281 = !DILocation(line: 300, column: 17, scope: !1278)
!1282 = !DILocation(line: 300, column: 23, scope: !1278)
!1283 = !DILocation(line: 300, column: 34, scope: !1278)
!1284 = !DILocation(line: 300, column: 37, scope: !1278)
!1285 = !DILocation(line: 300, column: 43, scope: !1278)
!1286 = !DILocation(line: 300, column: 31, scope: !1278)
!1287 = !DILocation(line: 300, column: 12, scope: !1278)
!1288 = !DILocation(line: 300, column: 9, scope: !1278)
!1289 = !DILocation(line: 301, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !486, file: !386, line: 301, column: 9)
!1291 = !DILocation(line: 301, column: 12, scope: !1290)
!1292 = !DILocation(line: 301, column: 9, scope: !486)
!1293 = !DILocation(line: 302, column: 15, scope: !1290)
!1294 = !DILocation(line: 302, column: 13, scope: !1290)
!1295 = !DILocation(line: 302, column: 9, scope: !1290)
!1296 = !DILocation(line: 304, column: 15, scope: !1290)
!1297 = !DILocation(line: 304, column: 13, scope: !1290)
!1298 = !DILocation(line: 305, column: 21, scope: !486)
!1299 = !DILocation(line: 305, column: 28, scope: !486)
!1300 = !DILocation(line: 305, column: 37, scope: !486)
!1301 = !DILocation(line: 306, column: 12, scope: !486)
!1302 = !DILocation(line: 306, column: 5, scope: !486)
!1303 = !DILocation(line: 307, column: 1, scope: !486)
!1304 = !DILocation(line: 370, column: 5, scope: !427)
!1305 = !DILocation(line: 370, column: 9, scope: !427)
!1306 = !DILocation(line: 370, column: 25, scope: !427)
!1307 = !DILocation(line: 372, column: 5, scope: !427)
!1308 = !DILocation(line: 372, column: 12, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1310, file: !386, discriminator: 2)
!1310 = !DILexicalBlockFile(scope: !427, file: !386, discriminator: 1)
!1311 = !DILocation(line: 373, column: 9, scope: !433)
!1312 = !DILocation(line: 373, column: 28, scope: !433)
!1313 = !DILocation(line: 373, column: 32, scope: !433)
!1314 = !DILocation(line: 374, column: 43, scope: !433)
!1315 = !DILocation(line: 374, column: 46, scope: !433)
!1316 = !DILocation(line: 374, column: 21, scope: !433)
!1317 = !DILocation(line: 374, column: 19, scope: !433)
!1318 = !DILocation(line: 375, column: 25, scope: !433)
!1319 = !DILocation(line: 375, column: 9, scope: !433)
!1320 = !DILocation(line: 376, column: 16, scope: !433)
!1321 = !DILocation(line: 377, column: 5, scope: !427)
!1322 = !DILocation(line: 379, column: 12, scope: !427)
!1323 = !DILocation(line: 380, column: 1, scope: !427)
!1324 = !DILocation(line: 379, column: 5, scope: !427)
!1325 = !DILocation(line: 385, column: 11, scope: !434)
!1326 = !DILocation(line: 386, column: 1, scope: !434)
!1327 = !DILocation(line: 390, column: 37, scope: !437)
!1328 = !DILocation(line: 392, column: 28, scope: !437)
!1329 = !DILocation(line: 394, column: 28, scope: !437)
!1330 = !DILocation(line: 392, column: 5, scope: !437)
!1331 = !DILocation(line: 395, column: 1, scope: !437)
!1332 = !DILocation(line: 163, column: 32, scope: !495)
!1333 = !DILocation(line: 165, column: 5, scope: !495)
!1334 = !DILocation(line: 165, column: 15, scope: !495)
!1335 = !DILocation(line: 166, column: 5, scope: !495)
!1336 = !DILocation(line: 166, column: 15, scope: !495)
!1337 = !DILocation(line: 169, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !495, file: !386, line: 169, column: 9)
!1339 = !DILocation(line: 169, column: 12, scope: !1338)
!1340 = !DILocation(line: 169, column: 19, scope: !1338)
!1341 = !DILocation(line: 169, column: 33, scope: !1338)
!1342 = !DILocation(line: 169, column: 51, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1338, file: !386, discriminator: 1)
!1344 = !DILocation(line: 169, column: 54, scope: !1338)
!1345 = !DILocation(line: 169, column: 64, scope: !1338)
!1346 = !DILocation(line: 169, column: 73, scope: !1338)
!1347 = !DILocation(line: 169, column: 93, scope: !1338)
!1348 = !DILocation(line: 169, column: 127, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1338, file: !386, discriminator: 2)
!1350 = !DILocation(line: 169, column: 130, scope: !1338)
!1351 = !DILocation(line: 169, column: 140, scope: !1338)
!1352 = !DILocation(line: 169, column: 96, scope: !1338)
!1353 = !DILocation(line: 169, column: 9, scope: !495)
!1354 = !DILocation(line: 170, column: 37, scope: !1338)
!1355 = !DILocation(line: 170, column: 40, scope: !1338)
!1356 = !DILocation(line: 170, column: 46, scope: !1338)
!1357 = !DILocation(line: 170, column: 16, scope: !1338)
!1358 = !DILocation(line: 170, column: 9, scope: !1338)
!1359 = !DILocation(line: 172, column: 16, scope: !495)
!1360 = !DILocation(line: 172, column: 14, scope: !495)
!1361 = !DILocation(line: 173, column: 33, scope: !495)
!1362 = !DILocation(line: 173, column: 15, scope: !495)
!1363 = !DILocation(line: 173, column: 13, scope: !495)
!1364 = !DILocation(line: 174, column: 35, scope: !495)
!1365 = !DILocation(line: 174, column: 44, scope: !495)
!1366 = !DILocation(line: 174, column: 47, scope: !495)
!1367 = !DILocation(line: 174, column: 55, scope: !495)
!1368 = !DILocation(line: 174, column: 58, scope: !495)
!1369 = !DILocation(line: 174, column: 64, scope: !495)
!1370 = !DILocation(line: 174, column: 12, scope: !495)
!1371 = !DILocation(line: 174, column: 5, scope: !495)
!1372 = !DILocation(line: 175, column: 1, scope: !495)
!1373 = !DILocation(line: 189, column: 36, scope: !500)
!1374 = !DILocation(line: 189, column: 45, scope: !500)
!1375 = !DILocation(line: 191, column: 42, scope: !500)
!1376 = !DILocation(line: 191, column: 45, scope: !500)
!1377 = !DILocation(line: 191, column: 51, scope: !500)
!1378 = !DILocation(line: 191, column: 60, scope: !500)
!1379 = !DILocation(line: 191, column: 63, scope: !500)
!1380 = !DILocation(line: 191, column: 69, scope: !500)
!1381 = !{!754, !565, i64 24}
!1382 = !DILocation(line: 191, column: 12, scope: !500)
!1383 = !DILocation(line: 191, column: 5, scope: !500)
!1384 = !DILocation(line: 195, column: 37, scope: !506)
!1385 = !DILocation(line: 195, column: 46, scope: !506)
!1386 = !DILocation(line: 197, column: 33, scope: !506)
!1387 = !DILocation(line: 197, column: 36, scope: !506)
!1388 = !DILocation(line: 197, column: 42, scope: !506)
!1389 = !DILocation(line: 197, column: 12, scope: !506)
!1390 = !DILocation(line: 197, column: 5, scope: !506)
!1391 = !DILocation(line: 201, column: 41, scope: !510)
!1392 = !DILocation(line: 201, column: 50, scope: !510)
!1393 = !DILocation(line: 211, column: 5, scope: !510)
!1394 = !DILocation(line: 211, column: 15, scope: !510)
!1395 = !DILocation(line: 211, column: 22, scope: !510)
!1396 = !DILocation(line: 211, column: 38, scope: !510)
!1397 = !DILocation(line: 214, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !510, file: !386, line: 214, column: 9)
!1399 = !DILocation(line: 214, column: 12, scope: !1398)
!1400 = !DILocation(line: 214, column: 19, scope: !1398)
!1401 = !DILocation(line: 214, column: 33, scope: !1398)
!1402 = !DILocation(line: 214, column: 51, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1398, file: !386, discriminator: 1)
!1404 = !DILocation(line: 214, column: 54, scope: !1398)
!1405 = !DILocation(line: 214, column: 64, scope: !1398)
!1406 = !DILocation(line: 214, column: 73, scope: !1398)
!1407 = !DILocation(line: 214, column: 93, scope: !1398)
!1408 = !DILocation(line: 214, column: 127, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1398, file: !386, discriminator: 2)
!1410 = !DILocation(line: 214, column: 130, scope: !1398)
!1411 = !DILocation(line: 214, column: 140, scope: !1398)
!1412 = !DILocation(line: 214, column: 96, scope: !1398)
!1413 = !DILocation(line: 214, column: 9, scope: !510)
!1414 = !DILocation(line: 215, column: 37, scope: !1398)
!1415 = !DILocation(line: 215, column: 40, scope: !1398)
!1416 = !DILocation(line: 215, column: 46, scope: !1398)
!1417 = !DILocation(line: 215, column: 16, scope: !1398)
!1418 = !DILocation(line: 215, column: 9, scope: !1398)
!1419 = !DILocation(line: 217, column: 29, scope: !510)
!1420 = !DILocation(line: 217, column: 32, scope: !510)
!1421 = !DILocation(line: 217, column: 42, scope: !510)
!1422 = !DILocation(line: 217, column: 53, scope: !510)
!1423 = !{!1026, !592, i64 168}
!1424 = !DILocation(line: 217, column: 62, scope: !510)
!1425 = !DILocation(line: 217, column: 79, scope: !510)
!1426 = !DILocation(line: 217, column: 12, scope: !510)
!1427 = !DILocation(line: 217, column: 87, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !510, file: !386, discriminator: 1)
!1429 = !DILocation(line: 217, column: 90, scope: !510)
!1430 = !DILocation(line: 217, column: 124, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !510, file: !386, discriminator: 2)
!1432 = !DILocation(line: 217, column: 127, scope: !510)
!1433 = !DILocation(line: 217, column: 137, scope: !510)
!1434 = !DILocation(line: 217, column: 99, scope: !510)
!1435 = !DILocation(line: 217, column: 10, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1437, file: !386, discriminator: 4)
!1437 = !DILexicalBlockFile(scope: !510, file: !386, discriminator: 3)
!1438 = !DILocation(line: 219, column: 41, scope: !510)
!1439 = !DILocation(line: 219, column: 21, scope: !510)
!1440 = !DILocation(line: 219, column: 19, scope: !510)
!1441 = !DILocation(line: 220, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !510, file: !386, line: 220, column: 9)
!1443 = !DILocation(line: 220, column: 23, scope: !1442)
!1444 = !DILocation(line: 220, column: 9, scope: !510)
!1445 = !DILocation(line: 221, column: 9, scope: !1442)
!1446 = !DILocation(line: 223, column: 27, scope: !520)
!1447 = !DILocation(line: 223, column: 44, scope: !520)
!1448 = !DILocation(line: 223, column: 55, scope: !520)
!1449 = !DILocation(line: 223, column: 64, scope: !520)
!1450 = !DILocation(line: 223, column: 81, scope: !520)
!1451 = !DILocation(line: 223, column: 9, scope: !510)
!1452 = !DILocation(line: 224, column: 25, scope: !519)
!1453 = !DILocation(line: 224, column: 9, scope: !519)
!1454 = !DILocation(line: 226, column: 9, scope: !519)
!1455 = !DILocation(line: 226, column: 14, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !518, file: !386, discriminator: 1)
!1457 = !DILocation(line: 226, column: 24, scope: !518)
!1458 = !DILocation(line: 226, column: 55, scope: !518)
!1459 = !DILocation(line: 226, column: 75, scope: !523)
!1460 = !DILocation(line: 226, column: 91, scope: !523)
!1461 = !DILocation(line: 226, column: 75, scope: !518)
!1462 = !DILocation(line: 226, column: 106, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !523, file: !386, discriminator: 2)
!1464 = !DILocation(line: 226, column: 111, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !522, file: !386, discriminator: 4)
!1466 = !DILocation(line: 226, column: 121, scope: !522)
!1467 = !DILocation(line: 226, column: 151, scope: !522)
!1468 = !DILocation(line: 226, column: 177, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !522, file: !386, line: 226, column: 174)
!1470 = !DILocation(line: 226, column: 194, scope: !1469)
!1471 = !DILocation(line: 226, column: 174, scope: !1469)
!1472 = !DILocation(line: 226, column: 204, scope: !1469)
!1473 = !DILocation(line: 226, column: 174, scope: !522)
!1474 = !DILocation(line: 226, column: 174, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !522, file: !386, discriminator: 5)
!1476 = !DILocation(line: 226, column: 235, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1469, file: !386, discriminator: 6)
!1478 = !DILocation(line: 226, column: 253, scope: !1469)
!1479 = !DILocation(line: 226, column: 263, scope: !1469)
!1480 = !DILocation(line: 226, column: 288, scope: !1469)
!1481 = !DILocation(line: 226, column: 219, scope: !1469)
!1482 = !DILocation(line: 226, column: 307, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !523, file: !386, discriminator: 7)
!1484 = !DILocation(line: 226, column: 307, scope: !522)
!1485 = !DILocation(line: 226, column: 307, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !522, file: !386, discriminator: 8)
!1487 = !DILocation(line: 226, column: 307, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !522, file: !386, discriminator: 9)
!1489 = !DILocation(line: 226, column: 320, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1491, file: !386, discriminator: 10)
!1491 = !DILexicalBlockFile(scope: !519, file: !386, discriminator: 3)
!1492 = !DILocation(line: 226, column: 320, scope: !518)
!1493 = !DILocation(line: 226, column: 320, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !518, file: !386, discriminator: 11)
!1495 = !DILocation(line: 227, column: 9, scope: !519)
!1496 = !DILocation(line: 230, column: 41, scope: !510)
!1497 = !DILocation(line: 230, column: 56, scope: !510)
!1498 = !DILocation(line: 230, column: 59, scope: !510)
!1499 = !DILocation(line: 230, column: 65, scope: !510)
!1500 = !DILocation(line: 230, column: 11, scope: !510)
!1501 = !DILocation(line: 230, column: 9, scope: !510)
!1502 = !DILocation(line: 231, column: 5, scope: !510)
!1503 = !DILocation(line: 231, column: 10, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !525, file: !386, discriminator: 1)
!1505 = !DILocation(line: 231, column: 20, scope: !525)
!1506 = !DILocation(line: 231, column: 50, scope: !525)
!1507 = !DILocation(line: 231, column: 74, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !525, file: !386, line: 231, column: 71)
!1509 = !DILocation(line: 231, column: 91, scope: !1508)
!1510 = !DILocation(line: 231, column: 71, scope: !1508)
!1511 = !DILocation(line: 231, column: 101, scope: !1508)
!1512 = !DILocation(line: 231, column: 71, scope: !525)
!1513 = !DILocation(line: 231, column: 71, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !525, file: !386, discriminator: 2)
!1515 = !DILocation(line: 231, column: 132, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1508, file: !386, discriminator: 3)
!1517 = !DILocation(line: 231, column: 150, scope: !1508)
!1518 = !DILocation(line: 231, column: 160, scope: !1508)
!1519 = !DILocation(line: 231, column: 185, scope: !1508)
!1520 = !DILocation(line: 231, column: 116, scope: !1508)
!1521 = !DILocation(line: 231, column: 204, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !510, file: !386, discriminator: 4)
!1523 = !DILocation(line: 231, column: 204, scope: !525)
!1524 = !DILocation(line: 231, column: 204, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !525, file: !386, discriminator: 5)
!1526 = !DILocation(line: 232, column: 12, scope: !510)
!1527 = !DILocation(line: 232, column: 5, scope: !510)
!1528 = !DILocation(line: 233, column: 1, scope: !510)
!1529 = !DILocation(line: 244, column: 37, scope: !526)
!1530 = !DILocation(line: 244, column: 46, scope: !526)
!1531 = !DILocation(line: 246, column: 5, scope: !526)
!1532 = !DILocation(line: 246, column: 15, scope: !526)
!1533 = !DILocation(line: 248, column: 35, scope: !526)
!1534 = !DILocation(line: 248, column: 41, scope: !526)
!1535 = !DILocation(line: 248, column: 49, scope: !526)
!1536 = !DILocation(line: 248, column: 58, scope: !526)
!1537 = !DILocation(line: 248, column: 13, scope: !526)
!1538 = !DILocation(line: 248, column: 13, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !526, file: !386, discriminator: 1)
!1540 = !DILocation(line: 248, column: 104, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !526, file: !386, discriminator: 2)
!1542 = !DILocation(line: 248, column: 110, scope: !526)
!1543 = !DILocation(line: 248, column: 10, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !386, discriminator: 4)
!1545 = !DILexicalBlockFile(scope: !526, file: !386, discriminator: 3)
!1546 = !DILocation(line: 249, column: 9, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !526, file: !386, line: 249, column: 9)
!1548 = !DILocation(line: 249, column: 14, scope: !1547)
!1549 = !DILocation(line: 249, column: 9, scope: !526)
!1550 = !DILocation(line: 250, column: 14, scope: !1547)
!1551 = !DILocation(line: 250, column: 9, scope: !1547)
!1552 = !DILocation(line: 251, column: 21, scope: !526)
!1553 = !DILocation(line: 251, column: 29, scope: !526)
!1554 = !DILocation(line: 251, column: 38, scope: !526)
!1555 = !DILocation(line: 252, column: 12, scope: !526)
!1556 = !DILocation(line: 253, column: 1, scope: !526)
!1557 = !DILocation(line: 252, column: 5, scope: !526)
!1558 = !DILocation(line: 183, column: 47, scope: !531)
!1559 = !DILocation(line: 183, column: 56, scope: !531)
!1560 = !DILocation(line: 185, column: 52, scope: !531)
!1561 = !DILocation(line: 185, column: 55, scope: !531)
!1562 = !DILocation(line: 185, column: 61, scope: !531)
!1563 = !DILocation(line: 185, column: 70, scope: !531)
!1564 = !DILocation(line: 185, column: 73, scope: !531)
!1565 = !DILocation(line: 185, column: 79, scope: !531)
!1566 = !DILocation(line: 185, column: 12, scope: !531)
!1567 = !DILocation(line: 185, column: 5, scope: !531)
