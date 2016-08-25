; ModuleID = './methodobject.bc'
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
  store %struct.PyMethodDef* %ml, %struct.PyMethodDef** %ml.addr, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml.addr, align 8
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %0, %struct._object* %1, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* %ml, %struct._object* %self, %struct._object* %module) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ml.addr = alloca %struct.PyMethodDef*, align 8
  %self.addr = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %op = alloca %struct.PyCFunctionObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp10 = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyMethodDef* %ml, %struct.PyMethodDef** %ml.addr, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8
  store %struct.PyCFunctionObject* %0, %struct.PyCFunctionObject** %op, align 8
  %1 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %cmp = icmp ne %struct.PyCFunctionObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %m_self, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %4, %struct.PyCFunctionObject** @free_list, align 8
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %6 = bitcast %struct.PyCFunctionObject* %5 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  store %struct._typeobject* @PyCFunction_Type, %struct._typeobject** %ob_type, align 8
  %7 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %8 = bitcast %struct.PyCFunctionObject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %9 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %10 = load i32, i32* @numfree, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* @numfree, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyCFunction_Type)
  %11 = bitcast %struct._object* %call to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %11, %struct.PyCFunctionObject** %op, align 8
  %12 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %cmp1 = icmp eq %struct.PyCFunctionObject* %12, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %13 = load %struct.PyMethodDef*, %struct.PyMethodDef** %ml.addr, align 8
  %14 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 1
  store %struct.PyMethodDef* %13, %struct.PyMethodDef** %m_ml, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %15, %struct._object** %_py_xincref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %16, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt6, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %19 = load %struct._object*, %struct._object** %self.addr, align 8
  %20 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %m_self8 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %20, i32 0, i32 2
  store %struct._object* %19, %struct._object** %m_self8, align 8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %module.addr, align 8
  store %struct._object* %21, %struct._object** %_py_xincref_tmp10, align 8
  %22 = load %struct._object*, %struct._object** %_py_xincref_tmp10, align 8
  %cmp11 = icmp ne %struct._object* %22, null
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.9
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp10, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt13, align 8
  %inc14 = add i64 %24, 1
  store i64 %inc14, i64* %ob_refcnt13, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.9
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %25 = load %struct._object*, %struct._object** %module.addr, align 8
  %26 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %26, i32 0, i32 3
  store %struct._object* %25, %struct._object** %m_module, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %27 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %28 = bitcast %struct.PyCFunctionObject* %27 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %28, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %30 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %30, 1
  %cmp18 = icmp ne i64 %shr, -2
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body.17
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end.20:                                        ; preds = %do.body.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc22 = bitcast %union._gc_head* %31 to %struct.anon*
  %gc_refs23 = getelementptr inbounds %struct.anon, %struct.anon* %gc22, i32 0, i32 2
  %32 = load i64, i64* %gc_refs23, align 8
  %and = and i64 %32, 1
  %or = or i64 %and, -6
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc24 = bitcast %union._gc_head* %33 to %struct.anon*
  %gc_refs25 = getelementptr inbounds %struct.anon, %struct.anon* %gc24, i32 0, i32 2
  store i64 %or, i64* %gc_refs25, align 8
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.21
  %34 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %35 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc27 = bitcast %union._gc_head* %35 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc27, i32 0, i32 0
  store %union._gc_head* %34, %union._gc_head** %gc_next, align 8
  %36 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc28 = bitcast %union._gc_head* %36 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc28, i32 0, i32 1
  %37 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %38 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc29 = bitcast %union._gc_head* %38 to %struct.anon*
  %gc_prev30 = getelementptr inbounds %struct.anon, %struct.anon* %gc29, i32 0, i32 1
  store %union._gc_head* %37, %union._gc_head** %gc_prev30, align 8
  %39 = load %union._gc_head*, %union._gc_head** %g, align 8
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc31 = bitcast %union._gc_head* %40 to %struct.anon*
  %gc_prev32 = getelementptr inbounds %struct.anon, %struct.anon* %gc31, i32 0, i32 1
  %41 = load %union._gc_head*, %union._gc_head** %gc_prev32, align 8
  %gc33 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_next34 = getelementptr inbounds %struct.anon, %struct.anon* %gc33, i32 0, i32 0
  store %union._gc_head* %39, %union._gc_head** %gc_next34, align 8
  %42 = load %union._gc_head*, %union._gc_head** %g, align 8
  %43 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc35 = bitcast %union._gc_head* %43 to %struct.anon*
  %gc_prev36 = getelementptr inbounds %struct.anon, %struct.anon* %gc35, i32 0, i32 1
  store %union._gc_head* %42, %union._gc_head** %gc_prev36, align 8
  br label %do.end.37

do.end.37:                                        ; preds = %do.end.26
  %44 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %op, align 8
  %45 = bitcast %struct.PyCFunctionObject* %44 to %struct._object*
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.37, %if.then.2
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* (%struct._object*, %struct._object*)* @PyCFunction_GetFunction(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object* (%struct._object*, %struct._object*)*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 53)
  store %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 1
  %5 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %5, %struct._object* (%struct._object*, %struct._object*)** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %retval
  ret %struct._object* (%struct._object*, %struct._object*)* %6
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCFunction_GetSelf(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 63)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 2
  %5 = load i32, i32* %ml_flags, align 4
  %and = and i32 %5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %op.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyCFunctionObject*
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %m_self, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %8, %cond.false ]
  store %struct._object* %cond, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define i32 @PyCFunction_GetFlags(%struct._object* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyCFunction_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 73)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 2
  %5 = load i32, i32* %ml_flags, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
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
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %func.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %1, %struct.PyCFunctionObject** %f, align 8
  %2 = load %struct._object*, %struct._object** %func.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyCFunctionObject*
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 1
  %5 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8
  store %struct._object* (%struct._object*, %struct._object*)* %5, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8
  %6 = load %struct._object*, %struct._object** %func.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyCFunctionObject*
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %7, i32 0, i32 1
  %8 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml1, align 8
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %8, i32 0, i32 2
  %9 = load i32, i32* %ml_flags, align 4
  %and = and i32 %9, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct._object*, %struct._object** %func.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyCFunctionObject*
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %m_self, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %12, %cond.false ]
  store %struct._object* %cond, %struct._object** %self, align 8
  %13 = load %struct._object*, %struct._object** %func.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyCFunctionObject*
  %m_ml2 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 1
  %15 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml2, align 8
  %ml_flags3 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %15, i32 0, i32 2
  %16 = load i32, i32* %ml_flags3, align 4
  %and4 = and i32 %16, -113
  switch i32 %and4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 8, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %cond.end
  %17 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp = icmp eq %struct._object* %17, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %18 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i64 @PyDict_Size(%struct._object* %18)
  %cmp5 = icmp eq i64 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %19 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8
  %20 = load %struct._object*, %struct._object** %self, align 8
  %21 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call6 = call %struct._object* %19(%struct._object* %20, %struct._object* %21)
  store %struct._object* %call6, %struct._object** %res, align 8
  %22 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.7:                                          ; preds = %cond.end
  %23 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8
  %24 = bitcast %struct._object* (%struct._object*, %struct._object*)* %23 to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*
  %25 = load %struct._object*, %struct._object** %self, align 8
  %26 = load %struct._object*, %struct._object** %arg.addr, align 8
  %27 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call8 = call %struct._object* %24(%struct._object* %25, %struct._object* %26, %struct._object* %27)
  store %struct._object* %call8, %struct._object** %res, align 8
  %28 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

sw.bb.9:                                          ; preds = %cond.end
  %29 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp10 = icmp eq %struct._object* %29, null
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %sw.bb.9
  %30 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call12 = call i64 @PyDict_Size(%struct._object* %30)
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %lor.lhs.false.11, %sw.bb.9
  %31 = load %struct._object*, %struct._object** %arg.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size, align 8
  store i64 %33, i64* %size, align 8
  %34 = load i64, i64* %size, align 8
  %cmp15 = icmp eq i64 %34, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.14
  %35 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8
  %36 = load %struct._object*, %struct._object** %self, align 8
  %call17 = call %struct._object* %35(%struct._object* %36, %struct._object* null)
  store %struct._object* %call17, %struct._object** %res, align 8
  %37 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %39 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %f, align 8
  %m_ml19 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %39, i32 0, i32 1
  %40 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml19, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %40, i32 0, i32 0
  %41 = load i8*, i8** %ml_name, align 8
  %42 = load i64, i64* %size, align 8
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* %41, i64 %42)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.11
  br label %sw.epilog

sw.bb.22:                                         ; preds = %cond.end
  %43 = load %struct._object*, %struct._object** %kw.addr, align 8
  %cmp23 = icmp eq %struct._object* %43, null
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %sw.bb.22
  %44 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call25 = call i64 @PyDict_Size(%struct._object* %44)
  %cmp26 = icmp eq i64 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %lor.lhs.false.24, %sw.bb.22
  %45 = load %struct._object*, %struct._object** %arg.addr, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyVarObject*
  %ob_size28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %46, i32 0, i32 1
  %47 = load i64, i64* %ob_size28, align 8
  store i64 %47, i64* %size, align 8
  %48 = load i64, i64* %size, align 8
  %cmp29 = icmp eq i64 %48, 1
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.27
  %49 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %meth, align 8
  %50 = load %struct._object*, %struct._object** %self, align 8
  %51 = load %struct._object*, %struct._object** %arg.addr, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %53 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call31 = call %struct._object* %49(%struct._object* %50, %struct._object* %53)
  store %struct._object* %call31, %struct._object** %res, align 8
  %54 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  %55 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %56 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %f, align 8
  %m_ml33 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %56, i32 0, i32 1
  %57 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml33, align 8
  %ml_name34 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %57, i32 0, i32 0
  %58 = load i8*, i8** %ml_name34, align 8
  %59 = load i64, i64* %size, align 8
  %call35 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8* %58, i64 %59)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.24
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %60 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %60, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.36, %if.end.21, %if.end
  %61 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %62 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %f, align 8
  %m_ml37 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %62, i32 0, i32 1
  %63 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml37, align 8
  %ml_name38 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %63, i32 0, i32 0
  %64 = load i8*, i8** %ml_name38, align 8
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %64)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.end.32, %if.then.30, %if.end.18, %if.then.16, %sw.bb.7, %if.then
  %65 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %65
}

declare i64 @PyDict_Size(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @meth_dealloc(%struct.PyCFunctionObject* %m) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %1 = bitcast %struct.PyCFunctionObject* %0 to %union._gc_head*
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
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %m_self, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %16, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.17
  br label %do.body.18

do.body.18:                                       ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end

if.else:                                          ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
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
  %24 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %m_module, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp25, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  %cmp26 = icmp ne %struct._object* %26, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.body.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp29, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %29, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %32(%struct._object* %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.24
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %34 = load i32, i32* @numfree, align 4
  %cmp41 = icmp slt i32 %34, 256
  br i1 %cmp41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %do.end.40
  %35 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8
  %36 = bitcast %struct.PyCFunctionObject* %35 to %struct._object*
  %37 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self43 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %37, i32 0, i32 2
  store %struct._object* %36, %struct._object** %m_self43, align 8
  %38 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  store %struct.PyCFunctionObject* %38, %struct.PyCFunctionObject** @free_list, align 8
  %39 = load i32, i32* @numfree, align 4
  %inc = add i32 %39, 1
  store i32 %inc, i32* @numfree, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %do.end.40
  %40 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %41 = bitcast %struct.PyCFunctionObject* %40 to i8*
  call void @PyObject_GC_Del(i8* %41)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.42
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_repr(%struct.PyCFunctionObject* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %m_self, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %m_self1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyModule_Type
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self4 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %m_self4, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 1
  %9 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %9, i32 0, i32 0
  %10 = load i8*, i8** %ml_name, align 8
  %call6 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %10)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml7 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 1
  %12 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml7, align 8
  %ml_name8 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %12, i32 0, i32 0
  %13 = load i8*, i8** %ml_name8, align 8
  %14 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %m_self9, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1
  %17 = load i8*, i8** %tp_name, align 8
  %18 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self11 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %18, i32 0, i32 2
  %19 = load %struct._object*, %struct._object** %m_self11, align 8
  %call12 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i8* %13, i8* %17, %struct._object* %19)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal i64 @meth_hash(%struct.PyCFunctionObject* %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca %struct.PyCFunctionObject*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.PyCFunctionObject* %a, %struct.PyCFunctionObject** %a.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %m_self, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %x, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a.addr, align 8
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %m_self1, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp2 = icmp eq i64 %4, -1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 1
  %6 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %6, i32 0, i32 1
  %7 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8
  %8 = bitcast %struct._object* (%struct._object*, %struct._object*)* %7 to i8*
  %call5 = call i64 @_Py_HashPointer(i8* %8)
  store i64 %call5, i64* %y, align 8
  %9 = load i64, i64* %y, align 8
  %cmp6 = icmp eq i64 %9, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i64 -1, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %10 = load i64, i64* %y, align 8
  %11 = load i64, i64* %x, align 8
  %xor = xor i64 %11, %10
  store i64 %xor, i64* %x, align 8
  %12 = load i64, i64* %x, align 8
  %cmp9 = icmp eq i64 %12, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i64 -2, i64* %x, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %13 = load i64, i64* %x, align 8
  store i64 %13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.7, %if.then.3
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @meth_traverse(%struct.PyCFunctionObject* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %m_self, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %m_self1, align 8
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
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %m_module, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_module9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %m_module9, align 8
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyCFunction_Type
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %5, @PyCFunction_Type
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %8, %struct.PyCFunctionObject** %a, align 8
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %10, %struct.PyCFunctionObject** %b, align 8
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %m_self, align 8
  %13 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %b, align 8
  %m_self6 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %m_self6, align 8
  %cmp7 = icmp eq %struct._object* %12, %14
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %eq, align 4
  %15 = load i32, i32* %eq, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %a, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %16, i32 0, i32 1
  %17 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %17, i32 0, i32 1
  %18 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth, align 8
  %19 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %b, align 8
  %m_ml9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %19, i32 0, i32 1
  %20 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml9, align 8
  %ml_meth10 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %20, i32 0, i32 1
  %21 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %ml_meth10, align 8
  %cmp11 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %18, %21
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %eq, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %22 = load i32, i32* %op.addr, align 4
  %cmp14 = icmp eq i32 %22, 2
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %23 = load i32, i32* %eq, align 4
  %tobool17 = icmp ne i32 %23, 0
  %cond = select i1 %tobool17, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.13
  %24 = load i32, i32* %eq, align 4
  %tobool18 = icmp ne i32 %24, 0
  %cond19 = select i1 %tobool18, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond19, %struct._object** %res, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  %25 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %inc21 = add i64 %26, 1
  store i64 %inc21, i64* %ob_refcnt, align 8
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define i32 @PyCFunction_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %v = alloca %struct.PyCFunctionObject*, align 8
  %0 = load i32, i32* @numfree, align 4
  store i32 %0, i32* %freelist_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8
  %tobool = icmp ne %struct.PyCFunctionObject* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** @free_list, align 8
  store %struct.PyCFunctionObject* %2, %struct.PyCFunctionObject** %v, align 8
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %v, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %m_self, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyCFunctionObject*
  store %struct.PyCFunctionObject* %5, %struct.PyCFunctionObject** @free_list, align 8
  %6 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %v, align 8
  %7 = bitcast %struct.PyCFunctionObject* %6 to i8*
  call void @PyObject_GC_Del(i8* %7)
  %8 = load i32, i32* @numfree, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* @numfree, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %freelist_size, align 4
  ret i32 %9
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyCFunction_Fini() #0 {
entry:
  %call = call i32 @PyCFunction_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyCFunction_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %1 = load i32, i32* @numfree, align 4
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %1, i64 40)
  ret void
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i64 @_Py_HashPointer(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_reduce(%struct.PyCFunctionObject* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %builtins = alloca %struct._object*, align 8
  %getattr = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %m_self, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %m_self1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyModule_Type
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self4 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %m_self4, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 1
  %9 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %9, i32 0, i32 0
  %10 = load i8*, i8** %ml_name, align 8
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %10)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call7 = call %struct._object* @PyEval_GetBuiltins()
  store %struct._object* %call7, %struct._object** %builtins, align 8
  %11 = load %struct._object*, %struct._object** %builtins, align 8
  %call8 = call %struct._object* @_PyDict_GetItemId(%struct._object* %11, %struct._Py_Identifier* @meth_reduce.PyId_getattr)
  store %struct._object* %call8, %struct._object** %getattr, align 8
  %12 = load %struct._object*, %struct._object** %getattr, align 8
  %13 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self9 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %m_self9, align 8
  %15 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml10 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %15, i32 0, i32 1
  %16 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml10, align 8
  %ml_name11 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %16, i32 0, i32 0
  %17 = load i8*, i8** %ml_name11, align 8
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._object* %12, %struct._object* %14, i8* %17)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyEval_GetBuiltins() #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__doc__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml1, align 8
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3
  %5 = load i8*, i8** %ml_doc, align 8
  %call = call %struct._object* @_PyType_GetDocFromInternalDoc(i8* %2, i8* %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__name__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %2)
  ret %struct._object* %call
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %m_self, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %m_self1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyModule_Type
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self4 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %m_self4, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %8, i32 0, i32 1
  %9 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %9, i32 0, i32 0
  %10 = load i8*, i8** %ml_name, align 8
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %10)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %11 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self7 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %m_self7, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 2147483648
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self10 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %15, i32 0, i32 2
  %16 = load %struct._object*, %struct._object** %m_self10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self11 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %m_self11, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %20 = bitcast %struct._typeobject* %19 to %struct._object*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %16, %cond.true ], [ %20, %cond.false ]
  store %struct._object* %cond, %struct._object** %type, align 8
  %21 = load %struct._object*, %struct._object** %type, align 8
  %call13 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %21, %struct._Py_Identifier* @meth_get__qualname__.PyId___qualname__)
  store %struct._object* %call13, %struct._object** %type_qualname, align 8
  %22 = load %struct._object*, %struct._object** %type_qualname, align 8
  %cmp14 = icmp eq %struct._object* %22, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %type_qualname, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 19
  %25 = load i64, i64* %tp_flags18, align 8
  %and19 = and i64 %25, 268435456
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %if.end.31, label %if.then.21

if.then.21:                                       ; preds = %if.end.16
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %27 = load %struct._object*, %struct._object** %type_qualname, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp22 = icmp ne %struct._object* %28, null
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %do.body
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.28

if.else:                                          ; preds = %do.body.24
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %do.body
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.16
  %36 = load %struct._object*, %struct._object** %type_qualname, align 8
  %37 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml32 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %37, i32 0, i32 1
  %38 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml32, align 8
  %ml_name33 = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %38, i32 0, i32 0
  %39 = load i8*, i8** %ml_name33, align 8
  %call34 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %struct._object* %36, i8* %39)
  store %struct._object* %call34, %struct._object** %res, align 8
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.31
  %40 = load %struct._object*, %struct._object** %type_qualname, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp36, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %42, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %45(%struct._object* %46)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %47 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.45, %do.end.30, %if.then.15, %if.then
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__self__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  %self = alloca %struct._object*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 2
  %2 = load i32, i32* %ml_flags, align 4
  %and = and i32 %2, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %m_self, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %4, %cond.false ]
  store %struct._object* %cond, %struct._object** %self, align 8
  %5 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %self, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load %struct._object*, %struct._object** %self, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %self, align 8
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @meth_get__text_signature__(%struct.PyCFunctionObject* %m, i8* %closure) #0 {
entry:
  %m.addr = alloca %struct.PyCFunctionObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCFunctionObject* %m, %struct.PyCFunctionObject** %m.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %0, i32 0, i32 1
  %1 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml, align 8
  %ml_name = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %1, i32 0, i32 0
  %2 = load i8*, i8** %ml_name, align 8
  %3 = load %struct.PyCFunctionObject*, %struct.PyCFunctionObject** %m.addr, align 8
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, %struct.PyCFunctionObject* %3, i32 0, i32 1
  %4 = load %struct.PyMethodDef*, %struct.PyMethodDef** %m_ml1, align 8
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, %struct.PyMethodDef* %4, i32 0, i32 3
  %5 = load i8*, i8** %ml_doc, align 8
  %call = call %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8* %2, i8* %5)
  ret %struct._object* %call
}

declare %struct._object* @_PyType_GetDocFromInternalDoc(i8*, i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @_PyType_GetTextSignatureFromInternalDoc(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
