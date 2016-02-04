; ModuleID = 'methodobject.o.bc'
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

@free_list = internal unnamed_addr global %struct.PyCFunctionObject* null, align 8
@PyCFunction_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.PyCFunctionObject*)* @meth_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyCFunctionObject*)* @meth_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.PyCFunctionObject*)* @meth_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyCFunction_Call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyCFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @meth_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @meth_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @meth_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @meth_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([6 x %struct.PyGetSetDef], [6 x %struct.PyGetSetDef]* @meth_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@numfree = internal unnamed_addr global i32 0, align 4
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
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %ml, i64 0, metadata !389, metadata !563), !dbg !564
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !390, metadata !563), !dbg !565
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %ml, i64 0, metadata !395, metadata !563) #4, !dbg !566
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !396, metadata !563) #4, !dbg !568
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !397, metadata !563) #4, !dbg !569
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !570, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %0, i64 0, metadata !398, metadata !563) #4, !dbg !575
  %cmp.i = icmp eq %struct.PyCFunctionObject* %0, null, !dbg !576
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !578

if.then.i:                                        ; preds = %entry
  %m_self.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i64 0, i32 2, !dbg !579
  %1 = bitcast %struct._object** %m_self.i to i64*, !dbg !579
  %2 = load i64, i64* %1, align 8, !dbg !579, !tbaa !581
  store i64 %2, i64* bitcast (%struct.PyCFunctionObject** @free_list to i64*), align 8, !dbg !585, !tbaa !571
  %ob_type.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i64 0, i32 0, i32 1, !dbg !586
  store %struct._typeobject* @PyCFunction_Type, %struct._typeobject** %ob_type.i, align 8, !dbg !586, !tbaa !587
  %ob_refcnt.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i64 0, i32 0, i32 0, !dbg !586
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !586, !tbaa !588
  %3 = load i32, i32* @numfree, align 4, !dbg !589, !tbaa !590
  %dec.i = add i32 %3, -1, !dbg !589
  store i32 %dec.i, i32* @numfree, align 4, !dbg !589, !tbaa !590
  br label %if.end.3.i, !dbg !592

if.else.i:                                        ; preds = %entry
  %call.i = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @PyCFunction_Type) #4, !dbg !593
  %4 = bitcast %struct._object* %call.i to %struct.PyCFunctionObject*, !dbg !593
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %4, i64 0, metadata !398, metadata !563) #4, !dbg !575
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !595
  br i1 %cmp1.i, label %PyCFunction_NewEx.exit, label %if.end.3.i, !dbg !597

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyCFunctionObject* [ %0, %if.then.i ], [ %4, %if.else.i ], !dbg !598
  %m_ml.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0.i, i64 0, i32 1, !dbg !599
  store %struct.PyMethodDef* %ml, %struct.PyMethodDef** %m_ml.i, align 8, !dbg !600, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !399, metadata !563) #4, !dbg !602
  %cmp4.i = icmp eq %struct._object* %self, null, !dbg !604
  br i1 %cmp4.i, label %if.end.7.i, label %if.then.5.i, !dbg !606

if.then.5.i:                                      ; preds = %if.end.3.i
  %ob_refcnt6.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !607
  %5 = load i64, i64* %ob_refcnt6.i, align 8, !dbg !607, !tbaa !588
  %inc.i = add i64 %5, 1, !dbg !607
  store i64 %inc.i, i64* %ob_refcnt6.i, align 8, !dbg !607, !tbaa !588
  br label %if.end.7.i, !dbg !607

if.end.7.i:                                       ; preds = %if.then.5.i, %if.end.3.i
  %m_self8.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0.i, i64 0, i32 2, !dbg !609
  store %struct._object* %self, %struct._object** %m_self8.i, align 8, !dbg !610, !tbaa !581
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !401, metadata !563) #4, !dbg !611
  %m_module.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0.i, i64 0, i32 3, !dbg !613
  store %struct._object* null, %struct._object** %m_module.i, align 8, !dbg !614, !tbaa !615
  %add.ptr.i = getelementptr %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0.i, i64 -1, i32 1, !dbg !616
  %gc_refs.i = getelementptr inbounds %struct.PyMethodDef*, %struct.PyMethodDef** %add.ptr.i, i64 2, !dbg !618
  %6 = bitcast %struct.PyMethodDef** %gc_refs.i to i64*, !dbg !618
  %7 = load i64, i64* %6, align 8, !dbg !618, !tbaa !620
  %shr.mask.i = and i64 %7, -2, !dbg !618
  %cmp19.i = icmp eq i64 %shr.mask.i, -4, !dbg !618
  br i1 %cmp19.i, label %do.body.22.i, label %if.then.20.i, !dbg !622

if.then.20.i:                                     ; preds = %if.end.7.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #5, !dbg !623
  unreachable, !dbg !623

do.body.22.i:                                     ; preds = %if.end.7.i
  %and.i = and i64 %7, 1, !dbg !625
  %or.i = or i64 %and.i, -6, !dbg !625
  store i64 %or.i, i64* %6, align 8, !dbg !625, !tbaa !620
  %8 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !628, !tbaa !571
  %9 = bitcast %struct.PyMethodDef** %add.ptr.i to i64*, !dbg !628
  store i64 %8, i64* %9, align 8, !dbg !628, !tbaa !630
  %10 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !628, !tbaa !571
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %10, i64 0, i32 1, !dbg !628
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !628, !tbaa !631
  %gc_prev32.i = getelementptr inbounds %struct.PyMethodDef*, %struct.PyMethodDef** %add.ptr.i, i64 1, !dbg !628
  %12 = bitcast %struct.PyMethodDef** %gc_prev32.i to %union._gc_head**, !dbg !628
  store %union._gc_head* %11, %union._gc_head** %12, align 8, !dbg !628, !tbaa !631
  %13 = bitcast %union._gc_head* %11 to %struct.PyMethodDef***, !dbg !628
  store %struct.PyMethodDef** %add.ptr.i, %struct.PyMethodDef*** %13, align 8, !dbg !628, !tbaa !630
  %14 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !628, !tbaa !571
  %gc_prev38.i = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 0, i32 1, !dbg !628
  %15 = bitcast %union._gc_head** %gc_prev38.i to %struct.PyMethodDef***, !dbg !628
  store %struct.PyMethodDef** %add.ptr.i, %struct.PyMethodDef*** %15, align 8, !dbg !628, !tbaa !631
  %16 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0.i, i64 0, i32 0, !dbg !632
  br label %PyCFunction_NewEx.exit, !dbg !633

PyCFunction_NewEx.exit:                           ; preds = %if.else.i, %do.body.22.i
  %retval.0.i = phi %struct._object* [ %16, %do.body.22.i ], [ null, %if.else.i ], !dbg !598
  ret %struct._object* %retval.0.i, !dbg !634
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %ml, %struct._object* %self, %struct._object* %module) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyMethodDef* %ml, i64 0, metadata !395, metadata !563), !dbg !635
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !396, metadata !563), !dbg !636
  tail call void @llvm.dbg.value(metadata %struct._object* %module, i64 0, metadata !397, metadata !563), !dbg !637
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !638, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %0, i64 0, metadata !398, metadata !563), !dbg !639
  %cmp = icmp eq %struct.PyCFunctionObject* %0, null, !dbg !640
  br i1 %cmp, label %if.else, label %if.then, !dbg !641

if.then:                                          ; preds = %entry
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i64 0, i32 2, !dbg !642
  %1 = bitcast %struct._object** %m_self to i64*, !dbg !642
  %2 = load i64, i64* %1, align 8, !dbg !642, !tbaa !581
  store i64 %2, i64* bitcast (%struct.PyCFunctionObject** @free_list to i64*), align 8, !dbg !643, !tbaa !571
  %ob_type = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i64 0, i32 0, i32 1, !dbg !644
  store %struct._typeobject* @PyCFunction_Type, %struct._typeobject** %ob_type, align 8, !dbg !644, !tbaa !587
  %ob_refcnt = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i64 0, i32 0, i32 0, !dbg !644
  store i64 1, i64* %ob_refcnt, align 8, !dbg !644, !tbaa !588
  %3 = load i32, i32* @numfree, align 4, !dbg !645, !tbaa !590
  %dec = add i32 %3, -1, !dbg !645
  store i32 %dec, i32* @numfree, align 4, !dbg !645, !tbaa !590
  br label %if.end.3, !dbg !646

if.else:                                          ; preds = %entry
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @PyCFunction_Type) #4, !dbg !647
  %4 = bitcast %struct._object* %call to %struct.PyCFunctionObject*, !dbg !647
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %4, i64 0, metadata !398, metadata !563), !dbg !639
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !648
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !649

if.end.3:                                         ; preds = %if.else, %if.then
  %op.0 = phi %struct.PyCFunctionObject* [ %0, %if.then ], [ %4, %if.else ]
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0, i64 0, i32 1, !dbg !650
  store %struct.PyMethodDef* %ml, %struct.PyMethodDef** %m_ml, align 8, !dbg !651, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !399, metadata !563), !dbg !652
  %cmp4 = icmp eq %struct._object* %self, null, !dbg !653
  br i1 %cmp4, label %if.end.7, label %if.then.5, !dbg !654

if.then.5:                                        ; preds = %if.end.3
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 0, !dbg !655
  %5 = load i64, i64* %ob_refcnt6, align 8, !dbg !655, !tbaa !588
  %inc = add i64 %5, 1, !dbg !655
  store i64 %inc, i64* %ob_refcnt6, align 8, !dbg !655, !tbaa !588
  br label %if.end.7, !dbg !655

if.end.7:                                         ; preds = %if.end.3, %if.then.5
  %m_self8 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0, i64 0, i32 2, !dbg !656
  store %struct._object* %self, %struct._object** %m_self8, align 8, !dbg !657, !tbaa !581
  tail call void @llvm.dbg.value(metadata %struct._object* %module, i64 0, metadata !401, metadata !563), !dbg !658
  %cmp11 = icmp eq %struct._object* %module, null, !dbg !659
  br i1 %cmp11, label %if.end.15, label %if.then.12, !dbg !661

if.then.12:                                       ; preds = %if.end.7
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %module, i64 0, i32 0, !dbg !662
  %6 = load i64, i64* %ob_refcnt13, align 8, !dbg !662, !tbaa !588
  %inc14 = add i64 %6, 1, !dbg !662
  store i64 %inc14, i64* %ob_refcnt13, align 8, !dbg !662, !tbaa !588
  br label %if.end.15, !dbg !662

if.end.15:                                        ; preds = %if.end.7, %if.then.12
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0, i64 0, i32 3, !dbg !664
  store %struct._object* %module, %struct._object** %m_module, align 8, !dbg !665, !tbaa !615
  %add.ptr = getelementptr %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0, i64 -1, i32 1, !dbg !666
  %gc_refs = getelementptr inbounds %struct.PyMethodDef*, %struct.PyMethodDef** %add.ptr, i64 2, !dbg !667
  %7 = bitcast %struct.PyMethodDef** %gc_refs to i64*, !dbg !667
  %8 = load i64, i64* %7, align 8, !dbg !667, !tbaa !620
  %shr.mask = and i64 %8, -2, !dbg !667
  %cmp19 = icmp eq i64 %shr.mask, -4, !dbg !667
  br i1 %cmp19, label %do.body.22, label %if.then.20, !dbg !668

if.then.20:                                       ; preds = %if.end.15
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #5, !dbg !669
  unreachable, !dbg !669

do.body.22:                                       ; preds = %if.end.15
  %and = and i64 %8, 1, !dbg !670
  %or = or i64 %and, -6, !dbg !670
  store i64 %or, i64* %7, align 8, !dbg !670, !tbaa !620
  %9 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !671, !tbaa !571
  %10 = bitcast %struct.PyMethodDef** %add.ptr to i64*, !dbg !671
  store i64 %9, i64* %10, align 8, !dbg !671, !tbaa !630
  %11 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !671, !tbaa !571
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 0, i32 1, !dbg !671
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !671, !tbaa !631
  %gc_prev32 = getelementptr inbounds %struct.PyMethodDef*, %struct.PyMethodDef** %add.ptr, i64 1, !dbg !671
  %13 = bitcast %struct.PyMethodDef** %gc_prev32 to %union._gc_head**, !dbg !671
  store %union._gc_head* %12, %union._gc_head** %13, align 8, !dbg !671, !tbaa !631
  %14 = bitcast %union._gc_head* %12 to %struct.PyMethodDef***, !dbg !671
  store %struct.PyMethodDef** %add.ptr, %struct.PyMethodDef*** %14, align 8, !dbg !671, !tbaa !630
  %15 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !671, !tbaa !571
  %gc_prev38 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 0, i32 1, !dbg !671
  %16 = bitcast %union._gc_head** %gc_prev38 to %struct.PyMethodDef***, !dbg !671
  store %struct.PyMethodDef** %add.ptr, %struct.PyMethodDef*** %16, align 8, !dbg !671, !tbaa !631
  %17 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %op.0, i64 0, i32 0, !dbg !672
  br label %cleanup, !dbg !673

cleanup:                                          ; preds = %if.else, %do.body.22
  %retval.0 = phi %struct._object* [ %17, %do.body.22 ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !674
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* (%struct._object*, %struct._object*)* @PyCFunction_GetFunction(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !409, metadata !563), !dbg !675
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !676
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !676, !tbaa !587
  %cmp = icmp eq %struct._typeobject* %0, @PyCFunction_Type, !dbg !676
  br i1 %cmp, label %if.end, label %if.then, !dbg !678

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 53) #4, !dbg !679
  br label %return, !dbg !681

if.end:                                           ; preds = %entry
  %m_ml = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !682
  %1 = bitcast %struct._object* %m_ml to %struct.PyMethodDef**, !dbg !682
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %1, align 8, !dbg !682, !tbaa !601
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i64 0, i32 1, !dbg !682
  %3 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !682, !tbaa !683
  br label %return, !dbg !685

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* (%struct._object*, %struct._object*)* [ %3, %if.end ], [ null, %if.then ]
  ret %struct._object* (%struct._object*, %struct._object*)* %retval.0, !dbg !686
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_GetSelf(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !412, metadata !563), !dbg !687
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !688
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !688, !tbaa !587
  %cmp = icmp eq %struct._typeobject* %0, @PyCFunction_Type, !dbg !688
  br i1 %cmp, label %if.end, label %if.then, !dbg !690

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 63) #4, !dbg !691
  br label %return, !dbg !693

if.end:                                           ; preds = %entry
  %m_ml = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !694
  %1 = bitcast %struct._object* %m_ml to %struct.PyMethodDef**, !dbg !694
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %1, align 8, !dbg !694, !tbaa !601
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i64 0, i32 2, !dbg !694
  %3 = load i32, i32* %ml_flags, align 4, !dbg !694, !tbaa !695
  %and = and i32 %3, 32, !dbg !694
  %tobool = icmp eq i32 %and, 0, !dbg !694
  br i1 %tobool, label %cond.false, label %return, !dbg !694

cond.false:                                       ; preds = %if.end
  %m_self = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !696
  %4 = bitcast %struct._typeobject** %m_self to %struct._object**, !dbg !696
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !696, !tbaa !581
  br label %return, !dbg !696

return:                                           ; preds = %cond.false, %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %5, %cond.false ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !698
}

; Function Attrs: nounwind uwtable
define i32 @PyCFunction_GetFlags(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !415, metadata !563), !dbg !699
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !700
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !700, !tbaa !587
  %cmp = icmp eq %struct._typeobject* %0, @PyCFunction_Type, !dbg !700
  br i1 %cmp, label %if.end, label %if.then, !dbg !702

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 73) #4, !dbg !703
  br label %return, !dbg !705

if.end:                                           ; preds = %entry
  %m_ml = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !706
  %1 = bitcast %struct._object* %m_ml to %struct.PyMethodDef**, !dbg !706
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %1, align 8, !dbg !706, !tbaa !601
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i64 0, i32 2, !dbg !706
  %3 = load i32, i32* %ml_flags, align 4, !dbg !706, !tbaa !695
  br label %return, !dbg !707

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.end ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !708
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_Call(%struct._object* nocapture readonly %func, %struct._object* %arg, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !418, metadata !563), !dbg !709
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !419, metadata !563), !dbg !710
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !420, metadata !563), !dbg !711
  %m_ml = getelementptr inbounds %struct._object, %struct._object* %func, i64 1, !dbg !712
  %0 = bitcast %struct._object* %m_ml to %struct.PyMethodDef**, !dbg !712
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %0, align 8, !dbg !713, !tbaa !601
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i64 0, i32 1, !dbg !712
  %2 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !712, !tbaa !683
  tail call void @llvm.dbg.value(metadata %struct._object* (%struct._object*, %struct._object*)* %2, i64 0, metadata !422, metadata !563), !dbg !714
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i64 0, i32 2, !dbg !715
  %3 = load i32, i32* %ml_flags, align 4, !dbg !713, !tbaa !695
  %and = and i32 %3, 32, !dbg !715
  %tobool = icmp eq i32 %and, 0, !dbg !715
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !715

cond.false:                                       ; preds = %entry
  %m_self = getelementptr inbounds %struct._object, %struct._object* %func, i64 1, i32 1, !dbg !716
  %4 = bitcast %struct._typeobject** %m_self to %struct._object**, !dbg !716
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !716, !tbaa !581
  br label %cond.end, !dbg !716

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct._object* [ %5, %cond.false ], [ null, %entry ], !dbg !715
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !423, metadata !563), !dbg !718
  %and4 = and i32 %3, -113, !dbg !719
  switch i32 %and4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 8, label %sw.bb.22
  ], !dbg !720

sw.bb:                                            ; preds = %cond.end
  %cmp = icmp eq %struct._object* %kw, null, !dbg !721
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !724

lor.lhs.false:                                    ; preds = %sw.bb
  %call = tail call i64 @PyDict_Size(%struct._object* %kw) #4, !dbg !725
  %cmp5 = icmp eq i64 %call, 0, !dbg !726
  br i1 %cmp5, label %if.then, label %sw.epilog, !dbg !727

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %call6 = tail call %struct._object* %2(%struct._object* %cond, %struct._object* %arg) #4, !dbg !728
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !424, metadata !563), !dbg !730
  br label %cleanup, !dbg !731

sw.bb.7:                                          ; preds = %cond.end
  %6 = bitcast %struct._object* (%struct._object*, %struct._object*)* %2 to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, !dbg !732
  %call8 = tail call %struct._object* %6(%struct._object* %cond, %struct._object* %arg, %struct._object* %kw) #4, !dbg !733
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !424, metadata !563), !dbg !730
  br label %cleanup, !dbg !734

sw.bb.9:                                          ; preds = %cond.end
  %cmp10 = icmp eq %struct._object* %kw, null, !dbg !735
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11, !dbg !737

lor.lhs.false.11:                                 ; preds = %sw.bb.9
  %call12 = tail call i64 @PyDict_Size(%struct._object* %kw) #4, !dbg !738
  %cmp13 = icmp eq i64 %call12, 0, !dbg !739
  br i1 %cmp13, label %if.then.14, label %sw.epilog, !dbg !740

if.then.14:                                       ; preds = %lor.lhs.false.11, %sw.bb.9
  %7 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 0, !dbg !741
  %8 = load i64, i64* %7, align 8, !dbg !741, !tbaa !743
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !425, metadata !563), !dbg !745
  %cmp15 = icmp eq i64 %8, 0, !dbg !746
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !748

if.then.16:                                       ; preds = %if.then.14
  %call17 = tail call %struct._object* %2(%struct._object* %cond, %struct._object* null) #4, !dbg !749
  tail call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !424, metadata !563), !dbg !730
  br label %cleanup, !dbg !751

if.end.18:                                        ; preds = %if.then.14
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !752, !tbaa !571
  %10 = load %struct.PyMethodDef*, %struct.PyMethodDef** %0, align 8, !dbg !753, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %10, i64 0, i32 0, !dbg !754
  %11 = load i8*, i8** %ml_name, align 8, !dbg !754, !tbaa !755
  %call20 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %11, i64 %8) #4, !dbg !756
  br label %cleanup, !dbg !757

sw.bb.22:                                         ; preds = %cond.end
  %cmp23 = icmp eq %struct._object* %kw, null, !dbg !758
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24, !dbg !760

lor.lhs.false.24:                                 ; preds = %sw.bb.22
  %call25 = tail call i64 @PyDict_Size(%struct._object* %kw) #4, !dbg !761
  %cmp26 = icmp eq i64 %call25, 0, !dbg !762
  br i1 %cmp26, label %if.then.27, label %sw.epilog, !dbg !763

if.then.27:                                       ; preds = %lor.lhs.false.24, %sw.bb.22
  %12 = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 0, !dbg !764
  %13 = load i64, i64* %12, align 8, !dbg !764, !tbaa !743
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !425, metadata !563), !dbg !745
  %cmp29 = icmp eq i64 %13, 1, !dbg !766
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !768

if.then.30:                                       ; preds = %if.then.27
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %arg, i64 1, i32 1, !dbg !769
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !769
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !769, !tbaa !571
  %call31 = tail call %struct._object* %2(%struct._object* %cond, %struct._object* %14) #4, !dbg !771
  tail call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !424, metadata !563), !dbg !730
  br label %cleanup, !dbg !772

if.end.32:                                        ; preds = %if.then.27
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !773, !tbaa !571
  %16 = load %struct.PyMethodDef*, %struct.PyMethodDef** %0, align 8, !dbg !774, !tbaa !601
  %ml_name34 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %16, i64 0, i32 0, !dbg !775
  %17 = load i8*, i8** %ml_name34, align 8, !dbg !775, !tbaa !755
  %call35 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %17, i64 %13) #4, !dbg !776
  br label %cleanup, !dbg !777

sw.default:                                       ; preds = %cond.end
  %18 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !778, !tbaa !571
  tail call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !779
  br label %cleanup, !dbg !780

sw.epilog:                                        ; preds = %lor.lhs.false.24, %lor.lhs.false.11, %lor.lhs.false
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !781, !tbaa !571
  %20 = load %struct.PyMethodDef*, %struct.PyMethodDef** %0, align 8, !dbg !782, !tbaa !601
  %ml_name38 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %20, i64 0, i32 0, !dbg !783
  %21 = load i8*, i8** %ml_name38, align 8, !dbg !783, !tbaa !755
  %call39 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %21) #4, !dbg !784
  br label %cleanup, !dbg !785

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.32, %if.then.30, %if.end.18, %if.then.16, %sw.bb.7, %if.then
  %retval.0 = phi %struct._object* [ null, %sw.default ], [ %call31, %if.then.30 ], [ null, %if.end.32 ], [ null, %sw.epilog ], [ %call17, %if.then.16 ], [ null, %if.end.18 ], [ %call8, %sw.bb.7 ], [ %call6, %if.then ]
  ret %struct._object* %retval.0, !dbg !786
}

declare i64 @PyDict_Size(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @meth_dealloc(%struct.PyCFunctionObject* %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !445, metadata !563), !dbg !787
  %add.ptr = getelementptr %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 -1, i32 1, !dbg !788
  %gc_refs = getelementptr inbounds %struct.PyMethodDef*, %struct.PyMethodDef** %add.ptr, i64 2, !dbg !790
  %0 = bitcast %struct.PyMethodDef** %gc_refs to i64*, !dbg !790
  %1 = load i64, i64* %0, align 8, !dbg !790, !tbaa !620
  %and = and i64 %1, 1, !dbg !790
  %or = or i64 %and, -4, !dbg !790
  store i64 %or, i64* %0, align 8, !dbg !790, !tbaa !620
  %gc_next = bitcast %struct.PyMethodDef** %add.ptr to %union._gc_head**, !dbg !793
  %2 = bitcast %struct.PyMethodDef** %add.ptr to i64*, !dbg !793
  %3 = load i64, i64* %2, align 8, !dbg !793, !tbaa !630
  %gc_prev = getelementptr inbounds %struct.PyMethodDef*, %struct.PyMethodDef** %add.ptr, i64 1, !dbg !793
  %4 = bitcast %struct.PyMethodDef** %gc_prev to i64**, !dbg !793
  %5 = load i64*, i64** %4, align 8, !dbg !793, !tbaa !631
  store i64 %3, i64* %5, align 8, !dbg !793, !tbaa !630
  %6 = ptrtoint i64* %5 to i64, !dbg !793
  %7 = bitcast %struct.PyMethodDef** %add.ptr to %struct.anon**, !dbg !793
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !793, !tbaa !630
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !793
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !793
  store i64 %6, i64* %9, align 8, !dbg !793, !tbaa !631
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !793, !tbaa !630
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 2, !dbg !795
  %10 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !795, !tbaa !581
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !448, metadata !563), !dbg !795
  %cmp = icmp eq %struct._object* %10, null, !dbg !797
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !798

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !450, metadata !563), !dbg !799
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !801
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !801, !tbaa !588
  %dec = add i64 %11, -1, !dbg !801
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !801, !tbaa !588
  %cmp20 = icmp eq i64 %dec, 0, !dbg !801
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !803

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !804
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !804, !tbaa !587
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !804
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !804, !tbaa !806
  tail call void %13(%struct._object* %10) #4, !dbg !804
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 3, !dbg !808
  %14 = load %struct._object*, %struct._object** %m_module, align 8, !dbg !808, !tbaa !615
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !453, metadata !563), !dbg !808
  %cmp29 = icmp eq %struct._object* %14, null, !dbg !810
  br i1 %cmp29, label %if.end.43, label %do.body.31, !dbg !811

do.body.31:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !455, metadata !563), !dbg !812
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !814
  %15 = load i64, i64* %ob_refcnt33, align 8, !dbg !814, !tbaa !588
  %dec34 = add i64 %15, -1, !dbg !814
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !814, !tbaa !588
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !814
  br i1 %cmp35, label %if.else.37, label %if.end.43, !dbg !816

if.else.37:                                       ; preds = %do.body.31
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !817
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !817, !tbaa !587
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !817
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !817, !tbaa !806
  tail call void %17(%struct._object* %14) #4, !dbg !817
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %do.body.31, %if.end.24
  %18 = load i32, i32* @numfree, align 4, !dbg !819, !tbaa !590
  %cmp46 = icmp slt i32 %18, 256, !dbg !822
  br i1 %cmp46, label %if.then.47, label %if.else.49, !dbg !823

if.then.47:                                       ; preds = %if.end.43
  %19 = load i64, i64* bitcast (%struct.PyCFunctionObject** @free_list to i64*), align 8, !dbg !824, !tbaa !571
  %20 = bitcast %struct._object** %m_self to i64*, !dbg !825
  store i64 %19, i64* %20, align 8, !dbg !825, !tbaa !581
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** @free_list, align 8, !dbg !826, !tbaa !571
  %inc = add i32 %18, 1, !dbg !819
  store i32 %inc, i32* @numfree, align 4, !dbg !819, !tbaa !590
  br label %if.end.50, !dbg !827

if.else.49:                                       ; preds = %if.end.43
  %21 = bitcast %struct.PyCFunctionObject* %m to i8*, !dbg !828
  tail call void @PyObject_GC_Del(i8* %21) #4, !dbg !830
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.47
  ret void, !dbg !831
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_repr(%struct.PyCFunctionObject* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !462, metadata !563), !dbg !832
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 2, !dbg !833
  %0 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !833, !tbaa !581
  %cmp = icmp eq %struct._object* %0, null, !dbg !835
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !836

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !837
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !837, !tbaa !587
  %cmp2 = icmp eq %struct._typeobject* %1, @PyModule_Type, !dbg !837
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !837

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @PyModule_Type) #4, !dbg !839
  %tobool = icmp eq i32 %call, 0, !dbg !839
  br i1 %tobool, label %if.end, label %if.then, !dbg !841

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !842
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !842, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i64 0, i32 0, !dbg !843
  %3 = load i8*, i8** %ml_name, align 8, !dbg !843, !tbaa !755
  %call6 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %3) #4, !dbg !844
  br label %return, !dbg !845

if.end:                                           ; preds = %lor.lhs.false.3
  %m_ml7 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !846
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml7, align 8, !dbg !846, !tbaa !601
  %ml_name8 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i64 0, i32 0, !dbg !847
  %5 = load i8*, i8** %ml_name8, align 8, !dbg !847, !tbaa !755
  %6 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !848, !tbaa !581
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !849
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !849, !tbaa !587
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 1, !dbg !850
  %8 = load i8*, i8** %tp_name, align 8, !dbg !850, !tbaa !851
  %call12 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %5, i8* %8, %struct._object* %6) #4, !dbg !852
  br label %return, !dbg !853

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call6, %if.then ], [ %call12, %if.end ]
  ret %struct._object* %retval.0, !dbg !854
}

; Function Attrs: nounwind uwtable
define internal i64 @meth_hash(%struct.PyCFunctionObject* nocapture readonly %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %a, i64 0, metadata !467, metadata !563), !dbg !855
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %a, i64 0, i32 2, !dbg !856
  %0 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !856, !tbaa !581
  %cmp = icmp eq %struct._object* %0, null, !dbg !858
  br i1 %cmp, label %if.end.4, label %if.else, !dbg !859

if.else:                                          ; preds = %entry
  %call = tail call i64 @PyObject_Hash(%struct._object* %0) #4, !dbg !860
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !468, metadata !563), !dbg !862
  %cmp2 = icmp eq i64 %call, -1, !dbg !863
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !865

if.end.4:                                         ; preds = %entry, %if.else
  %x.0 = phi i64 [ %call, %if.else ], [ 0, %entry ]
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %a, i64 0, i32 1, !dbg !866
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !866, !tbaa !601
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i64 0, i32 1, !dbg !867
  %2 = bitcast %struct._object* (%struct._object*, %struct._object*)** %ml_meth to i8**, !dbg !867
  %3 = load i8*, i8** %2, align 8, !dbg !867, !tbaa !683
  %call5 = tail call i64 @_Py_HashPointer(i8* %3) #4, !dbg !868
  tail call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !469, metadata !563), !dbg !869
  %cmp6 = icmp eq i64 %call5, -1, !dbg !870
  br i1 %cmp6, label %cleanup, label %if.end.8, !dbg !872

if.end.8:                                         ; preds = %if.end.4
  %xor = xor i64 %call5, %x.0, !dbg !873
  tail call void @llvm.dbg.value(metadata i64 %xor, i64 0, metadata !468, metadata !563), !dbg !862
  %cmp9 = icmp eq i64 %xor, -1, !dbg !874
  %.xor = select i1 %cmp9, i64 -2, i64 %xor, !dbg !876
  tail call void @llvm.dbg.value(metadata i64 %.xor, i64 0, metadata !468, metadata !563), !dbg !862
  br label %cleanup, !dbg !877

cleanup:                                          ; preds = %if.end.4, %if.else, %if.end.8
  %retval.0 = phi i64 [ %.xor, %if.end.8 ], [ -1, %if.else ], [ -1, %if.end.4 ]
  ret i64 %retval.0, !dbg !878
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @meth_traverse(%struct.PyCFunctionObject* nocapture readonly %m, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !474, metadata !563), !dbg !879
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !475, metadata !563), !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !476, metadata !563), !dbg !881
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 2, !dbg !882
  %0 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !882, !tbaa !581
  %tobool = icmp eq %struct._object* %0, null, !dbg !882
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !884

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #4, !dbg !885
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !477, metadata !563), !dbg !885
  %tobool2 = icmp eq i32 %call, 0, !dbg !887
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 3, !dbg !889
  %1 = load %struct._object*, %struct._object** %m_module, align 8, !dbg !889, !tbaa !615
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !889
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !891

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #4, !dbg !892
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !481, metadata !563), !dbg !892
  %tobool11 = icmp eq i32 %call10, 0, !dbg !894
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !896

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !897
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_richcompare(%struct._object* nocapture readonly %self, %struct._object* nocapture readonly %other, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !487, metadata !563), !dbg !898
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !488, metadata !563), !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !489, metadata !563), !dbg !900
  %0 = and i32 %op, -2, !dbg !901
  %op.cmp = icmp eq i32 %0, 2, !dbg !901
  br i1 %op.cmp, label %lor.lhs.false, label %if.then, !dbg !901

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !903
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !903, !tbaa !587
  %cmp2 = icmp eq %struct._typeobject* %1, @PyCFunction_Type, !dbg !903
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then, !dbg !904

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %other, i64 0, i32 1, !dbg !905
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !905, !tbaa !587
  %cmp5 = icmp eq %struct._typeobject* %2, @PyCFunction_Type, !dbg !905
  br i1 %cmp5, label %if.end, label %if.then, !dbg !906

if.then:                                          ; preds = %entry, %lor.lhs.false.3, %lor.lhs.false
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !907, !tbaa !588
  %inc = add i64 %3, 1, !dbg !907
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !907, !tbaa !588
  br label %cleanup, !dbg !907

if.end:                                           ; preds = %lor.lhs.false.3
  %m_self = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !909
  %4 = bitcast %struct._typeobject** %m_self to %struct._object**, !dbg !909
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !909, !tbaa !581
  %m_self6 = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, i32 1, !dbg !910
  %6 = bitcast %struct._typeobject** %m_self6 to %struct._object**, !dbg !910
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !910, !tbaa !581
  %cmp7 = icmp eq %struct._object* %5, %7, !dbg !911
  %conv = zext i1 %cmp7 to i32, !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !493, metadata !563), !dbg !912
  br i1 %cmp7, label %if.then.8, label %if.end.13, !dbg !913

if.then.8:                                        ; preds = %if.end
  %m_ml = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !914
  %8 = bitcast %struct._object* %m_ml to %struct.PyMethodDef**, !dbg !914
  %9 = load %struct.PyMethodDef*, %struct.PyMethodDef** %8, align 8, !dbg !914, !tbaa !601
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %9, i64 0, i32 1, !dbg !916
  %10 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8, !dbg !916, !tbaa !683
  %m_ml9 = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, !dbg !917
  %11 = bitcast %struct._object* %m_ml9 to %struct.PyMethodDef**, !dbg !917
  %12 = load %struct.PyMethodDef*, %struct.PyMethodDef** %11, align 8, !dbg !917, !tbaa !601
  %ml_meth10 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %12, i64 0, i32 1, !dbg !918
  %13 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth10, align 8, !dbg !918, !tbaa !683
  %cmp11 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %10, %13, !dbg !919
  %conv12 = zext i1 %cmp11 to i32, !dbg !919
  tail call void @llvm.dbg.value(metadata i32 %conv12, i64 0, metadata !493, metadata !563), !dbg !912
  br label %if.end.13, !dbg !920

if.end.13:                                        ; preds = %if.then.8, %if.end
  %eq.0 = phi i32 [ %conv12, %if.then.8 ], [ %conv, %if.end ]
  %cmp14 = icmp eq i32 %op, 2, !dbg !921
  %tobool17 = icmp ne i32 %eq.0, 0, !dbg !923
  %cond = select i1 %tobool17, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !923
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !492, metadata !563), !dbg !924
  %cond19 = select i1 %tobool17, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !925
  tail call void @llvm.dbg.value(metadata %struct._object* %cond19, i64 0, metadata !492, metadata !563), !dbg !924
  %res.0 = select i1 %cmp14, %struct._object* %cond, %struct._object* %cond19, !dbg !926
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %res.0, i64 0, i32 0, !dbg !927
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !927, !tbaa !588
  %inc21 = add i64 %14, 1, !dbg !927
  store i64 %inc21, i64* %ob_refcnt, align 8, !dbg !927, !tbaa !588
  br label %cleanup, !dbg !928

cleanup:                                          ; preds = %if.end.13, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.then ], [ %res.0, %if.end.13 ]
  ret %struct._object* %retval.0, !dbg !929
}

; Function Attrs: nounwind uwtable
define i32 @PyCFunction_ClearFreeList() #0 {
entry:
  %0 = load i32, i32* @numfree, align 4, !dbg !930, !tbaa !590
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !430, metadata !563), !dbg !931
  %1 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !932, !tbaa !571
  %tobool.4 = icmp eq %struct.PyCFunctionObject* %1, null, !dbg !935
  br i1 %tobool.4, label %while.end, label %while.body.preheader, !dbg !935

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !936

while.body:                                       ; preds = %while.body.preheader, %while.body
  %2 = phi %struct.PyCFunctionObject* [ %7, %while.body ], [ %1, %while.body.preheader ]
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %7, i64 0, metadata !431, metadata !563), !dbg !936
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i64 0, i32 2, !dbg !937
  %3 = bitcast %struct._object** %m_self to i64*, !dbg !937
  %4 = load i64, i64* %3, align 8, !dbg !937, !tbaa !581
  store i64 %4, i64* bitcast (%struct.PyCFunctionObject** @free_list to i64*), align 8, !dbg !938, !tbaa !571
  %5 = bitcast %struct.PyCFunctionObject* %2 to i8*, !dbg !939
  tail call void @PyObject_GC_Del(i8* %5) #4, !dbg !940
  %6 = load i32, i32* @numfree, align 4, !dbg !941, !tbaa !590
  %dec = add i32 %6, -1, !dbg !941
  store i32 %dec, i32* @numfree, align 4, !dbg !941, !tbaa !590
  %7 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !932, !tbaa !571
  %tobool = icmp eq %struct.PyCFunctionObject* %7, null, !dbg !935
  br i1 %tobool, label %while.end.loopexit, label %while.body, !dbg !935

while.end.loopexit:                               ; preds = %while.body
  br label %while.end, !dbg !942

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret i32 %0, !dbg !942
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyCFunction_Fini() #0 {
entry:
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !943, !tbaa !571
  %tobool.4.i = icmp eq %struct.PyCFunctionObject* %0, null, !dbg !945
  br i1 %tobool.4.i, label %PyCFunction_ClearFreeList.exit, label %while.body.i.preheader, !dbg !945

while.body.i.preheader:                           ; preds = %entry
  br label %while.body.i, !dbg !946

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %1 = phi %struct.PyCFunctionObject* [ %6, %while.body.i ], [ %0, %while.body.i.preheader ], !dbg !947
  %m_self.i = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %1, i64 0, i32 2, !dbg !946
  %2 = bitcast %struct._object** %m_self.i to i64*, !dbg !946
  %3 = load i64, i64* %2, align 8, !dbg !946, !tbaa !581
  store i64 %3, i64* bitcast (%struct.PyCFunctionObject** @free_list to i64*), align 8, !dbg !948, !tbaa !571
  %4 = bitcast %struct.PyCFunctionObject* %1 to i8*, !dbg !949
  tail call void @PyObject_GC_Del(i8* %4) #4, !dbg !950
  %5 = load i32, i32* @numfree, align 4, !dbg !951, !tbaa !590
  %dec.i = add i32 %5, -1, !dbg !951
  store i32 %dec.i, i32* @numfree, align 4, !dbg !951, !tbaa !590
  %6 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8, !dbg !943, !tbaa !571
  %tobool.i = icmp eq %struct.PyCFunctionObject* %6, null, !dbg !945
  br i1 %tobool.i, label %PyCFunction_ClearFreeList.exit.loopexit, label %while.body.i, !dbg !945

PyCFunction_ClearFreeList.exit.loopexit:          ; preds = %while.body.i
  br label %PyCFunction_ClearFreeList.exit, !dbg !952

PyCFunction_ClearFreeList.exit:                   ; preds = %PyCFunction_ClearFreeList.exit.loopexit, %entry
  ret void, !dbg !952
}

; Function Attrs: nounwind uwtable
define void @_PyCFunction_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !440, metadata !563), !dbg !953
  %0 = load i32, i32* @numfree, align 4, !dbg !954, !tbaa !590
  tail call void @_PyDebugAllocatorStats(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %0, i64 40) #4, !dbg !955
  ret void, !dbg !956
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i64 @_Py_HashPointer(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_reduce(%struct.PyCFunctionObject* nocapture readonly %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !496, metadata !563), !dbg !957
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 2, !dbg !958
  %0 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !958, !tbaa !581
  %cmp = icmp eq %struct._object* %0, null, !dbg !960
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !961

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !962
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !962, !tbaa !587
  %cmp2 = icmp eq %struct._typeobject* %1, @PyModule_Type, !dbg !962
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !962

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @PyModule_Type) #4, !dbg !964
  %tobool = icmp eq i32 %call, 0, !dbg !964
  br i1 %tobool, label %if.end, label %if.then, !dbg !966

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !967
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !967, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i64 0, i32 0, !dbg !968
  %3 = load i8*, i8** %ml_name, align 8, !dbg !968, !tbaa !755
  %call6 = tail call %struct._object* @PyUnicode_FromString(i8* %3) #4, !dbg !969
  br label %cleanup, !dbg !970

if.end:                                           ; preds = %lor.lhs.false.3
  %call7 = tail call %struct._object* @PyEval_GetBuiltins() #4, !dbg !971
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !497, metadata !563), !dbg !972
  %call8 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %call7, %struct._Py_Identifier* nonnull @meth_reduce.PyId_getattr) #4, !dbg !973
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !498, metadata !563), !dbg !974
  %4 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !975, !tbaa !581
  %m_ml10 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !976
  %5 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml10, align 8, !dbg !976, !tbaa !601
  %ml_name11 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %5, i64 0, i32 0, !dbg !977
  %6 = load i8*, i8** %ml_name11, align 8, !dbg !977, !tbaa !755
  %call12 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct._object* %call8, %struct._object* %4, i8* %6) #4, !dbg !978
  br label %cleanup, !dbg !979

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call6, %if.then ], [ %call12, %if.end ]
  ret %struct._object* %retval.0, !dbg !980
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__doc__(%struct.PyCFunctionObject* nocapture readonly %m, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !503, metadata !563), !dbg !981
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !504, metadata !563), !dbg !982
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !983
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !983, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 0, !dbg !984
  %1 = load i8*, i8** %ml_name, align 8, !dbg !984, !tbaa !755
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 3, !dbg !985
  %2 = load i8*, i8** %ml_doc, align 8, !dbg !985, !tbaa !986
  %call = tail call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %1, i8* %2) #4, !dbg !987
  ret %struct._object* %call, !dbg !988
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__name__(%struct.PyCFunctionObject* nocapture readonly %m, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !507, metadata !563), !dbg !989
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !508, metadata !563), !dbg !990
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !991
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !991, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 0, !dbg !992
  %1 = load i8*, i8** %ml_name, align 8, !dbg !992, !tbaa !755
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %1) #4, !dbg !993
  ret %struct._object* %call, !dbg !994
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__qualname__(%struct.PyCFunctionObject* nocapture readonly %m, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !511, metadata !563), !dbg !995
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !512, metadata !563), !dbg !996
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 2, !dbg !997
  %0 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !997, !tbaa !581
  %cmp = icmp eq %struct._object* %0, null, !dbg !999
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1000

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1001
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1001, !tbaa !587
  %cmp2 = icmp eq %struct._typeobject* %1, @PyModule_Type, !dbg !1001
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1001

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @PyModule_Type) #4, !dbg !1003
  %tobool = icmp eq i32 %call, 0, !dbg !1003
  br i1 %tobool, label %if.end, label %if.then, !dbg !1005

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !1006
  %2 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1006, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %2, i64 0, i32 0, !dbg !1007
  %3 = load i8*, i8** %ml_name, align 8, !dbg !1007, !tbaa !755
  %call6 = tail call %struct._object* @PyUnicode_FromString(i8* %3) #4, !dbg !1008
  br label %cleanup, !dbg !1009

if.end:                                           ; preds = %lor.lhs.false.3
  %4 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1010, !tbaa !581
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1010
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1010, !tbaa !587
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1010
  %6 = load i64, i64* %tp_flags, align 8, !dbg !1010, !tbaa !1011
  %and = and i64 %6, 2147483648, !dbg !1010
  %cmp9 = icmp eq i64 %and, 0, !dbg !1010
  %7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 0, i32 0, !dbg !1012
  %. = select i1 %cmp9, %struct._object* %7, %struct._object* %4, !dbg !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %., i64 0, metadata !513, metadata !563), !dbg !1013
  %call13 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %., %struct._Py_Identifier* nonnull @meth_get__qualname__.PyId___qualname__) #4, !dbg !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !514, metadata !563), !dbg !1015
  %cmp14 = icmp eq %struct._object* %call13, null, !dbg !1016
  br i1 %cmp14, label %cleanup, label %if.end.16, !dbg !1018

if.end.16:                                        ; preds = %if.end
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 1, !dbg !1019
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1019, !tbaa !587
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 19, !dbg !1019
  %9 = load i64, i64* %tp_flags18, align 8, !dbg !1019, !tbaa !1011
  %and19 = and i64 %9, 268435456, !dbg !1019
  %cmp20 = icmp eq i64 %and19, 0, !dbg !1019
  br i1 %cmp20, label %do.body.24, label %if.end.32, !dbg !1020

do.body.24:                                       ; preds = %if.end.16
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1021, !tbaa !571
  tail call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0)) #4, !dbg !1022
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !516, metadata !563), !dbg !1023
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !520, metadata !563), !dbg !1025
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 0, !dbg !1027
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1027, !tbaa !588
  %dec = add i64 %11, -1, !dbg !1027
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1027, !tbaa !588
  %cmp25 = icmp eq i64 %dec, 0, !dbg !1027
  br i1 %cmp25, label %if.else, label %cleanup, !dbg !1029

if.else:                                          ; preds = %do.body.24
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1030, !tbaa !587
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1030
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1030, !tbaa !806
  tail call void %13(%struct._object* %call13) #4, !dbg !1030
  br label %cleanup

if.end.32:                                        ; preds = %if.end.16
  %m_ml33 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !1032
  %14 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml33, align 8, !dbg !1032, !tbaa !601
  %ml_name34 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %14, i64 0, i32 0, !dbg !1033
  %15 = load i8*, i8** %ml_name34, align 8, !dbg !1033, !tbaa !755
  %call35 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), %struct._object* %call13, i8* %15) #4, !dbg !1034
  tail call void @llvm.dbg.value(metadata %struct._object* %call35, i64 0, metadata !515, metadata !563), !dbg !1035
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !523, metadata !563), !dbg !1036
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 0, !dbg !1038
  %16 = load i64, i64* %ob_refcnt38, align 8, !dbg !1038, !tbaa !588
  %dec39 = add i64 %16, -1, !dbg !1038
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !1038, !tbaa !588
  %cmp40 = icmp eq i64 %dec39, 0, !dbg !1038
  br i1 %cmp40, label %if.else.42, label %cleanup, !dbg !1040

if.else.42:                                       ; preds = %if.end.32
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1041, !tbaa !587
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1041
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !1041, !tbaa !806
  tail call void %18(%struct._object* %call13) #4, !dbg !1041
  br label %cleanup

cleanup:                                          ; preds = %if.else.42, %if.end.32, %do.body.24, %if.else, %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call6, %if.then ], [ null, %if.end ], [ null, %if.else ], [ null, %do.body.24 ], [ %call35, %if.end.32 ], [ %call35, %if.else.42 ]
  ret %struct._object* %retval.0, !dbg !1043
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__self__(%struct.PyCFunctionObject* nocapture readonly %m, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !527, metadata !563), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !528, metadata !563), !dbg !1045
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !1046
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1046, !tbaa !601
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 2, !dbg !1046
  %1 = load i32, i32* %ml_flags, align 4, !dbg !1046, !tbaa !695
  %and = and i32 %1, 32, !dbg !1046
  %tobool = icmp eq i32 %and, 0, !dbg !1046
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !1046

cond.false:                                       ; preds = %entry
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 2, !dbg !1047
  %2 = load %struct._object*, %struct._object** %m_self, align 8, !dbg !1047, !tbaa !581
  br label %cond.end, !dbg !1047

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct._object* [ %2, %cond.false ], [ null, %entry ], !dbg !1046
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !529, metadata !563), !dbg !1049
  %cmp = icmp eq %struct._object* %cond, null, !dbg !1050
  %_Py_NoneStruct.cond = select i1 %cmp, %struct._object* @_Py_NoneStruct, %struct._object* %cond, !dbg !1052
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.cond, i64 0, metadata !529, metadata !563), !dbg !1049
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %_Py_NoneStruct.cond, i64 0, i32 0, !dbg !1053
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1053, !tbaa !588
  %inc = add i64 %3, 1, !dbg !1053
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1053, !tbaa !588
  ret %struct._object* %_Py_NoneStruct.cond, !dbg !1054
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__text_signature__(%struct.PyCFunctionObject* nocapture readonly %m, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCFunctionObject* %m, i64 0, metadata !532, metadata !563), !dbg !1055
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !533, metadata !563), !dbg !1056
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %m, i64 0, i32 1, !dbg !1057
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8, !dbg !1057, !tbaa !601
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 0, !dbg !1058
  %1 = load i8*, i8** %ml_name, align 8, !dbg !1058, !tbaa !755
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %0, i64 0, i32 3, !dbg !1059
  %2 = load i8*, i8** %ml_doc, align 8, !dbg !1059, !tbaa !986
  %call = tail call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %1, i8* %2) #4, !dbg !1060
  ret %struct._object* %call, !dbg !1061
}

declare %struct._object* @_PyType_GetDocFromInternalDoc(i8*, i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!560, !561}
!llvm.ident = !{!562}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !384, globals: !534)
!1 = !DIFile(filename: "Objects/methodobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !44, !360, !100, !374, !375, !376}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunctionObject", file: !7, line: 80, baseType: !8)
!7 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 75, size: 320, align: 64, elements: !9)
!9 = !{!10, !355, !358, !359}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !8, file: !7, line: 76, baseType: !11, size: 128, align: 64)
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
!296 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 19, baseType: !58, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !296, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !295, file: !296, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !25, file: !12, line: 391, baseType: !304, size: 64, align: 64, offset: 1984)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !306, line: 11, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!362 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!378 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!379 = !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 25, size: 256, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !379, file: !378, line: 26, baseType: !28, size: 192, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !379, file: !378, line: 27, baseType: !383, size: 64, align: 64, offset: 192)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 64, elements: !88)
!384 = !{!385, !391, !405, !410, !413, !416, !426, !433, !436, !441, !458, !463, !470, !485, !494, !499, !505, !509, !525, !530}
!385 = !DISubprogram(name: "PyCFunction_New", scope: !1, file: !1, line: 20, type: !386, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDef*, %struct._object*)* @PyCFunction_New, variables: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!44, !356, !44}
!388 = !{!389, !390}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ml", arg: 1, scope: !385, file: !1, line: 20, type: !356)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !385, file: !1, line: 20, type: !44)
!391 = !DISubprogram(name: "PyCFunction_NewEx", scope: !1, file: !1, line: 26, type: !392, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyMethodDef*, %struct._object*, %struct._object*)* @PyCFunction_NewEx, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!44, !356, !44, !44}
!394 = !{!395, !396, !397, !398, !399, !401, !403}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ml", arg: 1, scope: !391, file: !1, line: 26, type: !356)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 2, scope: !391, file: !1, line: 26, type: !44)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 3, scope: !391, file: !1, line: 26, type: !44)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !391, file: !1, line: 28, type: !5)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !400, file: !1, line: 41, type: !44)
!400 = distinct !DILexicalBlock(scope: !391, file: !1, line: 41, column: 5)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !402, file: !1, line: 43, type: !44)
!402 = distinct !DILexicalBlock(scope: !391, file: !1, line: 43, column: 5)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !404, file: !1, line: 45, type: !360)
!404 = distinct !DILexicalBlock(scope: !391, file: !1, line: 45, column: 5)
!405 = !DISubprogram(name: "PyCFunction_GetFunction", scope: !1, file: !1, line: 50, type: !406, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* (%struct._object*)* @PyCFunction_GetFunction, variables: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!290, !44}
!408 = !{!409}
!409 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !405, file: !1, line: 50, type: !44)
!410 = !DISubprogram(name: "PyCFunction_GetSelf", scope: !1, file: !1, line: 60, type: !122, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCFunction_GetSelf, variables: !411)
!411 = !{!412}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !410, file: !1, line: 60, type: !44)
!413 = !DISubprogram(name: "PyCFunction_GetFlags", scope: !1, file: !1, line: 70, type: !150, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyCFunction_GetFlags, variables: !414)
!414 = !{!415}
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !413, file: !1, line: 70, type: !44)
!416 = !DISubprogram(name: "PyCFunction_Call", scope: !1, file: !1, line: 80, type: !141, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyCFunction_Call, variables: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !416, file: !1, line: 80, type: !44)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !416, file: !1, line: 80, type: !44)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !416, file: !1, line: 80, type: !44)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !416, file: !1, line: 84, type: !5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !416, file: !1, line: 85, type: !290)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !416, file: !1, line: 86, type: !44)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !416, file: !1, line: 87, type: !44)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !416, file: !1, line: 88, type: !16)
!426 = !DISubprogram(name: "PyCFunction_ClearFreeList", scope: !1, file: !1, line: 368, type: !427, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyCFunction_ClearFreeList, variables: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!50}
!429 = !{!430, !431}
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist_size", scope: !426, file: !1, line: 370, type: !50)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !432, file: !1, line: 373, type: !5)
!432 = distinct !DILexicalBlock(scope: !426, file: !1, line: 372, column: 23)
!433 = !DISubprogram(name: "PyCFunction_Fini", scope: !1, file: !1, line: 383, type: !434, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyCFunction_Fini, variables: !2)
!434 = !DISubroutineType(types: !435)
!435 = !{null}
!436 = !DISubprogram(name: "_PyCFunction_DebugMallocStats", scope: !1, file: !1, line: 390, type: !437, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyCFunction_DebugMallocStats, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !51}
!439 = !{!440}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !436, file: !1, line: 390, type: !51)
!441 = !DISubprogram(name: "meth_dealloc", scope: !1, file: !1, line: 147, type: !442, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyCFunctionObject*)* @meth_dealloc, variables: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !5}
!444 = !{!445, !446, !448, !450, !453, !455}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !441, file: !1, line: 147, type: !5)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !447, file: !1, line: 149, type: !360)
!447 = distinct !DILexicalBlock(scope: !441, file: !1, line: 149, column: 5)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !449, file: !1, line: 150, type: !44)
!449 = distinct !DILexicalBlock(scope: !441, file: !1, line: 150, column: 5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !1, line: 150, type: !44)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 150, column: 5)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 150, column: 5)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !454, file: !1, line: 151, type: !44)
!454 = distinct !DILexicalBlock(scope: !441, file: !1, line: 151, column: 5)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !1, line: 151, type: !44)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 151, column: 5)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 151, column: 5)
!458 = !DISubprogram(name: "meth_repr", scope: !1, file: !1, line: 272, type: !459, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*)* @meth_repr, variables: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!44, !5}
!461 = !{!462}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !458, file: !1, line: 272, type: !5)
!463 = !DISubprogram(name: "meth_hash", scope: !1, file: !1, line: 310, type: !464, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyCFunctionObject*)* @meth_hash, variables: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{!224, !5}
!466 = !{!467, !468, !469}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !463, file: !1, line: 310, type: !5)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !463, file: !1, line: 312, type: !224)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !463, file: !1, line: 312, type: !224)
!470 = !DISubprogram(name: "meth_traverse", scope: !1, file: !1, line: 236, type: !471, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCFunctionObject*, i32 (%struct._object*, i8*)*, i8*)* @meth_traverse, variables: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!50, !5, !269, !4}
!473 = !{!474, !475, !476, !477, !481}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !470, file: !1, line: 236, type: !5)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !470, file: !1, line: 236, type: !269)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !470, file: !1, line: 236, type: !4)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !478, file: !1, line: 238, type: !50)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 238, column: 5)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 238, column: 5)
!480 = distinct !DILexicalBlock(scope: !470, file: !1, line: 238, column: 5)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !482, file: !1, line: 239, type: !50)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 239, column: 5)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 239, column: 5)
!484 = distinct !DILexicalBlock(scope: !470, file: !1, line: 239, column: 5)
!485 = !DISubprogram(name: "meth_richcompare", scope: !1, file: !1, line: 284, type: !277, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @meth_richcompare, variables: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !485, file: !1, line: 284, type: !44)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !485, file: !1, line: 284, type: !44)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !485, file: !1, line: 284, type: !50)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !485, file: !1, line: 286, type: !5)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !485, file: !1, line: 286, type: !5)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !485, file: !1, line: 287, type: !44)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !485, file: !1, line: 288, type: !50)
!494 = !DISubprogram(name: "meth_reduce", scope: !1, file: !1, line: 163, type: !459, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*)* @meth_reduce, variables: !495)
!495 = !{!496, !497, !498}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !494, file: !1, line: 163, type: !5)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !494, file: !1, line: 165, type: !44)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getattr", scope: !494, file: !1, line: 166, type: !44)
!499 = !DISubprogram(name: "meth_get__doc__", scope: !1, file: !1, line: 189, type: !500, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__doc__, variables: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!44, !5, !4}
!502 = !{!503, !504}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !499, file: !1, line: 189, type: !5)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !499, file: !1, line: 189, type: !4)
!505 = !DISubprogram(name: "meth_get__name__", scope: !1, file: !1, line: 195, type: !500, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__name__, variables: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !505, file: !1, line: 195, type: !5)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !505, file: !1, line: 195, type: !4)
!509 = !DISubprogram(name: "meth_get__qualname__", scope: !1, file: !1, line: 201, type: !500, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__qualname__, variables: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !520, !523}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !509, file: !1, line: 201, type: !5)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !509, file: !1, line: 201, type: !4)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !509, file: !1, line: 211, type: !44)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type_qualname", scope: !509, file: !1, line: 211, type: !44)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !509, file: !1, line: 211, type: !44)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !517, file: !1, line: 226, type: !44)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 226, column: 9)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 223, column: 42)
!519 = distinct !DILexicalBlock(scope: !509, file: !1, line: 223, column: 9)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !521, file: !1, line: 226, type: !44)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 226, column: 9)
!522 = distinct !DILexicalBlock(scope: !517, file: !1, line: 226, column: 9)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !1, line: 231, type: !44)
!524 = distinct !DILexicalBlock(scope: !509, file: !1, line: 231, column: 5)
!525 = !DISubprogram(name: "meth_get__self__", scope: !1, file: !1, line: 244, type: !500, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__self__, variables: !526)
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !525, file: !1, line: 244, type: !5)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !525, file: !1, line: 244, type: !4)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !525, file: !1, line: 246, type: !44)
!530 = !DISubprogram(name: "meth_get__text_signature__", scope: !1, file: !1, line: 183, type: !500, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCFunctionObject*, i8*)* @meth_get__text_signature__, variables: !531)
!531 = !{!532, !533}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !530, file: !1, line: 183, type: !5)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !530, file: !1, line: 183, type: !4)
!534 = !{!535, !537, !538, !539, !543, !551, !554, !559}
!535 = !DIGlobalVariable(name: "PyCFunction_Type", scope: !0, file: !1, line: 330, type: !536, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCFunction_Type)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !12, line: 422, baseType: !25)
!537 = !DIGlobalVariable(name: "free_list", scope: !0, file: !1, line: 10, type: !5, isLocal: true, isDefinition: true, variable: %struct.PyCFunctionObject** @free_list)
!538 = !DIGlobalVariable(name: "numfree", scope: !0, file: !1, line: 11, type: !50, isLocal: true, isDefinition: true, variable: i32* @numfree)
!539 = !DIGlobalVariable(name: "meth_methods", scope: !0, file: !1, line: 177, type: !540, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @meth_methods)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 512, align: 64, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 2)
!543 = !DIGlobalVariable(name: "PyId_getattr", scope: !494, file: !1, line: 167, type: !544, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @meth_reduce.PyId_getattr)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !12, line: 144, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !12, line: 140, size: 192, align: 64, elements: !546)
!546 = !{!547, !549, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !12, line: 141, baseType: !548, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !545, file: !12, line: 142, baseType: !34, size: 64, align: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !545, file: !12, line: 143, baseType: !44, size: 64, align: 64, offset: 128)
!551 = !DIGlobalVariable(name: "meth_members", scope: !0, file: !1, line: 266, type: !552, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @meth_members)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 640, align: 64, elements: !541)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !296, line: 24, baseType: !295)
!554 = !DIGlobalVariable(name: "meth_getsets", scope: !0, file: !1, line: 255, type: !555, isLocal: true, isDefinition: true, variable: [6 x %struct.PyGetSetDef]* @meth_getsets)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 1920, align: 64, elements: !557)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !306, line: 17, baseType: !305)
!557 = !{!558}
!558 = !DISubrange(count: 6)
!559 = !DIGlobalVariable(name: "PyId___qualname__", scope: !509, file: !1, line: 212, type: !544, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @meth_get__qualname__.PyId___qualname__)
!560 = !{i32 2, !"Dwarf Version", i32 4}
!561 = !{i32 2, !"Debug Info Version", i32 3}
!562 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!563 = !DIExpression()
!564 = !DILocation(line: 20, column: 30, scope: !385)
!565 = !DILocation(line: 20, column: 44, scope: !385)
!566 = !DILocation(line: 26, column: 32, scope: !391, inlinedAt: !567)
!567 = distinct !DILocation(line: 22, column: 12, scope: !385)
!568 = !DILocation(line: 26, column: 46, scope: !391, inlinedAt: !567)
!569 = !DILocation(line: 26, column: 62, scope: !391, inlinedAt: !567)
!570 = !DILocation(line: 29, column: 10, scope: !391, inlinedAt: !567)
!571 = !{!572, !572, i64 0}
!572 = !{!"any pointer", !573, i64 0}
!573 = !{!"omnipotent char", !574, i64 0}
!574 = !{!"Simple C/C++ TBAA"}
!575 = !DILocation(line: 28, column: 24, scope: !391, inlinedAt: !567)
!576 = !DILocation(line: 30, column: 12, scope: !577, inlinedAt: !567)
!577 = distinct !DILexicalBlock(scope: !391, file: !1, line: 30, column: 9)
!578 = !DILocation(line: 30, column: 9, scope: !391, inlinedAt: !567)
!579 = !DILocation(line: 31, column: 47, scope: !580, inlinedAt: !567)
!580 = distinct !DILexicalBlock(scope: !577, file: !1, line: 30, column: 21)
!581 = !{!582, !572, i64 24}
!582 = !{!"", !583, i64 0, !572, i64 16, !572, i64 24, !572, i64 32}
!583 = !{!"_object", !584, i64 0, !572, i64 8}
!584 = !{!"long", !573, i64 0}
!585 = !DILocation(line: 31, column: 19, scope: !580, inlinedAt: !567)
!586 = !DILocation(line: 32, column: 15, scope: !580, inlinedAt: !567)
!587 = !{!583, !572, i64 8}
!588 = !{!583, !584, i64 0}
!589 = !DILocation(line: 33, column: 16, scope: !580, inlinedAt: !567)
!590 = !{!591, !591, i64 0}
!591 = !{!"int", !573, i64 0}
!592 = !DILocation(line: 34, column: 5, scope: !580, inlinedAt: !567)
!593 = !DILocation(line: 36, column: 14, scope: !594, inlinedAt: !567)
!594 = distinct !DILexicalBlock(scope: !577, file: !1, line: 35, column: 10)
!595 = !DILocation(line: 37, column: 16, scope: !596, inlinedAt: !567)
!596 = distinct !DILexicalBlock(scope: !594, file: !1, line: 37, column: 13)
!597 = !DILocation(line: 37, column: 13, scope: !594, inlinedAt: !567)
!598 = !DILocation(line: 22, column: 12, scope: !385)
!599 = !DILocation(line: 40, column: 9, scope: !391, inlinedAt: !567)
!600 = !DILocation(line: 40, column: 14, scope: !391, inlinedAt: !567)
!601 = !{!582, !572, i64 16}
!602 = !DILocation(line: 41, column: 5, scope: !603, inlinedAt: !567)
!603 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 1)
!604 = !DILocation(line: 41, column: 5, scope: !605, inlinedAt: !567)
!605 = distinct !DILexicalBlock(scope: !400, file: !1, line: 41, column: 5)
!606 = !DILocation(line: 41, column: 5, scope: !400, inlinedAt: !567)
!607 = !DILocation(line: 41, column: 5, scope: !608, inlinedAt: !567)
!608 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 2)
!609 = !DILocation(line: 42, column: 9, scope: !391, inlinedAt: !567)
!610 = !DILocation(line: 42, column: 16, scope: !391, inlinedAt: !567)
!611 = !DILocation(line: 43, column: 5, scope: !612, inlinedAt: !567)
!612 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 1)
!613 = !DILocation(line: 44, column: 9, scope: !391, inlinedAt: !567)
!614 = !DILocation(line: 44, column: 18, scope: !391, inlinedAt: !567)
!615 = !{!582, !572, i64 32}
!616 = !DILocation(line: 45, column: 5, scope: !617, inlinedAt: !567)
!617 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 1)
!618 = !DILocation(line: 45, column: 5, scope: !619, inlinedAt: !567)
!619 = distinct !DILexicalBlock(scope: !404, file: !1, line: 45, column: 5)
!620 = !{!621, !584, i64 16}
!621 = !{!"", !572, i64 0, !572, i64 8, !584, i64 16}
!622 = !DILocation(line: 45, column: 5, scope: !404, inlinedAt: !567)
!623 = !DILocation(line: 45, column: 5, scope: !624, inlinedAt: !567)
!624 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 2)
!625 = !DILocation(line: 45, column: 5, scope: !626, inlinedAt: !567)
!626 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 4)
!627 = distinct !DILexicalBlock(scope: !404, file: !1, line: 45, column: 5)
!628 = !DILocation(line: 45, column: 5, scope: !629, inlinedAt: !567)
!629 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 6)
!630 = !{!621, !572, i64 0}
!631 = !{!621, !572, i64 8}
!632 = !DILocation(line: 46, column: 12, scope: !391, inlinedAt: !567)
!633 = !DILocation(line: 46, column: 5, scope: !391, inlinedAt: !567)
!634 = !DILocation(line: 22, column: 5, scope: !385)
!635 = !DILocation(line: 26, column: 32, scope: !391)
!636 = !DILocation(line: 26, column: 46, scope: !391)
!637 = !DILocation(line: 26, column: 62, scope: !391)
!638 = !DILocation(line: 29, column: 10, scope: !391)
!639 = !DILocation(line: 28, column: 24, scope: !391)
!640 = !DILocation(line: 30, column: 12, scope: !577)
!641 = !DILocation(line: 30, column: 9, scope: !391)
!642 = !DILocation(line: 31, column: 47, scope: !580)
!643 = !DILocation(line: 31, column: 19, scope: !580)
!644 = !DILocation(line: 32, column: 15, scope: !580)
!645 = !DILocation(line: 33, column: 16, scope: !580)
!646 = !DILocation(line: 34, column: 5, scope: !580)
!647 = !DILocation(line: 36, column: 14, scope: !594)
!648 = !DILocation(line: 37, column: 16, scope: !596)
!649 = !DILocation(line: 37, column: 13, scope: !594)
!650 = !DILocation(line: 40, column: 9, scope: !391)
!651 = !DILocation(line: 40, column: 14, scope: !391)
!652 = !DILocation(line: 41, column: 5, scope: !603)
!653 = !DILocation(line: 41, column: 5, scope: !605)
!654 = !DILocation(line: 41, column: 5, scope: !400)
!655 = !DILocation(line: 41, column: 5, scope: !608)
!656 = !DILocation(line: 42, column: 9, scope: !391)
!657 = !DILocation(line: 42, column: 16, scope: !391)
!658 = !DILocation(line: 43, column: 5, scope: !612)
!659 = !DILocation(line: 43, column: 5, scope: !660)
!660 = distinct !DILexicalBlock(scope: !402, file: !1, line: 43, column: 5)
!661 = !DILocation(line: 43, column: 5, scope: !402)
!662 = !DILocation(line: 43, column: 5, scope: !663)
!663 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 2)
!664 = !DILocation(line: 44, column: 9, scope: !391)
!665 = !DILocation(line: 44, column: 18, scope: !391)
!666 = !DILocation(line: 45, column: 5, scope: !617)
!667 = !DILocation(line: 45, column: 5, scope: !619)
!668 = !DILocation(line: 45, column: 5, scope: !404)
!669 = !DILocation(line: 45, column: 5, scope: !624)
!670 = !DILocation(line: 45, column: 5, scope: !626)
!671 = !DILocation(line: 45, column: 5, scope: !629)
!672 = !DILocation(line: 46, column: 12, scope: !391)
!673 = !DILocation(line: 46, column: 5, scope: !391)
!674 = !DILocation(line: 47, column: 1, scope: !391)
!675 = !DILocation(line: 50, column: 35, scope: !405)
!676 = !DILocation(line: 52, column: 10, scope: !677)
!677 = distinct !DILexicalBlock(scope: !405, file: !1, line: 52, column: 9)
!678 = !DILocation(line: 52, column: 9, scope: !405)
!679 = !DILocation(line: 53, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !1, line: 52, column: 33)
!681 = !DILocation(line: 54, column: 9, scope: !680)
!682 = !DILocation(line: 56, column: 12, scope: !405)
!683 = !{!684, !572, i64 8}
!684 = !{!"PyMethodDef", !572, i64 0, !572, i64 8, !591, i64 16, !572, i64 24}
!685 = !DILocation(line: 56, column: 5, scope: !405)
!686 = !DILocation(line: 57, column: 1, scope: !405)
!687 = !DILocation(line: 60, column: 31, scope: !410)
!688 = !DILocation(line: 62, column: 10, scope: !689)
!689 = distinct !DILexicalBlock(scope: !410, file: !1, line: 62, column: 9)
!690 = !DILocation(line: 62, column: 9, scope: !410)
!691 = !DILocation(line: 63, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !1, line: 62, column: 33)
!693 = !DILocation(line: 64, column: 9, scope: !692)
!694 = !DILocation(line: 66, column: 12, scope: !410)
!695 = !{!684, !591, i64 16}
!696 = !DILocation(line: 66, column: 12, scope: !697)
!697 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 2)
!698 = !DILocation(line: 67, column: 1, scope: !410)
!699 = !DILocation(line: 70, column: 32, scope: !413)
!700 = !DILocation(line: 72, column: 10, scope: !701)
!701 = distinct !DILexicalBlock(scope: !413, file: !1, line: 72, column: 9)
!702 = !DILocation(line: 72, column: 9, scope: !413)
!703 = !DILocation(line: 73, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 72, column: 33)
!705 = !DILocation(line: 74, column: 9, scope: !704)
!706 = !DILocation(line: 76, column: 12, scope: !413)
!707 = !DILocation(line: 76, column: 5, scope: !413)
!708 = !DILocation(line: 77, column: 1, scope: !413)
!709 = !DILocation(line: 80, column: 28, scope: !416)
!710 = !DILocation(line: 80, column: 44, scope: !416)
!711 = !DILocation(line: 80, column: 59, scope: !416)
!712 = !DILocation(line: 85, column: 24, scope: !416)
!713 = !DILocation(line: 90, column: 13, scope: !416)
!714 = !DILocation(line: 85, column: 17, scope: !416)
!715 = !DILocation(line: 86, column: 22, scope: !416)
!716 = !DILocation(line: 86, column: 22, scope: !717)
!717 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 2)
!718 = !DILocation(line: 86, column: 15, scope: !416)
!719 = !DILocation(line: 90, column: 41, scope: !416)
!720 = !DILocation(line: 90, column: 5, scope: !416)
!721 = !DILocation(line: 92, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 92, column: 13)
!723 = distinct !DILexicalBlock(scope: !416, file: !1, line: 90, column: 87)
!724 = !DILocation(line: 92, column: 24, scope: !722)
!725 = !DILocation(line: 92, column: 27, scope: !722)
!726 = !DILocation(line: 92, column: 43, scope: !722)
!727 = !DILocation(line: 92, column: 13, scope: !723)
!728 = !DILocation(line: 93, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !722, file: !1, line: 92, column: 49)
!730 = !DILocation(line: 87, column: 15, scope: !416)
!731 = !DILocation(line: 95, column: 13, scope: !729)
!732 = !DILocation(line: 99, column: 17, scope: !723)
!733 = !DILocation(line: 99, column: 15, scope: !723)
!734 = !DILocation(line: 101, column: 9, scope: !723)
!735 = !DILocation(line: 103, column: 16, scope: !736)
!736 = distinct !DILexicalBlock(scope: !723, file: !1, line: 103, column: 13)
!737 = !DILocation(line: 103, column: 24, scope: !736)
!738 = !DILocation(line: 103, column: 27, scope: !736)
!739 = !DILocation(line: 103, column: 43, scope: !736)
!740 = !DILocation(line: 103, column: 13, scope: !723)
!741 = !DILocation(line: 104, column: 20, scope: !742)
!742 = distinct !DILexicalBlock(scope: !736, file: !1, line: 103, column: 49)
!743 = !{!744, !584, i64 16}
!744 = !{!"", !583, i64 0, !584, i64 16}
!745 = !DILocation(line: 88, column: 16, scope: !416)
!746 = !DILocation(line: 105, column: 22, scope: !747)
!747 = distinct !DILexicalBlock(scope: !742, file: !1, line: 105, column: 17)
!748 = !DILocation(line: 105, column: 17, scope: !742)
!749 = !DILocation(line: 106, column: 23, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !1, line: 105, column: 28)
!751 = !DILocation(line: 108, column: 17, scope: !750)
!752 = !DILocation(line: 110, column: 26, scope: !742)
!753 = !DILocation(line: 112, column: 20, scope: !742)
!754 = !DILocation(line: 112, column: 26, scope: !742)
!755 = !{!684, !572, i64 0}
!756 = !DILocation(line: 110, column: 13, scope: !742)
!757 = !DILocation(line: 113, column: 13, scope: !742)
!758 = !DILocation(line: 117, column: 16, scope: !759)
!759 = distinct !DILexicalBlock(scope: !723, file: !1, line: 117, column: 13)
!760 = !DILocation(line: 117, column: 24, scope: !759)
!761 = !DILocation(line: 117, column: 27, scope: !759)
!762 = !DILocation(line: 117, column: 43, scope: !759)
!763 = !DILocation(line: 117, column: 13, scope: !723)
!764 = !DILocation(line: 118, column: 20, scope: !765)
!765 = distinct !DILexicalBlock(scope: !759, file: !1, line: 117, column: 49)
!766 = !DILocation(line: 119, column: 22, scope: !767)
!767 = distinct !DILexicalBlock(scope: !765, file: !1, line: 119, column: 17)
!768 = !DILocation(line: 119, column: 17, scope: !765)
!769 = !DILocation(line: 120, column: 37, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !1, line: 119, column: 28)
!771 = !DILocation(line: 120, column: 23, scope: !770)
!772 = !DILocation(line: 122, column: 17, scope: !770)
!773 = !DILocation(line: 124, column: 26, scope: !765)
!774 = !DILocation(line: 126, column: 20, scope: !765)
!775 = !DILocation(line: 126, column: 26, scope: !765)
!776 = !DILocation(line: 124, column: 13, scope: !765)
!777 = !DILocation(line: 127, column: 13, scope: !765)
!778 = !DILocation(line: 131, column: 25, scope: !723)
!779 = !DILocation(line: 131, column: 9, scope: !723)
!780 = !DILocation(line: 135, column: 9, scope: !723)
!781 = !DILocation(line: 137, column: 18, scope: !416)
!782 = !DILocation(line: 138, column: 21, scope: !416)
!783 = !DILocation(line: 138, column: 27, scope: !416)
!784 = !DILocation(line: 137, column: 5, scope: !416)
!785 = !DILocation(line: 139, column: 5, scope: !416)
!786 = !DILocation(line: 142, column: 1, scope: !416)
!787 = !DILocation(line: 147, column: 33, scope: !441)
!788 = !DILocation(line: 149, column: 5, scope: !789)
!789 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!790 = !DILocation(line: 149, column: 5, scope: !791)
!791 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 2)
!792 = distinct !DILexicalBlock(scope: !447, file: !1, line: 149, column: 5)
!793 = !DILocation(line: 149, column: 5, scope: !794)
!794 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 4)
!795 = !DILocation(line: 150, column: 5, scope: !796)
!796 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!797 = !DILocation(line: 150, column: 5, scope: !452)
!798 = !DILocation(line: 150, column: 5, scope: !449)
!799 = !DILocation(line: 150, column: 5, scope: !800)
!800 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 4)
!801 = !DILocation(line: 150, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !451, file: !1, line: 150, column: 5)
!803 = !DILocation(line: 150, column: 5, scope: !451)
!804 = !DILocation(line: 150, column: 5, scope: !805)
!805 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 6)
!806 = !{!807, !572, i64 48}
!807 = !{!"_typeobject", !744, i64 0, !572, i64 24, !584, i64 32, !584, i64 40, !572, i64 48, !572, i64 56, !572, i64 64, !572, i64 72, !572, i64 80, !572, i64 88, !572, i64 96, !572, i64 104, !572, i64 112, !572, i64 120, !572, i64 128, !572, i64 136, !572, i64 144, !572, i64 152, !572, i64 160, !584, i64 168, !572, i64 176, !572, i64 184, !572, i64 192, !572, i64 200, !584, i64 208, !572, i64 216, !572, i64 224, !572, i64 232, !572, i64 240, !572, i64 248, !572, i64 256, !572, i64 264, !572, i64 272, !572, i64 280, !584, i64 288, !572, i64 296, !572, i64 304, !572, i64 312, !572, i64 320, !572, i64 328, !572, i64 336, !572, i64 344, !572, i64 352, !572, i64 360, !572, i64 368, !572, i64 376, !591, i64 384, !572, i64 392}
!808 = !DILocation(line: 151, column: 5, scope: !809)
!809 = !DILexicalBlockFile(scope: !454, file: !1, discriminator: 1)
!810 = !DILocation(line: 151, column: 5, scope: !457)
!811 = !DILocation(line: 151, column: 5, scope: !454)
!812 = !DILocation(line: 151, column: 5, scope: !813)
!813 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 4)
!814 = !DILocation(line: 151, column: 5, scope: !815)
!815 = distinct !DILexicalBlock(scope: !456, file: !1, line: 151, column: 5)
!816 = !DILocation(line: 151, column: 5, scope: !456)
!817 = !DILocation(line: 151, column: 5, scope: !818)
!818 = !DILexicalBlockFile(scope: !815, file: !1, discriminator: 6)
!819 = !DILocation(line: 155, column: 16, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 152, column: 44)
!821 = distinct !DILexicalBlock(scope: !441, file: !1, line: 152, column: 9)
!822 = !DILocation(line: 152, column: 17, scope: !821)
!823 = !DILocation(line: 152, column: 9, scope: !441)
!824 = !DILocation(line: 153, column: 33, scope: !820)
!825 = !DILocation(line: 153, column: 19, scope: !820)
!826 = !DILocation(line: 154, column: 19, scope: !820)
!827 = !DILocation(line: 156, column: 5, scope: !820)
!828 = !DILocation(line: 158, column: 25, scope: !829)
!829 = distinct !DILexicalBlock(scope: !821, file: !1, line: 157, column: 10)
!830 = !DILocation(line: 158, column: 9, scope: !829)
!831 = !DILocation(line: 160, column: 1, scope: !441)
!832 = !DILocation(line: 272, column: 30, scope: !458)
!833 = !DILocation(line: 274, column: 12, scope: !834)
!834 = distinct !DILexicalBlock(scope: !458, file: !1, line: 274, column: 9)
!835 = !DILocation(line: 274, column: 19, scope: !834)
!836 = !DILocation(line: 274, column: 27, scope: !834)
!837 = !DILocation(line: 274, column: 30, scope: !838)
!838 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 1)
!839 = !DILocation(line: 274, column: 30, scope: !840)
!840 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 2)
!841 = !DILocation(line: 274, column: 9, scope: !458)
!842 = !DILocation(line: 276, column: 39, scope: !834)
!843 = !DILocation(line: 276, column: 45, scope: !834)
!844 = !DILocation(line: 275, column: 16, scope: !834)
!845 = !DILocation(line: 275, column: 9, scope: !834)
!846 = !DILocation(line: 278, column: 35, scope: !458)
!847 = !DILocation(line: 278, column: 41, scope: !458)
!848 = !DILocation(line: 279, column: 35, scope: !458)
!849 = !DILocation(line: 279, column: 43, scope: !458)
!850 = !DILocation(line: 279, column: 52, scope: !458)
!851 = !{!807, !572, i64 24}
!852 = !DILocation(line: 277, column: 12, scope: !458)
!853 = !DILocation(line: 277, column: 5, scope: !458)
!854 = !DILocation(line: 281, column: 1, scope: !458)
!855 = !DILocation(line: 310, column: 30, scope: !463)
!856 = !DILocation(line: 313, column: 12, scope: !857)
!857 = distinct !DILexicalBlock(scope: !463, file: !1, line: 313, column: 9)
!858 = !DILocation(line: 313, column: 19, scope: !857)
!859 = !DILocation(line: 313, column: 9, scope: !463)
!860 = !DILocation(line: 316, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !1, line: 315, column: 10)
!862 = !DILocation(line: 312, column: 15, scope: !463)
!863 = !DILocation(line: 317, column: 15, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !1, line: 317, column: 13)
!865 = !DILocation(line: 317, column: 13, scope: !861)
!866 = !DILocation(line: 320, column: 36, scope: !463)
!867 = !DILocation(line: 320, column: 42, scope: !463)
!868 = !DILocation(line: 320, column: 9, scope: !463)
!869 = !DILocation(line: 312, column: 18, scope: !463)
!870 = !DILocation(line: 321, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !463, file: !1, line: 321, column: 9)
!872 = !DILocation(line: 321, column: 9, scope: !463)
!873 = !DILocation(line: 323, column: 7, scope: !463)
!874 = !DILocation(line: 324, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !463, file: !1, line: 324, column: 9)
!876 = !DILocation(line: 324, column: 9, scope: !463)
!877 = !DILocation(line: 326, column: 5, scope: !463)
!878 = !DILocation(line: 327, column: 1, scope: !463)
!879 = !DILocation(line: 236, column: 34, scope: !470)
!880 = !DILocation(line: 236, column: 47, scope: !470)
!881 = !DILocation(line: 236, column: 60, scope: !470)
!882 = !DILocation(line: 238, column: 5, scope: !883)
!883 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!884 = !DILocation(line: 238, column: 5, scope: !480)
!885 = !DILocation(line: 238, column: 5, scope: !886)
!886 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 2)
!887 = !DILocation(line: 238, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !478, file: !1, line: 238, column: 5)
!889 = !DILocation(line: 239, column: 5, scope: !890)
!890 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 1)
!891 = !DILocation(line: 239, column: 5, scope: !484)
!892 = !DILocation(line: 239, column: 5, scope: !893)
!893 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 2)
!894 = !DILocation(line: 239, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !482, file: !1, line: 239, column: 5)
!896 = !DILocation(line: 240, column: 5, scope: !470)
!897 = !DILocation(line: 241, column: 1, scope: !470)
!898 = !DILocation(line: 284, column: 28, scope: !485)
!899 = !DILocation(line: 284, column: 44, scope: !485)
!900 = !DILocation(line: 284, column: 55, scope: !485)
!901 = !DILocation(line: 290, column: 22, scope: !902)
!902 = distinct !DILexicalBlock(scope: !485, file: !1, line: 290, column: 9)
!903 = !DILocation(line: 291, column: 10, scope: !902)
!904 = !DILocation(line: 291, column: 34, scope: !902)
!905 = !DILocation(line: 292, column: 10, scope: !902)
!906 = !DILocation(line: 290, column: 9, scope: !485)
!907 = !DILocation(line: 294, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !902, file: !1, line: 293, column: 5)
!909 = !DILocation(line: 298, column: 13, scope: !485)
!910 = !DILocation(line: 298, column: 26, scope: !485)
!911 = !DILocation(line: 298, column: 20, scope: !485)
!912 = !DILocation(line: 288, column: 9, scope: !485)
!913 = !DILocation(line: 299, column: 9, scope: !485)
!914 = !DILocation(line: 300, column: 17, scope: !915)
!915 = distinct !DILexicalBlock(scope: !485, file: !1, line: 299, column: 9)
!916 = !DILocation(line: 300, column: 23, scope: !915)
!917 = !DILocation(line: 300, column: 37, scope: !915)
!918 = !DILocation(line: 300, column: 43, scope: !915)
!919 = !DILocation(line: 300, column: 31, scope: !915)
!920 = !DILocation(line: 300, column: 9, scope: !915)
!921 = !DILocation(line: 301, column: 12, scope: !922)
!922 = distinct !DILexicalBlock(scope: !485, file: !1, line: 301, column: 9)
!923 = !DILocation(line: 302, column: 15, scope: !922)
!924 = !DILocation(line: 287, column: 15, scope: !485)
!925 = !DILocation(line: 304, column: 15, scope: !922)
!926 = !DILocation(line: 301, column: 9, scope: !485)
!927 = !DILocation(line: 305, column: 5, scope: !485)
!928 = !DILocation(line: 306, column: 5, scope: !485)
!929 = !DILocation(line: 307, column: 1, scope: !485)
!930 = !DILocation(line: 370, column: 25, scope: !426)
!931 = !DILocation(line: 370, column: 9, scope: !426)
!932 = !DILocation(line: 372, column: 12, scope: !933)
!933 = !DILexicalBlockFile(scope: !934, file: !1, discriminator: 2)
!934 = !DILexicalBlockFile(scope: !426, file: !1, discriminator: 1)
!935 = !DILocation(line: 372, column: 5, scope: !426)
!936 = !DILocation(line: 373, column: 28, scope: !432)
!937 = !DILocation(line: 374, column: 46, scope: !432)
!938 = !DILocation(line: 374, column: 19, scope: !432)
!939 = !DILocation(line: 375, column: 25, scope: !432)
!940 = !DILocation(line: 375, column: 9, scope: !432)
!941 = !DILocation(line: 376, column: 16, scope: !432)
!942 = !DILocation(line: 379, column: 5, scope: !426)
!943 = !DILocation(line: 372, column: 12, scope: !933, inlinedAt: !944)
!944 = distinct !DILocation(line: 385, column: 11, scope: !433)
!945 = !DILocation(line: 372, column: 5, scope: !426, inlinedAt: !944)
!946 = !DILocation(line: 374, column: 46, scope: !432, inlinedAt: !944)
!947 = !DILocation(line: 385, column: 11, scope: !433)
!948 = !DILocation(line: 374, column: 19, scope: !432, inlinedAt: !944)
!949 = !DILocation(line: 375, column: 25, scope: !432, inlinedAt: !944)
!950 = !DILocation(line: 375, column: 9, scope: !432, inlinedAt: !944)
!951 = !DILocation(line: 376, column: 16, scope: !432, inlinedAt: !944)
!952 = !DILocation(line: 386, column: 1, scope: !433)
!953 = !DILocation(line: 390, column: 37, scope: !436)
!954 = !DILocation(line: 394, column: 28, scope: !436)
!955 = !DILocation(line: 392, column: 5, scope: !436)
!956 = !DILocation(line: 395, column: 1, scope: !436)
!957 = !DILocation(line: 163, column: 32, scope: !494)
!958 = !DILocation(line: 169, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !494, file: !1, line: 169, column: 9)
!960 = !DILocation(line: 169, column: 19, scope: !959)
!961 = !DILocation(line: 169, column: 27, scope: !959)
!962 = !DILocation(line: 169, column: 30, scope: !963)
!963 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 1)
!964 = !DILocation(line: 169, column: 30, scope: !965)
!965 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 2)
!966 = !DILocation(line: 169, column: 9, scope: !494)
!967 = !DILocation(line: 170, column: 40, scope: !959)
!968 = !DILocation(line: 170, column: 46, scope: !959)
!969 = !DILocation(line: 170, column: 16, scope: !959)
!970 = !DILocation(line: 170, column: 9, scope: !959)
!971 = !DILocation(line: 172, column: 16, scope: !494)
!972 = !DILocation(line: 165, column: 15, scope: !494)
!973 = !DILocation(line: 173, column: 15, scope: !494)
!974 = !DILocation(line: 166, column: 15, scope: !494)
!975 = !DILocation(line: 174, column: 47, scope: !494)
!976 = !DILocation(line: 174, column: 58, scope: !494)
!977 = !DILocation(line: 174, column: 64, scope: !494)
!978 = !DILocation(line: 174, column: 12, scope: !494)
!979 = !DILocation(line: 174, column: 5, scope: !494)
!980 = !DILocation(line: 175, column: 1, scope: !494)
!981 = !DILocation(line: 189, column: 36, scope: !499)
!982 = !DILocation(line: 189, column: 45, scope: !499)
!983 = !DILocation(line: 191, column: 45, scope: !499)
!984 = !DILocation(line: 191, column: 51, scope: !499)
!985 = !DILocation(line: 191, column: 69, scope: !499)
!986 = !{!684, !572, i64 24}
!987 = !DILocation(line: 191, column: 12, scope: !499)
!988 = !DILocation(line: 191, column: 5, scope: !499)
!989 = !DILocation(line: 195, column: 37, scope: !505)
!990 = !DILocation(line: 195, column: 46, scope: !505)
!991 = !DILocation(line: 197, column: 36, scope: !505)
!992 = !DILocation(line: 197, column: 42, scope: !505)
!993 = !DILocation(line: 197, column: 12, scope: !505)
!994 = !DILocation(line: 197, column: 5, scope: !505)
!995 = !DILocation(line: 201, column: 41, scope: !509)
!996 = !DILocation(line: 201, column: 50, scope: !509)
!997 = !DILocation(line: 214, column: 12, scope: !998)
!998 = distinct !DILexicalBlock(scope: !509, file: !1, line: 214, column: 9)
!999 = !DILocation(line: 214, column: 19, scope: !998)
!1000 = !DILocation(line: 214, column: 27, scope: !998)
!1001 = !DILocation(line: 214, column: 30, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !998, file: !1, discriminator: 1)
!1003 = !DILocation(line: 214, column: 30, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !998, file: !1, discriminator: 2)
!1005 = !DILocation(line: 214, column: 9, scope: !509)
!1006 = !DILocation(line: 215, column: 40, scope: !998)
!1007 = !DILocation(line: 215, column: 46, scope: !998)
!1008 = !DILocation(line: 215, column: 16, scope: !998)
!1009 = !DILocation(line: 215, column: 9, scope: !998)
!1010 = !DILocation(line: 217, column: 12, scope: !509)
!1011 = !{!807, !584, i64 168}
!1012 = !DILocation(line: 217, column: 50, scope: !509)
!1013 = !DILocation(line: 211, column: 15, scope: !509)
!1014 = !DILocation(line: 219, column: 21, scope: !509)
!1015 = !DILocation(line: 211, column: 22, scope: !509)
!1016 = !DILocation(line: 220, column: 23, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !509, file: !1, line: 220, column: 9)
!1018 = !DILocation(line: 220, column: 9, scope: !509)
!1019 = !DILocation(line: 223, column: 10, scope: !519)
!1020 = !DILocation(line: 223, column: 9, scope: !509)
!1021 = !DILocation(line: 224, column: 25, scope: !518)
!1022 = !DILocation(line: 224, column: 9, scope: !518)
!1023 = !DILocation(line: 226, column: 9, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !517, file: !1, discriminator: 1)
!1025 = !DILocation(line: 226, column: 9, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !521, file: !1, discriminator: 4)
!1027 = !DILocation(line: 226, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !521, file: !1, line: 226, column: 9)
!1029 = !DILocation(line: 226, column: 9, scope: !521)
!1030 = !DILocation(line: 226, column: 9, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1028, file: !1, discriminator: 6)
!1032 = !DILocation(line: 230, column: 59, scope: !509)
!1033 = !DILocation(line: 230, column: 65, scope: !509)
!1034 = !DILocation(line: 230, column: 11, scope: !509)
!1035 = !DILocation(line: 211, column: 38, scope: !509)
!1036 = !DILocation(line: 231, column: 5, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1038 = !DILocation(line: 231, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !524, file: !1, line: 231, column: 5)
!1040 = !DILocation(line: 231, column: 5, scope: !524)
!1041 = !DILocation(line: 231, column: 5, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 3)
!1043 = !DILocation(line: 233, column: 1, scope: !509)
!1044 = !DILocation(line: 244, column: 37, scope: !525)
!1045 = !DILocation(line: 244, column: 46, scope: !525)
!1046 = !DILocation(line: 248, column: 12, scope: !525)
!1047 = !DILocation(line: 248, column: 12, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 2)
!1049 = !DILocation(line: 246, column: 15, scope: !525)
!1050 = !DILocation(line: 249, column: 14, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !525, file: !1, line: 249, column: 9)
!1052 = !DILocation(line: 249, column: 9, scope: !525)
!1053 = !DILocation(line: 251, column: 5, scope: !525)
!1054 = !DILocation(line: 252, column: 5, scope: !525)
!1055 = !DILocation(line: 183, column: 47, scope: !530)
!1056 = !DILocation(line: 183, column: 56, scope: !530)
!1057 = !DILocation(line: 185, column: 55, scope: !530)
!1058 = !DILocation(line: 185, column: 61, scope: !530)
!1059 = !DILocation(line: 185, column: 79, scope: !530)
!1060 = !DILocation(line: 185, column: 12, scope: !530)
!1061 = !DILocation(line: 185, column: 5, scope: !530)
