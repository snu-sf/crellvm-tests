; ModuleID = 'weakrefobject.o.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [8 x i8] c"weakref\00", align 1
@weakref_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@_PyWeakref_RefType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* @weakref_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @weakref_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct._PyWeakReference*)* @weakref_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @weakref_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._PyWeakReference*, i32 (%struct._object*, i8*)*, i8*)* @gc_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._PyWeakReference*)* @gc_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct._PyWeakReference*, %struct._PyWeakReference*, i32)* @weakref_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @weakref_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @weakref___init__, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @weakref___new__, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"weakproxy\00", align 1
@proxy_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* @proxy_add, %struct._object* (%struct._object*, %struct._object*)* @proxy_sub, %struct._object* (%struct._object*, %struct._object*)* @proxy_mul, %struct._object* (%struct._object*, %struct._object*)* @proxy_mod, %struct._object* (%struct._object*, %struct._object*)* @proxy_divmod, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_pow, %struct._object* (%struct._object*)* @proxy_neg, %struct._object* (%struct._object*)* @proxy_pos, %struct._object* (%struct._object*)* @proxy_abs, i32 (%struct._object*)* bitcast (i32 (%struct._PyWeakReference*)* @proxy_bool to i32 (%struct._object*)*), %struct._object* (%struct._object*)* @proxy_invert, %struct._object* (%struct._object*, %struct._object*)* @proxy_lshift, %struct._object* (%struct._object*, %struct._object*)* @proxy_rshift, %struct._object* (%struct._object*, %struct._object*)* @proxy_and, %struct._object* (%struct._object*, %struct._object*)* @proxy_xor, %struct._object* (%struct._object*, %struct._object*)* @proxy_or, %struct._object* (%struct._object*)* @proxy_int, i8* null, %struct._object* (%struct._object*)* @proxy_float, %struct._object* (%struct._object*, %struct._object*)* @proxy_iadd, %struct._object* (%struct._object*, %struct._object*)* @proxy_isub, %struct._object* (%struct._object*, %struct._object*)* @proxy_imul, %struct._object* (%struct._object*, %struct._object*)* @proxy_imod, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_ipow, %struct._object* (%struct._object*, %struct._object*)* @proxy_ilshift, %struct._object* (%struct._object*, %struct._object*)* @proxy_irshift, %struct._object* (%struct._object*, %struct._object*)* @proxy_iand, %struct._object* (%struct._object*, %struct._object*)* @proxy_ixor, %struct._object* (%struct._object*, %struct._object*)* @proxy_ior, %struct._object* (%struct._object*, %struct._object*)* @proxy_floor_div, %struct._object* (%struct._object*, %struct._object*)* @proxy_true_div, %struct._object* (%struct._object*, %struct._object*)* @proxy_ifloor_div, %struct._object* (%struct._object*, %struct._object*)* @proxy_itrue_div, %struct._object* (%struct._object*)* @proxy_index }, align 8
@proxy_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct._PyWeakReference*)* @proxy_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* null, i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct._PyWeakReference*, %struct._object*)* @proxy_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@proxy_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct._PyWeakReference*)* @proxy_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @proxy_getitem, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setitem to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@proxy_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @proxy_bytes to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@_PyWeakref_ProxyType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct._PyWeakReference*)* @proxy_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @proxy_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @proxy_as_number, %struct.PySequenceMethods* @proxy_as_sequence, %struct.PyMappingMethods* @proxy_as_mapping, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @proxy_str, %struct._object* (%struct._object*, %struct._object*)* @proxy_getattr, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setattr to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._PyWeakReference*, i32 (%struct._object*, i8*)*, i8*)* @gc_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._PyWeakReference*)* @gc_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @proxy_richcompare, i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @proxy_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @proxy_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @proxy_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"weakcallableproxy\00", align 1
@_PyWeakref_CallableProxyType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct._PyWeakReference*)* @proxy_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @proxy_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @proxy_as_number, %struct.PySequenceMethods* @proxy_as_sequence, %struct.PyMappingMethods* @proxy_as_mapping, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_call, %struct._object* (%struct._object*)* @proxy_str, %struct._object* (%struct._object*, %struct._object*)* @proxy_getattr, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setattr to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._PyWeakReference*, i32 (%struct._object*, i8*)*, i8*)* @gc_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._PyWeakReference*)* @gc_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @proxy_richcompare, i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @proxy_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._PyWeakReference*)* @proxy_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot create weak reference to '%s' object\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Objects/weakrefobject.c\00", align 1
@weakref_repr.PyId___name__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* null }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"<weakref at %p; dead>\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"<weakref at %p; to '%s' at %p>\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"<weakref at %p; to '%s' at %p (%U)>\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"weak object has gone away\00", align 1
@weakref_call.kwlist = internal global [1 x i8*] zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c":__call__\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"__callback__\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"__init__\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"__new__\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"<weakproxy at %p to %s at %p>\00", align 1
@PyExc_ReferenceError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"weakly-referenced object no longer exists\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"__bytes__\00", align 1
@proxy_bytes.PyId___bytes__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* null }, align 8
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind readonly uwtable
define i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* readonly %head) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head, i64 0, metadata !376, metadata !831), !dbg !832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !377, metadata !831), !dbg !833
  %cmp.3 = icmp eq %struct._PyWeakReference* %head, null, !dbg !834
  br i1 %cmp.3, label %while.end, label %while.body.preheader, !dbg !835

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !836

while.body:                                       ; preds = %while.body.preheader, %while.body
  %count.05 = phi i64 [ %inc, %while.body ], [ 0, %while.body.preheader ]
  %head.addr.04 = phi %struct._PyWeakReference* [ %0, %while.body ], [ %head, %while.body.preheader ]
  %inc = add i64 %count.05, 1, !dbg !836
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !377, metadata !831), !dbg !833
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %head.addr.04, i64 0, i32 5, !dbg !838
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !838, !tbaa !839
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %0, i64 0, metadata !376, metadata !831), !dbg !832
  %cmp = icmp eq %struct._PyWeakReference* %0, null, !dbg !834
  br i1 %cmp, label %while.end.loopexit, label %while.body, !dbg !835

while.end.loopexit:                               ; preds = %while.body
  %inc.lcssa = phi i64 [ %inc, %while.body ]
  br label %while.end, !dbg !846

while.end:                                        ; preds = %while.end.loopexit, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %inc.lcssa, %while.end.loopexit ]
  ret i64 %count.0.lcssa, !dbg !846
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @_PyWeakref_ClearRef(%struct._PyWeakReference* %self) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !382, metadata !831), !dbg !847
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 2, !dbg !848
  %0 = bitcast %struct._object** %wr_callback to i64*, !dbg !848
  %1 = load i64, i64* %0, align 8, !dbg !848, !tbaa !849
  store %struct._object* null, %struct._object** %wr_callback, align 8, !dbg !850, !tbaa !849
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !467, metadata !831) #1, !dbg !851
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !468, metadata !831) #1, !dbg !853
  %wr_object.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !854
  %2 = load %struct._object*, %struct._object** %wr_object.i, align 8, !dbg !854, !tbaa !855
  %cmp.i = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !856
  br i1 %cmp.i, label %clear_weakref.exit, label %if.then.i, !dbg !857

if.then.i:                                        ; preds = %entry
  %3 = bitcast %struct._object* %2 to i8*, !dbg !858
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !858
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !858, !tbaa !859
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 24, !dbg !858
  %5 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !858, !tbaa !860
  %add.ptr.i = getelementptr i8, i8* %3, i64 %5, !dbg !858
  %6 = bitcast i8* %add.ptr.i to %struct._PyWeakReference**, !dbg !858
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %6, i64 0, metadata !469, metadata !831) #1, !dbg !864
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %6, align 8, !dbg !865, !tbaa !867
  %cmp3.i = icmp eq %struct._PyWeakReference* %7, %self, !dbg !868
  %wr_next.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 5, !dbg !869
  br i1 %cmp3.i, label %if.then.4.i, label %if.end.i, !dbg !870

if.then.4.i:                                      ; preds = %if.then.i
  %8 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !869
  %9 = load i64, i64* %8, align 8, !dbg !869, !tbaa !839
  %10 = bitcast i8* %add.ptr.i to i64*, !dbg !871
  store i64 %9, i64* %10, align 8, !dbg !871, !tbaa !867
  br label %if.end.i, !dbg !872

if.end.i:                                         ; preds = %if.then.i, %if.then.4.i
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i, align 8, !dbg !873, !tbaa !855
  %wr_prev.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 4, !dbg !874
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i, align 8, !dbg !874, !tbaa !876
  %cmp6.i = icmp eq %struct._PyWeakReference* %11, null, !dbg !877
  %12 = ptrtoint %struct._PyWeakReference* %11 to i64, !dbg !878
  br i1 %cmp6.i, label %if.end.11.i, label %if.then.7.i, !dbg !880

if.then.7.i:                                      ; preds = %if.end.i
  %13 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !881
  %14 = load i64, i64* %13, align 8, !dbg !881, !tbaa !839
  %wr_next10.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i64 0, i32 5, !dbg !882
  %15 = bitcast %struct._PyWeakReference** %wr_next10.i to i64*, !dbg !883
  store i64 %14, i64* %15, align 8, !dbg !883, !tbaa !839
  br label %if.end.11.i, !dbg !884

if.end.11.i:                                      ; preds = %if.then.7.i, %if.end.i
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i, align 8, !dbg !885, !tbaa !839
  %cmp13.i = icmp eq %struct._PyWeakReference* %16, null, !dbg !886
  br i1 %cmp13.i, label %if.end.18.i, label %if.then.14.i, !dbg !887

if.then.14.i:                                     ; preds = %if.end.11.i
  %wr_prev17.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 4, !dbg !888
  %17 = bitcast %struct._PyWeakReference** %wr_prev17.i to i64*, !dbg !889
  store i64 %12, i64* %17, align 8, !dbg !889, !tbaa !876
  br label %if.end.18.i, !dbg !890

if.end.18.i:                                      ; preds = %if.then.14.i, %if.end.11.i
  %18 = bitcast %struct._PyWeakReference** %wr_prev.i to <2 x %struct._PyWeakReference*>*, !dbg !891
  store <2 x %struct._PyWeakReference*> zeroinitializer, <2 x %struct._PyWeakReference*>* %18, align 8, !dbg !891, !tbaa !867
  br label %clear_weakref.exit, !dbg !892

clear_weakref.exit:                               ; preds = %entry, %if.end.18.i
  store i64 %1, i64* %0, align 8, !dbg !893, !tbaa !849
  ret void, !dbg !894
}

; Function Attrs: nounwind uwtable
define internal void @weakref_dealloc(%struct._object* %self) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !478, metadata !831), !dbg !895
  %0 = bitcast %struct._object* %self to i8*, !dbg !896
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !897
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %5, i64 0, metadata !467, metadata !831) #1, !dbg !898
  %wr_callback.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, i32 1, !dbg !900
  %1 = bitcast %struct._typeobject** %wr_callback.i to %struct._object**, !dbg !900
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !900, !tbaa !849
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !468, metadata !831) #1, !dbg !901
  %wr_object.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !902
  %3 = bitcast %struct._object* %wr_object.i to %struct._object**, !dbg !902
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !902, !tbaa !855
  %cmp.i = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !903
  br i1 %cmp.i, label %if.end.21.i, label %if.then.i, !dbg !904

if.then.i:                                        ; preds = %entry
  %5 = bitcast %struct._object* %self to %struct._PyWeakReference*, !dbg !905
  %6 = bitcast %struct._object* %4 to i8*, !dbg !906
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !906
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !906, !tbaa !859
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 24, !dbg !906
  %8 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !906, !tbaa !860
  %add.ptr.i = getelementptr i8, i8* %6, i64 %8, !dbg !906
  %9 = bitcast i8* %add.ptr.i to %struct._PyWeakReference**, !dbg !906
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %9, i64 0, metadata !469, metadata !831) #1, !dbg !907
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %9, align 8, !dbg !908, !tbaa !867
  %cmp3.i = icmp eq %struct._PyWeakReference* %10, %5, !dbg !909
  br i1 %cmp3.i, label %if.then.4.i, label %if.end.i, !dbg !910

if.then.4.i:                                      ; preds = %if.then.i
  %11 = getelementptr inbounds %struct._object, %struct._object* %self, i64 3, i32 0, !dbg !911
  %12 = load i64, i64* %11, align 8, !dbg !911, !tbaa !839
  %13 = bitcast i8* %add.ptr.i to i64*, !dbg !912
  store i64 %12, i64* %13, align 8, !dbg !912, !tbaa !867
  br label %if.end.i, !dbg !913

if.end.i:                                         ; preds = %if.then.4.i, %if.then.i
  store %struct._object* @_Py_NoneStruct, %struct._object** %3, align 8, !dbg !914, !tbaa !855
  %wr_prev.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 2, i32 1, !dbg !915
  %14 = bitcast %struct._typeobject** %wr_prev.i to %struct._PyWeakReference**, !dbg !915
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %14, align 8, !dbg !915, !tbaa !876
  %cmp6.i = icmp eq %struct._PyWeakReference* %15, null, !dbg !916
  %16 = ptrtoint %struct._PyWeakReference* %15 to i64, !dbg !917
  %.pre.i = getelementptr inbounds %struct._object, %struct._object* %self, i64 3, !dbg !918
  %17 = bitcast %struct._object* %.pre.i to %struct._PyWeakReference**, !dbg !918
  br i1 %cmp6.i, label %if.end.11.i, label %if.then.7.i, !dbg !919

if.then.7.i:                                      ; preds = %if.end.i
  %18 = getelementptr inbounds %struct._object, %struct._object* %.pre.i, i64 0, i32 0, !dbg !920
  %19 = load i64, i64* %18, align 8, !dbg !920, !tbaa !839
  %wr_next10.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %15, i64 0, i32 5, !dbg !921
  %20 = bitcast %struct._PyWeakReference** %wr_next10.i to i64*, !dbg !922
  store i64 %19, i64* %20, align 8, !dbg !922, !tbaa !839
  br label %if.end.11.i, !dbg !923

if.end.11.i:                                      ; preds = %if.then.7.i, %if.end.i
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %17, align 8, !dbg !918, !tbaa !839
  %cmp13.i = icmp eq %struct._PyWeakReference* %21, null, !dbg !924
  br i1 %cmp13.i, label %if.end.18.i, label %if.then.14.i, !dbg !925

if.then.14.i:                                     ; preds = %if.end.11.i
  %wr_prev17.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %21, i64 0, i32 4, !dbg !926
  %22 = bitcast %struct._PyWeakReference** %wr_prev17.i to i64*, !dbg !927
  store i64 %16, i64* %22, align 8, !dbg !927, !tbaa !876
  br label %if.end.18.i, !dbg !928

if.end.18.i:                                      ; preds = %if.then.14.i, %if.end.11.i
  %23 = bitcast %struct._typeobject** %wr_prev.i to i8*, !dbg !929
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 16, i32 8, i1 false), !dbg !930
  br label %if.end.21.i, !dbg !929

if.end.21.i:                                      ; preds = %if.end.18.i, %entry
  %cmp22.i = icmp eq %struct._object* %2, null, !dbg !931
  br i1 %cmp22.i, label %clear_weakref.exit, label %do.body.i, !dbg !932

do.body.i:                                        ; preds = %if.end.21.i
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !472, metadata !831) #1, !dbg !933
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !935
  %24 = load i64, i64* %ob_refcnt.i, align 8, !dbg !935, !tbaa !937
  %dec.i = add i64 %24, -1, !dbg !935
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !935, !tbaa !937
  %cmp24.i = icmp eq i64 %dec.i, 0, !dbg !935
  br i1 %cmp24.i, label %if.else.i, label %if.end.27.i, !dbg !938

if.else.i:                                        ; preds = %do.body.i
  %ob_type26.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !939
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i, align 8, !dbg !939, !tbaa !859
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !939
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !939, !tbaa !941
  tail call void %26(%struct._object* %2) #1, !dbg !939
  br label %if.end.27.i, !dbg !942

if.end.27.i:                                      ; preds = %if.else.i, %do.body.i
  store %struct._object* null, %struct._object** %1, align 8, !dbg !943, !tbaa !849
  br label %clear_weakref.exit, !dbg !944

clear_weakref.exit:                               ; preds = %if.end.21.i, %if.end.27.i
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %self, i64 0, i32 1, !dbg !945
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !945, !tbaa !859
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 38, !dbg !946
  %28 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !946, !tbaa !947
  tail call void %28(i8* %0) #1, !dbg !945
  ret void, !dbg !948
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_repr(%struct._PyWeakReference* %self) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !483, metadata !831), !dbg !949
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !950
  %0 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !950, !tbaa !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !950
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !950, !tbaa !937
  %cmp = icmp sgt i64 %1, 0, !dbg !950
  %phitmp = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !952
  %not.cmp = xor i1 %cmp, true, !dbg !950
  %phitmp. = or i1 %phitmp, %not.cmp, !dbg !950
  br i1 %phitmp., label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %struct._PyWeakReference* %self) #1, !dbg !955
  br label %cleanup, !dbg !956

if.end:                                           ; preds = %entry
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %0, %struct._object* @_Py_NoneStruct, !dbg !957
  %call11 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %._Py_NoneStruct, %struct._Py_Identifier* nonnull @weakref_repr.PyId___name__) #1, !dbg !958
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !484, metadata !831), !dbg !961
  %cmp12 = icmp eq %struct._object* %call11, null, !dbg !962
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false, !dbg !964

lor.lhs.false:                                    ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 1, !dbg !965
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !965, !tbaa !859
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !965
  %3 = load i64, i64* %tp_flags, align 8, !dbg !965, !tbaa !967
  %and = and i64 %3, 268435456, !dbg !965
  %cmp13 = icmp eq i64 %and, 0, !dbg !965
  br i1 %cmp13, label %do.body, label %do.body.thread, !dbg !968

if.then.16:                                       ; preds = %if.end
  tail call void @PyErr_Clear() #1, !dbg !969
  br label %do.body, !dbg !969

do.body.thread:                                   ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !972, !tbaa !855
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !972
  %5 = load i64, i64* %ob_refcnt37, align 8, !dbg !972, !tbaa !937
  %cmp38 = icmp sgt i64 %5, 0, !dbg !972
  %._Py_NoneStruct94 = select i1 %cmp38, %struct._object* %4, %struct._object* @_Py_NoneStruct, !dbg !972
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %._Py_NoneStruct94, i64 0, i32 1, !dbg !974
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !974, !tbaa !859
  %tp_name45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 1, !dbg !977
  %7 = load i8*, i8** %tp_name45, align 8, !dbg !977, !tbaa !978
  %call54 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), %struct._PyWeakReference* %self, i8* %7, %struct._object* %._Py_NoneStruct94, %struct._object* %call11) #1, !dbg !979
  tail call void @llvm.dbg.value(metadata %struct._object* %call54, i64 0, metadata !485, metadata !831), !dbg !980
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !486, metadata !831), !dbg !981
  br label %do.body.58, !dbg !983

do.body:                                          ; preds = %if.then.16, %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !984, !tbaa !855
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !984
  %9 = load i64, i64* %ob_refcnt19, align 8, !dbg !984, !tbaa !937
  %cmp20 = icmp sgt i64 %9, 0, !dbg !984
  %._Py_NoneStruct93 = select i1 %cmp20, %struct._object* %8, %struct._object* @_Py_NoneStruct, !dbg !984
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %._Py_NoneStruct93, i64 0, i32 1, !dbg !985
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !985, !tbaa !859
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 1, !dbg !988
  %11 = load i8*, i8** %tp_name, align 8, !dbg !988, !tbaa !978
  %call35 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), %struct._PyWeakReference* %self, i8* %11, %struct._object* %._Py_NoneStruct93) #1, !dbg !989
  tail call void @llvm.dbg.value(metadata %struct._object* %call35, i64 0, metadata !485, metadata !831), !dbg !980
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !486, metadata !831), !dbg !981
  br i1 %cmp12, label %cleanup, label %do.body.58, !dbg !983

do.body.58:                                       ; preds = %do.body.thread, %do.body
  %repr.095 = phi %struct._object* [ %call54, %do.body.thread ], [ %call35, %do.body ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !488, metadata !831), !dbg !990
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 0, !dbg !992
  %12 = load i64, i64* %ob_refcnt59, align 8, !dbg !992, !tbaa !937
  %dec = add i64 %12, -1, !dbg !992
  store i64 %dec, i64* %ob_refcnt59, align 8, !dbg !992, !tbaa !937
  %cmp60 = icmp eq i64 %dec, 0, !dbg !992
  br i1 %cmp60, label %if.else.62, label %cleanup, !dbg !994

if.else.62:                                       ; preds = %do.body.58
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 1, !dbg !995
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !995, !tbaa !859
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !995
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !995, !tbaa !941
  tail call void %14(%struct._object* %call11) #1, !dbg !995
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.body.58, %if.else.62, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %repr.095, %if.else.62 ], [ %repr.095, %do.body.58 ], [ %call35, %do.body ]
  ret %struct._object* %retval.0, !dbg !997
}

; Function Attrs: nounwind uwtable
define internal i64 @weakref_hash(%struct._PyWeakReference* nocapture %self) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !495, metadata !831), !dbg !998
  %hash = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 3, !dbg !999
  %0 = load i64, i64* %hash, align 8, !dbg !999, !tbaa !1001
  %cmp = icmp eq i64 %0, -1, !dbg !1002
  br i1 %cmp, label %if.end, label %return, !dbg !1003

if.end:                                           ; preds = %entry
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !1004
  %1 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1004, !tbaa !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1004
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1004, !tbaa !937
  %cmp2 = icmp sgt i64 %2, 0, !dbg !1004
  %phitmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !1006
  %not.cmp2 = xor i1 %cmp2, true, !dbg !1004
  %phitmp. = or i1 %phitmp, %not.cmp2, !dbg !1004
  br i1 %phitmp., label %if.then.5, label %if.end.6, !dbg !1008

if.then.5:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1009, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)) #1, !dbg !1011
  br label %return, !dbg !1012

if.end.6:                                         ; preds = %if.end
  %._Py_NoneStruct = select i1 %cmp2, %struct._object* %1, %struct._object* @_Py_NoneStruct, !dbg !1013
  %call = tail call i64 @PyObject_Hash(%struct._object* %._Py_NoneStruct) #1, !dbg !1014
  store i64 %call, i64* %hash, align 8, !dbg !1017, !tbaa !1001
  br label %return, !dbg !1018

return:                                           ; preds = %entry, %if.end.6, %if.then.5
  %retval.0 = phi i64 [ -1, %if.then.5 ], [ %call, %if.end.6 ], [ %0, %entry ]
  ret i64 %retval.0, !dbg !1019
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_call(%struct._PyWeakReference* nocapture readonly %self, %struct._object* %args, %struct._object* %kw) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !500, metadata !831), !dbg !1020
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !501, metadata !831), !dbg !1021
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !502, metadata !831), !dbg !1022
  %call = tail call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kw, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @weakref_call.kwlist, i64 0, i64 0)) #1, !dbg !1023
  %tobool = icmp eq i32 %call, 0, !dbg !1023
  br i1 %tobool, label %return, label %if.then, !dbg !1024

if.then:                                          ; preds = %entry
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !1025
  %0 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1025, !tbaa !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1025
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1025, !tbaa !937
  %cmp = icmp sgt i64 %1, 0, !dbg !1025
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %0, %struct._object* @_Py_NoneStruct, !dbg !1025
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !503, metadata !831), !dbg !1026
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %._Py_NoneStruct, i64 0, i32 0, !dbg !1027
  %2 = load i64, i64* %ob_refcnt2, align 8, !dbg !1027, !tbaa !937
  %inc = add i64 %2, 1, !dbg !1027
  store i64 %inc, i64* %ob_refcnt2, align 8, !dbg !1027, !tbaa !937
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct._object* [ %._Py_NoneStruct, %if.then ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1028
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_traverse(%struct._PyWeakReference* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !510, metadata !831), !dbg !1029
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !511, metadata !831), !dbg !1030
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !512, metadata !831), !dbg !1031
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 2, !dbg !1032
  %0 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1032, !tbaa !849
  %tobool = icmp eq %struct._object* %0, null, !dbg !1032
  br i1 %tobool, label %do.end, label %if.then, !dbg !1034

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1035
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !513, metadata !831), !dbg !1035
  %tobool2 = icmp eq i32 %call, 0, !dbg !1037
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1039

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1040
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_clear(%struct._PyWeakReference* %self) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !521, metadata !831), !dbg !1041
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !467, metadata !831) #1, !dbg !1042
  %wr_callback.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 2, !dbg !1044
  %0 = load %struct._object*, %struct._object** %wr_callback.i, align 8, !dbg !1044, !tbaa !849
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !468, metadata !831) #1, !dbg !1045
  %wr_object.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !1046
  %1 = load %struct._object*, %struct._object** %wr_object.i, align 8, !dbg !1046, !tbaa !855
  %cmp.i = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !1047
  br i1 %cmp.i, label %if.end.21.i, label %if.then.i, !dbg !1048

if.then.i:                                        ; preds = %entry
  %2 = bitcast %struct._object* %1 to i8*, !dbg !1049
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1049
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1049, !tbaa !859
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 24, !dbg !1049
  %4 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !1049, !tbaa !860
  %add.ptr.i = getelementptr i8, i8* %2, i64 %4, !dbg !1049
  %5 = bitcast i8* %add.ptr.i to %struct._PyWeakReference**, !dbg !1049
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %5, i64 0, metadata !469, metadata !831) #1, !dbg !1050
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %5, align 8, !dbg !1051, !tbaa !867
  %cmp3.i = icmp eq %struct._PyWeakReference* %6, %self, !dbg !1052
  %wr_next.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 5, !dbg !1053
  br i1 %cmp3.i, label %if.then.4.i, label %if.end.i, !dbg !1054

if.then.4.i:                                      ; preds = %if.then.i
  %7 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !1053
  %8 = load i64, i64* %7, align 8, !dbg !1053, !tbaa !839
  %9 = bitcast i8* %add.ptr.i to i64*, !dbg !1055
  store i64 %8, i64* %9, align 8, !dbg !1055, !tbaa !867
  br label %if.end.i, !dbg !1056

if.end.i:                                         ; preds = %if.then.i, %if.then.4.i
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i, align 8, !dbg !1057, !tbaa !855
  %wr_prev.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 4, !dbg !1058
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i, align 8, !dbg !1058, !tbaa !876
  %cmp6.i = icmp eq %struct._PyWeakReference* %10, null, !dbg !1059
  %11 = ptrtoint %struct._PyWeakReference* %10 to i64, !dbg !1060
  br i1 %cmp6.i, label %if.end.11.i, label %if.then.7.i, !dbg !1061

if.then.7.i:                                      ; preds = %if.end.i
  %12 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !1062
  %13 = load i64, i64* %12, align 8, !dbg !1062, !tbaa !839
  %wr_next10.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i64 0, i32 5, !dbg !1063
  %14 = bitcast %struct._PyWeakReference** %wr_next10.i to i64*, !dbg !1064
  store i64 %13, i64* %14, align 8, !dbg !1064, !tbaa !839
  br label %if.end.11.i, !dbg !1065

if.end.11.i:                                      ; preds = %if.then.7.i, %if.end.i
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i, align 8, !dbg !1066, !tbaa !839
  %cmp13.i = icmp eq %struct._PyWeakReference* %15, null, !dbg !1067
  br i1 %cmp13.i, label %if.end.18.i, label %if.then.14.i, !dbg !1068

if.then.14.i:                                     ; preds = %if.end.11.i
  %wr_prev17.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %15, i64 0, i32 4, !dbg !1069
  %16 = bitcast %struct._PyWeakReference** %wr_prev17.i to i64*, !dbg !1070
  store i64 %11, i64* %16, align 8, !dbg !1070, !tbaa !876
  br label %if.end.18.i, !dbg !1071

if.end.18.i:                                      ; preds = %if.then.14.i, %if.end.11.i
  %17 = bitcast %struct._PyWeakReference** %wr_prev.i to <2 x %struct._PyWeakReference*>*, !dbg !1072
  store <2 x %struct._PyWeakReference*> zeroinitializer, <2 x %struct._PyWeakReference*>* %17, align 8, !dbg !1072, !tbaa !867
  br label %if.end.21.i, !dbg !1073

if.end.21.i:                                      ; preds = %if.end.18.i, %entry
  %cmp22.i = icmp eq %struct._object* %0, null, !dbg !1074
  br i1 %cmp22.i, label %clear_weakref.exit, label %do.body.i, !dbg !1075

do.body.i:                                        ; preds = %if.end.21.i
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !472, metadata !831) #1, !dbg !1076
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1077
  %18 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1077, !tbaa !937
  %dec.i = add i64 %18, -1, !dbg !1077
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1077, !tbaa !937
  %cmp24.i = icmp eq i64 %dec.i, 0, !dbg !1077
  br i1 %cmp24.i, label %if.else.i, label %if.end.27.i, !dbg !1078

if.else.i:                                        ; preds = %do.body.i
  %ob_type26.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1079
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i, align 8, !dbg !1079, !tbaa !859
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1079
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1079, !tbaa !941
  tail call void %20(%struct._object* %0) #1, !dbg !1079
  br label %if.end.27.i, !dbg !1080

if.end.27.i:                                      ; preds = %if.else.i, %do.body.i
  store %struct._object* null, %struct._object** %wr_callback.i, align 8, !dbg !1081, !tbaa !849
  br label %clear_weakref.exit, !dbg !1082

clear_weakref.exit:                               ; preds = %if.end.21.i, %if.end.27.i
  ret i32 0, !dbg !1083
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_richcompare(%struct._PyWeakReference* readonly %self, %struct._PyWeakReference* readonly %other, i32 %op) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !526, metadata !831), !dbg !1084
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %other, i64 0, metadata !527, metadata !831), !dbg !1085
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !528, metadata !831), !dbg !1086
  %0 = and i32 %op, -2, !dbg !1087
  %op.cmp = icmp eq i32 %0, 2, !dbg !1087
  br i1 %op.cmp, label %lor.lhs.false, label %if.then, !dbg !1087

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 0, i32 1, !dbg !1089
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1089, !tbaa !859
  %cmp2 = icmp eq %struct._typeobject* %1, @_PyWeakref_RefType, !dbg !1089
  br i1 %cmp2, label %lor.lhs.false.11, label %lor.lhs.false.3, !dbg !1089

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @_PyWeakref_RefType) #1, !dbg !1090
  %tobool = icmp eq i32 %call, 0, !dbg !1090
  br i1 %tobool, label %lor.lhs.false.5, label %lor.lhs.false.11, !dbg !1090

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1092, !tbaa !859
  %cmp7 = icmp eq %struct._typeobject* %2, @_PyWeakref_ProxyType, !dbg !1092
  %cmp10 = icmp eq %struct._typeobject* %2, @_PyWeakref_CallableProxyType, !dbg !1094
  %or.cond = or i1 %cmp7, %cmp10, !dbg !1092
  br i1 %or.cond, label %lor.lhs.false.11, label %if.then, !dbg !1092

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.3, %lor.lhs.false.5, %lor.lhs.false
  %ob_type12 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %other, i64 0, i32 0, i32 1, !dbg !1096
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1096, !tbaa !859
  %cmp13 = icmp eq %struct._typeobject* %3, @_PyWeakref_RefType, !dbg !1096
  br i1 %cmp13, label %if.end, label %lor.lhs.false.14, !dbg !1096

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %call16 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* nonnull @_PyWeakref_RefType) #1, !dbg !1097
  %tobool17 = icmp eq i32 %call16, 0, !dbg !1097
  br i1 %tobool17, label %lor.lhs.false.18, label %if.end, !dbg !1097

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1098, !tbaa !859
  %cmp20 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !1098
  %cmp23 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !1099
  %or.cond90 = or i1 %cmp20, %cmp23, !dbg !1098
  br i1 %or.cond90, label %if.end, label %if.then, !dbg !1098

if.then:                                          ; preds = %lor.lhs.false.18, %lor.lhs.false.5, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1100, !tbaa !937
  %inc = add i64 %5, 1, !dbg !1100
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1100, !tbaa !937
  br label %return, !dbg !1100

if.end:                                           ; preds = %lor.lhs.false.14, %lor.lhs.false.18, %lor.lhs.false.11
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !1102
  %6 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1102, !tbaa !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1102
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1102, !tbaa !937
  %cmp24 = icmp sgt i64 %7, 0, !dbg !1102
  %phitmp = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !1103
  %not.cmp24 = xor i1 %cmp24, true, !dbg !1102
  %phitmp. = or i1 %phitmp, %not.cmp24, !dbg !1102
  br i1 %phitmp., label %if.then.37, label %lor.lhs.false.27, !dbg !1105

lor.lhs.false.27:                                 ; preds = %if.end
  %wr_object28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %other, i64 0, i32 1, !dbg !1106
  %8 = load %struct._object*, %struct._object** %wr_object28, align 8, !dbg !1106, !tbaa !855
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1106
  %9 = load i64, i64* %ob_refcnt29, align 8, !dbg !1106, !tbaa !937
  %cmp30 = icmp sgt i64 %9, 0, !dbg !1106
  %phitmp89 = icmp eq %struct._object* %8, @_Py_NoneStruct, !dbg !1107
  %not.cmp30 = xor i1 %cmp30, true, !dbg !1106
  %phitmp89. = or i1 %phitmp89, %not.cmp30, !dbg !1106
  br i1 %phitmp89., label %if.then.37, label %if.end.48, !dbg !1109

if.then.37:                                       ; preds = %lor.lhs.false.27, %if.end
  %cmp38 = icmp eq %struct._PyWeakReference* %self, %other, !dbg !1110
  %cmp39 = icmp eq i32 %op, 3, !dbg !1111
  %res.091 = xor i1 %cmp38, %cmp39, !dbg !1113
  br i1 %res.091, label %if.then.45, label %if.else, !dbg !1114

if.then.45:                                       ; preds = %if.then.37
  %10 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1115, !tbaa !937
  %inc46 = add i64 %10, 1, !dbg !1115
  store i64 %inc46, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1115, !tbaa !937
  br label %return, !dbg !1115

if.else:                                          ; preds = %if.then.37
  %11 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1117, !tbaa !937
  %inc47 = add i64 %11, 1, !dbg !1117
  store i64 %inc47, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1117, !tbaa !937
  br label %return, !dbg !1117

if.end.48:                                        ; preds = %lor.lhs.false.27
  %._Py_NoneStruct = select i1 %cmp24, %struct._object* %6, %struct._object* @_Py_NoneStruct, !dbg !1118
  %cond66 = select i1 %cmp30, %struct._object* %8, %struct._object* @_Py_NoneStruct, !dbg !1119
  %call67 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %._Py_NoneStruct, %struct._object* %cond66, i32 %op) #1, !dbg !1120
  br label %return, !dbg !1121

return:                                           ; preds = %if.then.45, %if.else, %if.end.48, %if.then
  %retval.1 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.then ], [ %call67, %if.end.48 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.45 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.else ]
  ret %struct._object* %retval.1, !dbg !1122
}

; Function Attrs: nounwind uwtable
define internal i32 @weakref___init__(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* nocapture readnone %kwargs) #2 {
entry:
  %tmp = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !534, metadata !831), !dbg !1123
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !535, metadata !831), !dbg !1124
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !536, metadata !831), !dbg !1125
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !1126
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1126
  tail call void @llvm.dbg.value(metadata %struct._object** %tmp, i64 0, metadata !537, metadata !831), !dbg !1127
  tail call void @llvm.dbg.value(metadata %struct._object** %tmp, i64 0, metadata !537, metadata !831), !dbg !1127
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !544, metadata !831) #1, !dbg !1128
  %call.i = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 1, i64 2, %struct._object** nonnull %tmp, %struct._object** nonnull %tmp) #1, !dbg !1131
  %tobool = icmp eq i32 %call.i, 0, !dbg !1132
  %. = sext i1 %tobool to i32, !dbg !1133
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1134
  ret i32 %., !dbg !1134
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref___new__(%struct._typeobject* %type, %struct._object* %args, %struct._object* nocapture readnone %kwargs) #2 {
entry:
  %ob = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !553, metadata !831), !dbg !1135
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !554, metadata !831), !dbg !1136
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !555, metadata !831), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !556, metadata !831), !dbg !1138
  %0 = bitcast %struct._object** %ob to i8*, !dbg !1139
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1139
  %1 = bitcast %struct._object** %callback to i8*, !dbg !1139
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1139
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !558, metadata !831), !dbg !1140
  store %struct._object* null, %struct._object** %callback, align 8, !dbg !1140, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._object** %ob, i64 0, metadata !557, metadata !831), !dbg !1141
  tail call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !558, metadata !831), !dbg !1140
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !544, metadata !831) #1, !dbg !1142
  %call.i = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 1, i64 2, %struct._object** nonnull %ob, %struct._object** nonnull %callback) #1, !dbg !1144
  %tobool = icmp eq i32 %call.i, 0, !dbg !1145
  br i1 %tobool, label %if.end.32, label %if.then, !dbg !1146

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %ob, i64 0, metadata !557, metadata !831), !dbg !1141
  %2 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1147, !tbaa !867
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1148
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1148, !tbaa !859
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 24, !dbg !1148
  %4 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !1148, !tbaa !860
  %cmp = icmp sgt i64 %4, 0, !dbg !1148
  br i1 %cmp, label %if.end, label %if.then.1, !dbg !1150

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1151, !tbaa !867
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 1, !dbg !1153
  %6 = load i8*, i8** %tp_name, align 8, !dbg !1153, !tbaa !978
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %6) #1, !dbg !1154
  br label %cleanup.33, !dbg !1155

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !558, metadata !831), !dbg !1140
  %7 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1156, !tbaa !867
  %cmp4 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !1158
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1159

if.then.5:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !558, metadata !831), !dbg !1140
  store %struct._object* null, %struct._object** %callback, align 8, !dbg !1160, !tbaa !867
  %.pre = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1147, !tbaa !859
  %tp_weaklistoffset8.phi.trans.insert = getelementptr inbounds %struct._typeobject, %struct._typeobject* %.pre, i64 0, i32 24, !dbg !1147
  %.pre110 = load i64, i64* %tp_weaklistoffset8.phi.trans.insert, align 8, !dbg !1147, !tbaa !860
  br label %if.end.6, !dbg !1161

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = phi %struct._object* [ null, %if.then.5 ], [ %7, %if.end ], !dbg !1162
  %9 = phi i64 [ %.pre110, %if.then.5 ], [ %4, %if.end ], !dbg !1147
  call void @llvm.dbg.value(metadata %struct._object** %ob, i64 0, metadata !557, metadata !831), !dbg !1141
  %10 = bitcast %struct._object* %2 to i8*, !dbg !1147
  %add.ptr = getelementptr i8, i8* %10, i64 %9, !dbg !1147
  %11 = bitcast i8* %add.ptr to %struct._PyWeakReference**, !dbg !1147
  call void @llvm.dbg.value(metadata %struct._PyWeakReference** %11, i64 0, metadata !563, metadata !831), !dbg !1164
  %12 = load %struct._PyWeakReference*, %struct._PyWeakReference** %11, align 8, !dbg !1165, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !769, metadata !831), !dbg !1166
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1168
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1170
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1172
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1173
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !562, metadata !831), !dbg !1174
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !562, metadata !831), !dbg !1174
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !562, metadata !831), !dbg !1174
  %cmp.i = icmp eq %struct._PyWeakReference* %12, null, !dbg !1175
  br i1 %cmp.i, label %get_basic_refs.exit.thread, label %land.lhs.true.i, !dbg !1177

land.lhs.true.i:                                  ; preds = %if.end.6
  %wr_callback.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %12, i64 0, i32 2, !dbg !1178
  %13 = load %struct._object*, %struct._object** %wr_callback.i, align 8, !dbg !1178, !tbaa !849
  %cmp1.i = icmp eq %struct._object* %13, null, !dbg !1179
  br i1 %cmp1.i, label %if.then.i, label %get_basic_refs.exit.thread, !dbg !1180

if.then.i:                                        ; preds = %land.lhs.true.i
  %ob_type.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %12, i64 0, i32 0, i32 1, !dbg !1181
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1181, !tbaa !859
  %cmp2.i = icmp eq %struct._typeobject* %14, @_PyWeakref_RefType, !dbg !1181
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !770, metadata !831), !dbg !1168
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !770, metadata !831), !dbg !1170
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !559, metadata !831), !dbg !1171
  %ref.0.103 = select i1 %cmp2.i, %struct._PyWeakReference* %12, %struct._PyWeakReference* null, !dbg !1184
  call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !558, metadata !831), !dbg !1140
  %cmp9 = icmp eq %struct._object* %8, null, !dbg !1185
  %cmp10 = icmp eq %struct._typeobject* %type, @_PyWeakref_RefType, !dbg !1186
  %or.cond = and i1 %cmp10, %cmp9, !dbg !1187
  %cmp12 = icmp ne %struct._PyWeakReference* %ref.0.103, null, !dbg !1188
  %or.cond38 = and i1 %or.cond, %cmp12, !dbg !1187
  br i1 %or.cond38, label %if.then.13, label %if.end.15, !dbg !1187

get_basic_refs.exit.thread:                       ; preds = %if.end.6, %land.lhs.true.i
  call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !558, metadata !831), !dbg !1140
  %cmp10.105 = icmp eq %struct._typeobject* %type, @_PyWeakref_RefType, !dbg !1186
  br label %if.end.15, !dbg !1187

if.then.13:                                       ; preds = %if.then.i
  %ob_refcnt = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %ref.0.103, i64 0, i32 0, i32 0, !dbg !1191
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1191, !tbaa !937
  %inc = add i64 %15, 1, !dbg !1191
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1191, !tbaa !937
  %16 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %ref.0.103, i64 0, i32 0, !dbg !1193
  br label %cleanup.33, !dbg !1194

if.end.15:                                        ; preds = %get_basic_refs.exit.thread, %if.then.i
  %cmp10109 = phi i1 [ %cmp10.105, %get_basic_refs.exit.thread ], [ %cmp10, %if.then.i ]
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1195
  %17 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1195, !tbaa !1196
  %call16 = call %struct._object* %17(%struct._typeobject* %type, i64 0) #1, !dbg !1197
  %18 = bitcast %struct._object* %call16 to %struct._PyWeakReference*, !dbg !1198
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %18, i64 0, metadata !556, metadata !831), !dbg !1138
  %cmp17 = icmp eq %struct._object* %call16, null, !dbg !1199
  br i1 %cmp17, label %if.end.32, label %if.then.18, !dbg !1200

if.then.18:                                       ; preds = %if.end.15
  call void @llvm.dbg.value(metadata %struct._object** %ob, i64 0, metadata !557, metadata !831), !dbg !1141
  %19 = bitcast %struct._object** %ob to i64*, !dbg !1201
  %20 = load i64, i64* %19, align 8, !dbg !1201, !tbaa !867
  call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !558, metadata !831), !dbg !1140
  %21 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1202, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %18, i64 0, metadata !573, metadata !831), !dbg !1203
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !575, metadata !831), !dbg !1205
  %22 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 2, i32 0, !dbg !1206
  store i64 -1, i64* %22, align 8, !dbg !1207, !tbaa !1001
  %23 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 1, i32 0, !dbg !1208
  store i64 %20, i64* %23, align 8, !dbg !1208, !tbaa !855
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !576, metadata !831), !dbg !1209
  %cmp.i.91 = icmp eq %struct._object* %21, null, !dbg !1211
  br i1 %cmp.i.91, label %init_weakref.exit, label %if.then.i.92, !dbg !1213

if.then.i.92:                                     ; preds = %if.then.18
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 0, !dbg !1214
  %24 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1214, !tbaa !937
  %inc.i = add i64 %24, 1, !dbg !1214
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1214, !tbaa !937
  br label %init_weakref.exit, !dbg !1214

init_weakref.exit:                                ; preds = %if.then.18, %if.then.i.92
  %wr_callback.i.93 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 1, i32 1, !dbg !1216
  %25 = bitcast %struct._typeobject** %wr_callback.i.93 to %struct._object**, !dbg !1216
  store %struct._object* %21, %struct._object** %25, align 8, !dbg !1217, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !558, metadata !831), !dbg !1140
  %26 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1218, !tbaa !867
  %cmp19 = icmp eq %struct._object* %26, null, !dbg !1219
  %or.cond37 = and i1 %cmp10109, %cmp19, !dbg !1220
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %11, align 8, !dbg !1221, !tbaa !867
  br i1 %or.cond37, label %if.then.22, label %if.else, !dbg !1220

if.then.22:                                       ; preds = %init_weakref.exit
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %18, i64 0, metadata !783, metadata !831), !dbg !1224
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %11, i64 0, metadata !784, metadata !831), !dbg !1227
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !785, metadata !831), !dbg !1228
  %wr_prev.i.84 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 2, i32 1, !dbg !1229
  %28 = bitcast %struct._typeobject** %wr_prev.i.84 to %struct._PyWeakReference**, !dbg !1229
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %28, align 8, !dbg !1230, !tbaa !876
  %wr_next.i.85 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 3, !dbg !1231
  %29 = bitcast %struct._object* %wr_next.i.85 to %struct._PyWeakReference**, !dbg !1231
  store %struct._PyWeakReference* %27, %struct._PyWeakReference** %29, align 8, !dbg !1232, !tbaa !839
  %cmp.i.86 = icmp eq %struct._PyWeakReference* %27, null, !dbg !1233
  br i1 %cmp.i.86, label %insert_head.exit90, label %if.then.i.88, !dbg !1235

if.then.i.88:                                     ; preds = %if.then.22
  %wr_prev1.i.87 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i64 0, i32 4, !dbg !1236
  %30 = bitcast %struct._PyWeakReference** %wr_prev1.i.87 to %struct._object**, !dbg !1237
  store %struct._object* %call16, %struct._object** %30, align 8, !dbg !1237, !tbaa !876
  br label %insert_head.exit90, !dbg !1238

insert_head.exit90:                               ; preds = %if.then.22, %if.then.i.88
  %31 = bitcast i8* %add.ptr to %struct._object**, !dbg !1239
  store %struct._object* %call16, %struct._object** %31, align 8, !dbg !1239, !tbaa !867
  br label %if.end.32, !dbg !1240

if.else:                                          ; preds = %init_weakref.exit
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !769, metadata !831), !dbg !1241
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1168
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1170
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1172
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1173
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !562, metadata !831), !dbg !1174
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !562, metadata !831), !dbg !1174
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !562, metadata !831), !dbg !1174
  %cmp.i.62 = icmp eq %struct._PyWeakReference* %27, null, !dbg !1242
  br i1 %cmp.i.62, label %get_basic_refs.exit83, label %land.lhs.true.i.65, !dbg !1243

land.lhs.true.i.65:                               ; preds = %if.else
  %wr_callback.i.63 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i64 0, i32 2, !dbg !1244
  %32 = load %struct._object*, %struct._object** %wr_callback.i.63, align 8, !dbg !1244, !tbaa !849
  %cmp1.i.64 = icmp eq %struct._object* %32, null, !dbg !1245
  br i1 %cmp1.i.64, label %if.then.i.68, label %get_basic_refs.exit83, !dbg !1246

if.then.i.68:                                     ; preds = %land.lhs.true.i.65
  %ob_type.i.66 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i64 0, i32 0, i32 1, !dbg !1247
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.66, align 8, !dbg !1247, !tbaa !859
  %cmp2.i.67 = icmp eq %struct._typeobject* %33, @_PyWeakref_RefType, !dbg !1247
  br i1 %cmp2.i.67, label %if.end.i.71, label %land.lhs.true.8.i.81, !dbg !1248

if.end.i.71:                                      ; preds = %if.then.i.68
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !770, metadata !831), !dbg !1168
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !770, metadata !831), !dbg !1170
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !559, metadata !831), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !559, metadata !831), !dbg !1171
  %wr_next.i.69 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i64 0, i32 5, !dbg !1249
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.69, align 8, !dbg !1249, !tbaa !839
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %34, i64 0, metadata !769, metadata !831), !dbg !1241
  %cmp4.i.70 = icmp eq %struct._PyWeakReference* %34, null, !dbg !1251
  br i1 %cmp4.i.70, label %get_basic_refs.exit83, label %land.lhs.true.5.i.75, !dbg !1253

land.lhs.true.5.i.75:                             ; preds = %if.end.i.71
  %wr_callback6.phi.trans.insert.i.72 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i64 0, i32 2, !dbg !1254
  %.pre.i.73 = load %struct._object*, %struct._object** %wr_callback6.phi.trans.insert.i.72, align 8, !dbg !1254, !tbaa !849
  %phitmp.i.74 = icmp eq %struct._object* %.pre.i.73, null, !dbg !1253
  br i1 %phitmp.i.74, label %land.lhs.true.5.i.75.land.lhs.true.8.i.81_crit_edge, label %get_basic_refs.exit83, !dbg !1255

land.lhs.true.5.i.75.land.lhs.true.8.i.81_crit_edge: ; preds = %land.lhs.true.5.i.75
  %ob_type9.i.77.phi.trans.insert = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i64 0, i32 0, i32 1, !dbg !1256
  %.pre111 = load %struct._typeobject*, %struct._typeobject** %ob_type9.i.77.phi.trans.insert, align 8, !dbg !1256, !tbaa !859
  br label %land.lhs.true.8.i.81, !dbg !1255

land.lhs.true.8.i.81:                             ; preds = %land.lhs.true.5.i.75.land.lhs.true.8.i.81_crit_edge, %if.then.i.68
  %35 = phi %struct._typeobject* [ %.pre111, %land.lhs.true.5.i.75.land.lhs.true.8.i.81_crit_edge ], [ %33, %if.then.i.68 ], !dbg !1256
  %ref.0.100 = phi %struct._PyWeakReference* [ %27, %land.lhs.true.5.i.75.land.lhs.true.8.i.81_crit_edge ], [ null, %if.then.i.68 ]
  %head.addr.02829.i.76 = phi %struct._PyWeakReference* [ %34, %land.lhs.true.5.i.75.land.lhs.true.8.i.81_crit_edge ], [ %27, %if.then.i.68 ], !dbg !1258
  %cmp10.i.78 = icmp eq %struct._typeobject* %35, @_PyWeakref_ProxyType, !dbg !1256
  %cmp12.i.79 = icmp eq %struct._typeobject* %35, @_PyWeakref_CallableProxyType, !dbg !1259
  %or.cond.i.80 = or i1 %cmp10.i.78, %cmp12.i.79, !dbg !1256
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.76, i64 0, metadata !771, metadata !831), !dbg !1172
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.76, i64 0, metadata !771, metadata !831), !dbg !1173
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.76, i64 0, metadata !562, metadata !831), !dbg !1174
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.76, i64 0, metadata !562, metadata !831), !dbg !1174
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.76, i64 0, metadata !562, metadata !831), !dbg !1174
  %head.addr.02829.i.76. = select i1 %or.cond.i.80, %struct._PyWeakReference* %head.addr.02829.i.76, %struct._PyWeakReference* null, !dbg !1256
  br label %get_basic_refs.exit83, !dbg !1256

get_basic_refs.exit83:                            ; preds = %land.lhs.true.8.i.81, %if.else, %land.lhs.true.i.65, %if.end.i.71, %land.lhs.true.5.i.75
  %ref.0.101 = phi %struct._PyWeakReference* [ null, %if.else ], [ null, %land.lhs.true.i.65 ], [ %27, %if.end.i.71 ], [ %27, %land.lhs.true.5.i.75 ], [ %ref.0.100, %land.lhs.true.8.i.81 ]
  %proxy.0.99 = phi %struct._PyWeakReference* [ null, %if.else ], [ null, %land.lhs.true.i.65 ], [ null, %if.end.i.71 ], [ null, %land.lhs.true.5.i.75 ], [ %head.addr.02829.i.76., %land.lhs.true.8.i.81 ]
  %cmp23 = icmp eq %struct._PyWeakReference* %proxy.0.99, null, !dbg !1261
  %cond = select i1 %cmp23, %struct._PyWeakReference* %ref.0.101, %struct._PyWeakReference* %proxy.0.99, !dbg !1262
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %cond, i64 0, metadata !564, metadata !831), !dbg !1263
  %cmp24 = icmp eq %struct._PyWeakReference* %cond, null, !dbg !1264
  %wr_prev.i.57 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 2, i32 1, !dbg !1265
  %36 = bitcast %struct._typeobject** %wr_prev.i.57 to %struct._PyWeakReference**, !dbg !1265
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !1266

if.then.25:                                       ; preds = %get_basic_refs.exit83
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %18, i64 0, metadata !783, metadata !831), !dbg !1267
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %11, i64 0, metadata !784, metadata !831), !dbg !1268
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %27, i64 0, metadata !785, metadata !831), !dbg !1269
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %36, align 8, !dbg !1270, !tbaa !876
  %wr_next.i.58 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 3, !dbg !1271
  %37 = bitcast %struct._object* %wr_next.i.58 to %struct._PyWeakReference**, !dbg !1271
  store %struct._PyWeakReference* %27, %struct._PyWeakReference** %37, align 8, !dbg !1272, !tbaa !839
  br i1 %cmp.i.62, label %insert_head.exit, label %if.then.i.60, !dbg !1273

if.then.i.60:                                     ; preds = %if.then.25
  %wr_prev1.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i64 0, i32 4, !dbg !1274
  %38 = bitcast %struct._PyWeakReference** %wr_prev1.i to %struct._object**, !dbg !1275
  store %struct._object* %call16, %struct._object** %38, align 8, !dbg !1275, !tbaa !876
  br label %insert_head.exit, !dbg !1276

insert_head.exit:                                 ; preds = %if.then.25, %if.then.i.60
  %39 = bitcast i8* %add.ptr to %struct._object**, !dbg !1277
  store %struct._object* %call16, %struct._object** %39, align 8, !dbg !1277, !tbaa !867
  br label %if.end.32, !dbg !1278

if.else.26:                                       ; preds = %get_basic_refs.exit83
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %18, i64 0, metadata !790, metadata !831), !dbg !1279
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %cond, i64 0, metadata !791, metadata !831), !dbg !1281
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %36, align 8, !dbg !1282, !tbaa !876
  %wr_next.i.53 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %cond, i64 0, i32 5, !dbg !1283
  %40 = bitcast %struct._PyWeakReference** %wr_next.i.53 to i64*, !dbg !1283
  %41 = load i64, i64* %40, align 8, !dbg !1283, !tbaa !839
  %42 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 3, i32 0, !dbg !1284
  store i64 %41, i64* %42, align 8, !dbg !1284, !tbaa !839
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.53, align 8, !dbg !1285, !tbaa !839
  %cmp.i.54 = icmp eq %struct._PyWeakReference* %43, null, !dbg !1287
  br i1 %cmp.i.54, label %insert_after.exit, label %if.then.i.55, !dbg !1288

if.then.i.55:                                     ; preds = %if.else.26
  %wr_prev4.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %43, i64 0, i32 4, !dbg !1289
  %44 = bitcast %struct._PyWeakReference** %wr_prev4.i to %struct._object**, !dbg !1290
  store %struct._object* %call16, %struct._object** %44, align 8, !dbg !1290, !tbaa !876
  br label %insert_after.exit, !dbg !1291

insert_after.exit:                                ; preds = %if.else.26, %if.then.i.55
  %45 = bitcast %struct._PyWeakReference** %wr_next.i.53 to %struct._object**, !dbg !1292
  store %struct._object* %call16, %struct._object** %45, align 8, !dbg !1292, !tbaa !839
  br label %if.end.32

if.end.32:                                        ; preds = %insert_head.exit90, %if.end.15, %insert_after.exit, %insert_head.exit, %entry
  %self.1 = phi %struct._PyWeakReference* [ null, %entry ], [ %18, %insert_head.exit ], [ %18, %insert_after.exit ], [ %18, %if.end.15 ], [ %18, %insert_head.exit90 ]
  %46 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self.1, i64 0, i32 0, !dbg !1293
  br label %cleanup.33, !dbg !1294

cleanup.33:                                       ; preds = %if.then.1, %if.then.13, %if.end.32
  %retval.1 = phi %struct._object* [ %46, %if.end.32 ], [ %16, %if.then.13 ], [ null, %if.then.1 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1295
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1295
  ret %struct._object* %retval.1, !dbg !1295
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @proxy_dealloc(%struct._PyWeakReference* %self) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !580, metadata !831), !dbg !1296
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 2, !dbg !1297
  %0 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1297, !tbaa !849
  %cmp = icmp eq %struct._object* %0, null, !dbg !1299
  br i1 %cmp, label %if.end, label %if.then, !dbg !1300

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._PyWeakReference* %self to i8*, !dbg !1301
  tail call void @PyObject_GC_UnTrack(i8* %1) #1, !dbg !1302
  %.pr = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1303, !tbaa !849
  br label %if.end, !dbg !1302

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct._object* [ null, %entry ], [ %.pr, %if.then ], !dbg !1303
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %self, i64 0, metadata !467, metadata !831) #1, !dbg !1305
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !468, metadata !831) #1, !dbg !1306
  %wr_object.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 1, !dbg !1307
  %3 = load %struct._object*, %struct._object** %wr_object.i, align 8, !dbg !1307, !tbaa !855
  %cmp.i = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !1308
  br i1 %cmp.i, label %if.end.21.i, label %if.then.i, !dbg !1309

if.then.i:                                        ; preds = %if.end
  %4 = bitcast %struct._object* %3 to i8*, !dbg !1310
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1310
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1310, !tbaa !859
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 24, !dbg !1310
  %6 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !1310, !tbaa !860
  %add.ptr.i = getelementptr i8, i8* %4, i64 %6, !dbg !1310
  %7 = bitcast i8* %add.ptr.i to %struct._PyWeakReference**, !dbg !1310
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %7, i64 0, metadata !469, metadata !831) #1, !dbg !1311
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %7, align 8, !dbg !1312, !tbaa !867
  %cmp3.i = icmp eq %struct._PyWeakReference* %8, %self, !dbg !1313
  %wr_next.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 5, !dbg !1314
  br i1 %cmp3.i, label %if.then.4.i, label %if.end.i, !dbg !1315

if.then.4.i:                                      ; preds = %if.then.i
  %9 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !1314
  %10 = load i64, i64* %9, align 8, !dbg !1314, !tbaa !839
  %11 = bitcast i8* %add.ptr.i to i64*, !dbg !1316
  store i64 %10, i64* %11, align 8, !dbg !1316, !tbaa !867
  br label %if.end.i, !dbg !1317

if.end.i:                                         ; preds = %if.then.i, %if.then.4.i
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i, align 8, !dbg !1318, !tbaa !855
  %wr_prev.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %self, i64 0, i32 4, !dbg !1319
  %12 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i, align 8, !dbg !1319, !tbaa !876
  %cmp6.i = icmp eq %struct._PyWeakReference* %12, null, !dbg !1320
  %13 = ptrtoint %struct._PyWeakReference* %12 to i64, !dbg !1321
  br i1 %cmp6.i, label %if.end.11.i, label %if.then.7.i, !dbg !1322

if.then.7.i:                                      ; preds = %if.end.i
  %14 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !1323
  %15 = load i64, i64* %14, align 8, !dbg !1323, !tbaa !839
  %wr_next10.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %12, i64 0, i32 5, !dbg !1324
  %16 = bitcast %struct._PyWeakReference** %wr_next10.i to i64*, !dbg !1325
  store i64 %15, i64* %16, align 8, !dbg !1325, !tbaa !839
  br label %if.end.11.i, !dbg !1326

if.end.11.i:                                      ; preds = %if.then.7.i, %if.end.i
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i, align 8, !dbg !1327, !tbaa !839
  %cmp13.i = icmp eq %struct._PyWeakReference* %17, null, !dbg !1328
  br i1 %cmp13.i, label %if.end.18.i, label %if.then.14.i, !dbg !1329

if.then.14.i:                                     ; preds = %if.end.11.i
  %wr_prev17.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %17, i64 0, i32 4, !dbg !1330
  %18 = bitcast %struct._PyWeakReference** %wr_prev17.i to i64*, !dbg !1331
  store i64 %13, i64* %18, align 8, !dbg !1331, !tbaa !876
  br label %if.end.18.i, !dbg !1332

if.end.18.i:                                      ; preds = %if.then.14.i, %if.end.11.i
  %19 = bitcast %struct._PyWeakReference** %wr_prev.i to <2 x %struct._PyWeakReference*>*, !dbg !1333
  store <2 x %struct._PyWeakReference*> zeroinitializer, <2 x %struct._PyWeakReference*>* %19, align 8, !dbg !1333, !tbaa !867
  br label %if.end.21.i, !dbg !1334

if.end.21.i:                                      ; preds = %if.end.18.i, %if.end
  %cmp22.i = icmp eq %struct._object* %2, null, !dbg !1335
  br i1 %cmp22.i, label %clear_weakref.exit, label %do.body.i, !dbg !1336

do.body.i:                                        ; preds = %if.end.21.i
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !472, metadata !831) #1, !dbg !1337
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1338
  %20 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1338, !tbaa !937
  %dec.i = add i64 %20, -1, !dbg !1338
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1338, !tbaa !937
  %cmp24.i = icmp eq i64 %dec.i, 0, !dbg !1338
  br i1 %cmp24.i, label %if.else.i, label %if.end.27.i, !dbg !1339

if.else.i:                                        ; preds = %do.body.i
  %ob_type26.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1340
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i, align 8, !dbg !1340, !tbaa !859
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1340
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1340, !tbaa !941
  tail call void %22(%struct._object* %2) #1, !dbg !1340
  br label %if.end.27.i, !dbg !1341

if.end.27.i:                                      ; preds = %if.else.i, %do.body.i
  store %struct._object* null, %struct._object** %wr_callback, align 8, !dbg !1342, !tbaa !849
  br label %clear_weakref.exit, !dbg !1343

clear_weakref.exit:                               ; preds = %if.end.21.i, %if.end.27.i
  %23 = bitcast %struct._PyWeakReference* %self to i8*, !dbg !1344
  tail call void @PyObject_GC_Del(i8* %23) #1, !dbg !1345
  ret void, !dbg !1346
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_repr(%struct._PyWeakReference* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !583, metadata !831), !dbg !1347
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1, !dbg !1348
  %0 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1348, !tbaa !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1348
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1348, !tbaa !937
  %cmp = icmp sgt i64 %1, 0, !dbg !1348
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %0, %struct._object* @_Py_NoneStruct, !dbg !1348
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %._Py_NoneStruct, i64 0, i32 1, !dbg !1349
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1349, !tbaa !859
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 1, !dbg !1352
  %3 = load i8*, i8** %tp_name, align 8, !dbg !1352, !tbaa !978
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), %struct._PyWeakReference* %proxy, i8* %3, %struct._object* %._Py_NoneStruct) #1, !dbg !1353
  ret %struct._object* %call, !dbg !1354
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_str(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !736, metadata !831), !dbg !1355
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !1356
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1356, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !1356
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !1358
  %or.cond = or i1 %cmp, %cmp2, !dbg !1356
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !1356

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !1360, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !1363
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1360, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !1369
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !1363
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1363
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1371

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1372, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1374
  br label %return, !dbg !1375

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !1360
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1360
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !736, metadata !831), !dbg !1355
  br label %if.end.6, !dbg !1376

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyObject_Str(%struct._object* %proxy.addr.0) #1, !dbg !1379
  br label %return, !dbg !1379

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !1382
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_getattr(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !739, metadata !831), !dbg !1385
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !740, metadata !831), !dbg !1385
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !1386
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1386, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !1386
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !1388
  %or.cond = or i1 %cmp, %cmp2, !dbg !1386
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !1386

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !1390, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !1393
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1390, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !1398
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !1393
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1393
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1399

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1400, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1401
  br label %return, !dbg !1402

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !1390
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !1390
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !739, metadata !831), !dbg !1385
  br label %if.end.6, !dbg !1403

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !1406
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1406, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !1406
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !1410
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !1406
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !1406

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !1412, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !1415
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !1412, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !1420
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !1415
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !1415
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !1421

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1422, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1423
  br label %return, !dbg !1424

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !1412
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1412
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !740, metadata !831), !dbg !1385
  br label %if.end.25, !dbg !1425

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyObject_GetAttr(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !1428
  br label %return, !dbg !1428

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !1431
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_setattr(%struct._PyWeakReference* nocapture readonly %proxy, %struct._object* %name, %struct._object* %value) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !743, metadata !831), !dbg !1435
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !744, metadata !831), !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !745, metadata !831), !dbg !1437
  %proxy.idx = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1
  %proxy.idx.val = load %struct._object*, %struct._object** %proxy.idx, align 8, !dbg !1438, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %proxy.idx.val, i64 0, i32 0, !dbg !1439
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1438, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %proxy.idx.val, @_Py_NoneStruct, !dbg !1442
  %not.cmp.i = icmp slt i64 %0, 1, !dbg !1439
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1439
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1443

proxy_checkref.exit.thread:                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1444, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1445
  br label %return, !dbg !1446

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %0, 0, !dbg !1438
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %proxy.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1438
  %call2 = tail call i32 @PyObject_SetAttr(%struct._object* %._Py_NoneStruct, %struct._object* %name, %struct._object* %value) #1, !dbg !1447
  br label %return, !dbg !1448

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %proxy_checkref.exit.thread ]
  ret i32 %retval.0, !dbg !1449
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_richcompare(%struct._object* %proxy, %struct._object* %v, i32 %op) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !748, metadata !831), !dbg !1450
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !749, metadata !831), !dbg !1451
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !750, metadata !831), !dbg !1452
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !1453
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1453, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !1453
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !1455
  %or.cond = or i1 %cmp, %cmp2, !dbg !1453
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !1453

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !1457, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !1460
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1457, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !1465
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !1460
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1460
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1466

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1467, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1468
  br label %return, !dbg !1469

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !1457
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !1457
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !748, metadata !831), !dbg !1450
  br label %if.end.6, !dbg !1470

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1473
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1473, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !1473
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !1475
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !1473
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !1473

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %v, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !1477, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !1480
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !1477, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !1485
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !1480
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !1480
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !1486

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1487, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1488
  br label %return, !dbg !1489

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !1477
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1477
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !749, metadata !831), !dbg !1451
  br label %if.end.25, !dbg !1490

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %v.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %v, %if.end.6 ]
  %call26 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %proxy.addr.0, %struct._object* %v.addr.0, i32 %op) #1, !dbg !1493
  br label %return, !dbg !1494

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !1495
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iter(%struct._PyWeakReference* nocapture readonly %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !753, metadata !831), !dbg !1496
  %proxy.idx = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1
  %proxy.idx.val = load %struct._object*, %struct._object** %proxy.idx, align 8, !dbg !1497, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %proxy.idx.val, i64 0, i32 0, !dbg !1498
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1497, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %proxy.idx.val, @_Py_NoneStruct, !dbg !1501
  %not.cmp.i = icmp slt i64 %0, 1, !dbg !1498
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1498
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1502

proxy_checkref.exit.thread:                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1503, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1504
  br label %return, !dbg !1505

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %0, 0, !dbg !1497
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %proxy.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1497
  %call2 = tail call %struct._object* @PyObject_GetIter(%struct._object* %._Py_NoneStruct) #1, !dbg !1506
  br label %return, !dbg !1509

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !1510
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iternext(%struct._PyWeakReference* nocapture readonly %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !756, metadata !831), !dbg !1511
  %proxy.idx = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1
  %proxy.idx.val = load %struct._object*, %struct._object** %proxy.idx, align 8, !dbg !1512, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %proxy.idx.val, i64 0, i32 0, !dbg !1513
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1512, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %proxy.idx.val, @_Py_NoneStruct, !dbg !1516
  %not.cmp.i = icmp slt i64 %0, 1, !dbg !1513
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1513
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1517

proxy_checkref.exit.thread:                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1518, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1519
  br label %return, !dbg !1520

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %0, 0, !dbg !1512
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %proxy.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1512
  %call2 = tail call %struct._object* @PyIter_Next(%struct._object* %._Py_NoneStruct) #1, !dbg !1521
  br label %return, !dbg !1524

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !1525
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_call(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !762, metadata !831), !dbg !1526
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !763, metadata !831), !dbg !1526
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !764, metadata !831), !dbg !1526
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !1527
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1527, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !1527
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !1529
  %or.cond = or i1 %cmp, %cmp2, !dbg !1527
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !1527

if.then:                                          ; preds = %entry
  %.idx70 = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx70 to %struct._object**
  %.idx70.val = load %struct._object*, %struct._object** %1, align 8, !dbg !1531, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx70.val, i64 0, i32 0, !dbg !1534
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1531, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx70.val, @_Py_NoneStruct, !dbg !1539
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !1534
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !1534
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !1540

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1541, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1542
  br label %return, !dbg !1543

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !1531
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx70.val, %struct._object* @_Py_NoneStruct, !dbg !1531
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !762, metadata !831), !dbg !1526
  br label %if.end.6, !dbg !1544

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1547
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1547, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !1547
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !1551
  %or.cond65 = or i1 %cmp8, %cmp11, !dbg !1547
  br i1 %or.cond65, label %if.then.12, label %if.end.25, !dbg !1547

if.then.12:                                       ; preds = %if.end.6
  %.idx69 = getelementptr %struct._object, %struct._object* %v, i64 1
  %5 = bitcast %struct._object* %.idx69 to %struct._object**
  %.idx69.val = load %struct._object*, %struct._object** %5, align 8, !dbg !1553, !tbaa !855
  %ob_refcnt.i.71 = getelementptr inbounds %struct._object, %struct._object* %.idx69.val, i64 0, i32 0, !dbg !1556
  %6 = load i64, i64* %ob_refcnt.i.71, align 8, !dbg !1553, !tbaa !937
  %phitmp.i.72 = icmp eq %struct._object* %.idx69.val, @_Py_NoneStruct, !dbg !1561
  %not.cmp.i.73 = icmp slt i64 %6, 1, !dbg !1556
  %phitmp..i.74 = or i1 %phitmp.i.72, %not.cmp.i.73, !dbg !1556
  br i1 %phitmp..i.74, label %proxy_checkref.exit77.thread, label %if.end.16, !dbg !1562

proxy_checkref.exit77.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1563, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1564
  br label %return, !dbg !1565

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !1553
  %._Py_NoneStruct66 = select i1 %cmp19, %struct._object* %.idx69.val, %struct._object* @_Py_NoneStruct, !dbg !1553
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct66, i64 0, metadata !763, metadata !831), !dbg !1526
  br label %if.end.25, !dbg !1566

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %v.addr.0 = phi %struct._object* [ %._Py_NoneStruct66, %if.end.16 ], [ %v, %if.end.6 ]
  %cmp26 = icmp eq %struct._object* %w, null, !dbg !1569
  br i1 %cmp26, label %if.end.47, label %if.then.27, !dbg !1526

if.then.27:                                       ; preds = %if.end.25
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1573
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1573, !tbaa !859
  %cmp29 = icmp eq %struct._typeobject* %8, @_PyWeakref_ProxyType, !dbg !1573
  %cmp32 = icmp eq %struct._typeobject* %8, @_PyWeakref_CallableProxyType, !dbg !1576
  %or.cond67 = or i1 %cmp29, %cmp32, !dbg !1573
  br i1 %or.cond67, label %if.then.33, label %if.end.47, !dbg !1573

if.then.33:                                       ; preds = %if.then.27
  %.idx = getelementptr %struct._object, %struct._object* %w, i64 1
  %9 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %9, align 8, !dbg !1578, !tbaa !855
  %ob_refcnt.i.78 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !1581
  %10 = load i64, i64* %ob_refcnt.i.78, align 8, !dbg !1578, !tbaa !937
  %phitmp.i.79 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !1586
  %not.cmp.i.80 = icmp slt i64 %10, 1, !dbg !1581
  %phitmp..i.81 = or i1 %phitmp.i.79, %not.cmp.i.80, !dbg !1581
  br i1 %phitmp..i.81, label %proxy_checkref.exit84.thread, label %if.end.37, !dbg !1587

proxy_checkref.exit84.thread:                     ; preds = %if.then.33
  %11 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !1588, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !1589
  br label %return, !dbg !1590

if.end.37:                                        ; preds = %if.then.33
  %cmp40 = icmp sgt i64 %10, 0, !dbg !1578
  %._Py_NoneStruct68 = select i1 %cmp40, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !1578
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct68, i64 0, metadata !764, metadata !831), !dbg !1526
  br label %if.end.47, !dbg !1591

if.end.47:                                        ; preds = %if.then.27, %if.end.25, %if.end.37
  %w.addr.0 = phi %struct._object* [ %._Py_NoneStruct68, %if.end.37 ], [ null, %if.end.25 ], [ %w, %if.then.27 ]
  %call48 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %proxy.addr.0, %struct._object* %v.addr.0, %struct._object* %w.addr.0) #1, !dbg !1594
  br label %return, !dbg !1594

return:                                           ; preds = %proxy_checkref.exit84.thread, %proxy_checkref.exit77.thread, %proxy_checkref.exit.thread, %if.end.47
  %retval.0 = phi %struct._object* [ %call48, %if.end.47 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit77.thread ], [ null, %proxy_checkref.exit84.thread ]
  ret %struct._object* %retval.0, !dbg !1597
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_NewRef(%struct._object* %ob, %struct._object* %callback) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !386, metadata !831), !dbg !1602
  tail call void @llvm.dbg.value(metadata %struct._object* %callback, i64 0, metadata !387, metadata !831), !dbg !1603
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !388, metadata !831), !dbg !1604
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ob, i64 0, i32 1, !dbg !1605
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1605, !tbaa !859
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 24, !dbg !1605
  %1 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !1605, !tbaa !860
  %cmp = icmp sgt i64 %1, 0, !dbg !1605
  br i1 %cmp, label %if.end, label %if.then, !dbg !1607

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1608, !tbaa !867
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !1610
  %3 = load i8*, i8** %tp_name, align 8, !dbg !1610, !tbaa !978
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %3) #1, !dbg !1611
  br label %cleanup, !dbg !1612

if.end:                                           ; preds = %entry
  %4 = bitcast %struct._object* %ob to i8*, !dbg !1613
  %add.ptr = getelementptr i8, i8* %4, i64 %1, !dbg !1613
  %5 = bitcast i8* %add.ptr to %struct._PyWeakReference**, !dbg !1613
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %5, i64 0, metadata !389, metadata !831), !dbg !1614
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %5, align 8, !dbg !1615, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !769, metadata !831), !dbg !1616
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1618
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1620
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1622
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1623
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !391, metadata !831), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !391, metadata !831), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !391, metadata !831), !dbg !1624
  %cmp.i = icmp eq %struct._PyWeakReference* %6, null, !dbg !1625
  br i1 %cmp.i, label %get_basic_refs.exit.thread, label %land.lhs.true.i, !dbg !1626

land.lhs.true.i:                                  ; preds = %if.end
  %wr_callback.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i64 0, i32 2, !dbg !1627
  %7 = load %struct._object*, %struct._object** %wr_callback.i, align 8, !dbg !1627, !tbaa !849
  %cmp1.i = icmp eq %struct._object* %7, null, !dbg !1628
  br i1 %cmp1.i, label %get_basic_refs.exit, label %get_basic_refs.exit.thread, !dbg !1629

get_basic_refs.exit.thread:                       ; preds = %if.end, %land.lhs.true.i
  %cmp4.117 = icmp eq %struct._object* %callback, @_Py_NoneStruct, !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !387, metadata !831), !dbg !1603
  %.callback.118 = select i1 %cmp4.117, %struct._object* null, %struct._object* %callback, !dbg !1632
  %cmp7.119 = icmp eq %struct._object* %.callback.118, null, !dbg !1633
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %., i64 0, metadata !388, metadata !831), !dbg !1604
  br label %if.else, !dbg !1635

get_basic_refs.exit:                              ; preds = %land.lhs.true.i
  %ob_type.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i64 0, i32 0, i32 1, !dbg !1636
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1636, !tbaa !859
  %cmp2.i = icmp eq %struct._typeobject* %8, @_PyWeakref_RefType, !dbg !1636
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !770, metadata !831), !dbg !1618
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !770, metadata !831), !dbg !1620
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !390, metadata !831), !dbg !1621
  %. = select i1 %cmp2.i, %struct._PyWeakReference* %6, %struct._PyWeakReference* null, !dbg !1637
  %cmp4 = icmp eq %struct._object* %callback, @_Py_NoneStruct, !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !387, metadata !831), !dbg !1603
  %.callback = select i1 %cmp4, %struct._object* null, %struct._object* %callback, !dbg !1632
  %cmp7 = icmp eq %struct._object* %.callback, null, !dbg !1633
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %., i64 0, metadata !388, metadata !831), !dbg !1604
  %cmp10116 = icmp eq %struct._PyWeakReference* %., null, !dbg !1638
  %not.cmp7 = xor i1 %cmp7, true, !dbg !1638
  %cmp10 = or i1 %cmp10116, %not.cmp7, !dbg !1638
  br i1 %cmp10, label %if.else, label %if.then.11, !dbg !1635

if.then.11:                                       ; preds = %get_basic_refs.exit
  %ob_refcnt = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %., i64 0, i32 0, i32 0, !dbg !1639
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1639, !tbaa !937
  %inc = add i64 %9, 1, !dbg !1639
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1639, !tbaa !937
  br label %if.end.37, !dbg !1639

if.else:                                          ; preds = %get_basic_refs.exit.thread, %get_basic_refs.exit
  %cmp7124 = phi i1 [ %cmp7.119, %get_basic_refs.exit.thread ], [ %cmp7, %get_basic_refs.exit ]
  %.callback123 = phi %struct._object* [ %.callback.118, %get_basic_refs.exit.thread ], [ %.callback, %get_basic_refs.exit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !776, metadata !831) #1, !dbg !1640
  tail call void @llvm.dbg.value(metadata %struct._object* %.callback, i64 0, metadata !777, metadata !831) #1, !dbg !1642
  %call.i = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @_PyWeakref_RefType) #1, !dbg !1643
  %10 = bitcast %struct._object* %call.i to %struct._PyWeakReference*, !dbg !1643
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %10, i64 0, metadata !778, metadata !831) #1, !dbg !1644
  %tobool.i = icmp eq %struct._object* %call.i, null, !dbg !1645
  br i1 %tobool.i, label %if.end.37, label %if.then.i.73, !dbg !1647

if.then.i.73:                                     ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %10, i64 0, metadata !573, metadata !831) #1, !dbg !1648
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !574, metadata !831) #1, !dbg !1651
  tail call void @llvm.dbg.value(metadata %struct._object* %.callback, i64 0, metadata !575, metadata !831) #1, !dbg !1652
  %11 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 0, !dbg !1653
  store i64 -1, i64* %11, align 8, !dbg !1654, !tbaa !1001
  %wr_object.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !1655
  %12 = bitcast %struct._object* %wr_object.i.i to %struct._object**, !dbg !1655
  store %struct._object* %ob, %struct._object** %12, align 8, !dbg !1656, !tbaa !855
  tail call void @llvm.dbg.value(metadata %struct._object* %.callback, i64 0, metadata !576, metadata !831) #1, !dbg !1657
  br i1 %cmp7124, label %new_weakref.exit.thread, label %if.then.i.i, !dbg !1658

if.then.i.i:                                      ; preds = %if.then.i.73
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %.callback123, i64 0, i32 0, !dbg !1659
  %13 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1659, !tbaa !937
  %inc.i.i = add i64 %13, 1, !dbg !1659
  store i64 %inc.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1659, !tbaa !937
  br label %new_weakref.exit.thread, !dbg !1659

new_weakref.exit.thread:                          ; preds = %if.then.i.73, %if.then.i.i
  %wr_callback.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1660
  %14 = bitcast %struct._typeobject** %wr_callback.i.i to %struct._object**, !dbg !1660
  store %struct._object* %.callback123, %struct._object** %14, align 8, !dbg !1661, !tbaa !849
  %15 = bitcast %struct._object* %call.i to i8*, !dbg !1662
  tail call void @PyObject_GC_Track(i8* %15) #1, !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %10, i64 0, metadata !388, metadata !831), !dbg !1604
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %5, align 8, !dbg !1664, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !769, metadata !831), !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1618
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1620
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1622
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1623
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !391, metadata !831), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !391, metadata !831), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !391, metadata !831), !dbg !1624
  %cmp.i.75 = icmp eq %struct._PyWeakReference* %16, null, !dbg !1667
  br i1 %cmp.i.75, label %get_basic_refs.exit96, label %land.lhs.true.i.78, !dbg !1668

land.lhs.true.i.78:                               ; preds = %new_weakref.exit.thread
  %wr_callback.i.76 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 2, !dbg !1669
  %17 = load %struct._object*, %struct._object** %wr_callback.i.76, align 8, !dbg !1669, !tbaa !849
  %cmp1.i.77 = icmp eq %struct._object* %17, null, !dbg !1670
  br i1 %cmp1.i.77, label %if.then.i.81, label %get_basic_refs.exit96, !dbg !1671

if.then.i.81:                                     ; preds = %land.lhs.true.i.78
  %ob_type.i.79 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 0, i32 1, !dbg !1672
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.79, align 8, !dbg !1672, !tbaa !859
  %cmp2.i.80 = icmp eq %struct._typeobject* %18, @_PyWeakref_RefType, !dbg !1672
  br i1 %cmp2.i.80, label %if.end.i.84, label %land.lhs.true.8.i.94, !dbg !1673

if.end.i.84:                                      ; preds = %if.then.i.81
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !770, metadata !831), !dbg !1618
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !770, metadata !831), !dbg !1620
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !390, metadata !831), !dbg !1621
  %wr_next.i.82 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 5, !dbg !1674
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.82, align 8, !dbg !1674, !tbaa !839
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !769, metadata !831), !dbg !1666
  %cmp4.i.83 = icmp eq %struct._PyWeakReference* %19, null, !dbg !1675
  br i1 %cmp4.i.83, label %get_basic_refs.exit96, label %land.lhs.true.5.i.88, !dbg !1676

land.lhs.true.5.i.88:                             ; preds = %if.end.i.84
  %wr_callback6.phi.trans.insert.i.85 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i64 0, i32 2, !dbg !1677
  %.pre.i.86 = load %struct._object*, %struct._object** %wr_callback6.phi.trans.insert.i.85, align 8, !dbg !1677, !tbaa !849
  %phitmp.i.87 = icmp eq %struct._object* %.pre.i.86, null, !dbg !1676
  br i1 %phitmp.i.87, label %land.lhs.true.5.i.88.land.lhs.true.8.i.94_crit_edge, label %get_basic_refs.exit96, !dbg !1678

land.lhs.true.5.i.88.land.lhs.true.8.i.94_crit_edge: ; preds = %land.lhs.true.5.i.88
  %ob_type9.i.90.phi.trans.insert = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i64 0, i32 0, i32 1, !dbg !1679
  %.pre = load %struct._typeobject*, %struct._typeobject** %ob_type9.i.90.phi.trans.insert, align 8, !dbg !1679, !tbaa !859
  br label %land.lhs.true.8.i.94, !dbg !1678

land.lhs.true.8.i.94:                             ; preds = %land.lhs.true.5.i.88.land.lhs.true.8.i.94_crit_edge, %if.then.i.81
  %20 = phi %struct._typeobject* [ %.pre, %land.lhs.true.5.i.88.land.lhs.true.8.i.94_crit_edge ], [ %18, %if.then.i.81 ], !dbg !1679
  %ref.0.113 = phi %struct._PyWeakReference* [ %16, %land.lhs.true.5.i.88.land.lhs.true.8.i.94_crit_edge ], [ null, %if.then.i.81 ]
  %head.addr.02829.i.89 = phi %struct._PyWeakReference* [ %19, %land.lhs.true.5.i.88.land.lhs.true.8.i.94_crit_edge ], [ %16, %if.then.i.81 ], !dbg !1680
  %cmp10.i.91 = icmp eq %struct._typeobject* %20, @_PyWeakref_ProxyType, !dbg !1679
  %cmp12.i.92 = icmp eq %struct._typeobject* %20, @_PyWeakref_CallableProxyType, !dbg !1681
  %or.cond.i.93 = or i1 %cmp10.i.91, %cmp12.i.92, !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.89, i64 0, metadata !771, metadata !831), !dbg !1622
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.89, i64 0, metadata !771, metadata !831), !dbg !1623
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.89, i64 0, metadata !391, metadata !831), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.89, i64 0, metadata !391, metadata !831), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.89, i64 0, metadata !391, metadata !831), !dbg !1624
  %head.addr.02829.i.89. = select i1 %or.cond.i.93, %struct._PyWeakReference* %head.addr.02829.i.89, %struct._PyWeakReference* null, !dbg !1679
  br label %get_basic_refs.exit96, !dbg !1679

get_basic_refs.exit96:                            ; preds = %land.lhs.true.8.i.94, %new_weakref.exit.thread, %land.lhs.true.i.78, %if.end.i.84, %land.lhs.true.5.i.88
  %ref.0.114 = phi %struct._PyWeakReference* [ null, %new_weakref.exit.thread ], [ null, %land.lhs.true.i.78 ], [ %16, %if.end.i.84 ], [ %16, %land.lhs.true.5.i.88 ], [ %ref.0.113, %land.lhs.true.8.i.94 ]
  %proxy.0.110 = phi %struct._PyWeakReference* [ null, %new_weakref.exit.thread ], [ null, %land.lhs.true.i.78 ], [ null, %if.end.i.84 ], [ null, %land.lhs.true.5.i.88 ], [ %head.addr.02829.i.89., %land.lhs.true.8.i.94 ]
  br i1 %cmp7124, label %if.then.16, label %if.else.29, !dbg !1682

if.then.16:                                       ; preds = %get_basic_refs.exit96
  %cmp17 = icmp eq %struct._PyWeakReference* %ref.0.114, null, !dbg !1683
  br i1 %cmp17, label %if.then.18, label %do.body, !dbg !1684

if.then.18:                                       ; preds = %if.then.16
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %10, i64 0, metadata !783, metadata !831), !dbg !1685
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %5, i64 0, metadata !784, metadata !831), !dbg !1686
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !785, metadata !831), !dbg !1687
  %wr_prev.i.97 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !1688
  %21 = bitcast %struct._typeobject** %wr_prev.i.97 to %struct._PyWeakReference**, !dbg !1688
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %21, align 8, !dbg !1689, !tbaa !876
  %wr_next.i.98 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, !dbg !1690
  %22 = bitcast %struct._object* %wr_next.i.98 to %struct._PyWeakReference**, !dbg !1690
  store %struct._PyWeakReference* %16, %struct._PyWeakReference** %22, align 8, !dbg !1691, !tbaa !839
  br i1 %cmp.i.75, label %insert_head.exit103, label %if.then.i.101, !dbg !1692

if.then.i.101:                                    ; preds = %if.then.18
  %wr_prev1.i.100 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 4, !dbg !1693
  %23 = bitcast %struct._PyWeakReference** %wr_prev1.i.100 to %struct._object**, !dbg !1694
  store %struct._object* %call.i, %struct._object** %23, align 8, !dbg !1694, !tbaa !876
  br label %insert_head.exit103, !dbg !1695

insert_head.exit103:                              ; preds = %if.then.18, %if.then.i.101
  %24 = bitcast i8* %add.ptr to %struct._object**, !dbg !1696
  store %struct._object* %call.i, %struct._object** %24, align 8, !dbg !1696, !tbaa !867
  br label %if.end.37, !dbg !1697

do.body:                                          ; preds = %if.then.16
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !392, metadata !831), !dbg !1698
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1700
  %25 = load i64, i64* %ob_refcnt20, align 8, !dbg !1700, !tbaa !937
  %dec = add i64 %25, -1, !dbg !1700
  store i64 %dec, i64* %ob_refcnt20, align 8, !dbg !1700, !tbaa !937
  %cmp21 = icmp eq i64 %dec, 0, !dbg !1700
  br i1 %cmp21, label %if.else.23, label %if.end.25, !dbg !1702

if.else.23:                                       ; preds = %do.body
  %26 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1703
  %27 = load %struct._typeobject*, %struct._typeobject** %26, align 8, !dbg !1703, !tbaa !859
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1703
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1703, !tbaa !941
  tail call void %28(%struct._object* %call.i) #1, !dbg !1703
  br label %if.end.25

if.end.25:                                        ; preds = %do.body, %if.else.23
  %ob_refcnt26 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %ref.0.114, i64 0, i32 0, i32 0, !dbg !1705
  %29 = load i64, i64* %ob_refcnt26, align 8, !dbg !1705, !tbaa !937
  %inc27 = add i64 %29, 1, !dbg !1705
  store i64 %inc27, i64* %ob_refcnt26, align 8, !dbg !1705, !tbaa !937
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %ref.0.114, i64 0, metadata !388, metadata !831), !dbg !1604
  br label %if.end.37

if.else.29:                                       ; preds = %get_basic_refs.exit96
  %cmp30 = icmp eq %struct._PyWeakReference* %proxy.0.110, null, !dbg !1706
  %cond = select i1 %cmp30, %struct._PyWeakReference* %ref.0.114, %struct._PyWeakReference* %proxy.0.110, !dbg !1707
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %cond, i64 0, metadata !402, metadata !831), !dbg !1708
  %cmp31 = icmp eq %struct._PyWeakReference* %cond, null, !dbg !1709
  %wr_prev.i.68 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !1711
  %30 = bitcast %struct._typeobject** %wr_prev.i.68 to %struct._PyWeakReference**, !dbg !1711
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !1713

if.then.32:                                       ; preds = %if.else.29
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %10, i64 0, metadata !783, metadata !831), !dbg !1714
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %5, i64 0, metadata !784, metadata !831), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %16, i64 0, metadata !785, metadata !831), !dbg !1716
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %30, align 8, !dbg !1717, !tbaa !876
  %wr_next.i.69 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, !dbg !1718
  %31 = bitcast %struct._object* %wr_next.i.69 to %struct._PyWeakReference**, !dbg !1718
  store %struct._PyWeakReference* %16, %struct._PyWeakReference** %31, align 8, !dbg !1719, !tbaa !839
  br i1 %cmp.i.75, label %insert_head.exit, label %if.then.i.71, !dbg !1720

if.then.i.71:                                     ; preds = %if.then.32
  %wr_prev1.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 4, !dbg !1721
  %32 = bitcast %struct._PyWeakReference** %wr_prev1.i to %struct._object**, !dbg !1722
  store %struct._object* %call.i, %struct._object** %32, align 8, !dbg !1722, !tbaa !876
  br label %insert_head.exit, !dbg !1723

insert_head.exit:                                 ; preds = %if.then.32, %if.then.i.71
  %33 = bitcast i8* %add.ptr to %struct._object**, !dbg !1724
  store %struct._object* %call.i, %struct._object** %33, align 8, !dbg !1724, !tbaa !867
  br label %if.end.37, !dbg !1725

if.else.33:                                       ; preds = %if.else.29
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %10, i64 0, metadata !790, metadata !831), !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %cond, i64 0, metadata !791, metadata !831), !dbg !1728
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %30, align 8, !dbg !1729, !tbaa !876
  %wr_next.i.64 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %cond, i64 0, i32 5, !dbg !1730
  %34 = bitcast %struct._PyWeakReference** %wr_next.i.64 to i64*, !dbg !1730
  %35 = load i64, i64* %34, align 8, !dbg !1730, !tbaa !839
  %36 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, i32 0, !dbg !1731
  store i64 %35, i64* %36, align 8, !dbg !1731, !tbaa !839
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.64, align 8, !dbg !1732, !tbaa !839
  %cmp.i.65 = icmp eq %struct._PyWeakReference* %37, null, !dbg !1733
  br i1 %cmp.i.65, label %insert_after.exit, label %if.then.i.66, !dbg !1734

if.then.i.66:                                     ; preds = %if.else.33
  %wr_prev4.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %37, i64 0, i32 4, !dbg !1735
  %38 = bitcast %struct._PyWeakReference** %wr_prev4.i to %struct._object**, !dbg !1736
  store %struct._object* %call.i, %struct._object** %38, align 8, !dbg !1736, !tbaa !876
  br label %insert_after.exit, !dbg !1737

insert_after.exit:                                ; preds = %if.else.33, %if.then.i.66
  %39 = bitcast %struct._PyWeakReference** %wr_next.i.64 to %struct._object**, !dbg !1738
  store %struct._object* %call.i, %struct._object** %39, align 8, !dbg !1738, !tbaa !839
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %insert_head.exit, %insert_after.exit, %insert_head.exit103, %if.end.25, %if.then.11
  %result.1 = phi %struct._PyWeakReference* [ %6, %if.then.11 ], [ %10, %insert_head.exit103 ], [ %ref.0.114, %if.end.25 ], [ %10, %insert_after.exit ], [ %10, %insert_head.exit ], [ null, %if.else ]
  %40 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %result.1, i64 0, i32 0, !dbg !1739
  br label %cleanup, !dbg !1740

cleanup:                                          ; preds = %if.end.37, %if.then
  %retval.0 = phi %struct._object* [ %40, %if.end.37 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1741
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_NewProxy(%struct._object* %ob, %struct._object* %callback) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !406, metadata !831), !dbg !1742
  tail call void @llvm.dbg.value(metadata %struct._object* %callback, i64 0, metadata !407, metadata !831), !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !408, metadata !831), !dbg !1744
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ob, i64 0, i32 1, !dbg !1745
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1745, !tbaa !859
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 24, !dbg !1745
  %1 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !1745, !tbaa !860
  %cmp = icmp sgt i64 %1, 0, !dbg !1745
  br i1 %cmp, label %if.end, label %if.then, !dbg !1747

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1748, !tbaa !867
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !1750
  %3 = load i8*, i8** %tp_name, align 8, !dbg !1750, !tbaa !978
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %3) #1, !dbg !1751
  br label %cleanup, !dbg !1752

if.end:                                           ; preds = %entry
  %4 = bitcast %struct._object* %ob to i8*, !dbg !1753
  %add.ptr = getelementptr i8, i8* %4, i64 %1, !dbg !1753
  %5 = bitcast i8* %add.ptr to %struct._PyWeakReference**, !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %5, i64 0, metadata !409, metadata !831), !dbg !1754
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %5, align 8, !dbg !1755, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !769, metadata !831), !dbg !1756
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1758
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1760
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  %cmp.i = icmp eq %struct._PyWeakReference* %6, null, !dbg !1765
  br i1 %cmp.i, label %get_basic_refs.exit.thread, label %land.lhs.true.i, !dbg !1766

land.lhs.true.i:                                  ; preds = %if.end
  %wr_callback.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i64 0, i32 2, !dbg !1767
  %7 = load %struct._object*, %struct._object** %wr_callback.i, align 8, !dbg !1767, !tbaa !849
  %cmp1.i = icmp eq %struct._object* %7, null, !dbg !1768
  br i1 %cmp1.i, label %if.then.i, label %get_basic_refs.exit.thread, !dbg !1769

if.then.i:                                        ; preds = %land.lhs.true.i
  %ob_type.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i64 0, i32 0, i32 1, !dbg !1770
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1770, !tbaa !859
  %cmp2.i = icmp eq %struct._typeobject* %8, @_PyWeakref_RefType, !dbg !1770
  br i1 %cmp2.i, label %if.end.i, label %get_basic_refs.exit, !dbg !1771

if.end.i:                                         ; preds = %if.then.i
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !770, metadata !831), !dbg !1758
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !770, metadata !831), !dbg !1760
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %6, i64 0, metadata !410, metadata !831), !dbg !1761
  %wr_next.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i64 0, i32 5, !dbg !1772
  %9 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i, align 8, !dbg !1772, !tbaa !839
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %9, i64 0, metadata !769, metadata !831), !dbg !1756
  %cmp4.i = icmp eq %struct._PyWeakReference* %9, null, !dbg !1773
  br i1 %cmp4.i, label %get_basic_refs.exit.thread, label %land.lhs.true.5.i, !dbg !1774

land.lhs.true.5.i:                                ; preds = %if.end.i
  %wr_callback6.phi.trans.insert.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i64 0, i32 2, !dbg !1775
  %.pre.i = load %struct._object*, %struct._object** %wr_callback6.phi.trans.insert.i, align 8, !dbg !1775, !tbaa !849
  %phitmp.i = icmp eq %struct._object* %.pre.i, null, !dbg !1774
  br i1 %phitmp.i, label %land.lhs.true.5.i.land.lhs.true.8.i_crit_edge, label %get_basic_refs.exit.thread, !dbg !1776

land.lhs.true.5.i.land.lhs.true.8.i_crit_edge:    ; preds = %land.lhs.true.5.i
  %ob_type9.i.phi.trans.insert = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i64 0, i32 0, i32 1, !dbg !1777
  %.pre = load %struct._typeobject*, %struct._typeobject** %ob_type9.i.phi.trans.insert, align 8, !dbg !1777, !tbaa !859
  br label %get_basic_refs.exit, !dbg !1776

get_basic_refs.exit.thread:                       ; preds = %if.end, %land.lhs.true.i, %if.end.i, %land.lhs.true.5.i
  %cmp4.114 = icmp eq %struct._object* %callback, @_Py_NoneStruct, !dbg !1778
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !407, metadata !831), !dbg !1743
  %.callback.115 = select i1 %cmp4.114, %struct._object* null, %struct._object* %callback, !dbg !1780
  %cmp7.116 = icmp eq %struct._object* %.callback.115, null, !dbg !1781
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i., i64 0, metadata !408, metadata !831), !dbg !1744
  br label %if.else, !dbg !1783

get_basic_refs.exit:                              ; preds = %if.then.i, %land.lhs.true.5.i.land.lhs.true.8.i_crit_edge
  %10 = phi %struct._typeobject* [ %.pre, %land.lhs.true.5.i.land.lhs.true.8.i_crit_edge ], [ %8, %if.then.i ], !dbg !1777
  %head.addr.02829.i = phi %struct._PyWeakReference* [ %9, %land.lhs.true.5.i.land.lhs.true.8.i_crit_edge ], [ %6, %if.then.i ], !dbg !1784
  %cmp10.i = icmp eq %struct._typeobject* %10, @_PyWeakref_ProxyType, !dbg !1777
  %cmp12.i = icmp eq %struct._typeobject* %10, @_PyWeakref_CallableProxyType, !dbg !1785
  %or.cond.i = or i1 %cmp10.i, %cmp12.i, !dbg !1777
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !771, metadata !831), !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !771, metadata !831), !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i, i64 0, metadata !411, metadata !831), !dbg !1764
  %head.addr.02829.i. = select i1 %or.cond.i, %struct._PyWeakReference* %head.addr.02829.i, %struct._PyWeakReference* null, !dbg !1777
  %cmp4 = icmp eq %struct._object* %callback, @_Py_NoneStruct, !dbg !1778
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !407, metadata !831), !dbg !1743
  %.callback = select i1 %cmp4, %struct._object* null, %struct._object* %callback, !dbg !1780
  %cmp7 = icmp eq %struct._object* %.callback, null, !dbg !1781
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i., i64 0, metadata !408, metadata !831), !dbg !1744
  %cmp10112 = icmp eq %struct._PyWeakReference* %head.addr.02829.i., null, !dbg !1786
  %not.cmp7 = xor i1 %cmp7, true, !dbg !1786
  %cmp10 = or i1 %cmp10112, %not.cmp7, !dbg !1786
  br i1 %cmp10, label %if.else, label %if.then.11, !dbg !1783

if.then.11:                                       ; preds = %get_basic_refs.exit
  %ob_refcnt = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %head.addr.02829.i., i64 0, i32 0, i32 0, !dbg !1787
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1787, !tbaa !937
  %inc = add i64 %11, 1, !dbg !1787
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1787, !tbaa !937
  br label %if.end.42, !dbg !1787

if.else:                                          ; preds = %get_basic_refs.exit.thread, %get_basic_refs.exit
  %cmp7121 = phi i1 [ %cmp7.116, %get_basic_refs.exit.thread ], [ %cmp7, %get_basic_refs.exit ]
  %.callback120 = phi %struct._object* [ %.callback.115, %get_basic_refs.exit.thread ], [ %.callback, %get_basic_refs.exit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !776, metadata !831) #1, !dbg !1788
  tail call void @llvm.dbg.value(metadata %struct._object* %.callback, i64 0, metadata !777, metadata !831) #1, !dbg !1790
  %call.i = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @_PyWeakref_RefType) #1, !dbg !1791
  %12 = bitcast %struct._object* %call.i to %struct._PyWeakReference*, !dbg !1791
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !778, metadata !831) #1, !dbg !1792
  %tobool.i = icmp eq %struct._object* %call.i, null, !dbg !1793
  br i1 %tobool.i, label %if.end.42, label %if.then.i.78, !dbg !1794

if.then.i.78:                                     ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !573, metadata !831) #1, !dbg !1795
  tail call void @llvm.dbg.value(metadata %struct._object* %ob, i64 0, metadata !574, metadata !831) #1, !dbg !1797
  tail call void @llvm.dbg.value(metadata %struct._object* %.callback, i64 0, metadata !575, metadata !831) #1, !dbg !1798
  %13 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 0, !dbg !1799
  store i64 -1, i64* %13, align 8, !dbg !1800, !tbaa !1001
  %wr_object.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !1801
  %14 = bitcast %struct._object* %wr_object.i.i to %struct._object**, !dbg !1801
  store %struct._object* %ob, %struct._object** %14, align 8, !dbg !1802, !tbaa !855
  tail call void @llvm.dbg.value(metadata %struct._object* %.callback, i64 0, metadata !576, metadata !831) #1, !dbg !1803
  br i1 %cmp7121, label %new_weakref.exit.thread, label %if.then.i.i, !dbg !1804

if.then.i.i:                                      ; preds = %if.then.i.78
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %.callback120, i64 0, i32 0, !dbg !1805
  %15 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1805, !tbaa !937
  %inc.i.i = add i64 %15, 1, !dbg !1805
  store i64 %inc.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1805, !tbaa !937
  br label %new_weakref.exit.thread, !dbg !1805

new_weakref.exit.thread:                          ; preds = %if.then.i.78, %if.then.i.i
  %wr_callback.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1806
  %16 = bitcast %struct._typeobject** %wr_callback.i.i to %struct._object**, !dbg !1806
  store %struct._object* %.callback120, %struct._object** %16, align 8, !dbg !1807, !tbaa !849
  %17 = bitcast %struct._object* %call.i to i8*, !dbg !1808
  tail call void @PyObject_GC_Track(i8* %17) #1, !dbg !1809
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !408, metadata !831), !dbg !1744
  %call15 = tail call i32 @PyCallable_Check(%struct._object* %ob) #1, !dbg !1810
  %tobool = icmp eq i32 %call15, 0, !dbg !1810
  %18 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1812
  %_PyWeakref_ProxyType._PyWeakref_CallableProxyType = select i1 %tobool, %struct._typeobject* @_PyWeakref_ProxyType, %struct._typeobject* @_PyWeakref_CallableProxyType, !dbg !1813
  store %struct._typeobject* %_PyWeakref_ProxyType._PyWeakref_CallableProxyType, %struct._typeobject** %18, align 8, !dbg !1816, !tbaa !859
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %5, align 8, !dbg !1817, !tbaa !867
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !769, metadata !831), !dbg !1820
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1758
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !770, metadata !831), !dbg !1760
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !771, metadata !831), !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* null, i64 0, metadata !411, metadata !831), !dbg !1764
  %cmp.i.80 = icmp eq %struct._PyWeakReference* %19, null, !dbg !1821
  br i1 %cmp.i.80, label %get_basic_refs.exit101, label %land.lhs.true.i.83, !dbg !1822

land.lhs.true.i.83:                               ; preds = %new_weakref.exit.thread
  %wr_callback.i.81 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i64 0, i32 2, !dbg !1823
  %20 = load %struct._object*, %struct._object** %wr_callback.i.81, align 8, !dbg !1823, !tbaa !849
  %cmp1.i.82 = icmp eq %struct._object* %20, null, !dbg !1824
  br i1 %cmp1.i.82, label %if.then.i.86, label %get_basic_refs.exit101, !dbg !1825

if.then.i.86:                                     ; preds = %land.lhs.true.i.83
  %ob_type.i.84 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i64 0, i32 0, i32 1, !dbg !1826
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.84, align 8, !dbg !1826, !tbaa !859
  %cmp2.i.85 = icmp eq %struct._typeobject* %21, @_PyWeakref_RefType, !dbg !1826
  br i1 %cmp2.i.85, label %if.end.i.89, label %land.lhs.true.8.i.99, !dbg !1827

if.end.i.89:                                      ; preds = %if.then.i.86
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !770, metadata !831), !dbg !1758
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !770, metadata !831), !dbg !1760
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !410, metadata !831), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !410, metadata !831), !dbg !1761
  %wr_next.i.87 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i64 0, i32 5, !dbg !1828
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.87, align 8, !dbg !1828, !tbaa !839
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %22, i64 0, metadata !769, metadata !831), !dbg !1820
  %cmp4.i.88 = icmp eq %struct._PyWeakReference* %22, null, !dbg !1829
  br i1 %cmp4.i.88, label %get_basic_refs.exit101, label %land.lhs.true.5.i.93, !dbg !1830

land.lhs.true.5.i.93:                             ; preds = %if.end.i.89
  %wr_callback6.phi.trans.insert.i.90 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %22, i64 0, i32 2, !dbg !1831
  %.pre.i.91 = load %struct._object*, %struct._object** %wr_callback6.phi.trans.insert.i.90, align 8, !dbg !1831, !tbaa !849
  %phitmp.i.92 = icmp eq %struct._object* %.pre.i.91, null, !dbg !1830
  br i1 %phitmp.i.92, label %land.lhs.true.5.i.93.land.lhs.true.8.i.99_crit_edge, label %get_basic_refs.exit101, !dbg !1832

land.lhs.true.5.i.93.land.lhs.true.8.i.99_crit_edge: ; preds = %land.lhs.true.5.i.93
  %ob_type9.i.95.phi.trans.insert = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %22, i64 0, i32 0, i32 1, !dbg !1833
  %.pre113 = load %struct._typeobject*, %struct._typeobject** %ob_type9.i.95.phi.trans.insert, align 8, !dbg !1833, !tbaa !859
  br label %land.lhs.true.8.i.99, !dbg !1832

land.lhs.true.8.i.99:                             ; preds = %land.lhs.true.5.i.93.land.lhs.true.8.i.99_crit_edge, %if.then.i.86
  %23 = phi %struct._typeobject* [ %.pre113, %land.lhs.true.5.i.93.land.lhs.true.8.i.99_crit_edge ], [ %21, %if.then.i.86 ], !dbg !1833
  %ref.0.109 = phi %struct._PyWeakReference* [ %19, %land.lhs.true.5.i.93.land.lhs.true.8.i.99_crit_edge ], [ null, %if.then.i.86 ]
  %head.addr.02829.i.94 = phi %struct._PyWeakReference* [ %22, %land.lhs.true.5.i.93.land.lhs.true.8.i.99_crit_edge ], [ %19, %if.then.i.86 ], !dbg !1834
  %cmp10.i.96 = icmp eq %struct._typeobject* %23, @_PyWeakref_ProxyType, !dbg !1833
  %cmp12.i.97 = icmp eq %struct._typeobject* %23, @_PyWeakref_CallableProxyType, !dbg !1835
  %or.cond.i.98 = or i1 %cmp10.i.96, %cmp12.i.97, !dbg !1833
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !771, metadata !831), !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !771, metadata !831), !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !411, metadata !831), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %head.addr.02829.i.94, i64 0, metadata !411, metadata !831), !dbg !1764
  %head.addr.02829.i.94. = select i1 %or.cond.i.98, %struct._PyWeakReference* %head.addr.02829.i.94, %struct._PyWeakReference* null, !dbg !1833
  br label %get_basic_refs.exit101, !dbg !1833

get_basic_refs.exit101:                           ; preds = %land.lhs.true.8.i.99, %new_weakref.exit.thread, %land.lhs.true.i.83, %if.end.i.89, %land.lhs.true.5.i.93
  %ref.0.110 = phi %struct._PyWeakReference* [ null, %new_weakref.exit.thread ], [ null, %land.lhs.true.i.83 ], [ %19, %if.end.i.89 ], [ %19, %land.lhs.true.5.i.93 ], [ %ref.0.109, %land.lhs.true.8.i.99 ]
  %proxy.0.108 = phi %struct._PyWeakReference* [ null, %new_weakref.exit.thread ], [ null, %land.lhs.true.i.83 ], [ null, %if.end.i.89 ], [ null, %land.lhs.true.5.i.93 ], [ %head.addr.02829.i.94., %land.lhs.true.8.i.99 ]
  %cmp23 = icmp eq %struct._PyWeakReference* %proxy.0.108, null, !dbg !1836
  br i1 %cmp7121, label %if.then.22, label %if.else.34, !dbg !1837

if.then.22:                                       ; preds = %get_basic_refs.exit101
  br i1 %cmp23, label %if.end.36, label %do.body, !dbg !1838

do.body:                                          ; preds = %if.then.22
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !417, metadata !831), !dbg !1839
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1841
  %24 = load i64, i64* %ob_refcnt25, align 8, !dbg !1841, !tbaa !937
  %dec = add i64 %24, -1, !dbg !1841
  store i64 %dec, i64* %ob_refcnt25, align 8, !dbg !1841, !tbaa !937
  %cmp26 = icmp eq i64 %dec, 0, !dbg !1841
  br i1 %cmp26, label %if.else.28, label %if.end.30, !dbg !1842

if.else.28:                                       ; preds = %do.body
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %_PyWeakref_ProxyType._PyWeakref_CallableProxyType, i64 0, i32 4, !dbg !1813
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1813, !tbaa !941
  tail call void %25(%struct._object* %call.i) #1, !dbg !1813
  br label %if.end.30

if.end.30:                                        ; preds = %do.body, %if.else.28
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy.0.108, i64 0, metadata !408, metadata !831), !dbg !1744
  %ob_refcnt31 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %proxy.0.108, i64 0, i32 0, i32 0, !dbg !1843
  %26 = load i64, i64* %ob_refcnt31, align 8, !dbg !1843, !tbaa !937
  %inc32 = add i64 %26, 1, !dbg !1843
  store i64 %inc32, i64* %ob_refcnt31, align 8, !dbg !1843, !tbaa !937
  br label %if.end.42, !dbg !1844

if.else.34:                                       ; preds = %get_basic_refs.exit101
  %cond = select i1 %cmp23, %struct._PyWeakReference* %ref.0.110, %struct._PyWeakReference* %proxy.0.108, !dbg !1845
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %cond, i64 0, metadata !412, metadata !831), !dbg !1846
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.22, %if.else.34
  %prev.0 = phi %struct._PyWeakReference* [ %cond, %if.else.34 ], [ %ref.0.110, %if.then.22 ]
  %cmp37 = icmp eq %struct._PyWeakReference* %prev.0, null, !dbg !1847
  %wr_prev.i.73 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, i32 1, !dbg !1848
  %27 = bitcast %struct._typeobject** %wr_prev.i.73 to %struct._PyWeakReference**, !dbg !1848
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1849

if.then.38:                                       ; preds = %if.end.36
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !783, metadata !831), !dbg !1850
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %5, i64 0, metadata !784, metadata !831), !dbg !1851
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %19, i64 0, metadata !785, metadata !831), !dbg !1852
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %27, align 8, !dbg !1853, !tbaa !876
  %wr_next.i.74 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, !dbg !1854
  %28 = bitcast %struct._object* %wr_next.i.74 to %struct._PyWeakReference**, !dbg !1854
  store %struct._PyWeakReference* %19, %struct._PyWeakReference** %28, align 8, !dbg !1855, !tbaa !839
  br i1 %cmp.i.80, label %insert_head.exit, label %if.then.i.76, !dbg !1856

if.then.i.76:                                     ; preds = %if.then.38
  %wr_prev1.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i64 0, i32 4, !dbg !1857
  %29 = bitcast %struct._PyWeakReference** %wr_prev1.i to %struct._object**, !dbg !1858
  store %struct._object* %call.i, %struct._object** %29, align 8, !dbg !1858, !tbaa !876
  br label %insert_head.exit, !dbg !1859

insert_head.exit:                                 ; preds = %if.then.38, %if.then.i.76
  %30 = bitcast i8* %add.ptr to %struct._object**, !dbg !1860
  store %struct._object* %call.i, %struct._object** %30, align 8, !dbg !1860, !tbaa !867
  br label %if.end.42, !dbg !1861

if.else.39:                                       ; preds = %if.end.36
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %12, i64 0, metadata !790, metadata !831), !dbg !1862
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %prev.0, i64 0, metadata !791, metadata !831), !dbg !1864
  store %struct._PyWeakReference* %prev.0, %struct._PyWeakReference** %27, align 8, !dbg !1865, !tbaa !876
  %wr_next.i.69 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %prev.0, i64 0, i32 5, !dbg !1866
  %31 = bitcast %struct._PyWeakReference** %wr_next.i.69 to i64*, !dbg !1866
  %32 = load i64, i64* %31, align 8, !dbg !1866, !tbaa !839
  %33 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 3, i32 0, !dbg !1867
  store i64 %32, i64* %33, align 8, !dbg !1867, !tbaa !839
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.69, align 8, !dbg !1868, !tbaa !839
  %cmp.i.70 = icmp eq %struct._PyWeakReference* %34, null, !dbg !1869
  br i1 %cmp.i.70, label %insert_after.exit, label %if.then.i.71, !dbg !1870

if.then.i.71:                                     ; preds = %if.else.39
  %wr_prev4.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i64 0, i32 4, !dbg !1871
  %35 = bitcast %struct._PyWeakReference** %wr_prev4.i to %struct._object**, !dbg !1872
  store %struct._object* %call.i, %struct._object** %35, align 8, !dbg !1872, !tbaa !876
  br label %insert_after.exit, !dbg !1873

insert_after.exit:                                ; preds = %if.else.39, %if.then.i.71
  %36 = bitcast %struct._PyWeakReference** %wr_next.i.69 to %struct._object**, !dbg !1874
  store %struct._object* %call.i, %struct._object** %36, align 8, !dbg !1874, !tbaa !839
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.end.30, %insert_after.exit, %insert_head.exit, %if.then.11
  %result.2 = phi %struct._PyWeakReference* [ %head.addr.02829.i, %if.then.11 ], [ %proxy.0.108, %if.end.30 ], [ %12, %insert_head.exit ], [ %12, %insert_after.exit ], [ null, %if.else ]
  %37 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %result.2, i64 0, i32 0, !dbg !1875
  br label %cleanup, !dbg !1876

cleanup:                                          ; preds = %if.end.42, %if.then
  %retval.0 = phi %struct._object* [ %37, %if.end.42 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1877
}

declare i32 @PyCallable_Check(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_GetObject(%struct._object* readonly %ref) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %ref, i64 0, metadata !425, metadata !831), !dbg !1878
  %cmp = icmp eq %struct._object* %ref, null, !dbg !1879
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1881

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ref, i64 0, i32 1, !dbg !1882
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1882, !tbaa !859
  %cmp1 = icmp eq %struct._typeobject* %0, @_PyWeakref_RefType, !dbg !1882
  br i1 %cmp1, label %if.end, label %lor.lhs.false.2, !dbg !1882

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @_PyWeakref_RefType) #1, !dbg !1884
  %tobool = icmp eq i32 %call, 0, !dbg !1884
  br i1 %tobool, label %lor.lhs.false.4, label %if.end, !dbg !1884

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1886, !tbaa !859
  %cmp6 = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !1886
  %cmp9 = icmp eq %struct._typeobject* %1, @_PyWeakref_CallableProxyType, !dbg !1888
  %or.cond = or i1 %cmp6, %cmp9, !dbg !1886
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1886

if.then:                                          ; preds = %lor.lhs.false.4, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 856) #1, !dbg !1890
  br label %return, !dbg !1892

if.end:                                           ; preds = %lor.lhs.false.2, %lor.lhs.false.4, %lor.lhs.false
  %wr_object = getelementptr inbounds %struct._object, %struct._object* %ref, i64 1, !dbg !1893
  %2 = bitcast %struct._object* %wr_object to %struct._object**, !dbg !1893
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !1893, !tbaa !855
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1893
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1893, !tbaa !937
  %cmp10 = icmp sgt i64 %4, 0, !dbg !1893
  %._Py_NoneStruct = select i1 %cmp10, %struct._object* %3, %struct._object* @_Py_NoneStruct, !dbg !1893
  br label %return, !dbg !1894

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %._Py_NoneStruct, %if.end ]
  ret %struct._object* %retval.0, !dbg !1897
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @PyObject_ClearWeakRefs(%struct._object* readonly %object) #2 {
entry:
  %err_type = alloca %struct._object*, align 8
  %err_value = alloca %struct._object*, align 8
  %err_tb = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !428, metadata !831), !dbg !1898
  %cmp = icmp eq %struct._object* %object, null, !dbg !1899
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1901

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %object, i64 0, i32 1, !dbg !1902
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1902, !tbaa !859
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 24, !dbg !1902
  %1 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !1902, !tbaa !860
  %cmp1 = icmp sgt i64 %1, 0, !dbg !1902
  br i1 %cmp1, label %lor.lhs.false.2, label %if.then, !dbg !1904

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %object, i64 0, i32 0, !dbg !1905
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1905, !tbaa !937
  %cmp3 = icmp eq i64 %2, 0, !dbg !1906
  br i1 %cmp3, label %if.end, label %if.then, !dbg !1907

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 890) #1, !dbg !1908
  br label %cleanup.116, !dbg !1910

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = bitcast %struct._object* %object to i8*, !dbg !1911
  %add.ptr = getelementptr i8, i8* %3, i64 %1, !dbg !1911
  %4 = bitcast i8* %add.ptr to %struct._PyWeakReference**, !dbg !1911
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %4, i64 0, metadata !429, metadata !831), !dbg !1912
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %4, align 8, !dbg !1913, !tbaa !867
  %cmp6 = icmp eq %struct._PyWeakReference* %5, null, !dbg !1915
  br i1 %cmp6, label %cleanup.116, label %land.lhs.true, !dbg !1916

land.lhs.true:                                    ; preds = %if.end
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i64 0, i32 2, !dbg !1917
  %6 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1917, !tbaa !849
  %cmp7 = icmp eq %struct._object* %6, null, !dbg !1918
  br i1 %cmp7, label %if.then.8, label %while.body.i.preheader, !dbg !1919

if.then.8:                                        ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %5, i64 0, metadata !467, metadata !831) #1, !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !468, metadata !831) #1, !dbg !1923
  %wr_object.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i64 0, i32 1, !dbg !1924
  %7 = load %struct._object*, %struct._object** %wr_object.i, align 8, !dbg !1924, !tbaa !855
  %cmp.i = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !1925
  br i1 %cmp.i, label %land.lhs.true.10, label %if.then.i, !dbg !1926

if.then.i:                                        ; preds = %if.then.8
  %8 = bitcast %struct._object* %7 to i8*, !dbg !1927
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1927
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1927, !tbaa !859
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 24, !dbg !1927
  %10 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !1927, !tbaa !860
  %add.ptr.i = getelementptr i8, i8* %8, i64 %10, !dbg !1927
  %11 = bitcast i8* %add.ptr.i to %struct._PyWeakReference**, !dbg !1927
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %11, i64 0, metadata !469, metadata !831) #1, !dbg !1928
  %12 = load %struct._PyWeakReference*, %struct._PyWeakReference** %11, align 8, !dbg !1929, !tbaa !867
  %cmp3.i = icmp eq %struct._PyWeakReference* %12, %5, !dbg !1930
  %wr_next.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i64 0, i32 5, !dbg !1931
  br i1 %cmp3.i, label %if.then.4.i, label %if.end.i, !dbg !1932

if.then.4.i:                                      ; preds = %if.then.i
  %13 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !1931
  %14 = load i64, i64* %13, align 8, !dbg !1931, !tbaa !839
  %15 = bitcast i8* %add.ptr.i to i64*, !dbg !1933
  store i64 %14, i64* %15, align 8, !dbg !1933, !tbaa !867
  br label %if.end.i, !dbg !1934

if.end.i:                                         ; preds = %if.then.i, %if.then.4.i
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i, align 8, !dbg !1935, !tbaa !855
  %wr_prev.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i64 0, i32 4, !dbg !1936
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i, align 8, !dbg !1936, !tbaa !876
  %cmp6.i = icmp eq %struct._PyWeakReference* %16, null, !dbg !1937
  %17 = ptrtoint %struct._PyWeakReference* %16 to i64, !dbg !1938
  br i1 %cmp6.i, label %if.end.11.i, label %if.then.7.i, !dbg !1939

if.then.7.i:                                      ; preds = %if.end.i
  %18 = bitcast %struct._PyWeakReference** %wr_next.i to i64*, !dbg !1940
  %19 = load i64, i64* %18, align 8, !dbg !1940, !tbaa !839
  %wr_next10.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i64 0, i32 5, !dbg !1941
  %20 = bitcast %struct._PyWeakReference** %wr_next10.i to i64*, !dbg !1942
  store i64 %19, i64* %20, align 8, !dbg !1942, !tbaa !839
  br label %if.end.11.i, !dbg !1943

if.end.11.i:                                      ; preds = %if.then.7.i, %if.end.i
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i, align 8, !dbg !1944, !tbaa !839
  %cmp13.i = icmp eq %struct._PyWeakReference* %21, null, !dbg !1945
  br i1 %cmp13.i, label %clear_weakref.exit, label %if.then.14.i, !dbg !1946

if.then.14.i:                                     ; preds = %if.end.11.i
  %wr_prev17.i = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %21, i64 0, i32 4, !dbg !1947
  %22 = bitcast %struct._PyWeakReference** %wr_prev17.i to i64*, !dbg !1948
  store i64 %17, i64* %22, align 8, !dbg !1948, !tbaa !876
  br label %clear_weakref.exit, !dbg !1949

clear_weakref.exit:                               ; preds = %if.end.11.i, %if.then.14.i
  %23 = bitcast %struct._PyWeakReference** %wr_prev.i to <2 x %struct._PyWeakReference*>*, !dbg !1950
  store <2 x %struct._PyWeakReference*> zeroinitializer, <2 x %struct._PyWeakReference*>* %23, align 8, !dbg !1950, !tbaa !867
  %.pre = load %struct._PyWeakReference*, %struct._PyWeakReference** %4, align 8, !dbg !1951, !tbaa !867
  %cmp9 = icmp eq %struct._PyWeakReference* %.pre, null, !dbg !1953
  br i1 %cmp9, label %cleanup.116, label %land.lhs.true.10, !dbg !1954

land.lhs.true.10:                                 ; preds = %if.then.8, %clear_weakref.exit
  %24 = phi %struct._PyWeakReference* [ %.pre, %clear_weakref.exit ], [ %5, %if.then.8 ]
  %wr_callback11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i64 0, i32 2, !dbg !1955
  %25 = load %struct._object*, %struct._object** %wr_callback11, align 8, !dbg !1955, !tbaa !849
  %cmp12 = icmp eq %struct._object* %25, null, !dbg !1956
  br i1 %cmp12, label %if.then.13, label %while.body.i.preheader, !dbg !1957

if.then.13:                                       ; preds = %land.lhs.true.10
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %.pre, i64 0, metadata !467, metadata !831) #1, !dbg !1958
  tail call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !468, metadata !831) #1, !dbg !1960
  %wr_object.i.186 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i64 0, i32 1, !dbg !1961
  %26 = load %struct._object*, %struct._object** %wr_object.i.186, align 8, !dbg !1961, !tbaa !855
  %cmp.i.187 = icmp eq %struct._object* %26, @_Py_NoneStruct, !dbg !1962
  br i1 %cmp.i.187, label %while.body.i.preheader, label %if.then.i.192, !dbg !1963

if.then.i.192:                                    ; preds = %if.then.13
  %27 = bitcast %struct._object* %26 to i8*, !dbg !1964
  %ob_type.i.188 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 1, !dbg !1964
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.188, align 8, !dbg !1964, !tbaa !859
  %tp_weaklistoffset.i.189 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 24, !dbg !1964
  %29 = load i64, i64* %tp_weaklistoffset.i.189, align 8, !dbg !1964, !tbaa !860
  %add.ptr.i.190 = getelementptr i8, i8* %27, i64 %29, !dbg !1964
  %30 = bitcast i8* %add.ptr.i.190 to %struct._PyWeakReference**, !dbg !1964
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %30, i64 0, metadata !469, metadata !831) #1, !dbg !1965
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %30, align 8, !dbg !1966, !tbaa !867
  %cmp3.i.191 = icmp eq %struct._PyWeakReference* %31, %24, !dbg !1967
  %wr_next.i.193 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i64 0, i32 5, !dbg !1968
  br i1 %cmp3.i.191, label %if.then.4.i.194, label %if.end.i.198, !dbg !1969

if.then.4.i.194:                                  ; preds = %if.then.i.192
  %32 = bitcast %struct._PyWeakReference** %wr_next.i.193 to i64*, !dbg !1968
  %33 = load i64, i64* %32, align 8, !dbg !1968, !tbaa !839
  %34 = bitcast i8* %add.ptr.i.190 to i64*, !dbg !1970
  store i64 %33, i64* %34, align 8, !dbg !1970, !tbaa !867
  br label %if.end.i.198, !dbg !1971

if.end.i.198:                                     ; preds = %if.then.i.192, %if.then.4.i.194
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i.186, align 8, !dbg !1972, !tbaa !855
  %wr_prev.i.195 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i64 0, i32 4, !dbg !1973
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i.195, align 8, !dbg !1973, !tbaa !876
  %cmp6.i.196 = icmp eq %struct._PyWeakReference* %35, null, !dbg !1974
  %36 = ptrtoint %struct._PyWeakReference* %35 to i64, !dbg !1975
  br i1 %cmp6.i.196, label %if.end.11.i.202, label %if.then.7.i.200, !dbg !1976

if.then.7.i.200:                                  ; preds = %if.end.i.198
  %37 = bitcast %struct._PyWeakReference** %wr_next.i.193 to i64*, !dbg !1977
  %38 = load i64, i64* %37, align 8, !dbg !1977, !tbaa !839
  %wr_next10.i.199 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %35, i64 0, i32 5, !dbg !1978
  %39 = bitcast %struct._PyWeakReference** %wr_next10.i.199 to i64*, !dbg !1979
  store i64 %38, i64* %39, align 8, !dbg !1979, !tbaa !839
  br label %if.end.11.i.202, !dbg !1980

if.end.11.i.202:                                  ; preds = %if.then.7.i.200, %if.end.i.198
  %40 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.193, align 8, !dbg !1981, !tbaa !839
  %cmp13.i.201 = icmp eq %struct._PyWeakReference* %40, null, !dbg !1982
  br i1 %cmp13.i.201, label %if.end.15, label %if.then.14.i.204, !dbg !1983

if.then.14.i.204:                                 ; preds = %if.end.11.i.202
  %wr_prev17.i.203 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %40, i64 0, i32 4, !dbg !1984
  %41 = bitcast %struct._PyWeakReference** %wr_prev17.i.203 to i64*, !dbg !1985
  store i64 %36, i64* %41, align 8, !dbg !1985, !tbaa !876
  br label %if.end.15, !dbg !1986

if.end.15:                                        ; preds = %if.end.11.i.202, %if.then.14.i.204
  %42 = bitcast %struct._PyWeakReference** %wr_prev.i.195 to <2 x %struct._PyWeakReference*>*, !dbg !1987
  store <2 x %struct._PyWeakReference*> zeroinitializer, <2 x %struct._PyWeakReference*>* %42, align 8, !dbg !1987, !tbaa !867
  %.pr.pre = load %struct._PyWeakReference*, %struct._PyWeakReference** %4, align 8, !dbg !1988, !tbaa !867
  %cmp16 = icmp eq %struct._PyWeakReference* %.pr.pre, null, !dbg !1989
  br i1 %cmp16, label %cleanup.116, label %while.body.i.preheader, !dbg !1990

while.body.i.preheader:                           ; preds = %land.lhs.true, %land.lhs.true.10, %if.then.13, %if.end.15
  %.pr318 = phi %struct._PyWeakReference* [ %.pr.pre, %if.end.15 ], [ %5, %land.lhs.true ], [ %24, %land.lhs.true.10 ], [ %24, %if.then.13 ]
  br label %while.body.i, !dbg !1991

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %count.05.i = phi i64 [ %inc.i, %while.body.i ], [ 0, %while.body.i.preheader ], !dbg !1993
  %head.addr.04.i = phi %struct._PyWeakReference* [ %43, %while.body.i ], [ %.pr318, %while.body.i.preheader ], !dbg !1993
  %inc.i = add i64 %count.05.i, 1, !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !377, metadata !831), !dbg !1994
  %wr_next.i.217 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %head.addr.04.i, i64 0, i32 5, !dbg !1995
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.217, align 8, !dbg !1995, !tbaa !839
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %43, i64 0, metadata !376, metadata !831), !dbg !1996
  %cmp.i.218 = icmp eq %struct._PyWeakReference* %43, null, !dbg !1997
  br i1 %cmp.i.218, label %_PyWeakref_GetWeakrefCount.exit, label %while.body.i, !dbg !1998

_PyWeakref_GetWeakrefCount.exit:                  ; preds = %while.body.i
  %inc.i.lcssa = phi i64 [ %inc.i, %while.body.i ]
  %count.05.i.lcssa = phi i64 [ %count.05.i, %while.body.i ]
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !433, metadata !831), !dbg !1999
  %call18 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2000
  %tobool = icmp ne %struct._object* %call18, null, !dbg !2000
  %44 = bitcast %struct._object** %err_type to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !2001
  %45 = bitcast %struct._object** %err_value to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !2001
  %46 = bitcast %struct._object** %err_tb to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !2001
  br i1 %tobool, label %if.then.20, label %if.end.21, !dbg !2002

if.then.20:                                       ; preds = %_PyWeakref_GetWeakrefCount.exit
  tail call void @llvm.dbg.value(metadata %struct._object** %err_type, i64 0, metadata !435, metadata !831), !dbg !2003
  tail call void @llvm.dbg.value(metadata %struct._object** %err_value, i64 0, metadata !436, metadata !831), !dbg !2004
  tail call void @llvm.dbg.value(metadata %struct._object** %err_tb, i64 0, metadata !437, metadata !831), !dbg !2005
  call void @PyErr_Fetch(%struct._object** nonnull %err_type, %struct._object** nonnull %err_value, %struct._object** nonnull %err_tb) #1, !dbg !2006
  br label %if.end.21, !dbg !2006

if.end.21:                                        ; preds = %if.then.20, %_PyWeakref_GetWeakrefCount.exit
  %cmp22 = icmp eq i64 %count.05.i.lcssa, 0, !dbg !2008
  br i1 %cmp22, label %if.then.23, label %if.else.38, !dbg !2009

if.then.23:                                       ; preds = %if.end.21
  %wr_callback24 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %.pr318, i64 0, i32 2, !dbg !2010
  %47 = load %struct._object*, %struct._object** %wr_callback24, align 8, !dbg !2010, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !438, metadata !831), !dbg !2011
  store %struct._object* null, %struct._object** %wr_callback24, align 8, !dbg !2012, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %.pr.pre, i64 0, metadata !467, metadata !831) #1, !dbg !2013
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !468, metadata !831) #1, !dbg !2015
  %wr_object.i.220 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %.pr318, i64 0, i32 1, !dbg !2016
  %48 = load %struct._object*, %struct._object** %wr_object.i.220, align 8, !dbg !2016, !tbaa !855
  %cmp.i.221 = icmp eq %struct._object* %48, @_Py_NoneStruct, !dbg !2017
  br i1 %cmp.i.221, label %clear_weakref.exit250, label %if.then.i.226, !dbg !2018

if.then.i.226:                                    ; preds = %if.then.23
  %49 = bitcast %struct._object* %48 to i8*, !dbg !2019
  %ob_type.i.222 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 1, !dbg !2019
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.222, align 8, !dbg !2019, !tbaa !859
  %tp_weaklistoffset.i.223 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 24, !dbg !2019
  %51 = load i64, i64* %tp_weaklistoffset.i.223, align 8, !dbg !2019, !tbaa !860
  %add.ptr.i.224 = getelementptr i8, i8* %49, i64 %51, !dbg !2019
  %52 = bitcast i8* %add.ptr.i.224 to %struct._PyWeakReference**, !dbg !2019
  call void @llvm.dbg.value(metadata %struct._PyWeakReference** %52, i64 0, metadata !469, metadata !831) #1, !dbg !2020
  %53 = load %struct._PyWeakReference*, %struct._PyWeakReference** %52, align 8, !dbg !2021, !tbaa !867
  %cmp3.i.225 = icmp eq %struct._PyWeakReference* %53, %.pr318, !dbg !2022
  %wr_next.i.227 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %.pr318, i64 0, i32 5, !dbg !2023
  br i1 %cmp3.i.225, label %if.then.4.i.228, label %if.end.i.232, !dbg !2024

if.then.4.i.228:                                  ; preds = %if.then.i.226
  %54 = bitcast %struct._PyWeakReference** %wr_next.i.227 to i64*, !dbg !2023
  %55 = load i64, i64* %54, align 8, !dbg !2023, !tbaa !839
  %56 = bitcast i8* %add.ptr.i.224 to i64*, !dbg !2025
  store i64 %55, i64* %56, align 8, !dbg !2025, !tbaa !867
  br label %if.end.i.232, !dbg !2026

if.end.i.232:                                     ; preds = %if.then.i.226, %if.then.4.i.228
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i.220, align 8, !dbg !2027, !tbaa !855
  %wr_prev.i.229 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %.pr318, i64 0, i32 4, !dbg !2028
  %57 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i.229, align 8, !dbg !2028, !tbaa !876
  %cmp6.i.230 = icmp eq %struct._PyWeakReference* %57, null, !dbg !2029
  %58 = ptrtoint %struct._PyWeakReference* %57 to i64, !dbg !2030
  br i1 %cmp6.i.230, label %if.end.11.i.236, label %if.then.7.i.234, !dbg !2031

if.then.7.i.234:                                  ; preds = %if.end.i.232
  %59 = bitcast %struct._PyWeakReference** %wr_next.i.227 to i64*, !dbg !2032
  %60 = load i64, i64* %59, align 8, !dbg !2032, !tbaa !839
  %wr_next10.i.233 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %57, i64 0, i32 5, !dbg !2033
  %61 = bitcast %struct._PyWeakReference** %wr_next10.i.233 to i64*, !dbg !2034
  store i64 %60, i64* %61, align 8, !dbg !2034, !tbaa !839
  br label %if.end.11.i.236, !dbg !2035

if.end.11.i.236:                                  ; preds = %if.then.7.i.234, %if.end.i.232
  %62 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next.i.227, align 8, !dbg !2036, !tbaa !839
  %cmp13.i.235 = icmp eq %struct._PyWeakReference* %62, null, !dbg !2037
  br i1 %cmp13.i.235, label %if.end.18.i.239, label %if.then.14.i.238, !dbg !2038

if.then.14.i.238:                                 ; preds = %if.end.11.i.236
  %wr_prev17.i.237 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %62, i64 0, i32 4, !dbg !2039
  %63 = bitcast %struct._PyWeakReference** %wr_prev17.i.237 to i64*, !dbg !2040
  store i64 %58, i64* %63, align 8, !dbg !2040, !tbaa !876
  br label %if.end.18.i.239, !dbg !2041

if.end.18.i.239:                                  ; preds = %if.then.14.i.238, %if.end.11.i.236
  %64 = bitcast %struct._PyWeakReference** %wr_prev.i.229 to <2 x %struct._PyWeakReference*>*, !dbg !2042
  store <2 x %struct._PyWeakReference*> zeroinitializer, <2 x %struct._PyWeakReference*>* %64, align 8, !dbg !2042, !tbaa !867
  br label %clear_weakref.exit250, !dbg !2043

clear_weakref.exit250:                            ; preds = %if.then.23, %if.end.18.i.239
  %cmp26 = icmp eq %struct._object* %47, null, !dbg !2044
  br i1 %cmp26, label %if.end.103, label %if.then.27, !dbg !2045

if.then.27:                                       ; preds = %clear_weakref.exit250
  %ob_refcnt28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %.pr318, i64 0, i32 0, i32 0, !dbg !2046
  %65 = load i64, i64* %ob_refcnt28, align 8, !dbg !2046, !tbaa !937
  %cmp29 = icmp sgt i64 %65, 0, !dbg !2048
  br i1 %cmp29, label %if.then.30, label %do.body, !dbg !2049

if.then.30:                                       ; preds = %if.then.27
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %.pr.pre, i64 0, metadata !796, metadata !831) #1, !dbg !2050
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !797, metadata !831) #1, !dbg !2052
  %call.i = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %47, %struct._PyWeakReference* %.pr318, i8* null) #1, !dbg !2053
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !798, metadata !831) #1, !dbg !2054
  %cmp.i.251 = icmp eq %struct._object* %call.i, null, !dbg !2055
  br i1 %cmp.i.251, label %if.then.i.252, label %do.body.i.255, !dbg !2056

if.then.i.252:                                    ; preds = %if.then.30
  call void @PyErr_WriteUnraisable(%struct._object* %47) #1, !dbg !2057
  br label %do.body, !dbg !2057

do.body.i.255:                                    ; preds = %if.then.30
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !799, metadata !831) #1, !dbg !2058
  %ob_refcnt.i.253 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2060
  %66 = load i64, i64* %ob_refcnt.i.253, align 8, !dbg !2060, !tbaa !937
  %dec.i.254 = add i64 %66, -1, !dbg !2060
  store i64 %dec.i.254, i64* %ob_refcnt.i.253, align 8, !dbg !2060, !tbaa !937
  %cmp1.i = icmp eq i64 %dec.i.254, 0, !dbg !2060
  br i1 %cmp1.i, label %if.else.3.i, label %do.body, !dbg !2062

if.else.3.i:                                      ; preds = %do.body.i.255
  %ob_type.i.256 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2063
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.256, align 8, !dbg !2063, !tbaa !859
  %tp_dealloc.i.257 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !2063
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.257, align 8, !dbg !2063, !tbaa !941
  call void %68(%struct._object* %call.i) #1, !dbg !2063
  br label %do.body, !dbg !2065

do.body:                                          ; preds = %if.else.3.i, %do.body.i.255, %if.then.i.252, %if.then.27
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !441, metadata !831), !dbg !2066
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 0, !dbg !2068
  %69 = load i64, i64* %ob_refcnt32, align 8, !dbg !2068, !tbaa !937
  %dec = add i64 %69, -1, !dbg !2068
  store i64 %dec, i64* %ob_refcnt32, align 8, !dbg !2068, !tbaa !937
  %cmp33 = icmp eq i64 %dec, 0, !dbg !2068
  br i1 %cmp33, label %if.else, label %if.end.103, !dbg !2070

if.else:                                          ; preds = %do.body
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 1, !dbg !2071
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !2071, !tbaa !859
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i64 0, i32 4, !dbg !2071
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2071, !tbaa !941
  call void %71(%struct._object* %47) #1, !dbg !2071
  br label %if.end.103

if.else.38:                                       ; preds = %if.end.21
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !447, metadata !831), !dbg !2073
  %mul = shl i64 %inc.i.lcssa, 1, !dbg !2074
  %call39 = call %struct._object* @PyTuple_New(i64 %mul) #1, !dbg !2075
  call void @llvm.dbg.value(metadata %struct._object* %call39, i64 0, metadata !445, metadata !831), !dbg !2076
  %cmp40 = icmp eq %struct._object* %call39, null, !dbg !2077
  br i1 %cmp40, label %if.then.41, label %for.cond.preheader, !dbg !2079

for.cond.preheader:                               ; preds = %if.else.38
  %cmp46.308 = icmp sgt i64 %inc.i.lcssa, 0, !dbg !2080
  br i1 %cmp46.308, label %for.body.lr.ph, label %do.body.90, !dbg !2081

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call39, i64 1, i32 1, !dbg !2082
  %72 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !2082
  br label %for.body, !dbg !2081

if.then.41:                                       ; preds = %if.else.38
  br i1 %tobool, label %if.then.43, label %cleanup.107, !dbg !2084

if.then.43:                                       ; preds = %if.then.41
  call void @llvm.dbg.value(metadata %struct._object** %err_type, i64 0, metadata !435, metadata !831), !dbg !2003
  call void @llvm.dbg.value(metadata %struct._object** %err_value, i64 0, metadata !436, metadata !831), !dbg !2004
  call void @llvm.dbg.value(metadata %struct._object** %err_tb, i64 0, metadata !437, metadata !831), !dbg !2005
  call void @PyErr_Fetch(%struct._object** nonnull %err_type, %struct._object** nonnull %err_value, %struct._object** nonnull %err_tb) #1, !dbg !2086
  br label %cleanup.107, !dbg !2086

for.cond.73.preheader:                            ; preds = %clear_weakref.exit289
  br i1 %cmp46.308, label %for.body.75.lr.ph, label %do.body.90, !dbg !2088

for.body.75.lr.ph:                                ; preds = %for.cond.73.preheader
  %ob_item79 = getelementptr inbounds %struct._object, %struct._object* %call39, i64 1, i32 1, !dbg !2089
  %73 = bitcast %struct._typeobject** %ob_item79 to [1 x %struct._object*]*, !dbg !2089
  br label %for.body.75, !dbg !2088

for.body:                                         ; preds = %clear_weakref.exit289, %for.body.lr.ph
  %current.0310 = phi %struct._PyWeakReference* [ %.pr318, %for.body.lr.ph ], [ %74, %clear_weakref.exit289 ]
  %i.0309 = phi i64 [ 0, %for.body.lr.ph ], [ %inc72, %clear_weakref.exit289 ]
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 5, !dbg !2090
  %74 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !2090, !tbaa !839
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %74, i64 0, metadata !448, metadata !831), !dbg !2091
  %ob_refcnt47 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 0, i32 0, !dbg !2092
  %75 = load i64, i64* %ob_refcnt47, align 8, !dbg !2092, !tbaa !937
  %cmp48 = icmp sgt i64 %75, 0, !dbg !2093
  br i1 %cmp48, label %if.then.49, label %do.body.57, !dbg !2094

if.then.49:                                       ; preds = %for.body
  %76 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 0, !dbg !2095
  %inc = add i64 %75, 1, !dbg !2096
  store i64 %inc, i64* %ob_refcnt47, align 8, !dbg !2096, !tbaa !937
  %mul51 = shl i64 %i.0309, 1, !dbg !2082
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %72, i64 0, i64 %mul51, !dbg !2082
  store %struct._object* %76, %struct._object** %arrayidx, align 8, !dbg !2082, !tbaa !867
  %wr_callback52 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 2, !dbg !2097
  %77 = bitcast %struct._object** %wr_callback52 to i64*, !dbg !2097
  %78 = load i64, i64* %77, align 8, !dbg !2097, !tbaa !849
  %add = or i64 %mul51, 1, !dbg !2097
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %72, i64 0, i64 %add, !dbg !2097
  %79 = bitcast %struct._object** %arrayidx55 to i64*, !dbg !2097
  store i64 %78, i64* %79, align 8, !dbg !2097, !tbaa !867
  br label %if.end.70, !dbg !2098

do.body.57:                                       ; preds = %for.body
  %wr_callback59 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 2, !dbg !2099
  %80 = load %struct._object*, %struct._object** %wr_callback59, align 8, !dbg !2099, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._object* %80, i64 0, metadata !452, metadata !831), !dbg !2099
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %80, i64 0, i32 0, !dbg !2101
  %81 = load i64, i64* %ob_refcnt60, align 8, !dbg !2101, !tbaa !937
  %dec61 = add i64 %81, -1, !dbg !2101
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !2101, !tbaa !937
  %cmp62 = icmp eq i64 %dec61, 0, !dbg !2101
  br i1 %cmp62, label %if.else.64, label %if.end.70, !dbg !2103

if.else.64:                                       ; preds = %do.body.57
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %80, i64 0, i32 1, !dbg !2104
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !2104, !tbaa !859
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i64 0, i32 4, !dbg !2104
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !2104, !tbaa !941
  call void %83(%struct._object* %80) #1, !dbg !2104
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.64, %do.body.57, %if.then.49
  %wr_callback71.pre-phi = phi %struct._object** [ %wr_callback59, %if.else.64 ], [ %wr_callback59, %do.body.57 ], [ %wr_callback52, %if.then.49 ], !dbg !2106
  store %struct._object* null, %struct._object** %wr_callback71.pre-phi, align 8, !dbg !2107, !tbaa !849
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %74, i64 0, metadata !467, metadata !831) #1, !dbg !2108
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !468, metadata !831) #1, !dbg !2110
  %wr_object.i.259 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 1, !dbg !2111
  %84 = load %struct._object*, %struct._object** %wr_object.i.259, align 8, !dbg !2111, !tbaa !855
  %cmp.i.260 = icmp eq %struct._object* %84, @_Py_NoneStruct, !dbg !2112
  br i1 %cmp.i.260, label %clear_weakref.exit289, label %if.then.i.265, !dbg !2113

if.then.i.265:                                    ; preds = %if.end.70
  %85 = bitcast %struct._object* %84 to i8*, !dbg !2114
  %ob_type.i.261 = getelementptr inbounds %struct._object, %struct._object* %84, i64 0, i32 1, !dbg !2114
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.261, align 8, !dbg !2114, !tbaa !859
  %tp_weaklistoffset.i.262 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i64 0, i32 24, !dbg !2114
  %87 = load i64, i64* %tp_weaklistoffset.i.262, align 8, !dbg !2114, !tbaa !860
  %add.ptr.i.263 = getelementptr i8, i8* %85, i64 %87, !dbg !2114
  %88 = bitcast i8* %add.ptr.i.263 to %struct._PyWeakReference**, !dbg !2114
  call void @llvm.dbg.value(metadata %struct._PyWeakReference** %88, i64 0, metadata !469, metadata !831) #1, !dbg !2115
  %89 = load %struct._PyWeakReference*, %struct._PyWeakReference** %88, align 8, !dbg !2116, !tbaa !867
  %cmp3.i.264 = icmp eq %struct._PyWeakReference* %89, %current.0310, !dbg !2117
  br i1 %cmp3.i.264, label %if.then.4.i.267, label %if.end.i.271, !dbg !2118

if.then.4.i.267:                                  ; preds = %if.then.i.265
  %90 = bitcast %struct._PyWeakReference** %wr_next to i64*, !dbg !2119
  %91 = load i64, i64* %90, align 8, !dbg !2119, !tbaa !839
  %92 = bitcast i8* %add.ptr.i.263 to i64*, !dbg !2120
  store i64 %91, i64* %92, align 8, !dbg !2120, !tbaa !867
  br label %if.end.i.271, !dbg !2121

if.end.i.271:                                     ; preds = %if.then.4.i.267, %if.then.i.265
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object.i.259, align 8, !dbg !2122, !tbaa !855
  %wr_prev.i.268 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.0310, i64 0, i32 4, !dbg !2123
  %93 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev.i.268, align 8, !dbg !2123, !tbaa !876
  %cmp6.i.269 = icmp eq %struct._PyWeakReference* %93, null, !dbg !2124
  %94 = ptrtoint %struct._PyWeakReference* %93 to i64, !dbg !2125
  br i1 %cmp6.i.269, label %if.end.11.i.275, label %if.then.7.i.273, !dbg !2126

if.then.7.i.273:                                  ; preds = %if.end.i.271
  %95 = bitcast %struct._PyWeakReference** %wr_next to i64*, !dbg !2127
  %96 = load i64, i64* %95, align 8, !dbg !2127, !tbaa !839
  %wr_next10.i.272 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %93, i64 0, i32 5, !dbg !2128
  %97 = bitcast %struct._PyWeakReference** %wr_next10.i.272 to i64*, !dbg !2129
  store i64 %96, i64* %97, align 8, !dbg !2129, !tbaa !839
  br label %if.end.11.i.275, !dbg !2130

if.end.11.i.275:                                  ; preds = %if.then.7.i.273, %if.end.i.271
  %98 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !2131, !tbaa !839
  %cmp13.i.274 = icmp eq %struct._PyWeakReference* %98, null, !dbg !2132
  br i1 %cmp13.i.274, label %if.end.18.i.278, label %if.then.14.i.277, !dbg !2133

if.then.14.i.277:                                 ; preds = %if.end.11.i.275
  %wr_prev17.i.276 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %98, i64 0, i32 4, !dbg !2134
  %99 = bitcast %struct._PyWeakReference** %wr_prev17.i.276 to i64*, !dbg !2135
  store i64 %94, i64* %99, align 8, !dbg !2135, !tbaa !876
  br label %if.end.18.i.278, !dbg !2136

if.end.18.i.278:                                  ; preds = %if.then.14.i.277, %if.end.11.i.275
  %100 = bitcast %struct._PyWeakReference** %wr_prev.i.268 to i8*, !dbg !2137
  call void @llvm.memset.p0i8.i64(i8* %100, i8 0, i64 16, i32 8, i1 false), !dbg !2138
  br label %clear_weakref.exit289, !dbg !2137

clear_weakref.exit289:                            ; preds = %if.end.70, %if.end.18.i.278
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %74, i64 0, metadata !430, metadata !831), !dbg !2139
  %inc72 = add nuw nsw i64 %i.0309, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %inc72, i64 0, metadata !447, metadata !831), !dbg !2073
  %exitcond311 = icmp eq i64 %inc72, %inc.i.lcssa, !dbg !2081
  br i1 %exitcond311, label %for.cond.73.preheader, label %for.body, !dbg !2081

for.body.75:                                      ; preds = %if.end.86, %for.body.75.lr.ph
  %i.1307 = phi i64 [ 0, %for.body.75.lr.ph ], [ %inc88, %if.end.86 ]
  %mul77 = shl i64 %i.1307, 1, !dbg !2089
  %add78 = or i64 %mul77, 1, !dbg !2089
  %arrayidx80 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %73, i64 0, i64 %add78, !dbg !2089
  %101 = load %struct._object*, %struct._object** %arrayidx80, align 8, !dbg !2089, !tbaa !867
  call void @llvm.dbg.value(metadata %struct._object* %101, i64 0, metadata !456, metadata !831), !dbg !2141
  %cmp81 = icmp eq %struct._object* %101, null, !dbg !2142
  br i1 %cmp81, label %if.end.86, label %if.then.82, !dbg !2143

if.then.82:                                       ; preds = %for.body.75
  %arrayidx85 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %73, i64 0, i64 %mul77, !dbg !2144
  %102 = bitcast %struct._object** %arrayidx85 to %struct._PyWeakReference**, !dbg !2144
  %103 = load %struct._PyWeakReference*, %struct._PyWeakReference** %102, align 8, !dbg !2144, !tbaa !867
  call void @llvm.dbg.value(metadata %struct._PyWeakReference* %103, i64 0, metadata !796, metadata !831) #1, !dbg !2145
  call void @llvm.dbg.value(metadata %struct._object* %101, i64 0, metadata !797, metadata !831) #1, !dbg !2147
  %call.i.290 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %101, %struct._PyWeakReference* %103, i8* null) #1, !dbg !2148
  call void @llvm.dbg.value(metadata %struct._object* %call.i.290, i64 0, metadata !798, metadata !831) #1, !dbg !2149
  %cmp.i.291 = icmp eq %struct._object* %call.i.290, null, !dbg !2150
  br i1 %cmp.i.291, label %if.then.i.292, label %do.body.i.296, !dbg !2151

if.then.i.292:                                    ; preds = %if.then.82
  call void @PyErr_WriteUnraisable(%struct._object* %101) #1, !dbg !2152
  br label %if.end.86, !dbg !2152

do.body.i.296:                                    ; preds = %if.then.82
  call void @llvm.dbg.value(metadata %struct._object* %call.i.290, i64 0, metadata !799, metadata !831) #1, !dbg !2153
  %ob_refcnt.i.293 = getelementptr inbounds %struct._object, %struct._object* %call.i.290, i64 0, i32 0, !dbg !2154
  %104 = load i64, i64* %ob_refcnt.i.293, align 8, !dbg !2154, !tbaa !937
  %dec.i.294 = add i64 %104, -1, !dbg !2154
  store i64 %dec.i.294, i64* %ob_refcnt.i.293, align 8, !dbg !2154, !tbaa !937
  %cmp1.i.295 = icmp eq i64 %dec.i.294, 0, !dbg !2154
  br i1 %cmp1.i.295, label %if.else.3.i.299, label %if.end.86, !dbg !2155

if.else.3.i.299:                                  ; preds = %do.body.i.296
  %ob_type.i.297 = getelementptr inbounds %struct._object, %struct._object* %call.i.290, i64 0, i32 1, !dbg !2156
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.297, align 8, !dbg !2156, !tbaa !859
  %tp_dealloc.i.298 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i64 0, i32 4, !dbg !2156
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.298, align 8, !dbg !2156, !tbaa !941
  call void %106(%struct._object* %call.i.290) #1, !dbg !2156
  br label %if.end.86, !dbg !2157

if.end.86:                                        ; preds = %if.else.3.i.299, %do.body.i.296, %if.then.i.292, %for.body.75
  %inc88 = add nuw nsw i64 %i.1307, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %inc88, i64 0, metadata !447, metadata !831), !dbg !2073
  %exitcond = icmp eq i64 %inc88, %inc.i.lcssa, !dbg !2088
  br i1 %exitcond, label %do.body.90.loopexit, label %for.body.75, !dbg !2088

do.body.90.loopexit:                              ; preds = %if.end.86
  br label %do.body.90, !dbg !2159

do.body.90:                                       ; preds = %do.body.90.loopexit, %for.cond.preheader, %for.cond.73.preheader
  call void @llvm.dbg.value(metadata %struct._object* %call39, i64 0, metadata !463, metadata !831), !dbg !2159
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %call39, i64 0, i32 0, !dbg !2161
  %107 = load i64, i64* %ob_refcnt92, align 8, !dbg !2161, !tbaa !937
  %dec93 = add i64 %107, -1, !dbg !2161
  store i64 %dec93, i64* %ob_refcnt92, align 8, !dbg !2161, !tbaa !937
  %cmp94 = icmp eq i64 %dec93, 0, !dbg !2161
  br i1 %cmp94, label %if.else.96, label %cleanup, !dbg !2163

if.else.96:                                       ; preds = %do.body.90
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %call39, i64 0, i32 1, !dbg !2164
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !2164, !tbaa !859
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i64 0, i32 4, !dbg !2164
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8, !dbg !2164, !tbaa !941
  call void %109(%struct._object* %call39) #1, !dbg !2164
  br label %cleanup

cleanup:                                          ; preds = %if.else.96, %do.body.90
  br i1 %tobool, label %if.then.105, label %cleanup.107

if.end.103:                                       ; preds = %clear_weakref.exit250, %do.body, %if.else
  br i1 %tobool, label %if.then.105, label %cleanup.107, !dbg !2166

if.then.105:                                      ; preds = %cleanup, %if.end.103
  call void @llvm.dbg.value(metadata %struct._object** %err_type, i64 0, metadata !435, metadata !831), !dbg !2003
  %110 = load %struct._object*, %struct._object** %err_type, align 8, !dbg !2167, !tbaa !867
  call void @llvm.dbg.value(metadata %struct._object** %err_value, i64 0, metadata !436, metadata !831), !dbg !2004
  %111 = load %struct._object*, %struct._object** %err_value, align 8, !dbg !2169, !tbaa !867
  call void @llvm.dbg.value(metadata %struct._object** %err_tb, i64 0, metadata !437, metadata !831), !dbg !2005
  %112 = load %struct._object*, %struct._object** %err_tb, align 8, !dbg !2170, !tbaa !867
  call void @PyErr_Restore(%struct._object* %110, %struct._object* %111, %struct._object* %112) #1, !dbg !2171
  br label %cleanup.107, !dbg !2171

cleanup.107:                                      ; preds = %cleanup, %if.then.41, %if.then.43, %if.end.103, %if.then.105
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2172
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2172
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2172
  ret void

cleanup.116:                                      ; preds = %if.end, %clear_weakref.exit, %if.end.15, %if.then
  ret void, !dbg !2174
}

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare %struct._object* @PyTuple_New(i64) #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyObject_GC_UnTrack(i8*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare void @PyErr_Clear() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i64 @PyObject_Hash(%struct._object*) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_add(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !586, metadata !831), !dbg !2175
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !587, metadata !831), !dbg !2175
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2176
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2176, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2176
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2178
  %or.cond = or i1 %cmp, %cmp2, !dbg !2176
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2176

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2180, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2183
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2180, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2188
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2183
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2183
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2189

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2190, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2191
  br label %return, !dbg !2192

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2180
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2180
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !586, metadata !831), !dbg !2175
  br label %if.end.6, !dbg !2193

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2196
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2196, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2196
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2200
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2196
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2196

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2202, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2205
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2202, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2210
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2205
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2205
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2211

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2212, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2213
  br label %return, !dbg !2214

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2202
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2202
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !587, metadata !831), !dbg !2175
  br label %if.end.25, !dbg !2215

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Add(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2218
  br label %return, !dbg !2218

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2221
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_sub(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !593, metadata !831), !dbg !2225
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !594, metadata !831), !dbg !2225
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2226
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2226, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2226
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2228
  %or.cond = or i1 %cmp, %cmp2, !dbg !2226
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2226

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2230, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2233
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2230, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2238
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2233
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2233
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2239

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2240, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2241
  br label %return, !dbg !2242

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2230
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !593, metadata !831), !dbg !2225
  br label %if.end.6, !dbg !2243

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2246
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2246, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2246
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2250
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2246
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2246

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2252, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2255
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2252, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2260
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2255
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2255
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2261

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2262, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2263
  br label %return, !dbg !2264

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2252
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2252
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !594, metadata !831), !dbg !2225
  br label %if.end.25, !dbg !2265

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Subtract(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2268
  br label %return, !dbg !2268

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2271
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_mul(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !597, metadata !831), !dbg !2275
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !598, metadata !831), !dbg !2275
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2276
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2276, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2276
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2278
  %or.cond = or i1 %cmp, %cmp2, !dbg !2276
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2276

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2280, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2283
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2280, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2288
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2283
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2283
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2289

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2290, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2291
  br label %return, !dbg !2292

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2280
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2280
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !597, metadata !831), !dbg !2275
  br label %if.end.6, !dbg !2293

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2296
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2296, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2296
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2300
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2296
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2296

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2302, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2305
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2302, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2310
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2305
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2305
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2311

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2312, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2313
  br label %return, !dbg !2314

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2302
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !598, metadata !831), !dbg !2275
  br label %if.end.25, !dbg !2315

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Multiply(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2318
  br label %return, !dbg !2318

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2321
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_mod(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !601, metadata !831), !dbg !2325
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !602, metadata !831), !dbg !2325
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2326
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2326, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2326
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2328
  %or.cond = or i1 %cmp, %cmp2, !dbg !2326
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2326

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2330, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2333
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2330, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2338
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2333
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2333
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2339

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2340, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2341
  br label %return, !dbg !2342

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2330
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2330
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !601, metadata !831), !dbg !2325
  br label %if.end.6, !dbg !2343

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2346
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2346, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2346
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2350
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2346
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2346

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2352, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2355
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2352, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2360
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2355
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2355
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2361

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2362, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2363
  br label %return, !dbg !2364

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2352
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2352
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !602, metadata !831), !dbg !2325
  br label %if.end.25, !dbg !2365

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Remainder(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2368
  br label %return, !dbg !2368

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2371
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_divmod(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !605, metadata !831), !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !606, metadata !831), !dbg !2375
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2376
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2376, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2376
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2378
  %or.cond = or i1 %cmp, %cmp2, !dbg !2376
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2376

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2380, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2383
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2380, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2388
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2383
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2383
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2389

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2390, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2391
  br label %return, !dbg !2392

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2380
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2380
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !605, metadata !831), !dbg !2375
  br label %if.end.6, !dbg !2393

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2396
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2396, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2396
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2400
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2396
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2396

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2402, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2405
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2402, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2410
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2405
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2405
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2411

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2412, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2413
  br label %return, !dbg !2414

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2402
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2402
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !606, metadata !831), !dbg !2375
  br label %if.end.25, !dbg !2415

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Divmod(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2418
  br label %return, !dbg !2418

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2421
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_pow(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !609, metadata !831), !dbg !2425
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !610, metadata !831), !dbg !2425
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !611, metadata !831), !dbg !2425
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2426
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2426, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2426
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2428
  %or.cond = or i1 %cmp, %cmp2, !dbg !2426
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2426

if.then:                                          ; preds = %entry
  %.idx70 = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx70 to %struct._object**
  %.idx70.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2430, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx70.val, i64 0, i32 0, !dbg !2433
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2430, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx70.val, @_Py_NoneStruct, !dbg !2438
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2433
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2433
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2439

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2440, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2441
  br label %return, !dbg !2442

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2430
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx70.val, %struct._object* @_Py_NoneStruct, !dbg !2430
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !609, metadata !831), !dbg !2425
  br label %if.end.6, !dbg !2443

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2446
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2446, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2446
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2450
  %or.cond65 = or i1 %cmp8, %cmp11, !dbg !2446
  br i1 %or.cond65, label %if.then.12, label %if.end.25, !dbg !2446

if.then.12:                                       ; preds = %if.end.6
  %.idx69 = getelementptr %struct._object, %struct._object* %v, i64 1
  %5 = bitcast %struct._object* %.idx69 to %struct._object**
  %.idx69.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2452, !tbaa !855
  %ob_refcnt.i.71 = getelementptr inbounds %struct._object, %struct._object* %.idx69.val, i64 0, i32 0, !dbg !2455
  %6 = load i64, i64* %ob_refcnt.i.71, align 8, !dbg !2452, !tbaa !937
  %phitmp.i.72 = icmp eq %struct._object* %.idx69.val, @_Py_NoneStruct, !dbg !2460
  %not.cmp.i.73 = icmp slt i64 %6, 1, !dbg !2455
  %phitmp..i.74 = or i1 %phitmp.i.72, %not.cmp.i.73, !dbg !2455
  br i1 %phitmp..i.74, label %proxy_checkref.exit77.thread, label %if.end.16, !dbg !2461

proxy_checkref.exit77.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2462, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2463
  br label %return, !dbg !2464

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2452
  %._Py_NoneStruct66 = select i1 %cmp19, %struct._object* %.idx69.val, %struct._object* @_Py_NoneStruct, !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct66, i64 0, metadata !610, metadata !831), !dbg !2425
  br label %if.end.25, !dbg !2465

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %v.addr.0 = phi %struct._object* [ %._Py_NoneStruct66, %if.end.16 ], [ %v, %if.end.6 ]
  %cmp26 = icmp eq %struct._object* %w, null, !dbg !2468
  br i1 %cmp26, label %if.end.47, label %if.then.27, !dbg !2425

if.then.27:                                       ; preds = %if.end.25
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2472
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !2472, !tbaa !859
  %cmp29 = icmp eq %struct._typeobject* %8, @_PyWeakref_ProxyType, !dbg !2472
  %cmp32 = icmp eq %struct._typeobject* %8, @_PyWeakref_CallableProxyType, !dbg !2475
  %or.cond67 = or i1 %cmp29, %cmp32, !dbg !2472
  br i1 %or.cond67, label %if.then.33, label %if.end.47, !dbg !2472

if.then.33:                                       ; preds = %if.then.27
  %.idx = getelementptr %struct._object, %struct._object* %w, i64 1
  %9 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %9, align 8, !dbg !2477, !tbaa !855
  %ob_refcnt.i.78 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2480
  %10 = load i64, i64* %ob_refcnt.i.78, align 8, !dbg !2477, !tbaa !937
  %phitmp.i.79 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2485
  %not.cmp.i.80 = icmp slt i64 %10, 1, !dbg !2480
  %phitmp..i.81 = or i1 %phitmp.i.79, %not.cmp.i.80, !dbg !2480
  br i1 %phitmp..i.81, label %proxy_checkref.exit84.thread, label %if.end.37, !dbg !2486

proxy_checkref.exit84.thread:                     ; preds = %if.then.33
  %11 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2487, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2488
  br label %return, !dbg !2489

if.end.37:                                        ; preds = %if.then.33
  %cmp40 = icmp sgt i64 %10, 0, !dbg !2477
  %._Py_NoneStruct68 = select i1 %cmp40, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2477
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct68, i64 0, metadata !611, metadata !831), !dbg !2425
  br label %if.end.47, !dbg !2490

if.end.47:                                        ; preds = %if.then.27, %if.end.25, %if.end.37
  %w.addr.0 = phi %struct._object* [ %._Py_NoneStruct68, %if.end.37 ], [ null, %if.end.25 ], [ %w, %if.then.27 ]
  %call48 = tail call %struct._object* @PyNumber_Power(%struct._object* %proxy.addr.0, %struct._object* %v.addr.0, %struct._object* %w.addr.0) #1, !dbg !2493
  br label %return, !dbg !2493

return:                                           ; preds = %proxy_checkref.exit84.thread, %proxy_checkref.exit77.thread, %proxy_checkref.exit.thread, %if.end.47
  %retval.0 = phi %struct._object* [ %call48, %if.end.47 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit77.thread ], [ null, %proxy_checkref.exit84.thread ]
  ret %struct._object* %retval.0, !dbg !2496
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_neg(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !614, metadata !831), !dbg !2501
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2502
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2502, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2502
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2504
  %or.cond = or i1 %cmp, %cmp2, !dbg !2502
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2502

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2506, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2509
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2506, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2514
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2509
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2509
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2515

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2516, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2517
  br label %return, !dbg !2518

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2506
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !614, metadata !831), !dbg !2501
  br label %if.end.6, !dbg !2519

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Negative(%struct._object* %proxy.addr.0) #1, !dbg !2522
  br label %return, !dbg !2522

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2525
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_pos(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !617, metadata !831), !dbg !2528
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2529
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2529, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2529
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2531
  %or.cond = or i1 %cmp, %cmp2, !dbg !2529
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2529

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2533, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2536
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2533, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2541
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2536
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2536
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2542

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2543, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2544
  br label %return, !dbg !2545

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2533
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2533
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !617, metadata !831), !dbg !2528
  br label %if.end.6, !dbg !2546

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Positive(%struct._object* %proxy.addr.0) #1, !dbg !2549
  br label %return, !dbg !2549

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2552
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_abs(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !620, metadata !831), !dbg !2555
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2556
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2556, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2556
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2558
  %or.cond = or i1 %cmp, %cmp2, !dbg !2556
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2556

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2560, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2563
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2560, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2568
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2563
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2563
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2569

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2570, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2571
  br label %return, !dbg !2572

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2560
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2560
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !620, metadata !831), !dbg !2555
  br label %if.end.6, !dbg !2573

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Absolute(%struct._object* %proxy.addr.0) #1, !dbg !2576
  br label %return, !dbg !2576

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2579
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_bool(%struct._PyWeakReference* nocapture readonly %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !623, metadata !831), !dbg !2582
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1, !dbg !2583
  %0 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !2583, !tbaa !855
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !624, metadata !831), !dbg !2584
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !2585
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2583, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !2588
  %not.cmp.i = icmp slt i64 %1, 1, !dbg !2585
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2585
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2589

proxy_checkref.exit.thread:                       ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2590, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2591
  br label %cleanup, !dbg !2592

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %1, 0, !dbg !2583
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %0, %struct._object* @_Py_NoneStruct, !dbg !2583
  %call2 = tail call i32 @PyObject_IsTrue(%struct._object* %._Py_NoneStruct) #1, !dbg !2593
  br label %cleanup, !dbg !2594

cleanup:                                          ; preds = %proxy_checkref.exit.thread, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %proxy_checkref.exit.thread ]
  ret i32 %retval.0, !dbg !2595
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_invert(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !627, metadata !831), !dbg !2596
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2597
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2597, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2597
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2599
  %or.cond = or i1 %cmp, %cmp2, !dbg !2597
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2597

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2601, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2604
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2601, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2609
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2604
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2604
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2610

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2611, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2612
  br label %return, !dbg !2613

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2601
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2601
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !627, metadata !831), !dbg !2596
  br label %if.end.6, !dbg !2614

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Invert(%struct._object* %proxy.addr.0) #1, !dbg !2617
  br label %return, !dbg !2617

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2620
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_lshift(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !630, metadata !831), !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !631, metadata !831), !dbg !2623
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2624
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2624, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2624
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2626
  %or.cond = or i1 %cmp, %cmp2, !dbg !2624
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2624

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2628, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2631
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2628, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2636
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2631
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2631
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2637

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2638, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2639
  br label %return, !dbg !2640

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2628
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2628
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !630, metadata !831), !dbg !2623
  br label %if.end.6, !dbg !2641

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2644
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2644, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2644
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2648
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2644
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2644

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2650, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2653
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2650, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2658
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2653
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2653
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2659

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2660, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2661
  br label %return, !dbg !2662

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2650
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2650
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !631, metadata !831), !dbg !2623
  br label %if.end.25, !dbg !2663

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Lshift(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2666
  br label %return, !dbg !2666

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2669
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_rshift(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !634, metadata !831), !dbg !2673
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !635, metadata !831), !dbg !2673
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2674
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2674, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2674
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2676
  %or.cond = or i1 %cmp, %cmp2, !dbg !2674
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2674

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2678, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2681
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2678, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2686
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2681
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2681
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2687

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2688, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2689
  br label %return, !dbg !2690

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2678
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2678
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !634, metadata !831), !dbg !2673
  br label %if.end.6, !dbg !2691

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2694
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2694, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2694
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2698
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2694
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2694

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2700, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2703
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2700, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2708
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2703
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2703
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2709

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2710, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2711
  br label %return, !dbg !2712

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2700
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !635, metadata !831), !dbg !2673
  br label %if.end.25, !dbg !2713

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Rshift(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2716
  br label %return, !dbg !2716

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2719
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_and(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !638, metadata !831), !dbg !2723
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !639, metadata !831), !dbg !2723
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2724
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2724, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2724
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2726
  %or.cond = or i1 %cmp, %cmp2, !dbg !2724
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2724

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2728, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2731
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2728, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2736
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2731
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2731
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2737

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2738, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2739
  br label %return, !dbg !2740

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2728
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2728
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !638, metadata !831), !dbg !2723
  br label %if.end.6, !dbg !2741

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2744
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2744, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2744
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2748
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2744
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2744

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2750, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2753
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2750, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2758
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2753
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2753
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2759

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2760, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2761
  br label %return, !dbg !2762

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2750
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !639, metadata !831), !dbg !2723
  br label %if.end.25, !dbg !2763

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_And(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2766
  br label %return, !dbg !2766

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2769
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_xor(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !642, metadata !831), !dbg !2773
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !643, metadata !831), !dbg !2773
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2774
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2774, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2774
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2776
  %or.cond = or i1 %cmp, %cmp2, !dbg !2774
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2774

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2778, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2781
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2778, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2786
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2781
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2781
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2787

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2788, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2789
  br label %return, !dbg !2790

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2778
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2778
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !642, metadata !831), !dbg !2773
  br label %if.end.6, !dbg !2791

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2794
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2794, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2794
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2798
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2794
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2794

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2800, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2803
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2800, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2808
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2803
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2803
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2809

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2810, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2811
  br label %return, !dbg !2812

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2800
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2800
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !643, metadata !831), !dbg !2773
  br label %if.end.25, !dbg !2813

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Xor(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2816
  br label %return, !dbg !2816

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2819
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_or(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !646, metadata !831), !dbg !2823
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !647, metadata !831), !dbg !2823
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2824
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2824, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2824
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2826
  %or.cond = or i1 %cmp, %cmp2, !dbg !2824
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2824

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2828, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2831
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2828, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2836
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2831
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2831
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2837

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2838, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2839
  br label %return, !dbg !2840

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2828
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2828
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !646, metadata !831), !dbg !2823
  br label %if.end.6, !dbg !2841

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2844
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2844, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2844
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2848
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2844
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2844

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2850, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2853
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2850, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2858
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2853
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2853
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2859

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2860, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2861
  br label %return, !dbg !2862

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2850
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2850
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !647, metadata !831), !dbg !2823
  br label %if.end.25, !dbg !2863

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_Or(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2866
  br label %return, !dbg !2866

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_int(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !650, metadata !831), !dbg !2873
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2874
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2874, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2874
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2876
  %or.cond = or i1 %cmp, %cmp2, !dbg !2874
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2874

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2878, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2881
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2878, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2886
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2881
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2881
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2887

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2888, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2889
  br label %return, !dbg !2890

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2878
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2878
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !650, metadata !831), !dbg !2873
  br label %if.end.6, !dbg !2891

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Long(%struct._object* %proxy.addr.0) #1, !dbg !2894
  br label %return, !dbg !2894

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2897
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_float(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !653, metadata !831), !dbg !2900
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !2901
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2901, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2901
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2903
  %or.cond = or i1 %cmp, %cmp2, !dbg !2901
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2901

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2905, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2908
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2905, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2913
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2908
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2908
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2914

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2915, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2916
  br label %return, !dbg !2917

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2905
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2905
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !653, metadata !831), !dbg !2900
  br label %if.end.6, !dbg !2918

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Float(%struct._object* %proxy.addr.0) #1, !dbg !2921
  br label %return, !dbg !2921

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2924
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iadd(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !656, metadata !831), !dbg !2927
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !657, metadata !831), !dbg !2927
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2928
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2928, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2928
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2930
  %or.cond = or i1 %cmp, %cmp2, !dbg !2928
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2928

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2932, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2935
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2932, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2940
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2935
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2935
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2941

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2942, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2943
  br label %return, !dbg !2944

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2932
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2932
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !656, metadata !831), !dbg !2927
  br label %if.end.6, !dbg !2945

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2948
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2948, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2948
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !2952
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2948
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2948

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !2954, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !2957
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !2954, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !2962
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !2957
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !2957
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !2963

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2964, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2965
  br label %return, !dbg !2966

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !2954
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !2954
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !657, metadata !831), !dbg !2927
  br label %if.end.25, !dbg !2967

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceAdd(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !2970
  br label %return, !dbg !2970

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !2973
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_isub(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !660, metadata !831), !dbg !2977
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !661, metadata !831), !dbg !2977
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !2978
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2978, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !2978
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !2980
  %or.cond = or i1 %cmp, %cmp2, !dbg !2978
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2978

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !2982, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !2985
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2982, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !2990
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !2985
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !2985
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !2991

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !2992, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2993
  br label %return, !dbg !2994

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !2982
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !2982
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !660, metadata !831), !dbg !2977
  br label %if.end.6, !dbg !2995

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !2998
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2998, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !2998
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3002
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !2998
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !2998

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3004, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3007
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3004, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3012
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3007
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3007
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3013

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3014, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3015
  br label %return, !dbg !3016

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3004
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3004
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !661, metadata !831), !dbg !2977
  br label %if.end.25, !dbg !3017

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3020
  br label %return, !dbg !3020

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3023
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_imul(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !664, metadata !831), !dbg !3027
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !665, metadata !831), !dbg !3027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3028
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3028, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3028
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3030
  %or.cond = or i1 %cmp, %cmp2, !dbg !3028
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3028

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3032, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3035
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3032, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3040
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3035
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3035
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3041

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3042, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3043
  br label %return, !dbg !3044

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3032
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3032
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !664, metadata !831), !dbg !3027
  br label %if.end.6, !dbg !3045

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3048
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3048, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3048
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3052
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3048
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3048

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3054, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3057
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3054, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3062
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3057
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3057
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3063

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3064, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3065
  br label %return, !dbg !3066

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3054
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3054
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !665, metadata !831), !dbg !3027
  br label %if.end.25, !dbg !3067

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3070
  br label %return, !dbg !3070

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3073
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_imod(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !668, metadata !831), !dbg !3077
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !669, metadata !831), !dbg !3077
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3078
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3078, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3078
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3080
  %or.cond = or i1 %cmp, %cmp2, !dbg !3078
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3078

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3082, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3085
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3082, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3090
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3085
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3085
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3091

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3092, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3093
  br label %return, !dbg !3094

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3082
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3082
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !668, metadata !831), !dbg !3077
  br label %if.end.6, !dbg !3095

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3098
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3098, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3098
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3102
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3098
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3098

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3104, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3107
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3104, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3112
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3107
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3107
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3113

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3114, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3115
  br label %return, !dbg !3116

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3104
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3104
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !669, metadata !831), !dbg !3077
  br label %if.end.25, !dbg !3117

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3120
  br label %return, !dbg !3120

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3123
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ipow(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !672, metadata !831), !dbg !3127
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !673, metadata !831), !dbg !3127
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !674, metadata !831), !dbg !3127
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !3128
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3128, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3128
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3130
  %or.cond = or i1 %cmp, %cmp2, !dbg !3128
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3128

if.then:                                          ; preds = %entry
  %.idx70 = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx70 to %struct._object**
  %.idx70.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3132, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx70.val, i64 0, i32 0, !dbg !3135
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3132, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx70.val, @_Py_NoneStruct, !dbg !3140
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3135
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3135
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3141

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3142, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3143
  br label %return, !dbg !3144

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3132
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx70.val, %struct._object* @_Py_NoneStruct, !dbg !3132
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !672, metadata !831), !dbg !3127
  br label %if.end.6, !dbg !3145

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !3148
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3148, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3148
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3152
  %or.cond65 = or i1 %cmp8, %cmp11, !dbg !3148
  br i1 %or.cond65, label %if.then.12, label %if.end.25, !dbg !3148

if.then.12:                                       ; preds = %if.end.6
  %.idx69 = getelementptr %struct._object, %struct._object* %v, i64 1
  %5 = bitcast %struct._object* %.idx69 to %struct._object**
  %.idx69.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3154, !tbaa !855
  %ob_refcnt.i.71 = getelementptr inbounds %struct._object, %struct._object* %.idx69.val, i64 0, i32 0, !dbg !3157
  %6 = load i64, i64* %ob_refcnt.i.71, align 8, !dbg !3154, !tbaa !937
  %phitmp.i.72 = icmp eq %struct._object* %.idx69.val, @_Py_NoneStruct, !dbg !3162
  %not.cmp.i.73 = icmp slt i64 %6, 1, !dbg !3157
  %phitmp..i.74 = or i1 %phitmp.i.72, %not.cmp.i.73, !dbg !3157
  br i1 %phitmp..i.74, label %proxy_checkref.exit77.thread, label %if.end.16, !dbg !3163

proxy_checkref.exit77.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3164, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3165
  br label %return, !dbg !3166

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3154
  %._Py_NoneStruct66 = select i1 %cmp19, %struct._object* %.idx69.val, %struct._object* @_Py_NoneStruct, !dbg !3154
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct66, i64 0, metadata !673, metadata !831), !dbg !3127
  br label %if.end.25, !dbg !3167

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %v.addr.0 = phi %struct._object* [ %._Py_NoneStruct66, %if.end.16 ], [ %v, %if.end.6 ]
  %cmp26 = icmp eq %struct._object* %w, null, !dbg !3170
  br i1 %cmp26, label %if.end.47, label %if.then.27, !dbg !3127

if.then.27:                                       ; preds = %if.end.25
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !3174
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !3174, !tbaa !859
  %cmp29 = icmp eq %struct._typeobject* %8, @_PyWeakref_ProxyType, !dbg !3174
  %cmp32 = icmp eq %struct._typeobject* %8, @_PyWeakref_CallableProxyType, !dbg !3177
  %or.cond67 = or i1 %cmp29, %cmp32, !dbg !3174
  br i1 %or.cond67, label %if.then.33, label %if.end.47, !dbg !3174

if.then.33:                                       ; preds = %if.then.27
  %.idx = getelementptr %struct._object, %struct._object* %w, i64 1
  %9 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %9, align 8, !dbg !3179, !tbaa !855
  %ob_refcnt.i.78 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3182
  %10 = load i64, i64* %ob_refcnt.i.78, align 8, !dbg !3179, !tbaa !937
  %phitmp.i.79 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3187
  %not.cmp.i.80 = icmp slt i64 %10, 1, !dbg !3182
  %phitmp..i.81 = or i1 %phitmp.i.79, %not.cmp.i.80, !dbg !3182
  br i1 %phitmp..i.81, label %proxy_checkref.exit84.thread, label %if.end.37, !dbg !3188

proxy_checkref.exit84.thread:                     ; preds = %if.then.33
  %11 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3189, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3190
  br label %return, !dbg !3191

if.end.37:                                        ; preds = %if.then.33
  %cmp40 = icmp sgt i64 %10, 0, !dbg !3179
  %._Py_NoneStruct68 = select i1 %cmp40, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3179
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct68, i64 0, metadata !674, metadata !831), !dbg !3127
  br label %if.end.47, !dbg !3192

if.end.47:                                        ; preds = %if.then.27, %if.end.25, %if.end.37
  %w.addr.0 = phi %struct._object* [ %._Py_NoneStruct68, %if.end.37 ], [ null, %if.end.25 ], [ %w, %if.then.27 ]
  %call48 = tail call %struct._object* @PyNumber_InPlacePower(%struct._object* %proxy.addr.0, %struct._object* %v.addr.0, %struct._object* %w.addr.0) #1, !dbg !3195
  br label %return, !dbg !3195

return:                                           ; preds = %proxy_checkref.exit84.thread, %proxy_checkref.exit77.thread, %proxy_checkref.exit.thread, %if.end.47
  %retval.0 = phi %struct._object* [ %call48, %if.end.47 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit77.thread ], [ null, %proxy_checkref.exit84.thread ]
  ret %struct._object* %retval.0, !dbg !3198
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ilshift(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !677, metadata !831), !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !678, metadata !831), !dbg !3203
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3204
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3204, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3204
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3206
  %or.cond = or i1 %cmp, %cmp2, !dbg !3204
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3204

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3208, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3211
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3208, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3216
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3211
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3211
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3217

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3218, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3219
  br label %return, !dbg !3220

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3208
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3208
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !677, metadata !831), !dbg !3203
  br label %if.end.6, !dbg !3221

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3224
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3224, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3224
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3228
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3224
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3224

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3230, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3233
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3230, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3238
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3233
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3233
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3239

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3240, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3241
  br label %return, !dbg !3242

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3230
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3230
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !678, metadata !831), !dbg !3203
  br label %if.end.25, !dbg !3243

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceLshift(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3246
  br label %return, !dbg !3246

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3249
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_irshift(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !681, metadata !831), !dbg !3253
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !682, metadata !831), !dbg !3253
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3254
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3254, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3254
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3256
  %or.cond = or i1 %cmp, %cmp2, !dbg !3254
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3254

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3258, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3261
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3258, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3266
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3261
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3261
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3267

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3268, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3269
  br label %return, !dbg !3270

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3258
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !681, metadata !831), !dbg !3253
  br label %if.end.6, !dbg !3271

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3274
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3274, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3274
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3278
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3274
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3274

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3280, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3283
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3280, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3288
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3283
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3283
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3289

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3290, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3291
  br label %return, !dbg !3292

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3280
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3280
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !682, metadata !831), !dbg !3253
  br label %if.end.25, !dbg !3293

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceRshift(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3296
  br label %return, !dbg !3296

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3299
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iand(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !685, metadata !831), !dbg !3303
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !686, metadata !831), !dbg !3303
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3304
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3304, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3304
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3306
  %or.cond = or i1 %cmp, %cmp2, !dbg !3304
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3304

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3308, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3311
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3308, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3316
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3311
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3311
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3317

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3318, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3319
  br label %return, !dbg !3320

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3308
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3308
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !685, metadata !831), !dbg !3303
  br label %if.end.6, !dbg !3321

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3324
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3324, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3324
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3328
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3324
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3324

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3330, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3333
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3330, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3338
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3333
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3333
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3339

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3340, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3341
  br label %return, !dbg !3342

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3330
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3330
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !686, metadata !831), !dbg !3303
  br label %if.end.25, !dbg !3343

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceAnd(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3346
  br label %return, !dbg !3346

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3349
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ixor(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !689, metadata !831), !dbg !3353
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !690, metadata !831), !dbg !3353
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3354
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3354, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3354
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3356
  %or.cond = or i1 %cmp, %cmp2, !dbg !3354
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3354

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3358, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3361
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3358, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3366
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3361
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3361
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3367

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3368, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3369
  br label %return, !dbg !3370

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3358
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3358
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !689, metadata !831), !dbg !3353
  br label %if.end.6, !dbg !3371

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3374
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3374, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3374
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3378
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3374
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3374

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3380, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3383
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3380, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3388
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3383
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3383
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3389

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3390, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3391
  br label %return, !dbg !3392

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3380
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3380
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !690, metadata !831), !dbg !3353
  br label %if.end.25, !dbg !3393

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceXor(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3396
  br label %return, !dbg !3396

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3399
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ior(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !693, metadata !831), !dbg !3403
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !694, metadata !831), !dbg !3403
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3404
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3404, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3404
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3406
  %or.cond = or i1 %cmp, %cmp2, !dbg !3404
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3404

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3408, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3411
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3408, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3416
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3411
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3411
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3417

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3418, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3419
  br label %return, !dbg !3420

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3408
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3408
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !693, metadata !831), !dbg !3403
  br label %if.end.6, !dbg !3421

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3424
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3424, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3424
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3428
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3424
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3424

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3430, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3433
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3430, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3438
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3433
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3433
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3439

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3440, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3441
  br label %return, !dbg !3442

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3430
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3430
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !694, metadata !831), !dbg !3403
  br label %if.end.25, !dbg !3443

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceOr(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3446
  br label %return, !dbg !3446

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3449
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_floor_div(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !697, metadata !831), !dbg !3453
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !698, metadata !831), !dbg !3453
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3454
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3454, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3454
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3456
  %or.cond = or i1 %cmp, %cmp2, !dbg !3454
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3454

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3458, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3461
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3458, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3466
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3461
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3461
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3467

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3468, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3469
  br label %return, !dbg !3470

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3458
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3458
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !697, metadata !831), !dbg !3453
  br label %if.end.6, !dbg !3471

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3474
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3474, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3474
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3478
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3474
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3474

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3480, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3483
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3480, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3488
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3483
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3483
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3489

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3490, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3491
  br label %return, !dbg !3492

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3480
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3480
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !698, metadata !831), !dbg !3453
  br label %if.end.25, !dbg !3493

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_FloorDivide(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3496
  br label %return, !dbg !3496

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3499
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_true_div(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !701, metadata !831), !dbg !3503
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !702, metadata !831), !dbg !3503
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3504
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3504, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3504
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3506
  %or.cond = or i1 %cmp, %cmp2, !dbg !3504
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3504

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3508, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3511
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3508, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3516
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3511
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3511
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3517

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3518, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3519
  br label %return, !dbg !3520

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3508
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3508
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !701, metadata !831), !dbg !3503
  br label %if.end.6, !dbg !3521

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3524
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3524, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3524
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3528
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3524
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3524

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3530, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3533
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3530, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3538
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3533
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3533
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3539

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3540, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3541
  br label %return, !dbg !3542

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3530
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3530
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !702, metadata !831), !dbg !3503
  br label %if.end.25, !dbg !3543

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_TrueDivide(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3546
  br label %return, !dbg !3546

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3549
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ifloor_div(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !705, metadata !831), !dbg !3553
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !706, metadata !831), !dbg !3553
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3554
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3554, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3554
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3556
  %or.cond = or i1 %cmp, %cmp2, !dbg !3554
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3554

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3558, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3561
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3558, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3566
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3561
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3561
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3567

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3568, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3569
  br label %return, !dbg !3570

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3558
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3558
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !705, metadata !831), !dbg !3553
  br label %if.end.6, !dbg !3571

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3574
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3574, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3574
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3578
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3574
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3574

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3580, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3583
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3580, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3588
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3583
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3583
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3589

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3590, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3591
  br label %return, !dbg !3592

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3580
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3580
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !706, metadata !831), !dbg !3553
  br label %if.end.25, !dbg !3593

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3596
  br label %return, !dbg !3596

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3599
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_itrue_div(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !709, metadata !831), !dbg !3603
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !710, metadata !831), !dbg !3603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3604
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3604, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3604
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3606
  %or.cond = or i1 %cmp, %cmp2, !dbg !3604
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3604

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3608, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3611
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3608, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3616
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3611
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3611
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3617

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3618, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3619
  br label %return, !dbg !3620

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3608
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3608
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !709, metadata !831), !dbg !3603
  br label %if.end.6, !dbg !3621

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3624
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3624, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3624
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3628
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3624
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3624

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3630, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3633
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3630, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3638
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3633
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3633
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3639

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3640, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3641
  br label %return, !dbg !3642

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3630
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3630
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !710, metadata !831), !dbg !3603
  br label %if.end.25, !dbg !3643

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3646
  br label %return, !dbg !3646

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3649
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_index(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !713, metadata !831), !dbg !3653
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !3654
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3654, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3654
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3656
  %or.cond = or i1 %cmp, %cmp2, !dbg !3654
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3654

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3658, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3661
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3658, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3666
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3661
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3661
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3667

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3668, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3669
  br label %return, !dbg !3670

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3658
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3658
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !713, metadata !831), !dbg !3653
  br label %if.end.6, !dbg !3671

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* @PyNumber_Index(%struct._object* %proxy.addr.0) #1, !dbg !3674
  br label %return, !dbg !3674

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !3677
}

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Divmod(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Negative(%struct._object*) #3

declare %struct._object* @PyNumber_Positive(%struct._object*) #3

declare %struct._object* @PyNumber_Absolute(%struct._object*) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare %struct._object* @PyNumber_Invert(%struct._object*) #3

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_And(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Xor(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Long(%struct._object*) #3

declare %struct._object* @PyNumber_Float(%struct._object*) #3

declare %struct._object* @PyNumber_InPlaceAdd(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceSubtract(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceMultiply(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceRemainder(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlacePower(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceLshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceRshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceAnd(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceXor(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceOr(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Index(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i64 @proxy_length(%struct._PyWeakReference* nocapture readonly %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !716, metadata !831), !dbg !3680
  %proxy.idx = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1
  %proxy.idx.val = load %struct._object*, %struct._object** %proxy.idx, align 8, !dbg !3681, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %proxy.idx.val, i64 0, i32 0, !dbg !3682
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3681, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %proxy.idx.val, @_Py_NoneStruct, !dbg !3685
  %not.cmp.i = icmp slt i64 %0, 1, !dbg !3682
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3682
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3686

proxy_checkref.exit.thread:                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3687, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3688
  br label %return, !dbg !3689

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %0, 0, !dbg !3681
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %proxy.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3681
  %call2 = tail call i64 @PyObject_Size(%struct._object* %._Py_NoneStruct) #1, !dbg !3690
  br label %return, !dbg !3693

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end
  %retval.0 = phi i64 [ %call2, %if.end ], [ -1, %proxy_checkref.exit.thread ]
  ret i64 %retval.0, !dbg !3694
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_contains(%struct._PyWeakReference* nocapture readonly %proxy, %struct._object* %value) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !721, metadata !831), !dbg !3695
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !722, metadata !831), !dbg !3696
  %proxy.idx = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1
  %proxy.idx.val = load %struct._object*, %struct._object** %proxy.idx, align 8, !dbg !3697, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %proxy.idx.val, i64 0, i32 0, !dbg !3698
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3697, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %proxy.idx.val, @_Py_NoneStruct, !dbg !3701
  %not.cmp.i = icmp slt i64 %0, 1, !dbg !3698
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3698
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3702

proxy_checkref.exit.thread:                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3703, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3704
  br label %return, !dbg !3705

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %0, 0, !dbg !3697
  %._Py_NoneStruct = select i1 %cmp, %struct._object* %proxy.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3697
  %call2 = tail call i32 @PySequence_Contains(%struct._object* %._Py_NoneStruct, %struct._object* %value) #1, !dbg !3706
  br label %return, !dbg !3707

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %proxy_checkref.exit.thread ]
  ret i32 %retval.0, !dbg !3708
}

declare i64 @PyObject_Size(%struct._object*) #3

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_getitem(%struct._object* %x, %struct._object* %y) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %x, i64 0, metadata !725, metadata !831), !dbg !3709
  tail call void @llvm.dbg.value(metadata %struct._object* %y, i64 0, metadata !726, metadata !831), !dbg !3709
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %x, i64 0, i32 1, !dbg !3710
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3710, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3710
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3712
  %or.cond = or i1 %cmp, %cmp2, !dbg !3710
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3710

if.then:                                          ; preds = %entry
  %.idx39 = getelementptr %struct._object, %struct._object* %x, i64 1
  %1 = bitcast %struct._object* %.idx39 to %struct._object**
  %.idx39.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3714, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx39.val, i64 0, i32 0, !dbg !3717
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3714, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx39.val, @_Py_NoneStruct, !dbg !3722
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3717
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3717
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3723

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3724, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3725
  br label %return, !dbg !3726

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3714
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx39.val, %struct._object* @_Py_NoneStruct, !dbg !3714
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !725, metadata !831), !dbg !3709
  br label %if.end.6, !dbg !3727

if.end.6:                                         ; preds = %entry, %if.end
  %x.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %x, %entry ]
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %y, i64 0, i32 1, !dbg !3730
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3730, !tbaa !859
  %cmp8 = icmp eq %struct._typeobject* %4, @_PyWeakref_ProxyType, !dbg !3730
  %cmp11 = icmp eq %struct._typeobject* %4, @_PyWeakref_CallableProxyType, !dbg !3734
  %or.cond37 = or i1 %cmp8, %cmp11, !dbg !3730
  br i1 %or.cond37, label %if.then.12, label %if.end.25, !dbg !3730

if.then.12:                                       ; preds = %if.end.6
  %.idx = getelementptr %struct._object, %struct._object* %y, i64 1
  %5 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %5, align 8, !dbg !3736, !tbaa !855
  %ob_refcnt.i.40 = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3739
  %6 = load i64, i64* %ob_refcnt.i.40, align 8, !dbg !3736, !tbaa !937
  %phitmp.i.41 = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3744
  %not.cmp.i.42 = icmp slt i64 %6, 1, !dbg !3739
  %phitmp..i.43 = or i1 %phitmp.i.41, %not.cmp.i.42, !dbg !3739
  br i1 %phitmp..i.43, label %proxy_checkref.exit46.thread, label %if.end.16, !dbg !3745

proxy_checkref.exit46.thread:                     ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3746, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3747
  br label %return, !dbg !3748

if.end.16:                                        ; preds = %if.then.12
  %cmp19 = icmp sgt i64 %6, 0, !dbg !3736
  %._Py_NoneStruct38 = select i1 %cmp19, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3736
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct38, i64 0, metadata !726, metadata !831), !dbg !3709
  br label %if.end.25, !dbg !3749

if.end.25:                                        ; preds = %if.end.6, %if.end.16
  %y.addr.0 = phi %struct._object* [ %._Py_NoneStruct38, %if.end.16 ], [ %y, %if.end.6 ]
  %call26 = tail call %struct._object* @PyObject_GetItem(%struct._object* %x.addr.0, %struct._object* %y.addr.0) #1, !dbg !3752
  br label %return, !dbg !3752

return:                                           ; preds = %proxy_checkref.exit46.thread, %proxy_checkref.exit.thread, %if.end.25
  %retval.0 = phi %struct._object* [ %call26, %if.end.25 ], [ null, %proxy_checkref.exit.thread ], [ null, %proxy_checkref.exit46.thread ]
  ret %struct._object* %retval.0, !dbg !3755
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_setitem(%struct._PyWeakReference* nocapture readonly %proxy, %struct._object* %key, %struct._object* %value) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference* %proxy, i64 0, metadata !731, metadata !831), !dbg !3759
  tail call void @llvm.dbg.value(metadata %struct._object* %key, i64 0, metadata !732, metadata !831), !dbg !3760
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !733, metadata !831), !dbg !3761
  %proxy.idx = getelementptr %struct._PyWeakReference, %struct._PyWeakReference* %proxy, i64 0, i32 1
  %proxy.idx.val = load %struct._object*, %struct._object** %proxy.idx, align 8, !dbg !3762, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %proxy.idx.val, i64 0, i32 0, !dbg !3764
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3762, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %proxy.idx.val, @_Py_NoneStruct, !dbg !3767
  %not.cmp.i = icmp slt i64 %0, 1, !dbg !3764
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3764
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3768

proxy_checkref.exit.thread:                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3769, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3770
  br label %return, !dbg !3771

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct._object* %value, null, !dbg !3772
  %cmp2 = icmp sgt i64 %0, 0, !dbg !3762
  %._Py_NoneStruct = select i1 %cmp2, %struct._object* %proxy.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3762
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !3773

if.then.1:                                        ; preds = %if.end
  %call4 = tail call i32 @PyObject_DelItem(%struct._object* %._Py_NoneStruct, %struct._object* %key) #1, !dbg !3774
  br label %return, !dbg !3775

if.else:                                          ; preds = %if.end
  %call13 = tail call i32 @PyObject_SetItem(%struct._object* %._Py_NoneStruct, %struct._object* %key, %struct._object* %value) #1, !dbg !3776
  br label %return, !dbg !3777

return:                                           ; preds = %proxy_checkref.exit.thread, %if.else, %if.then.1
  %retval.0 = phi i32 [ %call4, %if.then.1 ], [ %call13, %if.else ], [ -1, %proxy_checkref.exit.thread ]
  ret i32 %retval.0, !dbg !3778
}

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #3

declare i32 @PyObject_DelItem(%struct._object*, %struct._object*) #3

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_Str(%struct._object*) #3

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

declare i32 @PyObject_SetAttr(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

declare %struct._object* @PyIter_Next(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_bytes(%struct._object* %proxy) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %proxy, i64 0, metadata !759, metadata !831), !dbg !3779
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %proxy, i64 0, i32 1, !dbg !3780
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3780, !tbaa !859
  %cmp = icmp eq %struct._typeobject* %0, @_PyWeakref_ProxyType, !dbg !3780
  %cmp2 = icmp eq %struct._typeobject* %0, @_PyWeakref_CallableProxyType, !dbg !3782
  %or.cond = or i1 %cmp, %cmp2, !dbg !3780
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !3780

if.then:                                          ; preds = %entry
  %.idx = getelementptr %struct._object, %struct._object* %proxy, i64 1
  %1 = bitcast %struct._object* %.idx to %struct._object**
  %.idx.val = load %struct._object*, %struct._object** %1, align 8, !dbg !3784, !tbaa !855
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %.idx.val, i64 0, i32 0, !dbg !3787
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3784, !tbaa !937
  %phitmp.i = icmp eq %struct._object* %.idx.val, @_Py_NoneStruct, !dbg !3792
  %not.cmp.i = icmp slt i64 %2, 1, !dbg !3787
  %phitmp..i = or i1 %phitmp.i, %not.cmp.i, !dbg !3787
  br i1 %phitmp..i, label %proxy_checkref.exit.thread, label %if.end, !dbg !3793

proxy_checkref.exit.thread:                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !3794, !tbaa !867
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !3795
  br label %return, !dbg !3796

if.end:                                           ; preds = %if.then
  %cmp4 = icmp sgt i64 %2, 0, !dbg !3784
  %._Py_NoneStruct = select i1 %cmp4, %struct._object* %.idx.val, %struct._object* @_Py_NoneStruct, !dbg !3784
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !759, metadata !831), !dbg !3779
  br label %if.end.6, !dbg !3797

if.end.6:                                         ; preds = %entry, %if.end
  %proxy.addr.0 = phi %struct._object* [ %._Py_NoneStruct, %if.end ], [ %proxy, %entry ]
  %call7 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %proxy.addr.0, %struct._Py_Identifier* nonnull @proxy_bytes.PyId___bytes__, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #1, !dbg !3800
  br label %return, !dbg !3800

return:                                           ; preds = %proxy_checkref.exit.thread, %if.end.6
  %retval.0 = phi %struct._object* [ %call7, %if.end.6 ], [ null, %proxy_checkref.exit.thread ]
  ret %struct._object* %retval.0, !dbg !3803
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare void @PyObject_GC_Track(i8*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!828, !829}
!llvm.ident = !{!830}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !371, globals: !802)
!1 = !DIFile(filename: "Objects/weakrefobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !362, !52, !351, !363}
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
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !353, line: 10, baseType: !354)
!353 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !353, line: 16, size: 448, align: 64, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !354, file: !353, line: 17, baseType: !6, size: 128, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !354, file: !353, line: 23, baseType: !5, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !354, file: !353, line: 26, baseType: !5, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !354, file: !353, line: 31, baseType: !218, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !354, file: !353, line: 38, baseType: !351, size: 64, align: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !354, file: !353, line: 39, baseType: !351, size: 64, align: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !365, line: 33, baseType: !366)
!365 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 25, size: 256, align: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !365, line: 26, baseType: !23, size: 192, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !366, file: !365, line: 27, baseType: !370, size: 64, align: 64, offset: 192)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!371 = !{!372, !378, !384, !404, !423, !426, !465, !476, !479, !491, !496, !506, !517, !522, !532, !538, !547, !569, !578, !581, !584, !588, !591, !595, !599, !603, !607, !612, !615, !618, !621, !625, !628, !632, !636, !640, !644, !648, !651, !654, !658, !662, !666, !670, !675, !679, !683, !687, !691, !695, !699, !703, !707, !711, !714, !717, !723, !727, !734, !737, !741, !746, !751, !754, !757, !760, !765, !772, !779, !786, !792}
!372 = !DISubprogram(name: "_PyWeakref_GetWeakrefCount", scope: !1, file: !1, line: 10, type: !373, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._PyWeakReference*)* @_PyWeakref_GetWeakrefCount, variables: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!11, !351}
!375 = !{!376, !377}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 1, scope: !372, file: !1, line: 10, type: !351)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !372, file: !1, line: 12, type: !11)
!378 = !DISubprogram(name: "_PyWeakref_ClearRef", scope: !1, file: !1, line: 89, type: !379, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*)* @_PyWeakref_ClearRef, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !351}
!381 = !{!382, !383}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !378, file: !1, line: 89, type: !351)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !378, file: !1, line: 91, type: !5)
!384 = !DISubprogram(name: "PyWeakref_NewRef", scope: !1, file: !1, line: 730, type: !126, isLocal: false, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyWeakref_NewRef, variables: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !402}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 1, scope: !384, file: !1, line: 730, type: !5)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !384, file: !1, line: 730, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !384, file: !1, line: 732, type: !351)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !384, file: !1, line: 733, type: !350)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ref", scope: !384, file: !1, line: 734, type: !351)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proxy", scope: !384, file: !1, line: 734, type: !351)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !393, file: !1, line: 768, type: !5)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 768, column: 21)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 763, column: 22)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 761, column: 21)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 760, column: 35)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 760, column: 17)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 758, column: 29)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 758, column: 13)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 751, column: 10)
!401 = distinct !DILexicalBlock(scope: !384, file: !1, line: 749, column: 9)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !403, file: !1, line: 774, type: !351)
!403 = distinct !DILexicalBlock(scope: !397, file: !1, line: 773, column: 18)
!404 = !DISubprogram(name: "PyWeakref_NewProxy", scope: !1, file: !1, line: 789, type: !126, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyWeakref_NewProxy, variables: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !417}
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 1, scope: !404, file: !1, line: 789, type: !5)
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !404, file: !1, line: 789, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !404, file: !1, line: 791, type: !351)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !404, file: !1, line: 792, type: !350)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ref", scope: !404, file: !1, line: 793, type: !351)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proxy", scope: !404, file: !1, line: 793, type: !351)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !413, file: !1, line: 818, type: !351)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 817, column: 29)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 817, column: 13)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 810, column: 10)
!416 = distinct !DILexicalBlock(scope: !404, file: !1, line: 808, column: 9)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !418, file: !1, line: 831, type: !5)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 831, column: 21)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 826, column: 36)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 826, column: 21)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 825, column: 35)
!422 = distinct !DILexicalBlock(scope: !413, file: !1, line: 825, column: 17)
!423 = !DISubprogram(name: "PyWeakref_GetObject", scope: !1, file: !1, line: 853, type: !116, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyWeakref_GetObject, variables: !424)
!424 = !{!425}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !423, file: !1, line: 853, type: !5)
!426 = !DISubprogram(name: "PyObject_ClearWeakRefs", scope: !1, file: !1, line: 883, type: !37, isLocal: false, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyObject_ClearWeakRefs, variables: !427)
!427 = !{!428, !429, !430, !433, !434, !435, !436, !437, !438, !441, !445, !447, !448, !452, !456, !460, !463}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !426, file: !1, line: 883, type: !5)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !426, file: !1, line: 885, type: !350)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !431, file: !1, line: 901, type: !351)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 900, column: 24)
!432 = distinct !DILexicalBlock(scope: !426, file: !1, line: 900, column: 9)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !431, file: !1, line: 902, type: !11)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restore_error", scope: !431, file: !1, line: 903, type: !44)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err_type", scope: !431, file: !1, line: 904, type: !5)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err_value", scope: !431, file: !1, line: 904, type: !5)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err_tb", scope: !431, file: !1, line: 904, type: !5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !439, file: !1, line: 909, type: !5)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 908, column: 25)
!440 = distinct !DILexicalBlock(scope: !431, file: !1, line: 908, column: 13)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !1, line: 916, type: !5)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 916, column: 17)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 913, column: 35)
!444 = distinct !DILexicalBlock(scope: !439, file: !1, line: 913, column: 17)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !446, file: !1, line: 920, type: !5)
!446 = distinct !DILexicalBlock(scope: !440, file: !1, line: 919, column: 14)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !446, file: !1, line: 921, type: !11)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !449, file: !1, line: 931, type: !351)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 930, column: 41)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 930, column: 13)
!451 = distinct !DILexicalBlock(scope: !446, file: !1, line: 930, column: 13)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !1, line: 940, type: !5)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 940, column: 21)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 939, column: 22)
!455 = distinct !DILexicalBlock(scope: !449, file: !1, line: 933, column: 21)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !457, file: !1, line: 947, type: !5)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 946, column: 41)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 946, column: 13)
!459 = distinct !DILexicalBlock(scope: !446, file: !1, line: 946, column: 13)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !461, file: !1, line: 951, type: !5)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 950, column: 39)
!462 = distinct !DILexicalBlock(scope: !457, file: !1, line: 950, column: 21)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !464, file: !1, line: 955, type: !5)
!464 = distinct !DILexicalBlock(scope: !446, file: !1, line: 955, column: 13)
!465 = !DISubprogram(name: "clear_weakref", scope: !1, file: !1, line: 51, type: !379, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !466)
!466 = !{!467, !468, !469, !472}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !465, file: !1, line: 51, type: !351)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !465, file: !1, line: 53, type: !5)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !470, file: !1, line: 56, type: !350)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 55, column: 37)
!471 = distinct !DILexicalBlock(scope: !465, file: !1, line: 55, column: 9)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !473, file: !1, line: 72, type: !5)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 72, column: 9)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 71, column: 27)
!475 = distinct !DILexicalBlock(scope: !465, file: !1, line: 71, column: 9)
!476 = !DISubprogram(name: "weakref_dealloc", scope: !1, file: !1, line: 103, type: !37, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @weakref_dealloc, variables: !477)
!477 = !{!478}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !476, file: !1, line: 103, type: !5)
!479 = !DISubprogram(name: "weakref_repr", scope: !1, file: !1, line: 156, type: !480, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @weakref_repr, variables: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!5, !351}
!482 = !{!483, !484, !485, !486, !488}
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !479, file: !1, line: 156, type: !351)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !479, file: !1, line: 158, type: !5)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !479, file: !1, line: 158, type: !5)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !487, file: !1, line: 182, type: !5)
!487 = distinct !DILexicalBlock(scope: !479, file: !1, line: 182, column: 5)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !1, line: 182, type: !5)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 182, column: 5)
!490 = distinct !DILexicalBlock(scope: !487, file: !1, line: 182, column: 5)
!491 = !DISubprogram(name: "weakref_hash", scope: !1, file: !1, line: 142, type: !492, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._PyWeakReference*)* @weakref_hash, variables: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!218, !351}
!494 = !{!495}
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !491, file: !1, line: 142, type: !351)
!496 = !DISubprogram(name: "weakref_call", scope: !1, file: !1, line: 128, type: !497, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @weakref_call, variables: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!5, !351, !5, !5}
!499 = !{!500, !501, !502, !503}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !496, file: !1, line: 128, type: !351)
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !496, file: !1, line: 128, type: !5)
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !496, file: !1, line: 128, type: !5)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !504, file: !1, line: 133, type: !5)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 132, column: 69)
!505 = distinct !DILexicalBlock(scope: !496, file: !1, line: 132, column: 9)
!506 = !DISubprogram(name: "gc_traverse", scope: !1, file: !1, line: 112, type: !507, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, i32 (%struct._object*, i8*)*, i8*)* @gc_traverse, variables: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!44, !351, !263, !4}
!509 = !{!510, !511, !512, !513}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !506, file: !1, line: 112, type: !351)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !506, file: !1, line: 112, type: !263)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !506, file: !1, line: 112, type: !4)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !514, file: !1, line: 114, type: !44)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 114, column: 5)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 114, column: 5)
!516 = distinct !DILexicalBlock(scope: !506, file: !1, line: 114, column: 5)
!517 = !DISubprogram(name: "gc_clear", scope: !1, file: !1, line: 120, type: !518, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*)* @gc_clear, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!44, !351}
!520 = !{!521}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !517, file: !1, line: 120, type: !351)
!522 = !DISubprogram(name: "weakref_richcompare", scope: !1, file: !1, line: 191, type: !523, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*, %struct._PyWeakReference*, i32)* @weakref_richcompare, variables: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!5, !351, !351, !44}
!525 = !{!526, !527, !528, !529}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !522, file: !1, line: 191, type: !351)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !522, file: !1, line: 191, type: !351)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !522, file: !1, line: 191, type: !44)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !530, file: !1, line: 200, type: !44)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 199, column: 52)
!531 = distinct !DILexicalBlock(scope: !522, file: !1, line: 198, column: 9)
!532 = !DISubprogram(name: "weakref___init__", scope: !1, file: !1, line: 330, type: !211, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @weakref___init__, variables: !533)
!533 = !{!534, !535, !536, !537}
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !532, file: !1, line: 330, type: !5)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !532, file: !1, line: 330, type: !5)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !532, file: !1, line: 330, type: !5)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !532, file: !1, line: 332, type: !5)
!538 = !DISubprogram(name: "parse_weakref_init_args", scope: !1, file: !1, line: 268, type: !539, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, variables: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!44, !52, !5, !5, !362, !362}
!541 = !{!542, !543, !544, !545, !546}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !538, file: !1, line: 268, type: !52)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !538, file: !1, line: 268, type: !5)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !538, file: !1, line: 268, type: !5)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obp", arg: 4, scope: !538, file: !1, line: 269, type: !362)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callbackp", arg: 5, scope: !538, file: !1, line: 269, type: !362)
!547 = !DISubprogram(name: "weakref___new__", scope: !1, file: !1, line: 276, type: !548, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @weakref___new__, variables: !552)
!548 = !DISubroutineType(types: !549)
!549 = !{!5, !550, !5, !5}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !562, !563, !564}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !547, file: !1, line: 276, type: !550)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !547, file: !1, line: 276, type: !5)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !547, file: !1, line: 276, type: !5)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !547, file: !1, line: 278, type: !351)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ob", scope: !547, file: !1, line: 279, type: !5)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !547, file: !1, line: 279, type: !5)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ref", scope: !560, file: !1, line: 282, type: !351)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 281, column: 75)
!561 = distinct !DILexicalBlock(scope: !547, file: !1, line: 281, column: 9)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proxy", scope: !560, file: !1, line: 282, type: !351)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !560, file: !1, line: 283, type: !350)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !565, file: !1, line: 315, type: !351)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 314, column: 18)
!566 = distinct !DILexicalBlock(scope: !567, file: !1, line: 311, column: 17)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 309, column: 27)
!568 = distinct !DILexicalBlock(scope: !560, file: !1, line: 309, column: 13)
!569 = !DISubprogram(name: "init_weakref", scope: !1, file: !1, line: 23, type: !570, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, variables: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !351, !5, !5}
!572 = !{!573, !574, !575, !576}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !569, file: !1, line: 23, type: !351)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !569, file: !1, line: 23, type: !5)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 3, scope: !569, file: !1, line: 23, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !577, file: !1, line: 27, type: !5)
!577 = distinct !DILexicalBlock(scope: !569, file: !1, line: 27, column: 5)
!578 = !DISubprogram(name: "proxy_dealloc", scope: !1, file: !1, line: 535, type: !379, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*)* @proxy_dealloc, variables: !579)
!579 = !{!580}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !578, file: !1, line: 535, type: !351)
!581 = !DISubprogram(name: "proxy_repr", scope: !1, file: !1, line: 465, type: !480, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @proxy_repr, variables: !582)
!582 = !{!583}
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !581, file: !1, line: 465, type: !351)
!584 = !DISubprogram(name: "proxy_add", scope: !1, file: !1, line: 492, type: !126, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_add, variables: !585)
!585 = !{!586, !587}
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !584, file: !1, line: 492, type: !5)
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !584, file: !1, line: 492, type: !5)
!588 = !DISubprogram(name: "proxy_checkref", scope: !1, file: !1, line: 392, type: !518, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, variables: !589)
!589 = !{!590}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !588, file: !1, line: 392, type: !351)
!591 = !DISubprogram(name: "proxy_sub", scope: !1, file: !1, line: 493, type: !126, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_sub, variables: !592)
!592 = !{!593, !594}
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !591, file: !1, line: 493, type: !5)
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !591, file: !1, line: 493, type: !5)
!595 = !DISubprogram(name: "proxy_mul", scope: !1, file: !1, line: 494, type: !126, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_mul, variables: !596)
!596 = !{!597, !598}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !595, file: !1, line: 494, type: !5)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !595, file: !1, line: 494, type: !5)
!599 = !DISubprogram(name: "proxy_mod", scope: !1, file: !1, line: 497, type: !126, isLocal: true, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_mod, variables: !600)
!600 = !{!601, !602}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !599, file: !1, line: 497, type: !5)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !599, file: !1, line: 497, type: !5)
!603 = !DISubprogram(name: "proxy_divmod", scope: !1, file: !1, line: 498, type: !126, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_divmod, variables: !604)
!604 = !{!605, !606}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !603, file: !1, line: 498, type: !5)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !603, file: !1, line: 498, type: !5)
!607 = !DISubprogram(name: "proxy_pow", scope: !1, file: !1, line: 499, type: !135, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_pow, variables: !608)
!608 = !{!609, !610, !611}
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !607, file: !1, line: 499, type: !5)
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !607, file: !1, line: 499, type: !5)
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !607, file: !1, line: 499, type: !5)
!612 = !DISubprogram(name: "proxy_neg", scope: !1, file: !1, line: 500, type: !116, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_neg, variables: !613)
!613 = !{!614}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !612, file: !1, line: 500, type: !5)
!615 = !DISubprogram(name: "proxy_pos", scope: !1, file: !1, line: 501, type: !116, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_pos, variables: !616)
!616 = !{!617}
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !615, file: !1, line: 501, type: !5)
!618 = !DISubprogram(name: "proxy_abs", scope: !1, file: !1, line: 502, type: !116, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_abs, variables: !619)
!619 = !{!620}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !618, file: !1, line: 502, type: !5)
!621 = !DISubprogram(name: "proxy_bool", scope: !1, file: !1, line: 526, type: !518, isLocal: true, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*)* @proxy_bool, variables: !622)
!622 = !{!623, !624}
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !621, file: !1, line: 526, type: !351)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !621, file: !1, line: 528, type: !5)
!625 = !DISubprogram(name: "proxy_invert", scope: !1, file: !1, line: 503, type: !116, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_invert, variables: !626)
!626 = !{!627}
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !625, file: !1, line: 503, type: !5)
!628 = !DISubprogram(name: "proxy_lshift", scope: !1, file: !1, line: 504, type: !126, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_lshift, variables: !629)
!629 = !{!630, !631}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !628, file: !1, line: 504, type: !5)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !628, file: !1, line: 504, type: !5)
!632 = !DISubprogram(name: "proxy_rshift", scope: !1, file: !1, line: 505, type: !126, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_rshift, variables: !633)
!633 = !{!634, !635}
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !632, file: !1, line: 505, type: !5)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !632, file: !1, line: 505, type: !5)
!636 = !DISubprogram(name: "proxy_and", scope: !1, file: !1, line: 506, type: !126, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_and, variables: !637)
!637 = !{!638, !639}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !636, file: !1, line: 506, type: !5)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !636, file: !1, line: 506, type: !5)
!640 = !DISubprogram(name: "proxy_xor", scope: !1, file: !1, line: 507, type: !126, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_xor, variables: !641)
!641 = !{!642, !643}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !640, file: !1, line: 507, type: !5)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !640, file: !1, line: 507, type: !5)
!644 = !DISubprogram(name: "proxy_or", scope: !1, file: !1, line: 508, type: !126, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_or, variables: !645)
!645 = !{!646, !647}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !644, file: !1, line: 508, type: !5)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !644, file: !1, line: 508, type: !5)
!648 = !DISubprogram(name: "proxy_int", scope: !1, file: !1, line: 509, type: !116, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_int, variables: !649)
!649 = !{!650}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !648, file: !1, line: 509, type: !5)
!651 = !DISubprogram(name: "proxy_float", scope: !1, file: !1, line: 510, type: !116, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_float, variables: !652)
!652 = !{!653}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !651, file: !1, line: 510, type: !5)
!654 = !DISubprogram(name: "proxy_iadd", scope: !1, file: !1, line: 511, type: !126, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_iadd, variables: !655)
!655 = !{!656, !657}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !654, file: !1, line: 511, type: !5)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !654, file: !1, line: 511, type: !5)
!658 = !DISubprogram(name: "proxy_isub", scope: !1, file: !1, line: 512, type: !126, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_isub, variables: !659)
!659 = !{!660, !661}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !658, file: !1, line: 512, type: !5)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !658, file: !1, line: 512, type: !5)
!662 = !DISubprogram(name: "proxy_imul", scope: !1, file: !1, line: 513, type: !126, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_imul, variables: !663)
!663 = !{!664, !665}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !662, file: !1, line: 513, type: !5)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !662, file: !1, line: 513, type: !5)
!666 = !DISubprogram(name: "proxy_imod", scope: !1, file: !1, line: 516, type: !126, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_imod, variables: !667)
!667 = !{!668, !669}
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !666, file: !1, line: 516, type: !5)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !666, file: !1, line: 516, type: !5)
!670 = !DISubprogram(name: "proxy_ipow", scope: !1, file: !1, line: 517, type: !135, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_ipow, variables: !671)
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !670, file: !1, line: 517, type: !5)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !670, file: !1, line: 517, type: !5)
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !670, file: !1, line: 517, type: !5)
!675 = !DISubprogram(name: "proxy_ilshift", scope: !1, file: !1, line: 518, type: !126, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ilshift, variables: !676)
!676 = !{!677, !678}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !675, file: !1, line: 518, type: !5)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !675, file: !1, line: 518, type: !5)
!679 = !DISubprogram(name: "proxy_irshift", scope: !1, file: !1, line: 519, type: !126, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_irshift, variables: !680)
!680 = !{!681, !682}
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !679, file: !1, line: 519, type: !5)
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !679, file: !1, line: 519, type: !5)
!683 = !DISubprogram(name: "proxy_iand", scope: !1, file: !1, line: 520, type: !126, isLocal: true, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_iand, variables: !684)
!684 = !{!685, !686}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !683, file: !1, line: 520, type: !5)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !683, file: !1, line: 520, type: !5)
!687 = !DISubprogram(name: "proxy_ixor", scope: !1, file: !1, line: 521, type: !126, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ixor, variables: !688)
!688 = !{!689, !690}
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !687, file: !1, line: 521, type: !5)
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !687, file: !1, line: 521, type: !5)
!691 = !DISubprogram(name: "proxy_ior", scope: !1, file: !1, line: 522, type: !126, isLocal: true, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ior, variables: !692)
!692 = !{!693, !694}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !691, file: !1, line: 522, type: !5)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !691, file: !1, line: 522, type: !5)
!695 = !DISubprogram(name: "proxy_floor_div", scope: !1, file: !1, line: 495, type: !126, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_floor_div, variables: !696)
!696 = !{!697, !698}
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !695, file: !1, line: 495, type: !5)
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !695, file: !1, line: 495, type: !5)
!699 = !DISubprogram(name: "proxy_true_div", scope: !1, file: !1, line: 496, type: !126, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_true_div, variables: !700)
!700 = !{!701, !702}
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !699, file: !1, line: 496, type: !5)
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !699, file: !1, line: 496, type: !5)
!703 = !DISubprogram(name: "proxy_ifloor_div", scope: !1, file: !1, line: 514, type: !126, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ifloor_div, variables: !704)
!704 = !{!705, !706}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !703, file: !1, line: 514, type: !5)
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !703, file: !1, line: 514, type: !5)
!707 = !DISubprogram(name: "proxy_itrue_div", scope: !1, file: !1, line: 515, type: !126, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_itrue_div, variables: !708)
!708 = !{!709, !710}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !707, file: !1, line: 515, type: !5)
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !707, file: !1, line: 515, type: !5)
!711 = !DISubprogram(name: "proxy_index", scope: !1, file: !1, line: 523, type: !116, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_index, variables: !712)
!712 = !{!713}
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !711, file: !1, line: 523, type: !5)
!714 = !DISubprogram(name: "proxy_length", scope: !1, file: !1, line: 557, type: !373, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._PyWeakReference*)* @proxy_length, variables: !715)
!715 = !{!716}
!716 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !714, file: !1, line: 557, type: !351)
!717 = !DISubprogram(name: "proxy_contains", scope: !1, file: !1, line: 546, type: !718, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, %struct._object*)* @proxy_contains, variables: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!44, !351, !5}
!720 = !{!721, !722}
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !717, file: !1, line: 546, type: !351)
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !717, file: !1, line: 546, type: !5)
!723 = !DISubprogram(name: "proxy_getitem", scope: !1, file: !1, line: 564, type: !126, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_getitem, variables: !724)
!724 = !{!725, !726}
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !723, file: !1, line: 564, type: !5)
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !723, file: !1, line: 564, type: !5)
!727 = !DISubprogram(name: "proxy_setitem", scope: !1, file: !1, line: 567, type: !728, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setitem, variables: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!44, !351, !5, !5}
!730 = !{!731, !732, !733}
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !727, file: !1, line: 567, type: !351)
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !727, file: !1, line: 567, type: !5)
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !727, file: !1, line: 567, type: !5)
!734 = !DISubprogram(name: "proxy_str", scope: !1, file: !1, line: 461, type: !116, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_str, variables: !735)
!735 = !{!736}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !734, file: !1, line: 461, type: !5)
!737 = !DISubprogram(name: "proxy_getattr", scope: !1, file: !1, line: 460, type: !126, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_getattr, variables: !738)
!738 = !{!739, !740}
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !737, file: !1, line: 460, type: !5)
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !737, file: !1, line: 460, type: !5)
!741 = !DISubprogram(name: "proxy_setattr", scope: !1, file: !1, line: 476, type: !728, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setattr, variables: !742)
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !741, file: !1, line: 476, type: !351)
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !741, file: !1, line: 476, type: !5)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !741, file: !1, line: 476, type: !5)
!746 = !DISubprogram(name: "proxy_richcompare", scope: !1, file: !1, line: 484, type: !271, isLocal: true, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @proxy_richcompare, variables: !747)
!747 = !{!748, !749, !750}
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !746, file: !1, line: 484, type: !5)
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !746, file: !1, line: 484, type: !5)
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !746, file: !1, line: 484, type: !44)
!751 = !DISubprogram(name: "proxy_iter", scope: !1, file: !1, line: 581, type: !480, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @proxy_iter, variables: !752)
!752 = !{!753}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !751, file: !1, line: 581, type: !351)
!754 = !DISubprogram(name: "proxy_iternext", scope: !1, file: !1, line: 589, type: !480, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @proxy_iternext, variables: !755)
!755 = !{!756}
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !754, file: !1, line: 589, type: !351)
!757 = !DISubprogram(name: "proxy_bytes", scope: !1, file: !1, line: 597, type: !116, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_bytes, variables: !758)
!758 = !{!759}
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !757, file: !1, line: 597, type: !5)
!760 = !DISubprogram(name: "proxy_call", scope: !1, file: !1, line: 462, type: !135, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_call, variables: !761)
!761 = !{!762, !763, !764}
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !760, file: !1, line: 462, type: !5)
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !760, file: !1, line: 462, type: !5)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !760, file: !1, line: 462, type: !5)
!765 = !DISubprogram(name: "get_basic_refs", scope: !1, file: !1, line: 218, type: !766, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, variables: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !351, !350, !350}
!768 = !{!769, !770, !771}
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 1, scope: !765, file: !1, line: 218, type: !351)
!770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "refp", arg: 2, scope: !765, file: !1, line: 219, type: !350)
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxyp", arg: 3, scope: !765, file: !1, line: 219, type: !350)
!772 = !DISubprogram(name: "new_weakref", scope: !1, file: !1, line: 32, type: !773, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, variables: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!351, !5, !5}
!775 = !{!776, !777, !778}
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 1, scope: !772, file: !1, line: 32, type: !5)
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !772, file: !1, line: 32, type: !5)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !772, file: !1, line: 34, type: !351)
!779 = !DISubprogram(name: "insert_head", scope: !1, file: !1, line: 256, type: !780, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, variables: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !351, !350}
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newref", arg: 1, scope: !779, file: !1, line: 256, type: !351)
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !779, file: !1, line: 256, type: !350)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !779, file: !1, line: 258, type: !351)
!786 = !DISubprogram(name: "insert_after", scope: !1, file: !1, line: 243, type: !787, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, variables: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !351, !351}
!789 = !{!790, !791}
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newref", arg: 1, scope: !786, file: !1, line: 243, type: !351)
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prev", arg: 2, scope: !786, file: !1, line: 243, type: !351)
!792 = !DISubprogram(name: "handle_callback", scope: !1, file: !1, line: 866, type: !793, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, variables: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !351, !5}
!795 = !{!796, !797, !798, !799}
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !792, file: !1, line: 866, type: !351)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !792, file: !1, line: 866, type: !5)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbresult", scope: !792, file: !1, line: 868, type: !5)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !800, file: !1, line: 873, type: !5)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 873, column: 9)
!801 = distinct !DILexicalBlock(scope: !792, file: !1, line: 870, column: 9)
!802 = !{!803, !804, !805, !806, !814, !816, !821, !822, !823, !824, !827}
!803 = !DIGlobalVariable(name: "_PyWeakref_RefType", scope: !0, file: !1, line: 347, type: !551, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyWeakref_RefType)
!804 = !DIGlobalVariable(name: "_PyWeakref_ProxyType", scope: !0, file: !1, line: 662, type: !551, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyWeakref_ProxyType)
!805 = !DIGlobalVariable(name: "_PyWeakref_CallableProxyType", scope: !0, file: !1, line: 696, type: !551, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyWeakref_CallableProxyType)
!806 = !DIGlobalVariable(name: "PyId___name__", scope: !479, file: !1, line: 159, type: !807, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @weakref_repr.PyId___name__)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !808)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !809)
!809 = !{!810, !812, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !7, line: 141, baseType: !811, size: 64, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !808, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !808, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!814 = !DIGlobalVariable(name: "kwlist", scope: !496, file: !1, line: 130, type: !815, isLocal: true, isDefinition: true, variable: [1 x i8*]* @weakref_call.kwlist)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, align: 64, elements: !82)
!816 = !DIGlobalVariable(name: "weakref_members", scope: !0, file: !1, line: 341, type: !817, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @weakref_members)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 640, align: 64, elements: !819)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!819 = !{!820}
!820 = !DISubrange(count: 2)
!821 = !DIGlobalVariable(name: "proxy_as_number", scope: !0, file: !1, line: 606, type: !120, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @proxy_as_number)
!822 = !DIGlobalVariable(name: "proxy_as_sequence", scope: !0, file: !1, line: 643, type: !172, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @proxy_as_sequence)
!823 = !DIGlobalVariable(name: "proxy_as_mapping", scope: !0, file: !1, line: 654, type: !203, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @proxy_as_mapping)
!824 = !DIGlobalVariable(name: "proxy_methods", scope: !0, file: !1, line: 600, type: !825, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @proxy_methods)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 512, align: 64, elements: !819)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!827 = !DIGlobalVariable(name: "PyId___bytes__", scope: !757, file: !1, line: 597, type: !807, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @proxy_bytes.PyId___bytes__)
!828 = !{i32 2, !"Dwarf Version", i32 4}
!829 = !{i32 2, !"Debug Info Version", i32 3}
!830 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!831 = !DIExpression()
!832 = !DILocation(line: 10, column: 45, scope: !372)
!833 = !DILocation(line: 12, column: 16, scope: !372)
!834 = !DILocation(line: 14, column: 17, scope: !372)
!835 = !DILocation(line: 14, column: 5, scope: !372)
!836 = !DILocation(line: 15, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !372, file: !1, line: 14, column: 26)
!838 = !DILocation(line: 16, column: 22, scope: !837)
!839 = !{!840, !845, i64 48}
!840 = !{!"_PyWeakReference", !841, i64 0, !845, i64 16, !845, i64 24, !842, i64 32, !845, i64 40, !845, i64 48}
!841 = !{!"_object", !842, i64 0, !845, i64 8}
!842 = !{!"long", !843, i64 0}
!843 = !{!"omnipotent char", !844, i64 0}
!844 = !{!"Simple C/C++ TBAA"}
!845 = !{!"any pointer", !843, i64 0}
!846 = !DILocation(line: 18, column: 5, scope: !372)
!847 = !DILocation(line: 89, column: 38, scope: !378)
!848 = !DILocation(line: 96, column: 22, scope: !378)
!849 = !{!840, !845, i64 24}
!850 = !DILocation(line: 97, column: 23, scope: !378)
!851 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !852)
!852 = distinct !DILocation(line: 98, column: 5, scope: !378)
!853 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !852)
!854 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !852)
!855 = !{!840, !845, i64 16}
!856 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !852)
!857 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !852)
!858 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !852)
!859 = !{!841, !845, i64 8}
!860 = !{!861, !842, i64 208}
!861 = !{!"_typeobject", !862, i64 0, !845, i64 24, !842, i64 32, !842, i64 40, !845, i64 48, !845, i64 56, !845, i64 64, !845, i64 72, !845, i64 80, !845, i64 88, !845, i64 96, !845, i64 104, !845, i64 112, !845, i64 120, !845, i64 128, !845, i64 136, !845, i64 144, !845, i64 152, !845, i64 160, !842, i64 168, !845, i64 176, !845, i64 184, !845, i64 192, !845, i64 200, !842, i64 208, !845, i64 216, !845, i64 224, !845, i64 232, !845, i64 240, !845, i64 248, !845, i64 256, !845, i64 264, !845, i64 272, !845, i64 280, !842, i64 288, !845, i64 296, !845, i64 304, !845, i64 312, !845, i64 320, !845, i64 328, !845, i64 336, !845, i64 344, !845, i64 352, !845, i64 360, !845, i64 368, !845, i64 376, !863, i64 384, !845, i64 392}
!862 = !{!"", !841, i64 0, !842, i64 16}
!863 = !{!"int", !843, i64 0}
!864 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !852)
!865 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !852)
!866 = distinct !DILexicalBlock(scope: !470, file: !1, line: 58, column: 13)
!867 = !{!845, !845, i64 0}
!868 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !852)
!869 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !852)
!870 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !852)
!871 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !852)
!872 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !852)
!873 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !852)
!874 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !852)
!875 = distinct !DILexicalBlock(scope: !470, file: !1, line: 64, column: 13)
!876 = !{!840, !845, i64 40}
!877 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !852)
!878 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !852)
!879 = distinct !DILexicalBlock(scope: !470, file: !1, line: 66, column: 13)
!880 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !852)
!881 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !852)
!882 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !852)
!883 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !852)
!884 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !852)
!885 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !852)
!886 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !852)
!887 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !852)
!888 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !852)
!889 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !852)
!890 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !852)
!891 = !DILocation(line: 68, column: 23, scope: !470, inlinedAt: !852)
!892 = !DILocation(line: 70, column: 5, scope: !470, inlinedAt: !852)
!893 = !DILocation(line: 99, column: 23, scope: !378)
!894 = !DILocation(line: 100, column: 1, scope: !378)
!895 = !DILocation(line: 103, column: 27, scope: !476)
!896 = !DILocation(line: 105, column: 25, scope: !476)
!897 = !DILocation(line: 105, column: 5, scope: !476)
!898 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !899)
!899 = distinct !DILocation(line: 106, column: 5, scope: !476)
!900 = !DILocation(line: 53, column: 32, scope: !465, inlinedAt: !899)
!901 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !899)
!902 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !899)
!903 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !899)
!904 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !899)
!905 = !DILocation(line: 106, column: 19, scope: !476)
!906 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !899)
!907 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !899)
!908 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !899)
!909 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !899)
!910 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !899)
!911 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !899)
!912 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !899)
!913 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !899)
!914 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !899)
!915 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !899)
!916 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !899)
!917 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !899)
!918 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !899)
!919 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !899)
!920 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !899)
!921 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !899)
!922 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !899)
!923 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !899)
!924 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !899)
!925 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !899)
!926 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !899)
!927 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !899)
!928 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !899)
!929 = !DILocation(line: 70, column: 5, scope: !470, inlinedAt: !899)
!930 = !DILocation(line: 69, column: 23, scope: !470, inlinedAt: !899)
!931 = !DILocation(line: 71, column: 18, scope: !475, inlinedAt: !899)
!932 = !DILocation(line: 71, column: 9, scope: !465, inlinedAt: !899)
!933 = !DILocation(line: 72, column: 9, scope: !934, inlinedAt: !899)
!934 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 1)
!935 = !DILocation(line: 72, column: 9, scope: !936, inlinedAt: !899)
!936 = distinct !DILexicalBlock(scope: !473, file: !1, line: 72, column: 9)
!937 = !{!841, !842, i64 0}
!938 = !DILocation(line: 72, column: 9, scope: !473, inlinedAt: !899)
!939 = !DILocation(line: 72, column: 9, scope: !940, inlinedAt: !899)
!940 = !DILexicalBlockFile(scope: !936, file: !1, discriminator: 3)
!941 = !{!861, !845, i64 48}
!942 = !DILocation(line: 106, column: 5, scope: !476)
!943 = !DILocation(line: 73, column: 27, scope: !474, inlinedAt: !899)
!944 = !DILocation(line: 74, column: 5, scope: !474, inlinedAt: !899)
!945 = !DILocation(line: 107, column: 5, scope: !476)
!946 = !DILocation(line: 107, column: 20, scope: !476)
!947 = !{!861, !845, i64 320}
!948 = !DILocation(line: 108, column: 1, scope: !476)
!949 = !DILocation(line: 156, column: 31, scope: !479)
!950 = !DILocation(line: 161, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !479, file: !1, line: 161, column: 9)
!952 = !DILocation(line: 161, column: 9, scope: !953)
!953 = !DILexicalBlockFile(scope: !951, file: !1, discriminator: 1)
!954 = !DILocation(line: 161, column: 9, scope: !479)
!955 = !DILocation(line: 162, column: 16, scope: !951)
!956 = !DILocation(line: 162, column: 9, scope: !951)
!957 = !DILocation(line: 164, column: 32, scope: !479)
!958 = !DILocation(line: 164, column: 12, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !1, discriminator: 4)
!960 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 3)
!961 = !DILocation(line: 158, column: 15, scope: !479)
!962 = !DILocation(line: 165, column: 14, scope: !963)
!963 = distinct !DILexicalBlock(scope: !479, file: !1, line: 165, column: 9)
!964 = !DILocation(line: 165, column: 22, scope: !963)
!965 = !DILocation(line: 165, column: 26, scope: !966)
!966 = !DILexicalBlockFile(scope: !963, file: !1, discriminator: 1)
!967 = !{!861, !842, i64 168}
!968 = !DILocation(line: 165, column: 9, scope: !479)
!969 = !DILocation(line: 167, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 166, column: 13)
!971 = distinct !DILexicalBlock(scope: !963, file: !1, line: 165, column: 49)
!972 = !DILocation(line: 178, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !963, file: !1, line: 174, column: 10)
!974 = !DILocation(line: 178, column: 13, scope: !975)
!975 = !DILexicalBlockFile(scope: !976, file: !1, discriminator: 4)
!976 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 3)
!977 = !DILocation(line: 178, column: 50, scope: !973)
!978 = !{!861, !845, i64 24}
!979 = !DILocation(line: 175, column: 16, scope: !973)
!980 = !DILocation(line: 158, column: 22, scope: !479)
!981 = !DILocation(line: 182, column: 5, scope: !982)
!982 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 1)
!983 = !DILocation(line: 182, column: 5, scope: !487)
!984 = !DILocation(line: 171, column: 13, scope: !971)
!985 = !DILocation(line: 171, column: 13, scope: !986)
!986 = !DILexicalBlockFile(scope: !987, file: !1, discriminator: 4)
!987 = !DILexicalBlockFile(scope: !971, file: !1, discriminator: 3)
!988 = !DILocation(line: 171, column: 50, scope: !971)
!989 = !DILocation(line: 168, column: 16, scope: !971)
!990 = !DILocation(line: 182, column: 5, scope: !991)
!991 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 4)
!992 = !DILocation(line: 182, column: 5, scope: !993)
!993 = distinct !DILexicalBlock(scope: !489, file: !1, line: 182, column: 5)
!994 = !DILocation(line: 182, column: 5, scope: !489)
!995 = !DILocation(line: 182, column: 5, scope: !996)
!996 = !DILexicalBlockFile(scope: !993, file: !1, discriminator: 6)
!997 = !DILocation(line: 184, column: 1, scope: !479)
!998 = !DILocation(line: 142, column: 31, scope: !491)
!999 = !DILocation(line: 144, column: 15, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !491, file: !1, line: 144, column: 9)
!1001 = !{!840, !842, i64 32}
!1002 = !DILocation(line: 144, column: 20, scope: !1000)
!1003 = !DILocation(line: 144, column: 9, scope: !491)
!1004 = !DILocation(line: 146, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !491, file: !1, line: 146, column: 9)
!1006 = !DILocation(line: 146, column: 9, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 1)
!1008 = !DILocation(line: 146, column: 9, scope: !491)
!1009 = !DILocation(line: 147, column: 25, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 146, column: 48)
!1011 = !DILocation(line: 147, column: 9, scope: !1010)
!1012 = !DILocation(line: 148, column: 9, scope: !1010)
!1013 = !DILocation(line: 150, column: 32, scope: !491)
!1014 = !DILocation(line: 150, column: 18, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1016, file: !1, discriminator: 4)
!1016 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 3)
!1017 = !DILocation(line: 150, column: 16, scope: !491)
!1018 = !DILocation(line: 151, column: 5, scope: !491)
!1019 = !DILocation(line: 152, column: 1, scope: !491)
!1020 = !DILocation(line: 128, column: 31, scope: !496)
!1021 = !DILocation(line: 128, column: 47, scope: !496)
!1022 = !DILocation(line: 128, column: 63, scope: !496)
!1023 = !DILocation(line: 132, column: 9, scope: !505)
!1024 = !DILocation(line: 132, column: 9, scope: !496)
!1025 = !DILocation(line: 133, column: 28, scope: !504)
!1026 = !DILocation(line: 133, column: 19, scope: !504)
!1027 = !DILocation(line: 134, column: 9, scope: !504)
!1028 = !DILocation(line: 138, column: 1, scope: !496)
!1029 = !DILocation(line: 112, column: 30, scope: !506)
!1030 = !DILocation(line: 112, column: 46, scope: !506)
!1031 = !DILocation(line: 112, column: 59, scope: !506)
!1032 = !DILocation(line: 114, column: 5, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !515, file: !1, discriminator: 1)
!1034 = !DILocation(line: 114, column: 5, scope: !516)
!1035 = !DILocation(line: 114, column: 5, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 2)
!1037 = !DILocation(line: 114, column: 5, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !514, file: !1, line: 114, column: 5)
!1039 = !DILocation(line: 115, column: 5, scope: !506)
!1040 = !DILocation(line: 116, column: 1, scope: !506)
!1041 = !DILocation(line: 120, column: 27, scope: !517)
!1042 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 122, column: 5, scope: !517)
!1044 = !DILocation(line: 53, column: 32, scope: !465, inlinedAt: !1043)
!1045 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !1043)
!1046 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !1043)
!1047 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !1043)
!1048 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !1043)
!1049 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !1043)
!1050 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !1043)
!1051 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !1043)
!1052 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !1043)
!1053 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !1043)
!1054 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !1043)
!1055 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !1043)
!1056 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !1043)
!1057 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !1043)
!1058 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !1043)
!1059 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !1043)
!1060 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !1043)
!1061 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !1043)
!1062 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !1043)
!1063 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !1043)
!1064 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !1043)
!1065 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !1043)
!1066 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !1043)
!1067 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !1043)
!1068 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !1043)
!1069 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !1043)
!1070 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !1043)
!1071 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !1043)
!1072 = !DILocation(line: 68, column: 23, scope: !470, inlinedAt: !1043)
!1073 = !DILocation(line: 70, column: 5, scope: !470, inlinedAt: !1043)
!1074 = !DILocation(line: 71, column: 18, scope: !475, inlinedAt: !1043)
!1075 = !DILocation(line: 71, column: 9, scope: !465, inlinedAt: !1043)
!1076 = !DILocation(line: 72, column: 9, scope: !934, inlinedAt: !1043)
!1077 = !DILocation(line: 72, column: 9, scope: !936, inlinedAt: !1043)
!1078 = !DILocation(line: 72, column: 9, scope: !473, inlinedAt: !1043)
!1079 = !DILocation(line: 72, column: 9, scope: !940, inlinedAt: !1043)
!1080 = !DILocation(line: 122, column: 5, scope: !517)
!1081 = !DILocation(line: 73, column: 27, scope: !474, inlinedAt: !1043)
!1082 = !DILocation(line: 74, column: 5, scope: !474, inlinedAt: !1043)
!1083 = !DILocation(line: 123, column: 5, scope: !517)
!1084 = !DILocation(line: 191, column: 38, scope: !522)
!1085 = !DILocation(line: 191, column: 61, scope: !522)
!1086 = !DILocation(line: 191, column: 72, scope: !522)
!1087 = !DILocation(line: 193, column: 22, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !522, file: !1, line: 193, column: 9)
!1089 = !DILocation(line: 194, column: 10, scope: !1088)
!1090 = !DILocation(line: 194, column: 10, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1088, file: !1, discriminator: 1)
!1092 = !DILocation(line: 194, column: 10, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1088, file: !1, discriminator: 2)
!1094 = !DILocation(line: 194, column: 10, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1088, file: !1, discriminator: 3)
!1096 = !DILocation(line: 195, column: 10, scope: !1088)
!1097 = !DILocation(line: 195, column: 10, scope: !1091)
!1098 = !DILocation(line: 195, column: 10, scope: !1093)
!1099 = !DILocation(line: 195, column: 10, scope: !1095)
!1100 = !DILocation(line: 196, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 195, column: 34)
!1102 = !DILocation(line: 198, column: 9, scope: !531)
!1103 = !DILocation(line: 198, column: 9, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!1105 = !DILocation(line: 199, column: 9, scope: !531)
!1106 = !DILocation(line: 199, column: 12, scope: !1104)
!1107 = !DILocation(line: 199, column: 12, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 2)
!1109 = !DILocation(line: 198, column: 9, scope: !522)
!1110 = !DILocation(line: 200, column: 25, scope: !530)
!1111 = !DILocation(line: 201, column: 16, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !530, file: !1, line: 201, column: 13)
!1113 = !DILocation(line: 201, column: 13, scope: !530)
!1114 = !DILocation(line: 203, column: 13, scope: !530)
!1115 = !DILocation(line: 204, column: 13, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !530, file: !1, line: 203, column: 13)
!1117 = !DILocation(line: 206, column: 13, scope: !1116)
!1118 = !DILocation(line: 208, column: 33, scope: !522)
!1119 = !DILocation(line: 209, column: 33, scope: !522)
!1120 = !DILocation(line: 208, column: 12, scope: !522)
!1121 = !DILocation(line: 208, column: 5, scope: !522)
!1122 = !DILocation(line: 210, column: 1, scope: !522)
!1123 = !DILocation(line: 330, column: 28, scope: !532)
!1124 = !DILocation(line: 330, column: 44, scope: !532)
!1125 = !DILocation(line: 330, column: 60, scope: !532)
!1126 = !DILocation(line: 332, column: 5, scope: !532)
!1127 = !DILocation(line: 332, column: 15, scope: !532)
!1128 = !DILocation(line: 268, column: 67, scope: !538, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 334, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !532, file: !1, line: 334, column: 9)
!1131 = !DILocation(line: 272, column: 12, scope: !538, inlinedAt: !1129)
!1132 = !DILocation(line: 334, column: 9, scope: !1130)
!1133 = !DILocation(line: 337, column: 9, scope: !1130)
!1134 = !DILocation(line: 338, column: 1, scope: !532)
!1135 = !DILocation(line: 276, column: 31, scope: !547)
!1136 = !DILocation(line: 276, column: 47, scope: !547)
!1137 = !DILocation(line: 276, column: 63, scope: !547)
!1138 = !DILocation(line: 278, column: 22, scope: !547)
!1139 = !DILocation(line: 279, column: 5, scope: !547)
!1140 = !DILocation(line: 279, column: 20, scope: !547)
!1141 = !DILocation(line: 279, column: 15, scope: !547)
!1142 = !DILocation(line: 268, column: 67, scope: !538, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 281, column: 9, scope: !561)
!1144 = !DILocation(line: 272, column: 12, scope: !538, inlinedAt: !1143)
!1145 = !DILocation(line: 281, column: 9, scope: !561)
!1146 = !DILocation(line: 281, column: 9, scope: !547)
!1147 = !DILocation(line: 293, column: 16, scope: !560)
!1148 = !DILocation(line: 285, column: 14, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !560, file: !1, line: 285, column: 13)
!1150 = !DILocation(line: 285, column: 13, scope: !560)
!1151 = !DILocation(line: 286, column: 26, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 285, column: 53)
!1153 = !DILocation(line: 288, column: 39, scope: !1152)
!1154 = !DILocation(line: 286, column: 13, scope: !1152)
!1155 = !DILocation(line: 289, column: 13, scope: !1152)
!1156 = !DILocation(line: 291, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !560, file: !1, line: 291, column: 13)
!1158 = !DILocation(line: 291, column: 22, scope: !1157)
!1159 = !DILocation(line: 291, column: 13, scope: !560)
!1160 = !DILocation(line: 292, column: 22, scope: !1157)
!1161 = !DILocation(line: 292, column: 13, scope: !1157)
!1162 = !DILocation(line: 295, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !560, file: !1, line: 295, column: 13)
!1164 = !DILocation(line: 283, column: 27, scope: !560)
!1165 = !DILocation(line: 294, column: 24, scope: !560)
!1166 = !DILocation(line: 218, column: 33, scope: !765, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 294, column: 9, scope: !560)
!1168 = !DILocation(line: 219, column: 34, scope: !765, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 317, column: 17, scope: !565)
!1170 = !DILocation(line: 219, column: 34, scope: !765, inlinedAt: !1167)
!1171 = !DILocation(line: 282, column: 26, scope: !560)
!1172 = !DILocation(line: 219, column: 58, scope: !765, inlinedAt: !1169)
!1173 = !DILocation(line: 219, column: 58, scope: !765, inlinedAt: !1167)
!1174 = !DILocation(line: 282, column: 32, scope: !560)
!1175 = !DILocation(line: 224, column: 14, scope: !1176, inlinedAt: !1167)
!1176 = distinct !DILexicalBlock(scope: !765, file: !1, line: 224, column: 9)
!1177 = !DILocation(line: 224, column: 22, scope: !1176, inlinedAt: !1167)
!1178 = !DILocation(line: 224, column: 31, scope: !1176, inlinedAt: !1167)
!1179 = !DILocation(line: 224, column: 43, scope: !1176, inlinedAt: !1167)
!1180 = !DILocation(line: 224, column: 9, scope: !765, inlinedAt: !1167)
!1181 = !DILocation(line: 228, column: 13, scope: !1182, inlinedAt: !1167)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 228, column: 13)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 224, column: 52)
!1184 = !DILocation(line: 228, column: 13, scope: !1183, inlinedAt: !1167)
!1185 = !DILocation(line: 295, column: 22, scope: !1163)
!1186 = !DILocation(line: 295, column: 38, scope: !1163)
!1187 = !DILocation(line: 295, column: 30, scope: !1163)
!1188 = !DILocation(line: 296, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 296, column: 17)
!1190 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 295, column: 62)
!1191 = !DILocation(line: 298, column: 17, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 296, column: 30)
!1193 = !DILocation(line: 299, column: 36, scope: !1192)
!1194 = !DILocation(line: 299, column: 17, scope: !1192)
!1195 = !DILocation(line: 308, column: 43, scope: !560)
!1196 = !{!861, !845, i64 304}
!1197 = !DILocation(line: 308, column: 37, scope: !560)
!1198 = !DILocation(line: 308, column: 16, scope: !560)
!1199 = !DILocation(line: 309, column: 18, scope: !568)
!1200 = !DILocation(line: 309, column: 13, scope: !560)
!1201 = !DILocation(line: 310, column: 32, scope: !567)
!1202 = !DILocation(line: 310, column: 36, scope: !567)
!1203 = !DILocation(line: 23, column: 31, scope: !569, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 310, column: 13, scope: !567)
!1205 = !DILocation(line: 23, column: 61, scope: !569, inlinedAt: !1204)
!1206 = !DILocation(line: 25, column: 11, scope: !569, inlinedAt: !1204)
!1207 = !DILocation(line: 25, column: 16, scope: !569, inlinedAt: !1204)
!1208 = !DILocation(line: 26, column: 21, scope: !569, inlinedAt: !1204)
!1209 = !DILocation(line: 27, column: 5, scope: !1210, inlinedAt: !1204)
!1210 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!1211 = !DILocation(line: 27, column: 5, scope: !1212, inlinedAt: !1204)
!1212 = distinct !DILexicalBlock(scope: !577, file: !1, line: 27, column: 5)
!1213 = !DILocation(line: 27, column: 5, scope: !577, inlinedAt: !1204)
!1214 = !DILocation(line: 27, column: 5, scope: !1215, inlinedAt: !1204)
!1215 = !DILexicalBlockFile(scope: !1212, file: !1, discriminator: 2)
!1216 = !DILocation(line: 28, column: 11, scope: !569, inlinedAt: !1204)
!1217 = !DILocation(line: 28, column: 23, scope: !569, inlinedAt: !1204)
!1218 = !DILocation(line: 311, column: 17, scope: !566)
!1219 = !DILocation(line: 311, column: 26, scope: !566)
!1220 = !DILocation(line: 311, column: 34, scope: !566)
!1221 = !DILocation(line: 258, column: 29, scope: !779, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 320, column: 21, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !565, file: !1, line: 319, column: 21)
!1224 = !DILocation(line: 256, column: 30, scope: !779, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 312, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !566, file: !1, line: 311, column: 66)
!1227 = !DILocation(line: 256, column: 56, scope: !779, inlinedAt: !1225)
!1228 = !DILocation(line: 258, column: 22, scope: !779, inlinedAt: !1225)
!1229 = !DILocation(line: 260, column: 13, scope: !779, inlinedAt: !1225)
!1230 = !DILocation(line: 260, column: 21, scope: !779, inlinedAt: !1225)
!1231 = !DILocation(line: 261, column: 13, scope: !779, inlinedAt: !1225)
!1232 = !DILocation(line: 261, column: 21, scope: !779, inlinedAt: !1225)
!1233 = !DILocation(line: 262, column: 14, scope: !1234, inlinedAt: !1225)
!1234 = distinct !DILexicalBlock(scope: !779, file: !1, line: 262, column: 9)
!1235 = !DILocation(line: 262, column: 9, scope: !779, inlinedAt: !1225)
!1236 = !DILocation(line: 263, column: 15, scope: !1234, inlinedAt: !1225)
!1237 = !DILocation(line: 263, column: 23, scope: !1234, inlinedAt: !1225)
!1238 = !DILocation(line: 263, column: 9, scope: !1234, inlinedAt: !1225)
!1239 = !DILocation(line: 264, column: 11, scope: !779, inlinedAt: !1225)
!1240 = !DILocation(line: 313, column: 13, scope: !1226)
!1241 = !DILocation(line: 218, column: 33, scope: !765, inlinedAt: !1169)
!1242 = !DILocation(line: 224, column: 14, scope: !1176, inlinedAt: !1169)
!1243 = !DILocation(line: 224, column: 22, scope: !1176, inlinedAt: !1169)
!1244 = !DILocation(line: 224, column: 31, scope: !1176, inlinedAt: !1169)
!1245 = !DILocation(line: 224, column: 43, scope: !1176, inlinedAt: !1169)
!1246 = !DILocation(line: 224, column: 9, scope: !765, inlinedAt: !1169)
!1247 = !DILocation(line: 228, column: 13, scope: !1182, inlinedAt: !1169)
!1248 = !DILocation(line: 228, column: 13, scope: !1183, inlinedAt: !1169)
!1249 = !DILocation(line: 230, column: 26, scope: !1250, inlinedAt: !1169)
!1250 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 228, column: 44)
!1251 = !DILocation(line: 232, column: 18, scope: !1252, inlinedAt: !1169)
!1252 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 232, column: 13)
!1253 = !DILocation(line: 233, column: 13, scope: !1252, inlinedAt: !1169)
!1254 = !DILocation(line: 233, column: 22, scope: !1252, inlinedAt: !1169)
!1255 = !DILocation(line: 234, column: 13, scope: !1252, inlinedAt: !1169)
!1256 = !DILocation(line: 234, column: 16, scope: !1257, inlinedAt: !1169)
!1257 = !DILexicalBlockFile(scope: !1252, file: !1, discriminator: 1)
!1258 = !DILocation(line: 317, column: 17, scope: !565)
!1259 = !DILocation(line: 234, column: 16, scope: !1260, inlinedAt: !1169)
!1260 = !DILexicalBlockFile(scope: !1252, file: !1, discriminator: 2)
!1261 = !DILocation(line: 318, column: 31, scope: !565)
!1262 = !DILocation(line: 318, column: 24, scope: !565)
!1263 = !DILocation(line: 315, column: 34, scope: !565)
!1264 = !DILocation(line: 319, column: 26, scope: !1223)
!1265 = !DILocation(line: 260, column: 13, scope: !779, inlinedAt: !1222)
!1266 = !DILocation(line: 319, column: 21, scope: !565)
!1267 = !DILocation(line: 256, column: 30, scope: !779, inlinedAt: !1222)
!1268 = !DILocation(line: 256, column: 56, scope: !779, inlinedAt: !1222)
!1269 = !DILocation(line: 258, column: 22, scope: !779, inlinedAt: !1222)
!1270 = !DILocation(line: 260, column: 21, scope: !779, inlinedAt: !1222)
!1271 = !DILocation(line: 261, column: 13, scope: !779, inlinedAt: !1222)
!1272 = !DILocation(line: 261, column: 21, scope: !779, inlinedAt: !1222)
!1273 = !DILocation(line: 262, column: 9, scope: !779, inlinedAt: !1222)
!1274 = !DILocation(line: 263, column: 15, scope: !1234, inlinedAt: !1222)
!1275 = !DILocation(line: 263, column: 23, scope: !1234, inlinedAt: !1222)
!1276 = !DILocation(line: 263, column: 9, scope: !1234, inlinedAt: !1222)
!1277 = !DILocation(line: 264, column: 11, scope: !779, inlinedAt: !1222)
!1278 = !DILocation(line: 320, column: 21, scope: !1223)
!1279 = !DILocation(line: 243, column: 31, scope: !786, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 322, column: 21, scope: !1223)
!1281 = !DILocation(line: 243, column: 56, scope: !786, inlinedAt: !1280)
!1282 = !DILocation(line: 245, column: 21, scope: !786, inlinedAt: !1280)
!1283 = !DILocation(line: 246, column: 29, scope: !786, inlinedAt: !1280)
!1284 = !DILocation(line: 246, column: 21, scope: !786, inlinedAt: !1280)
!1285 = !DILocation(line: 247, column: 15, scope: !1286, inlinedAt: !1280)
!1286 = distinct !DILexicalBlock(scope: !786, file: !1, line: 247, column: 9)
!1287 = !DILocation(line: 247, column: 23, scope: !1286, inlinedAt: !1280)
!1288 = !DILocation(line: 247, column: 9, scope: !786, inlinedAt: !1280)
!1289 = !DILocation(line: 248, column: 24, scope: !1286, inlinedAt: !1280)
!1290 = !DILocation(line: 248, column: 32, scope: !1286, inlinedAt: !1280)
!1291 = !DILocation(line: 248, column: 9, scope: !1286, inlinedAt: !1280)
!1292 = !DILocation(line: 249, column: 19, scope: !786, inlinedAt: !1280)
!1293 = !DILocation(line: 326, column: 12, scope: !547)
!1294 = !DILocation(line: 326, column: 5, scope: !547)
!1295 = !DILocation(line: 327, column: 1, scope: !547)
!1296 = !DILocation(line: 535, column: 32, scope: !578)
!1297 = !DILocation(line: 537, column: 15, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !578, file: !1, line: 537, column: 9)
!1299 = !DILocation(line: 537, column: 27, scope: !1298)
!1300 = !DILocation(line: 537, column: 9, scope: !578)
!1301 = !DILocation(line: 538, column: 29, scope: !1298)
!1302 = !DILocation(line: 538, column: 9, scope: !1298)
!1303 = !DILocation(line: 53, column: 32, scope: !465, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 539, column: 5, scope: !578)
!1305 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !1304)
!1306 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !1304)
!1307 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !1304)
!1308 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !1304)
!1309 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !1304)
!1310 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !1304)
!1311 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !1304)
!1312 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !1304)
!1313 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !1304)
!1314 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !1304)
!1315 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !1304)
!1316 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !1304)
!1317 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !1304)
!1318 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !1304)
!1319 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !1304)
!1320 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !1304)
!1321 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !1304)
!1322 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !1304)
!1323 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !1304)
!1324 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !1304)
!1325 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !1304)
!1326 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !1304)
!1327 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !1304)
!1328 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !1304)
!1329 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !1304)
!1330 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !1304)
!1331 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !1304)
!1332 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !1304)
!1333 = !DILocation(line: 68, column: 23, scope: !470, inlinedAt: !1304)
!1334 = !DILocation(line: 70, column: 5, scope: !470, inlinedAt: !1304)
!1335 = !DILocation(line: 71, column: 18, scope: !475, inlinedAt: !1304)
!1336 = !DILocation(line: 71, column: 9, scope: !465, inlinedAt: !1304)
!1337 = !DILocation(line: 72, column: 9, scope: !934, inlinedAt: !1304)
!1338 = !DILocation(line: 72, column: 9, scope: !936, inlinedAt: !1304)
!1339 = !DILocation(line: 72, column: 9, scope: !473, inlinedAt: !1304)
!1340 = !DILocation(line: 72, column: 9, scope: !940, inlinedAt: !1304)
!1341 = !DILocation(line: 539, column: 5, scope: !578)
!1342 = !DILocation(line: 73, column: 27, scope: !474, inlinedAt: !1304)
!1343 = !DILocation(line: 74, column: 5, scope: !474, inlinedAt: !1304)
!1344 = !DILocation(line: 540, column: 21, scope: !578)
!1345 = !DILocation(line: 540, column: 5, scope: !578)
!1346 = !DILocation(line: 541, column: 1, scope: !578)
!1347 = !DILocation(line: 465, column: 29, scope: !581)
!1348 = !DILocation(line: 470, column: 9, scope: !581)
!1349 = !DILocation(line: 470, column: 9, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !1, discriminator: 4)
!1351 = !DILexicalBlockFile(scope: !581, file: !1, discriminator: 3)
!1352 = !DILocation(line: 470, column: 47, scope: !581)
!1353 = !DILocation(line: 467, column: 12, scope: !581)
!1354 = !DILocation(line: 467, column: 5, scope: !581)
!1355 = !DILocation(line: 461, column: 1, scope: !734)
!1356 = !DILocation(line: 461, column: 1, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !734, file: !1, line: 461, column: 1)
!1358 = !DILocation(line: 461, column: 1, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1357, file: !1, discriminator: 2)
!1360 = !DILocation(line: 461, column: 1, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !1, discriminator: 5)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 461, column: 1)
!1363 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1365)
!1364 = distinct !DILexicalBlock(scope: !588, file: !1, line: 394, column: 9)
!1365 = distinct !DILocation(line: 461, column: 1, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1367, file: !1, discriminator: 3)
!1367 = !DILexicalBlockFile(scope: !1368, file: !1, discriminator: 1)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 461, column: 1)
!1369 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1365)
!1370 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 1)
!1371 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1365)
!1372 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1365)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 394, column: 49)
!1374 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1365)
!1375 = !DILocation(line: 461, column: 1, scope: !1362)
!1376 = !DILocation(line: 461, column: 1, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !1, discriminator: 11)
!1378 = !DILexicalBlockFile(scope: !1362, file: !1, discriminator: 10)
!1379 = !DILocation(line: 461, column: 1, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 12)
!1381 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 4)
!1382 = !DILocation(line: 461, column: 1, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !1, discriminator: 13)
!1384 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 7)
!1385 = !DILocation(line: 460, column: 1, scope: !737)
!1386 = !DILocation(line: 460, column: 1, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !737, file: !1, line: 460, column: 1)
!1388 = !DILocation(line: 460, column: 1, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1387, file: !1, discriminator: 2)
!1390 = !DILocation(line: 460, column: 1, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !1, discriminator: 5)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 460, column: 1)
!1393 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 460, column: 1, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !1, discriminator: 3)
!1396 = !DILexicalBlockFile(scope: !1397, file: !1, discriminator: 1)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 460, column: 1)
!1398 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1394)
!1399 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1394)
!1400 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1394)
!1401 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1394)
!1402 = !DILocation(line: 460, column: 1, scope: !1392)
!1403 = !DILocation(line: 460, column: 1, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !1, discriminator: 11)
!1405 = !DILexicalBlockFile(scope: !1392, file: !1, discriminator: 10)
!1406 = !DILocation(line: 460, column: 1, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1408, file: !1, discriminator: 12)
!1408 = !DILexicalBlockFile(scope: !1409, file: !1, discriminator: 4)
!1409 = distinct !DILexicalBlock(scope: !737, file: !1, line: 460, column: 1)
!1410 = !DILocation(line: 460, column: 1, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1409, file: !1, discriminator: 14)
!1412 = !DILocation(line: 460, column: 1, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !1, discriminator: 17)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 460, column: 1)
!1415 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 460, column: 1, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !1, discriminator: 15)
!1418 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 13)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 460, column: 1)
!1420 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1416)
!1421 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1416)
!1422 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1416)
!1423 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1416)
!1424 = !DILocation(line: 460, column: 1, scope: !1414)
!1425 = !DILocation(line: 460, column: 1, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !1, discriminator: 23)
!1427 = !DILexicalBlockFile(scope: !1414, file: !1, discriminator: 22)
!1428 = !DILocation(line: 460, column: 1, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1430, file: !1, discriminator: 24)
!1430 = !DILexicalBlockFile(scope: !737, file: !1, discriminator: 16)
!1431 = !DILocation(line: 460, column: 1, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 25)
!1433 = !DILexicalBlockFile(scope: !1434, file: !1, discriminator: 19)
!1434 = !DILexicalBlockFile(scope: !737, file: !1, discriminator: 7)
!1435 = !DILocation(line: 476, column: 32, scope: !741)
!1436 = !DILocation(line: 476, column: 49, scope: !741)
!1437 = !DILocation(line: 476, column: 65, scope: !741)
!1438 = !DILocation(line: 480, column: 29, scope: !741)
!1439 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 478, column: 10, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !741, file: !1, line: 478, column: 9)
!1442 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1440)
!1443 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1440)
!1444 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1440)
!1445 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1440)
!1446 = !DILocation(line: 478, column: 9, scope: !741)
!1447 = !DILocation(line: 480, column: 12, scope: !741)
!1448 = !DILocation(line: 480, column: 5, scope: !741)
!1449 = !DILocation(line: 481, column: 1, scope: !741)
!1450 = !DILocation(line: 484, column: 29, scope: !746)
!1451 = !DILocation(line: 484, column: 46, scope: !746)
!1452 = !DILocation(line: 484, column: 53, scope: !746)
!1453 = !DILocation(line: 486, column: 5, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !746, file: !1, line: 486, column: 5)
!1455 = !DILocation(line: 486, column: 5, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1454, file: !1, discriminator: 2)
!1457 = !DILocation(line: 486, column: 5, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 4)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 486, column: 5)
!1460 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 486, column: 5, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1463, file: !1, discriminator: 3)
!1463 = !DILexicalBlockFile(scope: !1464, file: !1, discriminator: 1)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 486, column: 5)
!1465 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1461)
!1466 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1461)
!1467 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1461)
!1468 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1461)
!1469 = !DILocation(line: 486, column: 5, scope: !1459)
!1470 = !DILocation(line: 486, column: 5, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1472, file: !1, discriminator: 9)
!1472 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 8)
!1473 = !DILocation(line: 487, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !746, file: !1, line: 487, column: 5)
!1475 = !DILocation(line: 487, column: 5, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1474, file: !1, discriminator: 2)
!1477 = !DILocation(line: 487, column: 5, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !1, discriminator: 4)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 487, column: 5)
!1480 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 487, column: 5, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !1, discriminator: 3)
!1483 = !DILexicalBlockFile(scope: !1484, file: !1, discriminator: 1)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 487, column: 5)
!1485 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1481)
!1486 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1481)
!1487 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1481)
!1488 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1481)
!1489 = !DILocation(line: 487, column: 5, scope: !1479)
!1490 = !DILocation(line: 487, column: 5, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !1, discriminator: 9)
!1492 = !DILexicalBlockFile(scope: !1479, file: !1, discriminator: 8)
!1493 = !DILocation(line: 488, column: 12, scope: !746)
!1494 = !DILocation(line: 488, column: 5, scope: !746)
!1495 = !DILocation(line: 489, column: 1, scope: !746)
!1496 = !DILocation(line: 581, column: 29, scope: !751)
!1497 = !DILocation(line: 585, column: 29, scope: !751)
!1498 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 583, column: 10, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !751, file: !1, line: 583, column: 9)
!1501 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1499)
!1502 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1499)
!1503 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1499)
!1504 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1499)
!1505 = !DILocation(line: 583, column: 9, scope: !751)
!1506 = !DILocation(line: 585, column: 12, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !1, discriminator: 4)
!1508 = !DILexicalBlockFile(scope: !751, file: !1, discriminator: 3)
!1509 = !DILocation(line: 585, column: 5, scope: !751)
!1510 = !DILocation(line: 586, column: 1, scope: !751)
!1511 = !DILocation(line: 589, column: 33, scope: !754)
!1512 = !DILocation(line: 593, column: 24, scope: !754)
!1513 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 591, column: 10, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !754, file: !1, line: 591, column: 9)
!1516 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1514)
!1517 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1514)
!1518 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1514)
!1519 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1514)
!1520 = !DILocation(line: 591, column: 9, scope: !754)
!1521 = !DILocation(line: 593, column: 12, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !1, discriminator: 4)
!1523 = !DILexicalBlockFile(scope: !754, file: !1, discriminator: 3)
!1524 = !DILocation(line: 593, column: 5, scope: !754)
!1525 = !DILocation(line: 594, column: 1, scope: !754)
!1526 = !DILocation(line: 462, column: 1, scope: !760)
!1527 = !DILocation(line: 462, column: 1, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !760, file: !1, line: 462, column: 1)
!1529 = !DILocation(line: 462, column: 1, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1528, file: !1, discriminator: 2)
!1531 = !DILocation(line: 462, column: 1, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1533, file: !1, discriminator: 5)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 462, column: 1)
!1534 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 462, column: 1, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !1, discriminator: 3)
!1537 = !DILexicalBlockFile(scope: !1538, file: !1, discriminator: 1)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 462, column: 1)
!1539 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1535)
!1540 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1535)
!1541 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1535)
!1542 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1535)
!1543 = !DILocation(line: 462, column: 1, scope: !1533)
!1544 = !DILocation(line: 462, column: 1, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1546, file: !1, discriminator: 11)
!1546 = !DILexicalBlockFile(scope: !1533, file: !1, discriminator: 10)
!1547 = !DILocation(line: 462, column: 1, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !1, discriminator: 12)
!1549 = !DILexicalBlockFile(scope: !1550, file: !1, discriminator: 4)
!1550 = distinct !DILexicalBlock(scope: !760, file: !1, line: 462, column: 1)
!1551 = !DILocation(line: 462, column: 1, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1550, file: !1, discriminator: 14)
!1553 = !DILocation(line: 462, column: 1, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !1, discriminator: 17)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 462, column: 1)
!1556 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 462, column: 1, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !1, discriminator: 15)
!1559 = !DILexicalBlockFile(scope: !1560, file: !1, discriminator: 13)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 462, column: 1)
!1561 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1557)
!1562 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1557)
!1563 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1557)
!1564 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1557)
!1565 = !DILocation(line: 462, column: 1, scope: !1555)
!1566 = !DILocation(line: 462, column: 1, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !1, discriminator: 23)
!1568 = !DILexicalBlockFile(scope: !1555, file: !1, discriminator: 22)
!1569 = !DILocation(line: 462, column: 1, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1571, file: !1, discriminator: 24)
!1571 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 16)
!1572 = distinct !DILexicalBlock(scope: !760, file: !1, line: 462, column: 1)
!1573 = !DILocation(line: 462, column: 1, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !1, discriminator: 25)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 462, column: 1)
!1576 = !DILocation(line: 462, column: 1, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1575, file: !1, discriminator: 28)
!1578 = !DILocation(line: 462, column: 1, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1580, file: !1, discriminator: 31)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 462, column: 1)
!1581 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 462, column: 1, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 29)
!1584 = !DILexicalBlockFile(scope: !1585, file: !1, discriminator: 27)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 462, column: 1)
!1586 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !1582)
!1587 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !1582)
!1588 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !1582)
!1589 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !1582)
!1590 = !DILocation(line: 462, column: 1, scope: !1580)
!1591 = !DILocation(line: 462, column: 1, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !1, discriminator: 37)
!1593 = !DILexicalBlockFile(scope: !1580, file: !1, discriminator: 36)
!1594 = !DILocation(line: 462, column: 1, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1596, file: !1, discriminator: 39)
!1596 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 26)
!1597 = !DILocation(line: 462, column: 1, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !1, discriminator: 40)
!1599 = !DILexicalBlockFile(scope: !1600, file: !1, discriminator: 33)
!1600 = !DILexicalBlockFile(scope: !1601, file: !1, discriminator: 19)
!1601 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 7)
!1602 = !DILocation(line: 730, column: 28, scope: !384)
!1603 = !DILocation(line: 730, column: 42, scope: !384)
!1604 = !DILocation(line: 732, column: 22, scope: !384)
!1605 = !DILocation(line: 736, column: 10, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !384, file: !1, line: 736, column: 9)
!1607 = !DILocation(line: 736, column: 9, scope: !384)
!1608 = !DILocation(line: 737, column: 22, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 736, column: 49)
!1610 = !DILocation(line: 739, column: 35, scope: !1609)
!1611 = !DILocation(line: 737, column: 9, scope: !1609)
!1612 = !DILocation(line: 740, column: 9, scope: !1609)
!1613 = !DILocation(line: 742, column: 12, scope: !384)
!1614 = !DILocation(line: 733, column: 23, scope: !384)
!1615 = !DILocation(line: 743, column: 20, scope: !384)
!1616 = !DILocation(line: 218, column: 33, scope: !765, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 743, column: 5, scope: !384)
!1618 = !DILocation(line: 219, column: 34, scope: !765, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 759, column: 13, scope: !398)
!1620 = !DILocation(line: 219, column: 34, scope: !765, inlinedAt: !1617)
!1621 = !DILocation(line: 734, column: 22, scope: !384)
!1622 = !DILocation(line: 219, column: 58, scope: !765, inlinedAt: !1619)
!1623 = !DILocation(line: 219, column: 58, scope: !765, inlinedAt: !1617)
!1624 = !DILocation(line: 734, column: 28, scope: !384)
!1625 = !DILocation(line: 224, column: 14, scope: !1176, inlinedAt: !1617)
!1626 = !DILocation(line: 224, column: 22, scope: !1176, inlinedAt: !1617)
!1627 = !DILocation(line: 224, column: 31, scope: !1176, inlinedAt: !1617)
!1628 = !DILocation(line: 224, column: 43, scope: !1176, inlinedAt: !1617)
!1629 = !DILocation(line: 224, column: 9, scope: !765, inlinedAt: !1617)
!1630 = !DILocation(line: 744, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !384, file: !1, line: 744, column: 9)
!1632 = !DILocation(line: 744, column: 9, scope: !384)
!1633 = !DILocation(line: 746, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !384, file: !1, line: 746, column: 9)
!1635 = !DILocation(line: 749, column: 9, scope: !384)
!1636 = !DILocation(line: 228, column: 13, scope: !1182, inlinedAt: !1617)
!1637 = !DILocation(line: 228, column: 13, scope: !1183, inlinedAt: !1617)
!1638 = !DILocation(line: 749, column: 16, scope: !401)
!1639 = !DILocation(line: 750, column: 9, scope: !401)
!1640 = !DILocation(line: 32, column: 23, scope: !772, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 757, column: 18, scope: !400)
!1642 = !DILocation(line: 32, column: 37, scope: !772, inlinedAt: !1641)
!1643 = !DILocation(line: 36, column: 14, scope: !772, inlinedAt: !1641)
!1644 = !DILocation(line: 34, column: 22, scope: !772, inlinedAt: !1641)
!1645 = !DILocation(line: 37, column: 9, scope: !1646, inlinedAt: !1641)
!1646 = distinct !DILexicalBlock(scope: !772, file: !1, line: 37, column: 9)
!1647 = !DILocation(line: 37, column: 9, scope: !772, inlinedAt: !1641)
!1648 = !DILocation(line: 23, column: 31, scope: !569, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 38, column: 9, scope: !1650, inlinedAt: !1641)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 37, column: 17)
!1651 = !DILocation(line: 23, column: 47, scope: !569, inlinedAt: !1649)
!1652 = !DILocation(line: 23, column: 61, scope: !569, inlinedAt: !1649)
!1653 = !DILocation(line: 25, column: 11, scope: !569, inlinedAt: !1649)
!1654 = !DILocation(line: 25, column: 16, scope: !569, inlinedAt: !1649)
!1655 = !DILocation(line: 26, column: 11, scope: !569, inlinedAt: !1649)
!1656 = !DILocation(line: 26, column: 21, scope: !569, inlinedAt: !1649)
!1657 = !DILocation(line: 27, column: 5, scope: !1210, inlinedAt: !1649)
!1658 = !DILocation(line: 27, column: 5, scope: !577, inlinedAt: !1649)
!1659 = !DILocation(line: 27, column: 5, scope: !1215, inlinedAt: !1649)
!1660 = !DILocation(line: 28, column: 11, scope: !569, inlinedAt: !1649)
!1661 = !DILocation(line: 28, column: 23, scope: !569, inlinedAt: !1649)
!1662 = !DILocation(line: 39, column: 27, scope: !1650, inlinedAt: !1641)
!1663 = !DILocation(line: 39, column: 9, scope: !1650, inlinedAt: !1641)
!1664 = !DILocation(line: 258, column: 29, scope: !779, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 762, column: 21, scope: !395)
!1666 = !DILocation(line: 218, column: 33, scope: !765, inlinedAt: !1619)
!1667 = !DILocation(line: 224, column: 14, scope: !1176, inlinedAt: !1619)
!1668 = !DILocation(line: 224, column: 22, scope: !1176, inlinedAt: !1619)
!1669 = !DILocation(line: 224, column: 31, scope: !1176, inlinedAt: !1619)
!1670 = !DILocation(line: 224, column: 43, scope: !1176, inlinedAt: !1619)
!1671 = !DILocation(line: 224, column: 9, scope: !765, inlinedAt: !1619)
!1672 = !DILocation(line: 228, column: 13, scope: !1182, inlinedAt: !1619)
!1673 = !DILocation(line: 228, column: 13, scope: !1183, inlinedAt: !1619)
!1674 = !DILocation(line: 230, column: 26, scope: !1250, inlinedAt: !1619)
!1675 = !DILocation(line: 232, column: 18, scope: !1252, inlinedAt: !1619)
!1676 = !DILocation(line: 233, column: 13, scope: !1252, inlinedAt: !1619)
!1677 = !DILocation(line: 233, column: 22, scope: !1252, inlinedAt: !1619)
!1678 = !DILocation(line: 234, column: 13, scope: !1252, inlinedAt: !1619)
!1679 = !DILocation(line: 234, column: 16, scope: !1257, inlinedAt: !1619)
!1680 = !DILocation(line: 759, column: 13, scope: !398)
!1681 = !DILocation(line: 234, column: 16, scope: !1260, inlinedAt: !1619)
!1682 = !DILocation(line: 760, column: 17, scope: !398)
!1683 = !DILocation(line: 761, column: 25, scope: !395)
!1684 = !DILocation(line: 761, column: 21, scope: !396)
!1685 = !DILocation(line: 256, column: 30, scope: !779, inlinedAt: !1665)
!1686 = !DILocation(line: 256, column: 56, scope: !779, inlinedAt: !1665)
!1687 = !DILocation(line: 258, column: 22, scope: !779, inlinedAt: !1665)
!1688 = !DILocation(line: 260, column: 13, scope: !779, inlinedAt: !1665)
!1689 = !DILocation(line: 260, column: 21, scope: !779, inlinedAt: !1665)
!1690 = !DILocation(line: 261, column: 13, scope: !779, inlinedAt: !1665)
!1691 = !DILocation(line: 261, column: 21, scope: !779, inlinedAt: !1665)
!1692 = !DILocation(line: 262, column: 9, scope: !779, inlinedAt: !1665)
!1693 = !DILocation(line: 263, column: 15, scope: !1234, inlinedAt: !1665)
!1694 = !DILocation(line: 263, column: 23, scope: !1234, inlinedAt: !1665)
!1695 = !DILocation(line: 263, column: 9, scope: !1234, inlinedAt: !1665)
!1696 = !DILocation(line: 264, column: 11, scope: !779, inlinedAt: !1665)
!1697 = !DILocation(line: 762, column: 21, scope: !395)
!1698 = !DILocation(line: 768, column: 21, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !393, file: !1, discriminator: 1)
!1700 = !DILocation(line: 768, column: 21, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !393, file: !1, line: 768, column: 21)
!1702 = !DILocation(line: 768, column: 21, scope: !393)
!1703 = !DILocation(line: 768, column: 21, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1701, file: !1, discriminator: 3)
!1705 = !DILocation(line: 769, column: 21, scope: !394)
!1706 = !DILocation(line: 776, column: 31, scope: !403)
!1707 = !DILocation(line: 776, column: 24, scope: !403)
!1708 = !DILocation(line: 774, column: 34, scope: !403)
!1709 = !DILocation(line: 777, column: 26, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !403, file: !1, line: 777, column: 21)
!1711 = !DILocation(line: 260, column: 13, scope: !779, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 778, column: 21, scope: !1710)
!1713 = !DILocation(line: 777, column: 21, scope: !403)
!1714 = !DILocation(line: 256, column: 30, scope: !779, inlinedAt: !1712)
!1715 = !DILocation(line: 256, column: 56, scope: !779, inlinedAt: !1712)
!1716 = !DILocation(line: 258, column: 22, scope: !779, inlinedAt: !1712)
!1717 = !DILocation(line: 260, column: 21, scope: !779, inlinedAt: !1712)
!1718 = !DILocation(line: 261, column: 13, scope: !779, inlinedAt: !1712)
!1719 = !DILocation(line: 261, column: 21, scope: !779, inlinedAt: !1712)
!1720 = !DILocation(line: 262, column: 9, scope: !779, inlinedAt: !1712)
!1721 = !DILocation(line: 263, column: 15, scope: !1234, inlinedAt: !1712)
!1722 = !DILocation(line: 263, column: 23, scope: !1234, inlinedAt: !1712)
!1723 = !DILocation(line: 263, column: 9, scope: !1234, inlinedAt: !1712)
!1724 = !DILocation(line: 264, column: 11, scope: !779, inlinedAt: !1712)
!1725 = !DILocation(line: 778, column: 21, scope: !1710)
!1726 = !DILocation(line: 243, column: 31, scope: !786, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 780, column: 21, scope: !1710)
!1728 = !DILocation(line: 243, column: 56, scope: !786, inlinedAt: !1727)
!1729 = !DILocation(line: 245, column: 21, scope: !786, inlinedAt: !1727)
!1730 = !DILocation(line: 246, column: 29, scope: !786, inlinedAt: !1727)
!1731 = !DILocation(line: 246, column: 21, scope: !786, inlinedAt: !1727)
!1732 = !DILocation(line: 247, column: 15, scope: !1286, inlinedAt: !1727)
!1733 = !DILocation(line: 247, column: 23, scope: !1286, inlinedAt: !1727)
!1734 = !DILocation(line: 247, column: 9, scope: !786, inlinedAt: !1727)
!1735 = !DILocation(line: 248, column: 24, scope: !1286, inlinedAt: !1727)
!1736 = !DILocation(line: 248, column: 32, scope: !1286, inlinedAt: !1727)
!1737 = !DILocation(line: 248, column: 9, scope: !1286, inlinedAt: !1727)
!1738 = !DILocation(line: 249, column: 19, scope: !786, inlinedAt: !1727)
!1739 = !DILocation(line: 784, column: 12, scope: !384)
!1740 = !DILocation(line: 784, column: 5, scope: !384)
!1741 = !DILocation(line: 785, column: 1, scope: !384)
!1742 = !DILocation(line: 789, column: 30, scope: !404)
!1743 = !DILocation(line: 789, column: 44, scope: !404)
!1744 = !DILocation(line: 791, column: 22, scope: !404)
!1745 = !DILocation(line: 795, column: 10, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !404, file: !1, line: 795, column: 9)
!1747 = !DILocation(line: 795, column: 9, scope: !404)
!1748 = !DILocation(line: 796, column: 22, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 795, column: 49)
!1750 = !DILocation(line: 798, column: 35, scope: !1749)
!1751 = !DILocation(line: 796, column: 9, scope: !1749)
!1752 = !DILocation(line: 799, column: 9, scope: !1749)
!1753 = !DILocation(line: 801, column: 12, scope: !404)
!1754 = !DILocation(line: 792, column: 23, scope: !404)
!1755 = !DILocation(line: 802, column: 20, scope: !404)
!1756 = !DILocation(line: 218, column: 33, scope: !765, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 802, column: 5, scope: !404)
!1758 = !DILocation(line: 219, column: 34, scope: !765, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 824, column: 13, scope: !413)
!1760 = !DILocation(line: 219, column: 34, scope: !765, inlinedAt: !1757)
!1761 = !DILocation(line: 793, column: 22, scope: !404)
!1762 = !DILocation(line: 219, column: 58, scope: !765, inlinedAt: !1759)
!1763 = !DILocation(line: 219, column: 58, scope: !765, inlinedAt: !1757)
!1764 = !DILocation(line: 793, column: 28, scope: !404)
!1765 = !DILocation(line: 224, column: 14, scope: !1176, inlinedAt: !1757)
!1766 = !DILocation(line: 224, column: 22, scope: !1176, inlinedAt: !1757)
!1767 = !DILocation(line: 224, column: 31, scope: !1176, inlinedAt: !1757)
!1768 = !DILocation(line: 224, column: 43, scope: !1176, inlinedAt: !1757)
!1769 = !DILocation(line: 224, column: 9, scope: !765, inlinedAt: !1757)
!1770 = !DILocation(line: 228, column: 13, scope: !1182, inlinedAt: !1757)
!1771 = !DILocation(line: 228, column: 13, scope: !1183, inlinedAt: !1757)
!1772 = !DILocation(line: 230, column: 26, scope: !1250, inlinedAt: !1757)
!1773 = !DILocation(line: 232, column: 18, scope: !1252, inlinedAt: !1757)
!1774 = !DILocation(line: 233, column: 13, scope: !1252, inlinedAt: !1757)
!1775 = !DILocation(line: 233, column: 22, scope: !1252, inlinedAt: !1757)
!1776 = !DILocation(line: 234, column: 13, scope: !1252, inlinedAt: !1757)
!1777 = !DILocation(line: 234, column: 16, scope: !1257, inlinedAt: !1757)
!1778 = !DILocation(line: 803, column: 18, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !404, file: !1, line: 803, column: 9)
!1780 = !DILocation(line: 803, column: 9, scope: !404)
!1781 = !DILocation(line: 805, column: 18, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !404, file: !1, line: 805, column: 9)
!1783 = !DILocation(line: 808, column: 9, scope: !404)
!1784 = !DILocation(line: 802, column: 5, scope: !404)
!1785 = !DILocation(line: 234, column: 16, scope: !1260, inlinedAt: !1757)
!1786 = !DILocation(line: 808, column: 16, scope: !416)
!1787 = !DILocation(line: 809, column: 9, scope: !416)
!1788 = !DILocation(line: 32, column: 23, scope: !772, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 816, column: 18, scope: !415)
!1790 = !DILocation(line: 32, column: 37, scope: !772, inlinedAt: !1789)
!1791 = !DILocation(line: 36, column: 14, scope: !772, inlinedAt: !1789)
!1792 = !DILocation(line: 34, column: 22, scope: !772, inlinedAt: !1789)
!1793 = !DILocation(line: 37, column: 9, scope: !1646, inlinedAt: !1789)
!1794 = !DILocation(line: 37, column: 9, scope: !772, inlinedAt: !1789)
!1795 = !DILocation(line: 23, column: 31, scope: !569, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 38, column: 9, scope: !1650, inlinedAt: !1789)
!1797 = !DILocation(line: 23, column: 47, scope: !569, inlinedAt: !1796)
!1798 = !DILocation(line: 23, column: 61, scope: !569, inlinedAt: !1796)
!1799 = !DILocation(line: 25, column: 11, scope: !569, inlinedAt: !1796)
!1800 = !DILocation(line: 25, column: 16, scope: !569, inlinedAt: !1796)
!1801 = !DILocation(line: 26, column: 11, scope: !569, inlinedAt: !1796)
!1802 = !DILocation(line: 26, column: 21, scope: !569, inlinedAt: !1796)
!1803 = !DILocation(line: 27, column: 5, scope: !1210, inlinedAt: !1796)
!1804 = !DILocation(line: 27, column: 5, scope: !577, inlinedAt: !1796)
!1805 = !DILocation(line: 27, column: 5, scope: !1215, inlinedAt: !1796)
!1806 = !DILocation(line: 28, column: 11, scope: !569, inlinedAt: !1796)
!1807 = !DILocation(line: 28, column: 23, scope: !569, inlinedAt: !1796)
!1808 = !DILocation(line: 39, column: 27, scope: !1650, inlinedAt: !1789)
!1809 = !DILocation(line: 39, column: 9, scope: !1650, inlinedAt: !1789)
!1810 = !DILocation(line: 820, column: 17, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !413, file: !1, line: 820, column: 17)
!1812 = !DILocation(line: 821, column: 17, scope: !1811)
!1813 = !DILocation(line: 831, column: 21, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1815, file: !1, discriminator: 3)
!1815 = distinct !DILexicalBlock(scope: !418, file: !1, line: 831, column: 21)
!1816 = !DILocation(line: 821, column: 33, scope: !1811)
!1817 = !DILocation(line: 258, column: 29, scope: !779, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 841, column: 17, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !413, file: !1, line: 840, column: 17)
!1820 = !DILocation(line: 218, column: 33, scope: !765, inlinedAt: !1759)
!1821 = !DILocation(line: 224, column: 14, scope: !1176, inlinedAt: !1759)
!1822 = !DILocation(line: 224, column: 22, scope: !1176, inlinedAt: !1759)
!1823 = !DILocation(line: 224, column: 31, scope: !1176, inlinedAt: !1759)
!1824 = !DILocation(line: 224, column: 43, scope: !1176, inlinedAt: !1759)
!1825 = !DILocation(line: 224, column: 9, scope: !765, inlinedAt: !1759)
!1826 = !DILocation(line: 228, column: 13, scope: !1182, inlinedAt: !1759)
!1827 = !DILocation(line: 228, column: 13, scope: !1183, inlinedAt: !1759)
!1828 = !DILocation(line: 230, column: 26, scope: !1250, inlinedAt: !1759)
!1829 = !DILocation(line: 232, column: 18, scope: !1252, inlinedAt: !1759)
!1830 = !DILocation(line: 233, column: 13, scope: !1252, inlinedAt: !1759)
!1831 = !DILocation(line: 233, column: 22, scope: !1252, inlinedAt: !1759)
!1832 = !DILocation(line: 234, column: 13, scope: !1252, inlinedAt: !1759)
!1833 = !DILocation(line: 234, column: 16, scope: !1257, inlinedAt: !1759)
!1834 = !DILocation(line: 824, column: 13, scope: !413)
!1835 = !DILocation(line: 234, column: 16, scope: !1260, inlinedAt: !1759)
!1836 = !DILocation(line: 826, column: 27, scope: !420)
!1837 = !DILocation(line: 825, column: 17, scope: !413)
!1838 = !DILocation(line: 826, column: 21, scope: !421)
!1839 = !DILocation(line: 831, column: 21, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 1)
!1841 = !DILocation(line: 831, column: 21, scope: !1815)
!1842 = !DILocation(line: 831, column: 21, scope: !418)
!1843 = !DILocation(line: 832, column: 21, scope: !419)
!1844 = !DILocation(line: 833, column: 21, scope: !419)
!1845 = !DILocation(line: 838, column: 24, scope: !422)
!1846 = !DILocation(line: 818, column: 30, scope: !413)
!1847 = !DILocation(line: 840, column: 22, scope: !1819)
!1848 = !DILocation(line: 260, column: 13, scope: !779, inlinedAt: !1818)
!1849 = !DILocation(line: 840, column: 17, scope: !413)
!1850 = !DILocation(line: 256, column: 30, scope: !779, inlinedAt: !1818)
!1851 = !DILocation(line: 256, column: 56, scope: !779, inlinedAt: !1818)
!1852 = !DILocation(line: 258, column: 22, scope: !779, inlinedAt: !1818)
!1853 = !DILocation(line: 260, column: 21, scope: !779, inlinedAt: !1818)
!1854 = !DILocation(line: 261, column: 13, scope: !779, inlinedAt: !1818)
!1855 = !DILocation(line: 261, column: 21, scope: !779, inlinedAt: !1818)
!1856 = !DILocation(line: 262, column: 9, scope: !779, inlinedAt: !1818)
!1857 = !DILocation(line: 263, column: 15, scope: !1234, inlinedAt: !1818)
!1858 = !DILocation(line: 263, column: 23, scope: !1234, inlinedAt: !1818)
!1859 = !DILocation(line: 263, column: 9, scope: !1234, inlinedAt: !1818)
!1860 = !DILocation(line: 264, column: 11, scope: !779, inlinedAt: !1818)
!1861 = !DILocation(line: 841, column: 17, scope: !1819)
!1862 = !DILocation(line: 243, column: 31, scope: !786, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 843, column: 17, scope: !1819)
!1864 = !DILocation(line: 243, column: 56, scope: !786, inlinedAt: !1863)
!1865 = !DILocation(line: 245, column: 21, scope: !786, inlinedAt: !1863)
!1866 = !DILocation(line: 246, column: 29, scope: !786, inlinedAt: !1863)
!1867 = !DILocation(line: 246, column: 21, scope: !786, inlinedAt: !1863)
!1868 = !DILocation(line: 247, column: 15, scope: !1286, inlinedAt: !1863)
!1869 = !DILocation(line: 247, column: 23, scope: !1286, inlinedAt: !1863)
!1870 = !DILocation(line: 247, column: 9, scope: !786, inlinedAt: !1863)
!1871 = !DILocation(line: 248, column: 24, scope: !1286, inlinedAt: !1863)
!1872 = !DILocation(line: 248, column: 32, scope: !1286, inlinedAt: !1863)
!1873 = !DILocation(line: 248, column: 9, scope: !1286, inlinedAt: !1863)
!1874 = !DILocation(line: 249, column: 19, scope: !786, inlinedAt: !1863)
!1875 = !DILocation(line: 848, column: 12, scope: !404)
!1876 = !DILocation(line: 848, column: 5, scope: !404)
!1877 = !DILocation(line: 849, column: 1, scope: !404)
!1878 = !DILocation(line: 853, column: 31, scope: !423)
!1879 = !DILocation(line: 855, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !423, file: !1, line: 855, column: 9)
!1881 = !DILocation(line: 855, column: 21, scope: !1880)
!1882 = !DILocation(line: 855, column: 25, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 1)
!1884 = !DILocation(line: 855, column: 25, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 2)
!1886 = !DILocation(line: 855, column: 25, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 3)
!1888 = !DILocation(line: 855, column: 25, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 4)
!1890 = !DILocation(line: 856, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 855, column: 47)
!1892 = !DILocation(line: 857, column: 9, scope: !1891)
!1893 = !DILocation(line: 859, column: 12, scope: !423)
!1894 = !DILocation(line: 859, column: 5, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1896, file: !1, discriminator: 4)
!1896 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 3)
!1897 = !DILocation(line: 860, column: 1, scope: !423)
!1898 = !DILocation(line: 883, column: 34, scope: !426)
!1899 = !DILocation(line: 887, column: 16, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !426, file: !1, line: 887, column: 9)
!1901 = !DILocation(line: 888, column: 9, scope: !1900)
!1902 = !DILocation(line: 888, column: 13, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1900, file: !1, discriminator: 1)
!1904 = !DILocation(line: 889, column: 9, scope: !1900)
!1905 = !DILocation(line: 889, column: 20, scope: !1900)
!1906 = !DILocation(line: 889, column: 30, scope: !1900)
!1907 = !DILocation(line: 887, column: 9, scope: !426)
!1908 = !DILocation(line: 890, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1900, file: !1, line: 889, column: 36)
!1910 = !DILocation(line: 891, column: 9, scope: !1909)
!1911 = !DILocation(line: 893, column: 12, scope: !426)
!1912 = !DILocation(line: 885, column: 23, scope: !426)
!1913 = !DILocation(line: 895, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !426, file: !1, line: 895, column: 9)
!1915 = !DILocation(line: 895, column: 15, scope: !1914)
!1916 = !DILocation(line: 895, column: 23, scope: !1914)
!1917 = !DILocation(line: 895, column: 35, scope: !1914)
!1918 = !DILocation(line: 895, column: 47, scope: !1914)
!1919 = !DILocation(line: 895, column: 9, scope: !426)
!1920 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 896, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 895, column: 56)
!1923 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !1921)
!1924 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !1921)
!1925 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !1921)
!1926 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !1921)
!1927 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !1921)
!1928 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !1921)
!1929 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !1921)
!1930 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !1921)
!1931 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !1921)
!1932 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !1921)
!1933 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !1921)
!1934 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !1921)
!1935 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !1921)
!1936 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !1921)
!1937 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !1921)
!1938 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !1921)
!1939 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !1921)
!1940 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !1921)
!1941 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !1921)
!1942 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !1921)
!1943 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !1921)
!1944 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !1921)
!1945 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !1921)
!1946 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !1921)
!1947 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !1921)
!1948 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !1921)
!1949 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !1921)
!1950 = !DILocation(line: 68, column: 23, scope: !470, inlinedAt: !1921)
!1951 = !DILocation(line: 897, column: 13, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 897, column: 13)
!1953 = !DILocation(line: 897, column: 19, scope: !1952)
!1954 = !DILocation(line: 897, column: 27, scope: !1952)
!1955 = !DILocation(line: 897, column: 39, scope: !1952)
!1956 = !DILocation(line: 897, column: 51, scope: !1952)
!1957 = !DILocation(line: 897, column: 13, scope: !1922)
!1958 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 898, column: 13, scope: !1952)
!1960 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !1959)
!1961 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !1959)
!1962 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !1959)
!1963 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !1959)
!1964 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !1959)
!1965 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !1959)
!1966 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !1959)
!1967 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !1959)
!1968 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !1959)
!1969 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !1959)
!1970 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !1959)
!1971 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !1959)
!1972 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !1959)
!1973 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !1959)
!1974 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !1959)
!1975 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !1959)
!1976 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !1959)
!1977 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !1959)
!1978 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !1959)
!1979 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !1959)
!1980 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !1959)
!1981 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !1959)
!1982 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !1959)
!1983 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !1959)
!1984 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !1959)
!1985 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !1959)
!1986 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !1959)
!1987 = !DILocation(line: 68, column: 23, scope: !470, inlinedAt: !1959)
!1988 = !DILocation(line: 900, column: 9, scope: !432)
!1989 = !DILocation(line: 900, column: 15, scope: !432)
!1990 = !DILocation(line: 900, column: 9, scope: !426)
!1991 = !DILocation(line: 15, column: 9, scope: !837, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 902, column: 28, scope: !431)
!1993 = !DILocation(line: 902, column: 28, scope: !431)
!1994 = !DILocation(line: 12, column: 16, scope: !372, inlinedAt: !1992)
!1995 = !DILocation(line: 16, column: 22, scope: !837, inlinedAt: !1992)
!1996 = !DILocation(line: 10, column: 45, scope: !372, inlinedAt: !1992)
!1997 = !DILocation(line: 14, column: 17, scope: !372, inlinedAt: !1992)
!1998 = !DILocation(line: 14, column: 5, scope: !372, inlinedAt: !1992)
!1999 = !DILocation(line: 902, column: 20, scope: !431)
!2000 = !DILocation(line: 903, column: 29, scope: !431)
!2001 = !DILocation(line: 904, column: 9, scope: !431)
!2002 = !DILocation(line: 906, column: 13, scope: !431)
!2003 = !DILocation(line: 904, column: 19, scope: !431)
!2004 = !DILocation(line: 904, column: 30, scope: !431)
!2005 = !DILocation(line: 904, column: 42, scope: !431)
!2006 = !DILocation(line: 907, column: 13, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !431, file: !1, line: 906, column: 13)
!2008 = !DILocation(line: 908, column: 19, scope: !440)
!2009 = !DILocation(line: 908, column: 13, scope: !431)
!2010 = !DILocation(line: 909, column: 43, scope: !439)
!2011 = !DILocation(line: 909, column: 23, scope: !439)
!2012 = !DILocation(line: 911, column: 34, scope: !439)
!2013 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 912, column: 13, scope: !439)
!2015 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !2014)
!2016 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !2014)
!2017 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !2014)
!2018 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !2014)
!2019 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !2014)
!2020 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !2014)
!2021 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !2014)
!2022 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !2014)
!2023 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !2014)
!2024 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !2014)
!2025 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !2014)
!2026 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !2014)
!2027 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !2014)
!2028 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !2014)
!2029 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !2014)
!2030 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !2014)
!2031 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !2014)
!2032 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !2014)
!2033 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !2014)
!2034 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !2014)
!2035 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !2014)
!2036 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !2014)
!2037 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !2014)
!2038 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !2014)
!2039 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !2014)
!2040 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !2014)
!2041 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !2014)
!2042 = !DILocation(line: 68, column: 23, scope: !470, inlinedAt: !2014)
!2043 = !DILocation(line: 70, column: 5, scope: !470, inlinedAt: !2014)
!2044 = !DILocation(line: 913, column: 26, scope: !444)
!2045 = !DILocation(line: 913, column: 17, scope: !439)
!2046 = !DILocation(line: 914, column: 44, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !443, file: !1, line: 914, column: 21)
!2048 = !DILocation(line: 914, column: 54, scope: !2047)
!2049 = !DILocation(line: 914, column: 21, scope: !443)
!2050 = !DILocation(line: 866, column: 34, scope: !792, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 915, column: 21, scope: !2047)
!2052 = !DILocation(line: 866, column: 49, scope: !792, inlinedAt: !2051)
!2053 = !DILocation(line: 868, column: 26, scope: !792, inlinedAt: !2051)
!2054 = !DILocation(line: 868, column: 15, scope: !792, inlinedAt: !2051)
!2055 = !DILocation(line: 870, column: 18, scope: !801, inlinedAt: !2051)
!2056 = !DILocation(line: 870, column: 9, scope: !792, inlinedAt: !2051)
!2057 = !DILocation(line: 871, column: 9, scope: !801, inlinedAt: !2051)
!2058 = !DILocation(line: 873, column: 9, scope: !2059, inlinedAt: !2051)
!2059 = !DILexicalBlockFile(scope: !800, file: !1, discriminator: 1)
!2060 = !DILocation(line: 873, column: 9, scope: !2061, inlinedAt: !2051)
!2061 = distinct !DILexicalBlock(scope: !800, file: !1, line: 873, column: 9)
!2062 = !DILocation(line: 873, column: 9, scope: !800, inlinedAt: !2051)
!2063 = !DILocation(line: 873, column: 9, scope: !2064, inlinedAt: !2051)
!2064 = !DILexicalBlockFile(scope: !2061, file: !1, discriminator: 3)
!2065 = !DILocation(line: 915, column: 21, scope: !2047)
!2066 = !DILocation(line: 916, column: 17, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 1)
!2068 = !DILocation(line: 916, column: 17, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !442, file: !1, line: 916, column: 17)
!2070 = !DILocation(line: 916, column: 17, scope: !442)
!2071 = !DILocation(line: 916, column: 17, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 3)
!2073 = !DILocation(line: 921, column: 24, scope: !446)
!2074 = !DILocation(line: 923, column: 39, scope: !446)
!2075 = !DILocation(line: 923, column: 21, scope: !446)
!2076 = !DILocation(line: 920, column: 23, scope: !446)
!2077 = !DILocation(line: 924, column: 23, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !446, file: !1, line: 924, column: 17)
!2079 = !DILocation(line: 924, column: 17, scope: !446)
!2080 = !DILocation(line: 930, column: 27, scope: !450)
!2081 = !DILocation(line: 930, column: 13, scope: !451)
!2082 = !DILocation(line: 936, column: 21, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !455, file: !1, line: 934, column: 17)
!2084 = !DILocation(line: 925, column: 21, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 924, column: 32)
!2086 = !DILocation(line: 926, column: 21, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 925, column: 21)
!2088 = !DILocation(line: 946, column: 13, scope: !459)
!2089 = !DILocation(line: 947, column: 38, scope: !457)
!2090 = !DILocation(line: 931, column: 50, scope: !449)
!2091 = !DILocation(line: 931, column: 34, scope: !449)
!2092 = !DILocation(line: 933, column: 44, scope: !455)
!2093 = !DILocation(line: 933, column: 54, scope: !455)
!2094 = !DILocation(line: 933, column: 21, scope: !449)
!2095 = !DILocation(line: 933, column: 22, scope: !455)
!2096 = !DILocation(line: 935, column: 21, scope: !2083)
!2097 = !DILocation(line: 937, column: 21, scope: !2083)
!2098 = !DILocation(line: 938, column: 17, scope: !2083)
!2099 = !DILocation(line: 940, column: 21, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 1)
!2101 = !DILocation(line: 940, column: 21, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !453, file: !1, line: 940, column: 21)
!2103 = !DILocation(line: 940, column: 21, scope: !453)
!2104 = !DILocation(line: 940, column: 21, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2102, file: !1, discriminator: 3)
!2106 = !DILocation(line: 942, column: 26, scope: !449)
!2107 = !DILocation(line: 942, column: 38, scope: !449)
!2108 = !DILocation(line: 51, column: 32, scope: !465, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 943, column: 17, scope: !449)
!2110 = !DILocation(line: 53, column: 15, scope: !465, inlinedAt: !2109)
!2111 = !DILocation(line: 55, column: 15, scope: !471, inlinedAt: !2109)
!2112 = !DILocation(line: 55, column: 25, scope: !471, inlinedAt: !2109)
!2113 = !DILocation(line: 55, column: 9, scope: !465, inlinedAt: !2109)
!2114 = !DILocation(line: 56, column: 34, scope: !470, inlinedAt: !2109)
!2115 = !DILocation(line: 56, column: 27, scope: !470, inlinedAt: !2109)
!2116 = !DILocation(line: 58, column: 13, scope: !866, inlinedAt: !2109)
!2117 = !DILocation(line: 58, column: 19, scope: !866, inlinedAt: !2109)
!2118 = !DILocation(line: 58, column: 13, scope: !470, inlinedAt: !2109)
!2119 = !DILocation(line: 62, column: 27, scope: !866, inlinedAt: !2109)
!2120 = !DILocation(line: 62, column: 19, scope: !866, inlinedAt: !2109)
!2121 = !DILocation(line: 62, column: 13, scope: !866, inlinedAt: !2109)
!2122 = !DILocation(line: 63, column: 25, scope: !470, inlinedAt: !2109)
!2123 = !DILocation(line: 64, column: 19, scope: !875, inlinedAt: !2109)
!2124 = !DILocation(line: 64, column: 27, scope: !875, inlinedAt: !2109)
!2125 = !DILocation(line: 67, column: 44, scope: !879, inlinedAt: !2109)
!2126 = !DILocation(line: 64, column: 13, scope: !470, inlinedAt: !2109)
!2127 = !DILocation(line: 65, column: 44, scope: !875, inlinedAt: !2109)
!2128 = !DILocation(line: 65, column: 28, scope: !875, inlinedAt: !2109)
!2129 = !DILocation(line: 65, column: 36, scope: !875, inlinedAt: !2109)
!2130 = !DILocation(line: 65, column: 13, scope: !875, inlinedAt: !2109)
!2131 = !DILocation(line: 66, column: 19, scope: !879, inlinedAt: !2109)
!2132 = !DILocation(line: 66, column: 27, scope: !879, inlinedAt: !2109)
!2133 = !DILocation(line: 66, column: 13, scope: !470, inlinedAt: !2109)
!2134 = !DILocation(line: 67, column: 28, scope: !879, inlinedAt: !2109)
!2135 = !DILocation(line: 67, column: 36, scope: !879, inlinedAt: !2109)
!2136 = !DILocation(line: 67, column: 13, scope: !879, inlinedAt: !2109)
!2137 = !DILocation(line: 70, column: 5, scope: !470, inlinedAt: !2109)
!2138 = !DILocation(line: 69, column: 23, scope: !470, inlinedAt: !2109)
!2139 = !DILocation(line: 901, column: 26, scope: !431)
!2140 = !DILocation(line: 930, column: 36, scope: !450)
!2141 = !DILocation(line: 947, column: 27, scope: !457)
!2142 = !DILocation(line: 950, column: 30, scope: !462)
!2143 = !DILocation(line: 950, column: 21, scope: !457)
!2144 = !DILocation(line: 951, column: 38, scope: !461)
!2145 = !DILocation(line: 866, column: 34, scope: !792, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 952, column: 21, scope: !461)
!2147 = !DILocation(line: 866, column: 49, scope: !792, inlinedAt: !2146)
!2148 = !DILocation(line: 868, column: 26, scope: !792, inlinedAt: !2146)
!2149 = !DILocation(line: 868, column: 15, scope: !792, inlinedAt: !2146)
!2150 = !DILocation(line: 870, column: 18, scope: !801, inlinedAt: !2146)
!2151 = !DILocation(line: 870, column: 9, scope: !792, inlinedAt: !2146)
!2152 = !DILocation(line: 871, column: 9, scope: !801, inlinedAt: !2146)
!2153 = !DILocation(line: 873, column: 9, scope: !2059, inlinedAt: !2146)
!2154 = !DILocation(line: 873, column: 9, scope: !2061, inlinedAt: !2146)
!2155 = !DILocation(line: 873, column: 9, scope: !800, inlinedAt: !2146)
!2156 = !DILocation(line: 873, column: 9, scope: !2064, inlinedAt: !2146)
!2157 = !DILocation(line: 952, column: 21, scope: !461)
!2158 = !DILocation(line: 946, column: 36, scope: !458)
!2159 = !DILocation(line: 955, column: 13, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 1)
!2161 = !DILocation(line: 955, column: 13, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !464, file: !1, line: 955, column: 13)
!2163 = !DILocation(line: 955, column: 13, scope: !464)
!2164 = !DILocation(line: 955, column: 13, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !1, discriminator: 3)
!2166 = !DILocation(line: 957, column: 13, scope: !431)
!2167 = !DILocation(line: 958, column: 27, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !431, file: !1, line: 957, column: 13)
!2169 = !DILocation(line: 958, column: 37, scope: !2168)
!2170 = !DILocation(line: 958, column: 48, scope: !2168)
!2171 = !DILocation(line: 958, column: 13, scope: !2168)
!2172 = !DILocation(line: 959, column: 5, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 1)
!2174 = !DILocation(line: 960, column: 1, scope: !426)
!2175 = !DILocation(line: 492, column: 1, scope: !584)
!2176 = !DILocation(line: 492, column: 1, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !584, file: !1, line: 492, column: 1)
!2178 = !DILocation(line: 492, column: 1, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2177, file: !1, discriminator: 2)
!2180 = !DILocation(line: 492, column: 1, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2182, file: !1, discriminator: 5)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 492, column: 1)
!2183 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 492, column: 1, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2186, file: !1, discriminator: 3)
!2186 = !DILexicalBlockFile(scope: !2187, file: !1, discriminator: 1)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !1, line: 492, column: 1)
!2188 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2184)
!2189 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2184)
!2190 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2184)
!2191 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2184)
!2192 = !DILocation(line: 492, column: 1, scope: !2182)
!2193 = !DILocation(line: 492, column: 1, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2195, file: !1, discriminator: 11)
!2195 = !DILexicalBlockFile(scope: !2182, file: !1, discriminator: 10)
!2196 = !DILocation(line: 492, column: 1, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !1, discriminator: 12)
!2198 = !DILexicalBlockFile(scope: !2199, file: !1, discriminator: 4)
!2199 = distinct !DILexicalBlock(scope: !584, file: !1, line: 492, column: 1)
!2200 = !DILocation(line: 492, column: 1, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2199, file: !1, discriminator: 14)
!2202 = !DILocation(line: 492, column: 1, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !1, discriminator: 17)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 492, column: 1)
!2205 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 492, column: 1, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !1, discriminator: 15)
!2208 = !DILexicalBlockFile(scope: !2209, file: !1, discriminator: 13)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 492, column: 1)
!2210 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2206)
!2211 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2206)
!2212 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2206)
!2213 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2206)
!2214 = !DILocation(line: 492, column: 1, scope: !2204)
!2215 = !DILocation(line: 492, column: 1, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !1, discriminator: 23)
!2217 = !DILexicalBlockFile(scope: !2204, file: !1, discriminator: 22)
!2218 = !DILocation(line: 492, column: 1, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !1, discriminator: 24)
!2220 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 16)
!2221 = !DILocation(line: 492, column: 1, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2223, file: !1, discriminator: 25)
!2223 = !DILexicalBlockFile(scope: !2224, file: !1, discriminator: 19)
!2224 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 7)
!2225 = !DILocation(line: 493, column: 1, scope: !591)
!2226 = !DILocation(line: 493, column: 1, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !591, file: !1, line: 493, column: 1)
!2228 = !DILocation(line: 493, column: 1, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2227, file: !1, discriminator: 2)
!2230 = !DILocation(line: 493, column: 1, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2232, file: !1, discriminator: 5)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 493, column: 1)
!2233 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 493, column: 1, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2236, file: !1, discriminator: 3)
!2236 = !DILexicalBlockFile(scope: !2237, file: !1, discriminator: 1)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !1, line: 493, column: 1)
!2238 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2234)
!2239 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2234)
!2240 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2234)
!2241 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2234)
!2242 = !DILocation(line: 493, column: 1, scope: !2232)
!2243 = !DILocation(line: 493, column: 1, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2245, file: !1, discriminator: 11)
!2245 = !DILexicalBlockFile(scope: !2232, file: !1, discriminator: 10)
!2246 = !DILocation(line: 493, column: 1, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2248, file: !1, discriminator: 12)
!2248 = !DILexicalBlockFile(scope: !2249, file: !1, discriminator: 4)
!2249 = distinct !DILexicalBlock(scope: !591, file: !1, line: 493, column: 1)
!2250 = !DILocation(line: 493, column: 1, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2249, file: !1, discriminator: 14)
!2252 = !DILocation(line: 493, column: 1, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2254, file: !1, discriminator: 17)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 493, column: 1)
!2255 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 493, column: 1, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2258, file: !1, discriminator: 15)
!2258 = !DILexicalBlockFile(scope: !2259, file: !1, discriminator: 13)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !1, line: 493, column: 1)
!2260 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2256)
!2261 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2256)
!2262 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2256)
!2263 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2256)
!2264 = !DILocation(line: 493, column: 1, scope: !2254)
!2265 = !DILocation(line: 493, column: 1, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2267, file: !1, discriminator: 23)
!2267 = !DILexicalBlockFile(scope: !2254, file: !1, discriminator: 22)
!2268 = !DILocation(line: 493, column: 1, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2270, file: !1, discriminator: 24)
!2270 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 16)
!2271 = !DILocation(line: 493, column: 1, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2273, file: !1, discriminator: 25)
!2273 = !DILexicalBlockFile(scope: !2274, file: !1, discriminator: 19)
!2274 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 7)
!2275 = !DILocation(line: 494, column: 1, scope: !595)
!2276 = !DILocation(line: 494, column: 1, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !595, file: !1, line: 494, column: 1)
!2278 = !DILocation(line: 494, column: 1, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2277, file: !1, discriminator: 2)
!2280 = !DILocation(line: 494, column: 1, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !1, discriminator: 5)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 494, column: 1)
!2283 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 494, column: 1, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2286, file: !1, discriminator: 3)
!2286 = !DILexicalBlockFile(scope: !2287, file: !1, discriminator: 1)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !1, line: 494, column: 1)
!2288 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2284)
!2289 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2284)
!2290 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2284)
!2291 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2284)
!2292 = !DILocation(line: 494, column: 1, scope: !2282)
!2293 = !DILocation(line: 494, column: 1, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !1, discriminator: 11)
!2295 = !DILexicalBlockFile(scope: !2282, file: !1, discriminator: 10)
!2296 = !DILocation(line: 494, column: 1, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2298, file: !1, discriminator: 12)
!2298 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 4)
!2299 = distinct !DILexicalBlock(scope: !595, file: !1, line: 494, column: 1)
!2300 = !DILocation(line: 494, column: 1, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 14)
!2302 = !DILocation(line: 494, column: 1, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !1, discriminator: 17)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 494, column: 1)
!2305 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 494, column: 1, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2308, file: !1, discriminator: 15)
!2308 = !DILexicalBlockFile(scope: !2309, file: !1, discriminator: 13)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !1, line: 494, column: 1)
!2310 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2306)
!2311 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2306)
!2312 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2306)
!2313 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2306)
!2314 = !DILocation(line: 494, column: 1, scope: !2304)
!2315 = !DILocation(line: 494, column: 1, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2317, file: !1, discriminator: 23)
!2317 = !DILexicalBlockFile(scope: !2304, file: !1, discriminator: 22)
!2318 = !DILocation(line: 494, column: 1, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2320, file: !1, discriminator: 24)
!2320 = !DILexicalBlockFile(scope: !595, file: !1, discriminator: 16)
!2321 = !DILocation(line: 494, column: 1, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2323, file: !1, discriminator: 25)
!2323 = !DILexicalBlockFile(scope: !2324, file: !1, discriminator: 19)
!2324 = !DILexicalBlockFile(scope: !595, file: !1, discriminator: 7)
!2325 = !DILocation(line: 497, column: 1, scope: !599)
!2326 = !DILocation(line: 497, column: 1, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !599, file: !1, line: 497, column: 1)
!2328 = !DILocation(line: 497, column: 1, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2327, file: !1, discriminator: 2)
!2330 = !DILocation(line: 497, column: 1, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2332, file: !1, discriminator: 5)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !1, line: 497, column: 1)
!2333 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 497, column: 1, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2336, file: !1, discriminator: 3)
!2336 = !DILexicalBlockFile(scope: !2337, file: !1, discriminator: 1)
!2337 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 497, column: 1)
!2338 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2334)
!2339 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2334)
!2340 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2334)
!2341 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2334)
!2342 = !DILocation(line: 497, column: 1, scope: !2332)
!2343 = !DILocation(line: 497, column: 1, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2345, file: !1, discriminator: 11)
!2345 = !DILexicalBlockFile(scope: !2332, file: !1, discriminator: 10)
!2346 = !DILocation(line: 497, column: 1, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !1, discriminator: 12)
!2348 = !DILexicalBlockFile(scope: !2349, file: !1, discriminator: 4)
!2349 = distinct !DILexicalBlock(scope: !599, file: !1, line: 497, column: 1)
!2350 = !DILocation(line: 497, column: 1, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2349, file: !1, discriminator: 14)
!2352 = !DILocation(line: 497, column: 1, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2354, file: !1, discriminator: 17)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 497, column: 1)
!2355 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 497, column: 1, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2358, file: !1, discriminator: 15)
!2358 = !DILexicalBlockFile(scope: !2359, file: !1, discriminator: 13)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !1, line: 497, column: 1)
!2360 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2356)
!2361 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2356)
!2362 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2356)
!2363 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2356)
!2364 = !DILocation(line: 497, column: 1, scope: !2354)
!2365 = !DILocation(line: 497, column: 1, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2367, file: !1, discriminator: 23)
!2367 = !DILexicalBlockFile(scope: !2354, file: !1, discriminator: 22)
!2368 = !DILocation(line: 497, column: 1, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2370, file: !1, discriminator: 24)
!2370 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 16)
!2371 = !DILocation(line: 497, column: 1, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2373, file: !1, discriminator: 25)
!2373 = !DILexicalBlockFile(scope: !2374, file: !1, discriminator: 19)
!2374 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 7)
!2375 = !DILocation(line: 498, column: 1, scope: !603)
!2376 = !DILocation(line: 498, column: 1, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !603, file: !1, line: 498, column: 1)
!2378 = !DILocation(line: 498, column: 1, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2377, file: !1, discriminator: 2)
!2380 = !DILocation(line: 498, column: 1, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2382, file: !1, discriminator: 5)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 498, column: 1)
!2383 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 498, column: 1, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2386, file: !1, discriminator: 3)
!2386 = !DILexicalBlockFile(scope: !2387, file: !1, discriminator: 1)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !1, line: 498, column: 1)
!2388 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2384)
!2389 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2384)
!2390 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2384)
!2391 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2384)
!2392 = !DILocation(line: 498, column: 1, scope: !2382)
!2393 = !DILocation(line: 498, column: 1, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2395, file: !1, discriminator: 11)
!2395 = !DILexicalBlockFile(scope: !2382, file: !1, discriminator: 10)
!2396 = !DILocation(line: 498, column: 1, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !1, discriminator: 12)
!2398 = !DILexicalBlockFile(scope: !2399, file: !1, discriminator: 4)
!2399 = distinct !DILexicalBlock(scope: !603, file: !1, line: 498, column: 1)
!2400 = !DILocation(line: 498, column: 1, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2399, file: !1, discriminator: 14)
!2402 = !DILocation(line: 498, column: 1, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2404, file: !1, discriminator: 17)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !1, line: 498, column: 1)
!2405 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 498, column: 1, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2408, file: !1, discriminator: 15)
!2408 = !DILexicalBlockFile(scope: !2409, file: !1, discriminator: 13)
!2409 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 498, column: 1)
!2410 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2406)
!2411 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2406)
!2412 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2406)
!2413 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2406)
!2414 = !DILocation(line: 498, column: 1, scope: !2404)
!2415 = !DILocation(line: 498, column: 1, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2417, file: !1, discriminator: 23)
!2417 = !DILexicalBlockFile(scope: !2404, file: !1, discriminator: 22)
!2418 = !DILocation(line: 498, column: 1, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2420, file: !1, discriminator: 24)
!2420 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 16)
!2421 = !DILocation(line: 498, column: 1, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2423, file: !1, discriminator: 25)
!2423 = !DILexicalBlockFile(scope: !2424, file: !1, discriminator: 19)
!2424 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 7)
!2425 = !DILocation(line: 499, column: 1, scope: !607)
!2426 = !DILocation(line: 499, column: 1, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !607, file: !1, line: 499, column: 1)
!2428 = !DILocation(line: 499, column: 1, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2427, file: !1, discriminator: 2)
!2430 = !DILocation(line: 499, column: 1, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 5)
!2432 = distinct !DILexicalBlock(scope: !2427, file: !1, line: 499, column: 1)
!2433 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 499, column: 1, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2436, file: !1, discriminator: 3)
!2436 = !DILexicalBlockFile(scope: !2437, file: !1, discriminator: 1)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !1, line: 499, column: 1)
!2438 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2434)
!2439 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2434)
!2440 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2434)
!2441 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2434)
!2442 = !DILocation(line: 499, column: 1, scope: !2432)
!2443 = !DILocation(line: 499, column: 1, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2445, file: !1, discriminator: 11)
!2445 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 10)
!2446 = !DILocation(line: 499, column: 1, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2448, file: !1, discriminator: 12)
!2448 = !DILexicalBlockFile(scope: !2449, file: !1, discriminator: 4)
!2449 = distinct !DILexicalBlock(scope: !607, file: !1, line: 499, column: 1)
!2450 = !DILocation(line: 499, column: 1, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2449, file: !1, discriminator: 14)
!2452 = !DILocation(line: 499, column: 1, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2454, file: !1, discriminator: 17)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 499, column: 1)
!2455 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 499, column: 1, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 15)
!2458 = !DILexicalBlockFile(scope: !2459, file: !1, discriminator: 13)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 499, column: 1)
!2460 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2456)
!2461 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2456)
!2462 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2456)
!2463 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2456)
!2464 = !DILocation(line: 499, column: 1, scope: !2454)
!2465 = !DILocation(line: 499, column: 1, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2467, file: !1, discriminator: 23)
!2467 = !DILexicalBlockFile(scope: !2454, file: !1, discriminator: 22)
!2468 = !DILocation(line: 499, column: 1, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2470, file: !1, discriminator: 24)
!2470 = !DILexicalBlockFile(scope: !2471, file: !1, discriminator: 16)
!2471 = distinct !DILexicalBlock(scope: !607, file: !1, line: 499, column: 1)
!2472 = !DILocation(line: 499, column: 1, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2474, file: !1, discriminator: 25)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 499, column: 1)
!2475 = !DILocation(line: 499, column: 1, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2474, file: !1, discriminator: 28)
!2477 = !DILocation(line: 499, column: 1, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2479, file: !1, discriminator: 31)
!2479 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 499, column: 1)
!2480 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 499, column: 1, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2483, file: !1, discriminator: 29)
!2483 = !DILexicalBlockFile(scope: !2484, file: !1, discriminator: 27)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !1, line: 499, column: 1)
!2485 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2481)
!2486 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2481)
!2487 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2481)
!2488 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2481)
!2489 = !DILocation(line: 499, column: 1, scope: !2479)
!2490 = !DILocation(line: 499, column: 1, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2492, file: !1, discriminator: 37)
!2492 = !DILexicalBlockFile(scope: !2479, file: !1, discriminator: 36)
!2493 = !DILocation(line: 499, column: 1, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2495, file: !1, discriminator: 39)
!2495 = !DILexicalBlockFile(scope: !607, file: !1, discriminator: 26)
!2496 = !DILocation(line: 499, column: 1, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2498, file: !1, discriminator: 40)
!2498 = !DILexicalBlockFile(scope: !2499, file: !1, discriminator: 33)
!2499 = !DILexicalBlockFile(scope: !2500, file: !1, discriminator: 19)
!2500 = !DILexicalBlockFile(scope: !607, file: !1, discriminator: 7)
!2501 = !DILocation(line: 500, column: 1, scope: !612)
!2502 = !DILocation(line: 500, column: 1, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !612, file: !1, line: 500, column: 1)
!2504 = !DILocation(line: 500, column: 1, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2503, file: !1, discriminator: 2)
!2506 = !DILocation(line: 500, column: 1, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2508, file: !1, discriminator: 5)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 500, column: 1)
!2509 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 500, column: 1, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2512, file: !1, discriminator: 3)
!2512 = !DILexicalBlockFile(scope: !2513, file: !1, discriminator: 1)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 500, column: 1)
!2514 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2510)
!2515 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2510)
!2516 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2510)
!2517 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2510)
!2518 = !DILocation(line: 500, column: 1, scope: !2508)
!2519 = !DILocation(line: 500, column: 1, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2521, file: !1, discriminator: 11)
!2521 = !DILexicalBlockFile(scope: !2508, file: !1, discriminator: 10)
!2522 = !DILocation(line: 500, column: 1, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2524, file: !1, discriminator: 12)
!2524 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 4)
!2525 = !DILocation(line: 500, column: 1, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !1, discriminator: 13)
!2527 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 7)
!2528 = !DILocation(line: 501, column: 1, scope: !615)
!2529 = !DILocation(line: 501, column: 1, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !615, file: !1, line: 501, column: 1)
!2531 = !DILocation(line: 501, column: 1, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 2)
!2533 = !DILocation(line: 501, column: 1, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !1, discriminator: 5)
!2535 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 501, column: 1)
!2536 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 501, column: 1, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2539, file: !1, discriminator: 3)
!2539 = !DILexicalBlockFile(scope: !2540, file: !1, discriminator: 1)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 501, column: 1)
!2541 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2537)
!2542 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2537)
!2543 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2537)
!2544 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2537)
!2545 = !DILocation(line: 501, column: 1, scope: !2535)
!2546 = !DILocation(line: 501, column: 1, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2548, file: !1, discriminator: 11)
!2548 = !DILexicalBlockFile(scope: !2535, file: !1, discriminator: 10)
!2549 = !DILocation(line: 501, column: 1, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2551, file: !1, discriminator: 12)
!2551 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 4)
!2552 = !DILocation(line: 501, column: 1, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2554, file: !1, discriminator: 13)
!2554 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 7)
!2555 = !DILocation(line: 502, column: 1, scope: !618)
!2556 = !DILocation(line: 502, column: 1, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !618, file: !1, line: 502, column: 1)
!2558 = !DILocation(line: 502, column: 1, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2557, file: !1, discriminator: 2)
!2560 = !DILocation(line: 502, column: 1, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2562, file: !1, discriminator: 5)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 502, column: 1)
!2563 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 502, column: 1, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2566, file: !1, discriminator: 3)
!2566 = !DILexicalBlockFile(scope: !2567, file: !1, discriminator: 1)
!2567 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 502, column: 1)
!2568 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2564)
!2569 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2564)
!2570 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2564)
!2571 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2564)
!2572 = !DILocation(line: 502, column: 1, scope: !2562)
!2573 = !DILocation(line: 502, column: 1, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2575, file: !1, discriminator: 11)
!2575 = !DILexicalBlockFile(scope: !2562, file: !1, discriminator: 10)
!2576 = !DILocation(line: 502, column: 1, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2578, file: !1, discriminator: 12)
!2578 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 4)
!2579 = !DILocation(line: 502, column: 1, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2581, file: !1, discriminator: 13)
!2581 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 7)
!2582 = !DILocation(line: 526, column: 29, scope: !621)
!2583 = !DILocation(line: 528, column: 19, scope: !621)
!2584 = !DILocation(line: 528, column: 15, scope: !621)
!2585 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 529, column: 10, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !621, file: !1, line: 529, column: 9)
!2588 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2586)
!2589 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2586)
!2590 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2586)
!2591 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2586)
!2592 = !DILocation(line: 529, column: 9, scope: !621)
!2593 = !DILocation(line: 531, column: 12, scope: !621)
!2594 = !DILocation(line: 531, column: 5, scope: !621)
!2595 = !DILocation(line: 532, column: 1, scope: !621)
!2596 = !DILocation(line: 503, column: 1, scope: !625)
!2597 = !DILocation(line: 503, column: 1, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !625, file: !1, line: 503, column: 1)
!2599 = !DILocation(line: 503, column: 1, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2598, file: !1, discriminator: 2)
!2601 = !DILocation(line: 503, column: 1, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2603, file: !1, discriminator: 5)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 503, column: 1)
!2604 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 503, column: 1, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !1, discriminator: 3)
!2607 = !DILexicalBlockFile(scope: !2608, file: !1, discriminator: 1)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 503, column: 1)
!2609 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2605)
!2610 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2605)
!2611 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2605)
!2612 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2605)
!2613 = !DILocation(line: 503, column: 1, scope: !2603)
!2614 = !DILocation(line: 503, column: 1, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2616, file: !1, discriminator: 11)
!2616 = !DILexicalBlockFile(scope: !2603, file: !1, discriminator: 10)
!2617 = !DILocation(line: 503, column: 1, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2619, file: !1, discriminator: 12)
!2619 = !DILexicalBlockFile(scope: !625, file: !1, discriminator: 4)
!2620 = !DILocation(line: 503, column: 1, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2622, file: !1, discriminator: 13)
!2622 = !DILexicalBlockFile(scope: !625, file: !1, discriminator: 7)
!2623 = !DILocation(line: 504, column: 1, scope: !628)
!2624 = !DILocation(line: 504, column: 1, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !628, file: !1, line: 504, column: 1)
!2626 = !DILocation(line: 504, column: 1, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2625, file: !1, discriminator: 2)
!2628 = !DILocation(line: 504, column: 1, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2630, file: !1, discriminator: 5)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 504, column: 1)
!2631 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 504, column: 1, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2634, file: !1, discriminator: 3)
!2634 = !DILexicalBlockFile(scope: !2635, file: !1, discriminator: 1)
!2635 = distinct !DILexicalBlock(scope: !2630, file: !1, line: 504, column: 1)
!2636 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2632)
!2637 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2632)
!2638 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2632)
!2639 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2632)
!2640 = !DILocation(line: 504, column: 1, scope: !2630)
!2641 = !DILocation(line: 504, column: 1, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2643, file: !1, discriminator: 11)
!2643 = !DILexicalBlockFile(scope: !2630, file: !1, discriminator: 10)
!2644 = !DILocation(line: 504, column: 1, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2646, file: !1, discriminator: 12)
!2646 = !DILexicalBlockFile(scope: !2647, file: !1, discriminator: 4)
!2647 = distinct !DILexicalBlock(scope: !628, file: !1, line: 504, column: 1)
!2648 = !DILocation(line: 504, column: 1, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2647, file: !1, discriminator: 14)
!2650 = !DILocation(line: 504, column: 1, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2652, file: !1, discriminator: 17)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !1, line: 504, column: 1)
!2653 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 504, column: 1, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2656, file: !1, discriminator: 15)
!2656 = !DILexicalBlockFile(scope: !2657, file: !1, discriminator: 13)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 504, column: 1)
!2658 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2654)
!2659 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2654)
!2660 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2654)
!2661 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2654)
!2662 = !DILocation(line: 504, column: 1, scope: !2652)
!2663 = !DILocation(line: 504, column: 1, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2665, file: !1, discriminator: 23)
!2665 = !DILexicalBlockFile(scope: !2652, file: !1, discriminator: 22)
!2666 = !DILocation(line: 504, column: 1, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2668, file: !1, discriminator: 24)
!2668 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 16)
!2669 = !DILocation(line: 504, column: 1, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2671, file: !1, discriminator: 25)
!2671 = !DILexicalBlockFile(scope: !2672, file: !1, discriminator: 19)
!2672 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 7)
!2673 = !DILocation(line: 505, column: 1, scope: !632)
!2674 = !DILocation(line: 505, column: 1, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !632, file: !1, line: 505, column: 1)
!2676 = !DILocation(line: 505, column: 1, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2675, file: !1, discriminator: 2)
!2678 = !DILocation(line: 505, column: 1, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 5)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 505, column: 1)
!2681 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 505, column: 1, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2684, file: !1, discriminator: 3)
!2684 = !DILexicalBlockFile(scope: !2685, file: !1, discriminator: 1)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 505, column: 1)
!2686 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2682)
!2687 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2682)
!2688 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2682)
!2689 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2682)
!2690 = !DILocation(line: 505, column: 1, scope: !2680)
!2691 = !DILocation(line: 505, column: 1, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2693, file: !1, discriminator: 11)
!2693 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 10)
!2694 = !DILocation(line: 505, column: 1, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2696, file: !1, discriminator: 12)
!2696 = !DILexicalBlockFile(scope: !2697, file: !1, discriminator: 4)
!2697 = distinct !DILexicalBlock(scope: !632, file: !1, line: 505, column: 1)
!2698 = !DILocation(line: 505, column: 1, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2697, file: !1, discriminator: 14)
!2700 = !DILocation(line: 505, column: 1, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2702, file: !1, discriminator: 17)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 505, column: 1)
!2703 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 505, column: 1, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2706, file: !1, discriminator: 15)
!2706 = !DILexicalBlockFile(scope: !2707, file: !1, discriminator: 13)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 505, column: 1)
!2708 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2704)
!2709 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2704)
!2710 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2704)
!2711 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2704)
!2712 = !DILocation(line: 505, column: 1, scope: !2702)
!2713 = !DILocation(line: 505, column: 1, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2715, file: !1, discriminator: 23)
!2715 = !DILexicalBlockFile(scope: !2702, file: !1, discriminator: 22)
!2716 = !DILocation(line: 505, column: 1, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2718, file: !1, discriminator: 24)
!2718 = !DILexicalBlockFile(scope: !632, file: !1, discriminator: 16)
!2719 = !DILocation(line: 505, column: 1, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2721, file: !1, discriminator: 25)
!2721 = !DILexicalBlockFile(scope: !2722, file: !1, discriminator: 19)
!2722 = !DILexicalBlockFile(scope: !632, file: !1, discriminator: 7)
!2723 = !DILocation(line: 506, column: 1, scope: !636)
!2724 = !DILocation(line: 506, column: 1, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !636, file: !1, line: 506, column: 1)
!2726 = !DILocation(line: 506, column: 1, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2725, file: !1, discriminator: 2)
!2728 = !DILocation(line: 506, column: 1, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2730, file: !1, discriminator: 5)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 506, column: 1)
!2731 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 506, column: 1, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2734, file: !1, discriminator: 3)
!2734 = !DILexicalBlockFile(scope: !2735, file: !1, discriminator: 1)
!2735 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 506, column: 1)
!2736 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2732)
!2737 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2732)
!2738 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2732)
!2739 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2732)
!2740 = !DILocation(line: 506, column: 1, scope: !2730)
!2741 = !DILocation(line: 506, column: 1, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2743, file: !1, discriminator: 11)
!2743 = !DILexicalBlockFile(scope: !2730, file: !1, discriminator: 10)
!2744 = !DILocation(line: 506, column: 1, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2746, file: !1, discriminator: 12)
!2746 = !DILexicalBlockFile(scope: !2747, file: !1, discriminator: 4)
!2747 = distinct !DILexicalBlock(scope: !636, file: !1, line: 506, column: 1)
!2748 = !DILocation(line: 506, column: 1, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2747, file: !1, discriminator: 14)
!2750 = !DILocation(line: 506, column: 1, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2752, file: !1, discriminator: 17)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 506, column: 1)
!2753 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 506, column: 1, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !1, discriminator: 15)
!2756 = !DILexicalBlockFile(scope: !2757, file: !1, discriminator: 13)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !1, line: 506, column: 1)
!2758 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2754)
!2759 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2754)
!2760 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2754)
!2761 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2754)
!2762 = !DILocation(line: 506, column: 1, scope: !2752)
!2763 = !DILocation(line: 506, column: 1, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 23)
!2765 = !DILexicalBlockFile(scope: !2752, file: !1, discriminator: 22)
!2766 = !DILocation(line: 506, column: 1, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2768, file: !1, discriminator: 24)
!2768 = !DILexicalBlockFile(scope: !636, file: !1, discriminator: 16)
!2769 = !DILocation(line: 506, column: 1, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2771, file: !1, discriminator: 25)
!2771 = !DILexicalBlockFile(scope: !2772, file: !1, discriminator: 19)
!2772 = !DILexicalBlockFile(scope: !636, file: !1, discriminator: 7)
!2773 = !DILocation(line: 507, column: 1, scope: !640)
!2774 = !DILocation(line: 507, column: 1, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !640, file: !1, line: 507, column: 1)
!2776 = !DILocation(line: 507, column: 1, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2775, file: !1, discriminator: 2)
!2778 = !DILocation(line: 507, column: 1, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2780, file: !1, discriminator: 5)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !1, line: 507, column: 1)
!2781 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 507, column: 1, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !1, discriminator: 3)
!2784 = !DILexicalBlockFile(scope: !2785, file: !1, discriminator: 1)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 507, column: 1)
!2786 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2782)
!2787 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2782)
!2788 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2782)
!2789 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2782)
!2790 = !DILocation(line: 507, column: 1, scope: !2780)
!2791 = !DILocation(line: 507, column: 1, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2793, file: !1, discriminator: 11)
!2793 = !DILexicalBlockFile(scope: !2780, file: !1, discriminator: 10)
!2794 = !DILocation(line: 507, column: 1, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2796, file: !1, discriminator: 12)
!2796 = !DILexicalBlockFile(scope: !2797, file: !1, discriminator: 4)
!2797 = distinct !DILexicalBlock(scope: !640, file: !1, line: 507, column: 1)
!2798 = !DILocation(line: 507, column: 1, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2797, file: !1, discriminator: 14)
!2800 = !DILocation(line: 507, column: 1, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2802, file: !1, discriminator: 17)
!2802 = distinct !DILexicalBlock(scope: !2797, file: !1, line: 507, column: 1)
!2803 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 507, column: 1, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2806, file: !1, discriminator: 15)
!2806 = !DILexicalBlockFile(scope: !2807, file: !1, discriminator: 13)
!2807 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 507, column: 1)
!2808 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2804)
!2809 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2804)
!2810 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2804)
!2811 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2804)
!2812 = !DILocation(line: 507, column: 1, scope: !2802)
!2813 = !DILocation(line: 507, column: 1, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2815, file: !1, discriminator: 23)
!2815 = !DILexicalBlockFile(scope: !2802, file: !1, discriminator: 22)
!2816 = !DILocation(line: 507, column: 1, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2818, file: !1, discriminator: 24)
!2818 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 16)
!2819 = !DILocation(line: 507, column: 1, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !2821, file: !1, discriminator: 25)
!2821 = !DILexicalBlockFile(scope: !2822, file: !1, discriminator: 19)
!2822 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 7)
!2823 = !DILocation(line: 508, column: 1, scope: !644)
!2824 = !DILocation(line: 508, column: 1, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !644, file: !1, line: 508, column: 1)
!2826 = !DILocation(line: 508, column: 1, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2825, file: !1, discriminator: 2)
!2828 = !DILocation(line: 508, column: 1, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 5)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 508, column: 1)
!2831 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 508, column: 1, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !2834, file: !1, discriminator: 3)
!2834 = !DILexicalBlockFile(scope: !2835, file: !1, discriminator: 1)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !1, line: 508, column: 1)
!2836 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2832)
!2837 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2832)
!2838 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2832)
!2839 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2832)
!2840 = !DILocation(line: 508, column: 1, scope: !2830)
!2841 = !DILocation(line: 508, column: 1, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2843, file: !1, discriminator: 11)
!2843 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 10)
!2844 = !DILocation(line: 508, column: 1, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2846, file: !1, discriminator: 12)
!2846 = !DILexicalBlockFile(scope: !2847, file: !1, discriminator: 4)
!2847 = distinct !DILexicalBlock(scope: !644, file: !1, line: 508, column: 1)
!2848 = !DILocation(line: 508, column: 1, scope: !2849)
!2849 = !DILexicalBlockFile(scope: !2847, file: !1, discriminator: 14)
!2850 = !DILocation(line: 508, column: 1, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2852, file: !1, discriminator: 17)
!2852 = distinct !DILexicalBlock(scope: !2847, file: !1, line: 508, column: 1)
!2853 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 508, column: 1, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2856, file: !1, discriminator: 15)
!2856 = !DILexicalBlockFile(scope: !2857, file: !1, discriminator: 13)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !1, line: 508, column: 1)
!2858 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2854)
!2859 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2854)
!2860 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2854)
!2861 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2854)
!2862 = !DILocation(line: 508, column: 1, scope: !2852)
!2863 = !DILocation(line: 508, column: 1, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !2865, file: !1, discriminator: 23)
!2865 = !DILexicalBlockFile(scope: !2852, file: !1, discriminator: 22)
!2866 = !DILocation(line: 508, column: 1, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2868, file: !1, discriminator: 24)
!2868 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 16)
!2869 = !DILocation(line: 508, column: 1, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2871, file: !1, discriminator: 25)
!2871 = !DILexicalBlockFile(scope: !2872, file: !1, discriminator: 19)
!2872 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 7)
!2873 = !DILocation(line: 509, column: 1, scope: !648)
!2874 = !DILocation(line: 509, column: 1, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !648, file: !1, line: 509, column: 1)
!2876 = !DILocation(line: 509, column: 1, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2875, file: !1, discriminator: 2)
!2878 = !DILocation(line: 509, column: 1, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2880, file: !1, discriminator: 5)
!2880 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 509, column: 1)
!2881 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 509, column: 1, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !2884, file: !1, discriminator: 3)
!2884 = !DILexicalBlockFile(scope: !2885, file: !1, discriminator: 1)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !1, line: 509, column: 1)
!2886 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2882)
!2887 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2882)
!2888 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2882)
!2889 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2882)
!2890 = !DILocation(line: 509, column: 1, scope: !2880)
!2891 = !DILocation(line: 509, column: 1, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !1, discriminator: 11)
!2893 = !DILexicalBlockFile(scope: !2880, file: !1, discriminator: 10)
!2894 = !DILocation(line: 509, column: 1, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2896, file: !1, discriminator: 12)
!2896 = !DILexicalBlockFile(scope: !648, file: !1, discriminator: 4)
!2897 = !DILocation(line: 509, column: 1, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2899, file: !1, discriminator: 13)
!2899 = !DILexicalBlockFile(scope: !648, file: !1, discriminator: 7)
!2900 = !DILocation(line: 510, column: 1, scope: !651)
!2901 = !DILocation(line: 510, column: 1, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !651, file: !1, line: 510, column: 1)
!2903 = !DILocation(line: 510, column: 1, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2902, file: !1, discriminator: 2)
!2905 = !DILocation(line: 510, column: 1, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2907, file: !1, discriminator: 5)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 510, column: 1)
!2908 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 510, column: 1, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2911, file: !1, discriminator: 3)
!2911 = !DILexicalBlockFile(scope: !2912, file: !1, discriminator: 1)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !1, line: 510, column: 1)
!2913 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2909)
!2914 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2909)
!2915 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2909)
!2916 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2909)
!2917 = !DILocation(line: 510, column: 1, scope: !2907)
!2918 = !DILocation(line: 510, column: 1, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2920, file: !1, discriminator: 11)
!2920 = !DILexicalBlockFile(scope: !2907, file: !1, discriminator: 10)
!2921 = !DILocation(line: 510, column: 1, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2923, file: !1, discriminator: 12)
!2923 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 4)
!2924 = !DILocation(line: 510, column: 1, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 13)
!2926 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 7)
!2927 = !DILocation(line: 511, column: 1, scope: !654)
!2928 = !DILocation(line: 511, column: 1, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !654, file: !1, line: 511, column: 1)
!2930 = !DILocation(line: 511, column: 1, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2929, file: !1, discriminator: 2)
!2932 = !DILocation(line: 511, column: 1, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2934, file: !1, discriminator: 5)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !1, line: 511, column: 1)
!2935 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 511, column: 1, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2938, file: !1, discriminator: 3)
!2938 = !DILexicalBlockFile(scope: !2939, file: !1, discriminator: 1)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !1, line: 511, column: 1)
!2940 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2936)
!2941 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2936)
!2942 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2936)
!2943 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2936)
!2944 = !DILocation(line: 511, column: 1, scope: !2934)
!2945 = !DILocation(line: 511, column: 1, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2947, file: !1, discriminator: 11)
!2947 = !DILexicalBlockFile(scope: !2934, file: !1, discriminator: 10)
!2948 = !DILocation(line: 511, column: 1, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2950, file: !1, discriminator: 12)
!2950 = !DILexicalBlockFile(scope: !2951, file: !1, discriminator: 4)
!2951 = distinct !DILexicalBlock(scope: !654, file: !1, line: 511, column: 1)
!2952 = !DILocation(line: 511, column: 1, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2951, file: !1, discriminator: 14)
!2954 = !DILocation(line: 511, column: 1, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2956, file: !1, discriminator: 17)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !1, line: 511, column: 1)
!2957 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 511, column: 1, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2960, file: !1, discriminator: 15)
!2960 = !DILexicalBlockFile(scope: !2961, file: !1, discriminator: 13)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !1, line: 511, column: 1)
!2962 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2958)
!2963 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2958)
!2964 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2958)
!2965 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2958)
!2966 = !DILocation(line: 511, column: 1, scope: !2956)
!2967 = !DILocation(line: 511, column: 1, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2969, file: !1, discriminator: 23)
!2969 = !DILexicalBlockFile(scope: !2956, file: !1, discriminator: 22)
!2970 = !DILocation(line: 511, column: 1, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2972, file: !1, discriminator: 24)
!2972 = !DILexicalBlockFile(scope: !654, file: !1, discriminator: 16)
!2973 = !DILocation(line: 511, column: 1, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2975, file: !1, discriminator: 25)
!2975 = !DILexicalBlockFile(scope: !2976, file: !1, discriminator: 19)
!2976 = !DILexicalBlockFile(scope: !654, file: !1, discriminator: 7)
!2977 = !DILocation(line: 512, column: 1, scope: !658)
!2978 = !DILocation(line: 512, column: 1, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !658, file: !1, line: 512, column: 1)
!2980 = !DILocation(line: 512, column: 1, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2979, file: !1, discriminator: 2)
!2982 = !DILocation(line: 512, column: 1, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2984, file: !1, discriminator: 5)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !1, line: 512, column: 1)
!2985 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 512, column: 1, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2988, file: !1, discriminator: 3)
!2988 = !DILexicalBlockFile(scope: !2989, file: !1, discriminator: 1)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !1, line: 512, column: 1)
!2990 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !2986)
!2991 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !2986)
!2992 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !2986)
!2993 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !2986)
!2994 = !DILocation(line: 512, column: 1, scope: !2984)
!2995 = !DILocation(line: 512, column: 1, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2997, file: !1, discriminator: 11)
!2997 = !DILexicalBlockFile(scope: !2984, file: !1, discriminator: 10)
!2998 = !DILocation(line: 512, column: 1, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !3000, file: !1, discriminator: 12)
!3000 = !DILexicalBlockFile(scope: !3001, file: !1, discriminator: 4)
!3001 = distinct !DILexicalBlock(scope: !658, file: !1, line: 512, column: 1)
!3002 = !DILocation(line: 512, column: 1, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !3001, file: !1, discriminator: 14)
!3004 = !DILocation(line: 512, column: 1, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3006, file: !1, discriminator: 17)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 512, column: 1)
!3007 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 512, column: 1, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3010, file: !1, discriminator: 15)
!3010 = !DILexicalBlockFile(scope: !3011, file: !1, discriminator: 13)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 512, column: 1)
!3012 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3008)
!3013 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3008)
!3014 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3008)
!3015 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3008)
!3016 = !DILocation(line: 512, column: 1, scope: !3006)
!3017 = !DILocation(line: 512, column: 1, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !3019, file: !1, discriminator: 23)
!3019 = !DILexicalBlockFile(scope: !3006, file: !1, discriminator: 22)
!3020 = !DILocation(line: 512, column: 1, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3022, file: !1, discriminator: 24)
!3022 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 16)
!3023 = !DILocation(line: 512, column: 1, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3025, file: !1, discriminator: 25)
!3025 = !DILexicalBlockFile(scope: !3026, file: !1, discriminator: 19)
!3026 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 7)
!3027 = !DILocation(line: 513, column: 1, scope: !662)
!3028 = !DILocation(line: 513, column: 1, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !662, file: !1, line: 513, column: 1)
!3030 = !DILocation(line: 513, column: 1, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3029, file: !1, discriminator: 2)
!3032 = !DILocation(line: 513, column: 1, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3034, file: !1, discriminator: 5)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !1, line: 513, column: 1)
!3035 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 513, column: 1, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3038, file: !1, discriminator: 3)
!3038 = !DILexicalBlockFile(scope: !3039, file: !1, discriminator: 1)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !1, line: 513, column: 1)
!3040 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3036)
!3041 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3036)
!3042 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3036)
!3043 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3036)
!3044 = !DILocation(line: 513, column: 1, scope: !3034)
!3045 = !DILocation(line: 513, column: 1, scope: !3046)
!3046 = !DILexicalBlockFile(scope: !3047, file: !1, discriminator: 11)
!3047 = !DILexicalBlockFile(scope: !3034, file: !1, discriminator: 10)
!3048 = !DILocation(line: 513, column: 1, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3050, file: !1, discriminator: 12)
!3050 = !DILexicalBlockFile(scope: !3051, file: !1, discriminator: 4)
!3051 = distinct !DILexicalBlock(scope: !662, file: !1, line: 513, column: 1)
!3052 = !DILocation(line: 513, column: 1, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3051, file: !1, discriminator: 14)
!3054 = !DILocation(line: 513, column: 1, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3056, file: !1, discriminator: 17)
!3056 = distinct !DILexicalBlock(scope: !3051, file: !1, line: 513, column: 1)
!3057 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 513, column: 1, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3060, file: !1, discriminator: 15)
!3060 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 13)
!3061 = distinct !DILexicalBlock(scope: !3056, file: !1, line: 513, column: 1)
!3062 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3058)
!3063 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3058)
!3064 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3058)
!3065 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3058)
!3066 = !DILocation(line: 513, column: 1, scope: !3056)
!3067 = !DILocation(line: 513, column: 1, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !3069, file: !1, discriminator: 23)
!3069 = !DILexicalBlockFile(scope: !3056, file: !1, discriminator: 22)
!3070 = !DILocation(line: 513, column: 1, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3072, file: !1, discriminator: 24)
!3072 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 16)
!3073 = !DILocation(line: 513, column: 1, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3075, file: !1, discriminator: 25)
!3075 = !DILexicalBlockFile(scope: !3076, file: !1, discriminator: 19)
!3076 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 7)
!3077 = !DILocation(line: 516, column: 1, scope: !666)
!3078 = !DILocation(line: 516, column: 1, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !666, file: !1, line: 516, column: 1)
!3080 = !DILocation(line: 516, column: 1, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3079, file: !1, discriminator: 2)
!3082 = !DILocation(line: 516, column: 1, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3084, file: !1, discriminator: 5)
!3084 = distinct !DILexicalBlock(scope: !3079, file: !1, line: 516, column: 1)
!3085 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 516, column: 1, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3088, file: !1, discriminator: 3)
!3088 = !DILexicalBlockFile(scope: !3089, file: !1, discriminator: 1)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 516, column: 1)
!3090 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3086)
!3091 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3086)
!3092 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3086)
!3093 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3086)
!3094 = !DILocation(line: 516, column: 1, scope: !3084)
!3095 = !DILocation(line: 516, column: 1, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3097, file: !1, discriminator: 11)
!3097 = !DILexicalBlockFile(scope: !3084, file: !1, discriminator: 10)
!3098 = !DILocation(line: 516, column: 1, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3100, file: !1, discriminator: 12)
!3100 = !DILexicalBlockFile(scope: !3101, file: !1, discriminator: 4)
!3101 = distinct !DILexicalBlock(scope: !666, file: !1, line: 516, column: 1)
!3102 = !DILocation(line: 516, column: 1, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3101, file: !1, discriminator: 14)
!3104 = !DILocation(line: 516, column: 1, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3106, file: !1, discriminator: 17)
!3106 = distinct !DILexicalBlock(scope: !3101, file: !1, line: 516, column: 1)
!3107 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 516, column: 1, scope: !3109)
!3109 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 15)
!3110 = !DILexicalBlockFile(scope: !3111, file: !1, discriminator: 13)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !1, line: 516, column: 1)
!3112 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3108)
!3113 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3108)
!3114 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3108)
!3115 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3108)
!3116 = !DILocation(line: 516, column: 1, scope: !3106)
!3117 = !DILocation(line: 516, column: 1, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3119, file: !1, discriminator: 23)
!3119 = !DILexicalBlockFile(scope: !3106, file: !1, discriminator: 22)
!3120 = !DILocation(line: 516, column: 1, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !3122, file: !1, discriminator: 24)
!3122 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 16)
!3123 = !DILocation(line: 516, column: 1, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3125, file: !1, discriminator: 25)
!3125 = !DILexicalBlockFile(scope: !3126, file: !1, discriminator: 19)
!3126 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 7)
!3127 = !DILocation(line: 517, column: 1, scope: !670)
!3128 = !DILocation(line: 517, column: 1, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !670, file: !1, line: 517, column: 1)
!3130 = !DILocation(line: 517, column: 1, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !3129, file: !1, discriminator: 2)
!3132 = !DILocation(line: 517, column: 1, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3134, file: !1, discriminator: 5)
!3134 = distinct !DILexicalBlock(scope: !3129, file: !1, line: 517, column: 1)
!3135 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 517, column: 1, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3138, file: !1, discriminator: 3)
!3138 = !DILexicalBlockFile(scope: !3139, file: !1, discriminator: 1)
!3139 = distinct !DILexicalBlock(scope: !3134, file: !1, line: 517, column: 1)
!3140 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3136)
!3141 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3136)
!3142 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3136)
!3143 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3136)
!3144 = !DILocation(line: 517, column: 1, scope: !3134)
!3145 = !DILocation(line: 517, column: 1, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3147, file: !1, discriminator: 11)
!3147 = !DILexicalBlockFile(scope: !3134, file: !1, discriminator: 10)
!3148 = !DILocation(line: 517, column: 1, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3150, file: !1, discriminator: 12)
!3150 = !DILexicalBlockFile(scope: !3151, file: !1, discriminator: 4)
!3151 = distinct !DILexicalBlock(scope: !670, file: !1, line: 517, column: 1)
!3152 = !DILocation(line: 517, column: 1, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3151, file: !1, discriminator: 14)
!3154 = !DILocation(line: 517, column: 1, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3156, file: !1, discriminator: 17)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !1, line: 517, column: 1)
!3157 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 517, column: 1, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3160, file: !1, discriminator: 15)
!3160 = !DILexicalBlockFile(scope: !3161, file: !1, discriminator: 13)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 517, column: 1)
!3162 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3158)
!3163 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3158)
!3164 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3158)
!3165 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3158)
!3166 = !DILocation(line: 517, column: 1, scope: !3156)
!3167 = !DILocation(line: 517, column: 1, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3169, file: !1, discriminator: 23)
!3169 = !DILexicalBlockFile(scope: !3156, file: !1, discriminator: 22)
!3170 = !DILocation(line: 517, column: 1, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3172, file: !1, discriminator: 24)
!3172 = !DILexicalBlockFile(scope: !3173, file: !1, discriminator: 16)
!3173 = distinct !DILexicalBlock(scope: !670, file: !1, line: 517, column: 1)
!3174 = !DILocation(line: 517, column: 1, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3176, file: !1, discriminator: 25)
!3176 = distinct !DILexicalBlock(scope: !3173, file: !1, line: 517, column: 1)
!3177 = !DILocation(line: 517, column: 1, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3176, file: !1, discriminator: 28)
!3179 = !DILocation(line: 517, column: 1, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3181, file: !1, discriminator: 31)
!3181 = distinct !DILexicalBlock(scope: !3176, file: !1, line: 517, column: 1)
!3182 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 517, column: 1, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3185, file: !1, discriminator: 29)
!3185 = !DILexicalBlockFile(scope: !3186, file: !1, discriminator: 27)
!3186 = distinct !DILexicalBlock(scope: !3181, file: !1, line: 517, column: 1)
!3187 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3183)
!3188 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3183)
!3189 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3183)
!3190 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3183)
!3191 = !DILocation(line: 517, column: 1, scope: !3181)
!3192 = !DILocation(line: 517, column: 1, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3194, file: !1, discriminator: 37)
!3194 = !DILexicalBlockFile(scope: !3181, file: !1, discriminator: 36)
!3195 = !DILocation(line: 517, column: 1, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3197, file: !1, discriminator: 39)
!3197 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 26)
!3198 = !DILocation(line: 517, column: 1, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3200, file: !1, discriminator: 40)
!3200 = !DILexicalBlockFile(scope: !3201, file: !1, discriminator: 33)
!3201 = !DILexicalBlockFile(scope: !3202, file: !1, discriminator: 19)
!3202 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 7)
!3203 = !DILocation(line: 518, column: 1, scope: !675)
!3204 = !DILocation(line: 518, column: 1, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !675, file: !1, line: 518, column: 1)
!3206 = !DILocation(line: 518, column: 1, scope: !3207)
!3207 = !DILexicalBlockFile(scope: !3205, file: !1, discriminator: 2)
!3208 = !DILocation(line: 518, column: 1, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !3210, file: !1, discriminator: 5)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !1, line: 518, column: 1)
!3211 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 518, column: 1, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3214, file: !1, discriminator: 3)
!3214 = !DILexicalBlockFile(scope: !3215, file: !1, discriminator: 1)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 518, column: 1)
!3216 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3212)
!3217 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3212)
!3218 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3212)
!3219 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3212)
!3220 = !DILocation(line: 518, column: 1, scope: !3210)
!3221 = !DILocation(line: 518, column: 1, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3223, file: !1, discriminator: 11)
!3223 = !DILexicalBlockFile(scope: !3210, file: !1, discriminator: 10)
!3224 = !DILocation(line: 518, column: 1, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3226, file: !1, discriminator: 12)
!3226 = !DILexicalBlockFile(scope: !3227, file: !1, discriminator: 4)
!3227 = distinct !DILexicalBlock(scope: !675, file: !1, line: 518, column: 1)
!3228 = !DILocation(line: 518, column: 1, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3227, file: !1, discriminator: 14)
!3230 = !DILocation(line: 518, column: 1, scope: !3231)
!3231 = !DILexicalBlockFile(scope: !3232, file: !1, discriminator: 17)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !1, line: 518, column: 1)
!3233 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 518, column: 1, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3236, file: !1, discriminator: 15)
!3236 = !DILexicalBlockFile(scope: !3237, file: !1, discriminator: 13)
!3237 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 518, column: 1)
!3238 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3234)
!3239 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3234)
!3240 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3234)
!3241 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3234)
!3242 = !DILocation(line: 518, column: 1, scope: !3232)
!3243 = !DILocation(line: 518, column: 1, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3245, file: !1, discriminator: 23)
!3245 = !DILexicalBlockFile(scope: !3232, file: !1, discriminator: 22)
!3246 = !DILocation(line: 518, column: 1, scope: !3247)
!3247 = !DILexicalBlockFile(scope: !3248, file: !1, discriminator: 24)
!3248 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 16)
!3249 = !DILocation(line: 518, column: 1, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3251, file: !1, discriminator: 25)
!3251 = !DILexicalBlockFile(scope: !3252, file: !1, discriminator: 19)
!3252 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 7)
!3253 = !DILocation(line: 519, column: 1, scope: !679)
!3254 = !DILocation(line: 519, column: 1, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !679, file: !1, line: 519, column: 1)
!3256 = !DILocation(line: 519, column: 1, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !3255, file: !1, discriminator: 2)
!3258 = !DILocation(line: 519, column: 1, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3260, file: !1, discriminator: 5)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 519, column: 1)
!3261 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 519, column: 1, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3264, file: !1, discriminator: 3)
!3264 = !DILexicalBlockFile(scope: !3265, file: !1, discriminator: 1)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !1, line: 519, column: 1)
!3266 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3262)
!3267 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3262)
!3268 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3262)
!3269 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3262)
!3270 = !DILocation(line: 519, column: 1, scope: !3260)
!3271 = !DILocation(line: 519, column: 1, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3273, file: !1, discriminator: 11)
!3273 = !DILexicalBlockFile(scope: !3260, file: !1, discriminator: 10)
!3274 = !DILocation(line: 519, column: 1, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3276, file: !1, discriminator: 12)
!3276 = !DILexicalBlockFile(scope: !3277, file: !1, discriminator: 4)
!3277 = distinct !DILexicalBlock(scope: !679, file: !1, line: 519, column: 1)
!3278 = !DILocation(line: 519, column: 1, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3277, file: !1, discriminator: 14)
!3280 = !DILocation(line: 519, column: 1, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !3282, file: !1, discriminator: 17)
!3282 = distinct !DILexicalBlock(scope: !3277, file: !1, line: 519, column: 1)
!3283 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 519, column: 1, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3286, file: !1, discriminator: 15)
!3286 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 13)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !1, line: 519, column: 1)
!3288 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3284)
!3289 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3284)
!3290 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3284)
!3291 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3284)
!3292 = !DILocation(line: 519, column: 1, scope: !3282)
!3293 = !DILocation(line: 519, column: 1, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3295, file: !1, discriminator: 23)
!3295 = !DILexicalBlockFile(scope: !3282, file: !1, discriminator: 22)
!3296 = !DILocation(line: 519, column: 1, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !3298, file: !1, discriminator: 24)
!3298 = !DILexicalBlockFile(scope: !679, file: !1, discriminator: 16)
!3299 = !DILocation(line: 519, column: 1, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3301, file: !1, discriminator: 25)
!3301 = !DILexicalBlockFile(scope: !3302, file: !1, discriminator: 19)
!3302 = !DILexicalBlockFile(scope: !679, file: !1, discriminator: 7)
!3303 = !DILocation(line: 520, column: 1, scope: !683)
!3304 = !DILocation(line: 520, column: 1, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !683, file: !1, line: 520, column: 1)
!3306 = !DILocation(line: 520, column: 1, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3305, file: !1, discriminator: 2)
!3308 = !DILocation(line: 520, column: 1, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3310, file: !1, discriminator: 5)
!3310 = distinct !DILexicalBlock(scope: !3305, file: !1, line: 520, column: 1)
!3311 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 520, column: 1, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3314, file: !1, discriminator: 3)
!3314 = !DILexicalBlockFile(scope: !3315, file: !1, discriminator: 1)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !1, line: 520, column: 1)
!3316 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3312)
!3317 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3312)
!3318 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3312)
!3319 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3312)
!3320 = !DILocation(line: 520, column: 1, scope: !3310)
!3321 = !DILocation(line: 520, column: 1, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3323, file: !1, discriminator: 11)
!3323 = !DILexicalBlockFile(scope: !3310, file: !1, discriminator: 10)
!3324 = !DILocation(line: 520, column: 1, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3326, file: !1, discriminator: 12)
!3326 = !DILexicalBlockFile(scope: !3327, file: !1, discriminator: 4)
!3327 = distinct !DILexicalBlock(scope: !683, file: !1, line: 520, column: 1)
!3328 = !DILocation(line: 520, column: 1, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3327, file: !1, discriminator: 14)
!3330 = !DILocation(line: 520, column: 1, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3332, file: !1, discriminator: 17)
!3332 = distinct !DILexicalBlock(scope: !3327, file: !1, line: 520, column: 1)
!3333 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 520, column: 1, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3336, file: !1, discriminator: 15)
!3336 = !DILexicalBlockFile(scope: !3337, file: !1, discriminator: 13)
!3337 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 520, column: 1)
!3338 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3334)
!3339 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3334)
!3340 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3334)
!3341 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3334)
!3342 = !DILocation(line: 520, column: 1, scope: !3332)
!3343 = !DILocation(line: 520, column: 1, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3345, file: !1, discriminator: 23)
!3345 = !DILexicalBlockFile(scope: !3332, file: !1, discriminator: 22)
!3346 = !DILocation(line: 520, column: 1, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3348, file: !1, discriminator: 24)
!3348 = !DILexicalBlockFile(scope: !683, file: !1, discriminator: 16)
!3349 = !DILocation(line: 520, column: 1, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3351, file: !1, discriminator: 25)
!3351 = !DILexicalBlockFile(scope: !3352, file: !1, discriminator: 19)
!3352 = !DILexicalBlockFile(scope: !683, file: !1, discriminator: 7)
!3353 = !DILocation(line: 521, column: 1, scope: !687)
!3354 = !DILocation(line: 521, column: 1, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !687, file: !1, line: 521, column: 1)
!3356 = !DILocation(line: 521, column: 1, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3355, file: !1, discriminator: 2)
!3358 = !DILocation(line: 521, column: 1, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3360, file: !1, discriminator: 5)
!3360 = distinct !DILexicalBlock(scope: !3355, file: !1, line: 521, column: 1)
!3361 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 521, column: 1, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3364, file: !1, discriminator: 3)
!3364 = !DILexicalBlockFile(scope: !3365, file: !1, discriminator: 1)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !1, line: 521, column: 1)
!3366 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3362)
!3367 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3362)
!3368 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3362)
!3369 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3362)
!3370 = !DILocation(line: 521, column: 1, scope: !3360)
!3371 = !DILocation(line: 521, column: 1, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3373, file: !1, discriminator: 11)
!3373 = !DILexicalBlockFile(scope: !3360, file: !1, discriminator: 10)
!3374 = !DILocation(line: 521, column: 1, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3376, file: !1, discriminator: 12)
!3376 = !DILexicalBlockFile(scope: !3377, file: !1, discriminator: 4)
!3377 = distinct !DILexicalBlock(scope: !687, file: !1, line: 521, column: 1)
!3378 = !DILocation(line: 521, column: 1, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3377, file: !1, discriminator: 14)
!3380 = !DILocation(line: 521, column: 1, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3382, file: !1, discriminator: 17)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !1, line: 521, column: 1)
!3383 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 521, column: 1, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 15)
!3386 = !DILexicalBlockFile(scope: !3387, file: !1, discriminator: 13)
!3387 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 521, column: 1)
!3388 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3384)
!3389 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3384)
!3390 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3384)
!3391 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3384)
!3392 = !DILocation(line: 521, column: 1, scope: !3382)
!3393 = !DILocation(line: 521, column: 1, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3395, file: !1, discriminator: 23)
!3395 = !DILexicalBlockFile(scope: !3382, file: !1, discriminator: 22)
!3396 = !DILocation(line: 521, column: 1, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3398, file: !1, discriminator: 24)
!3398 = !DILexicalBlockFile(scope: !687, file: !1, discriminator: 16)
!3399 = !DILocation(line: 521, column: 1, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3401, file: !1, discriminator: 25)
!3401 = !DILexicalBlockFile(scope: !3402, file: !1, discriminator: 19)
!3402 = !DILexicalBlockFile(scope: !687, file: !1, discriminator: 7)
!3403 = !DILocation(line: 522, column: 1, scope: !691)
!3404 = !DILocation(line: 522, column: 1, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !691, file: !1, line: 522, column: 1)
!3406 = !DILocation(line: 522, column: 1, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3405, file: !1, discriminator: 2)
!3408 = !DILocation(line: 522, column: 1, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3410, file: !1, discriminator: 5)
!3410 = distinct !DILexicalBlock(scope: !3405, file: !1, line: 522, column: 1)
!3411 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 522, column: 1, scope: !3413)
!3413 = !DILexicalBlockFile(scope: !3414, file: !1, discriminator: 3)
!3414 = !DILexicalBlockFile(scope: !3415, file: !1, discriminator: 1)
!3415 = distinct !DILexicalBlock(scope: !3410, file: !1, line: 522, column: 1)
!3416 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3412)
!3417 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3412)
!3418 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3412)
!3419 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3412)
!3420 = !DILocation(line: 522, column: 1, scope: !3410)
!3421 = !DILocation(line: 522, column: 1, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3423, file: !1, discriminator: 11)
!3423 = !DILexicalBlockFile(scope: !3410, file: !1, discriminator: 10)
!3424 = !DILocation(line: 522, column: 1, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3426, file: !1, discriminator: 12)
!3426 = !DILexicalBlockFile(scope: !3427, file: !1, discriminator: 4)
!3427 = distinct !DILexicalBlock(scope: !691, file: !1, line: 522, column: 1)
!3428 = !DILocation(line: 522, column: 1, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3427, file: !1, discriminator: 14)
!3430 = !DILocation(line: 522, column: 1, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3432, file: !1, discriminator: 17)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !1, line: 522, column: 1)
!3433 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 522, column: 1, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3436, file: !1, discriminator: 15)
!3436 = !DILexicalBlockFile(scope: !3437, file: !1, discriminator: 13)
!3437 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 522, column: 1)
!3438 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3434)
!3439 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3434)
!3440 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3434)
!3441 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3434)
!3442 = !DILocation(line: 522, column: 1, scope: !3432)
!3443 = !DILocation(line: 522, column: 1, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3445, file: !1, discriminator: 23)
!3445 = !DILexicalBlockFile(scope: !3432, file: !1, discriminator: 22)
!3446 = !DILocation(line: 522, column: 1, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3448, file: !1, discriminator: 24)
!3448 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 16)
!3449 = !DILocation(line: 522, column: 1, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3451, file: !1, discriminator: 25)
!3451 = !DILexicalBlockFile(scope: !3452, file: !1, discriminator: 19)
!3452 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 7)
!3453 = !DILocation(line: 495, column: 1, scope: !695)
!3454 = !DILocation(line: 495, column: 1, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !695, file: !1, line: 495, column: 1)
!3456 = !DILocation(line: 495, column: 1, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3455, file: !1, discriminator: 2)
!3458 = !DILocation(line: 495, column: 1, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !3460, file: !1, discriminator: 5)
!3460 = distinct !DILexicalBlock(scope: !3455, file: !1, line: 495, column: 1)
!3461 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 495, column: 1, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3464, file: !1, discriminator: 3)
!3464 = !DILexicalBlockFile(scope: !3465, file: !1, discriminator: 1)
!3465 = distinct !DILexicalBlock(scope: !3460, file: !1, line: 495, column: 1)
!3466 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3462)
!3467 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3462)
!3468 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3462)
!3469 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3462)
!3470 = !DILocation(line: 495, column: 1, scope: !3460)
!3471 = !DILocation(line: 495, column: 1, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3473, file: !1, discriminator: 11)
!3473 = !DILexicalBlockFile(scope: !3460, file: !1, discriminator: 10)
!3474 = !DILocation(line: 495, column: 1, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3476, file: !1, discriminator: 12)
!3476 = !DILexicalBlockFile(scope: !3477, file: !1, discriminator: 4)
!3477 = distinct !DILexicalBlock(scope: !695, file: !1, line: 495, column: 1)
!3478 = !DILocation(line: 495, column: 1, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3477, file: !1, discriminator: 14)
!3480 = !DILocation(line: 495, column: 1, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3482, file: !1, discriminator: 17)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !1, line: 495, column: 1)
!3483 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 495, column: 1, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3486, file: !1, discriminator: 15)
!3486 = !DILexicalBlockFile(scope: !3487, file: !1, discriminator: 13)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !1, line: 495, column: 1)
!3488 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3484)
!3489 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3484)
!3490 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3484)
!3491 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3484)
!3492 = !DILocation(line: 495, column: 1, scope: !3482)
!3493 = !DILocation(line: 495, column: 1, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3495, file: !1, discriminator: 23)
!3495 = !DILexicalBlockFile(scope: !3482, file: !1, discriminator: 22)
!3496 = !DILocation(line: 495, column: 1, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3498, file: !1, discriminator: 24)
!3498 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 16)
!3499 = !DILocation(line: 495, column: 1, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3501, file: !1, discriminator: 25)
!3501 = !DILexicalBlockFile(scope: !3502, file: !1, discriminator: 19)
!3502 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 7)
!3503 = !DILocation(line: 496, column: 1, scope: !699)
!3504 = !DILocation(line: 496, column: 1, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !699, file: !1, line: 496, column: 1)
!3506 = !DILocation(line: 496, column: 1, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3505, file: !1, discriminator: 2)
!3508 = !DILocation(line: 496, column: 1, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3510, file: !1, discriminator: 5)
!3510 = distinct !DILexicalBlock(scope: !3505, file: !1, line: 496, column: 1)
!3511 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 496, column: 1, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3514, file: !1, discriminator: 3)
!3514 = !DILexicalBlockFile(scope: !3515, file: !1, discriminator: 1)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 496, column: 1)
!3516 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3512)
!3517 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3512)
!3518 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3512)
!3519 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3512)
!3520 = !DILocation(line: 496, column: 1, scope: !3510)
!3521 = !DILocation(line: 496, column: 1, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3523, file: !1, discriminator: 11)
!3523 = !DILexicalBlockFile(scope: !3510, file: !1, discriminator: 10)
!3524 = !DILocation(line: 496, column: 1, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3526, file: !1, discriminator: 12)
!3526 = !DILexicalBlockFile(scope: !3527, file: !1, discriminator: 4)
!3527 = distinct !DILexicalBlock(scope: !699, file: !1, line: 496, column: 1)
!3528 = !DILocation(line: 496, column: 1, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3527, file: !1, discriminator: 14)
!3530 = !DILocation(line: 496, column: 1, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !3532, file: !1, discriminator: 17)
!3532 = distinct !DILexicalBlock(scope: !3527, file: !1, line: 496, column: 1)
!3533 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 496, column: 1, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3536, file: !1, discriminator: 15)
!3536 = !DILexicalBlockFile(scope: !3537, file: !1, discriminator: 13)
!3537 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 496, column: 1)
!3538 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3534)
!3539 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3534)
!3540 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3534)
!3541 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3534)
!3542 = !DILocation(line: 496, column: 1, scope: !3532)
!3543 = !DILocation(line: 496, column: 1, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3545, file: !1, discriminator: 23)
!3545 = !DILexicalBlockFile(scope: !3532, file: !1, discriminator: 22)
!3546 = !DILocation(line: 496, column: 1, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3548, file: !1, discriminator: 24)
!3548 = !DILexicalBlockFile(scope: !699, file: !1, discriminator: 16)
!3549 = !DILocation(line: 496, column: 1, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !3551, file: !1, discriminator: 25)
!3551 = !DILexicalBlockFile(scope: !3552, file: !1, discriminator: 19)
!3552 = !DILexicalBlockFile(scope: !699, file: !1, discriminator: 7)
!3553 = !DILocation(line: 514, column: 1, scope: !703)
!3554 = !DILocation(line: 514, column: 1, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !703, file: !1, line: 514, column: 1)
!3556 = !DILocation(line: 514, column: 1, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3555, file: !1, discriminator: 2)
!3558 = !DILocation(line: 514, column: 1, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3560, file: !1, discriminator: 5)
!3560 = distinct !DILexicalBlock(scope: !3555, file: !1, line: 514, column: 1)
!3561 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 514, column: 1, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3564, file: !1, discriminator: 3)
!3564 = !DILexicalBlockFile(scope: !3565, file: !1, discriminator: 1)
!3565 = distinct !DILexicalBlock(scope: !3560, file: !1, line: 514, column: 1)
!3566 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3562)
!3567 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3562)
!3568 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3562)
!3569 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3562)
!3570 = !DILocation(line: 514, column: 1, scope: !3560)
!3571 = !DILocation(line: 514, column: 1, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !3573, file: !1, discriminator: 11)
!3573 = !DILexicalBlockFile(scope: !3560, file: !1, discriminator: 10)
!3574 = !DILocation(line: 514, column: 1, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3576, file: !1, discriminator: 12)
!3576 = !DILexicalBlockFile(scope: !3577, file: !1, discriminator: 4)
!3577 = distinct !DILexicalBlock(scope: !703, file: !1, line: 514, column: 1)
!3578 = !DILocation(line: 514, column: 1, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3577, file: !1, discriminator: 14)
!3580 = !DILocation(line: 514, column: 1, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !3582, file: !1, discriminator: 17)
!3582 = distinct !DILexicalBlock(scope: !3577, file: !1, line: 514, column: 1)
!3583 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 514, column: 1, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !3586, file: !1, discriminator: 15)
!3586 = !DILexicalBlockFile(scope: !3587, file: !1, discriminator: 13)
!3587 = distinct !DILexicalBlock(scope: !3582, file: !1, line: 514, column: 1)
!3588 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3584)
!3589 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3584)
!3590 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3584)
!3591 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3584)
!3592 = !DILocation(line: 514, column: 1, scope: !3582)
!3593 = !DILocation(line: 514, column: 1, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3595, file: !1, discriminator: 23)
!3595 = !DILexicalBlockFile(scope: !3582, file: !1, discriminator: 22)
!3596 = !DILocation(line: 514, column: 1, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3598, file: !1, discriminator: 24)
!3598 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 16)
!3599 = !DILocation(line: 514, column: 1, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !3601, file: !1, discriminator: 25)
!3601 = !DILexicalBlockFile(scope: !3602, file: !1, discriminator: 19)
!3602 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 7)
!3603 = !DILocation(line: 515, column: 1, scope: !707)
!3604 = !DILocation(line: 515, column: 1, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !707, file: !1, line: 515, column: 1)
!3606 = !DILocation(line: 515, column: 1, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !3605, file: !1, discriminator: 2)
!3608 = !DILocation(line: 515, column: 1, scope: !3609)
!3609 = !DILexicalBlockFile(scope: !3610, file: !1, discriminator: 5)
!3610 = distinct !DILexicalBlock(scope: !3605, file: !1, line: 515, column: 1)
!3611 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 515, column: 1, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3614, file: !1, discriminator: 3)
!3614 = !DILexicalBlockFile(scope: !3615, file: !1, discriminator: 1)
!3615 = distinct !DILexicalBlock(scope: !3610, file: !1, line: 515, column: 1)
!3616 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3612)
!3617 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3612)
!3618 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3612)
!3619 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3612)
!3620 = !DILocation(line: 515, column: 1, scope: !3610)
!3621 = !DILocation(line: 515, column: 1, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3623, file: !1, discriminator: 11)
!3623 = !DILexicalBlockFile(scope: !3610, file: !1, discriminator: 10)
!3624 = !DILocation(line: 515, column: 1, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3626, file: !1, discriminator: 12)
!3626 = !DILexicalBlockFile(scope: !3627, file: !1, discriminator: 4)
!3627 = distinct !DILexicalBlock(scope: !707, file: !1, line: 515, column: 1)
!3628 = !DILocation(line: 515, column: 1, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3627, file: !1, discriminator: 14)
!3630 = !DILocation(line: 515, column: 1, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3632, file: !1, discriminator: 17)
!3632 = distinct !DILexicalBlock(scope: !3627, file: !1, line: 515, column: 1)
!3633 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 515, column: 1, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3636, file: !1, discriminator: 15)
!3636 = !DILexicalBlockFile(scope: !3637, file: !1, discriminator: 13)
!3637 = distinct !DILexicalBlock(scope: !3632, file: !1, line: 515, column: 1)
!3638 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3634)
!3639 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3634)
!3640 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3634)
!3641 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3634)
!3642 = !DILocation(line: 515, column: 1, scope: !3632)
!3643 = !DILocation(line: 515, column: 1, scope: !3644)
!3644 = !DILexicalBlockFile(scope: !3645, file: !1, discriminator: 23)
!3645 = !DILexicalBlockFile(scope: !3632, file: !1, discriminator: 22)
!3646 = !DILocation(line: 515, column: 1, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3648, file: !1, discriminator: 24)
!3648 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 16)
!3649 = !DILocation(line: 515, column: 1, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3651, file: !1, discriminator: 25)
!3651 = !DILexicalBlockFile(scope: !3652, file: !1, discriminator: 19)
!3652 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 7)
!3653 = !DILocation(line: 523, column: 1, scope: !711)
!3654 = !DILocation(line: 523, column: 1, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !711, file: !1, line: 523, column: 1)
!3656 = !DILocation(line: 523, column: 1, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3655, file: !1, discriminator: 2)
!3658 = !DILocation(line: 523, column: 1, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3660, file: !1, discriminator: 5)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !1, line: 523, column: 1)
!3661 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 523, column: 1, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3664, file: !1, discriminator: 3)
!3664 = !DILexicalBlockFile(scope: !3665, file: !1, discriminator: 1)
!3665 = distinct !DILexicalBlock(scope: !3660, file: !1, line: 523, column: 1)
!3666 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3662)
!3667 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3662)
!3668 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3662)
!3669 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3662)
!3670 = !DILocation(line: 523, column: 1, scope: !3660)
!3671 = !DILocation(line: 523, column: 1, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3673, file: !1, discriminator: 11)
!3673 = !DILexicalBlockFile(scope: !3660, file: !1, discriminator: 10)
!3674 = !DILocation(line: 523, column: 1, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3676, file: !1, discriminator: 12)
!3676 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 4)
!3677 = !DILocation(line: 523, column: 1, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3679, file: !1, discriminator: 13)
!3679 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 7)
!3680 = !DILocation(line: 557, column: 31, scope: !714)
!3681 = !DILocation(line: 561, column: 28, scope: !714)
!3682 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 559, column: 10, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !714, file: !1, line: 559, column: 9)
!3685 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3683)
!3686 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3683)
!3687 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3683)
!3688 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3683)
!3689 = !DILocation(line: 559, column: 9, scope: !714)
!3690 = !DILocation(line: 561, column: 12, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3692, file: !1, discriminator: 4)
!3692 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 3)
!3693 = !DILocation(line: 561, column: 5, scope: !714)
!3694 = !DILocation(line: 562, column: 1, scope: !714)
!3695 = !DILocation(line: 546, column: 33, scope: !717)
!3696 = !DILocation(line: 546, column: 50, scope: !717)
!3697 = !DILocation(line: 550, column: 32, scope: !717)
!3698 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 548, column: 10, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !717, file: !1, line: 548, column: 9)
!3701 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3699)
!3702 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3699)
!3703 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3699)
!3704 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3699)
!3705 = !DILocation(line: 548, column: 9, scope: !717)
!3706 = !DILocation(line: 550, column: 12, scope: !717)
!3707 = !DILocation(line: 550, column: 5, scope: !717)
!3708 = !DILocation(line: 551, column: 1, scope: !717)
!3709 = !DILocation(line: 564, column: 1, scope: !723)
!3710 = !DILocation(line: 564, column: 1, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !723, file: !1, line: 564, column: 1)
!3712 = !DILocation(line: 564, column: 1, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3711, file: !1, discriminator: 2)
!3714 = !DILocation(line: 564, column: 1, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3716, file: !1, discriminator: 5)
!3716 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 564, column: 1)
!3717 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 564, column: 1, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3720, file: !1, discriminator: 3)
!3720 = !DILexicalBlockFile(scope: !3721, file: !1, discriminator: 1)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !1, line: 564, column: 1)
!3722 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3718)
!3723 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3718)
!3724 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3718)
!3725 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3718)
!3726 = !DILocation(line: 564, column: 1, scope: !3716)
!3727 = !DILocation(line: 564, column: 1, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3729, file: !1, discriminator: 11)
!3729 = !DILexicalBlockFile(scope: !3716, file: !1, discriminator: 10)
!3730 = !DILocation(line: 564, column: 1, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3732, file: !1, discriminator: 12)
!3732 = !DILexicalBlockFile(scope: !3733, file: !1, discriminator: 4)
!3733 = distinct !DILexicalBlock(scope: !723, file: !1, line: 564, column: 1)
!3734 = !DILocation(line: 564, column: 1, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3733, file: !1, discriminator: 14)
!3736 = !DILocation(line: 564, column: 1, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3738, file: !1, discriminator: 17)
!3738 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 564, column: 1)
!3739 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 564, column: 1, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3742, file: !1, discriminator: 15)
!3742 = !DILexicalBlockFile(scope: !3743, file: !1, discriminator: 13)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !1, line: 564, column: 1)
!3744 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3740)
!3745 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3740)
!3746 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3740)
!3747 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3740)
!3748 = !DILocation(line: 564, column: 1, scope: !3738)
!3749 = !DILocation(line: 564, column: 1, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !3751, file: !1, discriminator: 23)
!3751 = !DILexicalBlockFile(scope: !3738, file: !1, discriminator: 22)
!3752 = !DILocation(line: 564, column: 1, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3754, file: !1, discriminator: 24)
!3754 = !DILexicalBlockFile(scope: !723, file: !1, discriminator: 16)
!3755 = !DILocation(line: 564, column: 1, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3757, file: !1, discriminator: 25)
!3757 = !DILexicalBlockFile(scope: !3758, file: !1, discriminator: 19)
!3758 = !DILexicalBlockFile(scope: !723, file: !1, discriminator: 7)
!3759 = !DILocation(line: 567, column: 32, scope: !727)
!3760 = !DILocation(line: 567, column: 49, scope: !727)
!3761 = !DILocation(line: 567, column: 64, scope: !727)
!3762 = !DILocation(line: 573, column: 33, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !727, file: !1, line: 572, column: 9)
!3764 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 569, column: 10, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !727, file: !1, line: 569, column: 9)
!3767 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3765)
!3768 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3765)
!3769 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3765)
!3770 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3765)
!3771 = !DILocation(line: 569, column: 9, scope: !727)
!3772 = !DILocation(line: 572, column: 15, scope: !3763)
!3773 = !DILocation(line: 572, column: 9, scope: !727)
!3774 = !DILocation(line: 573, column: 16, scope: !3763)
!3775 = !DILocation(line: 573, column: 9, scope: !3763)
!3776 = !DILocation(line: 575, column: 16, scope: !3763)
!3777 = !DILocation(line: 575, column: 9, scope: !3763)
!3778 = !DILocation(line: 576, column: 1, scope: !727)
!3779 = !DILocation(line: 597, column: 1, scope: !757)
!3780 = !DILocation(line: 597, column: 1, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !757, file: !1, line: 597, column: 1)
!3782 = !DILocation(line: 597, column: 1, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3781, file: !1, discriminator: 2)
!3784 = !DILocation(line: 597, column: 1, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !3786, file: !1, discriminator: 5)
!3786 = distinct !DILexicalBlock(scope: !3781, file: !1, line: 597, column: 1)
!3787 = !DILocation(line: 394, column: 9, scope: !1364, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 597, column: 1, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3790, file: !1, discriminator: 3)
!3790 = !DILexicalBlockFile(scope: !3791, file: !1, discriminator: 1)
!3791 = distinct !DILexicalBlock(scope: !3786, file: !1, line: 597, column: 1)
!3792 = !DILocation(line: 394, column: 9, scope: !1370, inlinedAt: !3788)
!3793 = !DILocation(line: 394, column: 9, scope: !588, inlinedAt: !3788)
!3794 = !DILocation(line: 395, column: 25, scope: !1373, inlinedAt: !3788)
!3795 = !DILocation(line: 395, column: 9, scope: !1373, inlinedAt: !3788)
!3796 = !DILocation(line: 597, column: 1, scope: !3786)
!3797 = !DILocation(line: 597, column: 1, scope: !3798)
!3798 = !DILexicalBlockFile(scope: !3799, file: !1, discriminator: 11)
!3799 = !DILexicalBlockFile(scope: !3786, file: !1, discriminator: 10)
!3800 = !DILocation(line: 597, column: 1, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !3802, file: !1, discriminator: 12)
!3802 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 4)
!3803 = !DILocation(line: 597, column: 1, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3805, file: !1, discriminator: 13)
!3805 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 7)
