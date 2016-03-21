; ModuleID = 'irs-onlybc/weakrefobject.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

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

; Function Attrs: nounwind uwtable
define i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %head) #0 {
entry:
  %head.addr = alloca %struct._PyWeakReference*, align 8
  %count = alloca i64, align 8
  store %struct._PyWeakReference* %head, %struct._PyWeakReference** %head.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %head.addr, metadata !377, metadata !836), !dbg !837
  %0 = bitcast i64* %count to i8*, !dbg !838
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !838
  call void @llvm.dbg.declare(metadata i64* %count, metadata !378, metadata !836), !dbg !839
  store i64 0, i64* %count, align 8, !dbg !839, !tbaa !840
  br label %while.cond, !dbg !842

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !843, !tbaa !832
  %cmp = icmp ne %struct._PyWeakReference* %1, null, !dbg !846
  br i1 %cmp, label %while.body, label %while.end, !dbg !842

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %count, align 8, !dbg !847, !tbaa !840
  %inc = add i64 %2, 1, !dbg !847
  store i64 %inc, i64* %count, align 8, !dbg !847, !tbaa !840
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !849, !tbaa !832
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 5, !dbg !850
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !850, !tbaa !851
  store %struct._PyWeakReference* %4, %struct._PyWeakReference** %head.addr, align 8, !dbg !854, !tbaa !832
  br label %while.cond, !dbg !842

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %count, align 8, !dbg !855, !tbaa !840
  %6 = bitcast i64* %count to i8*, !dbg !856
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !856
  ret i64 %5, !dbg !857
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @_PyWeakref_ClearRef(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %callback = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !383, metadata !836), !dbg !858
  %0 = bitcast %struct._object** %callback to i8*, !dbg !859
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !859
  call void @llvm.dbg.declare(metadata %struct._object** %callback, metadata !384, metadata !836), !dbg !860
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !861, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 2, !dbg !862
  %2 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !862, !tbaa !863
  store %struct._object* %2, %struct._object** %callback, align 8, !dbg !864, !tbaa !832
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !865, !tbaa !832
  %wr_callback1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 2, !dbg !866
  store %struct._object* null, %struct._object** %wr_callback1, align 8, !dbg !867, !tbaa !863
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !868, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %4), !dbg !869
  %5 = load %struct._object*, %struct._object** %callback, align 8, !dbg !870, !tbaa !832
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !871, !tbaa !832
  %wr_callback2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i32 0, i32 2, !dbg !872
  store %struct._object* %5, %struct._object** %wr_callback2, align 8, !dbg !873, !tbaa !863
  %7 = bitcast %struct._object** %callback to i8*, !dbg !874
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !874
  ret void, !dbg !874
}

; Function Attrs: nounwind uwtable
define internal void @clear_weakref(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %callback = alloca %struct._object*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !468, metadata !836), !dbg !875
  %0 = bitcast %struct._object** %callback to i8*, !dbg !876
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !876
  call void @llvm.dbg.declare(metadata %struct._object** %callback, metadata !469, metadata !836), !dbg !877
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !878, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 2, !dbg !879
  %2 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !879, !tbaa !863
  store %struct._object* %2, %struct._object** %callback, align 8, !dbg !877, !tbaa !832
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !880, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1, !dbg !881
  %4 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !881, !tbaa !882
  %cmp = icmp ne %struct._object* %4, @_Py_NoneStruct, !dbg !883
  br i1 %cmp, label %if.then, label %if.end.21, !dbg !884

if.then:                                          ; preds = %entry
  %5 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !885
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !885
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %list, metadata !470, metadata !836), !dbg !886
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !887, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i32 0, i32 1, !dbg !888
  %7 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !888, !tbaa !882
  %8 = bitcast %struct._object* %7 to i8*, !dbg !889
  %9 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !890, !tbaa !832
  %wr_object2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i32 0, i32 1, !dbg !891
  %10 = load %struct._object*, %struct._object** %wr_object2, align 8, !dbg !891, !tbaa !882
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !892
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !892, !tbaa !893
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 24, !dbg !894
  %12 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !894, !tbaa !895
  %add.ptr = getelementptr i8, i8* %8, i64 %12, !dbg !899
  %13 = bitcast i8* %add.ptr to %struct._object**, !dbg !900
  %14 = bitcast %struct._object** %13 to %struct._PyWeakReference**, !dbg !901
  store %struct._PyWeakReference** %14, %struct._PyWeakReference*** %list, align 8, !dbg !886, !tbaa !832
  %15 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !902, !tbaa !832
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %15, align 8, !dbg !904, !tbaa !832
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !905, !tbaa !832
  %cmp3 = icmp eq %struct._PyWeakReference* %16, %17, !dbg !906
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !907

if.then.4:                                        ; preds = %if.then
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !908, !tbaa !832
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %18, i32 0, i32 5, !dbg !909
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !909, !tbaa !851
  %20 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !910, !tbaa !832
  store %struct._PyWeakReference* %19, %struct._PyWeakReference** %20, align 8, !dbg !911, !tbaa !832
  br label %if.end, !dbg !912

if.end:                                           ; preds = %if.then.4, %if.then
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !913, !tbaa !832
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %21, i32 0, i32 1, !dbg !914
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object5, align 8, !dbg !915, !tbaa !882
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !916, !tbaa !832
  %wr_prev = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %22, i32 0, i32 4, !dbg !918
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev, align 8, !dbg !918, !tbaa !919
  %cmp6 = icmp ne %struct._PyWeakReference* %23, null, !dbg !920
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !921

if.then.7:                                        ; preds = %if.end
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !922, !tbaa !832
  %wr_next8 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 5, !dbg !923
  %25 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next8, align 8, !dbg !923, !tbaa !851
  %26 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !924, !tbaa !832
  %wr_prev9 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %26, i32 0, i32 4, !dbg !925
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev9, align 8, !dbg !925, !tbaa !919
  %wr_next10 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i32 0, i32 5, !dbg !926
  store %struct._PyWeakReference* %25, %struct._PyWeakReference** %wr_next10, align 8, !dbg !927, !tbaa !851
  br label %if.end.11, !dbg !924

if.end.11:                                        ; preds = %if.then.7, %if.end
  %28 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !928, !tbaa !832
  %wr_next12 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %28, i32 0, i32 5, !dbg !930
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next12, align 8, !dbg !930, !tbaa !851
  %cmp13 = icmp ne %struct._PyWeakReference* %29, null, !dbg !931
  br i1 %cmp13, label %if.then.14, label %if.end.18, !dbg !932

if.then.14:                                       ; preds = %if.end.11
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !933, !tbaa !832
  %wr_prev15 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %30, i32 0, i32 4, !dbg !934
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev15, align 8, !dbg !934, !tbaa !919
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !935, !tbaa !832
  %wr_next16 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %32, i32 0, i32 5, !dbg !936
  %33 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next16, align 8, !dbg !936, !tbaa !851
  %wr_prev17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %33, i32 0, i32 4, !dbg !937
  store %struct._PyWeakReference* %31, %struct._PyWeakReference** %wr_prev17, align 8, !dbg !938, !tbaa !919
  br label %if.end.18, !dbg !935

if.end.18:                                        ; preds = %if.then.14, %if.end.11
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !939, !tbaa !832
  %wr_prev19 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 4, !dbg !940
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %wr_prev19, align 8, !dbg !941, !tbaa !919
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !942, !tbaa !832
  %wr_next20 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %35, i32 0, i32 5, !dbg !943
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %wr_next20, align 8, !dbg !944, !tbaa !851
  %36 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !945
  br label %if.end.21, !dbg !946

if.end.21:                                        ; preds = %if.end.18, %entry
  %37 = load %struct._object*, %struct._object** %callback, align 8, !dbg !947, !tbaa !832
  %cmp22 = icmp ne %struct._object* %37, null, !dbg !948
  br i1 %cmp22, label %if.then.23, label %if.end.29, !dbg !949

if.then.23:                                       ; preds = %if.end.21
  br label %do.body, !dbg !950

do.body:                                          ; preds = %if.then.23
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !951
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !951
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !473, metadata !836), !dbg !953
  %39 = load %struct._object*, %struct._object** %callback, align 8, !dbg !954, !tbaa !832
  store %struct._object* %39, %struct._object** %_py_decref_tmp, align 8, !dbg !953, !tbaa !832
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !955, !tbaa !832
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !957
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !958, !tbaa !959
  %dec = add i64 %41, -1, !dbg !958
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !958, !tbaa !959
  %cmp24 = icmp ne i64 %dec, 0, !dbg !960
  br i1 %cmp24, label %if.then.25, label %if.else, !dbg !961

if.then.25:                                       ; preds = %do.body
  br label %if.end.27, !dbg !962

if.else:                                          ; preds = %do.body
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !964, !tbaa !832
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !966
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !966, !tbaa !893
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !967
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !967, !tbaa !968
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !969, !tbaa !832
  call void %44(%struct._object* %45), !dbg !970
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %46 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !971
  br label %do.cond, !dbg !973

do.cond:                                          ; preds = %if.end.27
  br label %do.end, !dbg !974

do.end:                                           ; preds = %do.cond
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !976, !tbaa !832
  %wr_callback28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %47, i32 0, i32 2, !dbg !977
  store %struct._object* null, %struct._object** %wr_callback28, align 8, !dbg !978, !tbaa !863
  br label %if.end.29, !dbg !979

if.end.29:                                        ; preds = %do.end, %if.end.21
  %48 = bitcast %struct._object** %callback to i8*, !dbg !980
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !980
  ret void, !dbg !980
}

; Function Attrs: nounwind uwtable
define internal void @weakref_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !479, metadata !836), !dbg !981
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !982, !tbaa !832
  %1 = bitcast %struct._object* %0 to i8*, !dbg !982
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !983
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !984, !tbaa !832
  %3 = bitcast %struct._object* %2 to %struct._PyWeakReference*, !dbg !985
  call void @clear_weakref(%struct._PyWeakReference* %3), !dbg !986
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !987, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !988
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !988, !tbaa !893
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 38, !dbg !989
  %6 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !989, !tbaa !990
  %7 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !991, !tbaa !832
  %8 = bitcast %struct._object* %7 to i8*, !dbg !991
  call void %6(i8* %8), !dbg !992
  ret void, !dbg !993
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_repr(%struct._PyWeakReference* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %name = alloca %struct._object*, align 8
  %repr = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !484, metadata !836), !dbg !994
  %0 = bitcast %struct._object** %name to i8*, !dbg !995
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !995
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !485, metadata !836), !dbg !996
  %1 = bitcast %struct._object** %repr to i8*, !dbg !995
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !995
  call void @llvm.dbg.declare(metadata %struct._object** %repr, metadata !486, metadata !836), !dbg !997
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !998, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1, !dbg !1000
  %3 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1000, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !1001
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1001, !tbaa !959
  %cmp = icmp sgt i64 %4, 0, !dbg !1002
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1003

cond.true:                                        ; preds = %entry
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1004, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1, !dbg !1006
  %6 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !1006, !tbaa !882
  br label %cond.end, !dbg !1003

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1007

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %6, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1003
  %cmp2 = icmp eq %struct._object* %cond, @_Py_NoneStruct, !dbg !1009
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1012

if.then:                                          ; preds = %cond.end
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1013, !tbaa !832
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._PyWeakReference* %7), !dbg !1014
  store %struct._object* %call, %struct._object** %retval, !dbg !1015
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1015

if.end:                                           ; preds = %cond.end
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1016, !tbaa !832
  %wr_object3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 1, !dbg !1017
  %9 = load %struct._object*, %struct._object** %wr_object3, align 8, !dbg !1017, !tbaa !882
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1018
  %10 = load i64, i64* %ob_refcnt4, align 8, !dbg !1018, !tbaa !959
  %cmp5 = icmp sgt i64 %10, 0, !dbg !1019
  br i1 %cmp5, label %cond.true.6, label %cond.false.8, !dbg !1020

cond.true.6:                                      ; preds = %if.end
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1021, !tbaa !832
  %wr_object7 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !1023
  %12 = load %struct._object*, %struct._object** %wr_object7, align 8, !dbg !1023, !tbaa !882
  br label %cond.end.9, !dbg !1020

cond.false.8:                                     ; preds = %if.end
  br label %cond.end.9, !dbg !1024

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi %struct._object* [ %12, %cond.true.6 ], [ @_Py_NoneStruct, %cond.false.8 ], !dbg !1020
  %call11 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %cond10, %struct._Py_Identifier* @weakref_repr.PyId___name__), !dbg !1026
  store %struct._object* %call11, %struct._object** %name, align 8, !dbg !1029, !tbaa !832
  %13 = load %struct._object*, %struct._object** %name, align 8, !dbg !1030, !tbaa !832
  %cmp12 = icmp eq %struct._object* %13, null, !dbg !1032
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false, !dbg !1033

lor.lhs.false:                                    ; preds = %cond.end.9
  %14 = load %struct._object*, %struct._object** %name, align 8, !dbg !1034, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1036
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1036, !tbaa !893
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19, !dbg !1037
  %16 = load i64, i64* %tp_flags, align 8, !dbg !1037, !tbaa !1038
  %and = and i64 %16, 268435456, !dbg !1039
  %cmp13 = icmp ne i64 %and, 0, !dbg !1040
  br i1 %cmp13, label %if.else, label %if.then.14, !dbg !1041

if.then.14:                                       ; preds = %lor.lhs.false, %cond.end.9
  %17 = load %struct._object*, %struct._object** %name, align 8, !dbg !1042, !tbaa !832
  %cmp15 = icmp eq %struct._object* %17, null, !dbg !1045
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1046

if.then.16:                                       ; preds = %if.then.14
  call void @PyErr_Clear(), !dbg !1047
  br label %if.end.17, !dbg !1047

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1048, !tbaa !832
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1049, !tbaa !832
  %wr_object18 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i32 0, i32 1, !dbg !1050
  %20 = load %struct._object*, %struct._object** %wr_object18, align 8, !dbg !1050, !tbaa !882
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1051
  %21 = load i64, i64* %ob_refcnt19, align 8, !dbg !1051, !tbaa !959
  %cmp20 = icmp sgt i64 %21, 0, !dbg !1052
  br i1 %cmp20, label %cond.true.21, label %cond.false.23, !dbg !1053

cond.true.21:                                     ; preds = %if.end.17
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1054, !tbaa !832
  %wr_object22 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %22, i32 0, i32 1, !dbg !1056
  %23 = load %struct._object*, %struct._object** %wr_object22, align 8, !dbg !1056, !tbaa !882
  br label %cond.end.24, !dbg !1053

cond.false.23:                                    ; preds = %if.end.17
  br label %cond.end.24, !dbg !1057

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi %struct._object* [ %23, %cond.true.21 ], [ @_Py_NoneStruct, %cond.false.23 ], !dbg !1053
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %cond25, i32 0, i32 1, !dbg !1059
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1059, !tbaa !893
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 1, !dbg !1062
  %25 = load i8*, i8** %tp_name, align 8, !dbg !1062, !tbaa !1063
  %26 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1064, !tbaa !832
  %wr_object27 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %26, i32 0, i32 1, !dbg !1065
  %27 = load %struct._object*, %struct._object** %wr_object27, align 8, !dbg !1065, !tbaa !882
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !1066
  %28 = load i64, i64* %ob_refcnt28, align 8, !dbg !1066, !tbaa !959
  %cmp29 = icmp sgt i64 %28, 0, !dbg !1067
  br i1 %cmp29, label %cond.true.30, label %cond.false.32, !dbg !1068

cond.true.30:                                     ; preds = %cond.end.24
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1069, !tbaa !832
  %wr_object31 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %29, i32 0, i32 1, !dbg !1070
  %30 = load %struct._object*, %struct._object** %wr_object31, align 8, !dbg !1070, !tbaa !882
  br label %cond.end.33, !dbg !1068

cond.false.32:                                    ; preds = %cond.end.24
  br label %cond.end.33, !dbg !1071

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi %struct._object* [ %30, %cond.true.30 ], [ @_Py_NoneStruct, %cond.false.32 ], !dbg !1068
  %call35 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), %struct._PyWeakReference* %18, i8* %25, %struct._object* %cond34), !dbg !1072
  store %struct._object* %call35, %struct._object** %repr, align 8, !dbg !1073, !tbaa !832
  br label %if.end.55, !dbg !1074

if.else:                                          ; preds = %lor.lhs.false
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1075, !tbaa !832
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1077, !tbaa !832
  %wr_object36 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %32, i32 0, i32 1, !dbg !1078
  %33 = load %struct._object*, %struct._object** %wr_object36, align 8, !dbg !1078, !tbaa !882
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1079
  %34 = load i64, i64* %ob_refcnt37, align 8, !dbg !1079, !tbaa !959
  %cmp38 = icmp sgt i64 %34, 0, !dbg !1080
  br i1 %cmp38, label %cond.true.39, label %cond.false.41, !dbg !1081

cond.true.39:                                     ; preds = %if.else
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1082, !tbaa !832
  %wr_object40 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %35, i32 0, i32 1, !dbg !1084
  %36 = load %struct._object*, %struct._object** %wr_object40, align 8, !dbg !1084, !tbaa !882
  br label %cond.end.42, !dbg !1081

cond.false.41:                                    ; preds = %if.else
  br label %cond.end.42, !dbg !1085

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi %struct._object* [ %36, %cond.true.39 ], [ @_Py_NoneStruct, %cond.false.41 ], !dbg !1081
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %cond43, i32 0, i32 1, !dbg !1087
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1087, !tbaa !893
  %tp_name45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 1, !dbg !1090
  %38 = load i8*, i8** %tp_name45, align 8, !dbg !1090, !tbaa !1063
  %39 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1091, !tbaa !832
  %wr_object46 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %39, i32 0, i32 1, !dbg !1092
  %40 = load %struct._object*, %struct._object** %wr_object46, align 8, !dbg !1092, !tbaa !882
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1093
  %41 = load i64, i64* %ob_refcnt47, align 8, !dbg !1093, !tbaa !959
  %cmp48 = icmp sgt i64 %41, 0, !dbg !1094
  br i1 %cmp48, label %cond.true.49, label %cond.false.51, !dbg !1095

cond.true.49:                                     ; preds = %cond.end.42
  %42 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1096, !tbaa !832
  %wr_object50 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %42, i32 0, i32 1, !dbg !1097
  %43 = load %struct._object*, %struct._object** %wr_object50, align 8, !dbg !1097, !tbaa !882
  br label %cond.end.52, !dbg !1095

cond.false.51:                                    ; preds = %cond.end.42
  br label %cond.end.52, !dbg !1098

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi %struct._object* [ %43, %cond.true.49 ], [ @_Py_NoneStruct, %cond.false.51 ], !dbg !1095
  %44 = load %struct._object*, %struct._object** %name, align 8, !dbg !1099, !tbaa !832
  %call54 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), %struct._PyWeakReference* %31, i8* %38, %struct._object* %cond53, %struct._object* %44), !dbg !1100
  store %struct._object* %call54, %struct._object** %repr, align 8, !dbg !1101, !tbaa !832
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.52, %cond.end.33
  br label %do.body, !dbg !1102

do.body:                                          ; preds = %if.end.55
  %45 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1103
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !1103
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !487, metadata !836), !dbg !1105
  %46 = load %struct._object*, %struct._object** %name, align 8, !dbg !1106, !tbaa !832
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1105, !tbaa !832
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1107, !tbaa !832
  %cmp56 = icmp ne %struct._object* %47, null, !dbg !1108
  br i1 %cmp56, label %if.then.57, label %if.end.65, !dbg !1109

if.then.57:                                       ; preds = %do.body
  br label %do.body.58, !dbg !1110

do.body.58:                                       ; preds = %if.then.57
  %48 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !1112
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !489, metadata !836), !dbg !1114
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1115, !tbaa !832
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8, !dbg !1114, !tbaa !832
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1116, !tbaa !832
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !1118
  %51 = load i64, i64* %ob_refcnt59, align 8, !dbg !1119, !tbaa !959
  %dec = add i64 %51, -1, !dbg !1119
  store i64 %dec, i64* %ob_refcnt59, align 8, !dbg !1119, !tbaa !959
  %cmp60 = icmp ne i64 %dec, 0, !dbg !1120
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !1121

if.then.61:                                       ; preds = %do.body.58
  br label %if.end.64, !dbg !1122

if.else.62:                                       ; preds = %do.body.58
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1124, !tbaa !832
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !1126
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !1126, !tbaa !893
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !1127
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1127, !tbaa !968
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1128, !tbaa !832
  call void %54(%struct._object* %55), !dbg !1129
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  %56 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1130
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !1130
  br label %do.cond, !dbg !1132

do.cond:                                          ; preds = %if.end.64
  br label %do.end, !dbg !1133

do.end:                                           ; preds = %do.cond
  br label %if.end.65, !dbg !1135

if.end.65:                                        ; preds = %do.end, %do.body
  %57 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1137
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !1137
  br label %do.cond.66, !dbg !1139

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !1140

do.end.67:                                        ; preds = %do.cond.66
  %58 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1142, !tbaa !832
  store %struct._object* %58, %struct._object** %retval, !dbg !1143
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1143

cleanup:                                          ; preds = %do.end.67, %if.then
  %59 = bitcast %struct._object** %repr to i8*, !dbg !1144
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1144
  %60 = bitcast %struct._object** %name to i8*, !dbg !1144
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !1144
  %61 = load %struct._object*, %struct._object** %retval, !dbg !1144
  ret %struct._object* %61, !dbg !1144
}

; Function Attrs: nounwind uwtable
define internal i64 @weakref_hash(%struct._PyWeakReference* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !496, metadata !836), !dbg !1145
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1146, !tbaa !832
  %hash = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 3, !dbg !1148
  %1 = load i64, i64* %hash, align 8, !dbg !1148, !tbaa !1149
  %cmp = icmp ne i64 %1, -1, !dbg !1150
  br i1 %cmp, label %if.then, label %if.end, !dbg !1151

if.then:                                          ; preds = %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1152, !tbaa !832
  %hash1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 3, !dbg !1153
  %3 = load i64, i64* %hash1, align 8, !dbg !1153, !tbaa !1149
  store i64 %3, i64* %retval, !dbg !1154
  br label %return, !dbg !1154

if.end:                                           ; preds = %entry
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1155, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !1157
  %5 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1157, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1158
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1158, !tbaa !959
  %cmp2 = icmp sgt i64 %6, 0, !dbg !1159
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !1160

cond.true:                                        ; preds = %if.end
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1161, !tbaa !832
  %wr_object3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !1163
  %8 = load %struct._object*, %struct._object** %wr_object3, align 8, !dbg !1163, !tbaa !882
  br label %cond.end, !dbg !1160

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %8, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1160
  %cmp4 = icmp eq %struct._object* %cond, @_Py_NoneStruct, !dbg !1166
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1169

if.then.5:                                        ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1170, !tbaa !832
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)), !dbg !1172
  store i64 -1, i64* %retval, !dbg !1173
  br label %return, !dbg !1173

if.end.6:                                         ; preds = %cond.end
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1174, !tbaa !832
  %wr_object7 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 1, !dbg !1175
  %11 = load %struct._object*, %struct._object** %wr_object7, align 8, !dbg !1175, !tbaa !882
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1176
  %12 = load i64, i64* %ob_refcnt8, align 8, !dbg !1176, !tbaa !959
  %cmp9 = icmp sgt i64 %12, 0, !dbg !1177
  br i1 %cmp9, label %cond.true.10, label %cond.false.12, !dbg !1178

cond.true.10:                                     ; preds = %if.end.6
  %13 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1179, !tbaa !832
  %wr_object11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %13, i32 0, i32 1, !dbg !1181
  %14 = load %struct._object*, %struct._object** %wr_object11, align 8, !dbg !1181, !tbaa !882
  br label %cond.end.13, !dbg !1178

cond.false.12:                                    ; preds = %if.end.6
  br label %cond.end.13, !dbg !1182

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi %struct._object* [ %14, %cond.true.10 ], [ @_Py_NoneStruct, %cond.false.12 ], !dbg !1178
  %call = call i64 @PyObject_Hash(%struct._object* %cond14), !dbg !1184
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1187, !tbaa !832
  %hash15 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %15, i32 0, i32 3, !dbg !1188
  store i64 %call, i64* %hash15, align 8, !dbg !1189, !tbaa !1149
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1190, !tbaa !832
  %hash16 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i32 0, i32 3, !dbg !1191
  %17 = load i64, i64* %hash16, align 8, !dbg !1191, !tbaa !1149
  store i64 %17, i64* %retval, !dbg !1192
  br label %return, !dbg !1192

return:                                           ; preds = %cond.end.13, %if.then.5, %if.then
  %18 = load i64, i64* %retval, !dbg !1193
  ret i64 %18, !dbg !1193
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_call(%struct._PyWeakReference* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !501, metadata !836), !dbg !1194
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !502, metadata !836), !dbg !1195
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !503, metadata !836), !dbg !1196
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1197, !tbaa !832
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1198, !tbaa !832
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @weakref_call.kwlist, i32 0, i32 0)), !dbg !1199
  %tobool = icmp ne i32 %call, 0, !dbg !1199
  br i1 %tobool, label %if.then, label %if.end, !dbg !1200

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %object to i8*, !dbg !1201
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1201
  call void @llvm.dbg.declare(metadata %struct._object** %object, metadata !504, metadata !836), !dbg !1202
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1203, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1, !dbg !1204
  %4 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1204, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !1205
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1205, !tbaa !959
  %cmp = icmp sgt i64 %5, 0, !dbg !1206
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1207

cond.true:                                        ; preds = %if.then
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1208, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i32 0, i32 1, !dbg !1210
  %7 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !1210, !tbaa !882
  br label %cond.end, !dbg !1207

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !1211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %7, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1207
  store %struct._object* %cond, %struct._object** %object, align 8, !dbg !1213, !tbaa !832
  %8 = load %struct._object*, %struct._object** %object, align 8, !dbg !1216, !tbaa !832
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1217
  %9 = load i64, i64* %ob_refcnt2, align 8, !dbg !1218, !tbaa !959
  %inc = add i64 %9, 1, !dbg !1218
  store i64 %inc, i64* %ob_refcnt2, align 8, !dbg !1218, !tbaa !959
  %10 = load %struct._object*, %struct._object** %object, align 8, !dbg !1219, !tbaa !832
  store %struct._object* %10, %struct._object** %retval, !dbg !1220
  %11 = bitcast %struct._object** %object to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1221
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1222
  br label %return, !dbg !1222

return:                                           ; preds = %if.end, %cond.end
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1223
  ret %struct._object* %12, !dbg !1223
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_traverse(%struct._PyWeakReference* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !511, metadata !836), !dbg !1224
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !512, metadata !836), !dbg !1225
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !513, metadata !836), !dbg !1226
  br label %do.body, !dbg !1227

do.body:                                          ; preds = %entry
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1228, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 2, !dbg !1230
  %1 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1230, !tbaa !863
  %tobool = icmp ne %struct._object* %1, null, !dbg !1231
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1232

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1233
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1233
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !514, metadata !836), !dbg !1235
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1236, !tbaa !832
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1237, !tbaa !832
  %wr_callback1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 2, !dbg !1238
  %5 = load %struct._object*, %struct._object** %wr_callback1, align 8, !dbg !1238, !tbaa !863
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1239, !tbaa !832
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1236
  store i32 %call, i32* %vret, align 4, !dbg !1235, !tbaa !1240
  %7 = load i32, i32* %vret, align 4, !dbg !1241, !tbaa !1240
  %tobool2 = icmp ne i32 %7, 0, !dbg !1241
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1243

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1244, !tbaa !1240
  store i32 %8, i32* %retval, !dbg !1246
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1246

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1247
  br label %cleanup, !dbg !1247

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1249
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1252

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1253

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1256
  br label %return, !dbg !1256

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, i32* %retval, !dbg !1257
  ret i32 %10, !dbg !1257

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_clear(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !522, metadata !836), !dbg !1258
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1259, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %0), !dbg !1260
  ret i32 0, !dbg !1261
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_richcompare(%struct._PyWeakReference* %self, %struct._PyWeakReference* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %other.addr = alloca %struct._PyWeakReference*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !527, metadata !836), !dbg !1262
  store %struct._PyWeakReference* %other, %struct._PyWeakReference** %other.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %other.addr, metadata !528, metadata !836), !dbg !1263
  store i32 %op, i32* %op.addr, align 4, !tbaa !1240
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !529, metadata !836), !dbg !1264
  %0 = load i32, i32* %op.addr, align 4, !dbg !1265, !tbaa !1240
  %cmp = icmp ne i32 %0, 2, !dbg !1267
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1268

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4, !dbg !1269, !tbaa !1240
  %cmp1 = icmp ne i32 %1, 3, !dbg !1271
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1272

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1273, !tbaa !832
  %3 = bitcast %struct._PyWeakReference* %2 to %struct._object*, !dbg !1274
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1275
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1275, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %4, @_PyWeakref_RefType, !dbg !1276
  br i1 %cmp2, label %lor.lhs.false.11, label %lor.lhs.false.3, !dbg !1277

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1278, !tbaa !832
  %6 = bitcast %struct._PyWeakReference* %5 to %struct._object*, !dbg !1279
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1280
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1280, !tbaa !893
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @_PyWeakref_RefType), !dbg !1281
  %tobool = icmp ne i32 %call, 0, !dbg !1281
  br i1 %tobool, label %lor.lhs.false.11, label %lor.lhs.false.5, !dbg !1282

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1283, !tbaa !832
  %9 = bitcast %struct._PyWeakReference* %8 to %struct._object*, !dbg !1285
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1286
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1286, !tbaa !893
  %cmp7 = icmp eq %struct._typeobject* %10, @_PyWeakref_ProxyType, !dbg !1287
  br i1 %cmp7, label %lor.lhs.false.11, label %lor.lhs.false.8, !dbg !1288

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1289, !tbaa !832
  %12 = bitcast %struct._PyWeakReference* %11 to %struct._object*, !dbg !1291
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1292
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !1292, !tbaa !893
  %cmp10 = icmp eq %struct._typeobject* %13, @_PyWeakref_CallableProxyType, !dbg !1293
  br i1 %cmp10, label %lor.lhs.false.11, label %if.then, !dbg !1294

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false
  %14 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1295, !tbaa !832
  %15 = bitcast %struct._PyWeakReference* %14 to %struct._object*, !dbg !1296
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1297
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1297, !tbaa !893
  %cmp13 = icmp eq %struct._typeobject* %16, @_PyWeakref_RefType, !dbg !1298
  br i1 %cmp13, label %if.end, label %lor.lhs.false.14, !dbg !1299

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1300, !tbaa !832
  %18 = bitcast %struct._PyWeakReference* %17 to %struct._object*, !dbg !1301
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1302
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1302, !tbaa !893
  %call16 = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* @_PyWeakref_RefType), !dbg !1303
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1303
  br i1 %tobool17, label %if.end, label %lor.lhs.false.18, !dbg !1304

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1305, !tbaa !832
  %21 = bitcast %struct._PyWeakReference* %20 to %struct._object*, !dbg !1306
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1307
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1307, !tbaa !893
  %cmp20 = icmp eq %struct._typeobject* %22, @_PyWeakref_ProxyType, !dbg !1308
  br i1 %cmp20, label %if.end, label %lor.lhs.false.21, !dbg !1309

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1310, !tbaa !832
  %24 = bitcast %struct._PyWeakReference* %23 to %struct._object*, !dbg !1311
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1312
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !1312, !tbaa !893
  %cmp23 = icmp eq %struct._typeobject* %25, @_PyWeakref_CallableProxyType, !dbg !1313
  br i1 %cmp23, label %if.end, label %if.then, !dbg !1314

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.8, %land.lhs.true
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1315, !tbaa !959
  %inc = add i64 %26, 1, !dbg !1315
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1315, !tbaa !959
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1317
  br label %return, !dbg !1317

if.end:                                           ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false.11
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1318, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i32 0, i32 1, !dbg !1319
  %28 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1319, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1320
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !1320, !tbaa !959
  %cmp24 = icmp sgt i64 %29, 0, !dbg !1321
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !1322

cond.true:                                        ; preds = %if.end
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1323, !tbaa !832
  %wr_object25 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %30, i32 0, i32 1, !dbg !1325
  %31 = load %struct._object*, %struct._object** %wr_object25, align 8, !dbg !1325, !tbaa !882
  br label %cond.end, !dbg !1322

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1326

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %31, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1322
  %cmp26 = icmp eq %struct._object* %cond, @_Py_NoneStruct, !dbg !1328
  br i1 %cmp26, label %if.then.37, label %lor.lhs.false.27, !dbg !1331

lor.lhs.false.27:                                 ; preds = %cond.end
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1332, !tbaa !832
  %wr_object28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %32, i32 0, i32 1, !dbg !1333
  %33 = load %struct._object*, %struct._object** %wr_object28, align 8, !dbg !1333, !tbaa !882
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1334
  %34 = load i64, i64* %ob_refcnt29, align 8, !dbg !1334, !tbaa !959
  %cmp30 = icmp sgt i64 %34, 0, !dbg !1335
  br i1 %cmp30, label %cond.true.31, label %cond.false.33, !dbg !1336

cond.true.31:                                     ; preds = %lor.lhs.false.27
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1337, !tbaa !832
  %wr_object32 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %35, i32 0, i32 1, !dbg !1338
  %36 = load %struct._object*, %struct._object** %wr_object32, align 8, !dbg !1338, !tbaa !882
  br label %cond.end.34, !dbg !1336

cond.false.33:                                    ; preds = %lor.lhs.false.27
  br label %cond.end.34, !dbg !1339

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi %struct._object* [ %36, %cond.true.31 ], [ @_Py_NoneStruct, %cond.false.33 ], !dbg !1336
  %cmp36 = icmp eq %struct._object* %cond35, @_Py_NoneStruct, !dbg !1340
  br i1 %cmp36, label %if.then.37, label %if.end.48, !dbg !1343

if.then.37:                                       ; preds = %cond.end.34, %cond.end
  %37 = bitcast i32* %res to i8*, !dbg !1344
  call void @llvm.lifetime.start(i64 4, i8* %37) #2, !dbg !1344
  call void @llvm.dbg.declare(metadata i32* %res, metadata !530, metadata !836), !dbg !1345
  %38 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1346, !tbaa !832
  %39 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1347, !tbaa !832
  %cmp38 = icmp eq %struct._PyWeakReference* %38, %39, !dbg !1348
  %conv = zext i1 %cmp38 to i32, !dbg !1348
  store i32 %conv, i32* %res, align 4, !dbg !1345, !tbaa !1240
  %40 = load i32, i32* %op.addr, align 4, !dbg !1349, !tbaa !1240
  %cmp39 = icmp eq i32 %40, 3, !dbg !1351
  br i1 %cmp39, label %if.then.41, label %if.end.43, !dbg !1352

if.then.41:                                       ; preds = %if.then.37
  %41 = load i32, i32* %res, align 4, !dbg !1353, !tbaa !1240
  %tobool42 = icmp ne i32 %41, 0, !dbg !1354
  %lnot = xor i1 %tobool42, true, !dbg !1354
  %lnot.ext = zext i1 %lnot to i32, !dbg !1354
  store i32 %lnot.ext, i32* %res, align 4, !dbg !1355, !tbaa !1240
  br label %if.end.43, !dbg !1356

if.end.43:                                        ; preds = %if.then.41, %if.then.37
  %42 = load i32, i32* %res, align 4, !dbg !1357, !tbaa !1240
  %tobool44 = icmp ne i32 %42, 0, !dbg !1357
  br i1 %tobool44, label %if.then.45, label %if.else, !dbg !1359

if.then.45:                                       ; preds = %if.end.43
  %43 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1360, !tbaa !959
  %inc46 = add i64 %43, 1, !dbg !1360
  store i64 %inc46, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1360, !tbaa !959
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1361
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1361

if.else:                                          ; preds = %if.end.43
  %44 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1362, !tbaa !959
  %inc47 = add i64 %44, 1, !dbg !1362
  store i64 %inc47, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1362, !tbaa !959
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1363

cleanup:                                          ; preds = %if.else, %if.then.45
  %45 = bitcast i32* %res to i8*, !dbg !1364
  call void @llvm.lifetime.end(i64 4, i8* %45) #2, !dbg !1364
  br label %return

if.end.48:                                        ; preds = %cond.end.34
  %46 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1365, !tbaa !832
  %wr_object49 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %46, i32 0, i32 1, !dbg !1366
  %47 = load %struct._object*, %struct._object** %wr_object49, align 8, !dbg !1366, !tbaa !882
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !1367
  %48 = load i64, i64* %ob_refcnt50, align 8, !dbg !1367, !tbaa !959
  %cmp51 = icmp sgt i64 %48, 0, !dbg !1368
  br i1 %cmp51, label %cond.true.53, label %cond.false.55, !dbg !1369

cond.true.53:                                     ; preds = %if.end.48
  %49 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1370, !tbaa !832
  %wr_object54 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %49, i32 0, i32 1, !dbg !1372
  %50 = load %struct._object*, %struct._object** %wr_object54, align 8, !dbg !1372, !tbaa !882
  br label %cond.end.56, !dbg !1369

cond.false.55:                                    ; preds = %if.end.48
  br label %cond.end.56, !dbg !1373

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi %struct._object* [ %50, %cond.true.53 ], [ @_Py_NoneStruct, %cond.false.55 ], !dbg !1369
  %51 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1375, !tbaa !832
  %wr_object58 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %51, i32 0, i32 1, !dbg !1376
  %52 = load %struct._object*, %struct._object** %wr_object58, align 8, !dbg !1376, !tbaa !882
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !1377
  %53 = load i64, i64* %ob_refcnt59, align 8, !dbg !1377, !tbaa !959
  %cmp60 = icmp sgt i64 %53, 0, !dbg !1378
  br i1 %cmp60, label %cond.true.62, label %cond.false.64, !dbg !1379

cond.true.62:                                     ; preds = %cond.end.56
  %54 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8, !dbg !1380, !tbaa !832
  %wr_object63 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %54, i32 0, i32 1, !dbg !1381
  %55 = load %struct._object*, %struct._object** %wr_object63, align 8, !dbg !1381, !tbaa !882
  br label %cond.end.65, !dbg !1379

cond.false.64:                                    ; preds = %cond.end.56
  br label %cond.end.65, !dbg !1382

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi %struct._object* [ %55, %cond.true.62 ], [ @_Py_NoneStruct, %cond.false.64 ], !dbg !1379
  %56 = load i32, i32* %op.addr, align 4, !dbg !1383, !tbaa !1240
  %call67 = call %struct._object* @PyObject_RichCompare(%struct._object* %cond57, %struct._object* %cond66, i32 %56), !dbg !1386
  store %struct._object* %call67, %struct._object** %retval, !dbg !1387
  br label %return, !dbg !1387

return:                                           ; preds = %cond.end.65, %cleanup, %if.then
  %57 = load %struct._object*, %struct._object** %retval, !dbg !1388
  ret %struct._object* %57, !dbg !1388
}

; Function Attrs: nounwind uwtable
define internal i32 @weakref___init__(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !535, metadata !836), !dbg !1389
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !536, metadata !836), !dbg !1390
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !537, metadata !836), !dbg !1391
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !1392
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1392
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !538, metadata !836), !dbg !1393
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1394, !tbaa !832
  %2 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1396, !tbaa !832
  %call = call i32 @parse_weakref_init_args(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._object* %1, %struct._object* %2, %struct._object** %tmp, %struct._object** %tmp), !dbg !1397
  %tobool = icmp ne i32 %call, 0, !dbg !1397
  br i1 %tobool, label %if.then, label %if.else, !dbg !1398

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1399
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1399

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1400
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1400

cleanup:                                          ; preds = %if.else, %if.then
  %3 = bitcast %struct._object** %tmp to i8*, !dbg !1401
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !1401
  %4 = load i32, i32* %retval, !dbg !1401
  ret i32 %4, !dbg !1401
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref___new__(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %self = alloca %struct._PyWeakReference*, align 8
  %ob = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  %ref = alloca %struct._PyWeakReference*, align 8
  %proxy = alloca %struct._PyWeakReference*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %cleanup.dest.slot = alloca i32
  %prev = alloca %struct._PyWeakReference*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !554, metadata !836), !dbg !1402
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !555, metadata !836), !dbg !1403
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !556, metadata !836), !dbg !1404
  %0 = bitcast %struct._PyWeakReference** %self to i8*, !dbg !1405
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1405
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self, metadata !557, metadata !836), !dbg !1406
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %self, align 8, !dbg !1406, !tbaa !832
  %1 = bitcast %struct._object** %ob to i8*, !dbg !1407
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1407
  call void @llvm.dbg.declare(metadata %struct._object** %ob, metadata !558, metadata !836), !dbg !1408
  %2 = bitcast %struct._object** %callback to i8*, !dbg !1407
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1407
  call void @llvm.dbg.declare(metadata %struct._object** %callback, metadata !559, metadata !836), !dbg !1409
  store %struct._object* null, %struct._object** %callback, align 8, !dbg !1409, !tbaa !832
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1410, !tbaa !832
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1411, !tbaa !832
  %call = call i32 @parse_weakref_init_args(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* %3, %struct._object* %4, %struct._object** %ob, %struct._object** %callback), !dbg !1412
  %tobool = icmp ne i32 %call, 0, !dbg !1412
  br i1 %tobool, label %if.then, label %if.end.32, !dbg !1413

if.then:                                          ; preds = %entry
  %5 = bitcast %struct._PyWeakReference** %ref to i8*, !dbg !1414
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1414
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %ref, metadata !560, metadata !836), !dbg !1415
  %6 = bitcast %struct._PyWeakReference** %proxy to i8*, !dbg !1414
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1414
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy, metadata !563, metadata !836), !dbg !1416
  %7 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !1417
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1417
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %list, metadata !564, metadata !836), !dbg !1418
  %8 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1419, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1421
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1421, !tbaa !893
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 24, !dbg !1422
  %10 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !1422, !tbaa !895
  %cmp = icmp sgt i64 %10, 0, !dbg !1423
  br i1 %cmp, label %if.end, label %if.then.1, !dbg !1424

if.then.1:                                        ; preds = %if.then
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1425, !tbaa !832
  %12 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1427, !tbaa !832
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1428
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1428, !tbaa !893
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1, !dbg !1429
  %14 = load i8*, i8** %tp_name, align 8, !dbg !1429, !tbaa !1063
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %14), !dbg !1430
  store %struct._object* null, %struct._object** %retval, !dbg !1431
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1431

if.end:                                           ; preds = %if.then
  %15 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1432, !tbaa !832
  %cmp4 = icmp eq %struct._object* %15, @_Py_NoneStruct, !dbg !1434
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1435

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %callback, align 8, !dbg !1436, !tbaa !832
  br label %if.end.6, !dbg !1437

if.end.6:                                         ; preds = %if.then.5, %if.end
  %16 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1438, !tbaa !832
  %17 = bitcast %struct._object* %16 to i8*, !dbg !1439
  %18 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1440, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1441
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1441, !tbaa !893
  %tp_weaklistoffset8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 24, !dbg !1442
  %20 = load i64, i64* %tp_weaklistoffset8, align 8, !dbg !1442, !tbaa !895
  %add.ptr = getelementptr i8, i8* %17, i64 %20, !dbg !1443
  %21 = bitcast i8* %add.ptr to %struct._object**, !dbg !1444
  %22 = bitcast %struct._object** %21 to %struct._PyWeakReference**, !dbg !1445
  store %struct._PyWeakReference** %22, %struct._PyWeakReference*** %list, align 8, !dbg !1446, !tbaa !832
  %23 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !1447, !tbaa !832
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %23, align 8, !dbg !1448, !tbaa !832
  call void @get_basic_refs(%struct._PyWeakReference* %24, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy), !dbg !1449
  %25 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1450, !tbaa !832
  %cmp9 = icmp eq %struct._object* %25, null, !dbg !1452
  br i1 %cmp9, label %land.lhs.true, label %if.end.15, !dbg !1453

land.lhs.true:                                    ; preds = %if.end.6
  %26 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1454, !tbaa !832
  %cmp10 = icmp eq %struct._typeobject* %26, @_PyWeakref_RefType, !dbg !1456
  br i1 %cmp10, label %if.then.11, label %if.end.15, !dbg !1457

if.then.11:                                       ; preds = %land.lhs.true
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !1458, !tbaa !832
  %cmp12 = icmp ne %struct._PyWeakReference* %27, null, !dbg !1461
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1462

if.then.13:                                       ; preds = %if.then.11
  %28 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !1463, !tbaa !832
  %29 = bitcast %struct._PyWeakReference* %28 to %struct._object*, !dbg !1465
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1466
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !1467, !tbaa !959
  %inc = add i64 %30, 1, !dbg !1467
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1467, !tbaa !959
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !1468, !tbaa !832
  %32 = bitcast %struct._PyWeakReference* %31 to %struct._object*, !dbg !1469
  store %struct._object* %32, %struct._object** %retval, !dbg !1470
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1470

if.end.14:                                        ; preds = %if.then.11
  br label %if.end.15, !dbg !1471

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end.6
  %33 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1472, !tbaa !832
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 36, !dbg !1473
  %34 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1473, !tbaa !1474
  %35 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1475, !tbaa !832
  %call16 = call %struct._object* %34(%struct._typeobject* %35, i64 0), !dbg !1472
  %36 = bitcast %struct._object* %call16 to %struct._PyWeakReference*, !dbg !1476
  store %struct._PyWeakReference* %36, %struct._PyWeakReference** %self, align 8, !dbg !1477, !tbaa !832
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8, !dbg !1478, !tbaa !832
  %cmp17 = icmp ne %struct._PyWeakReference* %37, null, !dbg !1479
  br i1 %cmp17, label %if.then.18, label %if.end.29, !dbg !1480

if.then.18:                                       ; preds = %if.end.15
  %38 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8, !dbg !1481, !tbaa !832
  %39 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1482, !tbaa !832
  %40 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1483, !tbaa !832
  call void @init_weakref(%struct._PyWeakReference* %38, %struct._object* %39, %struct._object* %40), !dbg !1484
  %41 = load %struct._object*, %struct._object** %callback, align 8, !dbg !1485, !tbaa !832
  %cmp19 = icmp eq %struct._object* %41, null, !dbg !1486
  br i1 %cmp19, label %land.lhs.true.20, label %if.else, !dbg !1487

land.lhs.true.20:                                 ; preds = %if.then.18
  %42 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1488, !tbaa !832
  %cmp21 = icmp eq %struct._typeobject* %42, @_PyWeakref_RefType, !dbg !1490
  br i1 %cmp21, label %if.then.22, label %if.else, !dbg !1491

if.then.22:                                       ; preds = %land.lhs.true.20
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8, !dbg !1492, !tbaa !832
  %44 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !1494, !tbaa !832
  call void @insert_head(%struct._PyWeakReference* %43, %struct._PyWeakReference** %44), !dbg !1495
  br label %if.end.28, !dbg !1496

if.else:                                          ; preds = %land.lhs.true.20, %if.then.18
  %45 = bitcast %struct._PyWeakReference** %prev to i8*, !dbg !1497
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !1497
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %prev, metadata !565, metadata !836), !dbg !1498
  %46 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !1499, !tbaa !832
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %46, align 8, !dbg !1500, !tbaa !832
  call void @get_basic_refs(%struct._PyWeakReference* %47, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy), !dbg !1501
  %48 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !1502, !tbaa !832
  %cmp23 = icmp eq %struct._PyWeakReference* %48, null, !dbg !1503
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !1504

cond.true:                                        ; preds = %if.else
  %49 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !1505, !tbaa !832
  br label %cond.end, !dbg !1504

cond.false:                                       ; preds = %if.else
  %50 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !1507, !tbaa !832
  br label %cond.end, !dbg !1504

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PyWeakReference* [ %49, %cond.true ], [ %50, %cond.false ], !dbg !1504
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %prev, align 8, !dbg !1509, !tbaa !832
  %51 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8, !dbg !1512, !tbaa !832
  %cmp24 = icmp eq %struct._PyWeakReference* %51, null, !dbg !1514
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !1515

if.then.25:                                       ; preds = %cond.end
  %52 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8, !dbg !1516, !tbaa !832
  %53 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !1517, !tbaa !832
  call void @insert_head(%struct._PyWeakReference* %52, %struct._PyWeakReference** %53), !dbg !1518
  br label %if.end.27, !dbg !1518

if.else.26:                                       ; preds = %cond.end
  %54 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8, !dbg !1519, !tbaa !832
  %55 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8, !dbg !1520, !tbaa !832
  call void @insert_after(%struct._PyWeakReference* %54, %struct._PyWeakReference* %55), !dbg !1521
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  %56 = bitcast %struct._PyWeakReference** %prev to i8*, !dbg !1522
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !1522
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.22
  br label %if.end.29, !dbg !1523

if.end.29:                                        ; preds = %if.end.28, %if.end.15
  store i32 0, i32* %cleanup.dest.slot, !dbg !1524
  br label %cleanup, !dbg !1524

cleanup:                                          ; preds = %if.end.29, %if.then.13, %if.then.1
  %57 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !1525
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !1525
  %58 = bitcast %struct._PyWeakReference** %proxy to i8*, !dbg !1525
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1525
  %59 = bitcast %struct._PyWeakReference** %ref to i8*, !dbg !1525
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1525
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32, !dbg !1527

if.end.32:                                        ; preds = %cleanup.cont, %entry
  %60 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8, !dbg !1528, !tbaa !832
  %61 = bitcast %struct._PyWeakReference* %60 to %struct._object*, !dbg !1529
  store %struct._object* %61, %struct._object** %retval, !dbg !1530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33, !dbg !1530

cleanup.33:                                       ; preds = %if.end.32, %cleanup
  %62 = bitcast %struct._object** %callback to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !1531
  %63 = bitcast %struct._object** %ob to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !1531
  %64 = bitcast %struct._PyWeakReference** %self to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !1531
  %65 = load %struct._object*, %struct._object** %retval, !dbg !1531
  ret %struct._object* %65, !dbg !1531
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @proxy_dealloc(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !581, metadata !836), !dbg !1532
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1533, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 2, !dbg !1535
  %1 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1535, !tbaa !863
  %cmp = icmp ne %struct._object* %1, null, !dbg !1536
  br i1 %cmp, label %if.then, label %if.end, !dbg !1537

if.then:                                          ; preds = %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1538, !tbaa !832
  %3 = bitcast %struct._PyWeakReference* %2 to %struct._object*, !dbg !1539
  %4 = bitcast %struct._object* %3 to i8*, !dbg !1539
  call void @PyObject_GC_UnTrack(i8* %4), !dbg !1540
  br label %if.end, !dbg !1540

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1541, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %5), !dbg !1542
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !1543, !tbaa !832
  %7 = bitcast %struct._PyWeakReference* %6 to i8*, !dbg !1543
  call void @PyObject_GC_Del(i8* %7), !dbg !1544
  ret void, !dbg !1545
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_repr(%struct._PyWeakReference* %proxy) #0 {
entry:
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !584, metadata !836), !dbg !1546
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1547, !tbaa !832
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1548, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !1549
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1549, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !1550
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1550, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !1551
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1552

cond.true:                                        ; preds = %entry
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1553, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !1555
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !1555, !tbaa !882
  br label %cond.end, !dbg !1552

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1556

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1552
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %cond, i32 0, i32 1, !dbg !1558
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1558, !tbaa !893
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1, !dbg !1561
  %7 = load i8*, i8** %tp_name, align 8, !dbg !1561, !tbaa !1063
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1562, !tbaa !832
  %wr_object2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 1, !dbg !1563
  %9 = load %struct._object*, %struct._object** %wr_object2, align 8, !dbg !1563, !tbaa !882
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1564
  %10 = load i64, i64* %ob_refcnt3, align 8, !dbg !1564, !tbaa !959
  %cmp4 = icmp sgt i64 %10, 0, !dbg !1565
  br i1 %cmp4, label %cond.true.5, label %cond.false.7, !dbg !1566

cond.true.5:                                      ; preds = %cond.end
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1567, !tbaa !832
  %wr_object6 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !1568
  %12 = load %struct._object*, %struct._object** %wr_object6, align 8, !dbg !1568, !tbaa !882
  br label %cond.end.8, !dbg !1566

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8, !dbg !1569

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi %struct._object* [ %12, %cond.true.5 ], [ @_Py_NoneStruct, %cond.false.7 ], !dbg !1566
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), %struct._PyWeakReference* %0, i8* %7, %struct._object* %cond9), !dbg !1570
  ret %struct._object* %call, !dbg !1571
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_str(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !737, metadata !836), !dbg !1572
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1573, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1575
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1575, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !1576
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1577

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1578, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1580
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1580, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !1581
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !1582

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1583, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !1588
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !1589
  %tobool = icmp ne i32 %call, 0, !dbg !1589
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !1590

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1591
  br label %return, !dbg !1591

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1593, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !1595
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !1596
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1596, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1597
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1597, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !1598
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1599

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1600, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !1602
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !1603
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !1603, !tbaa !882
  br label %cond.end, !dbg !1599

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1599
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !1606, !tbaa !832
  br label %if.end.6, !dbg !1609

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1610, !tbaa !832
  %call7 = call %struct._object* @PyObject_Str(%struct._object* %13), !dbg !1613
  store %struct._object* %call7, %struct._object** %retval, !dbg !1614
  br label %return, !dbg !1614

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !1615
  ret %struct._object* %14, !dbg !1615
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_getattr(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !740, metadata !836), !dbg !1618
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !741, metadata !836), !dbg !1619
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !1620, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1622
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1622, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !1623
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1624

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !1625, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1627
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1627, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !1628
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !1629

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !1630, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !1635
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !1636
  %tobool = icmp ne i32 %call, 0, !dbg !1636
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !1637

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1638
  br label %return, !dbg !1638

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !1640, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !1642
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !1643
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1643, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1644
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1644, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !1645
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1646

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !1647, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !1649
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !1650
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !1650, !tbaa !882
  br label %cond.end, !dbg !1646

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1651

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1646
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !1653, !tbaa !832
  br label %if.end.6, !dbg !1656

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !1657, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1661
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1661, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !1662
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !1663

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !1664, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1666
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1666, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !1667
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !1668

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !1669, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !1674
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !1675
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1675
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !1676

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !1677
  br label %return, !dbg !1677

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !1679, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !1681
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !1682
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !1682, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1683
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !1683, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !1684
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !1685

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !1686, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !1688
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !1689
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !1689, !tbaa !882
  br label %cond.end.23, !dbg !1685

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !1690

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !1685
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !1692, !tbaa !832
  br label %if.end.25, !dbg !1695

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !1696, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !1699, !tbaa !832
  %call26 = call %struct._object* @PyObject_GetAttr(%struct._object* %26, %struct._object* %27), !dbg !1700
  store %struct._object* %call26, %struct._object** %retval, !dbg !1701
  br label %return, !dbg !1701

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !1702
  ret %struct._object* %28, !dbg !1702
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_setattr(%struct._PyWeakReference* %proxy, %struct._object* %name, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %name.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !744, metadata !836), !dbg !1706
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !745, metadata !836), !dbg !1707
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !746, metadata !836), !dbg !1708
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1709, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0), !dbg !1711
  %tobool = icmp ne i32 %call, 0, !dbg !1711
  br i1 %tobool, label %if.end, label %if.then, !dbg !1712

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1713
  br label %return, !dbg !1713

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1714, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !1715
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1715, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !1716
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1716, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !1717
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1718

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1719, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !1721
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !1721, !tbaa !882
  br label %cond.end, !dbg !1718

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1722

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1718
  %6 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1724, !tbaa !832
  %7 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1727, !tbaa !832
  %call2 = call i32 @PyObject_SetAttr(%struct._object* %cond, %struct._object* %6, %struct._object* %7), !dbg !1728
  store i32 %call2, i32* %retval, !dbg !1729
  br label %return, !dbg !1729

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval, !dbg !1730
  ret i32 %8, !dbg !1730
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_richcompare(%struct._object* %proxy, %struct._object* %v, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !749, metadata !836), !dbg !1731
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !750, metadata !836), !dbg !1732
  store i32 %op, i32* %op.addr, align 4, !tbaa !1240
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !751, metadata !836), !dbg !1733
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1734, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1736
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1736, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !1737
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1738

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1739, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1741
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1741, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !1742
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !1743

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1744, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !1749
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !1750
  %tobool = icmp ne i32 %call, 0, !dbg !1750
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !1751

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1752
  br label %return, !dbg !1752

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1754, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !1756
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !1757
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1757, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1758
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1758, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !1759
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1760

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1761, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !1763
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !1764
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !1764, !tbaa !882
  br label %cond.end, !dbg !1760

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1765

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1760
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !1767, !tbaa !832
  br label %if.end.6, !dbg !1770

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1771, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1773
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1773, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !1774
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !1775

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1776, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1778
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1778, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !1779
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !1780

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1781, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !1786
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !1787
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1787
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !1788

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !1789
  br label %return, !dbg !1789

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1791, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !1793
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !1794
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !1794, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1795
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !1795, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !1796
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !1797

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1798, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !1800
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !1801
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !1801, !tbaa !882
  br label %cond.end.23, !dbg !1797

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !1802

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !1797
  store %struct._object* %cond24, %struct._object** %v.addr, align 8, !dbg !1804, !tbaa !832
  br label %if.end.25, !dbg !1807

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1808, !tbaa !832
  %27 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1809, !tbaa !832
  %28 = load i32, i32* %op.addr, align 4, !dbg !1810, !tbaa !1240
  %call26 = call %struct._object* @PyObject_RichCompare(%struct._object* %26, %struct._object* %27, i32 %28), !dbg !1811
  store %struct._object* %call26, %struct._object** %retval, !dbg !1812
  br label %return, !dbg !1812

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %29 = load %struct._object*, %struct._object** %retval, !dbg !1813
  ret %struct._object* %29, !dbg !1813
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iter(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !754, metadata !836), !dbg !1814
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1815, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0), !dbg !1817
  %tobool = icmp ne i32 %call, 0, !dbg !1817
  br i1 %tobool, label %if.end, label %if.then, !dbg !1818

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1819
  br label %return, !dbg !1819

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1820, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !1821
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1821, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !1822
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1822, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !1823
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1824

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1825, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !1827
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !1827, !tbaa !882
  br label %cond.end, !dbg !1824

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1828

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1824
  %call2 = call %struct._object* @PyObject_GetIter(%struct._object* %cond), !dbg !1830
  store %struct._object* %call2, %struct._object** %retval, !dbg !1833
  br label %return, !dbg !1833

return:                                           ; preds = %cond.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval, !dbg !1834
  ret %struct._object* %6, !dbg !1834
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iternext(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !757, metadata !836), !dbg !1835
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1836, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0), !dbg !1838
  %tobool = icmp ne i32 %call, 0, !dbg !1838
  br i1 %tobool, label %if.end, label %if.then, !dbg !1839

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1840
  br label %return, !dbg !1840

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1841, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !1842
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1842, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !1843
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1843, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !1844
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1845

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !1846, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !1848
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !1848, !tbaa !882
  br label %cond.end, !dbg !1845

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1849

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1845
  %call2 = call %struct._object* @PyIter_Next(%struct._object* %cond), !dbg !1851
  store %struct._object* %call2, %struct._object** %retval, !dbg !1854
  br label %return, !dbg !1854

return:                                           ; preds = %cond.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval, !dbg !1855
  ret %struct._object* %6, !dbg !1855
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_call(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !763, metadata !836), !dbg !1856
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !764, metadata !836), !dbg !1857
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !765, metadata !836), !dbg !1858
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1859, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1861
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1861, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !1862
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1863

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1864, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1866
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1866, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !1867
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !1868

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1869, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !1874
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !1875
  %tobool = icmp ne i32 %call, 0, !dbg !1875
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !1876

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1877
  br label %return, !dbg !1877

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1879, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !1881
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !1882
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1882, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1883
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1883, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !1884
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1885

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1886, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !1888
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !1889
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !1889, !tbaa !882
  br label %cond.end, !dbg !1885

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !1885
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !1892, !tbaa !832
  br label %if.end.6, !dbg !1895

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1896, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1900
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1900, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !1901
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !1902

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1903, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1905
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1905, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !1906
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !1907

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1908, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !1913
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !1914
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1914
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !1915

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !1916
  br label %return, !dbg !1916

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1918, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !1920
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !1921
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !1921, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1922
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !1922, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !1923
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !1924

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1925, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !1927
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !1928
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !1928, !tbaa !882
  br label %cond.end.23, !dbg !1924

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !1929

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !1924
  store %struct._object* %cond24, %struct._object** %v.addr, align 8, !dbg !1931, !tbaa !832
  br label %if.end.25, !dbg !1934

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1935, !tbaa !832
  %cmp26 = icmp ne %struct._object* %26, null, !dbg !1939
  br i1 %cmp26, label %if.then.27, label %if.end.47, !dbg !1940

if.then.27:                                       ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1941, !tbaa !832
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1944
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1944, !tbaa !893
  %cmp29 = icmp eq %struct._typeobject* %28, @_PyWeakref_ProxyType, !dbg !1945
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30, !dbg !1946

lor.lhs.false.30:                                 ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1947, !tbaa !832
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !1949
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1949, !tbaa !893
  %cmp32 = icmp eq %struct._typeobject* %30, @_PyWeakref_CallableProxyType, !dbg !1950
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !1951

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %31 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1952, !tbaa !832
  %32 = bitcast %struct._object* %31 to %struct._PyWeakReference*, !dbg !1957
  %call34 = call i32 @proxy_checkref(%struct._PyWeakReference* %32), !dbg !1958
  %tobool35 = icmp ne i32 %call34, 0, !dbg !1958
  br i1 %tobool35, label %if.end.37, label %if.then.36, !dbg !1959

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval, !dbg !1960
  br label %return, !dbg !1960

if.end.37:                                        ; preds = %if.then.33
  %33 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1962, !tbaa !832
  %34 = bitcast %struct._object* %33 to %struct._PyWeakReference*, !dbg !1964
  %wr_object38 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 1, !dbg !1965
  %35 = load %struct._object*, %struct._object** %wr_object38, align 8, !dbg !1965, !tbaa !882
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1966
  %36 = load i64, i64* %ob_refcnt39, align 8, !dbg !1966, !tbaa !959
  %cmp40 = icmp sgt i64 %36, 0, !dbg !1967
  br i1 %cmp40, label %cond.true.41, label %cond.false.43, !dbg !1968

cond.true.41:                                     ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1969, !tbaa !832
  %38 = bitcast %struct._object* %37 to %struct._PyWeakReference*, !dbg !1971
  %wr_object42 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %38, i32 0, i32 1, !dbg !1972
  %39 = load %struct._object*, %struct._object** %wr_object42, align 8, !dbg !1972, !tbaa !882
  br label %cond.end.44, !dbg !1968

cond.false.43:                                    ; preds = %if.end.37
  br label %cond.end.44, !dbg !1973

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._object* [ %39, %cond.true.41 ], [ @_Py_NoneStruct, %cond.false.43 ], !dbg !1968
  store %struct._object* %cond45, %struct._object** %w.addr, align 8, !dbg !1975, !tbaa !832
  br label %if.end.46, !dbg !1978

if.end.46:                                        ; preds = %cond.end.44, %lor.lhs.false.30
  br label %if.end.47, !dbg !1979

if.end.47:                                        ; preds = %if.end.46, %if.end.25
  %40 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !1982, !tbaa !832
  %41 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1985, !tbaa !832
  %42 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1986, !tbaa !832
  %call48 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %40, %struct._object* %41, %struct._object* %42), !dbg !1987
  store %struct._object* %call48, %struct._object** %retval, !dbg !1988
  br label %return, !dbg !1988

return:                                           ; preds = %if.end.47, %if.then.36, %if.then.15, %if.then.3
  %43 = load %struct._object*, %struct._object** %retval, !dbg !1989
  ret %struct._object* %43, !dbg !1989
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_NewRef(%struct._object* %ob, %struct._object* %callback) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %result = alloca %struct._PyWeakReference*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %ref = alloca %struct._PyWeakReference*, align 8
  %proxy = alloca %struct._PyWeakReference*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %prev = alloca %struct._PyWeakReference*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !387, metadata !836), !dbg !1994
  store %struct._object* %callback, %struct._object** %callback.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %callback.addr, metadata !388, metadata !836), !dbg !1995
  %0 = bitcast %struct._PyWeakReference** %result to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1996
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %result, metadata !389, metadata !836), !dbg !1997
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %result, align 8, !dbg !1997, !tbaa !832
  %1 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !1998
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1998
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %list, metadata !390, metadata !836), !dbg !1999
  %2 = bitcast %struct._PyWeakReference** %ref to i8*, !dbg !2000
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2000
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %ref, metadata !391, metadata !836), !dbg !2001
  %3 = bitcast %struct._PyWeakReference** %proxy to i8*, !dbg !2000
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2000
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy, metadata !392, metadata !836), !dbg !2002
  %4 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2003, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2005
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2005, !tbaa !893
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 24, !dbg !2006
  %6 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !2006, !tbaa !895
  %cmp = icmp sgt i64 %6, 0, !dbg !2007
  br i1 %cmp, label %if.end, label %if.then, !dbg !2008

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2009, !tbaa !832
  %8 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2011, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2012
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2012, !tbaa !893
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1, !dbg !2013
  %10 = load i8*, i8** %tp_name, align 8, !dbg !2013, !tbaa !1063
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %10), !dbg !2014
  store %struct._object* null, %struct._object** %retval, !dbg !2015
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2015

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2016, !tbaa !832
  %12 = bitcast %struct._object* %11 to i8*, !dbg !2017
  %13 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2018, !tbaa !832
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2019
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2019, !tbaa !893
  %tp_weaklistoffset3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 24, !dbg !2020
  %15 = load i64, i64* %tp_weaklistoffset3, align 8, !dbg !2020, !tbaa !895
  %add.ptr = getelementptr i8, i8* %12, i64 %15, !dbg !2021
  %16 = bitcast i8* %add.ptr to %struct._object**, !dbg !2022
  %17 = bitcast %struct._object** %16 to %struct._PyWeakReference**, !dbg !2023
  store %struct._PyWeakReference** %17, %struct._PyWeakReference*** %list, align 8, !dbg !2024, !tbaa !832
  %18 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2025, !tbaa !832
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %18, align 8, !dbg !2026, !tbaa !832
  call void @get_basic_refs(%struct._PyWeakReference* %19, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy), !dbg !2027
  %20 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2028, !tbaa !832
  %cmp4 = icmp eq %struct._object* %20, @_Py_NoneStruct, !dbg !2030
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2031

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %callback.addr, align 8, !dbg !2032, !tbaa !832
  br label %if.end.6, !dbg !2033

if.end.6:                                         ; preds = %if.then.5, %if.end
  %21 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2034, !tbaa !832
  %cmp7 = icmp eq %struct._object* %21, null, !dbg !2036
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2037

if.then.8:                                        ; preds = %if.end.6
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2038, !tbaa !832
  store %struct._PyWeakReference* %22, %struct._PyWeakReference** %result, align 8, !dbg !2039, !tbaa !832
  br label %if.end.9, !dbg !2040

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2041, !tbaa !832
  %cmp10 = icmp ne %struct._PyWeakReference* %23, null, !dbg !2042
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2043

if.then.11:                                       ; preds = %if.end.9
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2044, !tbaa !832
  %25 = bitcast %struct._PyWeakReference* %24 to %struct._object*, !dbg !2045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2046
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !2047, !tbaa !959
  %inc = add i64 %26, 1, !dbg !2047
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2047, !tbaa !959
  br label %if.end.37, !dbg !2048

if.else:                                          ; preds = %if.end.9
  %27 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2049, !tbaa !832
  %28 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2050, !tbaa !832
  %call12 = call %struct._PyWeakReference* @new_weakref(%struct._object* %27, %struct._object* %28), !dbg !2051
  store %struct._PyWeakReference* %call12, %struct._PyWeakReference** %result, align 8, !dbg !2052, !tbaa !832
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2053, !tbaa !832
  %cmp13 = icmp ne %struct._PyWeakReference* %29, null, !dbg !2054
  br i1 %cmp13, label %if.then.14, label %if.end.36, !dbg !2055

if.then.14:                                       ; preds = %if.else
  %30 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2056, !tbaa !832
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %30, align 8, !dbg !2057, !tbaa !832
  call void @get_basic_refs(%struct._PyWeakReference* %31, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy), !dbg !2058
  %32 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2059, !tbaa !832
  %cmp15 = icmp eq %struct._object* %32, null, !dbg !2060
  br i1 %cmp15, label %if.then.16, label %if.else.29, !dbg !2061

if.then.16:                                       ; preds = %if.then.14
  %33 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2062, !tbaa !832
  %cmp17 = icmp eq %struct._PyWeakReference* %33, null, !dbg !2063
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2064

if.then.18:                                       ; preds = %if.then.16
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2065, !tbaa !832
  %35 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2066, !tbaa !832
  call void @insert_head(%struct._PyWeakReference* %34, %struct._PyWeakReference** %35), !dbg !2067
  br label %if.end.28, !dbg !2067

if.else.19:                                       ; preds = %if.then.16
  br label %do.body, !dbg !2068

do.body:                                          ; preds = %if.else.19
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2069
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !2069
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !393, metadata !836), !dbg !2071
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2072, !tbaa !832
  %38 = bitcast %struct._PyWeakReference* %37 to %struct._object*, !dbg !2073
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8, !dbg !2071, !tbaa !832
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2074, !tbaa !832
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !2076
  %40 = load i64, i64* %ob_refcnt20, align 8, !dbg !2077, !tbaa !959
  %dec = add i64 %40, -1, !dbg !2077
  store i64 %dec, i64* %ob_refcnt20, align 8, !dbg !2077, !tbaa !959
  %cmp21 = icmp ne i64 %dec, 0, !dbg !2078
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !2079

if.then.22:                                       ; preds = %do.body
  br label %if.end.25, !dbg !2080

if.else.23:                                       ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2082, !tbaa !832
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !2084
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !2084, !tbaa !893
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !2085
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2085, !tbaa !968
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2086, !tbaa !832
  call void %43(%struct._object* %44), !dbg !2087
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2088
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !2088
  br label %do.cond, !dbg !2090

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !2091

do.end:                                           ; preds = %do.cond
  %46 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2093, !tbaa !832
  %47 = bitcast %struct._PyWeakReference* %46 to %struct._object*, !dbg !2094
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2095
  %48 = load i64, i64* %ob_refcnt26, align 8, !dbg !2096, !tbaa !959
  %inc27 = add i64 %48, 1, !dbg !2096
  store i64 %inc27, i64* %ob_refcnt26, align 8, !dbg !2096, !tbaa !959
  %49 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2097, !tbaa !832
  store %struct._PyWeakReference* %49, %struct._PyWeakReference** %result, align 8, !dbg !2098, !tbaa !832
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %if.then.18
  br label %if.end.35, !dbg !2099

if.else.29:                                       ; preds = %if.then.14
  %50 = bitcast %struct._PyWeakReference** %prev to i8*, !dbg !2100
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !2100
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %prev, metadata !403, metadata !836), !dbg !2101
  %51 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2102, !tbaa !832
  %cmp30 = icmp eq %struct._PyWeakReference* %51, null, !dbg !2103
  br i1 %cmp30, label %cond.true, label %cond.false, !dbg !2104

cond.true:                                        ; preds = %if.else.29
  %52 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2105, !tbaa !832
  br label %cond.end, !dbg !2104

cond.false:                                       ; preds = %if.else.29
  %53 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2107, !tbaa !832
  br label %cond.end, !dbg !2104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PyWeakReference* [ %52, %cond.true ], [ %53, %cond.false ], !dbg !2104
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %prev, align 8, !dbg !2109, !tbaa !832
  %54 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8, !dbg !2112, !tbaa !832
  %cmp31 = icmp eq %struct._PyWeakReference* %54, null, !dbg !2114
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !2115

if.then.32:                                       ; preds = %cond.end
  %55 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2116, !tbaa !832
  %56 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2117, !tbaa !832
  call void @insert_head(%struct._PyWeakReference* %55, %struct._PyWeakReference** %56), !dbg !2118
  br label %if.end.34, !dbg !2118

if.else.33:                                       ; preds = %cond.end
  %57 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2119, !tbaa !832
  %58 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8, !dbg !2120, !tbaa !832
  call void @insert_after(%struct._PyWeakReference* %57, %struct._PyWeakReference* %58), !dbg !2121
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  %59 = bitcast %struct._PyWeakReference** %prev to i8*, !dbg !2122
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !2122
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.28
  br label %if.end.36, !dbg !2123

if.end.36:                                        ; preds = %if.end.35, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.11
  %60 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2124, !tbaa !832
  %61 = bitcast %struct._PyWeakReference* %60 to %struct._object*, !dbg !2125
  store %struct._object* %61, %struct._object** %retval, !dbg !2126
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2126

cleanup:                                          ; preds = %if.end.37, %if.then
  %62 = bitcast %struct._PyWeakReference** %proxy to i8*, !dbg !2127
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !2127
  %63 = bitcast %struct._PyWeakReference** %ref to i8*, !dbg !2127
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !2127
  %64 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !2127
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !2127
  %65 = bitcast %struct._PyWeakReference** %result to i8*, !dbg !2127
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !2127
  %66 = load %struct._object*, %struct._object** %retval, !dbg !2127
  ret %struct._object* %66, !dbg !2127
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @get_basic_refs(%struct._PyWeakReference* %head, %struct._PyWeakReference** %refp, %struct._PyWeakReference** %proxyp) #0 {
entry:
  %head.addr = alloca %struct._PyWeakReference*, align 8
  %refp.addr = alloca %struct._PyWeakReference**, align 8
  %proxyp.addr = alloca %struct._PyWeakReference**, align 8
  store %struct._PyWeakReference* %head, %struct._PyWeakReference** %head.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %head.addr, metadata !770, metadata !836), !dbg !2128
  store %struct._PyWeakReference** %refp, %struct._PyWeakReference*** %refp.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %refp.addr, metadata !771, metadata !836), !dbg !2129
  store %struct._PyWeakReference** %proxyp, %struct._PyWeakReference*** %proxyp.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %proxyp.addr, metadata !772, metadata !836), !dbg !2130
  %0 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %refp.addr, align 8, !dbg !2131, !tbaa !832
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %0, align 8, !dbg !2132, !tbaa !832
  %1 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %proxyp.addr, align 8, !dbg !2133, !tbaa !832
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %1, align 8, !dbg !2134, !tbaa !832
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2135, !tbaa !832
  %cmp = icmp ne %struct._PyWeakReference* %2, null, !dbg !2137
  br i1 %cmp, label %land.lhs.true, label %if.end.15, !dbg !2138

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2139, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 2, !dbg !2141
  %4 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !2141, !tbaa !863
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !2142
  br i1 %cmp1, label %if.then, label %if.end.15, !dbg !2143

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2144, !tbaa !832
  %6 = bitcast %struct._PyWeakReference* %5 to %struct._object*, !dbg !2147
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !2148
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2148, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %7, @_PyWeakref_RefType, !dbg !2149
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !2150

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2151, !tbaa !832
  %9 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %refp.addr, align 8, !dbg !2153, !tbaa !832
  store %struct._PyWeakReference* %8, %struct._PyWeakReference** %9, align 8, !dbg !2154, !tbaa !832
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2155, !tbaa !832
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 5, !dbg !2156
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !2156, !tbaa !851
  store %struct._PyWeakReference* %11, %struct._PyWeakReference** %head.addr, align 8, !dbg !2157, !tbaa !832
  br label %if.end, !dbg !2158

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2159, !tbaa !832
  %cmp4 = icmp ne %struct._PyWeakReference* %12, null, !dbg !2161
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.14, !dbg !2162

land.lhs.true.5:                                  ; preds = %if.end
  %13 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2163, !tbaa !832
  %wr_callback6 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %13, i32 0, i32 2, !dbg !2165
  %14 = load %struct._object*, %struct._object** %wr_callback6, align 8, !dbg !2165, !tbaa !863
  %cmp7 = icmp eq %struct._object* %14, null, !dbg !2166
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.14, !dbg !2167

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2168, !tbaa !832
  %16 = bitcast %struct._PyWeakReference* %15 to %struct._object*, !dbg !2169
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2170
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2170, !tbaa !893
  %cmp10 = icmp eq %struct._typeobject* %17, @_PyWeakref_ProxyType, !dbg !2171
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false, !dbg !2172

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2173, !tbaa !832
  %19 = bitcast %struct._PyWeakReference* %18 to %struct._object*, !dbg !2175
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2176
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !2176, !tbaa !893
  %cmp12 = icmp eq %struct._typeobject* %20, @_PyWeakref_CallableProxyType, !dbg !2177
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2178

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true.8
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8, !dbg !2179, !tbaa !832
  %22 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %proxyp.addr, align 8, !dbg !2181, !tbaa !832
  store %struct._PyWeakReference* %21, %struct._PyWeakReference** %22, align 8, !dbg !2182, !tbaa !832
  br label %if.end.14, !dbg !2183

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false, %land.lhs.true.5, %if.end
  br label %if.end.15, !dbg !2184

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %entry
  ret void, !dbg !2185
}

; Function Attrs: nounwind uwtable
define internal %struct._PyWeakReference* @new_weakref(%struct._object* %ob, %struct._object* %callback) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %result = alloca %struct._PyWeakReference*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !777, metadata !836), !dbg !2186
  store %struct._object* %callback, %struct._object** %callback.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %callback.addr, metadata !778, metadata !836), !dbg !2187
  %0 = bitcast %struct._PyWeakReference** %result to i8*, !dbg !2188
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2188
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %result, metadata !779, metadata !836), !dbg !2189
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @_PyWeakref_RefType), !dbg !2190
  %1 = bitcast %struct._object* %call to %struct._PyWeakReference*, !dbg !2191
  store %struct._PyWeakReference* %1, %struct._PyWeakReference** %result, align 8, !dbg !2192, !tbaa !832
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2193, !tbaa !832
  %tobool = icmp ne %struct._PyWeakReference* %2, null, !dbg !2193
  br i1 %tobool, label %if.then, label %if.end, !dbg !2195

if.then:                                          ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2196, !tbaa !832
  %4 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2198, !tbaa !832
  %5 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2199, !tbaa !832
  call void @init_weakref(%struct._PyWeakReference* %3, %struct._object* %4, %struct._object* %5), !dbg !2200
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2201, !tbaa !832
  %7 = bitcast %struct._PyWeakReference* %6 to i8*, !dbg !2201
  call void @PyObject_GC_Track(i8* %7), !dbg !2202
  br label %if.end, !dbg !2203

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2204, !tbaa !832
  %9 = bitcast %struct._PyWeakReference** %result to i8*, !dbg !2205
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2205
  ret %struct._PyWeakReference* %8, !dbg !2206
}

; Function Attrs: nounwind uwtable
define internal void @insert_head(%struct._PyWeakReference* %newref, %struct._PyWeakReference** %list) #0 {
entry:
  %newref.addr = alloca %struct._PyWeakReference*, align 8
  %list.addr = alloca %struct._PyWeakReference**, align 8
  %next = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %newref, %struct._PyWeakReference** %newref.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %newref.addr, metadata !784, metadata !836), !dbg !2207
  store %struct._PyWeakReference** %list, %struct._PyWeakReference*** %list.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %list.addr, metadata !785, metadata !836), !dbg !2208
  %0 = bitcast %struct._PyWeakReference** %next to i8*, !dbg !2209
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2209
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %next, metadata !786, metadata !836), !dbg !2210
  %1 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list.addr, align 8, !dbg !2211, !tbaa !832
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %1, align 8, !dbg !2212, !tbaa !832
  store %struct._PyWeakReference* %2, %struct._PyWeakReference** %next, align 8, !dbg !2210, !tbaa !832
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2213, !tbaa !832
  %wr_prev = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 4, !dbg !2214
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %wr_prev, align 8, !dbg !2215, !tbaa !919
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8, !dbg !2216, !tbaa !832
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2217, !tbaa !832
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 5, !dbg !2218
  store %struct._PyWeakReference* %4, %struct._PyWeakReference** %wr_next, align 8, !dbg !2219, !tbaa !851
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8, !dbg !2220, !tbaa !832
  %cmp = icmp ne %struct._PyWeakReference* %6, null, !dbg !2222
  br i1 %cmp, label %if.then, label %if.end, !dbg !2223

if.then:                                          ; preds = %entry
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2224, !tbaa !832
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8, !dbg !2225, !tbaa !832
  %wr_prev1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 4, !dbg !2226
  store %struct._PyWeakReference* %7, %struct._PyWeakReference** %wr_prev1, align 8, !dbg !2227, !tbaa !919
  br label %if.end, !dbg !2225

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2228, !tbaa !832
  %10 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list.addr, align 8, !dbg !2229, !tbaa !832
  store %struct._PyWeakReference* %9, %struct._PyWeakReference** %10, align 8, !dbg !2230, !tbaa !832
  %11 = bitcast %struct._PyWeakReference** %next to i8*, !dbg !2231
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !2231
  ret void, !dbg !2231
}

; Function Attrs: nounwind uwtable
define internal void @insert_after(%struct._PyWeakReference* %newref, %struct._PyWeakReference* %prev) #0 {
entry:
  %newref.addr = alloca %struct._PyWeakReference*, align 8
  %prev.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %newref, %struct._PyWeakReference** %newref.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %newref.addr, metadata !791, metadata !836), !dbg !2232
  store %struct._PyWeakReference* %prev, %struct._PyWeakReference** %prev.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %prev.addr, metadata !792, metadata !836), !dbg !2233
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8, !dbg !2234, !tbaa !832
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2235, !tbaa !832
  %wr_prev = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 4, !dbg !2236
  store %struct._PyWeakReference* %0, %struct._PyWeakReference** %wr_prev, align 8, !dbg !2237, !tbaa !919
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8, !dbg !2238, !tbaa !832
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 5, !dbg !2239
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !2239, !tbaa !851
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2240, !tbaa !832
  %wr_next1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 5, !dbg !2241
  store %struct._PyWeakReference* %3, %struct._PyWeakReference** %wr_next1, align 8, !dbg !2242, !tbaa !851
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8, !dbg !2243, !tbaa !832
  %wr_next2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 5, !dbg !2245
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next2, align 8, !dbg !2245, !tbaa !851
  %cmp = icmp ne %struct._PyWeakReference* %6, null, !dbg !2246
  br i1 %cmp, label %if.then, label %if.end, !dbg !2247

if.then:                                          ; preds = %entry
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2248, !tbaa !832
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8, !dbg !2249, !tbaa !832
  %wr_next3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 5, !dbg !2250
  %9 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next3, align 8, !dbg !2250, !tbaa !851
  %wr_prev4 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i32 0, i32 4, !dbg !2251
  store %struct._PyWeakReference* %7, %struct._PyWeakReference** %wr_prev4, align 8, !dbg !2252, !tbaa !919
  br label %if.end, !dbg !2249

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8, !dbg !2253, !tbaa !832
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8, !dbg !2254, !tbaa !832
  %wr_next5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 5, !dbg !2255
  store %struct._PyWeakReference* %10, %struct._PyWeakReference** %wr_next5, align 8, !dbg !2256, !tbaa !851
  ret void, !dbg !2257
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_NewProxy(%struct._object* %ob, %struct._object* %callback) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %result = alloca %struct._PyWeakReference*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %ref = alloca %struct._PyWeakReference*, align 8
  %proxy = alloca %struct._PyWeakReference*, align 8
  %cleanup.dest.slot = alloca i32
  %prev = alloca %struct._PyWeakReference*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !407, metadata !836), !dbg !2258
  store %struct._object* %callback, %struct._object** %callback.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %callback.addr, metadata !408, metadata !836), !dbg !2259
  %0 = bitcast %struct._PyWeakReference** %result to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2260
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %result, metadata !409, metadata !836), !dbg !2261
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %result, align 8, !dbg !2261, !tbaa !832
  %1 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !2262
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2262
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %list, metadata !410, metadata !836), !dbg !2263
  %2 = bitcast %struct._PyWeakReference** %ref to i8*, !dbg !2264
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2264
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %ref, metadata !411, metadata !836), !dbg !2265
  %3 = bitcast %struct._PyWeakReference** %proxy to i8*, !dbg !2264
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2264
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy, metadata !412, metadata !836), !dbg !2266
  %4 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2267, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2269
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2269, !tbaa !893
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 24, !dbg !2270
  %6 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !2270, !tbaa !895
  %cmp = icmp sgt i64 %6, 0, !dbg !2271
  br i1 %cmp, label %if.end, label %if.then, !dbg !2272

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2273, !tbaa !832
  %8 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2275, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2276
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2276, !tbaa !893
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1, !dbg !2277
  %10 = load i8*, i8** %tp_name, align 8, !dbg !2277, !tbaa !1063
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %10), !dbg !2278
  store %struct._object* null, %struct._object** %retval, !dbg !2279
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2279

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2280, !tbaa !832
  %12 = bitcast %struct._object* %11 to i8*, !dbg !2281
  %13 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2282, !tbaa !832
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2283
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2283, !tbaa !893
  %tp_weaklistoffset3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 24, !dbg !2284
  %15 = load i64, i64* %tp_weaklistoffset3, align 8, !dbg !2284, !tbaa !895
  %add.ptr = getelementptr i8, i8* %12, i64 %15, !dbg !2285
  %16 = bitcast i8* %add.ptr to %struct._object**, !dbg !2286
  %17 = bitcast %struct._object** %16 to %struct._PyWeakReference**, !dbg !2287
  store %struct._PyWeakReference** %17, %struct._PyWeakReference*** %list, align 8, !dbg !2288, !tbaa !832
  %18 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2289, !tbaa !832
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %18, align 8, !dbg !2290, !tbaa !832
  call void @get_basic_refs(%struct._PyWeakReference* %19, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy), !dbg !2291
  %20 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2292, !tbaa !832
  %cmp4 = icmp eq %struct._object* %20, @_Py_NoneStruct, !dbg !2294
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2295

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %callback.addr, align 8, !dbg !2296, !tbaa !832
  br label %if.end.6, !dbg !2297

if.end.6:                                         ; preds = %if.then.5, %if.end
  %21 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2298, !tbaa !832
  %cmp7 = icmp eq %struct._object* %21, null, !dbg !2300
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2301

if.then.8:                                        ; preds = %if.end.6
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2302, !tbaa !832
  store %struct._PyWeakReference* %22, %struct._PyWeakReference** %result, align 8, !dbg !2303, !tbaa !832
  br label %if.end.9, !dbg !2304

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2305, !tbaa !832
  %cmp10 = icmp ne %struct._PyWeakReference* %23, null, !dbg !2306
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2307

if.then.11:                                       ; preds = %if.end.9
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2308, !tbaa !832
  %25 = bitcast %struct._PyWeakReference* %24 to %struct._object*, !dbg !2309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2310
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !2311, !tbaa !959
  %inc = add i64 %26, 1, !dbg !2311
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2311, !tbaa !959
  br label %if.end.42, !dbg !2312

if.else:                                          ; preds = %if.end.9
  %27 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2313, !tbaa !832
  %28 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2314, !tbaa !832
  %call12 = call %struct._PyWeakReference* @new_weakref(%struct._object* %27, %struct._object* %28), !dbg !2315
  store %struct._PyWeakReference* %call12, %struct._PyWeakReference** %result, align 8, !dbg !2316, !tbaa !832
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2317, !tbaa !832
  %cmp13 = icmp ne %struct._PyWeakReference* %29, null, !dbg !2318
  br i1 %cmp13, label %if.then.14, label %if.end.41, !dbg !2319

if.then.14:                                       ; preds = %if.else
  %30 = bitcast %struct._PyWeakReference** %prev to i8*, !dbg !2320
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !2320
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %prev, metadata !413, metadata !836), !dbg !2321
  %31 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2322, !tbaa !832
  %call15 = call i32 @PyCallable_Check(%struct._object* %31), !dbg !2324
  %tobool = icmp ne i32 %call15, 0, !dbg !2324
  br i1 %tobool, label %if.then.16, label %if.else.18, !dbg !2325

if.then.16:                                       ; preds = %if.then.14
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2326, !tbaa !832
  %33 = bitcast %struct._PyWeakReference* %32 to %struct._object*, !dbg !2327
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !2328
  store %struct._typeobject* @_PyWeakref_CallableProxyType, %struct._typeobject** %ob_type17, align 8, !dbg !2329, !tbaa !893
  br label %if.end.20, !dbg !2330

if.else.18:                                       ; preds = %if.then.14
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2331, !tbaa !832
  %35 = bitcast %struct._PyWeakReference* %34 to %struct._object*, !dbg !2332
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2333
  store %struct._typeobject* @_PyWeakref_ProxyType, %struct._typeobject** %ob_type19, align 8, !dbg !2334, !tbaa !893
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.16
  %36 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2335, !tbaa !832
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %36, align 8, !dbg !2336, !tbaa !832
  call void @get_basic_refs(%struct._PyWeakReference* %37, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy), !dbg !2337
  %38 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2338, !tbaa !832
  %cmp21 = icmp eq %struct._object* %38, null, !dbg !2339
  br i1 %cmp21, label %if.then.22, label %if.else.34, !dbg !2340

if.then.22:                                       ; preds = %if.end.20
  %39 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2341, !tbaa !832
  %cmp23 = icmp ne %struct._PyWeakReference* %39, null, !dbg !2342
  br i1 %cmp23, label %if.then.24, label %if.end.33, !dbg !2343

if.then.24:                                       ; preds = %if.then.22
  br label %do.body, !dbg !2344

do.body:                                          ; preds = %if.then.24
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !418, metadata !836), !dbg !2347
  %41 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2348, !tbaa !832
  %42 = bitcast %struct._PyWeakReference* %41 to %struct._object*, !dbg !2349
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8, !dbg !2347, !tbaa !832
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2350, !tbaa !832
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2352
  %44 = load i64, i64* %ob_refcnt25, align 8, !dbg !2353, !tbaa !959
  %dec = add i64 %44, -1, !dbg !2353
  store i64 %dec, i64* %ob_refcnt25, align 8, !dbg !2353, !tbaa !959
  %cmp26 = icmp ne i64 %dec, 0, !dbg !2354
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !2355

if.then.27:                                       ; preds = %do.body
  br label %if.end.30, !dbg !2356

if.else.28:                                       ; preds = %do.body
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2358, !tbaa !832
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !2360
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2360, !tbaa !893
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !2361
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2361, !tbaa !968
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2362, !tbaa !832
  call void %47(%struct._object* %48), !dbg !2363
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  %49 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2364
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !2364
  br label %do.cond, !dbg !2366

do.cond:                                          ; preds = %if.end.30
  br label %do.end, !dbg !2367

do.end:                                           ; preds = %do.cond
  %50 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2369, !tbaa !832
  store %struct._PyWeakReference* %50, %struct._PyWeakReference** %result, align 8, !dbg !2370, !tbaa !832
  %51 = bitcast %struct._PyWeakReference* %50 to %struct._object*, !dbg !2371
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !2372
  %52 = load i64, i64* %ob_refcnt31, align 8, !dbg !2373, !tbaa !959
  %inc32 = add i64 %52, 1, !dbg !2373
  store i64 %inc32, i64* %ob_refcnt31, align 8, !dbg !2373, !tbaa !959
  br label %skip_insert, !dbg !2374

if.end.33:                                        ; preds = %if.then.22
  %53 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2375, !tbaa !832
  store %struct._PyWeakReference* %53, %struct._PyWeakReference** %prev, align 8, !dbg !2376, !tbaa !832
  br label %if.end.36, !dbg !2377

if.else.34:                                       ; preds = %if.end.20
  %54 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2378, !tbaa !832
  %cmp35 = icmp eq %struct._PyWeakReference* %54, null, !dbg !2379
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !2380

cond.true:                                        ; preds = %if.else.34
  %55 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8, !dbg !2381, !tbaa !832
  br label %cond.end, !dbg !2380

cond.false:                                       ; preds = %if.else.34
  %56 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8, !dbg !2383, !tbaa !832
  br label %cond.end, !dbg !2380

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PyWeakReference* [ %55, %cond.true ], [ %56, %cond.false ], !dbg !2380
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %prev, align 8, !dbg !2385, !tbaa !832
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end, %if.end.33
  %57 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8, !dbg !2388, !tbaa !832
  %cmp37 = icmp eq %struct._PyWeakReference* %57, null, !dbg !2390
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !2391

if.then.38:                                       ; preds = %if.end.36
  %58 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2392, !tbaa !832
  %59 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2393, !tbaa !832
  call void @insert_head(%struct._PyWeakReference* %58, %struct._PyWeakReference** %59), !dbg !2394
  br label %if.end.40, !dbg !2394

if.else.39:                                       ; preds = %if.end.36
  %60 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2395, !tbaa !832
  %61 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8, !dbg !2396, !tbaa !832
  call void @insert_after(%struct._PyWeakReference* %60, %struct._PyWeakReference* %61), !dbg !2397
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %skip_insert, !dbg !2398

skip_insert:                                      ; preds = %if.end.40, %do.end
  %62 = bitcast %struct._PyWeakReference** %prev to i8*, !dbg !2399
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !2399
  br label %if.end.41, !dbg !2400

if.end.41:                                        ; preds = %skip_insert, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.11
  %63 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8, !dbg !2401, !tbaa !832
  %64 = bitcast %struct._PyWeakReference* %63 to %struct._object*, !dbg !2402
  store %struct._object* %64, %struct._object** %retval, !dbg !2403
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2403

cleanup:                                          ; preds = %if.end.42, %if.then
  %65 = bitcast %struct._PyWeakReference** %proxy to i8*, !dbg !2404
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !2404
  %66 = bitcast %struct._PyWeakReference** %ref to i8*, !dbg !2404
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2404
  %67 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !2404
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !2404
  %68 = bitcast %struct._PyWeakReference** %result to i8*, !dbg !2404
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !2404
  %69 = load %struct._object*, %struct._object** %retval, !dbg !2404
  ret %struct._object* %69, !dbg !2404
}

declare i32 @PyCallable_Check(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_GetObject(%struct._object* %ref) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ref.addr = alloca %struct._object*, align 8
  store %struct._object* %ref, %struct._object** %ref.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %ref.addr, metadata !426, metadata !836), !dbg !2405
  %0 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2406, !tbaa !832
  %cmp = icmp eq %struct._object* %0, null, !dbg !2408
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2409

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2410, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2412
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2412, !tbaa !893
  %cmp1 = icmp eq %struct._typeobject* %2, @_PyWeakref_RefType, !dbg !2413
  br i1 %cmp1, label %if.end, label %lor.lhs.false.2, !dbg !2414

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2415, !tbaa !832
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2417
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !2417, !tbaa !893
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @_PyWeakref_RefType), !dbg !2418
  %tobool = icmp ne i32 %call, 0, !dbg !2418
  br i1 %tobool, label %if.end, label %lor.lhs.false.4, !dbg !2419

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %5 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2420, !tbaa !832
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2422
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2422, !tbaa !893
  %cmp6 = icmp eq %struct._typeobject* %6, @_PyWeakref_ProxyType, !dbg !2423
  br i1 %cmp6, label %if.end, label %lor.lhs.false.7, !dbg !2424

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %7 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2425, !tbaa !832
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2427
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !2427, !tbaa !893
  %cmp9 = icmp eq %struct._typeobject* %8, @_PyWeakref_CallableProxyType, !dbg !2428
  br i1 %cmp9, label %if.end, label %if.then, !dbg !2429

if.then:                                          ; preds = %lor.lhs.false.7, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 856), !dbg !2430
  store %struct._object* null, %struct._object** %retval, !dbg !2432
  br label %return, !dbg !2432

if.end:                                           ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2433, !tbaa !832
  %10 = bitcast %struct._object* %9 to %struct._PyWeakReference*, !dbg !2434
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 1, !dbg !2435
  %11 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !2435, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2436
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2436, !tbaa !959
  %cmp10 = icmp sgt i64 %12, 0, !dbg !2437
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !2438

cond.true:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %ref.addr, align 8, !dbg !2439, !tbaa !832
  %14 = bitcast %struct._object* %13 to %struct._PyWeakReference*, !dbg !2441
  %wr_object11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %14, i32 0, i32 1, !dbg !2442
  %15 = load %struct._object*, %struct._object** %wr_object11, align 8, !dbg !2442, !tbaa !882
  br label %cond.end, !dbg !2438

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2443

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %15, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !2438
  store %struct._object* %cond, %struct._object** %retval, !dbg !2445
  br label %return, !dbg !2445

return:                                           ; preds = %cond.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval, !dbg !2448
  ret %struct._object* %16, !dbg !2448
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @PyObject_ClearWeakRefs(%struct._object* %object) #0 {
entry:
  %object.addr = alloca %struct._object*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %cleanup.dest.slot = alloca i32
  %current = alloca %struct._PyWeakReference*, align 8
  %count = alloca i64, align 8
  %restore_error = alloca i32, align 4
  %err_type = alloca %struct._object*, align 8
  %err_value = alloca %struct._object*, align 8
  %err_tb = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %next = alloca %struct._PyWeakReference*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %callback76 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !429, metadata !836), !dbg !2449
  %0 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !2450
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2450
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference*** %list, metadata !430, metadata !836), !dbg !2451
  %1 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2452, !tbaa !832
  %cmp = icmp eq %struct._object* %1, null, !dbg !2454
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2455

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2456, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2458
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2458, !tbaa !893
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 24, !dbg !2459
  %4 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !2459, !tbaa !895
  %cmp1 = icmp sgt i64 %4, 0, !dbg !2460
  br i1 %cmp1, label %lor.lhs.false.2, label %if.then, !dbg !2461

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2462, !tbaa !832
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !2463
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !2463, !tbaa !959
  %cmp3 = icmp ne i64 %6, 0, !dbg !2464
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2465

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 890), !dbg !2466
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116, !dbg !2468

if.end:                                           ; preds = %lor.lhs.false.2
  %7 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2469, !tbaa !832
  %8 = bitcast %struct._object* %7 to i8*, !dbg !2470
  %9 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !2471, !tbaa !832
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2472
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !2472, !tbaa !893
  %tp_weaklistoffset5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 24, !dbg !2473
  %11 = load i64, i64* %tp_weaklistoffset5, align 8, !dbg !2473, !tbaa !895
  %add.ptr = getelementptr i8, i8* %8, i64 %11, !dbg !2474
  %12 = bitcast i8* %add.ptr to %struct._object**, !dbg !2475
  %13 = bitcast %struct._object** %12 to %struct._PyWeakReference**, !dbg !2476
  store %struct._PyWeakReference** %13, %struct._PyWeakReference*** %list, align 8, !dbg !2477, !tbaa !832
  %14 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2478, !tbaa !832
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %14, align 8, !dbg !2480, !tbaa !832
  %cmp6 = icmp ne %struct._PyWeakReference* %15, null, !dbg !2481
  br i1 %cmp6, label %land.lhs.true, label %if.end.15, !dbg !2482

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2483, !tbaa !832
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %16, align 8, !dbg !2485, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %17, i32 0, i32 2, !dbg !2486
  %18 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !2486, !tbaa !863
  %cmp7 = icmp eq %struct._object* %18, null, !dbg !2487
  br i1 %cmp7, label %if.then.8, label %if.end.15, !dbg !2488

if.then.8:                                        ; preds = %land.lhs.true
  %19 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2489, !tbaa !832
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %19, align 8, !dbg !2491, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %20), !dbg !2492
  %21 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2493, !tbaa !832
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %21, align 8, !dbg !2495, !tbaa !832
  %cmp9 = icmp ne %struct._PyWeakReference* %22, null, !dbg !2496
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.14, !dbg !2497

land.lhs.true.10:                                 ; preds = %if.then.8
  %23 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2498, !tbaa !832
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %23, align 8, !dbg !2500, !tbaa !832
  %wr_callback11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 2, !dbg !2501
  %25 = load %struct._object*, %struct._object** %wr_callback11, align 8, !dbg !2501, !tbaa !863
  %cmp12 = icmp eq %struct._object* %25, null, !dbg !2502
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2503

if.then.13:                                       ; preds = %land.lhs.true.10
  %26 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2504, !tbaa !832
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %26, align 8, !dbg !2505, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %27), !dbg !2506
  br label %if.end.14, !dbg !2506

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.10, %if.then.8
  br label %if.end.15, !dbg !2507

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end
  %28 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2508, !tbaa !832
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %28, align 8, !dbg !2509, !tbaa !832
  %cmp16 = icmp ne %struct._PyWeakReference* %29, null, !dbg !2510
  br i1 %cmp16, label %if.then.17, label %if.end.115, !dbg !2511

if.then.17:                                       ; preds = %if.end.15
  %30 = bitcast %struct._PyWeakReference** %current to i8*, !dbg !2512
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !2512
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %current, metadata !431, metadata !836), !dbg !2513
  %31 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8, !dbg !2514, !tbaa !832
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %31, align 8, !dbg !2515, !tbaa !832
  store %struct._PyWeakReference* %32, %struct._PyWeakReference** %current, align 8, !dbg !2513, !tbaa !832
  %33 = bitcast i64* %count to i8*, !dbg !2516
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !2516
  call void @llvm.dbg.declare(metadata i64* %count, metadata !434, metadata !836), !dbg !2517
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2518, !tbaa !832
  %call = call i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %34), !dbg !2519
  store i64 %call, i64* %count, align 8, !dbg !2517, !tbaa !840
  %35 = bitcast i32* %restore_error to i8*, !dbg !2520
  call void @llvm.lifetime.start(i64 4, i8* %35) #2, !dbg !2520
  call void @llvm.dbg.declare(metadata i32* %restore_error, metadata !435, metadata !836), !dbg !2521
  %call18 = call %struct._object* @PyErr_Occurred(), !dbg !2522
  %tobool = icmp ne %struct._object* %call18, null, !dbg !2522
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2522
  store i32 %cond, i32* %restore_error, align 4, !dbg !2521, !tbaa !1240
  %36 = bitcast %struct._object** %err_type to i8*, !dbg !2523
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !2523
  call void @llvm.dbg.declare(metadata %struct._object** %err_type, metadata !436, metadata !836), !dbg !2524
  %37 = bitcast %struct._object** %err_value to i8*, !dbg !2523
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !2523
  call void @llvm.dbg.declare(metadata %struct._object** %err_value, metadata !437, metadata !836), !dbg !2525
  %38 = bitcast %struct._object** %err_tb to i8*, !dbg !2523
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !2523
  call void @llvm.dbg.declare(metadata %struct._object** %err_tb, metadata !438, metadata !836), !dbg !2526
  %39 = load i32, i32* %restore_error, align 4, !dbg !2527, !tbaa !1240
  %tobool19 = icmp ne i32 %39, 0, !dbg !2527
  br i1 %tobool19, label %if.then.20, label %if.end.21, !dbg !2529

if.then.20:                                       ; preds = %if.then.17
  call void @PyErr_Fetch(%struct._object** %err_type, %struct._object** %err_value, %struct._object** %err_tb), !dbg !2530
  br label %if.end.21, !dbg !2530

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  %40 = load i64, i64* %count, align 8, !dbg !2531, !tbaa !840
  %cmp22 = icmp eq i64 %40, 1, !dbg !2532
  br i1 %cmp22, label %if.then.23, label %if.else.38, !dbg !2533

if.then.23:                                       ; preds = %if.end.21
  %41 = bitcast %struct._object** %callback to i8*, !dbg !2534
  call void @llvm.lifetime.start(i64 8, i8* %41) #2, !dbg !2534
  call void @llvm.dbg.declare(metadata %struct._object** %callback, metadata !439, metadata !836), !dbg !2535
  %42 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2536, !tbaa !832
  %wr_callback24 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %42, i32 0, i32 2, !dbg !2537
  %43 = load %struct._object*, %struct._object** %wr_callback24, align 8, !dbg !2537, !tbaa !863
  store %struct._object* %43, %struct._object** %callback, align 8, !dbg !2535, !tbaa !832
  %44 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2538, !tbaa !832
  %wr_callback25 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %44, i32 0, i32 2, !dbg !2539
  store %struct._object* null, %struct._object** %wr_callback25, align 8, !dbg !2540, !tbaa !863
  %45 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2541, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %45), !dbg !2542
  %46 = load %struct._object*, %struct._object** %callback, align 8, !dbg !2543, !tbaa !832
  %cmp26 = icmp ne %struct._object* %46, null, !dbg !2544
  br i1 %cmp26, label %if.then.27, label %if.end.37, !dbg !2545

if.then.27:                                       ; preds = %if.then.23
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2546, !tbaa !832
  %48 = bitcast %struct._PyWeakReference* %47 to %struct._object*, !dbg !2548
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2549
  %49 = load i64, i64* %ob_refcnt28, align 8, !dbg !2549, !tbaa !959
  %cmp29 = icmp sgt i64 %49, 0, !dbg !2550
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !2551

if.then.30:                                       ; preds = %if.then.27
  %50 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2552, !tbaa !832
  %51 = load %struct._object*, %struct._object** %callback, align 8, !dbg !2553, !tbaa !832
  call void @handle_callback(%struct._PyWeakReference* %50, %struct._object* %51), !dbg !2554
  br label %if.end.31, !dbg !2554

if.end.31:                                        ; preds = %if.then.30, %if.then.27
  br label %do.body, !dbg !2555

do.body:                                          ; preds = %if.end.31
  %52 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2556
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !2556
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !442, metadata !836), !dbg !2558
  %53 = load %struct._object*, %struct._object** %callback, align 8, !dbg !2559, !tbaa !832
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8, !dbg !2558, !tbaa !832
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2560, !tbaa !832
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !2562
  %55 = load i64, i64* %ob_refcnt32, align 8, !dbg !2563, !tbaa !959
  %dec = add i64 %55, -1, !dbg !2563
  store i64 %dec, i64* %ob_refcnt32, align 8, !dbg !2563, !tbaa !959
  %cmp33 = icmp ne i64 %dec, 0, !dbg !2564
  br i1 %cmp33, label %if.then.34, label %if.else, !dbg !2565

if.then.34:                                       ; preds = %do.body
  br label %if.end.36, !dbg !2566

if.else:                                          ; preds = %do.body
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2568, !tbaa !832
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !2570
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !2570, !tbaa !893
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !2571
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2571, !tbaa !968
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2572, !tbaa !832
  call void %58(%struct._object* %59), !dbg !2573
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  %60 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2574
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !2574
  br label %do.cond, !dbg !2576

do.cond:                                          ; preds = %if.end.36
  br label %do.end, !dbg !2577

do.end:                                           ; preds = %do.cond
  br label %if.end.37, !dbg !2579

if.end.37:                                        ; preds = %do.end, %if.then.23
  %61 = bitcast %struct._object** %callback to i8*, !dbg !2580
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !2580
  br label %if.end.103, !dbg !2581

if.else.38:                                       ; preds = %if.end.21
  %62 = bitcast %struct._object** %tuple to i8*, !dbg !2582
  call void @llvm.lifetime.start(i64 8, i8* %62) #2, !dbg !2582
  call void @llvm.dbg.declare(metadata %struct._object** %tuple, metadata !446, metadata !836), !dbg !2583
  %63 = bitcast i64* %i to i8*, !dbg !2584
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !2584
  call void @llvm.dbg.declare(metadata i64* %i, metadata !448, metadata !836), !dbg !2585
  store i64 0, i64* %i, align 8, !dbg !2585, !tbaa !840
  %64 = load i64, i64* %count, align 8, !dbg !2586, !tbaa !840
  %mul = mul i64 %64, 2, !dbg !2587
  %call39 = call %struct._object* @PyTuple_New(i64 %mul), !dbg !2588
  store %struct._object* %call39, %struct._object** %tuple, align 8, !dbg !2589, !tbaa !832
  %65 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2590, !tbaa !832
  %cmp40 = icmp eq %struct._object* %65, null, !dbg !2592
  br i1 %cmp40, label %if.then.41, label %if.end.45, !dbg !2593

if.then.41:                                       ; preds = %if.else.38
  %66 = load i32, i32* %restore_error, align 4, !dbg !2594, !tbaa !1240
  %tobool42 = icmp ne i32 %66, 0, !dbg !2594
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !2597

if.then.43:                                       ; preds = %if.then.41
  call void @PyErr_Fetch(%struct._object** %err_type, %struct._object** %err_value, %struct._object** %err_tb), !dbg !2598
  br label %if.end.44, !dbg !2598

if.end.44:                                        ; preds = %if.then.43, %if.then.41
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2599

if.end.45:                                        ; preds = %if.else.38
  store i64 0, i64* %i, align 8, !dbg !2600, !tbaa !840
  br label %for.cond, !dbg !2601

for.cond:                                         ; preds = %for.inc, %if.end.45
  %67 = load i64, i64* %i, align 8, !dbg !2602, !tbaa !840
  %68 = load i64, i64* %count, align 8, !dbg !2605, !tbaa !840
  %cmp46 = icmp slt i64 %67, %68, !dbg !2606
  br i1 %cmp46, label %for.body, label %for.end, !dbg !2607

for.body:                                         ; preds = %for.cond
  %69 = bitcast %struct._PyWeakReference** %next to i8*, !dbg !2608
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %next, metadata !449, metadata !836), !dbg !2609
  %70 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2610, !tbaa !832
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %70, i32 0, i32 5, !dbg !2611
  %71 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !2611, !tbaa !851
  store %struct._PyWeakReference* %71, %struct._PyWeakReference** %next, align 8, !dbg !2609, !tbaa !832
  %72 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2612, !tbaa !832
  %73 = bitcast %struct._PyWeakReference* %72 to %struct._object*, !dbg !2613
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !2614
  %74 = load i64, i64* %ob_refcnt47, align 8, !dbg !2614, !tbaa !959
  %cmp48 = icmp sgt i64 %74, 0, !dbg !2615
  br i1 %cmp48, label %if.then.49, label %if.else.56, !dbg !2616

if.then.49:                                       ; preds = %for.body
  %75 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2617, !tbaa !832
  %76 = bitcast %struct._PyWeakReference* %75 to %struct._object*, !dbg !2619
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !2620
  %77 = load i64, i64* %ob_refcnt50, align 8, !dbg !2621, !tbaa !959
  %inc = add i64 %77, 1, !dbg !2621
  store i64 %inc, i64* %ob_refcnt50, align 8, !dbg !2621, !tbaa !959
  %78 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2622, !tbaa !832
  %79 = bitcast %struct._PyWeakReference* %78 to %struct._object*, !dbg !2623
  %80 = load i64, i64* %i, align 8, !dbg !2624, !tbaa !840
  %mul51 = mul i64 %80, 2, !dbg !2625
  %81 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2626, !tbaa !832
  %82 = bitcast %struct._object* %81 to %struct.PyTupleObject*, !dbg !2627
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %82, i32 0, i32 1, !dbg !2628
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %mul51, !dbg !2629
  store %struct._object* %79, %struct._object** %arrayidx, align 8, !dbg !2630, !tbaa !832
  %83 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2631, !tbaa !832
  %wr_callback52 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %83, i32 0, i32 2, !dbg !2632
  %84 = load %struct._object*, %struct._object** %wr_callback52, align 8, !dbg !2632, !tbaa !863
  %85 = load i64, i64* %i, align 8, !dbg !2633, !tbaa !840
  %mul53 = mul i64 %85, 2, !dbg !2634
  %add = add i64 %mul53, 1, !dbg !2635
  %86 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2636, !tbaa !832
  %87 = bitcast %struct._object* %86 to %struct.PyTupleObject*, !dbg !2637
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %87, i32 0, i32 1, !dbg !2638
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 %add, !dbg !2639
  store %struct._object* %84, %struct._object** %arrayidx55, align 8, !dbg !2640, !tbaa !832
  br label %if.end.70, !dbg !2641

if.else.56:                                       ; preds = %for.body
  br label %do.body.57, !dbg !2642

do.body.57:                                       ; preds = %if.else.56
  %88 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2643
  call void @llvm.lifetime.start(i64 8, i8* %88) #2, !dbg !2643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !453, metadata !836), !dbg !2645
  %89 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2646, !tbaa !832
  %wr_callback59 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %89, i32 0, i32 2, !dbg !2647
  %90 = load %struct._object*, %struct._object** %wr_callback59, align 8, !dbg !2647, !tbaa !863
  store %struct._object* %90, %struct._object** %_py_decref_tmp58, align 8, !dbg !2645, !tbaa !832
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2648, !tbaa !832
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !2650
  %92 = load i64, i64* %ob_refcnt60, align 8, !dbg !2651, !tbaa !959
  %dec61 = add i64 %92, -1, !dbg !2651
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !2651, !tbaa !959
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !2652
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !2653

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67, !dbg !2654

if.else.64:                                       ; preds = %do.body.57
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2656, !tbaa !832
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !2658
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !2658, !tbaa !893
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !2659
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !2659, !tbaa !968
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2660, !tbaa !832
  call void %95(%struct._object* %96), !dbg !2661
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %97 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2662
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !2662
  br label %do.cond.68, !dbg !2664

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !2665

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %if.then.49
  %98 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2667, !tbaa !832
  %wr_callback71 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %98, i32 0, i32 2, !dbg !2668
  store %struct._object* null, %struct._object** %wr_callback71, align 8, !dbg !2669, !tbaa !863
  %99 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8, !dbg !2670, !tbaa !832
  call void @clear_weakref(%struct._PyWeakReference* %99), !dbg !2671
  %100 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8, !dbg !2672, !tbaa !832
  store %struct._PyWeakReference* %100, %struct._PyWeakReference** %current, align 8, !dbg !2673, !tbaa !832
  %101 = bitcast %struct._PyWeakReference** %next to i8*, !dbg !2674
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !2674
  br label %for.inc, !dbg !2675

for.inc:                                          ; preds = %if.end.70
  %102 = load i64, i64* %i, align 8, !dbg !2676, !tbaa !840
  %inc72 = add i64 %102, 1, !dbg !2676
  store i64 %inc72, i64* %i, align 8, !dbg !2676, !tbaa !840
  br label %for.cond, !dbg !2677

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8, !dbg !2678, !tbaa !840
  br label %for.cond.73, !dbg !2679

for.cond.73:                                      ; preds = %for.inc.87, %for.end
  %103 = load i64, i64* %i, align 8, !dbg !2680, !tbaa !840
  %104 = load i64, i64* %count, align 8, !dbg !2683, !tbaa !840
  %cmp74 = icmp slt i64 %103, %104, !dbg !2684
  br i1 %cmp74, label %for.body.75, label %for.end.89, !dbg !2685

for.body.75:                                      ; preds = %for.cond.73
  %105 = bitcast %struct._object** %callback76 to i8*, !dbg !2686
  call void @llvm.lifetime.start(i64 8, i8* %105) #2, !dbg !2686
  call void @llvm.dbg.declare(metadata %struct._object** %callback76, metadata !457, metadata !836), !dbg !2687
  %106 = load i64, i64* %i, align 8, !dbg !2688, !tbaa !840
  %mul77 = mul i64 %106, 2, !dbg !2689
  %add78 = add i64 %mul77, 1, !dbg !2690
  %107 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2691, !tbaa !832
  %108 = bitcast %struct._object* %107 to %struct.PyTupleObject*, !dbg !2692
  %ob_item79 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %108, i32 0, i32 1, !dbg !2693
  %arrayidx80 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item79, i32 0, i64 %add78, !dbg !2694
  %109 = load %struct._object*, %struct._object** %arrayidx80, align 8, !dbg !2694, !tbaa !832
  store %struct._object* %109, %struct._object** %callback76, align 8, !dbg !2687, !tbaa !832
  %110 = load %struct._object*, %struct._object** %callback76, align 8, !dbg !2695, !tbaa !832
  %cmp81 = icmp ne %struct._object* %110, null, !dbg !2696
  br i1 %cmp81, label %if.then.82, label %if.end.86, !dbg !2697

if.then.82:                                       ; preds = %for.body.75
  %111 = bitcast %struct._object** %item to i8*, !dbg !2698
  call void @llvm.lifetime.start(i64 8, i8* %111) #2, !dbg !2698
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !461, metadata !836), !dbg !2699
  %112 = load i64, i64* %i, align 8, !dbg !2700, !tbaa !840
  %mul83 = mul i64 %112, 2, !dbg !2701
  %113 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2702, !tbaa !832
  %114 = bitcast %struct._object* %113 to %struct.PyTupleObject*, !dbg !2703
  %ob_item84 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %114, i32 0, i32 1, !dbg !2704
  %arrayidx85 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item84, i32 0, i64 %mul83, !dbg !2705
  %115 = load %struct._object*, %struct._object** %arrayidx85, align 8, !dbg !2705, !tbaa !832
  store %struct._object* %115, %struct._object** %item, align 8, !dbg !2699, !tbaa !832
  %116 = load %struct._object*, %struct._object** %item, align 8, !dbg !2706, !tbaa !832
  %117 = bitcast %struct._object* %116 to %struct._PyWeakReference*, !dbg !2707
  %118 = load %struct._object*, %struct._object** %callback76, align 8, !dbg !2708, !tbaa !832
  call void @handle_callback(%struct._PyWeakReference* %117, %struct._object* %118), !dbg !2709
  %119 = bitcast %struct._object** %item to i8*, !dbg !2710
  call void @llvm.lifetime.end(i64 8, i8* %119) #2, !dbg !2710
  br label %if.end.86, !dbg !2711

if.end.86:                                        ; preds = %if.then.82, %for.body.75
  %120 = bitcast %struct._object** %callback76 to i8*, !dbg !2712
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !2712
  br label %for.inc.87, !dbg !2713

for.inc.87:                                       ; preds = %if.end.86
  %121 = load i64, i64* %i, align 8, !dbg !2714, !tbaa !840
  %inc88 = add i64 %121, 1, !dbg !2714
  store i64 %inc88, i64* %i, align 8, !dbg !2714, !tbaa !840
  br label %for.cond.73, !dbg !2715

for.end.89:                                       ; preds = %for.cond.73
  br label %do.body.90, !dbg !2716

do.body.90:                                       ; preds = %for.end.89
  %122 = bitcast %struct._object** %_py_decref_tmp91 to i8*, !dbg !2717
  call void @llvm.lifetime.start(i64 8, i8* %122) #2, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp91, metadata !464, metadata !836), !dbg !2719
  %123 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2720, !tbaa !832
  store %struct._object* %123, %struct._object** %_py_decref_tmp91, align 8, !dbg !2719, !tbaa !832
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8, !dbg !2721, !tbaa !832
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0, !dbg !2723
  %125 = load i64, i64* %ob_refcnt92, align 8, !dbg !2724, !tbaa !959
  %dec93 = add i64 %125, -1, !dbg !2724
  store i64 %dec93, i64* %ob_refcnt92, align 8, !dbg !2724, !tbaa !959
  %cmp94 = icmp ne i64 %dec93, 0, !dbg !2725
  br i1 %cmp94, label %if.then.95, label %if.else.96, !dbg !2726

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99, !dbg !2727

if.else.96:                                       ; preds = %do.body.90
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8, !dbg !2729, !tbaa !832
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1, !dbg !2731
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !2731, !tbaa !893
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4, !dbg !2732
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8, !dbg !2732, !tbaa !968
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8, !dbg !2733, !tbaa !832
  call void %128(%struct._object* %129), !dbg !2734
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  %130 = bitcast %struct._object** %_py_decref_tmp91 to i8*, !dbg !2735
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !2735
  br label %do.cond.100, !dbg !2737

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101, !dbg !2738

do.end.101:                                       ; preds = %do.cond.100
  store i32 0, i32* %cleanup.dest.slot, !dbg !2740
  br label %cleanup, !dbg !2740

cleanup:                                          ; preds = %do.end.101, %if.end.44
  %131 = bitcast i64* %i to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %131) #2, !dbg !2741
  %132 = bitcast %struct._object** %tuple to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %132) #2, !dbg !2741
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.103

if.end.103:                                       ; preds = %cleanup.cont, %if.end.37
  %133 = load i32, i32* %restore_error, align 4, !dbg !2743, !tbaa !1240
  %tobool104 = icmp ne i32 %133, 0, !dbg !2743
  br i1 %tobool104, label %if.then.105, label %if.end.106, !dbg !2745

if.then.105:                                      ; preds = %if.end.103
  %134 = load %struct._object*, %struct._object** %err_type, align 8, !dbg !2746, !tbaa !832
  %135 = load %struct._object*, %struct._object** %err_value, align 8, !dbg !2747, !tbaa !832
  %136 = load %struct._object*, %struct._object** %err_tb, align 8, !dbg !2748, !tbaa !832
  call void @PyErr_Restore(%struct._object* %134, %struct._object* %135, %struct._object* %136), !dbg !2749
  br label %if.end.106, !dbg !2749

if.end.106:                                       ; preds = %if.then.105, %if.end.103
  store i32 0, i32* %cleanup.dest.slot, !dbg !2750
  br label %cleanup.107, !dbg !2750

cleanup.107:                                      ; preds = %if.end.106, %cleanup
  %137 = bitcast %struct._object** %err_tb to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !2751
  %138 = bitcast %struct._object** %err_value to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !2751
  %139 = bitcast %struct._object** %err_type to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !2751
  %140 = bitcast i32* %restore_error to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !2751
  %141 = bitcast i64* %count to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !2751
  %142 = bitcast %struct._PyWeakReference** %current to i8*, !dbg !2751
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !2751
  %cleanup.dest.113 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.113, label %cleanup.116 [
    i32 0, label %cleanup.cont.114
  ]

cleanup.cont.114:                                 ; preds = %cleanup.107
  br label %if.end.115, !dbg !2753

if.end.115:                                       ; preds = %cleanup.cont.114, %if.end.15
  store i32 0, i32* %cleanup.dest.slot, !dbg !2754
  br label %cleanup.116, !dbg !2754

cleanup.116:                                      ; preds = %if.end.115, %cleanup.107, %if.then
  %143 = bitcast %struct._PyWeakReference*** %list to i8*, !dbg !2755
  call void @llvm.lifetime.end(i64 8, i8* %143) #2, !dbg !2755
  %cleanup.dest.117 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.117, label %unreachable [
    i32 0, label %cleanup.cont.118
    i32 1, label %cleanup.cont.118
  ]

cleanup.cont.118:                                 ; preds = %cleanup.116, %cleanup.116
  ret void, !dbg !2754

unreachable:                                      ; preds = %cleanup.116
  unreachable
}

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

; Function Attrs: nounwind uwtable
define internal void @handle_callback(%struct._PyWeakReference* %ref, %struct._object* %callback) #0 {
entry:
  %ref.addr = alloca %struct._PyWeakReference*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %cbresult = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %ref, %struct._PyWeakReference** %ref.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %ref.addr, metadata !797, metadata !836), !dbg !2757
  store %struct._object* %callback, %struct._object** %callback.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %callback.addr, metadata !798, metadata !836), !dbg !2758
  %0 = bitcast %struct._object** %cbresult to i8*, !dbg !2759
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2759
  call void @llvm.dbg.declare(metadata %struct._object** %cbresult, metadata !799, metadata !836), !dbg !2760
  %1 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2761, !tbaa !832
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref.addr, align 8, !dbg !2762, !tbaa !832
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %1, %struct._PyWeakReference* %2, i8* null), !dbg !2763
  store %struct._object* %call, %struct._object** %cbresult, align 8, !dbg !2760, !tbaa !832
  %3 = load %struct._object*, %struct._object** %cbresult, align 8, !dbg !2764, !tbaa !832
  %cmp = icmp eq %struct._object* %3, null, !dbg !2765
  br i1 %cmp, label %if.then, label %if.else, !dbg !2766

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2767, !tbaa !832
  call void @PyErr_WriteUnraisable(%struct._object* %4), !dbg !2768
  br label %if.end.4, !dbg !2768

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !2769

do.body:                                          ; preds = %if.else
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2770
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2770
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !800, metadata !836), !dbg !2772
  %6 = load %struct._object*, %struct._object** %cbresult, align 8, !dbg !2773, !tbaa !832
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !2772, !tbaa !832
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2774, !tbaa !832
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2776
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2777, !tbaa !959
  %dec = add i64 %8, -1, !dbg !2777
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2777, !tbaa !959
  %cmp1 = icmp ne i64 %dec, 0, !dbg !2778
  br i1 %cmp1, label %if.then.2, label %if.else.3, !dbg !2779

if.then.2:                                        ; preds = %do.body
  br label %if.end, !dbg !2780

if.else.3:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2782, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2784
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2784, !tbaa !893
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !2785
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2785, !tbaa !968
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2786, !tbaa !832
  call void %11(%struct._object* %12), !dbg !2787
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2788
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2788
  br label %do.cond, !dbg !2790

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2791

do.end:                                           ; preds = %do.cond
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %if.then
  %14 = bitcast %struct._object** %cbresult to i8*, !dbg !2793
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !2793
  ret void, !dbg !2793
}

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

; Function Attrs: nounwind uwtable
define internal i32 @parse_weakref_init_args(i8* %funcname, %struct._object* %args, %struct._object* %kwargs, %struct._object** %obp, %struct._object** %callbackp) #0 {
entry:
  %funcname.addr = alloca i8*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %obp.addr = alloca %struct._object**, align 8
  %callbackp.addr = alloca %struct._object**, align 8
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !543, metadata !836), !dbg !2794
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !544, metadata !836), !dbg !2795
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !545, metadata !836), !dbg !2796
  store %struct._object** %obp, %struct._object*** %obp.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object*** %obp.addr, metadata !546, metadata !836), !dbg !2797
  store %struct._object** %callbackp, %struct._object*** %callbackp.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object*** %callbackp.addr, metadata !547, metadata !836), !dbg !2798
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2799, !tbaa !832
  %1 = load i8*, i8** %funcname.addr, align 8, !dbg !2800, !tbaa !832
  %2 = load %struct._object**, %struct._object*** %obp.addr, align 8, !dbg !2801, !tbaa !832
  %3 = load %struct._object**, %struct._object*** %callbackp.addr, align 8, !dbg !2802, !tbaa !832
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* %1, i64 1, i64 2, %struct._object** %2, %struct._object** %3), !dbg !2803
  ret i32 %call, !dbg !2804
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

; Function Attrs: nounwind uwtable
define internal void @init_weakref(%struct._PyWeakReference* %self, %struct._object* %ob, %struct._object* %callback) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %self.addr, metadata !574, metadata !836), !dbg !2805
  store %struct._object* %ob, %struct._object** %ob.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %ob.addr, metadata !575, metadata !836), !dbg !2806
  store %struct._object* %callback, %struct._object** %callback.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %callback.addr, metadata !576, metadata !836), !dbg !2807
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !2808, !tbaa !832
  %hash = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 3, !dbg !2809
  store i64 -1, i64* %hash, align 8, !dbg !2810, !tbaa !1149
  %1 = load %struct._object*, %struct._object** %ob.addr, align 8, !dbg !2811, !tbaa !832
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !2812, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1, !dbg !2813
  store %struct._object* %1, %struct._object** %wr_object, align 8, !dbg !2814, !tbaa !882
  br label %do.body, !dbg !2815

do.body:                                          ; preds = %entry
  %3 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2816
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2816
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !577, metadata !836), !dbg !2818
  %4 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2819, !tbaa !832
  store %struct._object* %4, %struct._object** %_py_xincref_tmp, align 8, !dbg !2818, !tbaa !832
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2820, !tbaa !832
  %cmp = icmp ne %struct._object* %5, null, !dbg !2822
  br i1 %cmp, label %if.then, label %if.end, !dbg !2823

if.then:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2824, !tbaa !832
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !2826
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !2827, !tbaa !959
  %inc = add i64 %7, 1, !dbg !2827
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2827, !tbaa !959
  br label %if.end, !dbg !2828

if.end:                                           ; preds = %if.then, %do.body
  %8 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2829
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !2829
  br label %do.end, !dbg !2832

do.end:                                           ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %callback.addr, align 8, !dbg !2833, !tbaa !832
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8, !dbg !2834, !tbaa !832
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 2, !dbg !2835
  store %struct._object* %9, %struct._object** %wr_callback, align 8, !dbg !2836, !tbaa !863
  ret void, !dbg !2837
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_add(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !587, metadata !836), !dbg !2838
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !588, metadata !836), !dbg !2839
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2840, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !2842
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2842, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !2843
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2844

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2845, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2847
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2847, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !2848
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !2849

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2850, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !2855
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !2856
  %tobool = icmp ne i32 %call, 0, !dbg !2856
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !2857

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2858
  br label %return, !dbg !2858

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2860, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !2862
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !2863
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !2863, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2864
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2864, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !2865
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !2866

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2867, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !2869
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !2870
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !2870, !tbaa !882
  br label %cond.end, !dbg !2866

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !2866
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !2873, !tbaa !832
  br label %if.end.6, !dbg !2876

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2877, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2881
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2881, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !2882
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !2883

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2884, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2886
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !2886, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !2887
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !2888

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2889, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !2894
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !2895
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2895
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !2896

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !2897
  br label %return, !dbg !2897

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2899, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !2901
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !2902
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !2902, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2903
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !2903, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !2904
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !2905

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2906, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !2908
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !2909
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !2909, !tbaa !882
  br label %cond.end.23, !dbg !2905

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !2910

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !2905
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !2912, !tbaa !832
  br label %if.end.25, !dbg !2915

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2916, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2919, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Add(%struct._object* %26, %struct._object* %27), !dbg !2920
  store %struct._object* %call26, %struct._object** %retval, !dbg !2921
  br label %return, !dbg !2921

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !2922
  ret %struct._object* %28, !dbg !2922
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_sub(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !594, metadata !836), !dbg !2926
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !595, metadata !836), !dbg !2927
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2928, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !2930
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2930, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !2931
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2932

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2933, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2935
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2935, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !2936
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !2937

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2938, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !2943
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !2944
  %tobool = icmp ne i32 %call, 0, !dbg !2944
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !2945

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2946
  br label %return, !dbg !2946

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2948, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !2950
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !2951
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !2951, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2952
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2952, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !2953
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !2954

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !2955, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !2957
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !2958
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !2958, !tbaa !882
  br label %cond.end, !dbg !2954

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2959

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !2954
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !2961, !tbaa !832
  br label %if.end.6, !dbg !2964

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2965, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2969
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2969, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !2970
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !2971

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2972, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2974
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !2974, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !2975
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !2976

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2977, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !2982
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !2983
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2983
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !2984

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !2985
  br label %return, !dbg !2985

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2987, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !2989
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !2990
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !2990, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2991
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !2991, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !2992
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !2993

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !2994, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !2996
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !2997
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !2997, !tbaa !882
  br label %cond.end.23, !dbg !2993

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !2998

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !2993
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3000, !tbaa !832
  br label %if.end.25, !dbg !3003

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3004, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3007, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Subtract(%struct._object* %26, %struct._object* %27), !dbg !3008
  store %struct._object* %call26, %struct._object** %retval, !dbg !3009
  br label %return, !dbg !3009

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3010
  ret %struct._object* %28, !dbg !3010
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_mul(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !598, metadata !836), !dbg !3014
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !599, metadata !836), !dbg !3015
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3016, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3018
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3018, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3019
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3020

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3021, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3023
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3023, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3024
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3025

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3026, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3031
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3032
  %tobool = icmp ne i32 %call, 0, !dbg !3032
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3033

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3034
  br label %return, !dbg !3034

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3036, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3038
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3039
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3039, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3040
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3040, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3041
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3042

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3043, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3045
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3046
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3046, !tbaa !882
  br label %cond.end, !dbg !3042

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3047

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3042
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3049, !tbaa !832
  br label %if.end.6, !dbg !3052

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3053, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3057
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3057, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3058
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3059

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3060, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3062
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3062, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3063
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3064

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3065, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3070
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3071
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3071
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3072

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3073
  br label %return, !dbg !3073

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3075, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3077
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3078
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3078, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3079
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3079, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3080
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3081

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3082, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3084
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3085
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3085, !tbaa !882
  br label %cond.end.23, !dbg !3081

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3086

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3081
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3088, !tbaa !832
  br label %if.end.25, !dbg !3091

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3092, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3095, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Multiply(%struct._object* %26, %struct._object* %27), !dbg !3096
  store %struct._object* %call26, %struct._object** %retval, !dbg !3097
  br label %return, !dbg !3097

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3098
  ret %struct._object* %28, !dbg !3098
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_mod(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !602, metadata !836), !dbg !3102
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !603, metadata !836), !dbg !3103
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3104, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3106
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3106, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3107
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3108

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3109, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3111
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3111, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3112
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3113

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3114, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3119
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3120
  %tobool = icmp ne i32 %call, 0, !dbg !3120
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3121

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3122
  br label %return, !dbg !3122

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3124, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3126
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3127
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3127, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3128
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3128, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3129
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3130

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3131, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3133
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3134
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3134, !tbaa !882
  br label %cond.end, !dbg !3130

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3130
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3137, !tbaa !832
  br label %if.end.6, !dbg !3140

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3141, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3145
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3145, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3146
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3147

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3148, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3150
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3150, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3151
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3152

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3153, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3158
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3159
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3159
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3160

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3161
  br label %return, !dbg !3161

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3163, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3165
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3166
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3166, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3167
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3167, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3168
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3169

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3170, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3172
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3173
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3173, !tbaa !882
  br label %cond.end.23, !dbg !3169

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3174

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3169
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3176, !tbaa !832
  br label %if.end.25, !dbg !3179

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3180, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3183, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Remainder(%struct._object* %26, %struct._object* %27), !dbg !3184
  store %struct._object* %call26, %struct._object** %retval, !dbg !3185
  br label %return, !dbg !3185

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3186
  ret %struct._object* %28, !dbg !3186
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_divmod(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !606, metadata !836), !dbg !3190
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !607, metadata !836), !dbg !3191
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3192, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3194
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3194, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3195
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3196

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3197, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3199
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3199, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3200
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3201

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3202, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3207
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3208
  %tobool = icmp ne i32 %call, 0, !dbg !3208
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3209

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3210
  br label %return, !dbg !3210

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3212, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3214
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3215
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3215, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3216
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3216, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3217
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3218

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3219, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3221
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3222
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3222, !tbaa !882
  br label %cond.end, !dbg !3218

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3223

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3218
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3225, !tbaa !832
  br label %if.end.6, !dbg !3228

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3229, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3233
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3233, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3234
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3235

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3236, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3238
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3238, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3239
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3240

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3241, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3246
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3247
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3247
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3248

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3249
  br label %return, !dbg !3249

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3251, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3253
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3254
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3254, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3255
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3255, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3256
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3257

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3258, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3260
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3261
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3261, !tbaa !882
  br label %cond.end.23, !dbg !3257

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3262

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3257
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3264, !tbaa !832
  br label %if.end.25, !dbg !3267

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3268, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3271, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Divmod(%struct._object* %26, %struct._object* %27), !dbg !3272
  store %struct._object* %call26, %struct._object** %retval, !dbg !3273
  br label %return, !dbg !3273

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3274
  ret %struct._object* %28, !dbg !3274
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_pow(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !610, metadata !836), !dbg !3278
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !611, metadata !836), !dbg !3279
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !612, metadata !836), !dbg !3280
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3281, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3283
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3283, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3284
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3285

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3286, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3288
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3288, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3289
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3290

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3291, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3296
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3297
  %tobool = icmp ne i32 %call, 0, !dbg !3297
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3298

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3299
  br label %return, !dbg !3299

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3301, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3303
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3304
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3304, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3305
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3305, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3306
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3307

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3308, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3310
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3311
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3311, !tbaa !882
  br label %cond.end, !dbg !3307

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3312

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3307
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !3314, !tbaa !832
  br label %if.end.6, !dbg !3317

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3318, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3322
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3322, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3323
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3324

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3325, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3327
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3327, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3328
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3329

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3330, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3335
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3336
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3336
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3337

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3338
  br label %return, !dbg !3338

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3340, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3342
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3343
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3343, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3344
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3344, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3345
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3346

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3347, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3349
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3350
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3350, !tbaa !882
  br label %cond.end.23, !dbg !3346

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3351

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3346
  store %struct._object* %cond24, %struct._object** %v.addr, align 8, !dbg !3353, !tbaa !832
  br label %if.end.25, !dbg !3356

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3357, !tbaa !832
  %cmp26 = icmp ne %struct._object* %26, null, !dbg !3361
  br i1 %cmp26, label %if.then.27, label %if.end.47, !dbg !3362

if.then.27:                                       ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3363, !tbaa !832
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !3366
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !3366, !tbaa !893
  %cmp29 = icmp eq %struct._typeobject* %28, @_PyWeakref_ProxyType, !dbg !3367
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30, !dbg !3368

lor.lhs.false.30:                                 ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3369, !tbaa !832
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !3371
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !3371, !tbaa !893
  %cmp32 = icmp eq %struct._typeobject* %30, @_PyWeakref_CallableProxyType, !dbg !3372
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !3373

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %31 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3374, !tbaa !832
  %32 = bitcast %struct._object* %31 to %struct._PyWeakReference*, !dbg !3379
  %call34 = call i32 @proxy_checkref(%struct._PyWeakReference* %32), !dbg !3380
  %tobool35 = icmp ne i32 %call34, 0, !dbg !3380
  br i1 %tobool35, label %if.end.37, label %if.then.36, !dbg !3381

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval, !dbg !3382
  br label %return, !dbg !3382

if.end.37:                                        ; preds = %if.then.33
  %33 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3384, !tbaa !832
  %34 = bitcast %struct._object* %33 to %struct._PyWeakReference*, !dbg !3386
  %wr_object38 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 1, !dbg !3387
  %35 = load %struct._object*, %struct._object** %wr_object38, align 8, !dbg !3387, !tbaa !882
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !3388
  %36 = load i64, i64* %ob_refcnt39, align 8, !dbg !3388, !tbaa !959
  %cmp40 = icmp sgt i64 %36, 0, !dbg !3389
  br i1 %cmp40, label %cond.true.41, label %cond.false.43, !dbg !3390

cond.true.41:                                     ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3391, !tbaa !832
  %38 = bitcast %struct._object* %37 to %struct._PyWeakReference*, !dbg !3393
  %wr_object42 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %38, i32 0, i32 1, !dbg !3394
  %39 = load %struct._object*, %struct._object** %wr_object42, align 8, !dbg !3394, !tbaa !882
  br label %cond.end.44, !dbg !3390

cond.false.43:                                    ; preds = %if.end.37
  br label %cond.end.44, !dbg !3395

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._object* [ %39, %cond.true.41 ], [ @_Py_NoneStruct, %cond.false.43 ], !dbg !3390
  store %struct._object* %cond45, %struct._object** %w.addr, align 8, !dbg !3397, !tbaa !832
  br label %if.end.46, !dbg !3400

if.end.46:                                        ; preds = %cond.end.44, %lor.lhs.false.30
  br label %if.end.47, !dbg !3401

if.end.47:                                        ; preds = %if.end.46, %if.end.25
  %40 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3404, !tbaa !832
  %41 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3407, !tbaa !832
  %42 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3408, !tbaa !832
  %call48 = call %struct._object* @PyNumber_Power(%struct._object* %40, %struct._object* %41, %struct._object* %42), !dbg !3409
  store %struct._object* %call48, %struct._object** %retval, !dbg !3410
  br label %return, !dbg !3410

return:                                           ; preds = %if.end.47, %if.then.36, %if.then.15, %if.then.3
  %43 = load %struct._object*, %struct._object** %retval, !dbg !3411
  ret %struct._object* %43, !dbg !3411
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_neg(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !615, metadata !836), !dbg !3416
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3417, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3419
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3419, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3420
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3421

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3422, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3424
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3424, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3425
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3426

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3427, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3432
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3433
  %tobool = icmp ne i32 %call, 0, !dbg !3433
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3434

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3435
  br label %return, !dbg !3435

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3437, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3439
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3440
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3440, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3441
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3441, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3442
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3443

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3444, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3446
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3447
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3447, !tbaa !882
  br label %cond.end, !dbg !3443

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3448

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3443
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !3450, !tbaa !832
  br label %if.end.6, !dbg !3453

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3454, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Negative(%struct._object* %13), !dbg !3457
  store %struct._object* %call7, %struct._object** %retval, !dbg !3458
  br label %return, !dbg !3458

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3459
  ret %struct._object* %14, !dbg !3459
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_pos(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !618, metadata !836), !dbg !3462
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3463, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3465
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3465, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3466
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3467

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3468, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3470
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3470, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3471
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3472

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3473, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3478
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3479
  %tobool = icmp ne i32 %call, 0, !dbg !3479
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3480

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3481
  br label %return, !dbg !3481

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3483, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3485
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3486
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3486, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3487
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3487, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3488
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3489

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3490, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3492
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3493
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3493, !tbaa !882
  br label %cond.end, !dbg !3489

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3494

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3489
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !3496, !tbaa !832
  br label %if.end.6, !dbg !3499

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3500, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Positive(%struct._object* %13), !dbg !3503
  store %struct._object* %call7, %struct._object** %retval, !dbg !3504
  br label %return, !dbg !3504

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3505
  ret %struct._object* %14, !dbg !3505
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_abs(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !621, metadata !836), !dbg !3508
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3509, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3511
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3511, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3512
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3513

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3514, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3516
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3516, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3517
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3518

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3519, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3524
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3525
  %tobool = icmp ne i32 %call, 0, !dbg !3525
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3526

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3527
  br label %return, !dbg !3527

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3529, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3531
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3532
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3532, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3533
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3533, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3534
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3535

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3536, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3538
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3539
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3539, !tbaa !882
  br label %cond.end, !dbg !3535

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3540

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3535
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !3542, !tbaa !832
  br label %if.end.6, !dbg !3545

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3546, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Absolute(%struct._object* %13), !dbg !3549
  store %struct._object* %call7, %struct._object** %retval, !dbg !3550
  br label %return, !dbg !3550

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3551
  ret %struct._object* %14, !dbg !3551
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_bool(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !624, metadata !836), !dbg !3554
  %0 = bitcast %struct._object** %o to i8*, !dbg !3555
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3555
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !625, metadata !836), !dbg !3556
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !3557, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !3558
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3558, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !3559
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !3559, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !3560
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3561

cond.true:                                        ; preds = %entry
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !3562, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !3564
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !3564, !tbaa !882
  br label %cond.end, !dbg !3561

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3565

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3561
  store %struct._object* %cond, %struct._object** %o, align 8, !dbg !3567, !tbaa !832
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !3570, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %6), !dbg !3572
  %tobool = icmp ne i32 %call, 0, !dbg !3572
  br i1 %tobool, label %if.end, label %if.then, !dbg !3573

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval, !dbg !3574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3574

if.end:                                           ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !3575, !tbaa !832
  %call2 = call i32 @PyObject_IsTrue(%struct._object* %7), !dbg !3576
  store i32 %call2, i32* %retval, !dbg !3577
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3577

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._object** %o to i8*, !dbg !3578
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !3578
  %9 = load i32, i32* %retval, !dbg !3578
  ret i32 %9, !dbg !3578
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_invert(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !628, metadata !836), !dbg !3579
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3580, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3582
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3582, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3583
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3584

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3585, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3587
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3587, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3588
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3589

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3590, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3595
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3596
  %tobool = icmp ne i32 %call, 0, !dbg !3596
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3597

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3598
  br label %return, !dbg !3598

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3600, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3602
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3603
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3603, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3604
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3604, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3605
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3606

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3607, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3609
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3610
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3610, !tbaa !882
  br label %cond.end, !dbg !3606

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3611

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3606
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !3613, !tbaa !832
  br label %if.end.6, !dbg !3616

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !3617, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Invert(%struct._object* %13), !dbg !3620
  store %struct._object* %call7, %struct._object** %retval, !dbg !3621
  br label %return, !dbg !3621

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3622
  ret %struct._object* %14, !dbg !3622
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_lshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !631, metadata !836), !dbg !3625
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !632, metadata !836), !dbg !3626
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3627, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3629
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3629, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3630
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3631

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3632, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3634
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3634, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3635
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3636

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3637, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3642
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3643
  %tobool = icmp ne i32 %call, 0, !dbg !3643
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3644

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3645
  br label %return, !dbg !3645

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3647, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3649
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3650
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3650, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3651
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3651, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3652
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3653

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3654, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3656
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3657
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3657, !tbaa !882
  br label %cond.end, !dbg !3653

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3658

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3653
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3660, !tbaa !832
  br label %if.end.6, !dbg !3663

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3664, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3668
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3668, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3669
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3670

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3671, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3673
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3673, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3674
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3675

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3676, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3681
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3682
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3682
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3683

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3684
  br label %return, !dbg !3684

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3686, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3688
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3689
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3689, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3690
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3690, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3691
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3692

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3693, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3695
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3696
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3696, !tbaa !882
  br label %cond.end.23, !dbg !3692

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3697

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3692
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3699, !tbaa !832
  br label %if.end.25, !dbg !3702

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3703, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3706, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Lshift(%struct._object* %26, %struct._object* %27), !dbg !3707
  store %struct._object* %call26, %struct._object** %retval, !dbg !3708
  br label %return, !dbg !3708

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3709
  ret %struct._object* %28, !dbg !3709
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_rshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !635, metadata !836), !dbg !3713
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !636, metadata !836), !dbg !3714
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3715, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3717
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3717, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3718
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3719

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3720, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3722
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3722, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3723
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3724

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3725, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3730
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3731
  %tobool = icmp ne i32 %call, 0, !dbg !3731
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3732

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3733
  br label %return, !dbg !3733

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3735, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3737
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3738
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3738, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3739
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3739, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3740
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3741

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3742, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3744
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3745
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3745, !tbaa !882
  br label %cond.end, !dbg !3741

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3746

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3741
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3748, !tbaa !832
  br label %if.end.6, !dbg !3751

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3752, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3756
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3756, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3757
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3758

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3759, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3761
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3761, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3762
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3763

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3764, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3769
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3770
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3770
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3771

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3772
  br label %return, !dbg !3772

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3774, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3776
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3777
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3777, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3778
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3778, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3779
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3780

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3781, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3783
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3784
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3784, !tbaa !882
  br label %cond.end.23, !dbg !3780

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3785

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3780
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3787, !tbaa !832
  br label %if.end.25, !dbg !3790

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3791, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3794, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Rshift(%struct._object* %26, %struct._object* %27), !dbg !3795
  store %struct._object* %call26, %struct._object** %retval, !dbg !3796
  br label %return, !dbg !3796

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3797
  ret %struct._object* %28, !dbg !3797
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_and(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !639, metadata !836), !dbg !3801
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !640, metadata !836), !dbg !3802
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3803, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3805
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3805, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3806
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3807

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3808, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3810
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3810, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3811
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3812

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3813, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3818
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3819
  %tobool = icmp ne i32 %call, 0, !dbg !3819
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3820

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3821
  br label %return, !dbg !3821

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3823, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3825
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3826
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3826, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3827
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3827, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3828
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3829

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3830, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3832
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3833
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3833, !tbaa !882
  br label %cond.end, !dbg !3829

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3834

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3829
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3836, !tbaa !832
  br label %if.end.6, !dbg !3839

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3840, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3844
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3844, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3845
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3846

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3847, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3849
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3849, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3850
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3851

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3852, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3857
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3858
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3858
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3859

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3860
  br label %return, !dbg !3860

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3862, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3864
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3865
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3865, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3866
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3866, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3867
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3868

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3869, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3871
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3872
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3872, !tbaa !882
  br label %cond.end.23, !dbg !3868

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3873

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3868
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3875, !tbaa !832
  br label %if.end.25, !dbg !3878

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3879, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3882, !tbaa !832
  %call26 = call %struct._object* @PyNumber_And(%struct._object* %26, %struct._object* %27), !dbg !3883
  store %struct._object* %call26, %struct._object** %retval, !dbg !3884
  br label %return, !dbg !3884

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3885
  ret %struct._object* %28, !dbg !3885
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_xor(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !643, metadata !836), !dbg !3889
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !644, metadata !836), !dbg !3890
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3891, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3893
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3893, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3894
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3895

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3896, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3898
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3898, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3899
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3900

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3901, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3906
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3907
  %tobool = icmp ne i32 %call, 0, !dbg !3907
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3908

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3909
  br label %return, !dbg !3909

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3911, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !3913
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !3914
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3914, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3915
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3915, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !3916
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3917

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3918, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !3920
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !3921
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !3921, !tbaa !882
  br label %cond.end, !dbg !3917

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3922

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3917
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !3924, !tbaa !832
  br label %if.end.6, !dbg !3927

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3928, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3932
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3932, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !3933
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !3934

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3935, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3937
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3937, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !3938
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3939

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3940, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !3945
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !3946
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3946
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !3947

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !3948
  br label %return, !dbg !3948

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3950, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !3952
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !3953
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !3953, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3954
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !3954, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !3955
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !3956

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3957, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !3959
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !3960
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !3960, !tbaa !882
  br label %cond.end.23, !dbg !3956

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !3961

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !3956
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !3963, !tbaa !832
  br label %if.end.25, !dbg !3966

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3967, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !3970, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Xor(%struct._object* %26, %struct._object* %27), !dbg !3971
  store %struct._object* %call26, %struct._object** %retval, !dbg !3972
  br label %return, !dbg !3972

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3973
  ret %struct._object* %28, !dbg !3973
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_or(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !647, metadata !836), !dbg !3977
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !648, metadata !836), !dbg !3978
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3979, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3981
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3981, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !3982
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3983

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3984, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3986
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3986, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !3987
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !3988

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3989, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !3994
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !3995
  %tobool = icmp ne i32 %call, 0, !dbg !3995
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !3996

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3997
  br label %return, !dbg !3997

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !3999, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4001
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4002
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4002, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4003
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4003, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4004
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4005

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4006, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4008
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4009
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4009, !tbaa !882
  br label %cond.end, !dbg !4005

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4010

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4005
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4012, !tbaa !832
  br label %if.end.6, !dbg !4015

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4016, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4020
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4020, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4021
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4022

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4023, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4025
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4025, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4026
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4027

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4028, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4033
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4034
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4034
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4035

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4036
  br label %return, !dbg !4036

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4038, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4040
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4041
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4041, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4042
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4042, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4043
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4044

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4045, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4047
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4048
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4048, !tbaa !882
  br label %cond.end.23, !dbg !4044

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4049

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4044
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4051, !tbaa !832
  br label %if.end.25, !dbg !4054

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4055, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4058, !tbaa !832
  %call26 = call %struct._object* @PyNumber_Or(%struct._object* %26, %struct._object* %27), !dbg !4059
  store %struct._object* %call26, %struct._object** %retval, !dbg !4060
  br label %return, !dbg !4060

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4061
  ret %struct._object* %28, !dbg !4061
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_int(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !651, metadata !836), !dbg !4065
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4066, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4068
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4068, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4069
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4070

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4071, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4073
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4073, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4074
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4075

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4076, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4081
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4082
  %tobool = icmp ne i32 %call, 0, !dbg !4082
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4083

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4084
  br label %return, !dbg !4084

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4086, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4088
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4089
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4089, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4090
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4090, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4091
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4092

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4093, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4095
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4096
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4096, !tbaa !882
  br label %cond.end, !dbg !4092

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4097

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4092
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !4099, !tbaa !832
  br label %if.end.6, !dbg !4102

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4103, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Long(%struct._object* %13), !dbg !4106
  store %struct._object* %call7, %struct._object** %retval, !dbg !4107
  br label %return, !dbg !4107

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !4108
  ret %struct._object* %14, !dbg !4108
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_float(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !654, metadata !836), !dbg !4111
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4112, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4114
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4114, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4115
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4116

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4117, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4119
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4119, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4120
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4121

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4122, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4127
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4128
  %tobool = icmp ne i32 %call, 0, !dbg !4128
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4129

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4130
  br label %return, !dbg !4130

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4132, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4134
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4135
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4135, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4136
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4136, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4137
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4138

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4139, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4141
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4142
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4142, !tbaa !882
  br label %cond.end, !dbg !4138

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4143

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4138
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !4145, !tbaa !832
  br label %if.end.6, !dbg !4148

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4149, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Float(%struct._object* %13), !dbg !4152
  store %struct._object* %call7, %struct._object** %retval, !dbg !4153
  br label %return, !dbg !4153

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !4154
  ret %struct._object* %14, !dbg !4154
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iadd(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !657, metadata !836), !dbg !4157
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !658, metadata !836), !dbg !4158
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4159, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4161
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4161, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4162
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4163

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4164, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4166
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4166, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4167
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4168

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4169, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4174
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4175
  %tobool = icmp ne i32 %call, 0, !dbg !4175
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4176

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4177
  br label %return, !dbg !4177

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4179, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4181
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4182
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4182, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4183
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4183, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4184
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4185

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4186, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4188
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4189
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4189, !tbaa !882
  br label %cond.end, !dbg !4185

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4185
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4192, !tbaa !832
  br label %if.end.6, !dbg !4195

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4196, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4200
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4200, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4201
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4202

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4203, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4205
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4205, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4206
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4207

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4208, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4213
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4214
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4214
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4215

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4216
  br label %return, !dbg !4216

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4218, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4220
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4221
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4221, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4222
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4222, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4223
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4224

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4225, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4227
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4228
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4228, !tbaa !882
  br label %cond.end.23, !dbg !4224

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4229

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4224
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4231, !tbaa !832
  br label %if.end.25, !dbg !4234

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4235, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4238, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceAdd(%struct._object* %26, %struct._object* %27), !dbg !4239
  store %struct._object* %call26, %struct._object** %retval, !dbg !4240
  br label %return, !dbg !4240

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4241
  ret %struct._object* %28, !dbg !4241
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_isub(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !661, metadata !836), !dbg !4245
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !662, metadata !836), !dbg !4246
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4247, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4249
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4249, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4250
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4251

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4252, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4254
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4254, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4255
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4256

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4257, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4262
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4263
  %tobool = icmp ne i32 %call, 0, !dbg !4263
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4264

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4265
  br label %return, !dbg !4265

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4267, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4269
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4270
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4270, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4271
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4271, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4272
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4273

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4274, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4276
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4277
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4277, !tbaa !882
  br label %cond.end, !dbg !4273

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4278

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4273
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4280, !tbaa !832
  br label %if.end.6, !dbg !4283

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4284, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4288
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4288, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4289
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4290

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4291, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4293
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4293, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4294
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4295

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4296, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4301
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4302
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4302
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4303

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4304
  br label %return, !dbg !4304

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4306, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4308
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4309
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4309, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4310
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4310, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4311
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4312

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4313, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4315
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4316
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4316, !tbaa !882
  br label %cond.end.23, !dbg !4312

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4317

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4312
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4319, !tbaa !832
  br label %if.end.25, !dbg !4322

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4323, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4326, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %26, %struct._object* %27), !dbg !4327
  store %struct._object* %call26, %struct._object** %retval, !dbg !4328
  br label %return, !dbg !4328

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4329
  ret %struct._object* %28, !dbg !4329
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_imul(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !665, metadata !836), !dbg !4333
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !666, metadata !836), !dbg !4334
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4335, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4337
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4337, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4338
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4339

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4340, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4342
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4342, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4343
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4344

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4345, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4350
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4351
  %tobool = icmp ne i32 %call, 0, !dbg !4351
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4352

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4353
  br label %return, !dbg !4353

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4355, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4357
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4358
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4358, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4359
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4359, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4360
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4361

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4362, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4364
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4365
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4365, !tbaa !882
  br label %cond.end, !dbg !4361

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4366

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4361
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4368, !tbaa !832
  br label %if.end.6, !dbg !4371

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4372, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4376
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4376, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4377
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4378

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4379, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4381
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4381, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4382
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4383

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4384, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4389
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4390
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4390
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4391

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4392
  br label %return, !dbg !4392

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4394, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4396
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4397
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4397, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4398
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4398, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4399
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4400

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4401, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4403
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4404
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4404, !tbaa !882
  br label %cond.end.23, !dbg !4400

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4405

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4400
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4407, !tbaa !832
  br label %if.end.25, !dbg !4410

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4411, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4414, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %26, %struct._object* %27), !dbg !4415
  store %struct._object* %call26, %struct._object** %retval, !dbg !4416
  br label %return, !dbg !4416

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4417
  ret %struct._object* %28, !dbg !4417
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_imod(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !669, metadata !836), !dbg !4421
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !670, metadata !836), !dbg !4422
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4423, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4425
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4425, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4426
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4427

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4428, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4430
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4430, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4431
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4432

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4433, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4438
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4439
  %tobool = icmp ne i32 %call, 0, !dbg !4439
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4440

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4441
  br label %return, !dbg !4441

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4443, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4445
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4446
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4446, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4447
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4447, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4448
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4449

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4450, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4452
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4453
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4453, !tbaa !882
  br label %cond.end, !dbg !4449

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4454

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4449
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4456, !tbaa !832
  br label %if.end.6, !dbg !4459

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4460, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4464
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4464, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4465
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4466

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4467, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4469
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4469, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4470
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4471

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4472, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4477
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4478
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4478
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4479

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4480
  br label %return, !dbg !4480

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4482, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4484
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4485
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4485, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4486
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4486, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4487
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4488

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4489, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4491
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4492
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4492, !tbaa !882
  br label %cond.end.23, !dbg !4488

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4493

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4488
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4495, !tbaa !832
  br label %if.end.25, !dbg !4498

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4499, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4502, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %26, %struct._object* %27), !dbg !4503
  store %struct._object* %call26, %struct._object** %retval, !dbg !4504
  br label %return, !dbg !4504

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4505
  ret %struct._object* %28, !dbg !4505
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ipow(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !673, metadata !836), !dbg !4509
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !674, metadata !836), !dbg !4510
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !675, metadata !836), !dbg !4511
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4512, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4514
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4514, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4515
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4516

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4517, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4519
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4519, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4520
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4521

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4522, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4527
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4528
  %tobool = icmp ne i32 %call, 0, !dbg !4528
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4529

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4530
  br label %return, !dbg !4530

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4532, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4534
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4535
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4535, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4536
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4536, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4537
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4538

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4539, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4541
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4542
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4542, !tbaa !882
  br label %cond.end, !dbg !4538

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4543

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4538
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !4545, !tbaa !832
  br label %if.end.6, !dbg !4548

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4549, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4553
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4553, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4554
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4555

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4556, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4558
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4558, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4559
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4560

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4561, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4566
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4567
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4567
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4568

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4569
  br label %return, !dbg !4569

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4571, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4573
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4574
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4574, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4575
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4575, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4576
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4577

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4578, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4580
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4581
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4581, !tbaa !882
  br label %cond.end.23, !dbg !4577

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4582

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4577
  store %struct._object* %cond24, %struct._object** %v.addr, align 8, !dbg !4584, !tbaa !832
  br label %if.end.25, !dbg !4587

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4588, !tbaa !832
  %cmp26 = icmp ne %struct._object* %26, null, !dbg !4592
  br i1 %cmp26, label %if.then.27, label %if.end.47, !dbg !4593

if.then.27:                                       ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4594, !tbaa !832
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !4597
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !4597, !tbaa !893
  %cmp29 = icmp eq %struct._typeobject* %28, @_PyWeakref_ProxyType, !dbg !4598
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30, !dbg !4599

lor.lhs.false.30:                                 ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4600, !tbaa !832
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !4602
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !4602, !tbaa !893
  %cmp32 = icmp eq %struct._typeobject* %30, @_PyWeakref_CallableProxyType, !dbg !4603
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !4604

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %31 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4605, !tbaa !832
  %32 = bitcast %struct._object* %31 to %struct._PyWeakReference*, !dbg !4610
  %call34 = call i32 @proxy_checkref(%struct._PyWeakReference* %32), !dbg !4611
  %tobool35 = icmp ne i32 %call34, 0, !dbg !4611
  br i1 %tobool35, label %if.end.37, label %if.then.36, !dbg !4612

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval, !dbg !4613
  br label %return, !dbg !4613

if.end.37:                                        ; preds = %if.then.33
  %33 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4615, !tbaa !832
  %34 = bitcast %struct._object* %33 to %struct._PyWeakReference*, !dbg !4617
  %wr_object38 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 1, !dbg !4618
  %35 = load %struct._object*, %struct._object** %wr_object38, align 8, !dbg !4618, !tbaa !882
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !4619
  %36 = load i64, i64* %ob_refcnt39, align 8, !dbg !4619, !tbaa !959
  %cmp40 = icmp sgt i64 %36, 0, !dbg !4620
  br i1 %cmp40, label %cond.true.41, label %cond.false.43, !dbg !4621

cond.true.41:                                     ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4622, !tbaa !832
  %38 = bitcast %struct._object* %37 to %struct._PyWeakReference*, !dbg !4624
  %wr_object42 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %38, i32 0, i32 1, !dbg !4625
  %39 = load %struct._object*, %struct._object** %wr_object42, align 8, !dbg !4625, !tbaa !882
  br label %cond.end.44, !dbg !4621

cond.false.43:                                    ; preds = %if.end.37
  br label %cond.end.44, !dbg !4626

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._object* [ %39, %cond.true.41 ], [ @_Py_NoneStruct, %cond.false.43 ], !dbg !4621
  store %struct._object* %cond45, %struct._object** %w.addr, align 8, !dbg !4628, !tbaa !832
  br label %if.end.46, !dbg !4631

if.end.46:                                        ; preds = %cond.end.44, %lor.lhs.false.30
  br label %if.end.47, !dbg !4632

if.end.47:                                        ; preds = %if.end.46, %if.end.25
  %40 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !4635, !tbaa !832
  %41 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4638, !tbaa !832
  %42 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !4639, !tbaa !832
  %call48 = call %struct._object* @PyNumber_InPlacePower(%struct._object* %40, %struct._object* %41, %struct._object* %42), !dbg !4640
  store %struct._object* %call48, %struct._object** %retval, !dbg !4641
  br label %return, !dbg !4641

return:                                           ; preds = %if.end.47, %if.then.36, %if.then.15, %if.then.3
  %43 = load %struct._object*, %struct._object** %retval, !dbg !4642
  ret %struct._object* %43, !dbg !4642
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ilshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !678, metadata !836), !dbg !4647
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !679, metadata !836), !dbg !4648
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4649, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4651
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4651, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4652
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4653

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4654, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4656
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4656, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4657
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4658

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4659, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4664
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4665
  %tobool = icmp ne i32 %call, 0, !dbg !4665
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4666

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4667
  br label %return, !dbg !4667

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4669, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4671
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4672
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4672, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4673
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4673, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4674
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4675

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4676, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4678
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4679
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4679, !tbaa !882
  br label %cond.end, !dbg !4675

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4680

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4675
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4682, !tbaa !832
  br label %if.end.6, !dbg !4685

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4686, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4690
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4690, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4691
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4692

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4693, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4695
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4695, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4696
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4697

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4698, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4703
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4704
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4704
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4705

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4706
  br label %return, !dbg !4706

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4708, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4710
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4711
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4711, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4712
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4712, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4713
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4714

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4715, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4717
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4718
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4718, !tbaa !882
  br label %cond.end.23, !dbg !4714

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4719

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4714
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4721, !tbaa !832
  br label %if.end.25, !dbg !4724

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4725, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4728, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceLshift(%struct._object* %26, %struct._object* %27), !dbg !4729
  store %struct._object* %call26, %struct._object** %retval, !dbg !4730
  br label %return, !dbg !4730

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4731
  ret %struct._object* %28, !dbg !4731
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_irshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !682, metadata !836), !dbg !4735
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !683, metadata !836), !dbg !4736
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4737, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4739
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4739, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4740
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4741

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4742, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4744
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4744, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4745
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4746

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4747, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4752
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4753
  %tobool = icmp ne i32 %call, 0, !dbg !4753
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4754

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4755
  br label %return, !dbg !4755

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4757, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4759
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4760
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4760, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4761
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4761, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4762
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4763

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4764, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4766
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4767
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4767, !tbaa !882
  br label %cond.end, !dbg !4763

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4763
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4770, !tbaa !832
  br label %if.end.6, !dbg !4773

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4774, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4778
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4778, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4779
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4780

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4781, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4783
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4783, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4784
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4785

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4786, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4791
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4792
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4792
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4793

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4794
  br label %return, !dbg !4794

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4796, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4798
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4799
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4799, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4800
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4800, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4801
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4802

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4803, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4805
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4806
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4806, !tbaa !882
  br label %cond.end.23, !dbg !4802

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4807

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4802
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4809, !tbaa !832
  br label %if.end.25, !dbg !4812

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4813, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4816, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceRshift(%struct._object* %26, %struct._object* %27), !dbg !4817
  store %struct._object* %call26, %struct._object** %retval, !dbg !4818
  br label %return, !dbg !4818

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4819
  ret %struct._object* %28, !dbg !4819
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iand(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !686, metadata !836), !dbg !4823
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !687, metadata !836), !dbg !4824
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4825, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4827
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4827, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4828
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4829

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4830, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4832
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4832, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4833
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4834

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4835, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4840
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4841
  %tobool = icmp ne i32 %call, 0, !dbg !4841
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4842

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4843
  br label %return, !dbg !4843

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4845, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4847
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4848
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4848, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4849
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4849, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4850
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4851

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4852, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4854
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4855
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4855, !tbaa !882
  br label %cond.end, !dbg !4851

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4856

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4851
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4858, !tbaa !832
  br label %if.end.6, !dbg !4861

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4862, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4866
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4866, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4867
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4868

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4869, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4871
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4871, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4872
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4873

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4874, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4879
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4880
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4880
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4881

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4882
  br label %return, !dbg !4882

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4884, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4886
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4887
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4887, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4888
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4888, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4889
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4890

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4891, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4893
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4894
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4894, !tbaa !882
  br label %cond.end.23, !dbg !4890

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4895

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4890
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4897, !tbaa !832
  br label %if.end.25, !dbg !4900

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4901, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4904, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceAnd(%struct._object* %26, %struct._object* %27), !dbg !4905
  store %struct._object* %call26, %struct._object** %retval, !dbg !4906
  br label %return, !dbg !4906

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4907
  ret %struct._object* %28, !dbg !4907
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ixor(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !690, metadata !836), !dbg !4911
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !691, metadata !836), !dbg !4912
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4913, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4915
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4915, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !4916
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4917

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4918, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4920
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4920, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !4921
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !4922

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4923, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !4928
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !4929
  %tobool = icmp ne i32 %call, 0, !dbg !4929
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !4930

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4931
  br label %return, !dbg !4931

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4933, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !4935
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !4936
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !4936, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4937
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4937, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !4938
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4939

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4940, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !4942
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !4943
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !4943, !tbaa !882
  br label %cond.end, !dbg !4939

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4944

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !4939
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !4946, !tbaa !832
  br label %if.end.6, !dbg !4949

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4950, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4954
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !4954, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !4955
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !4956

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4957, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4959
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !4959, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !4960
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !4961

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4962, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !4967
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !4968
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4968
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !4969

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !4970
  br label %return, !dbg !4970

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4972, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !4974
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !4975
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !4975, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4976
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !4976, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !4977
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !4978

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4979, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !4981
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !4982
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !4982, !tbaa !882
  br label %cond.end.23, !dbg !4978

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !4983

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !4978
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !4985, !tbaa !832
  br label %if.end.25, !dbg !4988

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !4989, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !4992, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceXor(%struct._object* %26, %struct._object* %27), !dbg !4993
  store %struct._object* %call26, %struct._object** %retval, !dbg !4994
  br label %return, !dbg !4994

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4995
  ret %struct._object* %28, !dbg !4995
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ior(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !694, metadata !836), !dbg !4999
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !695, metadata !836), !dbg !5000
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5001, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5003
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5003, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5004
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5005

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5006, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5008
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5008, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5009
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5010

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5011, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5016
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5017
  %tobool = icmp ne i32 %call, 0, !dbg !5017
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5018

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5019
  br label %return, !dbg !5019

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5021, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5023
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5024
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5024, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5025
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5025, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5026
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5027

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5028, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5030
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5031
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5031, !tbaa !882
  br label %cond.end, !dbg !5027

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5032

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5027
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !5034, !tbaa !832
  br label %if.end.6, !dbg !5037

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5038, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5042
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !5042, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !5043
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !5044

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5045, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5047
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !5047, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !5048
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !5049

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5050, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !5055
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !5056
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5056
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !5057

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !5058
  br label %return, !dbg !5058

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5060, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !5062
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !5063
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !5063, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5064
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !5064, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !5065
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !5066

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5067, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !5069
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !5070
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !5070, !tbaa !882
  br label %cond.end.23, !dbg !5066

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !5071

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !5066
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !5073, !tbaa !832
  br label %if.end.25, !dbg !5076

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5077, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5080, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %26, %struct._object* %27), !dbg !5081
  store %struct._object* %call26, %struct._object** %retval, !dbg !5082
  br label %return, !dbg !5082

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5083
  ret %struct._object* %28, !dbg !5083
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_floor_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !698, metadata !836), !dbg !5087
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !699, metadata !836), !dbg !5088
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5089, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5091
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5091, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5092
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5093

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5094, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5096
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5096, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5097
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5098

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5099, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5104
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5105
  %tobool = icmp ne i32 %call, 0, !dbg !5105
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5106

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5107
  br label %return, !dbg !5107

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5109, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5111
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5112
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5112, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5113
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5113, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5114
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5115

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5116, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5118
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5119
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5119, !tbaa !882
  br label %cond.end, !dbg !5115

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5115
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !5122, !tbaa !832
  br label %if.end.6, !dbg !5125

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5126, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5130
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !5130, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !5131
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !5132

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5133, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5135
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !5135, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !5136
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !5137

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5138, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !5143
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !5144
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5144
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !5145

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !5146
  br label %return, !dbg !5146

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5148, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !5150
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !5151
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !5151, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5152
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !5152, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !5153
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !5154

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5155, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !5157
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !5158
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !5158, !tbaa !882
  br label %cond.end.23, !dbg !5154

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !5159

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !5154
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !5161, !tbaa !832
  br label %if.end.25, !dbg !5164

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5165, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5168, !tbaa !832
  %call26 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %26, %struct._object* %27), !dbg !5169
  store %struct._object* %call26, %struct._object** %retval, !dbg !5170
  br label %return, !dbg !5170

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5171
  ret %struct._object* %28, !dbg !5171
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_true_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !702, metadata !836), !dbg !5175
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !703, metadata !836), !dbg !5176
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5177, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5179
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5179, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5180
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5181

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5182, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5184
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5184, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5185
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5186

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5187, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5192
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5193
  %tobool = icmp ne i32 %call, 0, !dbg !5193
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5194

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5195
  br label %return, !dbg !5195

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5197, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5199
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5200
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5200, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5201
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5201, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5202
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5203

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5204, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5206
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5207
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5207, !tbaa !882
  br label %cond.end, !dbg !5203

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5208

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5203
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !5210, !tbaa !832
  br label %if.end.6, !dbg !5213

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5214, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5218
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !5218, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !5219
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !5220

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5221, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5223
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !5223, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !5224
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !5225

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5226, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !5231
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !5232
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5232
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !5233

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !5234
  br label %return, !dbg !5234

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5236, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !5238
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !5239
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !5239, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5240
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !5240, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !5241
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !5242

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5243, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !5245
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !5246
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !5246, !tbaa !882
  br label %cond.end.23, !dbg !5242

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !5247

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !5242
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !5249, !tbaa !832
  br label %if.end.25, !dbg !5252

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5253, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5256, !tbaa !832
  %call26 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %26, %struct._object* %27), !dbg !5257
  store %struct._object* %call26, %struct._object** %retval, !dbg !5258
  br label %return, !dbg !5258

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5259
  ret %struct._object* %28, !dbg !5259
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ifloor_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !706, metadata !836), !dbg !5263
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !707, metadata !836), !dbg !5264
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5265, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5267
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5267, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5268
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5269

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5270, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5272
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5272, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5273
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5274

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5275, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5280
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5281
  %tobool = icmp ne i32 %call, 0, !dbg !5281
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5282

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5283
  br label %return, !dbg !5283

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5285, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5287
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5288
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5288, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5289
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5289, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5290
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5291

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5292, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5294
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5295
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5295, !tbaa !882
  br label %cond.end, !dbg !5291

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5296

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5291
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !5298, !tbaa !832
  br label %if.end.6, !dbg !5301

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5302, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5306
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !5306, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !5307
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !5308

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5309, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5311
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !5311, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !5312
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !5313

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5314, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !5319
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !5320
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5320
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !5321

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !5322
  br label %return, !dbg !5322

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5324, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !5326
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !5327
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !5327, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5328
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !5328, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !5329
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !5330

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5331, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !5333
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !5334
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !5334, !tbaa !882
  br label %cond.end.23, !dbg !5330

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !5335

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !5330
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !5337, !tbaa !832
  br label %if.end.25, !dbg !5340

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5341, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5344, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %26, %struct._object* %27), !dbg !5345
  store %struct._object* %call26, %struct._object** %retval, !dbg !5346
  br label %return, !dbg !5346

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5347
  ret %struct._object* %28, !dbg !5347
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_itrue_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !710, metadata !836), !dbg !5351
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !711, metadata !836), !dbg !5352
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5353, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5355
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5355, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5356
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5357

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5358, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5360
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5360, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5361
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5362

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5363, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5368
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5369
  %tobool = icmp ne i32 %call, 0, !dbg !5369
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5370

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5371
  br label %return, !dbg !5371

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5373, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5375
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5376
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5376, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5377
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5377, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5378
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5379

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5380, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5382
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5383
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5383, !tbaa !882
  br label %cond.end, !dbg !5379

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5379
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !5386, !tbaa !832
  br label %if.end.6, !dbg !5389

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5390, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5394
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !5394, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !5395
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !5396

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5397, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5399
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !5399, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !5400
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !5401

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5402, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !5407
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !5408
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5408
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !5409

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !5410
  br label %return, !dbg !5410

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5412, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !5414
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !5415
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !5415, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5416
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !5416, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !5417
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !5418

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5419, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !5421
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !5422
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !5422, !tbaa !882
  br label %cond.end.23, !dbg !5418

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !5423

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !5418
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !5425, !tbaa !832
  br label %if.end.25, !dbg !5428

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5429, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5432, !tbaa !832
  %call26 = call %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %26, %struct._object* %27), !dbg !5433
  store %struct._object* %call26, %struct._object** %retval, !dbg !5434
  br label %return, !dbg !5434

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5435
  ret %struct._object* %28, !dbg !5435
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_index(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !714, metadata !836), !dbg !5439
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5440, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5442
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5442, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5443
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5444

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5445, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5447
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5447, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5448
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5449

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5450, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5455
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5456
  %tobool = icmp ne i32 %call, 0, !dbg !5456
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5457

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5458
  br label %return, !dbg !5458

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5460, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5462
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5463
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5463, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5464
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5464, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5465
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5466

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5467, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5469
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5470
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5470, !tbaa !882
  br label %cond.end, !dbg !5466

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5471

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5466
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !5473, !tbaa !832
  br label %if.end.6, !dbg !5476

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5477, !tbaa !832
  %call7 = call %struct._object* @PyNumber_Index(%struct._object* %13), !dbg !5480
  store %struct._object* %call7, %struct._object** %retval, !dbg !5481
  br label %return, !dbg !5481

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !5482
  ret %struct._object* %14, !dbg !5482
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_checkref(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !591, metadata !836), !dbg !5485
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5486, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 1, !dbg !5488
  %1 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5488, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !5489
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !5489, !tbaa !959
  %cmp = icmp sgt i64 %2, 0, !dbg !5490
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5491

cond.true:                                        ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5492, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1, !dbg !5494
  %4 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !5494, !tbaa !882
  br label %cond.end, !dbg !5491

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %4, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5491
  %cmp2 = icmp eq %struct._object* %cond, @_Py_NoneStruct, !dbg !5497
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5500

if.then:                                          ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8, !dbg !5501, !tbaa !832
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0)), !dbg !5503
  store i32 0, i32* %retval, !dbg !5504
  br label %return, !dbg !5504

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval, !dbg !5505
  br label %return, !dbg !5505

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, !dbg !5506
  ret i32 %6, !dbg !5506
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
define internal i64 @proxy_length(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca i64, align 8
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !717, metadata !836), !dbg !5507
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5508, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0), !dbg !5510
  %tobool = icmp ne i32 %call, 0, !dbg !5510
  br i1 %tobool, label %if.end, label %if.then, !dbg !5511

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, !dbg !5512
  br label %return, !dbg !5512

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5513, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !5514
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5514, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !5515
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !5515, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !5516
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5517

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5518, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !5520
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !5520, !tbaa !882
  br label %cond.end, !dbg !5517

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5521

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5517
  %call2 = call i64 @PyObject_Size(%struct._object* %cond), !dbg !5523
  store i64 %call2, i64* %retval, !dbg !5526
  br label %return, !dbg !5526

return:                                           ; preds = %cond.end, %if.then
  %6 = load i64, i64* %retval, !dbg !5527
  ret i64 %6, !dbg !5527
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_contains(%struct._PyWeakReference* %proxy, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !722, metadata !836), !dbg !5528
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !723, metadata !836), !dbg !5529
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5530, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0), !dbg !5532
  %tobool = icmp ne i32 %call, 0, !dbg !5532
  br i1 %tobool, label %if.end, label %if.then, !dbg !5533

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5534
  br label %return, !dbg !5534

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5535, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1, !dbg !5536
  %2 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5536, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !5537
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !5537, !tbaa !959
  %cmp = icmp sgt i64 %3, 0, !dbg !5538
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5539

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5540, !tbaa !832
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1, !dbg !5542
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !5542, !tbaa !882
  br label %cond.end, !dbg !5539

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5543

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5539
  %6 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !5545, !tbaa !832
  %call2 = call i32 @PySequence_Contains(%struct._object* %cond, %struct._object* %6), !dbg !5548
  store i32 %call2, i32* %retval, !dbg !5549
  br label %return, !dbg !5549

return:                                           ; preds = %cond.end, %if.then
  %7 = load i32, i32* %retval, !dbg !5550
  ret i32 %7, !dbg !5550
}

declare i64 @PyObject_Size(%struct._object*) #3

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_getitem(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %x.addr, metadata !726, metadata !836), !dbg !5551
  store %struct._object* %y, %struct._object** %y.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %y.addr, metadata !727, metadata !836), !dbg !5552
  %0 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5553, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5555
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5555, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5556
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5557

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5558, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5560
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5560, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5561
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5562

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5563, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5568
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5569
  %tobool = icmp ne i32 %call, 0, !dbg !5569
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5570

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5571
  br label %return, !dbg !5571

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5573, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5575
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5576
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5576, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5577
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5577, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5578
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5579

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5580, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5582
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5583
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5583, !tbaa !882
  br label %cond.end, !dbg !5579

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5584

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5579
  store %struct._object* %cond, %struct._object** %x.addr, align 8, !dbg !5586, !tbaa !832
  br label %if.end.6, !dbg !5589

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5590, !tbaa !832
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5594
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !5594, !tbaa !893
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType, !dbg !5595
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9, !dbg !5596

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5597, !tbaa !832
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !5599
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !5599, !tbaa !893
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType, !dbg !5600
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !5601

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5602, !tbaa !832
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*, !dbg !5607
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18), !dbg !5608
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5608
  br i1 %tobool14, label %if.end.16, label %if.then.15, !dbg !5609

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval, !dbg !5610
  br label %return, !dbg !5610

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5612, !tbaa !832
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*, !dbg !5614
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1, !dbg !5615
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8, !dbg !5615, !tbaa !882
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5616
  %22 = load i64, i64* %ob_refcnt18, align 8, !dbg !5616, !tbaa !959
  %cmp19 = icmp sgt i64 %22, 0, !dbg !5617
  br i1 %cmp19, label %cond.true.20, label %cond.false.22, !dbg !5618

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5619, !tbaa !832
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*, !dbg !5621
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1, !dbg !5622
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8, !dbg !5622, !tbaa !882
  br label %cond.end.23, !dbg !5618

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23, !dbg !5623

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ], !dbg !5618
  store %struct._object* %cond24, %struct._object** %y.addr, align 8, !dbg !5625, !tbaa !832
  br label %if.end.25, !dbg !5628

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8, !dbg !5629, !tbaa !832
  %27 = load %struct._object*, %struct._object** %y.addr, align 8, !dbg !5632, !tbaa !832
  %call26 = call %struct._object* @PyObject_GetItem(%struct._object* %26, %struct._object* %27), !dbg !5633
  store %struct._object* %call26, %struct._object** %retval, !dbg !5634
  br label %return, !dbg !5634

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5635
  ret %struct._object* %28, !dbg !5635
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_setitem(%struct._PyWeakReference* %proxy, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._PyWeakReference** %proxy.addr, metadata !732, metadata !836), !dbg !5639
  store %struct._object* %key, %struct._object** %key.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %key.addr, metadata !733, metadata !836), !dbg !5640
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !734, metadata !836), !dbg !5641
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5642, !tbaa !832
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0), !dbg !5644
  %tobool = icmp ne i32 %call, 0, !dbg !5644
  br i1 %tobool, label %if.end, label %if.then, !dbg !5645

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5646
  br label %return, !dbg !5646

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !5647, !tbaa !832
  %cmp = icmp eq %struct._object* %1, null, !dbg !5649
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !5650

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5651, !tbaa !832
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1, !dbg !5652
  %3 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5652, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !5653
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !5653, !tbaa !959
  %cmp2 = icmp sgt i64 %4, 0, !dbg !5654
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5655

cond.true:                                        ; preds = %if.then.1
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5656, !tbaa !832
  %wr_object3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1, !dbg !5658
  %6 = load %struct._object*, %struct._object** %wr_object3, align 8, !dbg !5658, !tbaa !882
  br label %cond.end, !dbg !5655

cond.false:                                       ; preds = %if.then.1
  br label %cond.end, !dbg !5659

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %6, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5655
  %7 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !5661, !tbaa !832
  %call4 = call i32 @PyObject_DelItem(%struct._object* %cond, %struct._object* %7), !dbg !5664
  store i32 %call4, i32* %retval, !dbg !5665
  br label %return, !dbg !5665

if.else:                                          ; preds = %if.end
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5666, !tbaa !832
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 1, !dbg !5667
  %9 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5667, !tbaa !882
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !5668
  %10 = load i64, i64* %ob_refcnt6, align 8, !dbg !5668, !tbaa !959
  %cmp7 = icmp sgt i64 %10, 0, !dbg !5669
  br i1 %cmp7, label %cond.true.8, label %cond.false.10, !dbg !5670

cond.true.8:                                      ; preds = %if.else
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8, !dbg !5671, !tbaa !832
  %wr_object9 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5672
  %12 = load %struct._object*, %struct._object** %wr_object9, align 8, !dbg !5672, !tbaa !882
  br label %cond.end.11, !dbg !5670

cond.false.10:                                    ; preds = %if.else
  br label %cond.end.11, !dbg !5673

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.8
  %cond12 = phi %struct._object* [ %12, %cond.true.8 ], [ @_Py_NoneStruct, %cond.false.10 ], !dbg !5670
  %13 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !5674, !tbaa !832
  %14 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !5675, !tbaa !832
  %call13 = call i32 @PyObject_SetItem(%struct._object* %cond12, %struct._object* %13, %struct._object* %14), !dbg !5676
  store i32 %call13, i32* %retval, !dbg !5677
  br label %return, !dbg !5677

return:                                           ; preds = %cond.end.11, %cond.end, %if.then
  %15 = load i32, i32* %retval, !dbg !5678
  ret i32 %15, !dbg !5678
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
define internal %struct._object* @proxy_bytes(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8, !tbaa !832
  call void @llvm.dbg.declare(metadata %struct._object** %proxy.addr, metadata !760, metadata !836), !dbg !5679
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5680, !tbaa !832
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !5682
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5682, !tbaa !893
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType, !dbg !5683
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5684

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5685, !tbaa !832
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5687
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5687, !tbaa !893
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType, !dbg !5688
  br i1 %cmp2, label %if.then, label %if.end.6, !dbg !5689

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5690, !tbaa !832
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*, !dbg !5695
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5), !dbg !5696
  %tobool = icmp ne i32 %call, 0, !dbg !5696
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !5697

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !5698
  br label %return, !dbg !5698

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5700, !tbaa !832
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !5702
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !5703
  %8 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !5703, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5704
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5704, !tbaa !959
  %cmp4 = icmp sgt i64 %9, 0, !dbg !5705
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5706

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5707, !tbaa !832
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*, !dbg !5709
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1, !dbg !5710
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8, !dbg !5710, !tbaa !882
  br label %cond.end, !dbg !5706

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5711

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !5706
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8, !dbg !5713, !tbaa !832
  br label %if.end.6, !dbg !5716

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8, !dbg !5717, !tbaa !832
  %call7 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %13, %struct._Py_Identifier* @proxy_bytes.PyId___bytes__, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0)), !dbg !5720
  store %struct._object* %call7, %struct._object** %retval, !dbg !5721
  br label %return, !dbg !5721

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval, !dbg !5722
  ret %struct._object* %14, !dbg !5722
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare void @PyObject_GC_Track(i8*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!829, !830}
!llvm.ident = !{!831}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !371, globals: !803)
!1 = !DIFile(filename: "weakrefobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !362, !52, !351, !363}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!353 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!365 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 25, size: 256, align: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !365, line: 26, baseType: !23, size: 192, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !366, file: !365, line: 27, baseType: !370, size: 64, align: 64, offset: 192)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!371 = !{!372, !379, !385, !405, !424, !427, !466, !477, !480, !492, !497, !507, !518, !523, !533, !539, !548, !570, !579, !582, !585, !589, !592, !596, !600, !604, !608, !613, !616, !619, !622, !626, !629, !633, !637, !641, !645, !649, !652, !655, !659, !663, !667, !671, !676, !680, !684, !688, !692, !696, !700, !704, !708, !712, !715, !718, !724, !728, !735, !738, !742, !747, !752, !755, !758, !761, !766, !773, !780, !787, !793}
!372 = !DISubprogram(name: "_PyWeakref_GetWeakrefCount", scope: !373, file: !373, line: 10, type: !374, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._PyWeakReference*)* @_PyWeakref_GetWeakrefCount, variables: !376)
!373 = !DIFile(filename: "Objects/weakrefobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!374 = !DISubroutineType(types: !375)
!375 = !{!11, !351}
!376 = !{!377, !378}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 1, scope: !372, file: !373, line: 10, type: !351)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !372, file: !373, line: 12, type: !11)
!379 = !DISubprogram(name: "_PyWeakref_ClearRef", scope: !373, file: !373, line: 89, type: !380, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*)* @_PyWeakref_ClearRef, variables: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !351}
!382 = !{!383, !384}
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !379, file: !373, line: 89, type: !351)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !379, file: !373, line: 91, type: !5)
!385 = !DISubprogram(name: "PyWeakref_NewRef", scope: !373, file: !373, line: 730, type: !126, isLocal: false, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyWeakref_NewRef, variables: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !403}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 1, scope: !385, file: !373, line: 730, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !385, file: !373, line: 730, type: !5)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !385, file: !373, line: 732, type: !351)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !385, file: !373, line: 733, type: !350)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ref", scope: !385, file: !373, line: 734, type: !351)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proxy", scope: !385, file: !373, line: 734, type: !351)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !394, file: !373, line: 768, type: !5)
!394 = distinct !DILexicalBlock(scope: !395, file: !373, line: 768, column: 24)
!395 = distinct !DILexicalBlock(scope: !396, file: !373, line: 763, column: 22)
!396 = distinct !DILexicalBlock(scope: !397, file: !373, line: 761, column: 21)
!397 = distinct !DILexicalBlock(scope: !398, file: !373, line: 760, column: 41)
!398 = distinct !DILexicalBlock(scope: !399, file: !373, line: 760, column: 17)
!399 = distinct !DILexicalBlock(scope: !400, file: !373, line: 758, column: 35)
!400 = distinct !DILexicalBlock(scope: !401, file: !373, line: 758, column: 13)
!401 = distinct !DILexicalBlock(scope: !402, file: !373, line: 751, column: 10)
!402 = distinct !DILexicalBlock(scope: !385, file: !373, line: 749, column: 9)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !404, file: !373, line: 774, type: !351)
!404 = distinct !DILexicalBlock(scope: !398, file: !373, line: 773, column: 18)
!405 = !DISubprogram(name: "PyWeakref_NewProxy", scope: !373, file: !373, line: 789, type: !126, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyWeakref_NewProxy, variables: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !418}
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 1, scope: !405, file: !373, line: 789, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !405, file: !373, line: 789, type: !5)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !405, file: !373, line: 791, type: !351)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !405, file: !373, line: 792, type: !350)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ref", scope: !405, file: !373, line: 793, type: !351)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proxy", scope: !405, file: !373, line: 793, type: !351)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !414, file: !373, line: 818, type: !351)
!414 = distinct !DILexicalBlock(scope: !415, file: !373, line: 817, column: 35)
!415 = distinct !DILexicalBlock(scope: !416, file: !373, line: 817, column: 13)
!416 = distinct !DILexicalBlock(scope: !417, file: !373, line: 810, column: 10)
!417 = distinct !DILexicalBlock(scope: !405, file: !373, line: 808, column: 9)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !419, file: !373, line: 831, type: !5)
!419 = distinct !DILexicalBlock(scope: !420, file: !373, line: 831, column: 24)
!420 = distinct !DILexicalBlock(scope: !421, file: !373, line: 826, column: 42)
!421 = distinct !DILexicalBlock(scope: !422, file: !373, line: 826, column: 21)
!422 = distinct !DILexicalBlock(scope: !423, file: !373, line: 825, column: 41)
!423 = distinct !DILexicalBlock(scope: !414, file: !373, line: 825, column: 17)
!424 = !DISubprogram(name: "PyWeakref_GetObject", scope: !373, file: !373, line: 853, type: !116, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyWeakref_GetObject, variables: !425)
!425 = !{!426}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !424, file: !373, line: 853, type: !5)
!427 = !DISubprogram(name: "PyObject_ClearWeakRefs", scope: !373, file: !373, line: 883, type: !37, isLocal: false, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyObject_ClearWeakRefs, variables: !428)
!428 = !{!429, !430, !431, !434, !435, !436, !437, !438, !439, !442, !446, !448, !449, !453, !457, !461, !464}
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !427, file: !373, line: 883, type: !5)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !427, file: !373, line: 885, type: !350)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !432, file: !373, line: 901, type: !351)
!432 = distinct !DILexicalBlock(scope: !433, file: !373, line: 900, column: 30)
!433 = distinct !DILexicalBlock(scope: !427, file: !373, line: 900, column: 9)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !432, file: !373, line: 902, type: !11)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restore_error", scope: !432, file: !373, line: 903, type: !44)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err_type", scope: !432, file: !373, line: 904, type: !5)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err_value", scope: !432, file: !373, line: 904, type: !5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err_tb", scope: !432, file: !373, line: 904, type: !5)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !440, file: !373, line: 909, type: !5)
!440 = distinct !DILexicalBlock(scope: !441, file: !373, line: 908, column: 25)
!441 = distinct !DILexicalBlock(scope: !432, file: !373, line: 908, column: 13)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !373, line: 916, type: !5)
!443 = distinct !DILexicalBlock(scope: !444, file: !373, line: 916, column: 20)
!444 = distinct !DILexicalBlock(scope: !445, file: !373, line: 913, column: 41)
!445 = distinct !DILexicalBlock(scope: !440, file: !373, line: 913, column: 17)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !447, file: !373, line: 920, type: !5)
!447 = distinct !DILexicalBlock(scope: !441, file: !373, line: 919, column: 14)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !447, file: !373, line: 921, type: !11)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !450, file: !373, line: 931, type: !351)
!450 = distinct !DILexicalBlock(scope: !451, file: !373, line: 930, column: 41)
!451 = distinct !DILexicalBlock(scope: !452, file: !373, line: 930, column: 13)
!452 = distinct !DILexicalBlock(scope: !447, file: !373, line: 930, column: 13)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !454, file: !373, line: 940, type: !5)
!454 = distinct !DILexicalBlock(scope: !455, file: !373, line: 940, column: 24)
!455 = distinct !DILexicalBlock(scope: !456, file: !373, line: 939, column: 22)
!456 = distinct !DILexicalBlock(scope: !450, file: !373, line: 933, column: 21)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !458, file: !373, line: 947, type: !5)
!458 = distinct !DILexicalBlock(scope: !459, file: !373, line: 946, column: 41)
!459 = distinct !DILexicalBlock(scope: !460, file: !373, line: 946, column: 13)
!460 = distinct !DILexicalBlock(scope: !447, file: !373, line: 946, column: 13)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !462, file: !373, line: 951, type: !5)
!462 = distinct !DILexicalBlock(scope: !463, file: !373, line: 950, column: 45)
!463 = distinct !DILexicalBlock(scope: !458, file: !373, line: 950, column: 21)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !465, file: !373, line: 955, type: !5)
!465 = distinct !DILexicalBlock(scope: !447, file: !373, line: 955, column: 16)
!466 = !DISubprogram(name: "clear_weakref", scope: !373, file: !373, line: 51, type: !380, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*)* @clear_weakref, variables: !467)
!467 = !{!468, !469, !470, !473}
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !466, file: !373, line: 51, type: !351)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !466, file: !373, line: 53, type: !5)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !471, file: !373, line: 56, type: !350)
!471 = distinct !DILexicalBlock(scope: !472, file: !373, line: 55, column: 47)
!472 = distinct !DILexicalBlock(scope: !466, file: !373, line: 55, column: 9)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !474, file: !373, line: 72, type: !5)
!474 = distinct !DILexicalBlock(scope: !475, file: !373, line: 72, column: 12)
!475 = distinct !DILexicalBlock(scope: !476, file: !373, line: 71, column: 33)
!476 = distinct !DILexicalBlock(scope: !466, file: !373, line: 71, column: 9)
!477 = !DISubprogram(name: "weakref_dealloc", scope: !373, file: !373, line: 103, type: !37, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @weakref_dealloc, variables: !478)
!478 = !{!479}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !477, file: !373, line: 103, type: !5)
!480 = !DISubprogram(name: "weakref_repr", scope: !373, file: !373, line: 156, type: !481, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @weakref_repr, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!5, !351}
!483 = !{!484, !485, !486, !487, !489}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !480, file: !373, line: 156, type: !351)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !480, file: !373, line: 158, type: !5)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !480, file: !373, line: 158, type: !5)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !488, file: !373, line: 182, type: !5)
!488 = distinct !DILexicalBlock(scope: !480, file: !373, line: 182, column: 8)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !490, file: !373, line: 182, type: !5)
!490 = distinct !DILexicalBlock(scope: !491, file: !373, line: 182, column: 96)
!491 = distinct !DILexicalBlock(scope: !488, file: !373, line: 182, column: 62)
!492 = !DISubprogram(name: "weakref_hash", scope: !373, file: !373, line: 142, type: !493, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._PyWeakReference*)* @weakref_hash, variables: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!218, !351}
!495 = !{!496}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !492, file: !373, line: 142, type: !351)
!497 = !DISubprogram(name: "weakref_call", scope: !373, file: !373, line: 128, type: !498, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @weakref_call, variables: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!5, !351, !5, !5}
!500 = !{!501, !502, !503, !504}
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !497, file: !373, line: 128, type: !351)
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !497, file: !373, line: 128, type: !5)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !497, file: !373, line: 128, type: !5)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !505, file: !373, line: 133, type: !5)
!505 = distinct !DILexicalBlock(scope: !506, file: !373, line: 132, column: 69)
!506 = distinct !DILexicalBlock(scope: !497, file: !373, line: 132, column: 9)
!507 = !DISubprogram(name: "gc_traverse", scope: !373, file: !373, line: 112, type: !508, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, i32 (%struct._object*, i8*)*, i8*)* @gc_traverse, variables: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!44, !351, !263, !4}
!510 = !{!511, !512, !513, !514}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !507, file: !373, line: 112, type: !351)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !507, file: !373, line: 112, type: !263)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !507, file: !373, line: 112, type: !4)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !515, file: !373, line: 114, type: !44)
!515 = distinct !DILexicalBlock(scope: !516, file: !373, line: 114, column: 33)
!516 = distinct !DILexicalBlock(scope: !517, file: !373, line: 114, column: 14)
!517 = distinct !DILexicalBlock(scope: !507, file: !373, line: 114, column: 8)
!518 = !DISubprogram(name: "gc_clear", scope: !373, file: !373, line: 120, type: !519, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*)* @gc_clear, variables: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!44, !351}
!521 = !{!522}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !518, file: !373, line: 120, type: !351)
!523 = !DISubprogram(name: "weakref_richcompare", scope: !373, file: !373, line: 191, type: !524, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*, %struct._PyWeakReference*, i32)* @weakref_richcompare, variables: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!5, !351, !351, !44}
!526 = !{!527, !528, !529, !530}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !523, file: !373, line: 191, type: !351)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !523, file: !373, line: 191, type: !351)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !523, file: !373, line: 191, type: !44)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !531, file: !373, line: 200, type: !44)
!531 = distinct !DILexicalBlock(scope: !532, file: !373, line: 199, column: 170)
!532 = distinct !DILexicalBlock(scope: !523, file: !373, line: 198, column: 9)
!533 = !DISubprogram(name: "weakref___init__", scope: !373, file: !373, line: 330, type: !211, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @weakref___init__, variables: !534)
!534 = !{!535, !536, !537, !538}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !533, file: !373, line: 330, type: !5)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !533, file: !373, line: 330, type: !5)
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !533, file: !373, line: 330, type: !5)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !533, file: !373, line: 332, type: !5)
!539 = !DISubprogram(name: "parse_weakref_init_args", scope: !373, file: !373, line: 268, type: !540, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._object*, %struct._object**, %struct._object**)* @parse_weakref_init_args, variables: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!44, !52, !5, !5, !362, !362}
!542 = !{!543, !544, !545, !546, !547}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !539, file: !373, line: 268, type: !52)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !539, file: !373, line: 268, type: !5)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !539, file: !373, line: 268, type: !5)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obp", arg: 4, scope: !539, file: !373, line: 269, type: !362)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callbackp", arg: 5, scope: !539, file: !373, line: 269, type: !362)
!548 = !DISubprogram(name: "weakref___new__", scope: !373, file: !373, line: 276, type: !549, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @weakref___new__, variables: !553)
!549 = !DISubroutineType(types: !550)
!550 = !{!5, !551, !5, !5}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !563, !564, !565}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !548, file: !373, line: 276, type: !551)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !548, file: !373, line: 276, type: !5)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !548, file: !373, line: 276, type: !5)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !548, file: !373, line: 278, type: !351)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ob", scope: !548, file: !373, line: 279, type: !5)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !548, file: !373, line: 279, type: !5)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ref", scope: !561, file: !373, line: 282, type: !351)
!561 = distinct !DILexicalBlock(scope: !562, file: !373, line: 281, column: 75)
!562 = distinct !DILexicalBlock(scope: !548, file: !373, line: 281, column: 9)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proxy", scope: !561, file: !373, line: 282, type: !351)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !561, file: !373, line: 283, type: !350)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !566, file: !373, line: 315, type: !351)
!566 = distinct !DILexicalBlock(scope: !567, file: !373, line: 314, column: 18)
!567 = distinct !DILexicalBlock(scope: !568, file: !373, line: 311, column: 17)
!568 = distinct !DILexicalBlock(scope: !569, file: !373, line: 309, column: 33)
!569 = distinct !DILexicalBlock(scope: !561, file: !373, line: 309, column: 13)
!570 = !DISubprogram(name: "init_weakref", scope: !373, file: !373, line: 23, type: !571, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @init_weakref, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !351, !5, !5}
!573 = !{!574, !575, !576, !577}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !570, file: !373, line: 23, type: !351)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 2, scope: !570, file: !373, line: 23, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 3, scope: !570, file: !373, line: 23, type: !5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !578, file: !373, line: 27, type: !5)
!578 = distinct !DILexicalBlock(scope: !570, file: !373, line: 27, column: 8)
!579 = !DISubprogram(name: "proxy_dealloc", scope: !373, file: !373, line: 535, type: !380, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*)* @proxy_dealloc, variables: !580)
!580 = !{!581}
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !579, file: !373, line: 535, type: !351)
!582 = !DISubprogram(name: "proxy_repr", scope: !373, file: !373, line: 465, type: !481, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @proxy_repr, variables: !583)
!583 = !{!584}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !582, file: !373, line: 465, type: !351)
!585 = !DISubprogram(name: "proxy_add", scope: !373, file: !373, line: 492, type: !126, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_add, variables: !586)
!586 = !{!587, !588}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !585, file: !373, line: 492, type: !5)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !585, file: !373, line: 492, type: !5)
!589 = !DISubprogram(name: "proxy_checkref", scope: !373, file: !373, line: 392, type: !519, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*)* @proxy_checkref, variables: !590)
!590 = !{!591}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !589, file: !373, line: 392, type: !351)
!592 = !DISubprogram(name: "proxy_sub", scope: !373, file: !373, line: 493, type: !126, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_sub, variables: !593)
!593 = !{!594, !595}
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !592, file: !373, line: 493, type: !5)
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !592, file: !373, line: 493, type: !5)
!596 = !DISubprogram(name: "proxy_mul", scope: !373, file: !373, line: 494, type: !126, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_mul, variables: !597)
!597 = !{!598, !599}
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !596, file: !373, line: 494, type: !5)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !596, file: !373, line: 494, type: !5)
!600 = !DISubprogram(name: "proxy_mod", scope: !373, file: !373, line: 497, type: !126, isLocal: true, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_mod, variables: !601)
!601 = !{!602, !603}
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !600, file: !373, line: 497, type: !5)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !600, file: !373, line: 497, type: !5)
!604 = !DISubprogram(name: "proxy_divmod", scope: !373, file: !373, line: 498, type: !126, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_divmod, variables: !605)
!605 = !{!606, !607}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !604, file: !373, line: 498, type: !5)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !604, file: !373, line: 498, type: !5)
!608 = !DISubprogram(name: "proxy_pow", scope: !373, file: !373, line: 499, type: !135, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_pow, variables: !609)
!609 = !{!610, !611, !612}
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !608, file: !373, line: 499, type: !5)
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !608, file: !373, line: 499, type: !5)
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !608, file: !373, line: 499, type: !5)
!613 = !DISubprogram(name: "proxy_neg", scope: !373, file: !373, line: 500, type: !116, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_neg, variables: !614)
!614 = !{!615}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !613, file: !373, line: 500, type: !5)
!616 = !DISubprogram(name: "proxy_pos", scope: !373, file: !373, line: 501, type: !116, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_pos, variables: !617)
!617 = !{!618}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !616, file: !373, line: 501, type: !5)
!619 = !DISubprogram(name: "proxy_abs", scope: !373, file: !373, line: 502, type: !116, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_abs, variables: !620)
!620 = !{!621}
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !619, file: !373, line: 502, type: !5)
!622 = !DISubprogram(name: "proxy_bool", scope: !373, file: !373, line: 526, type: !519, isLocal: true, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*)* @proxy_bool, variables: !623)
!623 = !{!624, !625}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !622, file: !373, line: 526, type: !351)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !622, file: !373, line: 528, type: !5)
!626 = !DISubprogram(name: "proxy_invert", scope: !373, file: !373, line: 503, type: !116, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_invert, variables: !627)
!627 = !{!628}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !626, file: !373, line: 503, type: !5)
!629 = !DISubprogram(name: "proxy_lshift", scope: !373, file: !373, line: 504, type: !126, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_lshift, variables: !630)
!630 = !{!631, !632}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !629, file: !373, line: 504, type: !5)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !629, file: !373, line: 504, type: !5)
!633 = !DISubprogram(name: "proxy_rshift", scope: !373, file: !373, line: 505, type: !126, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_rshift, variables: !634)
!634 = !{!635, !636}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !633, file: !373, line: 505, type: !5)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !633, file: !373, line: 505, type: !5)
!637 = !DISubprogram(name: "proxy_and", scope: !373, file: !373, line: 506, type: !126, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_and, variables: !638)
!638 = !{!639, !640}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !637, file: !373, line: 506, type: !5)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !637, file: !373, line: 506, type: !5)
!641 = !DISubprogram(name: "proxy_xor", scope: !373, file: !373, line: 507, type: !126, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_xor, variables: !642)
!642 = !{!643, !644}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !641, file: !373, line: 507, type: !5)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !641, file: !373, line: 507, type: !5)
!645 = !DISubprogram(name: "proxy_or", scope: !373, file: !373, line: 508, type: !126, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_or, variables: !646)
!646 = !{!647, !648}
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !645, file: !373, line: 508, type: !5)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !645, file: !373, line: 508, type: !5)
!649 = !DISubprogram(name: "proxy_int", scope: !373, file: !373, line: 509, type: !116, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_int, variables: !650)
!650 = !{!651}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !649, file: !373, line: 509, type: !5)
!652 = !DISubprogram(name: "proxy_float", scope: !373, file: !373, line: 510, type: !116, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_float, variables: !653)
!653 = !{!654}
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !652, file: !373, line: 510, type: !5)
!655 = !DISubprogram(name: "proxy_iadd", scope: !373, file: !373, line: 511, type: !126, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_iadd, variables: !656)
!656 = !{!657, !658}
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !655, file: !373, line: 511, type: !5)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !655, file: !373, line: 511, type: !5)
!659 = !DISubprogram(name: "proxy_isub", scope: !373, file: !373, line: 512, type: !126, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_isub, variables: !660)
!660 = !{!661, !662}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !659, file: !373, line: 512, type: !5)
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !659, file: !373, line: 512, type: !5)
!663 = !DISubprogram(name: "proxy_imul", scope: !373, file: !373, line: 513, type: !126, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_imul, variables: !664)
!664 = !{!665, !666}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !663, file: !373, line: 513, type: !5)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !663, file: !373, line: 513, type: !5)
!667 = !DISubprogram(name: "proxy_imod", scope: !373, file: !373, line: 516, type: !126, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_imod, variables: !668)
!668 = !{!669, !670}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !667, file: !373, line: 516, type: !5)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !667, file: !373, line: 516, type: !5)
!671 = !DISubprogram(name: "proxy_ipow", scope: !373, file: !373, line: 517, type: !135, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_ipow, variables: !672)
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !671, file: !373, line: 517, type: !5)
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !671, file: !373, line: 517, type: !5)
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !671, file: !373, line: 517, type: !5)
!676 = !DISubprogram(name: "proxy_ilshift", scope: !373, file: !373, line: 518, type: !126, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ilshift, variables: !677)
!677 = !{!678, !679}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !676, file: !373, line: 518, type: !5)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !676, file: !373, line: 518, type: !5)
!680 = !DISubprogram(name: "proxy_irshift", scope: !373, file: !373, line: 519, type: !126, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_irshift, variables: !681)
!681 = !{!682, !683}
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !680, file: !373, line: 519, type: !5)
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !680, file: !373, line: 519, type: !5)
!684 = !DISubprogram(name: "proxy_iand", scope: !373, file: !373, line: 520, type: !126, isLocal: true, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_iand, variables: !685)
!685 = !{!686, !687}
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !684, file: !373, line: 520, type: !5)
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !684, file: !373, line: 520, type: !5)
!688 = !DISubprogram(name: "proxy_ixor", scope: !373, file: !373, line: 521, type: !126, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ixor, variables: !689)
!689 = !{!690, !691}
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !688, file: !373, line: 521, type: !5)
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !688, file: !373, line: 521, type: !5)
!692 = !DISubprogram(name: "proxy_ior", scope: !373, file: !373, line: 522, type: !126, isLocal: true, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ior, variables: !693)
!693 = !{!694, !695}
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !692, file: !373, line: 522, type: !5)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !692, file: !373, line: 522, type: !5)
!696 = !DISubprogram(name: "proxy_floor_div", scope: !373, file: !373, line: 495, type: !126, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_floor_div, variables: !697)
!697 = !{!698, !699}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !696, file: !373, line: 495, type: !5)
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !696, file: !373, line: 495, type: !5)
!700 = !DISubprogram(name: "proxy_true_div", scope: !373, file: !373, line: 496, type: !126, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_true_div, variables: !701)
!701 = !{!702, !703}
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !700, file: !373, line: 496, type: !5)
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !700, file: !373, line: 496, type: !5)
!704 = !DISubprogram(name: "proxy_ifloor_div", scope: !373, file: !373, line: 514, type: !126, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_ifloor_div, variables: !705)
!705 = !{!706, !707}
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !704, file: !373, line: 514, type: !5)
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !704, file: !373, line: 514, type: !5)
!708 = !DISubprogram(name: "proxy_itrue_div", scope: !373, file: !373, line: 515, type: !126, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_itrue_div, variables: !709)
!709 = !{!710, !711}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !708, file: !373, line: 515, type: !5)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !708, file: !373, line: 515, type: !5)
!712 = !DISubprogram(name: "proxy_index", scope: !373, file: !373, line: 523, type: !116, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_index, variables: !713)
!713 = !{!714}
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !712, file: !373, line: 523, type: !5)
!715 = !DISubprogram(name: "proxy_length", scope: !373, file: !373, line: 557, type: !374, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._PyWeakReference*)* @proxy_length, variables: !716)
!716 = !{!717}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !715, file: !373, line: 557, type: !351)
!718 = !DISubprogram(name: "proxy_contains", scope: !373, file: !373, line: 546, type: !719, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, %struct._object*)* @proxy_contains, variables: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!44, !351, !5}
!721 = !{!722, !723}
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !718, file: !373, line: 546, type: !351)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !718, file: !373, line: 546, type: !5)
!724 = !DISubprogram(name: "proxy_getitem", scope: !373, file: !373, line: 564, type: !126, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_getitem, variables: !725)
!725 = !{!726, !727}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !724, file: !373, line: 564, type: !5)
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !724, file: !373, line: 564, type: !5)
!728 = !DISubprogram(name: "proxy_setitem", scope: !373, file: !373, line: 567, type: !729, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setitem, variables: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{!44, !351, !5, !5}
!731 = !{!732, !733, !734}
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !728, file: !373, line: 567, type: !351)
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !728, file: !373, line: 567, type: !5)
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !728, file: !373, line: 567, type: !5)
!735 = !DISubprogram(name: "proxy_str", scope: !373, file: !373, line: 461, type: !116, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_str, variables: !736)
!736 = !{!737}
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !735, file: !373, line: 461, type: !5)
!738 = !DISubprogram(name: "proxy_getattr", scope: !373, file: !373, line: 460, type: !126, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @proxy_getattr, variables: !739)
!739 = !{!740, !741}
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !738, file: !373, line: 460, type: !5)
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !738, file: !373, line: 460, type: !5)
!742 = !DISubprogram(name: "proxy_setattr", scope: !373, file: !373, line: 476, type: !729, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyWeakReference*, %struct._object*, %struct._object*)* @proxy_setattr, variables: !743)
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !742, file: !373, line: 476, type: !351)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !742, file: !373, line: 476, type: !5)
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !742, file: !373, line: 476, type: !5)
!747 = !DISubprogram(name: "proxy_richcompare", scope: !373, file: !373, line: 484, type: !271, isLocal: true, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @proxy_richcompare, variables: !748)
!748 = !{!749, !750, !751}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !747, file: !373, line: 484, type: !5)
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !747, file: !373, line: 484, type: !5)
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !747, file: !373, line: 484, type: !44)
!752 = !DISubprogram(name: "proxy_iter", scope: !373, file: !373, line: 581, type: !481, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @proxy_iter, variables: !753)
!753 = !{!754}
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !752, file: !373, line: 581, type: !351)
!755 = !DISubprogram(name: "proxy_iternext", scope: !373, file: !373, line: 589, type: !481, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyWeakReference*)* @proxy_iternext, variables: !756)
!756 = !{!757}
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !755, file: !373, line: 589, type: !351)
!758 = !DISubprogram(name: "proxy_bytes", scope: !373, file: !373, line: 597, type: !116, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @proxy_bytes, variables: !759)
!759 = !{!760}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !758, file: !373, line: 597, type: !5)
!761 = !DISubprogram(name: "proxy_call", scope: !373, file: !373, line: 462, type: !135, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @proxy_call, variables: !762)
!762 = !{!763, !764, !765}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxy", arg: 1, scope: !761, file: !373, line: 462, type: !5)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !761, file: !373, line: 462, type: !5)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !761, file: !373, line: 462, type: !5)
!766 = !DISubprogram(name: "get_basic_refs", scope: !373, file: !373, line: 218, type: !767, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*, %struct._PyWeakReference**, %struct._PyWeakReference**)* @get_basic_refs, variables: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !351, !350, !350}
!769 = !{!770, !771, !772}
!770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 1, scope: !766, file: !373, line: 218, type: !351)
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "refp", arg: 2, scope: !766, file: !373, line: 219, type: !350)
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proxyp", arg: 3, scope: !766, file: !373, line: 219, type: !350)
!773 = !DISubprogram(name: "new_weakref", scope: !373, file: !373, line: 32, type: !774, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: %struct._PyWeakReference* (%struct._object*, %struct._object*)* @new_weakref, variables: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!351, !5, !5}
!776 = !{!777, !778, !779}
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ob", arg: 1, scope: !773, file: !373, line: 32, type: !5)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !773, file: !373, line: 32, type: !5)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !773, file: !373, line: 34, type: !351)
!780 = !DISubprogram(name: "insert_head", scope: !373, file: !373, line: 256, type: !781, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*, %struct._PyWeakReference**)* @insert_head, variables: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !351, !350}
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newref", arg: 1, scope: !780, file: !373, line: 256, type: !351)
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 2, scope: !780, file: !373, line: 256, type: !350)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !780, file: !373, line: 258, type: !351)
!787 = !DISubprogram(name: "insert_after", scope: !373, file: !373, line: 243, type: !788, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*, %struct._PyWeakReference*)* @insert_after, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !351, !351}
!790 = !{!791, !792}
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newref", arg: 1, scope: !787, file: !373, line: 243, type: !351)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prev", arg: 2, scope: !787, file: !373, line: 243, type: !351)
!793 = !DISubprogram(name: "handle_callback", scope: !373, file: !373, line: 866, type: !794, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyWeakReference*, %struct._object*)* @handle_callback, variables: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !351, !5}
!796 = !{!797, !798, !799, !800}
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !793, file: !373, line: 866, type: !351)
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callback", arg: 2, scope: !793, file: !373, line: 866, type: !5)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbresult", scope: !793, file: !373, line: 868, type: !5)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !801, file: !373, line: 873, type: !5)
!801 = distinct !DILexicalBlock(scope: !802, file: !373, line: 873, column: 12)
!802 = distinct !DILexicalBlock(scope: !793, file: !373, line: 870, column: 9)
!803 = !{!804, !805, !806, !807, !815, !817, !822, !823, !824, !825, !828}
!804 = !DIGlobalVariable(name: "_PyWeakref_RefType", scope: !0, file: !373, line: 347, type: !552, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyWeakref_RefType)
!805 = !DIGlobalVariable(name: "_PyWeakref_ProxyType", scope: !0, file: !373, line: 662, type: !552, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyWeakref_ProxyType)
!806 = !DIGlobalVariable(name: "_PyWeakref_CallableProxyType", scope: !0, file: !373, line: 696, type: !552, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyWeakref_CallableProxyType)
!807 = !DIGlobalVariable(name: "PyId___name__", scope: !480, file: !373, line: 159, type: !808, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @weakref_repr.PyId___name__)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !809)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !810)
!810 = !{!811, !813, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !7, line: 141, baseType: !812, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !809, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !809, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!815 = !DIGlobalVariable(name: "kwlist", scope: !497, file: !373, line: 130, type: !816, isLocal: true, isDefinition: true, variable: [1 x i8*]* @weakref_call.kwlist)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, align: 64, elements: !82)
!817 = !DIGlobalVariable(name: "weakref_members", scope: !0, file: !373, line: 341, type: !818, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @weakref_members)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 640, align: 64, elements: !820)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!820 = !{!821}
!821 = !DISubrange(count: 2)
!822 = !DIGlobalVariable(name: "proxy_as_number", scope: !0, file: !373, line: 606, type: !120, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @proxy_as_number)
!823 = !DIGlobalVariable(name: "proxy_as_sequence", scope: !0, file: !373, line: 643, type: !172, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @proxy_as_sequence)
!824 = !DIGlobalVariable(name: "proxy_as_mapping", scope: !0, file: !373, line: 654, type: !203, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @proxy_as_mapping)
!825 = !DIGlobalVariable(name: "proxy_methods", scope: !0, file: !373, line: 600, type: !826, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @proxy_methods)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 512, align: 64, elements: !820)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!828 = !DIGlobalVariable(name: "PyId___bytes__", scope: !758, file: !373, line: 597, type: !808, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @proxy_bytes.PyId___bytes__)
!829 = !{i32 2, !"Dwarf Version", i32 4}
!830 = !{i32 2, !"Debug Info Version", i32 3}
!831 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!832 = !{!833, !833, i64 0}
!833 = !{!"any pointer", !834, i64 0}
!834 = !{!"omnipotent char", !835, i64 0}
!835 = !{!"Simple C/C++ TBAA"}
!836 = !DIExpression()
!837 = !DILocation(line: 10, column: 45, scope: !372)
!838 = !DILocation(line: 12, column: 5, scope: !372)
!839 = !DILocation(line: 12, column: 16, scope: !372)
!840 = !{!841, !841, i64 0}
!841 = !{!"long", !834, i64 0}
!842 = !DILocation(line: 14, column: 5, scope: !372)
!843 = !DILocation(line: 14, column: 12, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !373, discriminator: 2)
!845 = !DILexicalBlockFile(scope: !372, file: !373, discriminator: 1)
!846 = !DILocation(line: 14, column: 17, scope: !372)
!847 = !DILocation(line: 15, column: 9, scope: !848)
!848 = distinct !DILexicalBlock(scope: !372, file: !373, line: 14, column: 32)
!849 = !DILocation(line: 16, column: 16, scope: !848)
!850 = !DILocation(line: 16, column: 22, scope: !848)
!851 = !{!852, !833, i64 48}
!852 = !{!"_PyWeakReference", !853, i64 0, !833, i64 16, !833, i64 24, !841, i64 32, !833, i64 40, !833, i64 48}
!853 = !{!"_object", !841, i64 0, !833, i64 8}
!854 = !DILocation(line: 16, column: 14, scope: !848)
!855 = !DILocation(line: 18, column: 12, scope: !372)
!856 = !DILocation(line: 19, column: 1, scope: !372)
!857 = !DILocation(line: 18, column: 5, scope: !372)
!858 = !DILocation(line: 89, column: 38, scope: !379)
!859 = !DILocation(line: 91, column: 5, scope: !379)
!860 = !DILocation(line: 91, column: 15, scope: !379)
!861 = !DILocation(line: 96, column: 16, scope: !379)
!862 = !DILocation(line: 96, column: 22, scope: !379)
!863 = !{!852, !833, i64 24}
!864 = !DILocation(line: 96, column: 14, scope: !379)
!865 = !DILocation(line: 97, column: 5, scope: !379)
!866 = !DILocation(line: 97, column: 11, scope: !379)
!867 = !DILocation(line: 97, column: 23, scope: !379)
!868 = !DILocation(line: 98, column: 19, scope: !379)
!869 = !DILocation(line: 98, column: 5, scope: !379)
!870 = !DILocation(line: 99, column: 25, scope: !379)
!871 = !DILocation(line: 99, column: 5, scope: !379)
!872 = !DILocation(line: 99, column: 11, scope: !379)
!873 = !DILocation(line: 99, column: 23, scope: !379)
!874 = !DILocation(line: 100, column: 1, scope: !379)
!875 = !DILocation(line: 51, column: 32, scope: !466)
!876 = !DILocation(line: 53, column: 5, scope: !466)
!877 = !DILocation(line: 53, column: 15, scope: !466)
!878 = !DILocation(line: 53, column: 26, scope: !466)
!879 = !DILocation(line: 53, column: 32, scope: !466)
!880 = !DILocation(line: 55, column: 9, scope: !472)
!881 = !DILocation(line: 55, column: 15, scope: !472)
!882 = !{!852, !833, i64 16}
!883 = !DILocation(line: 55, column: 25, scope: !472)
!884 = !DILocation(line: 55, column: 9, scope: !466)
!885 = !DILocation(line: 56, column: 9, scope: !471)
!886 = !DILocation(line: 56, column: 27, scope: !471)
!887 = !DILocation(line: 56, column: 83, scope: !471)
!888 = !DILocation(line: 56, column: 89, scope: !471)
!889 = !DILocation(line: 56, column: 73, scope: !471)
!890 = !DILocation(line: 56, column: 117, scope: !471)
!891 = !DILocation(line: 56, column: 123, scope: !471)
!892 = !DILocation(line: 56, column: 136, scope: !471)
!893 = !{!853, !833, i64 8}
!894 = !DILocation(line: 56, column: 146, scope: !471)
!895 = !{!896, !841, i64 208}
!896 = !{!"_typeobject", !897, i64 0, !833, i64 24, !841, i64 32, !841, i64 40, !833, i64 48, !833, i64 56, !833, i64 64, !833, i64 72, !833, i64 80, !833, i64 88, !833, i64 96, !833, i64 104, !833, i64 112, !833, i64 120, !833, i64 128, !833, i64 136, !833, i64 144, !833, i64 152, !833, i64 160, !841, i64 168, !833, i64 176, !833, i64 184, !833, i64 192, !833, i64 200, !841, i64 208, !833, i64 216, !833, i64 224, !833, i64 232, !833, i64 240, !833, i64 248, !833, i64 256, !833, i64 264, !833, i64 272, !833, i64 280, !841, i64 288, !833, i64 296, !833, i64 304, !833, i64 312, !833, i64 320, !833, i64 328, !833, i64 336, !833, i64 344, !833, i64 352, !833, i64 360, !833, i64 368, !833, i64 376, !898, i64 384, !833, i64 392}
!897 = !{!"", !853, i64 0, !841, i64 16}
!898 = !{!"int", !834, i64 0}
!899 = !DILocation(line: 56, column: 101, scope: !471)
!900 = !DILocation(line: 56, column: 57, scope: !471)
!901 = !DILocation(line: 56, column: 35, scope: !471)
!902 = !DILocation(line: 58, column: 14, scope: !903)
!903 = distinct !DILexicalBlock(scope: !471, file: !373, line: 58, column: 13)
!904 = !DILocation(line: 58, column: 13, scope: !903)
!905 = !DILocation(line: 58, column: 22, scope: !903)
!906 = !DILocation(line: 58, column: 19, scope: !903)
!907 = !DILocation(line: 58, column: 13, scope: !471)
!908 = !DILocation(line: 62, column: 21, scope: !903)
!909 = !DILocation(line: 62, column: 27, scope: !903)
!910 = !DILocation(line: 62, column: 14, scope: !903)
!911 = !DILocation(line: 62, column: 19, scope: !903)
!912 = !DILocation(line: 62, column: 13, scope: !903)
!913 = !DILocation(line: 63, column: 9, scope: !471)
!914 = !DILocation(line: 63, column: 15, scope: !471)
!915 = !DILocation(line: 63, column: 25, scope: !471)
!916 = !DILocation(line: 64, column: 13, scope: !917)
!917 = distinct !DILexicalBlock(scope: !471, file: !373, line: 64, column: 13)
!918 = !DILocation(line: 64, column: 19, scope: !917)
!919 = !{!852, !833, i64 40}
!920 = !DILocation(line: 64, column: 27, scope: !917)
!921 = !DILocation(line: 64, column: 13, scope: !471)
!922 = !DILocation(line: 65, column: 38, scope: !917)
!923 = !DILocation(line: 65, column: 44, scope: !917)
!924 = !DILocation(line: 65, column: 13, scope: !917)
!925 = !DILocation(line: 65, column: 19, scope: !917)
!926 = !DILocation(line: 65, column: 28, scope: !917)
!927 = !DILocation(line: 65, column: 36, scope: !917)
!928 = !DILocation(line: 66, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !471, file: !373, line: 66, column: 13)
!930 = !DILocation(line: 66, column: 19, scope: !929)
!931 = !DILocation(line: 66, column: 27, scope: !929)
!932 = !DILocation(line: 66, column: 13, scope: !471)
!933 = !DILocation(line: 67, column: 38, scope: !929)
!934 = !DILocation(line: 67, column: 44, scope: !929)
!935 = !DILocation(line: 67, column: 13, scope: !929)
!936 = !DILocation(line: 67, column: 19, scope: !929)
!937 = !DILocation(line: 67, column: 28, scope: !929)
!938 = !DILocation(line: 67, column: 36, scope: !929)
!939 = !DILocation(line: 68, column: 9, scope: !471)
!940 = !DILocation(line: 68, column: 15, scope: !471)
!941 = !DILocation(line: 68, column: 23, scope: !471)
!942 = !DILocation(line: 69, column: 9, scope: !471)
!943 = !DILocation(line: 69, column: 15, scope: !471)
!944 = !DILocation(line: 69, column: 23, scope: !471)
!945 = !DILocation(line: 70, column: 5, scope: !472)
!946 = !DILocation(line: 70, column: 5, scope: !471)
!947 = !DILocation(line: 71, column: 9, scope: !476)
!948 = !DILocation(line: 71, column: 18, scope: !476)
!949 = !DILocation(line: 71, column: 9, scope: !466)
!950 = !DILocation(line: 72, column: 9, scope: !475)
!951 = !DILocation(line: 72, column: 14, scope: !952)
!952 = !DILexicalBlockFile(scope: !474, file: !373, discriminator: 1)
!953 = !DILocation(line: 72, column: 24, scope: !474)
!954 = !DILocation(line: 72, column: 54, scope: !474)
!955 = !DILocation(line: 72, column: 73, scope: !956)
!956 = distinct !DILexicalBlock(scope: !474, file: !373, line: 72, column: 70)
!957 = !DILocation(line: 72, column: 90, scope: !956)
!958 = !DILocation(line: 72, column: 70, scope: !956)
!959 = !{!853, !841, i64 0}
!960 = !DILocation(line: 72, column: 100, scope: !956)
!961 = !DILocation(line: 72, column: 70, scope: !474)
!962 = !DILocation(line: 72, column: 70, scope: !963)
!963 = !DILexicalBlockFile(scope: !474, file: !373, discriminator: 2)
!964 = !DILocation(line: 72, column: 131, scope: !965)
!965 = !DILexicalBlockFile(scope: !956, file: !373, discriminator: 3)
!966 = !DILocation(line: 72, column: 149, scope: !956)
!967 = !DILocation(line: 72, column: 159, scope: !956)
!968 = !{!896, !833, i64 48}
!969 = !DILocation(line: 72, column: 184, scope: !956)
!970 = !DILocation(line: 72, column: 115, scope: !956)
!971 = !DILocation(line: 72, column: 203, scope: !972)
!972 = !DILexicalBlockFile(scope: !475, file: !373, discriminator: 4)
!973 = !DILocation(line: 72, column: 203, scope: !474)
!974 = !DILocation(line: 72, column: 203, scope: !975)
!975 = !DILexicalBlockFile(scope: !474, file: !373, discriminator: 5)
!976 = !DILocation(line: 73, column: 9, scope: !475)
!977 = !DILocation(line: 73, column: 15, scope: !475)
!978 = !DILocation(line: 73, column: 27, scope: !475)
!979 = !DILocation(line: 74, column: 5, scope: !475)
!980 = !DILocation(line: 75, column: 1, scope: !466)
!981 = !DILocation(line: 103, column: 27, scope: !477)
!982 = !DILocation(line: 105, column: 25, scope: !477)
!983 = !DILocation(line: 105, column: 5, scope: !477)
!984 = !DILocation(line: 106, column: 39, scope: !477)
!985 = !DILocation(line: 106, column: 19, scope: !477)
!986 = !DILocation(line: 106, column: 5, scope: !477)
!987 = !DILocation(line: 107, column: 19, scope: !477)
!988 = !DILocation(line: 107, column: 27, scope: !477)
!989 = !DILocation(line: 107, column: 37, scope: !477)
!990 = !{!896, !833, i64 320}
!991 = !DILocation(line: 107, column: 45, scope: !477)
!992 = !DILocation(line: 107, column: 5, scope: !477)
!993 = !DILocation(line: 108, column: 1, scope: !477)
!994 = !DILocation(line: 156, column: 31, scope: !480)
!995 = !DILocation(line: 158, column: 5, scope: !480)
!996 = !DILocation(line: 158, column: 15, scope: !480)
!997 = !DILocation(line: 158, column: 22, scope: !480)
!998 = !DILocation(line: 161, column: 45, scope: !999)
!999 = distinct !DILexicalBlock(scope: !480, file: !373, line: 161, column: 9)
!1000 = !DILocation(line: 161, column: 53, scope: !999)
!1001 = !DILocation(line: 161, column: 66, scope: !999)
!1002 = !DILocation(line: 161, column: 77, scope: !999)
!1003 = !DILocation(line: 161, column: 10, scope: !999)
!1004 = !DILocation(line: 161, column: 104, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !999, file: !373, discriminator: 1)
!1006 = !DILocation(line: 161, column: 112, scope: !999)
!1007 = !DILocation(line: 161, column: 10, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !999, file: !373, discriminator: 2)
!1009 = !DILocation(line: 161, column: 143, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !373, discriminator: 4)
!1011 = !DILexicalBlockFile(scope: !999, file: !373, discriminator: 3)
!1012 = !DILocation(line: 161, column: 9, scope: !480)
!1013 = !DILocation(line: 162, column: 62, scope: !999)
!1014 = !DILocation(line: 162, column: 16, scope: !999)
!1015 = !DILocation(line: 162, column: 9, scope: !999)
!1016 = !DILocation(line: 164, column: 68, scope: !480)
!1017 = !DILocation(line: 164, column: 76, scope: !480)
!1018 = !DILocation(line: 164, column: 89, scope: !480)
!1019 = !DILocation(line: 164, column: 100, scope: !480)
!1020 = !DILocation(line: 164, column: 33, scope: !480)
!1021 = !DILocation(line: 164, column: 127, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !480, file: !373, discriminator: 1)
!1023 = !DILocation(line: 164, column: 135, scope: !480)
!1024 = !DILocation(line: 164, column: 33, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !480, file: !373, discriminator: 2)
!1026 = !DILocation(line: 164, column: 12, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1028, file: !373, discriminator: 4)
!1028 = !DILexicalBlockFile(scope: !480, file: !373, discriminator: 3)
!1029 = !DILocation(line: 164, column: 10, scope: !480)
!1030 = !DILocation(line: 165, column: 9, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !480, file: !373, line: 165, column: 9)
!1032 = !DILocation(line: 165, column: 14, scope: !1031)
!1033 = !DILocation(line: 165, column: 28, scope: !1031)
!1034 = !DILocation(line: 165, column: 49, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1031, file: !373, discriminator: 1)
!1036 = !DILocation(line: 165, column: 57, scope: !1031)
!1037 = !DILocation(line: 165, column: 68, scope: !1031)
!1038 = !{!896, !841, i64 168}
!1039 = !DILocation(line: 165, column: 77, scope: !1031)
!1040 = !DILocation(line: 165, column: 94, scope: !1031)
!1041 = !DILocation(line: 165, column: 9, scope: !480)
!1042 = !DILocation(line: 166, column: 13, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !373, line: 166, column: 13)
!1044 = distinct !DILexicalBlock(scope: !1031, file: !373, line: 165, column: 101)
!1045 = !DILocation(line: 166, column: 18, scope: !1043)
!1046 = !DILocation(line: 166, column: 13, scope: !1044)
!1047 = !DILocation(line: 167, column: 13, scope: !1043)
!1048 = !DILocation(line: 170, column: 13, scope: !1044)
!1049 = !DILocation(line: 171, column: 63, scope: !1044)
!1050 = !DILocation(line: 171, column: 71, scope: !1044)
!1051 = !DILocation(line: 171, column: 84, scope: !1044)
!1052 = !DILocation(line: 171, column: 95, scope: !1044)
!1053 = !DILocation(line: 171, column: 28, scope: !1044)
!1054 = !DILocation(line: 171, column: 122, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1044, file: !373, discriminator: 1)
!1056 = !DILocation(line: 171, column: 130, scope: !1044)
!1057 = !DILocation(line: 171, column: 28, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1044, file: !373, discriminator: 2)
!1059 = !DILocation(line: 171, column: 164, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !373, discriminator: 4)
!1061 = !DILexicalBlockFile(scope: !1044, file: !373, discriminator: 3)
!1062 = !DILocation(line: 171, column: 174, scope: !1044)
!1063 = !{!896, !833, i64 24}
!1064 = !DILocation(line: 172, column: 49, scope: !1044)
!1065 = !DILocation(line: 172, column: 57, scope: !1044)
!1066 = !DILocation(line: 172, column: 70, scope: !1044)
!1067 = !DILocation(line: 172, column: 81, scope: !1044)
!1068 = !DILocation(line: 172, column: 14, scope: !1044)
!1069 = !DILocation(line: 172, column: 108, scope: !1055)
!1070 = !DILocation(line: 172, column: 116, scope: !1044)
!1071 = !DILocation(line: 172, column: 14, scope: !1058)
!1072 = !DILocation(line: 168, column: 16, scope: !1044)
!1073 = !DILocation(line: 168, column: 14, scope: !1044)
!1074 = !DILocation(line: 173, column: 5, scope: !1044)
!1075 = !DILocation(line: 177, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1031, file: !373, line: 174, column: 10)
!1077 = !DILocation(line: 178, column: 63, scope: !1076)
!1078 = !DILocation(line: 178, column: 71, scope: !1076)
!1079 = !DILocation(line: 178, column: 84, scope: !1076)
!1080 = !DILocation(line: 178, column: 95, scope: !1076)
!1081 = !DILocation(line: 178, column: 28, scope: !1076)
!1082 = !DILocation(line: 178, column: 122, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1076, file: !373, discriminator: 1)
!1084 = !DILocation(line: 178, column: 130, scope: !1076)
!1085 = !DILocation(line: 178, column: 28, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1076, file: !373, discriminator: 2)
!1087 = !DILocation(line: 178, column: 164, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !373, discriminator: 4)
!1089 = !DILexicalBlockFile(scope: !1076, file: !373, discriminator: 3)
!1090 = !DILocation(line: 178, column: 174, scope: !1076)
!1091 = !DILocation(line: 179, column: 49, scope: !1076)
!1092 = !DILocation(line: 179, column: 57, scope: !1076)
!1093 = !DILocation(line: 179, column: 70, scope: !1076)
!1094 = !DILocation(line: 179, column: 81, scope: !1076)
!1095 = !DILocation(line: 179, column: 14, scope: !1076)
!1096 = !DILocation(line: 179, column: 108, scope: !1083)
!1097 = !DILocation(line: 179, column: 116, scope: !1076)
!1098 = !DILocation(line: 179, column: 14, scope: !1086)
!1099 = !DILocation(line: 180, column: 13, scope: !1076)
!1100 = !DILocation(line: 175, column: 16, scope: !1076)
!1101 = !DILocation(line: 175, column: 14, scope: !1076)
!1102 = !DILocation(line: 182, column: 5, scope: !480)
!1103 = !DILocation(line: 182, column: 10, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !488, file: !373, discriminator: 1)
!1105 = !DILocation(line: 182, column: 20, scope: !488)
!1106 = !DILocation(line: 182, column: 51, scope: !488)
!1107 = !DILocation(line: 182, column: 62, scope: !491)
!1108 = !DILocation(line: 182, column: 78, scope: !491)
!1109 = !DILocation(line: 182, column: 62, scope: !488)
!1110 = !DILocation(line: 182, column: 93, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !491, file: !373, discriminator: 2)
!1112 = !DILocation(line: 182, column: 98, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !490, file: !373, discriminator: 4)
!1114 = !DILocation(line: 182, column: 108, scope: !490)
!1115 = !DILocation(line: 182, column: 138, scope: !490)
!1116 = !DILocation(line: 182, column: 164, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !490, file: !373, line: 182, column: 161)
!1118 = !DILocation(line: 182, column: 181, scope: !1117)
!1119 = !DILocation(line: 182, column: 161, scope: !1117)
!1120 = !DILocation(line: 182, column: 191, scope: !1117)
!1121 = !DILocation(line: 182, column: 161, scope: !490)
!1122 = !DILocation(line: 182, column: 161, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !490, file: !373, discriminator: 5)
!1124 = !DILocation(line: 182, column: 222, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1117, file: !373, discriminator: 6)
!1126 = !DILocation(line: 182, column: 240, scope: !1117)
!1127 = !DILocation(line: 182, column: 250, scope: !1117)
!1128 = !DILocation(line: 182, column: 275, scope: !1117)
!1129 = !DILocation(line: 182, column: 206, scope: !1117)
!1130 = !DILocation(line: 182, column: 294, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !491, file: !373, discriminator: 7)
!1132 = !DILocation(line: 182, column: 294, scope: !490)
!1133 = !DILocation(line: 182, column: 294, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !490, file: !373, discriminator: 8)
!1135 = !DILocation(line: 182, column: 294, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !490, file: !373, discriminator: 9)
!1137 = !DILocation(line: 182, column: 307, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1028, file: !373, discriminator: 10)
!1139 = !DILocation(line: 182, column: 307, scope: !488)
!1140 = !DILocation(line: 182, column: 307, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !488, file: !373, discriminator: 11)
!1142 = !DILocation(line: 183, column: 12, scope: !480)
!1143 = !DILocation(line: 183, column: 5, scope: !480)
!1144 = !DILocation(line: 184, column: 1, scope: !480)
!1145 = !DILocation(line: 142, column: 31, scope: !492)
!1146 = !DILocation(line: 144, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !492, file: !373, line: 144, column: 9)
!1148 = !DILocation(line: 144, column: 15, scope: !1147)
!1149 = !{!852, !841, i64 32}
!1150 = !DILocation(line: 144, column: 20, scope: !1147)
!1151 = !DILocation(line: 144, column: 9, scope: !492)
!1152 = !DILocation(line: 145, column: 16, scope: !1147)
!1153 = !DILocation(line: 145, column: 22, scope: !1147)
!1154 = !DILocation(line: 145, column: 9, scope: !1147)
!1155 = !DILocation(line: 146, column: 45, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !492, file: !373, line: 146, column: 9)
!1157 = !DILocation(line: 146, column: 53, scope: !1156)
!1158 = !DILocation(line: 146, column: 66, scope: !1156)
!1159 = !DILocation(line: 146, column: 77, scope: !1156)
!1160 = !DILocation(line: 146, column: 10, scope: !1156)
!1161 = !DILocation(line: 146, column: 104, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1156, file: !373, discriminator: 1)
!1163 = !DILocation(line: 146, column: 112, scope: !1156)
!1164 = !DILocation(line: 146, column: 10, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1156, file: !373, discriminator: 2)
!1166 = !DILocation(line: 146, column: 143, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1168, file: !373, discriminator: 4)
!1168 = !DILexicalBlockFile(scope: !1156, file: !373, discriminator: 3)
!1169 = !DILocation(line: 146, column: 9, scope: !492)
!1170 = !DILocation(line: 147, column: 25, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1156, file: !373, line: 146, column: 165)
!1172 = !DILocation(line: 147, column: 9, scope: !1171)
!1173 = !DILocation(line: 148, column: 9, scope: !1171)
!1174 = !DILocation(line: 150, column: 68, scope: !492)
!1175 = !DILocation(line: 150, column: 76, scope: !492)
!1176 = !DILocation(line: 150, column: 89, scope: !492)
!1177 = !DILocation(line: 150, column: 100, scope: !492)
!1178 = !DILocation(line: 150, column: 33, scope: !492)
!1179 = !DILocation(line: 150, column: 127, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !492, file: !373, discriminator: 1)
!1181 = !DILocation(line: 150, column: 135, scope: !492)
!1182 = !DILocation(line: 150, column: 33, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !492, file: !373, discriminator: 2)
!1184 = !DILocation(line: 150, column: 18, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !373, discriminator: 4)
!1186 = !DILexicalBlockFile(scope: !492, file: !373, discriminator: 3)
!1187 = !DILocation(line: 150, column: 5, scope: !492)
!1188 = !DILocation(line: 150, column: 11, scope: !492)
!1189 = !DILocation(line: 150, column: 16, scope: !492)
!1190 = !DILocation(line: 151, column: 12, scope: !492)
!1191 = !DILocation(line: 151, column: 18, scope: !492)
!1192 = !DILocation(line: 151, column: 5, scope: !492)
!1193 = !DILocation(line: 152, column: 1, scope: !492)
!1194 = !DILocation(line: 128, column: 31, scope: !497)
!1195 = !DILocation(line: 128, column: 47, scope: !497)
!1196 = !DILocation(line: 128, column: 63, scope: !497)
!1197 = !DILocation(line: 132, column: 37, scope: !506)
!1198 = !DILocation(line: 132, column: 43, scope: !506)
!1199 = !DILocation(line: 132, column: 9, scope: !506)
!1200 = !DILocation(line: 132, column: 9, scope: !497)
!1201 = !DILocation(line: 133, column: 9, scope: !505)
!1202 = !DILocation(line: 133, column: 19, scope: !505)
!1203 = !DILocation(line: 133, column: 64, scope: !505)
!1204 = !DILocation(line: 133, column: 72, scope: !505)
!1205 = !DILocation(line: 133, column: 85, scope: !505)
!1206 = !DILocation(line: 133, column: 96, scope: !505)
!1207 = !DILocation(line: 133, column: 29, scope: !505)
!1208 = !DILocation(line: 133, column: 123, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !505, file: !373, discriminator: 1)
!1210 = !DILocation(line: 133, column: 131, scope: !505)
!1211 = !DILocation(line: 133, column: 29, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !505, file: !373, discriminator: 2)
!1213 = !DILocation(line: 133, column: 19, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1215, file: !373, discriminator: 4)
!1215 = !DILexicalBlockFile(scope: !505, file: !373, discriminator: 3)
!1216 = !DILocation(line: 134, column: 25, scope: !505)
!1217 = !DILocation(line: 134, column: 35, scope: !505)
!1218 = !DILocation(line: 134, column: 44, scope: !505)
!1219 = !DILocation(line: 135, column: 17, scope: !505)
!1220 = !DILocation(line: 135, column: 9, scope: !505)
!1221 = !DILocation(line: 136, column: 5, scope: !506)
!1222 = !DILocation(line: 137, column: 5, scope: !497)
!1223 = !DILocation(line: 138, column: 1, scope: !497)
!1224 = !DILocation(line: 112, column: 30, scope: !507)
!1225 = !DILocation(line: 112, column: 46, scope: !507)
!1226 = !DILocation(line: 112, column: 59, scope: !507)
!1227 = !DILocation(line: 114, column: 5, scope: !507)
!1228 = !DILocation(line: 114, column: 14, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !516, file: !373, discriminator: 1)
!1230 = !DILocation(line: 114, column: 20, scope: !516)
!1231 = !DILocation(line: 114, column: 14, scope: !516)
!1232 = !DILocation(line: 114, column: 14, scope: !517)
!1233 = !DILocation(line: 114, column: 35, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !515, file: !373, discriminator: 2)
!1235 = !DILocation(line: 114, column: 39, scope: !515)
!1236 = !DILocation(line: 114, column: 46, scope: !515)
!1237 = !DILocation(line: 114, column: 65, scope: !515)
!1238 = !DILocation(line: 114, column: 71, scope: !515)
!1239 = !DILocation(line: 114, column: 85, scope: !515)
!1240 = !{!898, !898, i64 0}
!1241 = !DILocation(line: 114, column: 95, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !515, file: !373, line: 114, column: 95)
!1243 = !DILocation(line: 114, column: 95, scope: !515)
!1244 = !DILocation(line: 114, column: 108, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1242, file: !373, discriminator: 4)
!1246 = !DILocation(line: 114, column: 101, scope: !1242)
!1247 = !DILocation(line: 114, column: 114, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !516, file: !373, discriminator: 5)
!1249 = !DILocation(line: 114, column: 114, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !373, discriminator: 7)
!1251 = !DILexicalBlockFile(scope: !516, file: !373, discriminator: 6)
!1252 = !DILocation(line: 114, column: 114, scope: !515)
!1253 = !DILocation(line: 114, column: 116, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1255, file: !373, discriminator: 8)
!1255 = !DILexicalBlockFile(scope: !517, file: !373, discriminator: 3)
!1256 = !DILocation(line: 115, column: 5, scope: !507)
!1257 = !DILocation(line: 116, column: 1, scope: !507)
!1258 = !DILocation(line: 120, column: 27, scope: !518)
!1259 = !DILocation(line: 122, column: 19, scope: !518)
!1260 = !DILocation(line: 122, column: 5, scope: !518)
!1261 = !DILocation(line: 123, column: 5, scope: !518)
!1262 = !DILocation(line: 191, column: 38, scope: !523)
!1263 = !DILocation(line: 191, column: 61, scope: !523)
!1264 = !DILocation(line: 191, column: 72, scope: !523)
!1265 = !DILocation(line: 193, column: 10, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !523, file: !373, line: 193, column: 9)
!1267 = !DILocation(line: 193, column: 13, scope: !1266)
!1268 = !DILocation(line: 193, column: 18, scope: !1266)
!1269 = !DILocation(line: 193, column: 21, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1266, file: !373, discriminator: 1)
!1271 = !DILocation(line: 193, column: 24, scope: !1266)
!1272 = !DILocation(line: 193, column: 30, scope: !1266)
!1273 = !DILocation(line: 194, column: 26, scope: !1266)
!1274 = !DILocation(line: 194, column: 14, scope: !1266)
!1275 = !DILocation(line: 194, column: 34, scope: !1266)
!1276 = !DILocation(line: 194, column: 43, scope: !1266)
!1277 = !DILocation(line: 194, column: 68, scope: !1266)
!1278 = !DILocation(line: 194, column: 102, scope: !1270)
!1279 = !DILocation(line: 194, column: 90, scope: !1266)
!1280 = !DILocation(line: 194, column: 110, scope: !1266)
!1281 = !DILocation(line: 194, column: 71, scope: !1266)
!1282 = !DILocation(line: 194, column: 144, scope: !1266)
!1283 = !DILocation(line: 194, column: 163, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1266, file: !373, discriminator: 2)
!1285 = !DILocation(line: 194, column: 151, scope: !1266)
!1286 = !DILocation(line: 194, column: 171, scope: !1266)
!1287 = !DILocation(line: 194, column: 180, scope: !1266)
!1288 = !DILocation(line: 194, column: 206, scope: !1266)
!1289 = !DILocation(line: 194, column: 224, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1266, file: !373, discriminator: 3)
!1291 = !DILocation(line: 194, column: 212, scope: !1266)
!1292 = !DILocation(line: 194, column: 232, scope: !1266)
!1293 = !DILocation(line: 194, column: 241, scope: !1266)
!1294 = !DILocation(line: 194, column: 277, scope: !1266)
!1295 = !DILocation(line: 195, column: 26, scope: !1266)
!1296 = !DILocation(line: 195, column: 14, scope: !1266)
!1297 = !DILocation(line: 195, column: 35, scope: !1266)
!1298 = !DILocation(line: 195, column: 44, scope: !1266)
!1299 = !DILocation(line: 195, column: 69, scope: !1266)
!1300 = !DILocation(line: 195, column: 103, scope: !1270)
!1301 = !DILocation(line: 195, column: 91, scope: !1266)
!1302 = !DILocation(line: 195, column: 112, scope: !1266)
!1303 = !DILocation(line: 195, column: 72, scope: !1266)
!1304 = !DILocation(line: 195, column: 146, scope: !1266)
!1305 = !DILocation(line: 195, column: 165, scope: !1284)
!1306 = !DILocation(line: 195, column: 153, scope: !1266)
!1307 = !DILocation(line: 195, column: 174, scope: !1266)
!1308 = !DILocation(line: 195, column: 183, scope: !1266)
!1309 = !DILocation(line: 195, column: 209, scope: !1266)
!1310 = !DILocation(line: 195, column: 227, scope: !1290)
!1311 = !DILocation(line: 195, column: 215, scope: !1266)
!1312 = !DILocation(line: 195, column: 236, scope: !1266)
!1313 = !DILocation(line: 195, column: 245, scope: !1266)
!1314 = !DILocation(line: 193, column: 9, scope: !523)
!1315 = !DILocation(line: 196, column: 72, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1266, file: !373, line: 195, column: 282)
!1317 = !DILocation(line: 196, column: 9, scope: !1316)
!1318 = !DILocation(line: 198, column: 45, scope: !532)
!1319 = !DILocation(line: 198, column: 53, scope: !532)
!1320 = !DILocation(line: 198, column: 66, scope: !532)
!1321 = !DILocation(line: 198, column: 77, scope: !532)
!1322 = !DILocation(line: 198, column: 10, scope: !532)
!1323 = !DILocation(line: 198, column: 104, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !532, file: !373, discriminator: 1)
!1325 = !DILocation(line: 198, column: 112, scope: !532)
!1326 = !DILocation(line: 198, column: 10, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !532, file: !373, discriminator: 2)
!1328 = !DILocation(line: 198, column: 143, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !373, discriminator: 4)
!1330 = !DILexicalBlockFile(scope: !532, file: !373, discriminator: 3)
!1331 = !DILocation(line: 199, column: 9, scope: !532)
!1332 = !DILocation(line: 199, column: 48, scope: !1324)
!1333 = !DILocation(line: 199, column: 57, scope: !532)
!1334 = !DILocation(line: 199, column: 70, scope: !532)
!1335 = !DILocation(line: 199, column: 81, scope: !532)
!1336 = !DILocation(line: 199, column: 13, scope: !532)
!1337 = !DILocation(line: 199, column: 108, scope: !1327)
!1338 = !DILocation(line: 199, column: 117, scope: !532)
!1339 = !DILocation(line: 199, column: 13, scope: !1330)
!1340 = !DILocation(line: 199, column: 148, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !373, discriminator: 5)
!1342 = !DILexicalBlockFile(scope: !532, file: !373, discriminator: 4)
!1343 = !DILocation(line: 198, column: 9, scope: !523)
!1344 = !DILocation(line: 200, column: 9, scope: !531)
!1345 = !DILocation(line: 200, column: 13, scope: !531)
!1346 = !DILocation(line: 200, column: 20, scope: !531)
!1347 = !DILocation(line: 200, column: 28, scope: !531)
!1348 = !DILocation(line: 200, column: 25, scope: !531)
!1349 = !DILocation(line: 201, column: 13, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !531, file: !373, line: 201, column: 13)
!1351 = !DILocation(line: 201, column: 16, scope: !1350)
!1352 = !DILocation(line: 201, column: 13, scope: !531)
!1353 = !DILocation(line: 202, column: 20, scope: !1350)
!1354 = !DILocation(line: 202, column: 19, scope: !1350)
!1355 = !DILocation(line: 202, column: 17, scope: !1350)
!1356 = !DILocation(line: 202, column: 13, scope: !1350)
!1357 = !DILocation(line: 203, column: 13, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !531, file: !373, line: 203, column: 13)
!1359 = !DILocation(line: 203, column: 13, scope: !531)
!1360 = !DILocation(line: 204, column: 79, scope: !1358)
!1361 = !DILocation(line: 204, column: 13, scope: !1358)
!1362 = !DILocation(line: 206, column: 80, scope: !1358)
!1363 = !DILocation(line: 206, column: 13, scope: !1358)
!1364 = !DILocation(line: 207, column: 5, scope: !532)
!1365 = !DILocation(line: 208, column: 69, scope: !523)
!1366 = !DILocation(line: 208, column: 77, scope: !523)
!1367 = !DILocation(line: 208, column: 90, scope: !523)
!1368 = !DILocation(line: 208, column: 101, scope: !523)
!1369 = !DILocation(line: 208, column: 34, scope: !523)
!1370 = !DILocation(line: 208, column: 128, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !523, file: !373, discriminator: 1)
!1372 = !DILocation(line: 208, column: 136, scope: !523)
!1373 = !DILocation(line: 208, column: 34, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !523, file: !373, discriminator: 2)
!1375 = !DILocation(line: 209, column: 69, scope: !523)
!1376 = !DILocation(line: 209, column: 78, scope: !523)
!1377 = !DILocation(line: 209, column: 91, scope: !523)
!1378 = !DILocation(line: 209, column: 102, scope: !523)
!1379 = !DILocation(line: 209, column: 34, scope: !523)
!1380 = !DILocation(line: 209, column: 129, scope: !1371)
!1381 = !DILocation(line: 209, column: 138, scope: !523)
!1382 = !DILocation(line: 209, column: 34, scope: !1374)
!1383 = !DILocation(line: 209, column: 170, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !373, discriminator: 4)
!1385 = !DILexicalBlockFile(scope: !523, file: !373, discriminator: 3)
!1386 = !DILocation(line: 208, column: 12, scope: !523)
!1387 = !DILocation(line: 208, column: 5, scope: !523)
!1388 = !DILocation(line: 210, column: 1, scope: !523)
!1389 = !DILocation(line: 330, column: 28, scope: !533)
!1390 = !DILocation(line: 330, column: 44, scope: !533)
!1391 = !DILocation(line: 330, column: 60, scope: !533)
!1392 = !DILocation(line: 332, column: 5, scope: !533)
!1393 = !DILocation(line: 332, column: 15, scope: !533)
!1394 = !DILocation(line: 334, column: 45, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !533, file: !373, line: 334, column: 9)
!1396 = !DILocation(line: 334, column: 51, scope: !1395)
!1397 = !DILocation(line: 334, column: 9, scope: !1395)
!1398 = !DILocation(line: 334, column: 9, scope: !533)
!1399 = !DILocation(line: 335, column: 9, scope: !1395)
!1400 = !DILocation(line: 337, column: 9, scope: !1395)
!1401 = !DILocation(line: 338, column: 1, scope: !533)
!1402 = !DILocation(line: 276, column: 31, scope: !548)
!1403 = !DILocation(line: 276, column: 47, scope: !548)
!1404 = !DILocation(line: 276, column: 63, scope: !548)
!1405 = !DILocation(line: 278, column: 5, scope: !548)
!1406 = !DILocation(line: 278, column: 22, scope: !548)
!1407 = !DILocation(line: 279, column: 5, scope: !548)
!1408 = !DILocation(line: 279, column: 15, scope: !548)
!1409 = !DILocation(line: 279, column: 20, scope: !548)
!1410 = !DILocation(line: 281, column: 44, scope: !562)
!1411 = !DILocation(line: 281, column: 50, scope: !562)
!1412 = !DILocation(line: 281, column: 9, scope: !562)
!1413 = !DILocation(line: 281, column: 9, scope: !548)
!1414 = !DILocation(line: 282, column: 9, scope: !561)
!1415 = !DILocation(line: 282, column: 26, scope: !561)
!1416 = !DILocation(line: 282, column: 32, scope: !561)
!1417 = !DILocation(line: 283, column: 9, scope: !561)
!1418 = !DILocation(line: 283, column: 27, scope: !561)
!1419 = !DILocation(line: 285, column: 30, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !561, file: !373, line: 285, column: 13)
!1421 = !DILocation(line: 285, column: 36, scope: !1420)
!1422 = !DILocation(line: 285, column: 47, scope: !1420)
!1423 = !DILocation(line: 285, column: 65, scope: !1420)
!1424 = !DILocation(line: 285, column: 13, scope: !561)
!1425 = !DILocation(line: 286, column: 26, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !373, line: 285, column: 71)
!1427 = !DILocation(line: 288, column: 40, scope: !1426)
!1428 = !DILocation(line: 288, column: 46, scope: !1426)
!1429 = !DILocation(line: 288, column: 56, scope: !1426)
!1430 = !DILocation(line: 286, column: 13, scope: !1426)
!1431 = !DILocation(line: 289, column: 13, scope: !1426)
!1432 = !DILocation(line: 291, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !561, file: !373, line: 291, column: 13)
!1434 = !DILocation(line: 291, column: 22, scope: !1433)
!1435 = !DILocation(line: 291, column: 13, scope: !561)
!1436 = !DILocation(line: 292, column: 22, scope: !1433)
!1437 = !DILocation(line: 292, column: 13, scope: !1433)
!1438 = !DILocation(line: 293, column: 65, scope: !561)
!1439 = !DILocation(line: 293, column: 55, scope: !561)
!1440 = !DILocation(line: 293, column: 86, scope: !561)
!1441 = !DILocation(line: 293, column: 92, scope: !561)
!1442 = !DILocation(line: 293, column: 102, scope: !561)
!1443 = !DILocation(line: 293, column: 70, scope: !561)
!1444 = !DILocation(line: 293, column: 39, scope: !561)
!1445 = !DILocation(line: 293, column: 17, scope: !561)
!1446 = !DILocation(line: 293, column: 14, scope: !561)
!1447 = !DILocation(line: 294, column: 25, scope: !561)
!1448 = !DILocation(line: 294, column: 24, scope: !561)
!1449 = !DILocation(line: 294, column: 9, scope: !561)
!1450 = !DILocation(line: 295, column: 13, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !561, file: !373, line: 295, column: 13)
!1452 = !DILocation(line: 295, column: 22, scope: !1451)
!1453 = !DILocation(line: 295, column: 36, scope: !1451)
!1454 = !DILocation(line: 295, column: 39, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1451, file: !373, discriminator: 1)
!1456 = !DILocation(line: 295, column: 44, scope: !1451)
!1457 = !DILocation(line: 295, column: 13, scope: !561)
!1458 = !DILocation(line: 296, column: 17, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !373, line: 296, column: 17)
!1460 = distinct !DILexicalBlock(scope: !1451, file: !373, line: 295, column: 68)
!1461 = !DILocation(line: 296, column: 21, scope: !1459)
!1462 = !DILocation(line: 296, column: 17, scope: !1460)
!1463 = !DILocation(line: 298, column: 33, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !373, line: 296, column: 36)
!1465 = !DILocation(line: 298, column: 20, scope: !1464)
!1466 = !DILocation(line: 298, column: 40, scope: !1464)
!1467 = !DILocation(line: 298, column: 49, scope: !1464)
!1468 = !DILocation(line: 299, column: 36, scope: !1464)
!1469 = !DILocation(line: 299, column: 24, scope: !1464)
!1470 = !DILocation(line: 299, column: 17, scope: !1464)
!1471 = !DILocation(line: 301, column: 9, scope: !1460)
!1472 = !DILocation(line: 308, column: 37, scope: !561)
!1473 = !DILocation(line: 308, column: 43, scope: !561)
!1474 = !{!896, !833, i64 304}
!1475 = !DILocation(line: 308, column: 52, scope: !561)
!1476 = !DILocation(line: 308, column: 16, scope: !561)
!1477 = !DILocation(line: 308, column: 14, scope: !561)
!1478 = !DILocation(line: 309, column: 13, scope: !569)
!1479 = !DILocation(line: 309, column: 18, scope: !569)
!1480 = !DILocation(line: 309, column: 13, scope: !561)
!1481 = !DILocation(line: 310, column: 26, scope: !568)
!1482 = !DILocation(line: 310, column: 32, scope: !568)
!1483 = !DILocation(line: 310, column: 36, scope: !568)
!1484 = !DILocation(line: 310, column: 13, scope: !568)
!1485 = !DILocation(line: 311, column: 17, scope: !567)
!1486 = !DILocation(line: 311, column: 26, scope: !567)
!1487 = !DILocation(line: 311, column: 40, scope: !567)
!1488 = !DILocation(line: 311, column: 43, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !567, file: !373, discriminator: 1)
!1490 = !DILocation(line: 311, column: 48, scope: !567)
!1491 = !DILocation(line: 311, column: 17, scope: !568)
!1492 = !DILocation(line: 312, column: 29, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !567, file: !373, line: 311, column: 72)
!1494 = !DILocation(line: 312, column: 35, scope: !1493)
!1495 = !DILocation(line: 312, column: 17, scope: !1493)
!1496 = !DILocation(line: 313, column: 13, scope: !1493)
!1497 = !DILocation(line: 315, column: 17, scope: !566)
!1498 = !DILocation(line: 315, column: 34, scope: !566)
!1499 = !DILocation(line: 317, column: 33, scope: !566)
!1500 = !DILocation(line: 317, column: 32, scope: !566)
!1501 = !DILocation(line: 317, column: 17, scope: !566)
!1502 = !DILocation(line: 318, column: 25, scope: !566)
!1503 = !DILocation(line: 318, column: 31, scope: !566)
!1504 = !DILocation(line: 318, column: 24, scope: !566)
!1505 = !DILocation(line: 318, column: 48, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !566, file: !373, discriminator: 1)
!1507 = !DILocation(line: 318, column: 54, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !566, file: !373, discriminator: 2)
!1509 = !DILocation(line: 318, column: 22, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !373, discriminator: 4)
!1511 = !DILexicalBlockFile(scope: !566, file: !373, discriminator: 3)
!1512 = !DILocation(line: 319, column: 21, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !566, file: !373, line: 319, column: 21)
!1514 = !DILocation(line: 319, column: 26, scope: !1513)
!1515 = !DILocation(line: 319, column: 21, scope: !566)
!1516 = !DILocation(line: 320, column: 33, scope: !1513)
!1517 = !DILocation(line: 320, column: 39, scope: !1513)
!1518 = !DILocation(line: 320, column: 21, scope: !1513)
!1519 = !DILocation(line: 322, column: 34, scope: !1513)
!1520 = !DILocation(line: 322, column: 40, scope: !1513)
!1521 = !DILocation(line: 322, column: 21, scope: !1513)
!1522 = !DILocation(line: 323, column: 13, scope: !567)
!1523 = !DILocation(line: 324, column: 9, scope: !568)
!1524 = !DILocation(line: 325, column: 5, scope: !562)
!1525 = !DILocation(line: 325, column: 5, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !562, file: !373, discriminator: 1)
!1527 = !DILocation(line: 325, column: 5, scope: !561)
!1528 = !DILocation(line: 326, column: 24, scope: !548)
!1529 = !DILocation(line: 326, column: 12, scope: !548)
!1530 = !DILocation(line: 326, column: 5, scope: !548)
!1531 = !DILocation(line: 327, column: 1, scope: !548)
!1532 = !DILocation(line: 535, column: 32, scope: !579)
!1533 = !DILocation(line: 537, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !579, file: !373, line: 537, column: 9)
!1535 = !DILocation(line: 537, column: 15, scope: !1534)
!1536 = !DILocation(line: 537, column: 27, scope: !1534)
!1537 = !DILocation(line: 537, column: 9, scope: !579)
!1538 = !DILocation(line: 538, column: 41, scope: !1534)
!1539 = !DILocation(line: 538, column: 29, scope: !1534)
!1540 = !DILocation(line: 538, column: 9, scope: !1534)
!1541 = !DILocation(line: 539, column: 19, scope: !579)
!1542 = !DILocation(line: 539, column: 5, scope: !579)
!1543 = !DILocation(line: 540, column: 21, scope: !579)
!1544 = !DILocation(line: 540, column: 5, scope: !579)
!1545 = !DILocation(line: 541, column: 1, scope: !579)
!1546 = !DILocation(line: 465, column: 29, scope: !582)
!1547 = !DILocation(line: 469, column: 9, scope: !582)
!1548 = !DILocation(line: 470, column: 59, scope: !582)
!1549 = !DILocation(line: 470, column: 68, scope: !582)
!1550 = !DILocation(line: 470, column: 81, scope: !582)
!1551 = !DILocation(line: 470, column: 92, scope: !582)
!1552 = !DILocation(line: 470, column: 24, scope: !582)
!1553 = !DILocation(line: 470, column: 119, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !582, file: !373, discriminator: 1)
!1555 = !DILocation(line: 470, column: 128, scope: !582)
!1556 = !DILocation(line: 470, column: 24, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !582, file: !373, discriminator: 2)
!1558 = !DILocation(line: 470, column: 162, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1560, file: !373, discriminator: 4)
!1560 = !DILexicalBlockFile(scope: !582, file: !373, discriminator: 3)
!1561 = !DILocation(line: 470, column: 172, scope: !582)
!1562 = !DILocation(line: 471, column: 45, scope: !582)
!1563 = !DILocation(line: 471, column: 54, scope: !582)
!1564 = !DILocation(line: 471, column: 67, scope: !582)
!1565 = !DILocation(line: 471, column: 78, scope: !582)
!1566 = !DILocation(line: 471, column: 10, scope: !582)
!1567 = !DILocation(line: 471, column: 105, scope: !1554)
!1568 = !DILocation(line: 471, column: 114, scope: !582)
!1569 = !DILocation(line: 471, column: 10, scope: !1557)
!1570 = !DILocation(line: 467, column: 12, scope: !582)
!1571 = !DILocation(line: 467, column: 5, scope: !582)
!1572 = !DILocation(line: 461, column: 39, scope: !735)
!1573 = !DILocation(line: 461, column: 68, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !735, file: !373, line: 461, column: 52)
!1575 = !DILocation(line: 461, column: 77, scope: !1574)
!1576 = !DILocation(line: 461, column: 86, scope: !1574)
!1577 = !DILocation(line: 461, column: 112, scope: !1574)
!1578 = !DILocation(line: 461, column: 130, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1574, file: !373, discriminator: 2)
!1580 = !DILocation(line: 461, column: 139, scope: !1574)
!1581 = !DILocation(line: 461, column: 148, scope: !1574)
!1582 = !DILocation(line: 461, column: 52, scope: !735)
!1583 = !DILocation(line: 461, column: 225, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1585, file: !373, discriminator: 3)
!1585 = !DILexicalBlockFile(scope: !1586, file: !373, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !373, line: 461, column: 190)
!1587 = distinct !DILexicalBlock(scope: !1574, file: !373, line: 461, column: 184)
!1588 = !DILocation(line: 461, column: 206, scope: !1586)
!1589 = !DILocation(line: 461, column: 191, scope: !1586)
!1590 = !DILocation(line: 461, column: 190, scope: !1587)
!1591 = !DILocation(line: 461, column: 233, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1586, file: !373, discriminator: 6)
!1593 = !DILocation(line: 461, column: 296, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1587, file: !373, discriminator: 5)
!1595 = !DILocation(line: 461, column: 276, scope: !1587)
!1596 = !DILocation(line: 461, column: 305, scope: !1587)
!1597 = !DILocation(line: 461, column: 318, scope: !1587)
!1598 = !DILocation(line: 461, column: 329, scope: !1587)
!1599 = !DILocation(line: 461, column: 261, scope: !1587)
!1600 = !DILocation(line: 461, column: 356, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1587, file: !373, discriminator: 8)
!1602 = !DILocation(line: 461, column: 336, scope: !1587)
!1603 = !DILocation(line: 461, column: 365, scope: !1587)
!1604 = !DILocation(line: 461, column: 261, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1587, file: !373, discriminator: 9)
!1606 = !DILocation(line: 461, column: 258, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1608, file: !373, discriminator: 11)
!1608 = !DILexicalBlockFile(scope: !1587, file: !373, discriminator: 10)
!1609 = !DILocation(line: 461, column: 397, scope: !1587)
!1610 = !DILocation(line: 461, column: 420, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !373, discriminator: 12)
!1612 = !DILexicalBlockFile(scope: !735, file: !373, discriminator: 4)
!1613 = !DILocation(line: 461, column: 407, scope: !735)
!1614 = !DILocation(line: 461, column: 400, scope: !735)
!1615 = !DILocation(line: 461, column: 428, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !373, discriminator: 13)
!1617 = !DILexicalBlockFile(scope: !735, file: !373, discriminator: 7)
!1618 = !DILocation(line: 460, column: 43, scope: !738)
!1619 = !DILocation(line: 460, column: 56, scope: !738)
!1620 = !DILocation(line: 460, column: 81, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !738, file: !373, line: 460, column: 65)
!1622 = !DILocation(line: 460, column: 86, scope: !1621)
!1623 = !DILocation(line: 460, column: 95, scope: !1621)
!1624 = !DILocation(line: 460, column: 121, scope: !1621)
!1625 = !DILocation(line: 460, column: 139, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1621, file: !373, discriminator: 2)
!1627 = !DILocation(line: 460, column: 144, scope: !1621)
!1628 = !DILocation(line: 460, column: 153, scope: !1621)
!1629 = !DILocation(line: 460, column: 65, scope: !738)
!1630 = !DILocation(line: 460, column: 230, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !373, discriminator: 3)
!1632 = !DILexicalBlockFile(scope: !1633, file: !373, discriminator: 1)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !373, line: 460, column: 195)
!1634 = distinct !DILexicalBlock(scope: !1621, file: !373, line: 460, column: 189)
!1635 = !DILocation(line: 460, column: 211, scope: !1633)
!1636 = !DILocation(line: 460, column: 196, scope: !1633)
!1637 = !DILocation(line: 460, column: 195, scope: !1634)
!1638 = !DILocation(line: 460, column: 234, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1633, file: !373, discriminator: 6)
!1640 = !DILocation(line: 460, column: 293, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1634, file: !373, discriminator: 5)
!1642 = !DILocation(line: 460, column: 273, scope: !1634)
!1643 = !DILocation(line: 460, column: 298, scope: !1634)
!1644 = !DILocation(line: 460, column: 311, scope: !1634)
!1645 = !DILocation(line: 460, column: 322, scope: !1634)
!1646 = !DILocation(line: 460, column: 258, scope: !1634)
!1647 = !DILocation(line: 460, column: 349, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1634, file: !373, discriminator: 8)
!1649 = !DILocation(line: 460, column: 329, scope: !1634)
!1650 = !DILocation(line: 460, column: 354, scope: !1634)
!1651 = !DILocation(line: 460, column: 258, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1634, file: !373, discriminator: 9)
!1653 = !DILocation(line: 460, column: 255, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !373, discriminator: 11)
!1655 = !DILexicalBlockFile(scope: !1634, file: !373, discriminator: 10)
!1656 = !DILocation(line: 460, column: 386, scope: !1634)
!1657 = !DILocation(line: 460, column: 409, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1659, file: !373, discriminator: 12)
!1659 = !DILexicalBlockFile(scope: !1660, file: !373, discriminator: 4)
!1660 = distinct !DILexicalBlock(scope: !738, file: !373, line: 460, column: 393)
!1661 = !DILocation(line: 460, column: 414, scope: !1660)
!1662 = !DILocation(line: 460, column: 423, scope: !1660)
!1663 = !DILocation(line: 460, column: 449, scope: !1660)
!1664 = !DILocation(line: 460, column: 467, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1660, file: !373, discriminator: 14)
!1666 = !DILocation(line: 460, column: 472, scope: !1660)
!1667 = !DILocation(line: 460, column: 481, scope: !1660)
!1668 = !DILocation(line: 460, column: 393, scope: !738)
!1669 = !DILocation(line: 460, column: 558, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !373, discriminator: 15)
!1671 = !DILexicalBlockFile(scope: !1672, file: !373, discriminator: 13)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !373, line: 460, column: 523)
!1673 = distinct !DILexicalBlock(scope: !1660, file: !373, line: 460, column: 517)
!1674 = !DILocation(line: 460, column: 539, scope: !1672)
!1675 = !DILocation(line: 460, column: 524, scope: !1672)
!1676 = !DILocation(line: 460, column: 523, scope: !1673)
!1677 = !DILocation(line: 460, column: 562, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1672, file: !373, discriminator: 18)
!1679 = !DILocation(line: 460, column: 621, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1673, file: !373, discriminator: 17)
!1681 = !DILocation(line: 460, column: 601, scope: !1673)
!1682 = !DILocation(line: 460, column: 626, scope: !1673)
!1683 = !DILocation(line: 460, column: 639, scope: !1673)
!1684 = !DILocation(line: 460, column: 650, scope: !1673)
!1685 = !DILocation(line: 460, column: 586, scope: !1673)
!1686 = !DILocation(line: 460, column: 677, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1673, file: !373, discriminator: 20)
!1688 = !DILocation(line: 460, column: 657, scope: !1673)
!1689 = !DILocation(line: 460, column: 682, scope: !1673)
!1690 = !DILocation(line: 460, column: 586, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1673, file: !373, discriminator: 21)
!1692 = !DILocation(line: 460, column: 583, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !373, discriminator: 23)
!1694 = !DILexicalBlockFile(scope: !1673, file: !373, discriminator: 22)
!1695 = !DILocation(line: 460, column: 714, scope: !1673)
!1696 = !DILocation(line: 460, column: 741, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1698, file: !373, discriminator: 24)
!1698 = !DILexicalBlockFile(scope: !738, file: !373, discriminator: 16)
!1699 = !DILocation(line: 460, column: 744, scope: !738)
!1700 = !DILocation(line: 460, column: 724, scope: !738)
!1701 = !DILocation(line: 460, column: 717, scope: !738)
!1702 = !DILocation(line: 460, column: 748, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1704, file: !373, discriminator: 25)
!1704 = !DILexicalBlockFile(scope: !1705, file: !373, discriminator: 19)
!1705 = !DILexicalBlockFile(scope: !738, file: !373, discriminator: 7)
!1706 = !DILocation(line: 476, column: 32, scope: !742)
!1707 = !DILocation(line: 476, column: 49, scope: !742)
!1708 = !DILocation(line: 476, column: 65, scope: !742)
!1709 = !DILocation(line: 478, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !742, file: !373, line: 478, column: 9)
!1711 = !DILocation(line: 478, column: 10, scope: !1710)
!1712 = !DILocation(line: 478, column: 9, scope: !742)
!1713 = !DILocation(line: 479, column: 9, scope: !1710)
!1714 = !DILocation(line: 480, column: 65, scope: !742)
!1715 = !DILocation(line: 480, column: 74, scope: !742)
!1716 = !DILocation(line: 480, column: 87, scope: !742)
!1717 = !DILocation(line: 480, column: 98, scope: !742)
!1718 = !DILocation(line: 480, column: 30, scope: !742)
!1719 = !DILocation(line: 480, column: 125, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !742, file: !373, discriminator: 1)
!1721 = !DILocation(line: 480, column: 134, scope: !742)
!1722 = !DILocation(line: 480, column: 30, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !742, file: !373, discriminator: 2)
!1724 = !DILocation(line: 480, column: 166, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1726, file: !373, discriminator: 4)
!1726 = !DILexicalBlockFile(scope: !742, file: !373, discriminator: 3)
!1727 = !DILocation(line: 480, column: 172, scope: !742)
!1728 = !DILocation(line: 480, column: 12, scope: !742)
!1729 = !DILocation(line: 480, column: 5, scope: !742)
!1730 = !DILocation(line: 481, column: 1, scope: !742)
!1731 = !DILocation(line: 484, column: 29, scope: !747)
!1732 = !DILocation(line: 484, column: 46, scope: !747)
!1733 = !DILocation(line: 484, column: 53, scope: !747)
!1734 = !DILocation(line: 486, column: 25, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !747, file: !373, line: 486, column: 9)
!1736 = !DILocation(line: 486, column: 34, scope: !1735)
!1737 = !DILocation(line: 486, column: 43, scope: !1735)
!1738 = !DILocation(line: 486, column: 69, scope: !1735)
!1739 = !DILocation(line: 486, column: 87, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1735, file: !373, discriminator: 2)
!1741 = !DILocation(line: 486, column: 96, scope: !1735)
!1742 = !DILocation(line: 486, column: 105, scope: !1735)
!1743 = !DILocation(line: 486, column: 9, scope: !747)
!1744 = !DILocation(line: 486, column: 182, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1746, file: !373, discriminator: 3)
!1746 = !DILexicalBlockFile(scope: !1747, file: !373, discriminator: 1)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !373, line: 486, column: 147)
!1748 = distinct !DILexicalBlock(scope: !1735, file: !373, line: 486, column: 141)
!1749 = !DILocation(line: 486, column: 163, scope: !1747)
!1750 = !DILocation(line: 486, column: 148, scope: !1747)
!1751 = !DILocation(line: 486, column: 147, scope: !1748)
!1752 = !DILocation(line: 486, column: 190, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1747, file: !373, discriminator: 5)
!1754 = !DILocation(line: 486, column: 253, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1748, file: !373, discriminator: 4)
!1756 = !DILocation(line: 486, column: 233, scope: !1748)
!1757 = !DILocation(line: 486, column: 262, scope: !1748)
!1758 = !DILocation(line: 486, column: 275, scope: !1748)
!1759 = !DILocation(line: 486, column: 286, scope: !1748)
!1760 = !DILocation(line: 486, column: 218, scope: !1748)
!1761 = !DILocation(line: 486, column: 313, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1748, file: !373, discriminator: 6)
!1763 = !DILocation(line: 486, column: 293, scope: !1748)
!1764 = !DILocation(line: 486, column: 322, scope: !1748)
!1765 = !DILocation(line: 486, column: 218, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1748, file: !373, discriminator: 7)
!1767 = !DILocation(line: 486, column: 215, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1769, file: !373, discriminator: 9)
!1769 = !DILexicalBlockFile(scope: !1748, file: !373, discriminator: 8)
!1770 = !DILocation(line: 486, column: 354, scope: !1748)
!1771 = !DILocation(line: 487, column: 25, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !747, file: !373, line: 487, column: 9)
!1773 = !DILocation(line: 487, column: 30, scope: !1772)
!1774 = !DILocation(line: 487, column: 39, scope: !1772)
!1775 = !DILocation(line: 487, column: 65, scope: !1772)
!1776 = !DILocation(line: 487, column: 83, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1772, file: !373, discriminator: 2)
!1778 = !DILocation(line: 487, column: 88, scope: !1772)
!1779 = !DILocation(line: 487, column: 97, scope: !1772)
!1780 = !DILocation(line: 487, column: 9, scope: !747)
!1781 = !DILocation(line: 487, column: 174, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !373, discriminator: 3)
!1783 = !DILexicalBlockFile(scope: !1784, file: !373, discriminator: 1)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !373, line: 487, column: 139)
!1785 = distinct !DILexicalBlock(scope: !1772, file: !373, line: 487, column: 133)
!1786 = !DILocation(line: 487, column: 155, scope: !1784)
!1787 = !DILocation(line: 487, column: 140, scope: !1784)
!1788 = !DILocation(line: 487, column: 139, scope: !1785)
!1789 = !DILocation(line: 487, column: 178, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1784, file: !373, discriminator: 5)
!1791 = !DILocation(line: 487, column: 237, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1785, file: !373, discriminator: 4)
!1793 = !DILocation(line: 487, column: 217, scope: !1785)
!1794 = !DILocation(line: 487, column: 242, scope: !1785)
!1795 = !DILocation(line: 487, column: 255, scope: !1785)
!1796 = !DILocation(line: 487, column: 266, scope: !1785)
!1797 = !DILocation(line: 487, column: 202, scope: !1785)
!1798 = !DILocation(line: 487, column: 293, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1785, file: !373, discriminator: 6)
!1800 = !DILocation(line: 487, column: 273, scope: !1785)
!1801 = !DILocation(line: 487, column: 298, scope: !1785)
!1802 = !DILocation(line: 487, column: 202, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1785, file: !373, discriminator: 7)
!1804 = !DILocation(line: 487, column: 199, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1806, file: !373, discriminator: 9)
!1806 = !DILexicalBlockFile(scope: !1785, file: !373, discriminator: 8)
!1807 = !DILocation(line: 487, column: 330, scope: !1785)
!1808 = !DILocation(line: 488, column: 33, scope: !747)
!1809 = !DILocation(line: 488, column: 40, scope: !747)
!1810 = !DILocation(line: 488, column: 43, scope: !747)
!1811 = !DILocation(line: 488, column: 12, scope: !747)
!1812 = !DILocation(line: 488, column: 5, scope: !747)
!1813 = !DILocation(line: 489, column: 1, scope: !747)
!1814 = !DILocation(line: 581, column: 29, scope: !752)
!1815 = !DILocation(line: 583, column: 25, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !752, file: !373, line: 583, column: 9)
!1817 = !DILocation(line: 583, column: 10, scope: !1816)
!1818 = !DILocation(line: 583, column: 9, scope: !752)
!1819 = !DILocation(line: 584, column: 9, scope: !1816)
!1820 = !DILocation(line: 585, column: 65, scope: !752)
!1821 = !DILocation(line: 585, column: 74, scope: !752)
!1822 = !DILocation(line: 585, column: 87, scope: !752)
!1823 = !DILocation(line: 585, column: 98, scope: !752)
!1824 = !DILocation(line: 585, column: 30, scope: !752)
!1825 = !DILocation(line: 585, column: 125, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !752, file: !373, discriminator: 1)
!1827 = !DILocation(line: 585, column: 134, scope: !752)
!1828 = !DILocation(line: 585, column: 30, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !752, file: !373, discriminator: 2)
!1830 = !DILocation(line: 585, column: 12, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1832, file: !373, discriminator: 4)
!1832 = !DILexicalBlockFile(scope: !752, file: !373, discriminator: 3)
!1833 = !DILocation(line: 585, column: 5, scope: !752)
!1834 = !DILocation(line: 586, column: 1, scope: !752)
!1835 = !DILocation(line: 589, column: 33, scope: !755)
!1836 = !DILocation(line: 591, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !755, file: !373, line: 591, column: 9)
!1838 = !DILocation(line: 591, column: 10, scope: !1837)
!1839 = !DILocation(line: 591, column: 9, scope: !755)
!1840 = !DILocation(line: 592, column: 9, scope: !1837)
!1841 = !DILocation(line: 593, column: 60, scope: !755)
!1842 = !DILocation(line: 593, column: 69, scope: !755)
!1843 = !DILocation(line: 593, column: 82, scope: !755)
!1844 = !DILocation(line: 593, column: 93, scope: !755)
!1845 = !DILocation(line: 593, column: 25, scope: !755)
!1846 = !DILocation(line: 593, column: 120, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !755, file: !373, discriminator: 1)
!1848 = !DILocation(line: 593, column: 129, scope: !755)
!1849 = !DILocation(line: 593, column: 25, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !755, file: !373, discriminator: 2)
!1851 = !DILocation(line: 593, column: 12, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !373, discriminator: 4)
!1853 = !DILexicalBlockFile(scope: !755, file: !373, discriminator: 3)
!1854 = !DILocation(line: 593, column: 5, scope: !755)
!1855 = !DILocation(line: 594, column: 1, scope: !755)
!1856 = !DILocation(line: 462, column: 40, scope: !761)
!1857 = !DILocation(line: 462, column: 57, scope: !761)
!1858 = !DILocation(line: 462, column: 70, scope: !761)
!1859 = !DILocation(line: 462, column: 95, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !761, file: !373, line: 462, column: 79)
!1861 = !DILocation(line: 462, column: 104, scope: !1860)
!1862 = !DILocation(line: 462, column: 113, scope: !1860)
!1863 = !DILocation(line: 462, column: 139, scope: !1860)
!1864 = !DILocation(line: 462, column: 157, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1860, file: !373, discriminator: 2)
!1866 = !DILocation(line: 462, column: 166, scope: !1860)
!1867 = !DILocation(line: 462, column: 175, scope: !1860)
!1868 = !DILocation(line: 462, column: 79, scope: !761)
!1869 = !DILocation(line: 462, column: 252, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !373, discriminator: 3)
!1871 = !DILexicalBlockFile(scope: !1872, file: !373, discriminator: 1)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !373, line: 462, column: 217)
!1873 = distinct !DILexicalBlock(scope: !1860, file: !373, line: 462, column: 211)
!1874 = !DILocation(line: 462, column: 233, scope: !1872)
!1875 = !DILocation(line: 462, column: 218, scope: !1872)
!1876 = !DILocation(line: 462, column: 217, scope: !1873)
!1877 = !DILocation(line: 462, column: 260, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1872, file: !373, discriminator: 6)
!1879 = !DILocation(line: 462, column: 323, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1873, file: !373, discriminator: 5)
!1881 = !DILocation(line: 462, column: 303, scope: !1873)
!1882 = !DILocation(line: 462, column: 332, scope: !1873)
!1883 = !DILocation(line: 462, column: 345, scope: !1873)
!1884 = !DILocation(line: 462, column: 356, scope: !1873)
!1885 = !DILocation(line: 462, column: 288, scope: !1873)
!1886 = !DILocation(line: 462, column: 383, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1873, file: !373, discriminator: 8)
!1888 = !DILocation(line: 462, column: 363, scope: !1873)
!1889 = !DILocation(line: 462, column: 392, scope: !1873)
!1890 = !DILocation(line: 462, column: 288, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1873, file: !373, discriminator: 9)
!1892 = !DILocation(line: 462, column: 285, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !373, discriminator: 11)
!1894 = !DILexicalBlockFile(scope: !1873, file: !373, discriminator: 10)
!1895 = !DILocation(line: 462, column: 424, scope: !1873)
!1896 = !DILocation(line: 462, column: 447, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1898, file: !373, discriminator: 12)
!1898 = !DILexicalBlockFile(scope: !1899, file: !373, discriminator: 4)
!1899 = distinct !DILexicalBlock(scope: !761, file: !373, line: 462, column: 431)
!1900 = !DILocation(line: 462, column: 452, scope: !1899)
!1901 = !DILocation(line: 462, column: 461, scope: !1899)
!1902 = !DILocation(line: 462, column: 487, scope: !1899)
!1903 = !DILocation(line: 462, column: 505, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1899, file: !373, discriminator: 14)
!1905 = !DILocation(line: 462, column: 510, scope: !1899)
!1906 = !DILocation(line: 462, column: 519, scope: !1899)
!1907 = !DILocation(line: 462, column: 431, scope: !761)
!1908 = !DILocation(line: 462, column: 596, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !373, discriminator: 15)
!1910 = !DILexicalBlockFile(scope: !1911, file: !373, discriminator: 13)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !373, line: 462, column: 561)
!1912 = distinct !DILexicalBlock(scope: !1899, file: !373, line: 462, column: 555)
!1913 = !DILocation(line: 462, column: 577, scope: !1911)
!1914 = !DILocation(line: 462, column: 562, scope: !1911)
!1915 = !DILocation(line: 462, column: 561, scope: !1912)
!1916 = !DILocation(line: 462, column: 600, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1911, file: !373, discriminator: 18)
!1918 = !DILocation(line: 462, column: 659, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1912, file: !373, discriminator: 17)
!1920 = !DILocation(line: 462, column: 639, scope: !1912)
!1921 = !DILocation(line: 462, column: 664, scope: !1912)
!1922 = !DILocation(line: 462, column: 677, scope: !1912)
!1923 = !DILocation(line: 462, column: 688, scope: !1912)
!1924 = !DILocation(line: 462, column: 624, scope: !1912)
!1925 = !DILocation(line: 462, column: 715, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1912, file: !373, discriminator: 20)
!1927 = !DILocation(line: 462, column: 695, scope: !1912)
!1928 = !DILocation(line: 462, column: 720, scope: !1912)
!1929 = !DILocation(line: 462, column: 624, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1912, file: !373, discriminator: 21)
!1931 = !DILocation(line: 462, column: 621, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1933, file: !373, discriminator: 23)
!1933 = !DILexicalBlockFile(scope: !1912, file: !373, discriminator: 22)
!1934 = !DILocation(line: 462, column: 752, scope: !1912)
!1935 = !DILocation(line: 462, column: 759, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1937, file: !373, discriminator: 24)
!1937 = !DILexicalBlockFile(scope: !1938, file: !373, discriminator: 16)
!1938 = distinct !DILexicalBlock(scope: !761, file: !373, line: 462, column: 759)
!1939 = !DILocation(line: 462, column: 761, scope: !1938)
!1940 = !DILocation(line: 462, column: 759, scope: !761)
!1941 = !DILocation(line: 462, column: 796, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1943, file: !373, discriminator: 25)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !373, line: 462, column: 780)
!1944 = !DILocation(line: 462, column: 801, scope: !1943)
!1945 = !DILocation(line: 462, column: 810, scope: !1943)
!1946 = !DILocation(line: 462, column: 836, scope: !1943)
!1947 = !DILocation(line: 462, column: 854, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1943, file: !373, discriminator: 28)
!1949 = !DILocation(line: 462, column: 859, scope: !1943)
!1950 = !DILocation(line: 462, column: 868, scope: !1943)
!1951 = !DILocation(line: 462, column: 780, scope: !1938)
!1952 = !DILocation(line: 462, column: 945, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !373, discriminator: 29)
!1954 = !DILexicalBlockFile(scope: !1955, file: !373, discriminator: 27)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !373, line: 462, column: 910)
!1956 = distinct !DILexicalBlock(scope: !1943, file: !373, line: 462, column: 904)
!1957 = !DILocation(line: 462, column: 926, scope: !1955)
!1958 = !DILocation(line: 462, column: 911, scope: !1955)
!1959 = !DILocation(line: 462, column: 910, scope: !1956)
!1960 = !DILocation(line: 462, column: 949, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1955, file: !373, discriminator: 32)
!1962 = !DILocation(line: 462, column: 1008, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1956, file: !373, discriminator: 31)
!1964 = !DILocation(line: 462, column: 988, scope: !1956)
!1965 = !DILocation(line: 462, column: 1013, scope: !1956)
!1966 = !DILocation(line: 462, column: 1026, scope: !1956)
!1967 = !DILocation(line: 462, column: 1037, scope: !1956)
!1968 = !DILocation(line: 462, column: 973, scope: !1956)
!1969 = !DILocation(line: 462, column: 1064, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1956, file: !373, discriminator: 34)
!1971 = !DILocation(line: 462, column: 1044, scope: !1956)
!1972 = !DILocation(line: 462, column: 1069, scope: !1956)
!1973 = !DILocation(line: 462, column: 973, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1956, file: !373, discriminator: 35)
!1975 = !DILocation(line: 462, column: 970, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1977, file: !373, discriminator: 37)
!1977 = !DILexicalBlockFile(scope: !1956, file: !373, discriminator: 36)
!1978 = !DILocation(line: 462, column: 1101, scope: !1956)
!1979 = !DILocation(line: 462, column: 901, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1981, file: !373, discriminator: 38)
!1981 = !DILexicalBlockFile(scope: !1943, file: !373, discriminator: 30)
!1982 = !DILocation(line: 462, column: 1141, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1984, file: !373, discriminator: 39)
!1984 = !DILexicalBlockFile(scope: !761, file: !373, discriminator: 26)
!1985 = !DILocation(line: 462, column: 1148, scope: !761)
!1986 = !DILocation(line: 462, column: 1151, scope: !761)
!1987 = !DILocation(line: 462, column: 1111, scope: !761)
!1988 = !DILocation(line: 462, column: 1104, scope: !761)
!1989 = !DILocation(line: 462, column: 1155, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !373, discriminator: 40)
!1991 = !DILexicalBlockFile(scope: !1992, file: !373, discriminator: 33)
!1992 = !DILexicalBlockFile(scope: !1993, file: !373, discriminator: 19)
!1993 = !DILexicalBlockFile(scope: !761, file: !373, discriminator: 7)
!1994 = !DILocation(line: 730, column: 28, scope: !385)
!1995 = !DILocation(line: 730, column: 42, scope: !385)
!1996 = !DILocation(line: 732, column: 5, scope: !385)
!1997 = !DILocation(line: 732, column: 22, scope: !385)
!1998 = !DILocation(line: 733, column: 5, scope: !385)
!1999 = !DILocation(line: 733, column: 23, scope: !385)
!2000 = !DILocation(line: 734, column: 5, scope: !385)
!2001 = !DILocation(line: 734, column: 22, scope: !385)
!2002 = !DILocation(line: 734, column: 28, scope: !385)
!2003 = !DILocation(line: 736, column: 26, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !385, file: !373, line: 736, column: 9)
!2005 = !DILocation(line: 736, column: 32, scope: !2004)
!2006 = !DILocation(line: 736, column: 43, scope: !2004)
!2007 = !DILocation(line: 736, column: 61, scope: !2004)
!2008 = !DILocation(line: 736, column: 9, scope: !385)
!2009 = !DILocation(line: 737, column: 22, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2004, file: !373, line: 736, column: 67)
!2011 = !DILocation(line: 739, column: 36, scope: !2010)
!2012 = !DILocation(line: 739, column: 42, scope: !2010)
!2013 = !DILocation(line: 739, column: 52, scope: !2010)
!2014 = !DILocation(line: 737, column: 9, scope: !2010)
!2015 = !DILocation(line: 740, column: 9, scope: !2010)
!2016 = !DILocation(line: 742, column: 61, scope: !385)
!2017 = !DILocation(line: 742, column: 51, scope: !385)
!2018 = !DILocation(line: 742, column: 82, scope: !385)
!2019 = !DILocation(line: 742, column: 88, scope: !385)
!2020 = !DILocation(line: 742, column: 98, scope: !385)
!2021 = !DILocation(line: 742, column: 66, scope: !385)
!2022 = !DILocation(line: 742, column: 35, scope: !385)
!2023 = !DILocation(line: 742, column: 13, scope: !385)
!2024 = !DILocation(line: 742, column: 10, scope: !385)
!2025 = !DILocation(line: 743, column: 21, scope: !385)
!2026 = !DILocation(line: 743, column: 20, scope: !385)
!2027 = !DILocation(line: 743, column: 5, scope: !385)
!2028 = !DILocation(line: 744, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !385, file: !373, line: 744, column: 9)
!2030 = !DILocation(line: 744, column: 18, scope: !2029)
!2031 = !DILocation(line: 744, column: 9, scope: !385)
!2032 = !DILocation(line: 745, column: 18, scope: !2029)
!2033 = !DILocation(line: 745, column: 9, scope: !2029)
!2034 = !DILocation(line: 746, column: 9, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !385, file: !373, line: 746, column: 9)
!2036 = !DILocation(line: 746, column: 18, scope: !2035)
!2037 = !DILocation(line: 746, column: 9, scope: !385)
!2038 = !DILocation(line: 748, column: 18, scope: !2035)
!2039 = !DILocation(line: 748, column: 16, scope: !2035)
!2040 = !DILocation(line: 748, column: 9, scope: !2035)
!2041 = !DILocation(line: 749, column: 9, scope: !402)
!2042 = !DILocation(line: 749, column: 16, scope: !402)
!2043 = !DILocation(line: 749, column: 9, scope: !385)
!2044 = !DILocation(line: 750, column: 25, scope: !402)
!2045 = !DILocation(line: 750, column: 12, scope: !402)
!2046 = !DILocation(line: 750, column: 35, scope: !402)
!2047 = !DILocation(line: 750, column: 44, scope: !402)
!2048 = !DILocation(line: 750, column: 9, scope: !402)
!2049 = !DILocation(line: 757, column: 30, scope: !401)
!2050 = !DILocation(line: 757, column: 34, scope: !401)
!2051 = !DILocation(line: 757, column: 18, scope: !401)
!2052 = !DILocation(line: 757, column: 16, scope: !401)
!2053 = !DILocation(line: 758, column: 13, scope: !400)
!2054 = !DILocation(line: 758, column: 20, scope: !400)
!2055 = !DILocation(line: 758, column: 13, scope: !401)
!2056 = !DILocation(line: 759, column: 29, scope: !399)
!2057 = !DILocation(line: 759, column: 28, scope: !399)
!2058 = !DILocation(line: 759, column: 13, scope: !399)
!2059 = !DILocation(line: 760, column: 17, scope: !398)
!2060 = !DILocation(line: 760, column: 26, scope: !398)
!2061 = !DILocation(line: 760, column: 17, scope: !399)
!2062 = !DILocation(line: 761, column: 21, scope: !396)
!2063 = !DILocation(line: 761, column: 25, scope: !396)
!2064 = !DILocation(line: 761, column: 21, scope: !397)
!2065 = !DILocation(line: 762, column: 33, scope: !396)
!2066 = !DILocation(line: 762, column: 41, scope: !396)
!2067 = !DILocation(line: 762, column: 21, scope: !396)
!2068 = !DILocation(line: 768, column: 21, scope: !395)
!2069 = !DILocation(line: 768, column: 26, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !394, file: !373, discriminator: 1)
!2071 = !DILocation(line: 768, column: 36, scope: !394)
!2072 = !DILocation(line: 768, column: 66, scope: !394)
!2073 = !DILocation(line: 768, column: 53, scope: !394)
!2074 = !DILocation(line: 768, column: 83, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !394, file: !373, line: 768, column: 80)
!2076 = !DILocation(line: 768, column: 100, scope: !2075)
!2077 = !DILocation(line: 768, column: 80, scope: !2075)
!2078 = !DILocation(line: 768, column: 110, scope: !2075)
!2079 = !DILocation(line: 768, column: 80, scope: !394)
!2080 = !DILocation(line: 768, column: 80, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !394, file: !373, discriminator: 2)
!2082 = !DILocation(line: 768, column: 141, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2075, file: !373, discriminator: 3)
!2084 = !DILocation(line: 768, column: 159, scope: !2075)
!2085 = !DILocation(line: 768, column: 169, scope: !2075)
!2086 = !DILocation(line: 768, column: 194, scope: !2075)
!2087 = !DILocation(line: 768, column: 125, scope: !2075)
!2088 = !DILocation(line: 768, column: 213, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !395, file: !373, discriminator: 4)
!2090 = !DILocation(line: 768, column: 213, scope: !394)
!2091 = !DILocation(line: 768, column: 213, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !394, file: !373, discriminator: 5)
!2093 = !DILocation(line: 769, column: 37, scope: !395)
!2094 = !DILocation(line: 769, column: 24, scope: !395)
!2095 = !DILocation(line: 769, column: 44, scope: !395)
!2096 = !DILocation(line: 769, column: 53, scope: !395)
!2097 = !DILocation(line: 770, column: 30, scope: !395)
!2098 = !DILocation(line: 770, column: 28, scope: !395)
!2099 = !DILocation(line: 772, column: 13, scope: !397)
!2100 = !DILocation(line: 774, column: 17, scope: !404)
!2101 = !DILocation(line: 774, column: 34, scope: !404)
!2102 = !DILocation(line: 776, column: 25, scope: !404)
!2103 = !DILocation(line: 776, column: 31, scope: !404)
!2104 = !DILocation(line: 776, column: 24, scope: !404)
!2105 = !DILocation(line: 776, column: 48, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !404, file: !373, discriminator: 1)
!2107 = !DILocation(line: 776, column: 54, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !404, file: !373, discriminator: 2)
!2109 = !DILocation(line: 776, column: 22, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2111, file: !373, discriminator: 4)
!2111 = !DILexicalBlockFile(scope: !404, file: !373, discriminator: 3)
!2112 = !DILocation(line: 777, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !404, file: !373, line: 777, column: 21)
!2114 = !DILocation(line: 777, column: 26, scope: !2113)
!2115 = !DILocation(line: 777, column: 21, scope: !404)
!2116 = !DILocation(line: 778, column: 33, scope: !2113)
!2117 = !DILocation(line: 778, column: 41, scope: !2113)
!2118 = !DILocation(line: 778, column: 21, scope: !2113)
!2119 = !DILocation(line: 780, column: 34, scope: !2113)
!2120 = !DILocation(line: 780, column: 42, scope: !2113)
!2121 = !DILocation(line: 780, column: 21, scope: !2113)
!2122 = !DILocation(line: 781, column: 13, scope: !398)
!2123 = !DILocation(line: 782, column: 9, scope: !399)
!2124 = !DILocation(line: 784, column: 25, scope: !385)
!2125 = !DILocation(line: 784, column: 12, scope: !385)
!2126 = !DILocation(line: 784, column: 5, scope: !385)
!2127 = !DILocation(line: 785, column: 1, scope: !385)
!2128 = !DILocation(line: 218, column: 33, scope: !766)
!2129 = !DILocation(line: 219, column: 34, scope: !766)
!2130 = !DILocation(line: 219, column: 58, scope: !766)
!2131 = !DILocation(line: 221, column: 6, scope: !766)
!2132 = !DILocation(line: 221, column: 11, scope: !766)
!2133 = !DILocation(line: 222, column: 6, scope: !766)
!2134 = !DILocation(line: 222, column: 13, scope: !766)
!2135 = !DILocation(line: 224, column: 9, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !766, file: !373, line: 224, column: 9)
!2137 = !DILocation(line: 224, column: 14, scope: !2136)
!2138 = !DILocation(line: 224, column: 28, scope: !2136)
!2139 = !DILocation(line: 224, column: 31, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2136, file: !373, discriminator: 1)
!2141 = !DILocation(line: 224, column: 37, scope: !2136)
!2142 = !DILocation(line: 224, column: 49, scope: !2136)
!2143 = !DILocation(line: 224, column: 9, scope: !766)
!2144 = !DILocation(line: 228, column: 28, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !373, line: 228, column: 13)
!2146 = distinct !DILexicalBlock(scope: !2136, file: !373, line: 224, column: 64)
!2147 = !DILocation(line: 228, column: 16, scope: !2145)
!2148 = !DILocation(line: 228, column: 36, scope: !2145)
!2149 = !DILocation(line: 228, column: 45, scope: !2145)
!2150 = !DILocation(line: 228, column: 13, scope: !2146)
!2151 = !DILocation(line: 229, column: 21, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !373, line: 228, column: 70)
!2153 = !DILocation(line: 229, column: 14, scope: !2152)
!2154 = !DILocation(line: 229, column: 19, scope: !2152)
!2155 = !DILocation(line: 230, column: 20, scope: !2152)
!2156 = !DILocation(line: 230, column: 26, scope: !2152)
!2157 = !DILocation(line: 230, column: 18, scope: !2152)
!2158 = !DILocation(line: 231, column: 9, scope: !2152)
!2159 = !DILocation(line: 232, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2146, file: !373, line: 232, column: 13)
!2161 = !DILocation(line: 232, column: 18, scope: !2160)
!2162 = !DILocation(line: 233, column: 13, scope: !2160)
!2163 = !DILocation(line: 233, column: 16, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2160, file: !373, discriminator: 1)
!2165 = !DILocation(line: 233, column: 22, scope: !2160)
!2166 = !DILocation(line: 233, column: 34, scope: !2160)
!2167 = !DILocation(line: 234, column: 13, scope: !2160)
!2168 = !DILocation(line: 234, column: 32, scope: !2164)
!2169 = !DILocation(line: 234, column: 20, scope: !2160)
!2170 = !DILocation(line: 234, column: 40, scope: !2160)
!2171 = !DILocation(line: 234, column: 49, scope: !2160)
!2172 = !DILocation(line: 234, column: 75, scope: !2160)
!2173 = !DILocation(line: 234, column: 93, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2160, file: !373, discriminator: 2)
!2175 = !DILocation(line: 234, column: 81, scope: !2160)
!2176 = !DILocation(line: 234, column: 101, scope: !2160)
!2177 = !DILocation(line: 234, column: 110, scope: !2160)
!2178 = !DILocation(line: 232, column: 13, scope: !2146)
!2179 = !DILocation(line: 235, column: 23, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2160, file: !373, line: 234, column: 146)
!2181 = !DILocation(line: 235, column: 14, scope: !2180)
!2182 = !DILocation(line: 235, column: 21, scope: !2180)
!2183 = !DILocation(line: 237, column: 9, scope: !2180)
!2184 = !DILocation(line: 238, column: 5, scope: !2146)
!2185 = !DILocation(line: 239, column: 1, scope: !766)
!2186 = !DILocation(line: 32, column: 23, scope: !773)
!2187 = !DILocation(line: 32, column: 37, scope: !773)
!2188 = !DILocation(line: 34, column: 5, scope: !773)
!2189 = !DILocation(line: 34, column: 22, scope: !773)
!2190 = !DILocation(line: 36, column: 36, scope: !773)
!2191 = !DILocation(line: 36, column: 16, scope: !773)
!2192 = !DILocation(line: 36, column: 12, scope: !773)
!2193 = !DILocation(line: 37, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !773, file: !373, line: 37, column: 9)
!2195 = !DILocation(line: 37, column: 9, scope: !773)
!2196 = !DILocation(line: 38, column: 22, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !373, line: 37, column: 17)
!2198 = !DILocation(line: 38, column: 30, scope: !2197)
!2199 = !DILocation(line: 38, column: 34, scope: !2197)
!2200 = !DILocation(line: 38, column: 9, scope: !2197)
!2201 = !DILocation(line: 39, column: 27, scope: !2197)
!2202 = !DILocation(line: 39, column: 9, scope: !2197)
!2203 = !DILocation(line: 40, column: 5, scope: !2197)
!2204 = !DILocation(line: 41, column: 12, scope: !773)
!2205 = !DILocation(line: 42, column: 1, scope: !773)
!2206 = !DILocation(line: 41, column: 5, scope: !773)
!2207 = !DILocation(line: 256, column: 30, scope: !780)
!2208 = !DILocation(line: 256, column: 56, scope: !780)
!2209 = !DILocation(line: 258, column: 5, scope: !780)
!2210 = !DILocation(line: 258, column: 22, scope: !780)
!2211 = !DILocation(line: 258, column: 30, scope: !780)
!2212 = !DILocation(line: 258, column: 29, scope: !780)
!2213 = !DILocation(line: 260, column: 5, scope: !780)
!2214 = !DILocation(line: 260, column: 13, scope: !780)
!2215 = !DILocation(line: 260, column: 21, scope: !780)
!2216 = !DILocation(line: 261, column: 23, scope: !780)
!2217 = !DILocation(line: 261, column: 5, scope: !780)
!2218 = !DILocation(line: 261, column: 13, scope: !780)
!2219 = !DILocation(line: 261, column: 21, scope: !780)
!2220 = !DILocation(line: 262, column: 9, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !780, file: !373, line: 262, column: 9)
!2222 = !DILocation(line: 262, column: 14, scope: !2221)
!2223 = !DILocation(line: 262, column: 9, scope: !780)
!2224 = !DILocation(line: 263, column: 25, scope: !2221)
!2225 = !DILocation(line: 263, column: 9, scope: !2221)
!2226 = !DILocation(line: 263, column: 15, scope: !2221)
!2227 = !DILocation(line: 263, column: 23, scope: !2221)
!2228 = !DILocation(line: 264, column: 13, scope: !780)
!2229 = !DILocation(line: 264, column: 6, scope: !780)
!2230 = !DILocation(line: 264, column: 11, scope: !780)
!2231 = !DILocation(line: 265, column: 1, scope: !780)
!2232 = !DILocation(line: 243, column: 31, scope: !787)
!2233 = !DILocation(line: 243, column: 56, scope: !787)
!2234 = !DILocation(line: 245, column: 23, scope: !787)
!2235 = !DILocation(line: 245, column: 5, scope: !787)
!2236 = !DILocation(line: 245, column: 13, scope: !787)
!2237 = !DILocation(line: 245, column: 21, scope: !787)
!2238 = !DILocation(line: 246, column: 23, scope: !787)
!2239 = !DILocation(line: 246, column: 29, scope: !787)
!2240 = !DILocation(line: 246, column: 5, scope: !787)
!2241 = !DILocation(line: 246, column: 13, scope: !787)
!2242 = !DILocation(line: 246, column: 21, scope: !787)
!2243 = !DILocation(line: 247, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !787, file: !373, line: 247, column: 9)
!2245 = !DILocation(line: 247, column: 15, scope: !2244)
!2246 = !DILocation(line: 247, column: 23, scope: !2244)
!2247 = !DILocation(line: 247, column: 9, scope: !787)
!2248 = !DILocation(line: 248, column: 34, scope: !2244)
!2249 = !DILocation(line: 248, column: 9, scope: !2244)
!2250 = !DILocation(line: 248, column: 15, scope: !2244)
!2251 = !DILocation(line: 248, column: 24, scope: !2244)
!2252 = !DILocation(line: 248, column: 32, scope: !2244)
!2253 = !DILocation(line: 249, column: 21, scope: !787)
!2254 = !DILocation(line: 249, column: 5, scope: !787)
!2255 = !DILocation(line: 249, column: 11, scope: !787)
!2256 = !DILocation(line: 249, column: 19, scope: !787)
!2257 = !DILocation(line: 250, column: 1, scope: !787)
!2258 = !DILocation(line: 789, column: 30, scope: !405)
!2259 = !DILocation(line: 789, column: 44, scope: !405)
!2260 = !DILocation(line: 791, column: 5, scope: !405)
!2261 = !DILocation(line: 791, column: 22, scope: !405)
!2262 = !DILocation(line: 792, column: 5, scope: !405)
!2263 = !DILocation(line: 792, column: 23, scope: !405)
!2264 = !DILocation(line: 793, column: 5, scope: !405)
!2265 = !DILocation(line: 793, column: 22, scope: !405)
!2266 = !DILocation(line: 793, column: 28, scope: !405)
!2267 = !DILocation(line: 795, column: 26, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !405, file: !373, line: 795, column: 9)
!2269 = !DILocation(line: 795, column: 32, scope: !2268)
!2270 = !DILocation(line: 795, column: 43, scope: !2268)
!2271 = !DILocation(line: 795, column: 61, scope: !2268)
!2272 = !DILocation(line: 795, column: 9, scope: !405)
!2273 = !DILocation(line: 796, column: 22, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !373, line: 795, column: 67)
!2275 = !DILocation(line: 798, column: 36, scope: !2274)
!2276 = !DILocation(line: 798, column: 42, scope: !2274)
!2277 = !DILocation(line: 798, column: 52, scope: !2274)
!2278 = !DILocation(line: 796, column: 9, scope: !2274)
!2279 = !DILocation(line: 799, column: 9, scope: !2274)
!2280 = !DILocation(line: 801, column: 61, scope: !405)
!2281 = !DILocation(line: 801, column: 51, scope: !405)
!2282 = !DILocation(line: 801, column: 82, scope: !405)
!2283 = !DILocation(line: 801, column: 88, scope: !405)
!2284 = !DILocation(line: 801, column: 98, scope: !405)
!2285 = !DILocation(line: 801, column: 66, scope: !405)
!2286 = !DILocation(line: 801, column: 35, scope: !405)
!2287 = !DILocation(line: 801, column: 13, scope: !405)
!2288 = !DILocation(line: 801, column: 10, scope: !405)
!2289 = !DILocation(line: 802, column: 21, scope: !405)
!2290 = !DILocation(line: 802, column: 20, scope: !405)
!2291 = !DILocation(line: 802, column: 5, scope: !405)
!2292 = !DILocation(line: 803, column: 9, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !405, file: !373, line: 803, column: 9)
!2294 = !DILocation(line: 803, column: 18, scope: !2293)
!2295 = !DILocation(line: 803, column: 9, scope: !405)
!2296 = !DILocation(line: 804, column: 18, scope: !2293)
!2297 = !DILocation(line: 804, column: 9, scope: !2293)
!2298 = !DILocation(line: 805, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !405, file: !373, line: 805, column: 9)
!2300 = !DILocation(line: 805, column: 18, scope: !2299)
!2301 = !DILocation(line: 805, column: 9, scope: !405)
!2302 = !DILocation(line: 807, column: 18, scope: !2299)
!2303 = !DILocation(line: 807, column: 16, scope: !2299)
!2304 = !DILocation(line: 807, column: 9, scope: !2299)
!2305 = !DILocation(line: 808, column: 9, scope: !417)
!2306 = !DILocation(line: 808, column: 16, scope: !417)
!2307 = !DILocation(line: 808, column: 9, scope: !405)
!2308 = !DILocation(line: 809, column: 25, scope: !417)
!2309 = !DILocation(line: 809, column: 12, scope: !417)
!2310 = !DILocation(line: 809, column: 35, scope: !417)
!2311 = !DILocation(line: 809, column: 44, scope: !417)
!2312 = !DILocation(line: 809, column: 9, scope: !417)
!2313 = !DILocation(line: 816, column: 30, scope: !416)
!2314 = !DILocation(line: 816, column: 34, scope: !416)
!2315 = !DILocation(line: 816, column: 18, scope: !416)
!2316 = !DILocation(line: 816, column: 16, scope: !416)
!2317 = !DILocation(line: 817, column: 13, scope: !415)
!2318 = !DILocation(line: 817, column: 20, scope: !415)
!2319 = !DILocation(line: 817, column: 13, scope: !416)
!2320 = !DILocation(line: 818, column: 13, scope: !414)
!2321 = !DILocation(line: 818, column: 30, scope: !414)
!2322 = !DILocation(line: 820, column: 34, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !414, file: !373, line: 820, column: 17)
!2324 = !DILocation(line: 820, column: 17, scope: !2323)
!2325 = !DILocation(line: 820, column: 17, scope: !414)
!2326 = !DILocation(line: 821, column: 31, scope: !2323)
!2327 = !DILocation(line: 821, column: 19, scope: !2323)
!2328 = !DILocation(line: 821, column: 41, scope: !2323)
!2329 = !DILocation(line: 821, column: 50, scope: !2323)
!2330 = !DILocation(line: 821, column: 17, scope: !2323)
!2331 = !DILocation(line: 823, column: 31, scope: !2323)
!2332 = !DILocation(line: 823, column: 19, scope: !2323)
!2333 = !DILocation(line: 823, column: 41, scope: !2323)
!2334 = !DILocation(line: 823, column: 50, scope: !2323)
!2335 = !DILocation(line: 824, column: 29, scope: !414)
!2336 = !DILocation(line: 824, column: 28, scope: !414)
!2337 = !DILocation(line: 824, column: 13, scope: !414)
!2338 = !DILocation(line: 825, column: 17, scope: !423)
!2339 = !DILocation(line: 825, column: 26, scope: !423)
!2340 = !DILocation(line: 825, column: 17, scope: !414)
!2341 = !DILocation(line: 826, column: 21, scope: !421)
!2342 = !DILocation(line: 826, column: 27, scope: !421)
!2343 = !DILocation(line: 826, column: 21, scope: !422)
!2344 = !DILocation(line: 831, column: 21, scope: !420)
!2345 = !DILocation(line: 831, column: 26, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !419, file: !373, discriminator: 1)
!2347 = !DILocation(line: 831, column: 36, scope: !419)
!2348 = !DILocation(line: 831, column: 66, scope: !419)
!2349 = !DILocation(line: 831, column: 53, scope: !419)
!2350 = !DILocation(line: 831, column: 83, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !419, file: !373, line: 831, column: 80)
!2352 = !DILocation(line: 831, column: 100, scope: !2351)
!2353 = !DILocation(line: 831, column: 80, scope: !2351)
!2354 = !DILocation(line: 831, column: 110, scope: !2351)
!2355 = !DILocation(line: 831, column: 80, scope: !419)
!2356 = !DILocation(line: 831, column: 80, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !419, file: !373, discriminator: 2)
!2358 = !DILocation(line: 831, column: 141, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2351, file: !373, discriminator: 3)
!2360 = !DILocation(line: 831, column: 159, scope: !2351)
!2361 = !DILocation(line: 831, column: 169, scope: !2351)
!2362 = !DILocation(line: 831, column: 194, scope: !2351)
!2363 = !DILocation(line: 831, column: 125, scope: !2351)
!2364 = !DILocation(line: 831, column: 213, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !420, file: !373, discriminator: 4)
!2366 = !DILocation(line: 831, column: 213, scope: !419)
!2367 = !DILocation(line: 831, column: 213, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !419, file: !373, discriminator: 5)
!2369 = !DILocation(line: 832, column: 46, scope: !420)
!2370 = !DILocation(line: 832, column: 44, scope: !420)
!2371 = !DILocation(line: 832, column: 24, scope: !420)
!2372 = !DILocation(line: 832, column: 55, scope: !420)
!2373 = !DILocation(line: 832, column: 64, scope: !420)
!2374 = !DILocation(line: 833, column: 21, scope: !420)
!2375 = !DILocation(line: 835, column: 24, scope: !422)
!2376 = !DILocation(line: 835, column: 22, scope: !422)
!2377 = !DILocation(line: 836, column: 13, scope: !422)
!2378 = !DILocation(line: 838, column: 25, scope: !423)
!2379 = !DILocation(line: 838, column: 31, scope: !423)
!2380 = !DILocation(line: 838, column: 24, scope: !423)
!2381 = !DILocation(line: 838, column: 48, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !423, file: !373, discriminator: 1)
!2383 = !DILocation(line: 838, column: 54, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !423, file: !373, discriminator: 2)
!2385 = !DILocation(line: 838, column: 22, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !373, discriminator: 4)
!2387 = !DILexicalBlockFile(scope: !423, file: !373, discriminator: 3)
!2388 = !DILocation(line: 840, column: 17, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !414, file: !373, line: 840, column: 17)
!2390 = !DILocation(line: 840, column: 22, scope: !2389)
!2391 = !DILocation(line: 840, column: 17, scope: !414)
!2392 = !DILocation(line: 841, column: 29, scope: !2389)
!2393 = !DILocation(line: 841, column: 37, scope: !2389)
!2394 = !DILocation(line: 841, column: 17, scope: !2389)
!2395 = !DILocation(line: 843, column: 30, scope: !2389)
!2396 = !DILocation(line: 843, column: 38, scope: !2389)
!2397 = !DILocation(line: 843, column: 17, scope: !2389)
!2398 = !DILocation(line: 840, column: 34, scope: !2389)
!2399 = !DILocation(line: 846, column: 9, scope: !415)
!2400 = !DILocation(line: 846, column: 9, scope: !414)
!2401 = !DILocation(line: 848, column: 25, scope: !405)
!2402 = !DILocation(line: 848, column: 12, scope: !405)
!2403 = !DILocation(line: 848, column: 5, scope: !405)
!2404 = !DILocation(line: 849, column: 1, scope: !405)
!2405 = !DILocation(line: 853, column: 31, scope: !424)
!2406 = !DILocation(line: 855, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !424, file: !373, line: 855, column: 9)
!2408 = !DILocation(line: 855, column: 13, scope: !2407)
!2409 = !DILocation(line: 855, column: 27, scope: !2407)
!2410 = !DILocation(line: 855, column: 47, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2407, file: !373, discriminator: 1)
!2412 = !DILocation(line: 855, column: 54, scope: !2407)
!2413 = !DILocation(line: 855, column: 63, scope: !2407)
!2414 = !DILocation(line: 855, column: 88, scope: !2407)
!2415 = !DILocation(line: 855, column: 122, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2407, file: !373, discriminator: 2)
!2417 = !DILocation(line: 855, column: 129, scope: !2407)
!2418 = !DILocation(line: 855, column: 91, scope: !2407)
!2419 = !DILocation(line: 855, column: 163, scope: !2407)
!2420 = !DILocation(line: 855, column: 182, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2407, file: !373, discriminator: 3)
!2422 = !DILocation(line: 855, column: 189, scope: !2407)
!2423 = !DILocation(line: 855, column: 198, scope: !2407)
!2424 = !DILocation(line: 855, column: 224, scope: !2407)
!2425 = !DILocation(line: 855, column: 242, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2407, file: !373, discriminator: 4)
!2427 = !DILocation(line: 855, column: 249, scope: !2407)
!2428 = !DILocation(line: 855, column: 258, scope: !2407)
!2429 = !DILocation(line: 855, column: 9, scope: !424)
!2430 = !DILocation(line: 856, column: 9, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2407, file: !373, line: 855, column: 295)
!2432 = !DILocation(line: 857, column: 9, scope: !2431)
!2433 = !DILocation(line: 859, column: 48, scope: !424)
!2434 = !DILocation(line: 859, column: 28, scope: !424)
!2435 = !DILocation(line: 859, column: 55, scope: !424)
!2436 = !DILocation(line: 859, column: 68, scope: !424)
!2437 = !DILocation(line: 859, column: 79, scope: !424)
!2438 = !DILocation(line: 859, column: 13, scope: !424)
!2439 = !DILocation(line: 859, column: 106, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !424, file: !373, discriminator: 1)
!2441 = !DILocation(line: 859, column: 86, scope: !424)
!2442 = !DILocation(line: 859, column: 113, scope: !424)
!2443 = !DILocation(line: 859, column: 13, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !424, file: !373, discriminator: 2)
!2445 = !DILocation(line: 859, column: 5, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2447, file: !373, discriminator: 4)
!2447 = !DILexicalBlockFile(scope: !424, file: !373, discriminator: 3)
!2448 = !DILocation(line: 860, column: 1, scope: !424)
!2449 = !DILocation(line: 883, column: 34, scope: !427)
!2450 = !DILocation(line: 885, column: 5, scope: !427)
!2451 = !DILocation(line: 885, column: 23, scope: !427)
!2452 = !DILocation(line: 887, column: 9, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !427, file: !373, line: 887, column: 9)
!2454 = !DILocation(line: 887, column: 16, scope: !2453)
!2455 = !DILocation(line: 888, column: 9, scope: !2453)
!2456 = !DILocation(line: 888, column: 29, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2453, file: !373, discriminator: 1)
!2458 = !DILocation(line: 888, column: 39, scope: !2453)
!2459 = !DILocation(line: 888, column: 50, scope: !2453)
!2460 = !DILocation(line: 888, column: 68, scope: !2453)
!2461 = !DILocation(line: 889, column: 9, scope: !2453)
!2462 = !DILocation(line: 889, column: 12, scope: !2457)
!2463 = !DILocation(line: 889, column: 20, scope: !2453)
!2464 = !DILocation(line: 889, column: 30, scope: !2453)
!2465 = !DILocation(line: 887, column: 9, scope: !427)
!2466 = !DILocation(line: 890, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2453, file: !373, line: 889, column: 36)
!2468 = !DILocation(line: 891, column: 9, scope: !2467)
!2469 = !DILocation(line: 893, column: 61, scope: !427)
!2470 = !DILocation(line: 893, column: 51, scope: !427)
!2471 = !DILocation(line: 893, column: 86, scope: !427)
!2472 = !DILocation(line: 893, column: 96, scope: !427)
!2473 = !DILocation(line: 893, column: 106, scope: !427)
!2474 = !DILocation(line: 893, column: 70, scope: !427)
!2475 = !DILocation(line: 893, column: 35, scope: !427)
!2476 = !DILocation(line: 893, column: 13, scope: !427)
!2477 = !DILocation(line: 893, column: 10, scope: !427)
!2478 = !DILocation(line: 895, column: 10, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !427, file: !373, line: 895, column: 9)
!2480 = !DILocation(line: 895, column: 9, scope: !2479)
!2481 = !DILocation(line: 895, column: 15, scope: !2479)
!2482 = !DILocation(line: 895, column: 29, scope: !2479)
!2483 = !DILocation(line: 895, column: 34, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2479, file: !373, discriminator: 1)
!2485 = !DILocation(line: 895, column: 33, scope: !2479)
!2486 = !DILocation(line: 895, column: 41, scope: !2479)
!2487 = !DILocation(line: 895, column: 53, scope: !2479)
!2488 = !DILocation(line: 895, column: 9, scope: !427)
!2489 = !DILocation(line: 896, column: 24, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2479, file: !373, line: 895, column: 68)
!2491 = !DILocation(line: 896, column: 23, scope: !2490)
!2492 = !DILocation(line: 896, column: 9, scope: !2490)
!2493 = !DILocation(line: 897, column: 14, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !373, line: 897, column: 13)
!2495 = !DILocation(line: 897, column: 13, scope: !2494)
!2496 = !DILocation(line: 897, column: 19, scope: !2494)
!2497 = !DILocation(line: 897, column: 33, scope: !2494)
!2498 = !DILocation(line: 897, column: 38, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2494, file: !373, discriminator: 1)
!2500 = !DILocation(line: 897, column: 37, scope: !2494)
!2501 = !DILocation(line: 897, column: 45, scope: !2494)
!2502 = !DILocation(line: 897, column: 57, scope: !2494)
!2503 = !DILocation(line: 897, column: 13, scope: !2490)
!2504 = !DILocation(line: 898, column: 28, scope: !2494)
!2505 = !DILocation(line: 898, column: 27, scope: !2494)
!2506 = !DILocation(line: 898, column: 13, scope: !2494)
!2507 = !DILocation(line: 899, column: 5, scope: !2490)
!2508 = !DILocation(line: 900, column: 10, scope: !433)
!2509 = !DILocation(line: 900, column: 9, scope: !433)
!2510 = !DILocation(line: 900, column: 15, scope: !433)
!2511 = !DILocation(line: 900, column: 9, scope: !427)
!2512 = !DILocation(line: 901, column: 9, scope: !432)
!2513 = !DILocation(line: 901, column: 26, scope: !432)
!2514 = !DILocation(line: 901, column: 37, scope: !432)
!2515 = !DILocation(line: 901, column: 36, scope: !432)
!2516 = !DILocation(line: 902, column: 9, scope: !432)
!2517 = !DILocation(line: 902, column: 20, scope: !432)
!2518 = !DILocation(line: 902, column: 55, scope: !432)
!2519 = !DILocation(line: 902, column: 28, scope: !432)
!2520 = !DILocation(line: 903, column: 9, scope: !432)
!2521 = !DILocation(line: 903, column: 13, scope: !432)
!2522 = !DILocation(line: 903, column: 29, scope: !432)
!2523 = !DILocation(line: 904, column: 9, scope: !432)
!2524 = !DILocation(line: 904, column: 19, scope: !432)
!2525 = !DILocation(line: 904, column: 30, scope: !432)
!2526 = !DILocation(line: 904, column: 42, scope: !432)
!2527 = !DILocation(line: 906, column: 13, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !432, file: !373, line: 906, column: 13)
!2529 = !DILocation(line: 906, column: 13, scope: !432)
!2530 = !DILocation(line: 907, column: 13, scope: !2528)
!2531 = !DILocation(line: 908, column: 13, scope: !441)
!2532 = !DILocation(line: 908, column: 19, scope: !441)
!2533 = !DILocation(line: 908, column: 13, scope: !432)
!2534 = !DILocation(line: 909, column: 13, scope: !440)
!2535 = !DILocation(line: 909, column: 23, scope: !440)
!2536 = !DILocation(line: 909, column: 34, scope: !440)
!2537 = !DILocation(line: 909, column: 43, scope: !440)
!2538 = !DILocation(line: 911, column: 13, scope: !440)
!2539 = !DILocation(line: 911, column: 22, scope: !440)
!2540 = !DILocation(line: 911, column: 34, scope: !440)
!2541 = !DILocation(line: 912, column: 27, scope: !440)
!2542 = !DILocation(line: 912, column: 13, scope: !440)
!2543 = !DILocation(line: 913, column: 17, scope: !445)
!2544 = !DILocation(line: 913, column: 26, scope: !445)
!2545 = !DILocation(line: 913, column: 17, scope: !440)
!2546 = !DILocation(line: 914, column: 34, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !444, file: !373, line: 914, column: 21)
!2548 = !DILocation(line: 914, column: 22, scope: !2547)
!2549 = !DILocation(line: 914, column: 44, scope: !2547)
!2550 = !DILocation(line: 914, column: 54, scope: !2547)
!2551 = !DILocation(line: 914, column: 21, scope: !444)
!2552 = !DILocation(line: 915, column: 37, scope: !2547)
!2553 = !DILocation(line: 915, column: 46, scope: !2547)
!2554 = !DILocation(line: 915, column: 21, scope: !2547)
!2555 = !DILocation(line: 916, column: 17, scope: !444)
!2556 = !DILocation(line: 916, column: 22, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !443, file: !373, discriminator: 1)
!2558 = !DILocation(line: 916, column: 32, scope: !443)
!2559 = !DILocation(line: 916, column: 62, scope: !443)
!2560 = !DILocation(line: 916, column: 81, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !443, file: !373, line: 916, column: 78)
!2562 = !DILocation(line: 916, column: 98, scope: !2561)
!2563 = !DILocation(line: 916, column: 78, scope: !2561)
!2564 = !DILocation(line: 916, column: 108, scope: !2561)
!2565 = !DILocation(line: 916, column: 78, scope: !443)
!2566 = !DILocation(line: 916, column: 78, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !443, file: !373, discriminator: 2)
!2568 = !DILocation(line: 916, column: 139, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2561, file: !373, discriminator: 3)
!2570 = !DILocation(line: 916, column: 157, scope: !2561)
!2571 = !DILocation(line: 916, column: 167, scope: !2561)
!2572 = !DILocation(line: 916, column: 192, scope: !2561)
!2573 = !DILocation(line: 916, column: 123, scope: !2561)
!2574 = !DILocation(line: 916, column: 211, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !444, file: !373, discriminator: 4)
!2576 = !DILocation(line: 916, column: 211, scope: !443)
!2577 = !DILocation(line: 916, column: 211, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !443, file: !373, discriminator: 5)
!2579 = !DILocation(line: 917, column: 13, scope: !444)
!2580 = !DILocation(line: 918, column: 9, scope: !441)
!2581 = !DILocation(line: 918, column: 9, scope: !440)
!2582 = !DILocation(line: 920, column: 13, scope: !447)
!2583 = !DILocation(line: 920, column: 23, scope: !447)
!2584 = !DILocation(line: 921, column: 13, scope: !447)
!2585 = !DILocation(line: 921, column: 24, scope: !447)
!2586 = !DILocation(line: 923, column: 33, scope: !447)
!2587 = !DILocation(line: 923, column: 39, scope: !447)
!2588 = !DILocation(line: 923, column: 21, scope: !447)
!2589 = !DILocation(line: 923, column: 19, scope: !447)
!2590 = !DILocation(line: 924, column: 17, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !447, file: !373, line: 924, column: 17)
!2592 = !DILocation(line: 924, column: 23, scope: !2591)
!2593 = !DILocation(line: 924, column: 17, scope: !447)
!2594 = !DILocation(line: 925, column: 21, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !373, line: 925, column: 21)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !373, line: 924, column: 38)
!2597 = !DILocation(line: 925, column: 21, scope: !2596)
!2598 = !DILocation(line: 926, column: 21, scope: !2595)
!2599 = !DILocation(line: 927, column: 17, scope: !2596)
!2600 = !DILocation(line: 930, column: 20, scope: !452)
!2601 = !DILocation(line: 930, column: 18, scope: !452)
!2602 = !DILocation(line: 930, column: 25, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !373, discriminator: 2)
!2604 = !DILexicalBlockFile(scope: !451, file: !373, discriminator: 1)
!2605 = !DILocation(line: 930, column: 29, scope: !451)
!2606 = !DILocation(line: 930, column: 27, scope: !451)
!2607 = !DILocation(line: 930, column: 13, scope: !452)
!2608 = !DILocation(line: 931, column: 17, scope: !450)
!2609 = !DILocation(line: 931, column: 34, scope: !450)
!2610 = !DILocation(line: 931, column: 41, scope: !450)
!2611 = !DILocation(line: 931, column: 50, scope: !450)
!2612 = !DILocation(line: 933, column: 34, scope: !456)
!2613 = !DILocation(line: 933, column: 22, scope: !456)
!2614 = !DILocation(line: 933, column: 44, scope: !456)
!2615 = !DILocation(line: 933, column: 54, scope: !456)
!2616 = !DILocation(line: 933, column: 21, scope: !450)
!2617 = !DILocation(line: 935, column: 37, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !456, file: !373, line: 934, column: 17)
!2619 = !DILocation(line: 935, column: 24, scope: !2618)
!2620 = !DILocation(line: 935, column: 48, scope: !2618)
!2621 = !DILocation(line: 935, column: 57, scope: !2618)
!2622 = !DILocation(line: 936, column: 80, scope: !2618)
!2623 = !DILocation(line: 936, column: 67, scope: !2618)
!2624 = !DILocation(line: 936, column: 58, scope: !2618)
!2625 = !DILocation(line: 936, column: 60, scope: !2618)
!2626 = !DILocation(line: 936, column: 41, scope: !2618)
!2627 = !DILocation(line: 936, column: 23, scope: !2618)
!2628 = !DILocation(line: 936, column: 50, scope: !2618)
!2629 = !DILocation(line: 936, column: 22, scope: !2618)
!2630 = !DILocation(line: 936, column: 65, scope: !2618)
!2631 = !DILocation(line: 937, column: 71, scope: !2618)
!2632 = !DILocation(line: 937, column: 80, scope: !2618)
!2633 = !DILocation(line: 937, column: 58, scope: !2618)
!2634 = !DILocation(line: 937, column: 60, scope: !2618)
!2635 = !DILocation(line: 937, column: 64, scope: !2618)
!2636 = !DILocation(line: 937, column: 41, scope: !2618)
!2637 = !DILocation(line: 937, column: 23, scope: !2618)
!2638 = !DILocation(line: 937, column: 50, scope: !2618)
!2639 = !DILocation(line: 937, column: 22, scope: !2618)
!2640 = !DILocation(line: 937, column: 69, scope: !2618)
!2641 = !DILocation(line: 938, column: 17, scope: !2618)
!2642 = !DILocation(line: 940, column: 21, scope: !455)
!2643 = !DILocation(line: 940, column: 26, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !454, file: !373, discriminator: 1)
!2645 = !DILocation(line: 940, column: 36, scope: !454)
!2646 = !DILocation(line: 940, column: 66, scope: !454)
!2647 = !DILocation(line: 940, column: 75, scope: !454)
!2648 = !DILocation(line: 940, column: 97, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !454, file: !373, line: 940, column: 94)
!2650 = !DILocation(line: 940, column: 114, scope: !2649)
!2651 = !DILocation(line: 940, column: 94, scope: !2649)
!2652 = !DILocation(line: 940, column: 124, scope: !2649)
!2653 = !DILocation(line: 940, column: 94, scope: !454)
!2654 = !DILocation(line: 940, column: 94, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !454, file: !373, discriminator: 2)
!2656 = !DILocation(line: 940, column: 155, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2649, file: !373, discriminator: 3)
!2658 = !DILocation(line: 940, column: 173, scope: !2649)
!2659 = !DILocation(line: 940, column: 183, scope: !2649)
!2660 = !DILocation(line: 940, column: 208, scope: !2649)
!2661 = !DILocation(line: 940, column: 139, scope: !2649)
!2662 = !DILocation(line: 940, column: 227, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !455, file: !373, discriminator: 4)
!2664 = !DILocation(line: 940, column: 227, scope: !454)
!2665 = !DILocation(line: 940, column: 227, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !454, file: !373, discriminator: 5)
!2667 = !DILocation(line: 942, column: 17, scope: !450)
!2668 = !DILocation(line: 942, column: 26, scope: !450)
!2669 = !DILocation(line: 942, column: 38, scope: !450)
!2670 = !DILocation(line: 943, column: 31, scope: !450)
!2671 = !DILocation(line: 943, column: 17, scope: !450)
!2672 = !DILocation(line: 944, column: 27, scope: !450)
!2673 = !DILocation(line: 944, column: 25, scope: !450)
!2674 = !DILocation(line: 945, column: 13, scope: !451)
!2675 = !DILocation(line: 945, column: 13, scope: !450)
!2676 = !DILocation(line: 930, column: 36, scope: !451)
!2677 = !DILocation(line: 930, column: 13, scope: !451)
!2678 = !DILocation(line: 946, column: 20, scope: !460)
!2679 = !DILocation(line: 946, column: 18, scope: !460)
!2680 = !DILocation(line: 946, column: 25, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2682, file: !373, discriminator: 2)
!2682 = !DILexicalBlockFile(scope: !459, file: !373, discriminator: 1)
!2683 = !DILocation(line: 946, column: 29, scope: !459)
!2684 = !DILocation(line: 946, column: 27, scope: !459)
!2685 = !DILocation(line: 946, column: 13, scope: !460)
!2686 = !DILocation(line: 947, column: 17, scope: !458)
!2687 = !DILocation(line: 947, column: 27, scope: !458)
!2688 = !DILocation(line: 947, column: 75, scope: !458)
!2689 = !DILocation(line: 947, column: 77, scope: !458)
!2690 = !DILocation(line: 947, column: 81, scope: !458)
!2691 = !DILocation(line: 947, column: 58, scope: !458)
!2692 = !DILocation(line: 947, column: 40, scope: !458)
!2693 = !DILocation(line: 947, column: 67, scope: !458)
!2694 = !DILocation(line: 947, column: 39, scope: !458)
!2695 = !DILocation(line: 950, column: 21, scope: !463)
!2696 = !DILocation(line: 950, column: 30, scope: !463)
!2697 = !DILocation(line: 950, column: 21, scope: !458)
!2698 = !DILocation(line: 951, column: 21, scope: !462)
!2699 = !DILocation(line: 951, column: 31, scope: !462)
!2700 = !DILocation(line: 951, column: 75, scope: !462)
!2701 = !DILocation(line: 951, column: 77, scope: !462)
!2702 = !DILocation(line: 951, column: 58, scope: !462)
!2703 = !DILocation(line: 951, column: 40, scope: !462)
!2704 = !DILocation(line: 951, column: 67, scope: !462)
!2705 = !DILocation(line: 951, column: 39, scope: !462)
!2706 = !DILocation(line: 952, column: 56, scope: !462)
!2707 = !DILocation(line: 952, column: 37, scope: !462)
!2708 = !DILocation(line: 952, column: 62, scope: !462)
!2709 = !DILocation(line: 952, column: 21, scope: !462)
!2710 = !DILocation(line: 953, column: 17, scope: !463)
!2711 = !DILocation(line: 953, column: 17, scope: !462)
!2712 = !DILocation(line: 954, column: 13, scope: !459)
!2713 = !DILocation(line: 954, column: 13, scope: !458)
!2714 = !DILocation(line: 946, column: 36, scope: !459)
!2715 = !DILocation(line: 946, column: 13, scope: !459)
!2716 = !DILocation(line: 955, column: 13, scope: !447)
!2717 = !DILocation(line: 955, column: 18, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !465, file: !373, discriminator: 1)
!2719 = !DILocation(line: 955, column: 28, scope: !465)
!2720 = !DILocation(line: 955, column: 58, scope: !465)
!2721 = !DILocation(line: 955, column: 74, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !465, file: !373, line: 955, column: 71)
!2723 = !DILocation(line: 955, column: 91, scope: !2722)
!2724 = !DILocation(line: 955, column: 71, scope: !2722)
!2725 = !DILocation(line: 955, column: 101, scope: !2722)
!2726 = !DILocation(line: 955, column: 71, scope: !465)
!2727 = !DILocation(line: 955, column: 71, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !465, file: !373, discriminator: 2)
!2729 = !DILocation(line: 955, column: 132, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2722, file: !373, discriminator: 3)
!2731 = !DILocation(line: 955, column: 150, scope: !2722)
!2732 = !DILocation(line: 955, column: 160, scope: !2722)
!2733 = !DILocation(line: 955, column: 185, scope: !2722)
!2734 = !DILocation(line: 955, column: 116, scope: !2722)
!2735 = !DILocation(line: 955, column: 204, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !447, file: !373, discriminator: 4)
!2737 = !DILocation(line: 955, column: 204, scope: !465)
!2738 = !DILocation(line: 955, column: 204, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !465, file: !373, discriminator: 5)
!2740 = !DILocation(line: 956, column: 9, scope: !441)
!2741 = !DILocation(line: 956, column: 9, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !441, file: !373, discriminator: 1)
!2743 = !DILocation(line: 957, column: 13, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !432, file: !373, line: 957, column: 13)
!2745 = !DILocation(line: 957, column: 13, scope: !432)
!2746 = !DILocation(line: 958, column: 27, scope: !2744)
!2747 = !DILocation(line: 958, column: 37, scope: !2744)
!2748 = !DILocation(line: 958, column: 48, scope: !2744)
!2749 = !DILocation(line: 958, column: 13, scope: !2744)
!2750 = !DILocation(line: 959, column: 5, scope: !433)
!2751 = !DILocation(line: 959, column: 5, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !433, file: !373, discriminator: 1)
!2753 = !DILocation(line: 959, column: 5, scope: !432)
!2754 = !DILocation(line: 960, column: 1, scope: !427)
!2755 = !DILocation(line: 960, column: 1, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !427, file: !373, discriminator: 1)
!2757 = !DILocation(line: 866, column: 34, scope: !793)
!2758 = !DILocation(line: 866, column: 49, scope: !793)
!2759 = !DILocation(line: 868, column: 5, scope: !793)
!2760 = !DILocation(line: 868, column: 15, scope: !793)
!2761 = !DILocation(line: 868, column: 55, scope: !793)
!2762 = !DILocation(line: 868, column: 65, scope: !793)
!2763 = !DILocation(line: 868, column: 26, scope: !793)
!2764 = !DILocation(line: 870, column: 9, scope: !802)
!2765 = !DILocation(line: 870, column: 18, scope: !802)
!2766 = !DILocation(line: 870, column: 9, scope: !793)
!2767 = !DILocation(line: 871, column: 31, scope: !802)
!2768 = !DILocation(line: 871, column: 9, scope: !802)
!2769 = !DILocation(line: 873, column: 9, scope: !802)
!2770 = !DILocation(line: 873, column: 14, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !801, file: !373, discriminator: 1)
!2772 = !DILocation(line: 873, column: 24, scope: !801)
!2773 = !DILocation(line: 873, column: 54, scope: !801)
!2774 = !DILocation(line: 873, column: 73, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !801, file: !373, line: 873, column: 70)
!2776 = !DILocation(line: 873, column: 90, scope: !2775)
!2777 = !DILocation(line: 873, column: 70, scope: !2775)
!2778 = !DILocation(line: 873, column: 100, scope: !2775)
!2779 = !DILocation(line: 873, column: 70, scope: !801)
!2780 = !DILocation(line: 873, column: 70, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !801, file: !373, discriminator: 2)
!2782 = !DILocation(line: 873, column: 131, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2775, file: !373, discriminator: 3)
!2784 = !DILocation(line: 873, column: 149, scope: !2775)
!2785 = !DILocation(line: 873, column: 159, scope: !2775)
!2786 = !DILocation(line: 873, column: 184, scope: !2775)
!2787 = !DILocation(line: 873, column: 115, scope: !2775)
!2788 = !DILocation(line: 873, column: 203, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !802, file: !373, discriminator: 4)
!2790 = !DILocation(line: 873, column: 203, scope: !801)
!2791 = !DILocation(line: 873, column: 203, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !801, file: !373, discriminator: 5)
!2793 = !DILocation(line: 874, column: 1, scope: !793)
!2794 = !DILocation(line: 268, column: 31, scope: !539)
!2795 = !DILocation(line: 268, column: 51, scope: !539)
!2796 = !DILocation(line: 268, column: 67, scope: !539)
!2797 = !DILocation(line: 269, column: 36, scope: !539)
!2798 = !DILocation(line: 269, column: 52, scope: !539)
!2799 = !DILocation(line: 272, column: 30, scope: !539)
!2800 = !DILocation(line: 272, column: 36, scope: !539)
!2801 = !DILocation(line: 272, column: 52, scope: !539)
!2802 = !DILocation(line: 272, column: 57, scope: !539)
!2803 = !DILocation(line: 272, column: 12, scope: !539)
!2804 = !DILocation(line: 272, column: 5, scope: !539)
!2805 = !DILocation(line: 23, column: 31, scope: !570)
!2806 = !DILocation(line: 23, column: 47, scope: !570)
!2807 = !DILocation(line: 23, column: 61, scope: !570)
!2808 = !DILocation(line: 25, column: 5, scope: !570)
!2809 = !DILocation(line: 25, column: 11, scope: !570)
!2810 = !DILocation(line: 25, column: 16, scope: !570)
!2811 = !DILocation(line: 26, column: 23, scope: !570)
!2812 = !DILocation(line: 26, column: 5, scope: !570)
!2813 = !DILocation(line: 26, column: 11, scope: !570)
!2814 = !DILocation(line: 26, column: 21, scope: !570)
!2815 = !DILocation(line: 27, column: 5, scope: !570)
!2816 = !DILocation(line: 27, column: 10, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !578, file: !373, discriminator: 1)
!2818 = !DILocation(line: 27, column: 20, scope: !578)
!2819 = !DILocation(line: 27, column: 51, scope: !578)
!2820 = !DILocation(line: 27, column: 66, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !578, file: !373, line: 27, column: 66)
!2822 = !DILocation(line: 27, column: 82, scope: !2821)
!2823 = !DILocation(line: 27, column: 66, scope: !578)
!2824 = !DILocation(line: 27, column: 113, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2821, file: !373, discriminator: 2)
!2826 = !DILocation(line: 27, column: 132, scope: !2821)
!2827 = !DILocation(line: 27, column: 141, scope: !2821)
!2828 = !DILocation(line: 27, column: 97, scope: !2821)
!2829 = !DILocation(line: 27, column: 146, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2831, file: !373, discriminator: 4)
!2831 = !DILexicalBlockFile(scope: !570, file: !373, discriminator: 3)
!2832 = !DILocation(line: 27, column: 146, scope: !578)
!2833 = !DILocation(line: 28, column: 25, scope: !570)
!2834 = !DILocation(line: 28, column: 5, scope: !570)
!2835 = !DILocation(line: 28, column: 11, scope: !570)
!2836 = !DILocation(line: 28, column: 23, scope: !570)
!2837 = !DILocation(line: 29, column: 1, scope: !570)
!2838 = !DILocation(line: 492, column: 39, scope: !585)
!2839 = !DILocation(line: 492, column: 52, scope: !585)
!2840 = !DILocation(line: 492, column: 77, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !585, file: !373, line: 492, column: 61)
!2842 = !DILocation(line: 492, column: 82, scope: !2841)
!2843 = !DILocation(line: 492, column: 91, scope: !2841)
!2844 = !DILocation(line: 492, column: 117, scope: !2841)
!2845 = !DILocation(line: 492, column: 135, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2841, file: !373, discriminator: 2)
!2847 = !DILocation(line: 492, column: 140, scope: !2841)
!2848 = !DILocation(line: 492, column: 149, scope: !2841)
!2849 = !DILocation(line: 492, column: 61, scope: !585)
!2850 = !DILocation(line: 492, column: 226, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2852, file: !373, discriminator: 3)
!2852 = !DILexicalBlockFile(scope: !2853, file: !373, discriminator: 1)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !373, line: 492, column: 191)
!2854 = distinct !DILexicalBlock(scope: !2841, file: !373, line: 492, column: 185)
!2855 = !DILocation(line: 492, column: 207, scope: !2853)
!2856 = !DILocation(line: 492, column: 192, scope: !2853)
!2857 = !DILocation(line: 492, column: 191, scope: !2854)
!2858 = !DILocation(line: 492, column: 230, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2853, file: !373, discriminator: 6)
!2860 = !DILocation(line: 492, column: 289, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2854, file: !373, discriminator: 5)
!2862 = !DILocation(line: 492, column: 269, scope: !2854)
!2863 = !DILocation(line: 492, column: 294, scope: !2854)
!2864 = !DILocation(line: 492, column: 307, scope: !2854)
!2865 = !DILocation(line: 492, column: 318, scope: !2854)
!2866 = !DILocation(line: 492, column: 254, scope: !2854)
!2867 = !DILocation(line: 492, column: 345, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2854, file: !373, discriminator: 8)
!2869 = !DILocation(line: 492, column: 325, scope: !2854)
!2870 = !DILocation(line: 492, column: 350, scope: !2854)
!2871 = !DILocation(line: 492, column: 254, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2854, file: !373, discriminator: 9)
!2873 = !DILocation(line: 492, column: 251, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2875, file: !373, discriminator: 11)
!2875 = !DILexicalBlockFile(scope: !2854, file: !373, discriminator: 10)
!2876 = !DILocation(line: 492, column: 382, scope: !2854)
!2877 = !DILocation(line: 492, column: 405, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2879, file: !373, discriminator: 12)
!2879 = !DILexicalBlockFile(scope: !2880, file: !373, discriminator: 4)
!2880 = distinct !DILexicalBlock(scope: !585, file: !373, line: 492, column: 389)
!2881 = !DILocation(line: 492, column: 410, scope: !2880)
!2882 = !DILocation(line: 492, column: 419, scope: !2880)
!2883 = !DILocation(line: 492, column: 445, scope: !2880)
!2884 = !DILocation(line: 492, column: 463, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2880, file: !373, discriminator: 14)
!2886 = !DILocation(line: 492, column: 468, scope: !2880)
!2887 = !DILocation(line: 492, column: 477, scope: !2880)
!2888 = !DILocation(line: 492, column: 389, scope: !585)
!2889 = !DILocation(line: 492, column: 554, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2891, file: !373, discriminator: 15)
!2891 = !DILexicalBlockFile(scope: !2892, file: !373, discriminator: 13)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !373, line: 492, column: 519)
!2893 = distinct !DILexicalBlock(scope: !2880, file: !373, line: 492, column: 513)
!2894 = !DILocation(line: 492, column: 535, scope: !2892)
!2895 = !DILocation(line: 492, column: 520, scope: !2892)
!2896 = !DILocation(line: 492, column: 519, scope: !2893)
!2897 = !DILocation(line: 492, column: 558, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2892, file: !373, discriminator: 18)
!2899 = !DILocation(line: 492, column: 617, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2893, file: !373, discriminator: 17)
!2901 = !DILocation(line: 492, column: 597, scope: !2893)
!2902 = !DILocation(line: 492, column: 622, scope: !2893)
!2903 = !DILocation(line: 492, column: 635, scope: !2893)
!2904 = !DILocation(line: 492, column: 646, scope: !2893)
!2905 = !DILocation(line: 492, column: 582, scope: !2893)
!2906 = !DILocation(line: 492, column: 673, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !2893, file: !373, discriminator: 20)
!2908 = !DILocation(line: 492, column: 653, scope: !2893)
!2909 = !DILocation(line: 492, column: 678, scope: !2893)
!2910 = !DILocation(line: 492, column: 582, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2893, file: !373, discriminator: 21)
!2912 = !DILocation(line: 492, column: 579, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2914, file: !373, discriminator: 23)
!2914 = !DILexicalBlockFile(scope: !2893, file: !373, discriminator: 22)
!2915 = !DILocation(line: 492, column: 710, scope: !2893)
!2916 = !DILocation(line: 492, column: 733, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2918, file: !373, discriminator: 24)
!2918 = !DILexicalBlockFile(scope: !585, file: !373, discriminator: 16)
!2919 = !DILocation(line: 492, column: 736, scope: !585)
!2920 = !DILocation(line: 492, column: 720, scope: !585)
!2921 = !DILocation(line: 492, column: 713, scope: !585)
!2922 = !DILocation(line: 492, column: 740, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2924, file: !373, discriminator: 25)
!2924 = !DILexicalBlockFile(scope: !2925, file: !373, discriminator: 19)
!2925 = !DILexicalBlockFile(scope: !585, file: !373, discriminator: 7)
!2926 = !DILocation(line: 493, column: 39, scope: !592)
!2927 = !DILocation(line: 493, column: 52, scope: !592)
!2928 = !DILocation(line: 493, column: 77, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !592, file: !373, line: 493, column: 61)
!2930 = !DILocation(line: 493, column: 82, scope: !2929)
!2931 = !DILocation(line: 493, column: 91, scope: !2929)
!2932 = !DILocation(line: 493, column: 117, scope: !2929)
!2933 = !DILocation(line: 493, column: 135, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2929, file: !373, discriminator: 2)
!2935 = !DILocation(line: 493, column: 140, scope: !2929)
!2936 = !DILocation(line: 493, column: 149, scope: !2929)
!2937 = !DILocation(line: 493, column: 61, scope: !592)
!2938 = !DILocation(line: 493, column: 226, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2940, file: !373, discriminator: 3)
!2940 = !DILexicalBlockFile(scope: !2941, file: !373, discriminator: 1)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !373, line: 493, column: 191)
!2942 = distinct !DILexicalBlock(scope: !2929, file: !373, line: 493, column: 185)
!2943 = !DILocation(line: 493, column: 207, scope: !2941)
!2944 = !DILocation(line: 493, column: 192, scope: !2941)
!2945 = !DILocation(line: 493, column: 191, scope: !2942)
!2946 = !DILocation(line: 493, column: 230, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !2941, file: !373, discriminator: 6)
!2948 = !DILocation(line: 493, column: 289, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2942, file: !373, discriminator: 5)
!2950 = !DILocation(line: 493, column: 269, scope: !2942)
!2951 = !DILocation(line: 493, column: 294, scope: !2942)
!2952 = !DILocation(line: 493, column: 307, scope: !2942)
!2953 = !DILocation(line: 493, column: 318, scope: !2942)
!2954 = !DILocation(line: 493, column: 254, scope: !2942)
!2955 = !DILocation(line: 493, column: 345, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2942, file: !373, discriminator: 8)
!2957 = !DILocation(line: 493, column: 325, scope: !2942)
!2958 = !DILocation(line: 493, column: 350, scope: !2942)
!2959 = !DILocation(line: 493, column: 254, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2942, file: !373, discriminator: 9)
!2961 = !DILocation(line: 493, column: 251, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !373, discriminator: 11)
!2963 = !DILexicalBlockFile(scope: !2942, file: !373, discriminator: 10)
!2964 = !DILocation(line: 493, column: 382, scope: !2942)
!2965 = !DILocation(line: 493, column: 405, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2967, file: !373, discriminator: 12)
!2967 = !DILexicalBlockFile(scope: !2968, file: !373, discriminator: 4)
!2968 = distinct !DILexicalBlock(scope: !592, file: !373, line: 493, column: 389)
!2969 = !DILocation(line: 493, column: 410, scope: !2968)
!2970 = !DILocation(line: 493, column: 419, scope: !2968)
!2971 = !DILocation(line: 493, column: 445, scope: !2968)
!2972 = !DILocation(line: 493, column: 463, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2968, file: !373, discriminator: 14)
!2974 = !DILocation(line: 493, column: 468, scope: !2968)
!2975 = !DILocation(line: 493, column: 477, scope: !2968)
!2976 = !DILocation(line: 493, column: 389, scope: !592)
!2977 = !DILocation(line: 493, column: 554, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2979, file: !373, discriminator: 15)
!2979 = !DILexicalBlockFile(scope: !2980, file: !373, discriminator: 13)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !373, line: 493, column: 519)
!2981 = distinct !DILexicalBlock(scope: !2968, file: !373, line: 493, column: 513)
!2982 = !DILocation(line: 493, column: 535, scope: !2980)
!2983 = !DILocation(line: 493, column: 520, scope: !2980)
!2984 = !DILocation(line: 493, column: 519, scope: !2981)
!2985 = !DILocation(line: 493, column: 558, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2980, file: !373, discriminator: 18)
!2987 = !DILocation(line: 493, column: 617, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2981, file: !373, discriminator: 17)
!2989 = !DILocation(line: 493, column: 597, scope: !2981)
!2990 = !DILocation(line: 493, column: 622, scope: !2981)
!2991 = !DILocation(line: 493, column: 635, scope: !2981)
!2992 = !DILocation(line: 493, column: 646, scope: !2981)
!2993 = !DILocation(line: 493, column: 582, scope: !2981)
!2994 = !DILocation(line: 493, column: 673, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !2981, file: !373, discriminator: 20)
!2996 = !DILocation(line: 493, column: 653, scope: !2981)
!2997 = !DILocation(line: 493, column: 678, scope: !2981)
!2998 = !DILocation(line: 493, column: 582, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2981, file: !373, discriminator: 21)
!3000 = !DILocation(line: 493, column: 579, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !3002, file: !373, discriminator: 23)
!3002 = !DILexicalBlockFile(scope: !2981, file: !373, discriminator: 22)
!3003 = !DILocation(line: 493, column: 710, scope: !2981)
!3004 = !DILocation(line: 493, column: 738, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3006, file: !373, discriminator: 24)
!3006 = !DILexicalBlockFile(scope: !592, file: !373, discriminator: 16)
!3007 = !DILocation(line: 493, column: 741, scope: !592)
!3008 = !DILocation(line: 493, column: 720, scope: !592)
!3009 = !DILocation(line: 493, column: 713, scope: !592)
!3010 = !DILocation(line: 493, column: 745, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3012, file: !373, discriminator: 25)
!3012 = !DILexicalBlockFile(scope: !3013, file: !373, discriminator: 19)
!3013 = !DILexicalBlockFile(scope: !592, file: !373, discriminator: 7)
!3014 = !DILocation(line: 494, column: 39, scope: !596)
!3015 = !DILocation(line: 494, column: 52, scope: !596)
!3016 = !DILocation(line: 494, column: 77, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !596, file: !373, line: 494, column: 61)
!3018 = !DILocation(line: 494, column: 82, scope: !3017)
!3019 = !DILocation(line: 494, column: 91, scope: !3017)
!3020 = !DILocation(line: 494, column: 117, scope: !3017)
!3021 = !DILocation(line: 494, column: 135, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3017, file: !373, discriminator: 2)
!3023 = !DILocation(line: 494, column: 140, scope: !3017)
!3024 = !DILocation(line: 494, column: 149, scope: !3017)
!3025 = !DILocation(line: 494, column: 61, scope: !596)
!3026 = !DILocation(line: 494, column: 226, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3028, file: !373, discriminator: 3)
!3028 = !DILexicalBlockFile(scope: !3029, file: !373, discriminator: 1)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !373, line: 494, column: 191)
!3030 = distinct !DILexicalBlock(scope: !3017, file: !373, line: 494, column: 185)
!3031 = !DILocation(line: 494, column: 207, scope: !3029)
!3032 = !DILocation(line: 494, column: 192, scope: !3029)
!3033 = !DILocation(line: 494, column: 191, scope: !3030)
!3034 = !DILocation(line: 494, column: 230, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3029, file: !373, discriminator: 6)
!3036 = !DILocation(line: 494, column: 289, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3030, file: !373, discriminator: 5)
!3038 = !DILocation(line: 494, column: 269, scope: !3030)
!3039 = !DILocation(line: 494, column: 294, scope: !3030)
!3040 = !DILocation(line: 494, column: 307, scope: !3030)
!3041 = !DILocation(line: 494, column: 318, scope: !3030)
!3042 = !DILocation(line: 494, column: 254, scope: !3030)
!3043 = !DILocation(line: 494, column: 345, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3030, file: !373, discriminator: 8)
!3045 = !DILocation(line: 494, column: 325, scope: !3030)
!3046 = !DILocation(line: 494, column: 350, scope: !3030)
!3047 = !DILocation(line: 494, column: 254, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3030, file: !373, discriminator: 9)
!3049 = !DILocation(line: 494, column: 251, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3051, file: !373, discriminator: 11)
!3051 = !DILexicalBlockFile(scope: !3030, file: !373, discriminator: 10)
!3052 = !DILocation(line: 494, column: 382, scope: !3030)
!3053 = !DILocation(line: 494, column: 405, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3055, file: !373, discriminator: 12)
!3055 = !DILexicalBlockFile(scope: !3056, file: !373, discriminator: 4)
!3056 = distinct !DILexicalBlock(scope: !596, file: !373, line: 494, column: 389)
!3057 = !DILocation(line: 494, column: 410, scope: !3056)
!3058 = !DILocation(line: 494, column: 419, scope: !3056)
!3059 = !DILocation(line: 494, column: 445, scope: !3056)
!3060 = !DILocation(line: 494, column: 463, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3056, file: !373, discriminator: 14)
!3062 = !DILocation(line: 494, column: 468, scope: !3056)
!3063 = !DILocation(line: 494, column: 477, scope: !3056)
!3064 = !DILocation(line: 494, column: 389, scope: !596)
!3065 = !DILocation(line: 494, column: 554, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3067, file: !373, discriminator: 15)
!3067 = !DILexicalBlockFile(scope: !3068, file: !373, discriminator: 13)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !373, line: 494, column: 519)
!3069 = distinct !DILexicalBlock(scope: !3056, file: !373, line: 494, column: 513)
!3070 = !DILocation(line: 494, column: 535, scope: !3068)
!3071 = !DILocation(line: 494, column: 520, scope: !3068)
!3072 = !DILocation(line: 494, column: 519, scope: !3069)
!3073 = !DILocation(line: 494, column: 558, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3068, file: !373, discriminator: 18)
!3075 = !DILocation(line: 494, column: 617, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3069, file: !373, discriminator: 17)
!3077 = !DILocation(line: 494, column: 597, scope: !3069)
!3078 = !DILocation(line: 494, column: 622, scope: !3069)
!3079 = !DILocation(line: 494, column: 635, scope: !3069)
!3080 = !DILocation(line: 494, column: 646, scope: !3069)
!3081 = !DILocation(line: 494, column: 582, scope: !3069)
!3082 = !DILocation(line: 494, column: 673, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3069, file: !373, discriminator: 20)
!3084 = !DILocation(line: 494, column: 653, scope: !3069)
!3085 = !DILocation(line: 494, column: 678, scope: !3069)
!3086 = !DILocation(line: 494, column: 582, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3069, file: !373, discriminator: 21)
!3088 = !DILocation(line: 494, column: 579, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3090, file: !373, discriminator: 23)
!3090 = !DILexicalBlockFile(scope: !3069, file: !373, discriminator: 22)
!3091 = !DILocation(line: 494, column: 710, scope: !3069)
!3092 = !DILocation(line: 494, column: 738, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3094, file: !373, discriminator: 24)
!3094 = !DILexicalBlockFile(scope: !596, file: !373, discriminator: 16)
!3095 = !DILocation(line: 494, column: 741, scope: !596)
!3096 = !DILocation(line: 494, column: 720, scope: !596)
!3097 = !DILocation(line: 494, column: 713, scope: !596)
!3098 = !DILocation(line: 494, column: 745, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3100, file: !373, discriminator: 25)
!3100 = !DILexicalBlockFile(scope: !3101, file: !373, discriminator: 19)
!3101 = !DILexicalBlockFile(scope: !596, file: !373, discriminator: 7)
!3102 = !DILocation(line: 497, column: 39, scope: !600)
!3103 = !DILocation(line: 497, column: 52, scope: !600)
!3104 = !DILocation(line: 497, column: 77, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !600, file: !373, line: 497, column: 61)
!3106 = !DILocation(line: 497, column: 82, scope: !3105)
!3107 = !DILocation(line: 497, column: 91, scope: !3105)
!3108 = !DILocation(line: 497, column: 117, scope: !3105)
!3109 = !DILocation(line: 497, column: 135, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3105, file: !373, discriminator: 2)
!3111 = !DILocation(line: 497, column: 140, scope: !3105)
!3112 = !DILocation(line: 497, column: 149, scope: !3105)
!3113 = !DILocation(line: 497, column: 61, scope: !600)
!3114 = !DILocation(line: 497, column: 226, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3116, file: !373, discriminator: 3)
!3116 = !DILexicalBlockFile(scope: !3117, file: !373, discriminator: 1)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !373, line: 497, column: 191)
!3118 = distinct !DILexicalBlock(scope: !3105, file: !373, line: 497, column: 185)
!3119 = !DILocation(line: 497, column: 207, scope: !3117)
!3120 = !DILocation(line: 497, column: 192, scope: !3117)
!3121 = !DILocation(line: 497, column: 191, scope: !3118)
!3122 = !DILocation(line: 497, column: 230, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3117, file: !373, discriminator: 6)
!3124 = !DILocation(line: 497, column: 289, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3118, file: !373, discriminator: 5)
!3126 = !DILocation(line: 497, column: 269, scope: !3118)
!3127 = !DILocation(line: 497, column: 294, scope: !3118)
!3128 = !DILocation(line: 497, column: 307, scope: !3118)
!3129 = !DILocation(line: 497, column: 318, scope: !3118)
!3130 = !DILocation(line: 497, column: 254, scope: !3118)
!3131 = !DILocation(line: 497, column: 345, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3118, file: !373, discriminator: 8)
!3133 = !DILocation(line: 497, column: 325, scope: !3118)
!3134 = !DILocation(line: 497, column: 350, scope: !3118)
!3135 = !DILocation(line: 497, column: 254, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3118, file: !373, discriminator: 9)
!3137 = !DILocation(line: 497, column: 251, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3139, file: !373, discriminator: 11)
!3139 = !DILexicalBlockFile(scope: !3118, file: !373, discriminator: 10)
!3140 = !DILocation(line: 497, column: 382, scope: !3118)
!3141 = !DILocation(line: 497, column: 405, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3143, file: !373, discriminator: 12)
!3143 = !DILexicalBlockFile(scope: !3144, file: !373, discriminator: 4)
!3144 = distinct !DILexicalBlock(scope: !600, file: !373, line: 497, column: 389)
!3145 = !DILocation(line: 497, column: 410, scope: !3144)
!3146 = !DILocation(line: 497, column: 419, scope: !3144)
!3147 = !DILocation(line: 497, column: 445, scope: !3144)
!3148 = !DILocation(line: 497, column: 463, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3144, file: !373, discriminator: 14)
!3150 = !DILocation(line: 497, column: 468, scope: !3144)
!3151 = !DILocation(line: 497, column: 477, scope: !3144)
!3152 = !DILocation(line: 497, column: 389, scope: !600)
!3153 = !DILocation(line: 497, column: 554, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3155, file: !373, discriminator: 15)
!3155 = !DILexicalBlockFile(scope: !3156, file: !373, discriminator: 13)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !373, line: 497, column: 519)
!3157 = distinct !DILexicalBlock(scope: !3144, file: !373, line: 497, column: 513)
!3158 = !DILocation(line: 497, column: 535, scope: !3156)
!3159 = !DILocation(line: 497, column: 520, scope: !3156)
!3160 = !DILocation(line: 497, column: 519, scope: !3157)
!3161 = !DILocation(line: 497, column: 558, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3156, file: !373, discriminator: 18)
!3163 = !DILocation(line: 497, column: 617, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3157, file: !373, discriminator: 17)
!3165 = !DILocation(line: 497, column: 597, scope: !3157)
!3166 = !DILocation(line: 497, column: 622, scope: !3157)
!3167 = !DILocation(line: 497, column: 635, scope: !3157)
!3168 = !DILocation(line: 497, column: 646, scope: !3157)
!3169 = !DILocation(line: 497, column: 582, scope: !3157)
!3170 = !DILocation(line: 497, column: 673, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3157, file: !373, discriminator: 20)
!3172 = !DILocation(line: 497, column: 653, scope: !3157)
!3173 = !DILocation(line: 497, column: 678, scope: !3157)
!3174 = !DILocation(line: 497, column: 582, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3157, file: !373, discriminator: 21)
!3176 = !DILocation(line: 497, column: 579, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3178, file: !373, discriminator: 23)
!3178 = !DILexicalBlockFile(scope: !3157, file: !373, discriminator: 22)
!3179 = !DILocation(line: 497, column: 710, scope: !3157)
!3180 = !DILocation(line: 497, column: 739, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3182, file: !373, discriminator: 24)
!3182 = !DILexicalBlockFile(scope: !600, file: !373, discriminator: 16)
!3183 = !DILocation(line: 497, column: 742, scope: !600)
!3184 = !DILocation(line: 497, column: 720, scope: !600)
!3185 = !DILocation(line: 497, column: 713, scope: !600)
!3186 = !DILocation(line: 497, column: 746, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3188, file: !373, discriminator: 25)
!3188 = !DILexicalBlockFile(scope: !3189, file: !373, discriminator: 19)
!3189 = !DILexicalBlockFile(scope: !600, file: !373, discriminator: 7)
!3190 = !DILocation(line: 498, column: 42, scope: !604)
!3191 = !DILocation(line: 498, column: 55, scope: !604)
!3192 = !DILocation(line: 498, column: 80, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !604, file: !373, line: 498, column: 64)
!3194 = !DILocation(line: 498, column: 85, scope: !3193)
!3195 = !DILocation(line: 498, column: 94, scope: !3193)
!3196 = !DILocation(line: 498, column: 120, scope: !3193)
!3197 = !DILocation(line: 498, column: 138, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3193, file: !373, discriminator: 2)
!3199 = !DILocation(line: 498, column: 143, scope: !3193)
!3200 = !DILocation(line: 498, column: 152, scope: !3193)
!3201 = !DILocation(line: 498, column: 64, scope: !604)
!3202 = !DILocation(line: 498, column: 229, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3204, file: !373, discriminator: 3)
!3204 = !DILexicalBlockFile(scope: !3205, file: !373, discriminator: 1)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !373, line: 498, column: 194)
!3206 = distinct !DILexicalBlock(scope: !3193, file: !373, line: 498, column: 188)
!3207 = !DILocation(line: 498, column: 210, scope: !3205)
!3208 = !DILocation(line: 498, column: 195, scope: !3205)
!3209 = !DILocation(line: 498, column: 194, scope: !3206)
!3210 = !DILocation(line: 498, column: 233, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3205, file: !373, discriminator: 6)
!3212 = !DILocation(line: 498, column: 292, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3206, file: !373, discriminator: 5)
!3214 = !DILocation(line: 498, column: 272, scope: !3206)
!3215 = !DILocation(line: 498, column: 297, scope: !3206)
!3216 = !DILocation(line: 498, column: 310, scope: !3206)
!3217 = !DILocation(line: 498, column: 321, scope: !3206)
!3218 = !DILocation(line: 498, column: 257, scope: !3206)
!3219 = !DILocation(line: 498, column: 348, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3206, file: !373, discriminator: 8)
!3221 = !DILocation(line: 498, column: 328, scope: !3206)
!3222 = !DILocation(line: 498, column: 353, scope: !3206)
!3223 = !DILocation(line: 498, column: 257, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3206, file: !373, discriminator: 9)
!3225 = !DILocation(line: 498, column: 254, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3227, file: !373, discriminator: 11)
!3227 = !DILexicalBlockFile(scope: !3206, file: !373, discriminator: 10)
!3228 = !DILocation(line: 498, column: 385, scope: !3206)
!3229 = !DILocation(line: 498, column: 408, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3231, file: !373, discriminator: 12)
!3231 = !DILexicalBlockFile(scope: !3232, file: !373, discriminator: 4)
!3232 = distinct !DILexicalBlock(scope: !604, file: !373, line: 498, column: 392)
!3233 = !DILocation(line: 498, column: 413, scope: !3232)
!3234 = !DILocation(line: 498, column: 422, scope: !3232)
!3235 = !DILocation(line: 498, column: 448, scope: !3232)
!3236 = !DILocation(line: 498, column: 466, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3232, file: !373, discriminator: 14)
!3238 = !DILocation(line: 498, column: 471, scope: !3232)
!3239 = !DILocation(line: 498, column: 480, scope: !3232)
!3240 = !DILocation(line: 498, column: 392, scope: !604)
!3241 = !DILocation(line: 498, column: 557, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3243, file: !373, discriminator: 15)
!3243 = !DILexicalBlockFile(scope: !3244, file: !373, discriminator: 13)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !373, line: 498, column: 522)
!3245 = distinct !DILexicalBlock(scope: !3232, file: !373, line: 498, column: 516)
!3246 = !DILocation(line: 498, column: 538, scope: !3244)
!3247 = !DILocation(line: 498, column: 523, scope: !3244)
!3248 = !DILocation(line: 498, column: 522, scope: !3245)
!3249 = !DILocation(line: 498, column: 561, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3244, file: !373, discriminator: 18)
!3251 = !DILocation(line: 498, column: 620, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3245, file: !373, discriminator: 17)
!3253 = !DILocation(line: 498, column: 600, scope: !3245)
!3254 = !DILocation(line: 498, column: 625, scope: !3245)
!3255 = !DILocation(line: 498, column: 638, scope: !3245)
!3256 = !DILocation(line: 498, column: 649, scope: !3245)
!3257 = !DILocation(line: 498, column: 585, scope: !3245)
!3258 = !DILocation(line: 498, column: 676, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3245, file: !373, discriminator: 20)
!3260 = !DILocation(line: 498, column: 656, scope: !3245)
!3261 = !DILocation(line: 498, column: 681, scope: !3245)
!3262 = !DILocation(line: 498, column: 585, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3245, file: !373, discriminator: 21)
!3264 = !DILocation(line: 498, column: 582, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3266, file: !373, discriminator: 23)
!3266 = !DILexicalBlockFile(scope: !3245, file: !373, discriminator: 22)
!3267 = !DILocation(line: 498, column: 713, scope: !3245)
!3268 = !DILocation(line: 498, column: 739, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3270, file: !373, discriminator: 24)
!3270 = !DILexicalBlockFile(scope: !604, file: !373, discriminator: 16)
!3271 = !DILocation(line: 498, column: 742, scope: !604)
!3272 = !DILocation(line: 498, column: 723, scope: !604)
!3273 = !DILocation(line: 498, column: 716, scope: !604)
!3274 = !DILocation(line: 498, column: 746, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3276, file: !373, discriminator: 25)
!3276 = !DILexicalBlockFile(scope: !3277, file: !373, discriminator: 19)
!3277 = !DILexicalBlockFile(scope: !604, file: !373, discriminator: 7)
!3278 = !DILocation(line: 499, column: 39, scope: !608)
!3279 = !DILocation(line: 499, column: 56, scope: !608)
!3280 = !DILocation(line: 499, column: 69, scope: !608)
!3281 = !DILocation(line: 499, column: 94, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !608, file: !373, line: 499, column: 78)
!3283 = !DILocation(line: 499, column: 103, scope: !3282)
!3284 = !DILocation(line: 499, column: 112, scope: !3282)
!3285 = !DILocation(line: 499, column: 138, scope: !3282)
!3286 = !DILocation(line: 499, column: 156, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3282, file: !373, discriminator: 2)
!3288 = !DILocation(line: 499, column: 165, scope: !3282)
!3289 = !DILocation(line: 499, column: 174, scope: !3282)
!3290 = !DILocation(line: 499, column: 78, scope: !608)
!3291 = !DILocation(line: 499, column: 251, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !3293, file: !373, discriminator: 3)
!3293 = !DILexicalBlockFile(scope: !3294, file: !373, discriminator: 1)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !373, line: 499, column: 216)
!3295 = distinct !DILexicalBlock(scope: !3282, file: !373, line: 499, column: 210)
!3296 = !DILocation(line: 499, column: 232, scope: !3294)
!3297 = !DILocation(line: 499, column: 217, scope: !3294)
!3298 = !DILocation(line: 499, column: 216, scope: !3295)
!3299 = !DILocation(line: 499, column: 259, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3294, file: !373, discriminator: 6)
!3301 = !DILocation(line: 499, column: 322, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !3295, file: !373, discriminator: 5)
!3303 = !DILocation(line: 499, column: 302, scope: !3295)
!3304 = !DILocation(line: 499, column: 331, scope: !3295)
!3305 = !DILocation(line: 499, column: 344, scope: !3295)
!3306 = !DILocation(line: 499, column: 355, scope: !3295)
!3307 = !DILocation(line: 499, column: 287, scope: !3295)
!3308 = !DILocation(line: 499, column: 382, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3295, file: !373, discriminator: 8)
!3310 = !DILocation(line: 499, column: 362, scope: !3295)
!3311 = !DILocation(line: 499, column: 391, scope: !3295)
!3312 = !DILocation(line: 499, column: 287, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3295, file: !373, discriminator: 9)
!3314 = !DILocation(line: 499, column: 284, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !3316, file: !373, discriminator: 11)
!3316 = !DILexicalBlockFile(scope: !3295, file: !373, discriminator: 10)
!3317 = !DILocation(line: 499, column: 423, scope: !3295)
!3318 = !DILocation(line: 499, column: 446, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3320, file: !373, discriminator: 12)
!3320 = !DILexicalBlockFile(scope: !3321, file: !373, discriminator: 4)
!3321 = distinct !DILexicalBlock(scope: !608, file: !373, line: 499, column: 430)
!3322 = !DILocation(line: 499, column: 451, scope: !3321)
!3323 = !DILocation(line: 499, column: 460, scope: !3321)
!3324 = !DILocation(line: 499, column: 486, scope: !3321)
!3325 = !DILocation(line: 499, column: 504, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !3321, file: !373, discriminator: 14)
!3327 = !DILocation(line: 499, column: 509, scope: !3321)
!3328 = !DILocation(line: 499, column: 518, scope: !3321)
!3329 = !DILocation(line: 499, column: 430, scope: !608)
!3330 = !DILocation(line: 499, column: 595, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3332, file: !373, discriminator: 15)
!3332 = !DILexicalBlockFile(scope: !3333, file: !373, discriminator: 13)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !373, line: 499, column: 560)
!3334 = distinct !DILexicalBlock(scope: !3321, file: !373, line: 499, column: 554)
!3335 = !DILocation(line: 499, column: 576, scope: !3333)
!3336 = !DILocation(line: 499, column: 561, scope: !3333)
!3337 = !DILocation(line: 499, column: 560, scope: !3334)
!3338 = !DILocation(line: 499, column: 599, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3333, file: !373, discriminator: 18)
!3340 = !DILocation(line: 499, column: 658, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3334, file: !373, discriminator: 17)
!3342 = !DILocation(line: 499, column: 638, scope: !3334)
!3343 = !DILocation(line: 499, column: 663, scope: !3334)
!3344 = !DILocation(line: 499, column: 676, scope: !3334)
!3345 = !DILocation(line: 499, column: 687, scope: !3334)
!3346 = !DILocation(line: 499, column: 623, scope: !3334)
!3347 = !DILocation(line: 499, column: 714, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3334, file: !373, discriminator: 20)
!3349 = !DILocation(line: 499, column: 694, scope: !3334)
!3350 = !DILocation(line: 499, column: 719, scope: !3334)
!3351 = !DILocation(line: 499, column: 623, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3334, file: !373, discriminator: 21)
!3353 = !DILocation(line: 499, column: 620, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3355, file: !373, discriminator: 23)
!3355 = !DILexicalBlockFile(scope: !3334, file: !373, discriminator: 22)
!3356 = !DILocation(line: 499, column: 751, scope: !3334)
!3357 = !DILocation(line: 499, column: 758, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3359, file: !373, discriminator: 24)
!3359 = !DILexicalBlockFile(scope: !3360, file: !373, discriminator: 16)
!3360 = distinct !DILexicalBlock(scope: !608, file: !373, line: 499, column: 758)
!3361 = !DILocation(line: 499, column: 760, scope: !3360)
!3362 = !DILocation(line: 499, column: 758, scope: !608)
!3363 = !DILocation(line: 499, column: 795, scope: !3364)
!3364 = !DILexicalBlockFile(scope: !3365, file: !373, discriminator: 25)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !373, line: 499, column: 779)
!3366 = !DILocation(line: 499, column: 800, scope: !3365)
!3367 = !DILocation(line: 499, column: 809, scope: !3365)
!3368 = !DILocation(line: 499, column: 835, scope: !3365)
!3369 = !DILocation(line: 499, column: 853, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3365, file: !373, discriminator: 28)
!3371 = !DILocation(line: 499, column: 858, scope: !3365)
!3372 = !DILocation(line: 499, column: 867, scope: !3365)
!3373 = !DILocation(line: 499, column: 779, scope: !3360)
!3374 = !DILocation(line: 499, column: 944, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3376, file: !373, discriminator: 29)
!3376 = !DILexicalBlockFile(scope: !3377, file: !373, discriminator: 27)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !373, line: 499, column: 909)
!3378 = distinct !DILexicalBlock(scope: !3365, file: !373, line: 499, column: 903)
!3379 = !DILocation(line: 499, column: 925, scope: !3377)
!3380 = !DILocation(line: 499, column: 910, scope: !3377)
!3381 = !DILocation(line: 499, column: 909, scope: !3378)
!3382 = !DILocation(line: 499, column: 948, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3377, file: !373, discriminator: 32)
!3384 = !DILocation(line: 499, column: 1007, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3378, file: !373, discriminator: 31)
!3386 = !DILocation(line: 499, column: 987, scope: !3378)
!3387 = !DILocation(line: 499, column: 1012, scope: !3378)
!3388 = !DILocation(line: 499, column: 1025, scope: !3378)
!3389 = !DILocation(line: 499, column: 1036, scope: !3378)
!3390 = !DILocation(line: 499, column: 972, scope: !3378)
!3391 = !DILocation(line: 499, column: 1063, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3378, file: !373, discriminator: 34)
!3393 = !DILocation(line: 499, column: 1043, scope: !3378)
!3394 = !DILocation(line: 499, column: 1068, scope: !3378)
!3395 = !DILocation(line: 499, column: 972, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3378, file: !373, discriminator: 35)
!3397 = !DILocation(line: 499, column: 969, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !3399, file: !373, discriminator: 37)
!3399 = !DILexicalBlockFile(scope: !3378, file: !373, discriminator: 36)
!3400 = !DILocation(line: 499, column: 1100, scope: !3378)
!3401 = !DILocation(line: 499, column: 900, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3403, file: !373, discriminator: 38)
!3403 = !DILexicalBlockFile(scope: !3365, file: !373, discriminator: 30)
!3404 = !DILocation(line: 499, column: 1125, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3406, file: !373, discriminator: 39)
!3406 = !DILexicalBlockFile(scope: !608, file: !373, discriminator: 26)
!3407 = !DILocation(line: 499, column: 1132, scope: !608)
!3408 = !DILocation(line: 499, column: 1135, scope: !608)
!3409 = !DILocation(line: 499, column: 1110, scope: !608)
!3410 = !DILocation(line: 499, column: 1103, scope: !608)
!3411 = !DILocation(line: 499, column: 1139, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3413, file: !373, discriminator: 40)
!3413 = !DILexicalBlockFile(scope: !3414, file: !373, discriminator: 33)
!3414 = !DILexicalBlockFile(scope: !3415, file: !373, discriminator: 19)
!3415 = !DILexicalBlockFile(scope: !608, file: !373, discriminator: 7)
!3416 = !DILocation(line: 500, column: 39, scope: !613)
!3417 = !DILocation(line: 500, column: 68, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !613, file: !373, line: 500, column: 52)
!3419 = !DILocation(line: 500, column: 77, scope: !3418)
!3420 = !DILocation(line: 500, column: 86, scope: !3418)
!3421 = !DILocation(line: 500, column: 112, scope: !3418)
!3422 = !DILocation(line: 500, column: 130, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3418, file: !373, discriminator: 2)
!3424 = !DILocation(line: 500, column: 139, scope: !3418)
!3425 = !DILocation(line: 500, column: 148, scope: !3418)
!3426 = !DILocation(line: 500, column: 52, scope: !613)
!3427 = !DILocation(line: 500, column: 225, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3429, file: !373, discriminator: 3)
!3429 = !DILexicalBlockFile(scope: !3430, file: !373, discriminator: 1)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !373, line: 500, column: 190)
!3431 = distinct !DILexicalBlock(scope: !3418, file: !373, line: 500, column: 184)
!3432 = !DILocation(line: 500, column: 206, scope: !3430)
!3433 = !DILocation(line: 500, column: 191, scope: !3430)
!3434 = !DILocation(line: 500, column: 190, scope: !3431)
!3435 = !DILocation(line: 500, column: 233, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3430, file: !373, discriminator: 6)
!3437 = !DILocation(line: 500, column: 296, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3431, file: !373, discriminator: 5)
!3439 = !DILocation(line: 500, column: 276, scope: !3431)
!3440 = !DILocation(line: 500, column: 305, scope: !3431)
!3441 = !DILocation(line: 500, column: 318, scope: !3431)
!3442 = !DILocation(line: 500, column: 329, scope: !3431)
!3443 = !DILocation(line: 500, column: 261, scope: !3431)
!3444 = !DILocation(line: 500, column: 356, scope: !3445)
!3445 = !DILexicalBlockFile(scope: !3431, file: !373, discriminator: 8)
!3446 = !DILocation(line: 500, column: 336, scope: !3431)
!3447 = !DILocation(line: 500, column: 365, scope: !3431)
!3448 = !DILocation(line: 500, column: 261, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3431, file: !373, discriminator: 9)
!3450 = !DILocation(line: 500, column: 258, scope: !3451)
!3451 = !DILexicalBlockFile(scope: !3452, file: !373, discriminator: 11)
!3452 = !DILexicalBlockFile(scope: !3431, file: !373, discriminator: 10)
!3453 = !DILocation(line: 500, column: 397, scope: !3431)
!3454 = !DILocation(line: 500, column: 425, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3456, file: !373, discriminator: 12)
!3456 = !DILexicalBlockFile(scope: !613, file: !373, discriminator: 4)
!3457 = !DILocation(line: 500, column: 407, scope: !613)
!3458 = !DILocation(line: 500, column: 400, scope: !613)
!3459 = !DILocation(line: 500, column: 433, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3461, file: !373, discriminator: 13)
!3461 = !DILexicalBlockFile(scope: !613, file: !373, discriminator: 7)
!3462 = !DILocation(line: 501, column: 39, scope: !616)
!3463 = !DILocation(line: 501, column: 68, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !616, file: !373, line: 501, column: 52)
!3465 = !DILocation(line: 501, column: 77, scope: !3464)
!3466 = !DILocation(line: 501, column: 86, scope: !3464)
!3467 = !DILocation(line: 501, column: 112, scope: !3464)
!3468 = !DILocation(line: 501, column: 130, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !3464, file: !373, discriminator: 2)
!3470 = !DILocation(line: 501, column: 139, scope: !3464)
!3471 = !DILocation(line: 501, column: 148, scope: !3464)
!3472 = !DILocation(line: 501, column: 52, scope: !616)
!3473 = !DILocation(line: 501, column: 225, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3475, file: !373, discriminator: 3)
!3475 = !DILexicalBlockFile(scope: !3476, file: !373, discriminator: 1)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !373, line: 501, column: 190)
!3477 = distinct !DILexicalBlock(scope: !3464, file: !373, line: 501, column: 184)
!3478 = !DILocation(line: 501, column: 206, scope: !3476)
!3479 = !DILocation(line: 501, column: 191, scope: !3476)
!3480 = !DILocation(line: 501, column: 190, scope: !3477)
!3481 = !DILocation(line: 501, column: 233, scope: !3482)
!3482 = !DILexicalBlockFile(scope: !3476, file: !373, discriminator: 6)
!3483 = !DILocation(line: 501, column: 296, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3477, file: !373, discriminator: 5)
!3485 = !DILocation(line: 501, column: 276, scope: !3477)
!3486 = !DILocation(line: 501, column: 305, scope: !3477)
!3487 = !DILocation(line: 501, column: 318, scope: !3477)
!3488 = !DILocation(line: 501, column: 329, scope: !3477)
!3489 = !DILocation(line: 501, column: 261, scope: !3477)
!3490 = !DILocation(line: 501, column: 356, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3477, file: !373, discriminator: 8)
!3492 = !DILocation(line: 501, column: 336, scope: !3477)
!3493 = !DILocation(line: 501, column: 365, scope: !3477)
!3494 = !DILocation(line: 501, column: 261, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3477, file: !373, discriminator: 9)
!3496 = !DILocation(line: 501, column: 258, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3498, file: !373, discriminator: 11)
!3498 = !DILexicalBlockFile(scope: !3477, file: !373, discriminator: 10)
!3499 = !DILocation(line: 501, column: 397, scope: !3477)
!3500 = !DILocation(line: 501, column: 425, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3502, file: !373, discriminator: 12)
!3502 = !DILexicalBlockFile(scope: !616, file: !373, discriminator: 4)
!3503 = !DILocation(line: 501, column: 407, scope: !616)
!3504 = !DILocation(line: 501, column: 400, scope: !616)
!3505 = !DILocation(line: 501, column: 433, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3507, file: !373, discriminator: 13)
!3507 = !DILexicalBlockFile(scope: !616, file: !373, discriminator: 7)
!3508 = !DILocation(line: 502, column: 39, scope: !619)
!3509 = !DILocation(line: 502, column: 68, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !619, file: !373, line: 502, column: 52)
!3511 = !DILocation(line: 502, column: 77, scope: !3510)
!3512 = !DILocation(line: 502, column: 86, scope: !3510)
!3513 = !DILocation(line: 502, column: 112, scope: !3510)
!3514 = !DILocation(line: 502, column: 130, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3510, file: !373, discriminator: 2)
!3516 = !DILocation(line: 502, column: 139, scope: !3510)
!3517 = !DILocation(line: 502, column: 148, scope: !3510)
!3518 = !DILocation(line: 502, column: 52, scope: !619)
!3519 = !DILocation(line: 502, column: 225, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3521, file: !373, discriminator: 3)
!3521 = !DILexicalBlockFile(scope: !3522, file: !373, discriminator: 1)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !373, line: 502, column: 190)
!3523 = distinct !DILexicalBlock(scope: !3510, file: !373, line: 502, column: 184)
!3524 = !DILocation(line: 502, column: 206, scope: !3522)
!3525 = !DILocation(line: 502, column: 191, scope: !3522)
!3526 = !DILocation(line: 502, column: 190, scope: !3523)
!3527 = !DILocation(line: 502, column: 233, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3522, file: !373, discriminator: 6)
!3529 = !DILocation(line: 502, column: 296, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !3523, file: !373, discriminator: 5)
!3531 = !DILocation(line: 502, column: 276, scope: !3523)
!3532 = !DILocation(line: 502, column: 305, scope: !3523)
!3533 = !DILocation(line: 502, column: 318, scope: !3523)
!3534 = !DILocation(line: 502, column: 329, scope: !3523)
!3535 = !DILocation(line: 502, column: 261, scope: !3523)
!3536 = !DILocation(line: 502, column: 356, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3523, file: !373, discriminator: 8)
!3538 = !DILocation(line: 502, column: 336, scope: !3523)
!3539 = !DILocation(line: 502, column: 365, scope: !3523)
!3540 = !DILocation(line: 502, column: 261, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3523, file: !373, discriminator: 9)
!3542 = !DILocation(line: 502, column: 258, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3544, file: !373, discriminator: 11)
!3544 = !DILexicalBlockFile(scope: !3523, file: !373, discriminator: 10)
!3545 = !DILocation(line: 502, column: 397, scope: !3523)
!3546 = !DILocation(line: 502, column: 425, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3548, file: !373, discriminator: 12)
!3548 = !DILexicalBlockFile(scope: !619, file: !373, discriminator: 4)
!3549 = !DILocation(line: 502, column: 407, scope: !619)
!3550 = !DILocation(line: 502, column: 400, scope: !619)
!3551 = !DILocation(line: 502, column: 433, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3553, file: !373, discriminator: 13)
!3553 = !DILexicalBlockFile(scope: !619, file: !373, discriminator: 7)
!3554 = !DILocation(line: 526, column: 29, scope: !622)
!3555 = !DILocation(line: 528, column: 5, scope: !622)
!3556 = !DILocation(line: 528, column: 15, scope: !622)
!3557 = !DILocation(line: 528, column: 55, scope: !622)
!3558 = !DILocation(line: 528, column: 64, scope: !622)
!3559 = !DILocation(line: 528, column: 77, scope: !622)
!3560 = !DILocation(line: 528, column: 88, scope: !622)
!3561 = !DILocation(line: 528, column: 20, scope: !622)
!3562 = !DILocation(line: 528, column: 115, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !622, file: !373, discriminator: 1)
!3564 = !DILocation(line: 528, column: 124, scope: !622)
!3565 = !DILocation(line: 528, column: 20, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !622, file: !373, discriminator: 2)
!3567 = !DILocation(line: 528, column: 15, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3569, file: !373, discriminator: 4)
!3569 = !DILexicalBlockFile(scope: !622, file: !373, discriminator: 3)
!3570 = !DILocation(line: 529, column: 25, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !622, file: !373, line: 529, column: 9)
!3572 = !DILocation(line: 529, column: 10, scope: !3571)
!3573 = !DILocation(line: 529, column: 9, scope: !622)
!3574 = !DILocation(line: 530, column: 9, scope: !3571)
!3575 = !DILocation(line: 531, column: 28, scope: !622)
!3576 = !DILocation(line: 531, column: 12, scope: !622)
!3577 = !DILocation(line: 531, column: 5, scope: !622)
!3578 = !DILocation(line: 532, column: 1, scope: !622)
!3579 = !DILocation(line: 503, column: 42, scope: !626)
!3580 = !DILocation(line: 503, column: 71, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !626, file: !373, line: 503, column: 55)
!3582 = !DILocation(line: 503, column: 80, scope: !3581)
!3583 = !DILocation(line: 503, column: 89, scope: !3581)
!3584 = !DILocation(line: 503, column: 115, scope: !3581)
!3585 = !DILocation(line: 503, column: 133, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3581, file: !373, discriminator: 2)
!3587 = !DILocation(line: 503, column: 142, scope: !3581)
!3588 = !DILocation(line: 503, column: 151, scope: !3581)
!3589 = !DILocation(line: 503, column: 55, scope: !626)
!3590 = !DILocation(line: 503, column: 228, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3592, file: !373, discriminator: 3)
!3592 = !DILexicalBlockFile(scope: !3593, file: !373, discriminator: 1)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !373, line: 503, column: 193)
!3594 = distinct !DILexicalBlock(scope: !3581, file: !373, line: 503, column: 187)
!3595 = !DILocation(line: 503, column: 209, scope: !3593)
!3596 = !DILocation(line: 503, column: 194, scope: !3593)
!3597 = !DILocation(line: 503, column: 193, scope: !3594)
!3598 = !DILocation(line: 503, column: 236, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3593, file: !373, discriminator: 6)
!3600 = !DILocation(line: 503, column: 299, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3594, file: !373, discriminator: 5)
!3602 = !DILocation(line: 503, column: 279, scope: !3594)
!3603 = !DILocation(line: 503, column: 308, scope: !3594)
!3604 = !DILocation(line: 503, column: 321, scope: !3594)
!3605 = !DILocation(line: 503, column: 332, scope: !3594)
!3606 = !DILocation(line: 503, column: 264, scope: !3594)
!3607 = !DILocation(line: 503, column: 359, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3594, file: !373, discriminator: 8)
!3609 = !DILocation(line: 503, column: 339, scope: !3594)
!3610 = !DILocation(line: 503, column: 368, scope: !3594)
!3611 = !DILocation(line: 503, column: 264, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !3594, file: !373, discriminator: 9)
!3613 = !DILocation(line: 503, column: 261, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3615, file: !373, discriminator: 11)
!3615 = !DILexicalBlockFile(scope: !3594, file: !373, discriminator: 10)
!3616 = !DILocation(line: 503, column: 400, scope: !3594)
!3617 = !DILocation(line: 503, column: 426, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3619, file: !373, discriminator: 12)
!3619 = !DILexicalBlockFile(scope: !626, file: !373, discriminator: 4)
!3620 = !DILocation(line: 503, column: 410, scope: !626)
!3621 = !DILocation(line: 503, column: 403, scope: !626)
!3622 = !DILocation(line: 503, column: 434, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3624, file: !373, discriminator: 13)
!3624 = !DILexicalBlockFile(scope: !626, file: !373, discriminator: 7)
!3625 = !DILocation(line: 504, column: 42, scope: !629)
!3626 = !DILocation(line: 504, column: 55, scope: !629)
!3627 = !DILocation(line: 504, column: 80, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !629, file: !373, line: 504, column: 64)
!3629 = !DILocation(line: 504, column: 85, scope: !3628)
!3630 = !DILocation(line: 504, column: 94, scope: !3628)
!3631 = !DILocation(line: 504, column: 120, scope: !3628)
!3632 = !DILocation(line: 504, column: 138, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3628, file: !373, discriminator: 2)
!3634 = !DILocation(line: 504, column: 143, scope: !3628)
!3635 = !DILocation(line: 504, column: 152, scope: !3628)
!3636 = !DILocation(line: 504, column: 64, scope: !629)
!3637 = !DILocation(line: 504, column: 229, scope: !3638)
!3638 = !DILexicalBlockFile(scope: !3639, file: !373, discriminator: 3)
!3639 = !DILexicalBlockFile(scope: !3640, file: !373, discriminator: 1)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !373, line: 504, column: 194)
!3641 = distinct !DILexicalBlock(scope: !3628, file: !373, line: 504, column: 188)
!3642 = !DILocation(line: 504, column: 210, scope: !3640)
!3643 = !DILocation(line: 504, column: 195, scope: !3640)
!3644 = !DILocation(line: 504, column: 194, scope: !3641)
!3645 = !DILocation(line: 504, column: 233, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3640, file: !373, discriminator: 6)
!3647 = !DILocation(line: 504, column: 292, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3641, file: !373, discriminator: 5)
!3649 = !DILocation(line: 504, column: 272, scope: !3641)
!3650 = !DILocation(line: 504, column: 297, scope: !3641)
!3651 = !DILocation(line: 504, column: 310, scope: !3641)
!3652 = !DILocation(line: 504, column: 321, scope: !3641)
!3653 = !DILocation(line: 504, column: 257, scope: !3641)
!3654 = !DILocation(line: 504, column: 348, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3641, file: !373, discriminator: 8)
!3656 = !DILocation(line: 504, column: 328, scope: !3641)
!3657 = !DILocation(line: 504, column: 353, scope: !3641)
!3658 = !DILocation(line: 504, column: 257, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3641, file: !373, discriminator: 9)
!3660 = !DILocation(line: 504, column: 254, scope: !3661)
!3661 = !DILexicalBlockFile(scope: !3662, file: !373, discriminator: 11)
!3662 = !DILexicalBlockFile(scope: !3641, file: !373, discriminator: 10)
!3663 = !DILocation(line: 504, column: 385, scope: !3641)
!3664 = !DILocation(line: 504, column: 408, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3666, file: !373, discriminator: 12)
!3666 = !DILexicalBlockFile(scope: !3667, file: !373, discriminator: 4)
!3667 = distinct !DILexicalBlock(scope: !629, file: !373, line: 504, column: 392)
!3668 = !DILocation(line: 504, column: 413, scope: !3667)
!3669 = !DILocation(line: 504, column: 422, scope: !3667)
!3670 = !DILocation(line: 504, column: 448, scope: !3667)
!3671 = !DILocation(line: 504, column: 466, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3667, file: !373, discriminator: 14)
!3673 = !DILocation(line: 504, column: 471, scope: !3667)
!3674 = !DILocation(line: 504, column: 480, scope: !3667)
!3675 = !DILocation(line: 504, column: 392, scope: !629)
!3676 = !DILocation(line: 504, column: 557, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3678, file: !373, discriminator: 15)
!3678 = !DILexicalBlockFile(scope: !3679, file: !373, discriminator: 13)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !373, line: 504, column: 522)
!3680 = distinct !DILexicalBlock(scope: !3667, file: !373, line: 504, column: 516)
!3681 = !DILocation(line: 504, column: 538, scope: !3679)
!3682 = !DILocation(line: 504, column: 523, scope: !3679)
!3683 = !DILocation(line: 504, column: 522, scope: !3680)
!3684 = !DILocation(line: 504, column: 561, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3679, file: !373, discriminator: 18)
!3686 = !DILocation(line: 504, column: 620, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3680, file: !373, discriminator: 17)
!3688 = !DILocation(line: 504, column: 600, scope: !3680)
!3689 = !DILocation(line: 504, column: 625, scope: !3680)
!3690 = !DILocation(line: 504, column: 638, scope: !3680)
!3691 = !DILocation(line: 504, column: 649, scope: !3680)
!3692 = !DILocation(line: 504, column: 585, scope: !3680)
!3693 = !DILocation(line: 504, column: 676, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3680, file: !373, discriminator: 20)
!3695 = !DILocation(line: 504, column: 656, scope: !3680)
!3696 = !DILocation(line: 504, column: 681, scope: !3680)
!3697 = !DILocation(line: 504, column: 585, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !3680, file: !373, discriminator: 21)
!3699 = !DILocation(line: 504, column: 582, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3701, file: !373, discriminator: 23)
!3701 = !DILexicalBlockFile(scope: !3680, file: !373, discriminator: 22)
!3702 = !DILocation(line: 504, column: 713, scope: !3680)
!3703 = !DILocation(line: 504, column: 739, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3705, file: !373, discriminator: 24)
!3705 = !DILexicalBlockFile(scope: !629, file: !373, discriminator: 16)
!3706 = !DILocation(line: 504, column: 742, scope: !629)
!3707 = !DILocation(line: 504, column: 723, scope: !629)
!3708 = !DILocation(line: 504, column: 716, scope: !629)
!3709 = !DILocation(line: 504, column: 746, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3711, file: !373, discriminator: 25)
!3711 = !DILexicalBlockFile(scope: !3712, file: !373, discriminator: 19)
!3712 = !DILexicalBlockFile(scope: !629, file: !373, discriminator: 7)
!3713 = !DILocation(line: 505, column: 42, scope: !633)
!3714 = !DILocation(line: 505, column: 55, scope: !633)
!3715 = !DILocation(line: 505, column: 80, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !633, file: !373, line: 505, column: 64)
!3717 = !DILocation(line: 505, column: 85, scope: !3716)
!3718 = !DILocation(line: 505, column: 94, scope: !3716)
!3719 = !DILocation(line: 505, column: 120, scope: !3716)
!3720 = !DILocation(line: 505, column: 138, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !3716, file: !373, discriminator: 2)
!3722 = !DILocation(line: 505, column: 143, scope: !3716)
!3723 = !DILocation(line: 505, column: 152, scope: !3716)
!3724 = !DILocation(line: 505, column: 64, scope: !633)
!3725 = !DILocation(line: 505, column: 229, scope: !3726)
!3726 = !DILexicalBlockFile(scope: !3727, file: !373, discriminator: 3)
!3727 = !DILexicalBlockFile(scope: !3728, file: !373, discriminator: 1)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !373, line: 505, column: 194)
!3729 = distinct !DILexicalBlock(scope: !3716, file: !373, line: 505, column: 188)
!3730 = !DILocation(line: 505, column: 210, scope: !3728)
!3731 = !DILocation(line: 505, column: 195, scope: !3728)
!3732 = !DILocation(line: 505, column: 194, scope: !3729)
!3733 = !DILocation(line: 505, column: 233, scope: !3734)
!3734 = !DILexicalBlockFile(scope: !3728, file: !373, discriminator: 6)
!3735 = !DILocation(line: 505, column: 292, scope: !3736)
!3736 = !DILexicalBlockFile(scope: !3729, file: !373, discriminator: 5)
!3737 = !DILocation(line: 505, column: 272, scope: !3729)
!3738 = !DILocation(line: 505, column: 297, scope: !3729)
!3739 = !DILocation(line: 505, column: 310, scope: !3729)
!3740 = !DILocation(line: 505, column: 321, scope: !3729)
!3741 = !DILocation(line: 505, column: 257, scope: !3729)
!3742 = !DILocation(line: 505, column: 348, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !3729, file: !373, discriminator: 8)
!3744 = !DILocation(line: 505, column: 328, scope: !3729)
!3745 = !DILocation(line: 505, column: 353, scope: !3729)
!3746 = !DILocation(line: 505, column: 257, scope: !3747)
!3747 = !DILexicalBlockFile(scope: !3729, file: !373, discriminator: 9)
!3748 = !DILocation(line: 505, column: 254, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3750, file: !373, discriminator: 11)
!3750 = !DILexicalBlockFile(scope: !3729, file: !373, discriminator: 10)
!3751 = !DILocation(line: 505, column: 385, scope: !3729)
!3752 = !DILocation(line: 505, column: 408, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3754, file: !373, discriminator: 12)
!3754 = !DILexicalBlockFile(scope: !3755, file: !373, discriminator: 4)
!3755 = distinct !DILexicalBlock(scope: !633, file: !373, line: 505, column: 392)
!3756 = !DILocation(line: 505, column: 413, scope: !3755)
!3757 = !DILocation(line: 505, column: 422, scope: !3755)
!3758 = !DILocation(line: 505, column: 448, scope: !3755)
!3759 = !DILocation(line: 505, column: 466, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !3755, file: !373, discriminator: 14)
!3761 = !DILocation(line: 505, column: 471, scope: !3755)
!3762 = !DILocation(line: 505, column: 480, scope: !3755)
!3763 = !DILocation(line: 505, column: 392, scope: !633)
!3764 = !DILocation(line: 505, column: 557, scope: !3765)
!3765 = !DILexicalBlockFile(scope: !3766, file: !373, discriminator: 15)
!3766 = !DILexicalBlockFile(scope: !3767, file: !373, discriminator: 13)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !373, line: 505, column: 522)
!3768 = distinct !DILexicalBlock(scope: !3755, file: !373, line: 505, column: 516)
!3769 = !DILocation(line: 505, column: 538, scope: !3767)
!3770 = !DILocation(line: 505, column: 523, scope: !3767)
!3771 = !DILocation(line: 505, column: 522, scope: !3768)
!3772 = !DILocation(line: 505, column: 561, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3767, file: !373, discriminator: 18)
!3774 = !DILocation(line: 505, column: 620, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !3768, file: !373, discriminator: 17)
!3776 = !DILocation(line: 505, column: 600, scope: !3768)
!3777 = !DILocation(line: 505, column: 625, scope: !3768)
!3778 = !DILocation(line: 505, column: 638, scope: !3768)
!3779 = !DILocation(line: 505, column: 649, scope: !3768)
!3780 = !DILocation(line: 505, column: 585, scope: !3768)
!3781 = !DILocation(line: 505, column: 676, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !3768, file: !373, discriminator: 20)
!3783 = !DILocation(line: 505, column: 656, scope: !3768)
!3784 = !DILocation(line: 505, column: 681, scope: !3768)
!3785 = !DILocation(line: 505, column: 585, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3768, file: !373, discriminator: 21)
!3787 = !DILocation(line: 505, column: 582, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3789, file: !373, discriminator: 23)
!3789 = !DILexicalBlockFile(scope: !3768, file: !373, discriminator: 22)
!3790 = !DILocation(line: 505, column: 713, scope: !3768)
!3791 = !DILocation(line: 505, column: 739, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3793, file: !373, discriminator: 24)
!3793 = !DILexicalBlockFile(scope: !633, file: !373, discriminator: 16)
!3794 = !DILocation(line: 505, column: 742, scope: !633)
!3795 = !DILocation(line: 505, column: 723, scope: !633)
!3796 = !DILocation(line: 505, column: 716, scope: !633)
!3797 = !DILocation(line: 505, column: 746, scope: !3798)
!3798 = !DILexicalBlockFile(scope: !3799, file: !373, discriminator: 25)
!3799 = !DILexicalBlockFile(scope: !3800, file: !373, discriminator: 19)
!3800 = !DILexicalBlockFile(scope: !633, file: !373, discriminator: 7)
!3801 = !DILocation(line: 506, column: 39, scope: !637)
!3802 = !DILocation(line: 506, column: 52, scope: !637)
!3803 = !DILocation(line: 506, column: 77, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !637, file: !373, line: 506, column: 61)
!3805 = !DILocation(line: 506, column: 82, scope: !3804)
!3806 = !DILocation(line: 506, column: 91, scope: !3804)
!3807 = !DILocation(line: 506, column: 117, scope: !3804)
!3808 = !DILocation(line: 506, column: 135, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !3804, file: !373, discriminator: 2)
!3810 = !DILocation(line: 506, column: 140, scope: !3804)
!3811 = !DILocation(line: 506, column: 149, scope: !3804)
!3812 = !DILocation(line: 506, column: 61, scope: !637)
!3813 = !DILocation(line: 506, column: 226, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3815, file: !373, discriminator: 3)
!3815 = !DILexicalBlockFile(scope: !3816, file: !373, discriminator: 1)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !373, line: 506, column: 191)
!3817 = distinct !DILexicalBlock(scope: !3804, file: !373, line: 506, column: 185)
!3818 = !DILocation(line: 506, column: 207, scope: !3816)
!3819 = !DILocation(line: 506, column: 192, scope: !3816)
!3820 = !DILocation(line: 506, column: 191, scope: !3817)
!3821 = !DILocation(line: 506, column: 230, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !3816, file: !373, discriminator: 6)
!3823 = !DILocation(line: 506, column: 289, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3817, file: !373, discriminator: 5)
!3825 = !DILocation(line: 506, column: 269, scope: !3817)
!3826 = !DILocation(line: 506, column: 294, scope: !3817)
!3827 = !DILocation(line: 506, column: 307, scope: !3817)
!3828 = !DILocation(line: 506, column: 318, scope: !3817)
!3829 = !DILocation(line: 506, column: 254, scope: !3817)
!3830 = !DILocation(line: 506, column: 345, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3817, file: !373, discriminator: 8)
!3832 = !DILocation(line: 506, column: 325, scope: !3817)
!3833 = !DILocation(line: 506, column: 350, scope: !3817)
!3834 = !DILocation(line: 506, column: 254, scope: !3835)
!3835 = !DILexicalBlockFile(scope: !3817, file: !373, discriminator: 9)
!3836 = !DILocation(line: 506, column: 251, scope: !3837)
!3837 = !DILexicalBlockFile(scope: !3838, file: !373, discriminator: 11)
!3838 = !DILexicalBlockFile(scope: !3817, file: !373, discriminator: 10)
!3839 = !DILocation(line: 506, column: 382, scope: !3817)
!3840 = !DILocation(line: 506, column: 405, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3842, file: !373, discriminator: 12)
!3842 = !DILexicalBlockFile(scope: !3843, file: !373, discriminator: 4)
!3843 = distinct !DILexicalBlock(scope: !637, file: !373, line: 506, column: 389)
!3844 = !DILocation(line: 506, column: 410, scope: !3843)
!3845 = !DILocation(line: 506, column: 419, scope: !3843)
!3846 = !DILocation(line: 506, column: 445, scope: !3843)
!3847 = !DILocation(line: 506, column: 463, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3843, file: !373, discriminator: 14)
!3849 = !DILocation(line: 506, column: 468, scope: !3843)
!3850 = !DILocation(line: 506, column: 477, scope: !3843)
!3851 = !DILocation(line: 506, column: 389, scope: !637)
!3852 = !DILocation(line: 506, column: 554, scope: !3853)
!3853 = !DILexicalBlockFile(scope: !3854, file: !373, discriminator: 15)
!3854 = !DILexicalBlockFile(scope: !3855, file: !373, discriminator: 13)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !373, line: 506, column: 519)
!3856 = distinct !DILexicalBlock(scope: !3843, file: !373, line: 506, column: 513)
!3857 = !DILocation(line: 506, column: 535, scope: !3855)
!3858 = !DILocation(line: 506, column: 520, scope: !3855)
!3859 = !DILocation(line: 506, column: 519, scope: !3856)
!3860 = !DILocation(line: 506, column: 558, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3855, file: !373, discriminator: 18)
!3862 = !DILocation(line: 506, column: 617, scope: !3863)
!3863 = !DILexicalBlockFile(scope: !3856, file: !373, discriminator: 17)
!3864 = !DILocation(line: 506, column: 597, scope: !3856)
!3865 = !DILocation(line: 506, column: 622, scope: !3856)
!3866 = !DILocation(line: 506, column: 635, scope: !3856)
!3867 = !DILocation(line: 506, column: 646, scope: !3856)
!3868 = !DILocation(line: 506, column: 582, scope: !3856)
!3869 = !DILocation(line: 506, column: 673, scope: !3870)
!3870 = !DILexicalBlockFile(scope: !3856, file: !373, discriminator: 20)
!3871 = !DILocation(line: 506, column: 653, scope: !3856)
!3872 = !DILocation(line: 506, column: 678, scope: !3856)
!3873 = !DILocation(line: 506, column: 582, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3856, file: !373, discriminator: 21)
!3875 = !DILocation(line: 506, column: 579, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3877, file: !373, discriminator: 23)
!3877 = !DILexicalBlockFile(scope: !3856, file: !373, discriminator: 22)
!3878 = !DILocation(line: 506, column: 710, scope: !3856)
!3879 = !DILocation(line: 506, column: 733, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3881, file: !373, discriminator: 24)
!3881 = !DILexicalBlockFile(scope: !637, file: !373, discriminator: 16)
!3882 = !DILocation(line: 506, column: 736, scope: !637)
!3883 = !DILocation(line: 506, column: 720, scope: !637)
!3884 = !DILocation(line: 506, column: 713, scope: !637)
!3885 = !DILocation(line: 506, column: 740, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3887, file: !373, discriminator: 25)
!3887 = !DILexicalBlockFile(scope: !3888, file: !373, discriminator: 19)
!3888 = !DILexicalBlockFile(scope: !637, file: !373, discriminator: 7)
!3889 = !DILocation(line: 507, column: 39, scope: !641)
!3890 = !DILocation(line: 507, column: 52, scope: !641)
!3891 = !DILocation(line: 507, column: 77, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !641, file: !373, line: 507, column: 61)
!3893 = !DILocation(line: 507, column: 82, scope: !3892)
!3894 = !DILocation(line: 507, column: 91, scope: !3892)
!3895 = !DILocation(line: 507, column: 117, scope: !3892)
!3896 = !DILocation(line: 507, column: 135, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !3892, file: !373, discriminator: 2)
!3898 = !DILocation(line: 507, column: 140, scope: !3892)
!3899 = !DILocation(line: 507, column: 149, scope: !3892)
!3900 = !DILocation(line: 507, column: 61, scope: !641)
!3901 = !DILocation(line: 507, column: 226, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !3903, file: !373, discriminator: 3)
!3903 = !DILexicalBlockFile(scope: !3904, file: !373, discriminator: 1)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !373, line: 507, column: 191)
!3905 = distinct !DILexicalBlock(scope: !3892, file: !373, line: 507, column: 185)
!3906 = !DILocation(line: 507, column: 207, scope: !3904)
!3907 = !DILocation(line: 507, column: 192, scope: !3904)
!3908 = !DILocation(line: 507, column: 191, scope: !3905)
!3909 = !DILocation(line: 507, column: 230, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3904, file: !373, discriminator: 6)
!3911 = !DILocation(line: 507, column: 289, scope: !3912)
!3912 = !DILexicalBlockFile(scope: !3905, file: !373, discriminator: 5)
!3913 = !DILocation(line: 507, column: 269, scope: !3905)
!3914 = !DILocation(line: 507, column: 294, scope: !3905)
!3915 = !DILocation(line: 507, column: 307, scope: !3905)
!3916 = !DILocation(line: 507, column: 318, scope: !3905)
!3917 = !DILocation(line: 507, column: 254, scope: !3905)
!3918 = !DILocation(line: 507, column: 345, scope: !3919)
!3919 = !DILexicalBlockFile(scope: !3905, file: !373, discriminator: 8)
!3920 = !DILocation(line: 507, column: 325, scope: !3905)
!3921 = !DILocation(line: 507, column: 350, scope: !3905)
!3922 = !DILocation(line: 507, column: 254, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !3905, file: !373, discriminator: 9)
!3924 = !DILocation(line: 507, column: 251, scope: !3925)
!3925 = !DILexicalBlockFile(scope: !3926, file: !373, discriminator: 11)
!3926 = !DILexicalBlockFile(scope: !3905, file: !373, discriminator: 10)
!3927 = !DILocation(line: 507, column: 382, scope: !3905)
!3928 = !DILocation(line: 507, column: 405, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3930, file: !373, discriminator: 12)
!3930 = !DILexicalBlockFile(scope: !3931, file: !373, discriminator: 4)
!3931 = distinct !DILexicalBlock(scope: !641, file: !373, line: 507, column: 389)
!3932 = !DILocation(line: 507, column: 410, scope: !3931)
!3933 = !DILocation(line: 507, column: 419, scope: !3931)
!3934 = !DILocation(line: 507, column: 445, scope: !3931)
!3935 = !DILocation(line: 507, column: 463, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3931, file: !373, discriminator: 14)
!3937 = !DILocation(line: 507, column: 468, scope: !3931)
!3938 = !DILocation(line: 507, column: 477, scope: !3931)
!3939 = !DILocation(line: 507, column: 389, scope: !641)
!3940 = !DILocation(line: 507, column: 554, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !3942, file: !373, discriminator: 15)
!3942 = !DILexicalBlockFile(scope: !3943, file: !373, discriminator: 13)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !373, line: 507, column: 519)
!3944 = distinct !DILexicalBlock(scope: !3931, file: !373, line: 507, column: 513)
!3945 = !DILocation(line: 507, column: 535, scope: !3943)
!3946 = !DILocation(line: 507, column: 520, scope: !3943)
!3947 = !DILocation(line: 507, column: 519, scope: !3944)
!3948 = !DILocation(line: 507, column: 558, scope: !3949)
!3949 = !DILexicalBlockFile(scope: !3943, file: !373, discriminator: 18)
!3950 = !DILocation(line: 507, column: 617, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3944, file: !373, discriminator: 17)
!3952 = !DILocation(line: 507, column: 597, scope: !3944)
!3953 = !DILocation(line: 507, column: 622, scope: !3944)
!3954 = !DILocation(line: 507, column: 635, scope: !3944)
!3955 = !DILocation(line: 507, column: 646, scope: !3944)
!3956 = !DILocation(line: 507, column: 582, scope: !3944)
!3957 = !DILocation(line: 507, column: 673, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3944, file: !373, discriminator: 20)
!3959 = !DILocation(line: 507, column: 653, scope: !3944)
!3960 = !DILocation(line: 507, column: 678, scope: !3944)
!3961 = !DILocation(line: 507, column: 582, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3944, file: !373, discriminator: 21)
!3963 = !DILocation(line: 507, column: 579, scope: !3964)
!3964 = !DILexicalBlockFile(scope: !3965, file: !373, discriminator: 23)
!3965 = !DILexicalBlockFile(scope: !3944, file: !373, discriminator: 22)
!3966 = !DILocation(line: 507, column: 710, scope: !3944)
!3967 = !DILocation(line: 507, column: 733, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3969, file: !373, discriminator: 24)
!3969 = !DILexicalBlockFile(scope: !641, file: !373, discriminator: 16)
!3970 = !DILocation(line: 507, column: 736, scope: !641)
!3971 = !DILocation(line: 507, column: 720, scope: !641)
!3972 = !DILocation(line: 507, column: 713, scope: !641)
!3973 = !DILocation(line: 507, column: 740, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3975, file: !373, discriminator: 25)
!3975 = !DILexicalBlockFile(scope: !3976, file: !373, discriminator: 19)
!3976 = !DILexicalBlockFile(scope: !641, file: !373, discriminator: 7)
!3977 = !DILocation(line: 508, column: 38, scope: !645)
!3978 = !DILocation(line: 508, column: 51, scope: !645)
!3979 = !DILocation(line: 508, column: 76, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !645, file: !373, line: 508, column: 60)
!3981 = !DILocation(line: 508, column: 81, scope: !3980)
!3982 = !DILocation(line: 508, column: 90, scope: !3980)
!3983 = !DILocation(line: 508, column: 116, scope: !3980)
!3984 = !DILocation(line: 508, column: 134, scope: !3985)
!3985 = !DILexicalBlockFile(scope: !3980, file: !373, discriminator: 2)
!3986 = !DILocation(line: 508, column: 139, scope: !3980)
!3987 = !DILocation(line: 508, column: 148, scope: !3980)
!3988 = !DILocation(line: 508, column: 60, scope: !645)
!3989 = !DILocation(line: 508, column: 225, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3991, file: !373, discriminator: 3)
!3991 = !DILexicalBlockFile(scope: !3992, file: !373, discriminator: 1)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !373, line: 508, column: 190)
!3993 = distinct !DILexicalBlock(scope: !3980, file: !373, line: 508, column: 184)
!3994 = !DILocation(line: 508, column: 206, scope: !3992)
!3995 = !DILocation(line: 508, column: 191, scope: !3992)
!3996 = !DILocation(line: 508, column: 190, scope: !3993)
!3997 = !DILocation(line: 508, column: 229, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3992, file: !373, discriminator: 6)
!3999 = !DILocation(line: 508, column: 288, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3993, file: !373, discriminator: 5)
!4001 = !DILocation(line: 508, column: 268, scope: !3993)
!4002 = !DILocation(line: 508, column: 293, scope: !3993)
!4003 = !DILocation(line: 508, column: 306, scope: !3993)
!4004 = !DILocation(line: 508, column: 317, scope: !3993)
!4005 = !DILocation(line: 508, column: 253, scope: !3993)
!4006 = !DILocation(line: 508, column: 344, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !3993, file: !373, discriminator: 8)
!4008 = !DILocation(line: 508, column: 324, scope: !3993)
!4009 = !DILocation(line: 508, column: 349, scope: !3993)
!4010 = !DILocation(line: 508, column: 253, scope: !4011)
!4011 = !DILexicalBlockFile(scope: !3993, file: !373, discriminator: 9)
!4012 = !DILocation(line: 508, column: 250, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4014, file: !373, discriminator: 11)
!4014 = !DILexicalBlockFile(scope: !3993, file: !373, discriminator: 10)
!4015 = !DILocation(line: 508, column: 381, scope: !3993)
!4016 = !DILocation(line: 508, column: 404, scope: !4017)
!4017 = !DILexicalBlockFile(scope: !4018, file: !373, discriminator: 12)
!4018 = !DILexicalBlockFile(scope: !4019, file: !373, discriminator: 4)
!4019 = distinct !DILexicalBlock(scope: !645, file: !373, line: 508, column: 388)
!4020 = !DILocation(line: 508, column: 409, scope: !4019)
!4021 = !DILocation(line: 508, column: 418, scope: !4019)
!4022 = !DILocation(line: 508, column: 444, scope: !4019)
!4023 = !DILocation(line: 508, column: 462, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !4019, file: !373, discriminator: 14)
!4025 = !DILocation(line: 508, column: 467, scope: !4019)
!4026 = !DILocation(line: 508, column: 476, scope: !4019)
!4027 = !DILocation(line: 508, column: 388, scope: !645)
!4028 = !DILocation(line: 508, column: 553, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !4030, file: !373, discriminator: 15)
!4030 = !DILexicalBlockFile(scope: !4031, file: !373, discriminator: 13)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !373, line: 508, column: 518)
!4032 = distinct !DILexicalBlock(scope: !4019, file: !373, line: 508, column: 512)
!4033 = !DILocation(line: 508, column: 534, scope: !4031)
!4034 = !DILocation(line: 508, column: 519, scope: !4031)
!4035 = !DILocation(line: 508, column: 518, scope: !4032)
!4036 = !DILocation(line: 508, column: 557, scope: !4037)
!4037 = !DILexicalBlockFile(scope: !4031, file: !373, discriminator: 18)
!4038 = !DILocation(line: 508, column: 616, scope: !4039)
!4039 = !DILexicalBlockFile(scope: !4032, file: !373, discriminator: 17)
!4040 = !DILocation(line: 508, column: 596, scope: !4032)
!4041 = !DILocation(line: 508, column: 621, scope: !4032)
!4042 = !DILocation(line: 508, column: 634, scope: !4032)
!4043 = !DILocation(line: 508, column: 645, scope: !4032)
!4044 = !DILocation(line: 508, column: 581, scope: !4032)
!4045 = !DILocation(line: 508, column: 672, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !4032, file: !373, discriminator: 20)
!4047 = !DILocation(line: 508, column: 652, scope: !4032)
!4048 = !DILocation(line: 508, column: 677, scope: !4032)
!4049 = !DILocation(line: 508, column: 581, scope: !4050)
!4050 = !DILexicalBlockFile(scope: !4032, file: !373, discriminator: 21)
!4051 = !DILocation(line: 508, column: 578, scope: !4052)
!4052 = !DILexicalBlockFile(scope: !4053, file: !373, discriminator: 23)
!4053 = !DILexicalBlockFile(scope: !4032, file: !373, discriminator: 22)
!4054 = !DILocation(line: 508, column: 709, scope: !4032)
!4055 = !DILocation(line: 508, column: 731, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4057, file: !373, discriminator: 24)
!4057 = !DILexicalBlockFile(scope: !645, file: !373, discriminator: 16)
!4058 = !DILocation(line: 508, column: 734, scope: !645)
!4059 = !DILocation(line: 508, column: 719, scope: !645)
!4060 = !DILocation(line: 508, column: 712, scope: !645)
!4061 = !DILocation(line: 508, column: 738, scope: !4062)
!4062 = !DILexicalBlockFile(scope: !4063, file: !373, discriminator: 25)
!4063 = !DILexicalBlockFile(scope: !4064, file: !373, discriminator: 19)
!4064 = !DILexicalBlockFile(scope: !645, file: !373, discriminator: 7)
!4065 = !DILocation(line: 509, column: 39, scope: !649)
!4066 = !DILocation(line: 509, column: 68, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !649, file: !373, line: 509, column: 52)
!4068 = !DILocation(line: 509, column: 77, scope: !4067)
!4069 = !DILocation(line: 509, column: 86, scope: !4067)
!4070 = !DILocation(line: 509, column: 112, scope: !4067)
!4071 = !DILocation(line: 509, column: 130, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4067, file: !373, discriminator: 2)
!4073 = !DILocation(line: 509, column: 139, scope: !4067)
!4074 = !DILocation(line: 509, column: 148, scope: !4067)
!4075 = !DILocation(line: 509, column: 52, scope: !649)
!4076 = !DILocation(line: 509, column: 225, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !4078, file: !373, discriminator: 3)
!4078 = !DILexicalBlockFile(scope: !4079, file: !373, discriminator: 1)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !373, line: 509, column: 190)
!4080 = distinct !DILexicalBlock(scope: !4067, file: !373, line: 509, column: 184)
!4081 = !DILocation(line: 509, column: 206, scope: !4079)
!4082 = !DILocation(line: 509, column: 191, scope: !4079)
!4083 = !DILocation(line: 509, column: 190, scope: !4080)
!4084 = !DILocation(line: 509, column: 233, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !4079, file: !373, discriminator: 6)
!4086 = !DILocation(line: 509, column: 296, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !4080, file: !373, discriminator: 5)
!4088 = !DILocation(line: 509, column: 276, scope: !4080)
!4089 = !DILocation(line: 509, column: 305, scope: !4080)
!4090 = !DILocation(line: 509, column: 318, scope: !4080)
!4091 = !DILocation(line: 509, column: 329, scope: !4080)
!4092 = !DILocation(line: 509, column: 261, scope: !4080)
!4093 = !DILocation(line: 509, column: 356, scope: !4094)
!4094 = !DILexicalBlockFile(scope: !4080, file: !373, discriminator: 8)
!4095 = !DILocation(line: 509, column: 336, scope: !4080)
!4096 = !DILocation(line: 509, column: 365, scope: !4080)
!4097 = !DILocation(line: 509, column: 261, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !4080, file: !373, discriminator: 9)
!4099 = !DILocation(line: 509, column: 258, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !4101, file: !373, discriminator: 11)
!4101 = !DILexicalBlockFile(scope: !4080, file: !373, discriminator: 10)
!4102 = !DILocation(line: 509, column: 397, scope: !4080)
!4103 = !DILocation(line: 509, column: 421, scope: !4104)
!4104 = !DILexicalBlockFile(scope: !4105, file: !373, discriminator: 12)
!4105 = !DILexicalBlockFile(scope: !649, file: !373, discriminator: 4)
!4106 = !DILocation(line: 509, column: 407, scope: !649)
!4107 = !DILocation(line: 509, column: 400, scope: !649)
!4108 = !DILocation(line: 509, column: 429, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !4110, file: !373, discriminator: 13)
!4110 = !DILexicalBlockFile(scope: !649, file: !373, discriminator: 7)
!4111 = !DILocation(line: 510, column: 41, scope: !652)
!4112 = !DILocation(line: 510, column: 70, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !652, file: !373, line: 510, column: 54)
!4114 = !DILocation(line: 510, column: 79, scope: !4113)
!4115 = !DILocation(line: 510, column: 88, scope: !4113)
!4116 = !DILocation(line: 510, column: 114, scope: !4113)
!4117 = !DILocation(line: 510, column: 132, scope: !4118)
!4118 = !DILexicalBlockFile(scope: !4113, file: !373, discriminator: 2)
!4119 = !DILocation(line: 510, column: 141, scope: !4113)
!4120 = !DILocation(line: 510, column: 150, scope: !4113)
!4121 = !DILocation(line: 510, column: 54, scope: !652)
!4122 = !DILocation(line: 510, column: 227, scope: !4123)
!4123 = !DILexicalBlockFile(scope: !4124, file: !373, discriminator: 3)
!4124 = !DILexicalBlockFile(scope: !4125, file: !373, discriminator: 1)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !373, line: 510, column: 192)
!4126 = distinct !DILexicalBlock(scope: !4113, file: !373, line: 510, column: 186)
!4127 = !DILocation(line: 510, column: 208, scope: !4125)
!4128 = !DILocation(line: 510, column: 193, scope: !4125)
!4129 = !DILocation(line: 510, column: 192, scope: !4126)
!4130 = !DILocation(line: 510, column: 235, scope: !4131)
!4131 = !DILexicalBlockFile(scope: !4125, file: !373, discriminator: 6)
!4132 = !DILocation(line: 510, column: 298, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4126, file: !373, discriminator: 5)
!4134 = !DILocation(line: 510, column: 278, scope: !4126)
!4135 = !DILocation(line: 510, column: 307, scope: !4126)
!4136 = !DILocation(line: 510, column: 320, scope: !4126)
!4137 = !DILocation(line: 510, column: 331, scope: !4126)
!4138 = !DILocation(line: 510, column: 263, scope: !4126)
!4139 = !DILocation(line: 510, column: 358, scope: !4140)
!4140 = !DILexicalBlockFile(scope: !4126, file: !373, discriminator: 8)
!4141 = !DILocation(line: 510, column: 338, scope: !4126)
!4142 = !DILocation(line: 510, column: 367, scope: !4126)
!4143 = !DILocation(line: 510, column: 263, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !4126, file: !373, discriminator: 9)
!4145 = !DILocation(line: 510, column: 260, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4147, file: !373, discriminator: 11)
!4147 = !DILexicalBlockFile(scope: !4126, file: !373, discriminator: 10)
!4148 = !DILocation(line: 510, column: 399, scope: !4126)
!4149 = !DILocation(line: 510, column: 424, scope: !4150)
!4150 = !DILexicalBlockFile(scope: !4151, file: !373, discriminator: 12)
!4151 = !DILexicalBlockFile(scope: !652, file: !373, discriminator: 4)
!4152 = !DILocation(line: 510, column: 409, scope: !652)
!4153 = !DILocation(line: 510, column: 402, scope: !652)
!4154 = !DILocation(line: 510, column: 432, scope: !4155)
!4155 = !DILexicalBlockFile(scope: !4156, file: !373, discriminator: 13)
!4156 = !DILexicalBlockFile(scope: !652, file: !373, discriminator: 7)
!4157 = !DILocation(line: 511, column: 40, scope: !655)
!4158 = !DILocation(line: 511, column: 53, scope: !655)
!4159 = !DILocation(line: 511, column: 78, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !655, file: !373, line: 511, column: 62)
!4161 = !DILocation(line: 511, column: 83, scope: !4160)
!4162 = !DILocation(line: 511, column: 92, scope: !4160)
!4163 = !DILocation(line: 511, column: 118, scope: !4160)
!4164 = !DILocation(line: 511, column: 136, scope: !4165)
!4165 = !DILexicalBlockFile(scope: !4160, file: !373, discriminator: 2)
!4166 = !DILocation(line: 511, column: 141, scope: !4160)
!4167 = !DILocation(line: 511, column: 150, scope: !4160)
!4168 = !DILocation(line: 511, column: 62, scope: !655)
!4169 = !DILocation(line: 511, column: 227, scope: !4170)
!4170 = !DILexicalBlockFile(scope: !4171, file: !373, discriminator: 3)
!4171 = !DILexicalBlockFile(scope: !4172, file: !373, discriminator: 1)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !373, line: 511, column: 192)
!4173 = distinct !DILexicalBlock(scope: !4160, file: !373, line: 511, column: 186)
!4174 = !DILocation(line: 511, column: 208, scope: !4172)
!4175 = !DILocation(line: 511, column: 193, scope: !4172)
!4176 = !DILocation(line: 511, column: 192, scope: !4173)
!4177 = !DILocation(line: 511, column: 231, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4172, file: !373, discriminator: 6)
!4179 = !DILocation(line: 511, column: 290, scope: !4180)
!4180 = !DILexicalBlockFile(scope: !4173, file: !373, discriminator: 5)
!4181 = !DILocation(line: 511, column: 270, scope: !4173)
!4182 = !DILocation(line: 511, column: 295, scope: !4173)
!4183 = !DILocation(line: 511, column: 308, scope: !4173)
!4184 = !DILocation(line: 511, column: 319, scope: !4173)
!4185 = !DILocation(line: 511, column: 255, scope: !4173)
!4186 = !DILocation(line: 511, column: 346, scope: !4187)
!4187 = !DILexicalBlockFile(scope: !4173, file: !373, discriminator: 8)
!4188 = !DILocation(line: 511, column: 326, scope: !4173)
!4189 = !DILocation(line: 511, column: 351, scope: !4173)
!4190 = !DILocation(line: 511, column: 255, scope: !4191)
!4191 = !DILexicalBlockFile(scope: !4173, file: !373, discriminator: 9)
!4192 = !DILocation(line: 511, column: 252, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4194, file: !373, discriminator: 11)
!4194 = !DILexicalBlockFile(scope: !4173, file: !373, discriminator: 10)
!4195 = !DILocation(line: 511, column: 383, scope: !4173)
!4196 = !DILocation(line: 511, column: 406, scope: !4197)
!4197 = !DILexicalBlockFile(scope: !4198, file: !373, discriminator: 12)
!4198 = !DILexicalBlockFile(scope: !4199, file: !373, discriminator: 4)
!4199 = distinct !DILexicalBlock(scope: !655, file: !373, line: 511, column: 390)
!4200 = !DILocation(line: 511, column: 411, scope: !4199)
!4201 = !DILocation(line: 511, column: 420, scope: !4199)
!4202 = !DILocation(line: 511, column: 446, scope: !4199)
!4203 = !DILocation(line: 511, column: 464, scope: !4204)
!4204 = !DILexicalBlockFile(scope: !4199, file: !373, discriminator: 14)
!4205 = !DILocation(line: 511, column: 469, scope: !4199)
!4206 = !DILocation(line: 511, column: 478, scope: !4199)
!4207 = !DILocation(line: 511, column: 390, scope: !655)
!4208 = !DILocation(line: 511, column: 555, scope: !4209)
!4209 = !DILexicalBlockFile(scope: !4210, file: !373, discriminator: 15)
!4210 = !DILexicalBlockFile(scope: !4211, file: !373, discriminator: 13)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !373, line: 511, column: 520)
!4212 = distinct !DILexicalBlock(scope: !4199, file: !373, line: 511, column: 514)
!4213 = !DILocation(line: 511, column: 536, scope: !4211)
!4214 = !DILocation(line: 511, column: 521, scope: !4211)
!4215 = !DILocation(line: 511, column: 520, scope: !4212)
!4216 = !DILocation(line: 511, column: 559, scope: !4217)
!4217 = !DILexicalBlockFile(scope: !4211, file: !373, discriminator: 18)
!4218 = !DILocation(line: 511, column: 618, scope: !4219)
!4219 = !DILexicalBlockFile(scope: !4212, file: !373, discriminator: 17)
!4220 = !DILocation(line: 511, column: 598, scope: !4212)
!4221 = !DILocation(line: 511, column: 623, scope: !4212)
!4222 = !DILocation(line: 511, column: 636, scope: !4212)
!4223 = !DILocation(line: 511, column: 647, scope: !4212)
!4224 = !DILocation(line: 511, column: 583, scope: !4212)
!4225 = !DILocation(line: 511, column: 674, scope: !4226)
!4226 = !DILexicalBlockFile(scope: !4212, file: !373, discriminator: 20)
!4227 = !DILocation(line: 511, column: 654, scope: !4212)
!4228 = !DILocation(line: 511, column: 679, scope: !4212)
!4229 = !DILocation(line: 511, column: 583, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4212, file: !373, discriminator: 21)
!4231 = !DILocation(line: 511, column: 580, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !4233, file: !373, discriminator: 23)
!4233 = !DILexicalBlockFile(scope: !4212, file: !373, discriminator: 22)
!4234 = !DILocation(line: 511, column: 711, scope: !4212)
!4235 = !DILocation(line: 511, column: 741, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !4237, file: !373, discriminator: 24)
!4237 = !DILexicalBlockFile(scope: !655, file: !373, discriminator: 16)
!4238 = !DILocation(line: 511, column: 744, scope: !655)
!4239 = !DILocation(line: 511, column: 721, scope: !655)
!4240 = !DILocation(line: 511, column: 714, scope: !655)
!4241 = !DILocation(line: 511, column: 748, scope: !4242)
!4242 = !DILexicalBlockFile(scope: !4243, file: !373, discriminator: 25)
!4243 = !DILexicalBlockFile(scope: !4244, file: !373, discriminator: 19)
!4244 = !DILexicalBlockFile(scope: !655, file: !373, discriminator: 7)
!4245 = !DILocation(line: 512, column: 40, scope: !659)
!4246 = !DILocation(line: 512, column: 53, scope: !659)
!4247 = !DILocation(line: 512, column: 78, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !659, file: !373, line: 512, column: 62)
!4249 = !DILocation(line: 512, column: 83, scope: !4248)
!4250 = !DILocation(line: 512, column: 92, scope: !4248)
!4251 = !DILocation(line: 512, column: 118, scope: !4248)
!4252 = !DILocation(line: 512, column: 136, scope: !4253)
!4253 = !DILexicalBlockFile(scope: !4248, file: !373, discriminator: 2)
!4254 = !DILocation(line: 512, column: 141, scope: !4248)
!4255 = !DILocation(line: 512, column: 150, scope: !4248)
!4256 = !DILocation(line: 512, column: 62, scope: !659)
!4257 = !DILocation(line: 512, column: 227, scope: !4258)
!4258 = !DILexicalBlockFile(scope: !4259, file: !373, discriminator: 3)
!4259 = !DILexicalBlockFile(scope: !4260, file: !373, discriminator: 1)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !373, line: 512, column: 192)
!4261 = distinct !DILexicalBlock(scope: !4248, file: !373, line: 512, column: 186)
!4262 = !DILocation(line: 512, column: 208, scope: !4260)
!4263 = !DILocation(line: 512, column: 193, scope: !4260)
!4264 = !DILocation(line: 512, column: 192, scope: !4261)
!4265 = !DILocation(line: 512, column: 231, scope: !4266)
!4266 = !DILexicalBlockFile(scope: !4260, file: !373, discriminator: 6)
!4267 = !DILocation(line: 512, column: 290, scope: !4268)
!4268 = !DILexicalBlockFile(scope: !4261, file: !373, discriminator: 5)
!4269 = !DILocation(line: 512, column: 270, scope: !4261)
!4270 = !DILocation(line: 512, column: 295, scope: !4261)
!4271 = !DILocation(line: 512, column: 308, scope: !4261)
!4272 = !DILocation(line: 512, column: 319, scope: !4261)
!4273 = !DILocation(line: 512, column: 255, scope: !4261)
!4274 = !DILocation(line: 512, column: 346, scope: !4275)
!4275 = !DILexicalBlockFile(scope: !4261, file: !373, discriminator: 8)
!4276 = !DILocation(line: 512, column: 326, scope: !4261)
!4277 = !DILocation(line: 512, column: 351, scope: !4261)
!4278 = !DILocation(line: 512, column: 255, scope: !4279)
!4279 = !DILexicalBlockFile(scope: !4261, file: !373, discriminator: 9)
!4280 = !DILocation(line: 512, column: 252, scope: !4281)
!4281 = !DILexicalBlockFile(scope: !4282, file: !373, discriminator: 11)
!4282 = !DILexicalBlockFile(scope: !4261, file: !373, discriminator: 10)
!4283 = !DILocation(line: 512, column: 383, scope: !4261)
!4284 = !DILocation(line: 512, column: 406, scope: !4285)
!4285 = !DILexicalBlockFile(scope: !4286, file: !373, discriminator: 12)
!4286 = !DILexicalBlockFile(scope: !4287, file: !373, discriminator: 4)
!4287 = distinct !DILexicalBlock(scope: !659, file: !373, line: 512, column: 390)
!4288 = !DILocation(line: 512, column: 411, scope: !4287)
!4289 = !DILocation(line: 512, column: 420, scope: !4287)
!4290 = !DILocation(line: 512, column: 446, scope: !4287)
!4291 = !DILocation(line: 512, column: 464, scope: !4292)
!4292 = !DILexicalBlockFile(scope: !4287, file: !373, discriminator: 14)
!4293 = !DILocation(line: 512, column: 469, scope: !4287)
!4294 = !DILocation(line: 512, column: 478, scope: !4287)
!4295 = !DILocation(line: 512, column: 390, scope: !659)
!4296 = !DILocation(line: 512, column: 555, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4298, file: !373, discriminator: 15)
!4298 = !DILexicalBlockFile(scope: !4299, file: !373, discriminator: 13)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !373, line: 512, column: 520)
!4300 = distinct !DILexicalBlock(scope: !4287, file: !373, line: 512, column: 514)
!4301 = !DILocation(line: 512, column: 536, scope: !4299)
!4302 = !DILocation(line: 512, column: 521, scope: !4299)
!4303 = !DILocation(line: 512, column: 520, scope: !4300)
!4304 = !DILocation(line: 512, column: 559, scope: !4305)
!4305 = !DILexicalBlockFile(scope: !4299, file: !373, discriminator: 18)
!4306 = !DILocation(line: 512, column: 618, scope: !4307)
!4307 = !DILexicalBlockFile(scope: !4300, file: !373, discriminator: 17)
!4308 = !DILocation(line: 512, column: 598, scope: !4300)
!4309 = !DILocation(line: 512, column: 623, scope: !4300)
!4310 = !DILocation(line: 512, column: 636, scope: !4300)
!4311 = !DILocation(line: 512, column: 647, scope: !4300)
!4312 = !DILocation(line: 512, column: 583, scope: !4300)
!4313 = !DILocation(line: 512, column: 674, scope: !4314)
!4314 = !DILexicalBlockFile(scope: !4300, file: !373, discriminator: 20)
!4315 = !DILocation(line: 512, column: 654, scope: !4300)
!4316 = !DILocation(line: 512, column: 679, scope: !4300)
!4317 = !DILocation(line: 512, column: 583, scope: !4318)
!4318 = !DILexicalBlockFile(scope: !4300, file: !373, discriminator: 21)
!4319 = !DILocation(line: 512, column: 580, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !4321, file: !373, discriminator: 23)
!4321 = !DILexicalBlockFile(scope: !4300, file: !373, discriminator: 22)
!4322 = !DILocation(line: 512, column: 711, scope: !4300)
!4323 = !DILocation(line: 512, column: 746, scope: !4324)
!4324 = !DILexicalBlockFile(scope: !4325, file: !373, discriminator: 24)
!4325 = !DILexicalBlockFile(scope: !659, file: !373, discriminator: 16)
!4326 = !DILocation(line: 512, column: 749, scope: !659)
!4327 = !DILocation(line: 512, column: 721, scope: !659)
!4328 = !DILocation(line: 512, column: 714, scope: !659)
!4329 = !DILocation(line: 512, column: 753, scope: !4330)
!4330 = !DILexicalBlockFile(scope: !4331, file: !373, discriminator: 25)
!4331 = !DILexicalBlockFile(scope: !4332, file: !373, discriminator: 19)
!4332 = !DILexicalBlockFile(scope: !659, file: !373, discriminator: 7)
!4333 = !DILocation(line: 513, column: 40, scope: !663)
!4334 = !DILocation(line: 513, column: 53, scope: !663)
!4335 = !DILocation(line: 513, column: 78, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !663, file: !373, line: 513, column: 62)
!4337 = !DILocation(line: 513, column: 83, scope: !4336)
!4338 = !DILocation(line: 513, column: 92, scope: !4336)
!4339 = !DILocation(line: 513, column: 118, scope: !4336)
!4340 = !DILocation(line: 513, column: 136, scope: !4341)
!4341 = !DILexicalBlockFile(scope: !4336, file: !373, discriminator: 2)
!4342 = !DILocation(line: 513, column: 141, scope: !4336)
!4343 = !DILocation(line: 513, column: 150, scope: !4336)
!4344 = !DILocation(line: 513, column: 62, scope: !663)
!4345 = !DILocation(line: 513, column: 227, scope: !4346)
!4346 = !DILexicalBlockFile(scope: !4347, file: !373, discriminator: 3)
!4347 = !DILexicalBlockFile(scope: !4348, file: !373, discriminator: 1)
!4348 = distinct !DILexicalBlock(scope: !4349, file: !373, line: 513, column: 192)
!4349 = distinct !DILexicalBlock(scope: !4336, file: !373, line: 513, column: 186)
!4350 = !DILocation(line: 513, column: 208, scope: !4348)
!4351 = !DILocation(line: 513, column: 193, scope: !4348)
!4352 = !DILocation(line: 513, column: 192, scope: !4349)
!4353 = !DILocation(line: 513, column: 231, scope: !4354)
!4354 = !DILexicalBlockFile(scope: !4348, file: !373, discriminator: 6)
!4355 = !DILocation(line: 513, column: 290, scope: !4356)
!4356 = !DILexicalBlockFile(scope: !4349, file: !373, discriminator: 5)
!4357 = !DILocation(line: 513, column: 270, scope: !4349)
!4358 = !DILocation(line: 513, column: 295, scope: !4349)
!4359 = !DILocation(line: 513, column: 308, scope: !4349)
!4360 = !DILocation(line: 513, column: 319, scope: !4349)
!4361 = !DILocation(line: 513, column: 255, scope: !4349)
!4362 = !DILocation(line: 513, column: 346, scope: !4363)
!4363 = !DILexicalBlockFile(scope: !4349, file: !373, discriminator: 8)
!4364 = !DILocation(line: 513, column: 326, scope: !4349)
!4365 = !DILocation(line: 513, column: 351, scope: !4349)
!4366 = !DILocation(line: 513, column: 255, scope: !4367)
!4367 = !DILexicalBlockFile(scope: !4349, file: !373, discriminator: 9)
!4368 = !DILocation(line: 513, column: 252, scope: !4369)
!4369 = !DILexicalBlockFile(scope: !4370, file: !373, discriminator: 11)
!4370 = !DILexicalBlockFile(scope: !4349, file: !373, discriminator: 10)
!4371 = !DILocation(line: 513, column: 383, scope: !4349)
!4372 = !DILocation(line: 513, column: 406, scope: !4373)
!4373 = !DILexicalBlockFile(scope: !4374, file: !373, discriminator: 12)
!4374 = !DILexicalBlockFile(scope: !4375, file: !373, discriminator: 4)
!4375 = distinct !DILexicalBlock(scope: !663, file: !373, line: 513, column: 390)
!4376 = !DILocation(line: 513, column: 411, scope: !4375)
!4377 = !DILocation(line: 513, column: 420, scope: !4375)
!4378 = !DILocation(line: 513, column: 446, scope: !4375)
!4379 = !DILocation(line: 513, column: 464, scope: !4380)
!4380 = !DILexicalBlockFile(scope: !4375, file: !373, discriminator: 14)
!4381 = !DILocation(line: 513, column: 469, scope: !4375)
!4382 = !DILocation(line: 513, column: 478, scope: !4375)
!4383 = !DILocation(line: 513, column: 390, scope: !663)
!4384 = !DILocation(line: 513, column: 555, scope: !4385)
!4385 = !DILexicalBlockFile(scope: !4386, file: !373, discriminator: 15)
!4386 = !DILexicalBlockFile(scope: !4387, file: !373, discriminator: 13)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !373, line: 513, column: 520)
!4388 = distinct !DILexicalBlock(scope: !4375, file: !373, line: 513, column: 514)
!4389 = !DILocation(line: 513, column: 536, scope: !4387)
!4390 = !DILocation(line: 513, column: 521, scope: !4387)
!4391 = !DILocation(line: 513, column: 520, scope: !4388)
!4392 = !DILocation(line: 513, column: 559, scope: !4393)
!4393 = !DILexicalBlockFile(scope: !4387, file: !373, discriminator: 18)
!4394 = !DILocation(line: 513, column: 618, scope: !4395)
!4395 = !DILexicalBlockFile(scope: !4388, file: !373, discriminator: 17)
!4396 = !DILocation(line: 513, column: 598, scope: !4388)
!4397 = !DILocation(line: 513, column: 623, scope: !4388)
!4398 = !DILocation(line: 513, column: 636, scope: !4388)
!4399 = !DILocation(line: 513, column: 647, scope: !4388)
!4400 = !DILocation(line: 513, column: 583, scope: !4388)
!4401 = !DILocation(line: 513, column: 674, scope: !4402)
!4402 = !DILexicalBlockFile(scope: !4388, file: !373, discriminator: 20)
!4403 = !DILocation(line: 513, column: 654, scope: !4388)
!4404 = !DILocation(line: 513, column: 679, scope: !4388)
!4405 = !DILocation(line: 513, column: 583, scope: !4406)
!4406 = !DILexicalBlockFile(scope: !4388, file: !373, discriminator: 21)
!4407 = !DILocation(line: 513, column: 580, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4409, file: !373, discriminator: 23)
!4409 = !DILexicalBlockFile(scope: !4388, file: !373, discriminator: 22)
!4410 = !DILocation(line: 513, column: 711, scope: !4388)
!4411 = !DILocation(line: 513, column: 746, scope: !4412)
!4412 = !DILexicalBlockFile(scope: !4413, file: !373, discriminator: 24)
!4413 = !DILexicalBlockFile(scope: !663, file: !373, discriminator: 16)
!4414 = !DILocation(line: 513, column: 749, scope: !663)
!4415 = !DILocation(line: 513, column: 721, scope: !663)
!4416 = !DILocation(line: 513, column: 714, scope: !663)
!4417 = !DILocation(line: 513, column: 753, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !4419, file: !373, discriminator: 25)
!4419 = !DILexicalBlockFile(scope: !4420, file: !373, discriminator: 19)
!4420 = !DILexicalBlockFile(scope: !663, file: !373, discriminator: 7)
!4421 = !DILocation(line: 516, column: 40, scope: !667)
!4422 = !DILocation(line: 516, column: 53, scope: !667)
!4423 = !DILocation(line: 516, column: 78, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !667, file: !373, line: 516, column: 62)
!4425 = !DILocation(line: 516, column: 83, scope: !4424)
!4426 = !DILocation(line: 516, column: 92, scope: !4424)
!4427 = !DILocation(line: 516, column: 118, scope: !4424)
!4428 = !DILocation(line: 516, column: 136, scope: !4429)
!4429 = !DILexicalBlockFile(scope: !4424, file: !373, discriminator: 2)
!4430 = !DILocation(line: 516, column: 141, scope: !4424)
!4431 = !DILocation(line: 516, column: 150, scope: !4424)
!4432 = !DILocation(line: 516, column: 62, scope: !667)
!4433 = !DILocation(line: 516, column: 227, scope: !4434)
!4434 = !DILexicalBlockFile(scope: !4435, file: !373, discriminator: 3)
!4435 = !DILexicalBlockFile(scope: !4436, file: !373, discriminator: 1)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !373, line: 516, column: 192)
!4437 = distinct !DILexicalBlock(scope: !4424, file: !373, line: 516, column: 186)
!4438 = !DILocation(line: 516, column: 208, scope: !4436)
!4439 = !DILocation(line: 516, column: 193, scope: !4436)
!4440 = !DILocation(line: 516, column: 192, scope: !4437)
!4441 = !DILocation(line: 516, column: 231, scope: !4442)
!4442 = !DILexicalBlockFile(scope: !4436, file: !373, discriminator: 6)
!4443 = !DILocation(line: 516, column: 290, scope: !4444)
!4444 = !DILexicalBlockFile(scope: !4437, file: !373, discriminator: 5)
!4445 = !DILocation(line: 516, column: 270, scope: !4437)
!4446 = !DILocation(line: 516, column: 295, scope: !4437)
!4447 = !DILocation(line: 516, column: 308, scope: !4437)
!4448 = !DILocation(line: 516, column: 319, scope: !4437)
!4449 = !DILocation(line: 516, column: 255, scope: !4437)
!4450 = !DILocation(line: 516, column: 346, scope: !4451)
!4451 = !DILexicalBlockFile(scope: !4437, file: !373, discriminator: 8)
!4452 = !DILocation(line: 516, column: 326, scope: !4437)
!4453 = !DILocation(line: 516, column: 351, scope: !4437)
!4454 = !DILocation(line: 516, column: 255, scope: !4455)
!4455 = !DILexicalBlockFile(scope: !4437, file: !373, discriminator: 9)
!4456 = !DILocation(line: 516, column: 252, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !4458, file: !373, discriminator: 11)
!4458 = !DILexicalBlockFile(scope: !4437, file: !373, discriminator: 10)
!4459 = !DILocation(line: 516, column: 383, scope: !4437)
!4460 = !DILocation(line: 516, column: 406, scope: !4461)
!4461 = !DILexicalBlockFile(scope: !4462, file: !373, discriminator: 12)
!4462 = !DILexicalBlockFile(scope: !4463, file: !373, discriminator: 4)
!4463 = distinct !DILexicalBlock(scope: !667, file: !373, line: 516, column: 390)
!4464 = !DILocation(line: 516, column: 411, scope: !4463)
!4465 = !DILocation(line: 516, column: 420, scope: !4463)
!4466 = !DILocation(line: 516, column: 446, scope: !4463)
!4467 = !DILocation(line: 516, column: 464, scope: !4468)
!4468 = !DILexicalBlockFile(scope: !4463, file: !373, discriminator: 14)
!4469 = !DILocation(line: 516, column: 469, scope: !4463)
!4470 = !DILocation(line: 516, column: 478, scope: !4463)
!4471 = !DILocation(line: 516, column: 390, scope: !667)
!4472 = !DILocation(line: 516, column: 555, scope: !4473)
!4473 = !DILexicalBlockFile(scope: !4474, file: !373, discriminator: 15)
!4474 = !DILexicalBlockFile(scope: !4475, file: !373, discriminator: 13)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !373, line: 516, column: 520)
!4476 = distinct !DILexicalBlock(scope: !4463, file: !373, line: 516, column: 514)
!4477 = !DILocation(line: 516, column: 536, scope: !4475)
!4478 = !DILocation(line: 516, column: 521, scope: !4475)
!4479 = !DILocation(line: 516, column: 520, scope: !4476)
!4480 = !DILocation(line: 516, column: 559, scope: !4481)
!4481 = !DILexicalBlockFile(scope: !4475, file: !373, discriminator: 18)
!4482 = !DILocation(line: 516, column: 618, scope: !4483)
!4483 = !DILexicalBlockFile(scope: !4476, file: !373, discriminator: 17)
!4484 = !DILocation(line: 516, column: 598, scope: !4476)
!4485 = !DILocation(line: 516, column: 623, scope: !4476)
!4486 = !DILocation(line: 516, column: 636, scope: !4476)
!4487 = !DILocation(line: 516, column: 647, scope: !4476)
!4488 = !DILocation(line: 516, column: 583, scope: !4476)
!4489 = !DILocation(line: 516, column: 674, scope: !4490)
!4490 = !DILexicalBlockFile(scope: !4476, file: !373, discriminator: 20)
!4491 = !DILocation(line: 516, column: 654, scope: !4476)
!4492 = !DILocation(line: 516, column: 679, scope: !4476)
!4493 = !DILocation(line: 516, column: 583, scope: !4494)
!4494 = !DILexicalBlockFile(scope: !4476, file: !373, discriminator: 21)
!4495 = !DILocation(line: 516, column: 580, scope: !4496)
!4496 = !DILexicalBlockFile(scope: !4497, file: !373, discriminator: 23)
!4497 = !DILexicalBlockFile(scope: !4476, file: !373, discriminator: 22)
!4498 = !DILocation(line: 516, column: 711, scope: !4476)
!4499 = !DILocation(line: 516, column: 747, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4501, file: !373, discriminator: 24)
!4501 = !DILexicalBlockFile(scope: !667, file: !373, discriminator: 16)
!4502 = !DILocation(line: 516, column: 750, scope: !667)
!4503 = !DILocation(line: 516, column: 721, scope: !667)
!4504 = !DILocation(line: 516, column: 714, scope: !667)
!4505 = !DILocation(line: 516, column: 754, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4507, file: !373, discriminator: 25)
!4507 = !DILexicalBlockFile(scope: !4508, file: !373, discriminator: 19)
!4508 = !DILexicalBlockFile(scope: !667, file: !373, discriminator: 7)
!4509 = !DILocation(line: 517, column: 40, scope: !671)
!4510 = !DILocation(line: 517, column: 57, scope: !671)
!4511 = !DILocation(line: 517, column: 70, scope: !671)
!4512 = !DILocation(line: 517, column: 95, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !671, file: !373, line: 517, column: 79)
!4514 = !DILocation(line: 517, column: 104, scope: !4513)
!4515 = !DILocation(line: 517, column: 113, scope: !4513)
!4516 = !DILocation(line: 517, column: 139, scope: !4513)
!4517 = !DILocation(line: 517, column: 157, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4513, file: !373, discriminator: 2)
!4519 = !DILocation(line: 517, column: 166, scope: !4513)
!4520 = !DILocation(line: 517, column: 175, scope: !4513)
!4521 = !DILocation(line: 517, column: 79, scope: !671)
!4522 = !DILocation(line: 517, column: 252, scope: !4523)
!4523 = !DILexicalBlockFile(scope: !4524, file: !373, discriminator: 3)
!4524 = !DILexicalBlockFile(scope: !4525, file: !373, discriminator: 1)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !373, line: 517, column: 217)
!4526 = distinct !DILexicalBlock(scope: !4513, file: !373, line: 517, column: 211)
!4527 = !DILocation(line: 517, column: 233, scope: !4525)
!4528 = !DILocation(line: 517, column: 218, scope: !4525)
!4529 = !DILocation(line: 517, column: 217, scope: !4526)
!4530 = !DILocation(line: 517, column: 260, scope: !4531)
!4531 = !DILexicalBlockFile(scope: !4525, file: !373, discriminator: 6)
!4532 = !DILocation(line: 517, column: 323, scope: !4533)
!4533 = !DILexicalBlockFile(scope: !4526, file: !373, discriminator: 5)
!4534 = !DILocation(line: 517, column: 303, scope: !4526)
!4535 = !DILocation(line: 517, column: 332, scope: !4526)
!4536 = !DILocation(line: 517, column: 345, scope: !4526)
!4537 = !DILocation(line: 517, column: 356, scope: !4526)
!4538 = !DILocation(line: 517, column: 288, scope: !4526)
!4539 = !DILocation(line: 517, column: 383, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !4526, file: !373, discriminator: 8)
!4541 = !DILocation(line: 517, column: 363, scope: !4526)
!4542 = !DILocation(line: 517, column: 392, scope: !4526)
!4543 = !DILocation(line: 517, column: 288, scope: !4544)
!4544 = !DILexicalBlockFile(scope: !4526, file: !373, discriminator: 9)
!4545 = !DILocation(line: 517, column: 285, scope: !4546)
!4546 = !DILexicalBlockFile(scope: !4547, file: !373, discriminator: 11)
!4547 = !DILexicalBlockFile(scope: !4526, file: !373, discriminator: 10)
!4548 = !DILocation(line: 517, column: 424, scope: !4526)
!4549 = !DILocation(line: 517, column: 447, scope: !4550)
!4550 = !DILexicalBlockFile(scope: !4551, file: !373, discriminator: 12)
!4551 = !DILexicalBlockFile(scope: !4552, file: !373, discriminator: 4)
!4552 = distinct !DILexicalBlock(scope: !671, file: !373, line: 517, column: 431)
!4553 = !DILocation(line: 517, column: 452, scope: !4552)
!4554 = !DILocation(line: 517, column: 461, scope: !4552)
!4555 = !DILocation(line: 517, column: 487, scope: !4552)
!4556 = !DILocation(line: 517, column: 505, scope: !4557)
!4557 = !DILexicalBlockFile(scope: !4552, file: !373, discriminator: 14)
!4558 = !DILocation(line: 517, column: 510, scope: !4552)
!4559 = !DILocation(line: 517, column: 519, scope: !4552)
!4560 = !DILocation(line: 517, column: 431, scope: !671)
!4561 = !DILocation(line: 517, column: 596, scope: !4562)
!4562 = !DILexicalBlockFile(scope: !4563, file: !373, discriminator: 15)
!4563 = !DILexicalBlockFile(scope: !4564, file: !373, discriminator: 13)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !373, line: 517, column: 561)
!4565 = distinct !DILexicalBlock(scope: !4552, file: !373, line: 517, column: 555)
!4566 = !DILocation(line: 517, column: 577, scope: !4564)
!4567 = !DILocation(line: 517, column: 562, scope: !4564)
!4568 = !DILocation(line: 517, column: 561, scope: !4565)
!4569 = !DILocation(line: 517, column: 600, scope: !4570)
!4570 = !DILexicalBlockFile(scope: !4564, file: !373, discriminator: 18)
!4571 = !DILocation(line: 517, column: 659, scope: !4572)
!4572 = !DILexicalBlockFile(scope: !4565, file: !373, discriminator: 17)
!4573 = !DILocation(line: 517, column: 639, scope: !4565)
!4574 = !DILocation(line: 517, column: 664, scope: !4565)
!4575 = !DILocation(line: 517, column: 677, scope: !4565)
!4576 = !DILocation(line: 517, column: 688, scope: !4565)
!4577 = !DILocation(line: 517, column: 624, scope: !4565)
!4578 = !DILocation(line: 517, column: 715, scope: !4579)
!4579 = !DILexicalBlockFile(scope: !4565, file: !373, discriminator: 20)
!4580 = !DILocation(line: 517, column: 695, scope: !4565)
!4581 = !DILocation(line: 517, column: 720, scope: !4565)
!4582 = !DILocation(line: 517, column: 624, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4565, file: !373, discriminator: 21)
!4584 = !DILocation(line: 517, column: 621, scope: !4585)
!4585 = !DILexicalBlockFile(scope: !4586, file: !373, discriminator: 23)
!4586 = !DILexicalBlockFile(scope: !4565, file: !373, discriminator: 22)
!4587 = !DILocation(line: 517, column: 752, scope: !4565)
!4588 = !DILocation(line: 517, column: 759, scope: !4589)
!4589 = !DILexicalBlockFile(scope: !4590, file: !373, discriminator: 24)
!4590 = !DILexicalBlockFile(scope: !4591, file: !373, discriminator: 16)
!4591 = distinct !DILexicalBlock(scope: !671, file: !373, line: 517, column: 759)
!4592 = !DILocation(line: 517, column: 761, scope: !4591)
!4593 = !DILocation(line: 517, column: 759, scope: !671)
!4594 = !DILocation(line: 517, column: 796, scope: !4595)
!4595 = !DILexicalBlockFile(scope: !4596, file: !373, discriminator: 25)
!4596 = distinct !DILexicalBlock(scope: !4591, file: !373, line: 517, column: 780)
!4597 = !DILocation(line: 517, column: 801, scope: !4596)
!4598 = !DILocation(line: 517, column: 810, scope: !4596)
!4599 = !DILocation(line: 517, column: 836, scope: !4596)
!4600 = !DILocation(line: 517, column: 854, scope: !4601)
!4601 = !DILexicalBlockFile(scope: !4596, file: !373, discriminator: 28)
!4602 = !DILocation(line: 517, column: 859, scope: !4596)
!4603 = !DILocation(line: 517, column: 868, scope: !4596)
!4604 = !DILocation(line: 517, column: 780, scope: !4591)
!4605 = !DILocation(line: 517, column: 945, scope: !4606)
!4606 = !DILexicalBlockFile(scope: !4607, file: !373, discriminator: 29)
!4607 = !DILexicalBlockFile(scope: !4608, file: !373, discriminator: 27)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !373, line: 517, column: 910)
!4609 = distinct !DILexicalBlock(scope: !4596, file: !373, line: 517, column: 904)
!4610 = !DILocation(line: 517, column: 926, scope: !4608)
!4611 = !DILocation(line: 517, column: 911, scope: !4608)
!4612 = !DILocation(line: 517, column: 910, scope: !4609)
!4613 = !DILocation(line: 517, column: 949, scope: !4614)
!4614 = !DILexicalBlockFile(scope: !4608, file: !373, discriminator: 32)
!4615 = !DILocation(line: 517, column: 1008, scope: !4616)
!4616 = !DILexicalBlockFile(scope: !4609, file: !373, discriminator: 31)
!4617 = !DILocation(line: 517, column: 988, scope: !4609)
!4618 = !DILocation(line: 517, column: 1013, scope: !4609)
!4619 = !DILocation(line: 517, column: 1026, scope: !4609)
!4620 = !DILocation(line: 517, column: 1037, scope: !4609)
!4621 = !DILocation(line: 517, column: 973, scope: !4609)
!4622 = !DILocation(line: 517, column: 1064, scope: !4623)
!4623 = !DILexicalBlockFile(scope: !4609, file: !373, discriminator: 34)
!4624 = !DILocation(line: 517, column: 1044, scope: !4609)
!4625 = !DILocation(line: 517, column: 1069, scope: !4609)
!4626 = !DILocation(line: 517, column: 973, scope: !4627)
!4627 = !DILexicalBlockFile(scope: !4609, file: !373, discriminator: 35)
!4628 = !DILocation(line: 517, column: 970, scope: !4629)
!4629 = !DILexicalBlockFile(scope: !4630, file: !373, discriminator: 37)
!4630 = !DILexicalBlockFile(scope: !4609, file: !373, discriminator: 36)
!4631 = !DILocation(line: 517, column: 1101, scope: !4609)
!4632 = !DILocation(line: 517, column: 901, scope: !4633)
!4633 = !DILexicalBlockFile(scope: !4634, file: !373, discriminator: 38)
!4634 = !DILexicalBlockFile(scope: !4596, file: !373, discriminator: 30)
!4635 = !DILocation(line: 517, column: 1133, scope: !4636)
!4636 = !DILexicalBlockFile(scope: !4637, file: !373, discriminator: 39)
!4637 = !DILexicalBlockFile(scope: !671, file: !373, discriminator: 26)
!4638 = !DILocation(line: 517, column: 1140, scope: !671)
!4639 = !DILocation(line: 517, column: 1143, scope: !671)
!4640 = !DILocation(line: 517, column: 1111, scope: !671)
!4641 = !DILocation(line: 517, column: 1104, scope: !671)
!4642 = !DILocation(line: 517, column: 1147, scope: !4643)
!4643 = !DILexicalBlockFile(scope: !4644, file: !373, discriminator: 40)
!4644 = !DILexicalBlockFile(scope: !4645, file: !373, discriminator: 33)
!4645 = !DILexicalBlockFile(scope: !4646, file: !373, discriminator: 19)
!4646 = !DILexicalBlockFile(scope: !671, file: !373, discriminator: 7)
!4647 = !DILocation(line: 518, column: 43, scope: !676)
!4648 = !DILocation(line: 518, column: 56, scope: !676)
!4649 = !DILocation(line: 518, column: 81, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !676, file: !373, line: 518, column: 65)
!4651 = !DILocation(line: 518, column: 86, scope: !4650)
!4652 = !DILocation(line: 518, column: 95, scope: !4650)
!4653 = !DILocation(line: 518, column: 121, scope: !4650)
!4654 = !DILocation(line: 518, column: 139, scope: !4655)
!4655 = !DILexicalBlockFile(scope: !4650, file: !373, discriminator: 2)
!4656 = !DILocation(line: 518, column: 144, scope: !4650)
!4657 = !DILocation(line: 518, column: 153, scope: !4650)
!4658 = !DILocation(line: 518, column: 65, scope: !676)
!4659 = !DILocation(line: 518, column: 230, scope: !4660)
!4660 = !DILexicalBlockFile(scope: !4661, file: !373, discriminator: 3)
!4661 = !DILexicalBlockFile(scope: !4662, file: !373, discriminator: 1)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !373, line: 518, column: 195)
!4663 = distinct !DILexicalBlock(scope: !4650, file: !373, line: 518, column: 189)
!4664 = !DILocation(line: 518, column: 211, scope: !4662)
!4665 = !DILocation(line: 518, column: 196, scope: !4662)
!4666 = !DILocation(line: 518, column: 195, scope: !4663)
!4667 = !DILocation(line: 518, column: 234, scope: !4668)
!4668 = !DILexicalBlockFile(scope: !4662, file: !373, discriminator: 6)
!4669 = !DILocation(line: 518, column: 293, scope: !4670)
!4670 = !DILexicalBlockFile(scope: !4663, file: !373, discriminator: 5)
!4671 = !DILocation(line: 518, column: 273, scope: !4663)
!4672 = !DILocation(line: 518, column: 298, scope: !4663)
!4673 = !DILocation(line: 518, column: 311, scope: !4663)
!4674 = !DILocation(line: 518, column: 322, scope: !4663)
!4675 = !DILocation(line: 518, column: 258, scope: !4663)
!4676 = !DILocation(line: 518, column: 349, scope: !4677)
!4677 = !DILexicalBlockFile(scope: !4663, file: !373, discriminator: 8)
!4678 = !DILocation(line: 518, column: 329, scope: !4663)
!4679 = !DILocation(line: 518, column: 354, scope: !4663)
!4680 = !DILocation(line: 518, column: 258, scope: !4681)
!4681 = !DILexicalBlockFile(scope: !4663, file: !373, discriminator: 9)
!4682 = !DILocation(line: 518, column: 255, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !4684, file: !373, discriminator: 11)
!4684 = !DILexicalBlockFile(scope: !4663, file: !373, discriminator: 10)
!4685 = !DILocation(line: 518, column: 386, scope: !4663)
!4686 = !DILocation(line: 518, column: 409, scope: !4687)
!4687 = !DILexicalBlockFile(scope: !4688, file: !373, discriminator: 12)
!4688 = !DILexicalBlockFile(scope: !4689, file: !373, discriminator: 4)
!4689 = distinct !DILexicalBlock(scope: !676, file: !373, line: 518, column: 393)
!4690 = !DILocation(line: 518, column: 414, scope: !4689)
!4691 = !DILocation(line: 518, column: 423, scope: !4689)
!4692 = !DILocation(line: 518, column: 449, scope: !4689)
!4693 = !DILocation(line: 518, column: 467, scope: !4694)
!4694 = !DILexicalBlockFile(scope: !4689, file: !373, discriminator: 14)
!4695 = !DILocation(line: 518, column: 472, scope: !4689)
!4696 = !DILocation(line: 518, column: 481, scope: !4689)
!4697 = !DILocation(line: 518, column: 393, scope: !676)
!4698 = !DILocation(line: 518, column: 558, scope: !4699)
!4699 = !DILexicalBlockFile(scope: !4700, file: !373, discriminator: 15)
!4700 = !DILexicalBlockFile(scope: !4701, file: !373, discriminator: 13)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !373, line: 518, column: 523)
!4702 = distinct !DILexicalBlock(scope: !4689, file: !373, line: 518, column: 517)
!4703 = !DILocation(line: 518, column: 539, scope: !4701)
!4704 = !DILocation(line: 518, column: 524, scope: !4701)
!4705 = !DILocation(line: 518, column: 523, scope: !4702)
!4706 = !DILocation(line: 518, column: 562, scope: !4707)
!4707 = !DILexicalBlockFile(scope: !4701, file: !373, discriminator: 18)
!4708 = !DILocation(line: 518, column: 621, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4702, file: !373, discriminator: 17)
!4710 = !DILocation(line: 518, column: 601, scope: !4702)
!4711 = !DILocation(line: 518, column: 626, scope: !4702)
!4712 = !DILocation(line: 518, column: 639, scope: !4702)
!4713 = !DILocation(line: 518, column: 650, scope: !4702)
!4714 = !DILocation(line: 518, column: 586, scope: !4702)
!4715 = !DILocation(line: 518, column: 677, scope: !4716)
!4716 = !DILexicalBlockFile(scope: !4702, file: !373, discriminator: 20)
!4717 = !DILocation(line: 518, column: 657, scope: !4702)
!4718 = !DILocation(line: 518, column: 682, scope: !4702)
!4719 = !DILocation(line: 518, column: 586, scope: !4720)
!4720 = !DILexicalBlockFile(scope: !4702, file: !373, discriminator: 21)
!4721 = !DILocation(line: 518, column: 583, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4723, file: !373, discriminator: 23)
!4723 = !DILexicalBlockFile(scope: !4702, file: !373, discriminator: 22)
!4724 = !DILocation(line: 518, column: 714, scope: !4702)
!4725 = !DILocation(line: 518, column: 747, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !4727, file: !373, discriminator: 24)
!4727 = !DILexicalBlockFile(scope: !676, file: !373, discriminator: 16)
!4728 = !DILocation(line: 518, column: 750, scope: !676)
!4729 = !DILocation(line: 518, column: 724, scope: !676)
!4730 = !DILocation(line: 518, column: 717, scope: !676)
!4731 = !DILocation(line: 518, column: 754, scope: !4732)
!4732 = !DILexicalBlockFile(scope: !4733, file: !373, discriminator: 25)
!4733 = !DILexicalBlockFile(scope: !4734, file: !373, discriminator: 19)
!4734 = !DILexicalBlockFile(scope: !676, file: !373, discriminator: 7)
!4735 = !DILocation(line: 519, column: 43, scope: !680)
!4736 = !DILocation(line: 519, column: 56, scope: !680)
!4737 = !DILocation(line: 519, column: 81, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !680, file: !373, line: 519, column: 65)
!4739 = !DILocation(line: 519, column: 86, scope: !4738)
!4740 = !DILocation(line: 519, column: 95, scope: !4738)
!4741 = !DILocation(line: 519, column: 121, scope: !4738)
!4742 = !DILocation(line: 519, column: 139, scope: !4743)
!4743 = !DILexicalBlockFile(scope: !4738, file: !373, discriminator: 2)
!4744 = !DILocation(line: 519, column: 144, scope: !4738)
!4745 = !DILocation(line: 519, column: 153, scope: !4738)
!4746 = !DILocation(line: 519, column: 65, scope: !680)
!4747 = !DILocation(line: 519, column: 230, scope: !4748)
!4748 = !DILexicalBlockFile(scope: !4749, file: !373, discriminator: 3)
!4749 = !DILexicalBlockFile(scope: !4750, file: !373, discriminator: 1)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !373, line: 519, column: 195)
!4751 = distinct !DILexicalBlock(scope: !4738, file: !373, line: 519, column: 189)
!4752 = !DILocation(line: 519, column: 211, scope: !4750)
!4753 = !DILocation(line: 519, column: 196, scope: !4750)
!4754 = !DILocation(line: 519, column: 195, scope: !4751)
!4755 = !DILocation(line: 519, column: 234, scope: !4756)
!4756 = !DILexicalBlockFile(scope: !4750, file: !373, discriminator: 6)
!4757 = !DILocation(line: 519, column: 293, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4751, file: !373, discriminator: 5)
!4759 = !DILocation(line: 519, column: 273, scope: !4751)
!4760 = !DILocation(line: 519, column: 298, scope: !4751)
!4761 = !DILocation(line: 519, column: 311, scope: !4751)
!4762 = !DILocation(line: 519, column: 322, scope: !4751)
!4763 = !DILocation(line: 519, column: 258, scope: !4751)
!4764 = !DILocation(line: 519, column: 349, scope: !4765)
!4765 = !DILexicalBlockFile(scope: !4751, file: !373, discriminator: 8)
!4766 = !DILocation(line: 519, column: 329, scope: !4751)
!4767 = !DILocation(line: 519, column: 354, scope: !4751)
!4768 = !DILocation(line: 519, column: 258, scope: !4769)
!4769 = !DILexicalBlockFile(scope: !4751, file: !373, discriminator: 9)
!4770 = !DILocation(line: 519, column: 255, scope: !4771)
!4771 = !DILexicalBlockFile(scope: !4772, file: !373, discriminator: 11)
!4772 = !DILexicalBlockFile(scope: !4751, file: !373, discriminator: 10)
!4773 = !DILocation(line: 519, column: 386, scope: !4751)
!4774 = !DILocation(line: 519, column: 409, scope: !4775)
!4775 = !DILexicalBlockFile(scope: !4776, file: !373, discriminator: 12)
!4776 = !DILexicalBlockFile(scope: !4777, file: !373, discriminator: 4)
!4777 = distinct !DILexicalBlock(scope: !680, file: !373, line: 519, column: 393)
!4778 = !DILocation(line: 519, column: 414, scope: !4777)
!4779 = !DILocation(line: 519, column: 423, scope: !4777)
!4780 = !DILocation(line: 519, column: 449, scope: !4777)
!4781 = !DILocation(line: 519, column: 467, scope: !4782)
!4782 = !DILexicalBlockFile(scope: !4777, file: !373, discriminator: 14)
!4783 = !DILocation(line: 519, column: 472, scope: !4777)
!4784 = !DILocation(line: 519, column: 481, scope: !4777)
!4785 = !DILocation(line: 519, column: 393, scope: !680)
!4786 = !DILocation(line: 519, column: 558, scope: !4787)
!4787 = !DILexicalBlockFile(scope: !4788, file: !373, discriminator: 15)
!4788 = !DILexicalBlockFile(scope: !4789, file: !373, discriminator: 13)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !373, line: 519, column: 523)
!4790 = distinct !DILexicalBlock(scope: !4777, file: !373, line: 519, column: 517)
!4791 = !DILocation(line: 519, column: 539, scope: !4789)
!4792 = !DILocation(line: 519, column: 524, scope: !4789)
!4793 = !DILocation(line: 519, column: 523, scope: !4790)
!4794 = !DILocation(line: 519, column: 562, scope: !4795)
!4795 = !DILexicalBlockFile(scope: !4789, file: !373, discriminator: 18)
!4796 = !DILocation(line: 519, column: 621, scope: !4797)
!4797 = !DILexicalBlockFile(scope: !4790, file: !373, discriminator: 17)
!4798 = !DILocation(line: 519, column: 601, scope: !4790)
!4799 = !DILocation(line: 519, column: 626, scope: !4790)
!4800 = !DILocation(line: 519, column: 639, scope: !4790)
!4801 = !DILocation(line: 519, column: 650, scope: !4790)
!4802 = !DILocation(line: 519, column: 586, scope: !4790)
!4803 = !DILocation(line: 519, column: 677, scope: !4804)
!4804 = !DILexicalBlockFile(scope: !4790, file: !373, discriminator: 20)
!4805 = !DILocation(line: 519, column: 657, scope: !4790)
!4806 = !DILocation(line: 519, column: 682, scope: !4790)
!4807 = !DILocation(line: 519, column: 586, scope: !4808)
!4808 = !DILexicalBlockFile(scope: !4790, file: !373, discriminator: 21)
!4809 = !DILocation(line: 519, column: 583, scope: !4810)
!4810 = !DILexicalBlockFile(scope: !4811, file: !373, discriminator: 23)
!4811 = !DILexicalBlockFile(scope: !4790, file: !373, discriminator: 22)
!4812 = !DILocation(line: 519, column: 714, scope: !4790)
!4813 = !DILocation(line: 519, column: 747, scope: !4814)
!4814 = !DILexicalBlockFile(scope: !4815, file: !373, discriminator: 24)
!4815 = !DILexicalBlockFile(scope: !680, file: !373, discriminator: 16)
!4816 = !DILocation(line: 519, column: 750, scope: !680)
!4817 = !DILocation(line: 519, column: 724, scope: !680)
!4818 = !DILocation(line: 519, column: 717, scope: !680)
!4819 = !DILocation(line: 519, column: 754, scope: !4820)
!4820 = !DILexicalBlockFile(scope: !4821, file: !373, discriminator: 25)
!4821 = !DILexicalBlockFile(scope: !4822, file: !373, discriminator: 19)
!4822 = !DILexicalBlockFile(scope: !680, file: !373, discriminator: 7)
!4823 = !DILocation(line: 520, column: 40, scope: !684)
!4824 = !DILocation(line: 520, column: 53, scope: !684)
!4825 = !DILocation(line: 520, column: 78, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !684, file: !373, line: 520, column: 62)
!4827 = !DILocation(line: 520, column: 83, scope: !4826)
!4828 = !DILocation(line: 520, column: 92, scope: !4826)
!4829 = !DILocation(line: 520, column: 118, scope: !4826)
!4830 = !DILocation(line: 520, column: 136, scope: !4831)
!4831 = !DILexicalBlockFile(scope: !4826, file: !373, discriminator: 2)
!4832 = !DILocation(line: 520, column: 141, scope: !4826)
!4833 = !DILocation(line: 520, column: 150, scope: !4826)
!4834 = !DILocation(line: 520, column: 62, scope: !684)
!4835 = !DILocation(line: 520, column: 227, scope: !4836)
!4836 = !DILexicalBlockFile(scope: !4837, file: !373, discriminator: 3)
!4837 = !DILexicalBlockFile(scope: !4838, file: !373, discriminator: 1)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !373, line: 520, column: 192)
!4839 = distinct !DILexicalBlock(scope: !4826, file: !373, line: 520, column: 186)
!4840 = !DILocation(line: 520, column: 208, scope: !4838)
!4841 = !DILocation(line: 520, column: 193, scope: !4838)
!4842 = !DILocation(line: 520, column: 192, scope: !4839)
!4843 = !DILocation(line: 520, column: 231, scope: !4844)
!4844 = !DILexicalBlockFile(scope: !4838, file: !373, discriminator: 6)
!4845 = !DILocation(line: 520, column: 290, scope: !4846)
!4846 = !DILexicalBlockFile(scope: !4839, file: !373, discriminator: 5)
!4847 = !DILocation(line: 520, column: 270, scope: !4839)
!4848 = !DILocation(line: 520, column: 295, scope: !4839)
!4849 = !DILocation(line: 520, column: 308, scope: !4839)
!4850 = !DILocation(line: 520, column: 319, scope: !4839)
!4851 = !DILocation(line: 520, column: 255, scope: !4839)
!4852 = !DILocation(line: 520, column: 346, scope: !4853)
!4853 = !DILexicalBlockFile(scope: !4839, file: !373, discriminator: 8)
!4854 = !DILocation(line: 520, column: 326, scope: !4839)
!4855 = !DILocation(line: 520, column: 351, scope: !4839)
!4856 = !DILocation(line: 520, column: 255, scope: !4857)
!4857 = !DILexicalBlockFile(scope: !4839, file: !373, discriminator: 9)
!4858 = !DILocation(line: 520, column: 252, scope: !4859)
!4859 = !DILexicalBlockFile(scope: !4860, file: !373, discriminator: 11)
!4860 = !DILexicalBlockFile(scope: !4839, file: !373, discriminator: 10)
!4861 = !DILocation(line: 520, column: 383, scope: !4839)
!4862 = !DILocation(line: 520, column: 406, scope: !4863)
!4863 = !DILexicalBlockFile(scope: !4864, file: !373, discriminator: 12)
!4864 = !DILexicalBlockFile(scope: !4865, file: !373, discriminator: 4)
!4865 = distinct !DILexicalBlock(scope: !684, file: !373, line: 520, column: 390)
!4866 = !DILocation(line: 520, column: 411, scope: !4865)
!4867 = !DILocation(line: 520, column: 420, scope: !4865)
!4868 = !DILocation(line: 520, column: 446, scope: !4865)
!4869 = !DILocation(line: 520, column: 464, scope: !4870)
!4870 = !DILexicalBlockFile(scope: !4865, file: !373, discriminator: 14)
!4871 = !DILocation(line: 520, column: 469, scope: !4865)
!4872 = !DILocation(line: 520, column: 478, scope: !4865)
!4873 = !DILocation(line: 520, column: 390, scope: !684)
!4874 = !DILocation(line: 520, column: 555, scope: !4875)
!4875 = !DILexicalBlockFile(scope: !4876, file: !373, discriminator: 15)
!4876 = !DILexicalBlockFile(scope: !4877, file: !373, discriminator: 13)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !373, line: 520, column: 520)
!4878 = distinct !DILexicalBlock(scope: !4865, file: !373, line: 520, column: 514)
!4879 = !DILocation(line: 520, column: 536, scope: !4877)
!4880 = !DILocation(line: 520, column: 521, scope: !4877)
!4881 = !DILocation(line: 520, column: 520, scope: !4878)
!4882 = !DILocation(line: 520, column: 559, scope: !4883)
!4883 = !DILexicalBlockFile(scope: !4877, file: !373, discriminator: 18)
!4884 = !DILocation(line: 520, column: 618, scope: !4885)
!4885 = !DILexicalBlockFile(scope: !4878, file: !373, discriminator: 17)
!4886 = !DILocation(line: 520, column: 598, scope: !4878)
!4887 = !DILocation(line: 520, column: 623, scope: !4878)
!4888 = !DILocation(line: 520, column: 636, scope: !4878)
!4889 = !DILocation(line: 520, column: 647, scope: !4878)
!4890 = !DILocation(line: 520, column: 583, scope: !4878)
!4891 = !DILocation(line: 520, column: 674, scope: !4892)
!4892 = !DILexicalBlockFile(scope: !4878, file: !373, discriminator: 20)
!4893 = !DILocation(line: 520, column: 654, scope: !4878)
!4894 = !DILocation(line: 520, column: 679, scope: !4878)
!4895 = !DILocation(line: 520, column: 583, scope: !4896)
!4896 = !DILexicalBlockFile(scope: !4878, file: !373, discriminator: 21)
!4897 = !DILocation(line: 520, column: 580, scope: !4898)
!4898 = !DILexicalBlockFile(scope: !4899, file: !373, discriminator: 23)
!4899 = !DILexicalBlockFile(scope: !4878, file: !373, discriminator: 22)
!4900 = !DILocation(line: 520, column: 711, scope: !4878)
!4901 = !DILocation(line: 520, column: 741, scope: !4902)
!4902 = !DILexicalBlockFile(scope: !4903, file: !373, discriminator: 24)
!4903 = !DILexicalBlockFile(scope: !684, file: !373, discriminator: 16)
!4904 = !DILocation(line: 520, column: 744, scope: !684)
!4905 = !DILocation(line: 520, column: 721, scope: !684)
!4906 = !DILocation(line: 520, column: 714, scope: !684)
!4907 = !DILocation(line: 520, column: 748, scope: !4908)
!4908 = !DILexicalBlockFile(scope: !4909, file: !373, discriminator: 25)
!4909 = !DILexicalBlockFile(scope: !4910, file: !373, discriminator: 19)
!4910 = !DILexicalBlockFile(scope: !684, file: !373, discriminator: 7)
!4911 = !DILocation(line: 521, column: 40, scope: !688)
!4912 = !DILocation(line: 521, column: 53, scope: !688)
!4913 = !DILocation(line: 521, column: 78, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !688, file: !373, line: 521, column: 62)
!4915 = !DILocation(line: 521, column: 83, scope: !4914)
!4916 = !DILocation(line: 521, column: 92, scope: !4914)
!4917 = !DILocation(line: 521, column: 118, scope: !4914)
!4918 = !DILocation(line: 521, column: 136, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4914, file: !373, discriminator: 2)
!4920 = !DILocation(line: 521, column: 141, scope: !4914)
!4921 = !DILocation(line: 521, column: 150, scope: !4914)
!4922 = !DILocation(line: 521, column: 62, scope: !688)
!4923 = !DILocation(line: 521, column: 227, scope: !4924)
!4924 = !DILexicalBlockFile(scope: !4925, file: !373, discriminator: 3)
!4925 = !DILexicalBlockFile(scope: !4926, file: !373, discriminator: 1)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !373, line: 521, column: 192)
!4927 = distinct !DILexicalBlock(scope: !4914, file: !373, line: 521, column: 186)
!4928 = !DILocation(line: 521, column: 208, scope: !4926)
!4929 = !DILocation(line: 521, column: 193, scope: !4926)
!4930 = !DILocation(line: 521, column: 192, scope: !4927)
!4931 = !DILocation(line: 521, column: 231, scope: !4932)
!4932 = !DILexicalBlockFile(scope: !4926, file: !373, discriminator: 6)
!4933 = !DILocation(line: 521, column: 290, scope: !4934)
!4934 = !DILexicalBlockFile(scope: !4927, file: !373, discriminator: 5)
!4935 = !DILocation(line: 521, column: 270, scope: !4927)
!4936 = !DILocation(line: 521, column: 295, scope: !4927)
!4937 = !DILocation(line: 521, column: 308, scope: !4927)
!4938 = !DILocation(line: 521, column: 319, scope: !4927)
!4939 = !DILocation(line: 521, column: 255, scope: !4927)
!4940 = !DILocation(line: 521, column: 346, scope: !4941)
!4941 = !DILexicalBlockFile(scope: !4927, file: !373, discriminator: 8)
!4942 = !DILocation(line: 521, column: 326, scope: !4927)
!4943 = !DILocation(line: 521, column: 351, scope: !4927)
!4944 = !DILocation(line: 521, column: 255, scope: !4945)
!4945 = !DILexicalBlockFile(scope: !4927, file: !373, discriminator: 9)
!4946 = !DILocation(line: 521, column: 252, scope: !4947)
!4947 = !DILexicalBlockFile(scope: !4948, file: !373, discriminator: 11)
!4948 = !DILexicalBlockFile(scope: !4927, file: !373, discriminator: 10)
!4949 = !DILocation(line: 521, column: 383, scope: !4927)
!4950 = !DILocation(line: 521, column: 406, scope: !4951)
!4951 = !DILexicalBlockFile(scope: !4952, file: !373, discriminator: 12)
!4952 = !DILexicalBlockFile(scope: !4953, file: !373, discriminator: 4)
!4953 = distinct !DILexicalBlock(scope: !688, file: !373, line: 521, column: 390)
!4954 = !DILocation(line: 521, column: 411, scope: !4953)
!4955 = !DILocation(line: 521, column: 420, scope: !4953)
!4956 = !DILocation(line: 521, column: 446, scope: !4953)
!4957 = !DILocation(line: 521, column: 464, scope: !4958)
!4958 = !DILexicalBlockFile(scope: !4953, file: !373, discriminator: 14)
!4959 = !DILocation(line: 521, column: 469, scope: !4953)
!4960 = !DILocation(line: 521, column: 478, scope: !4953)
!4961 = !DILocation(line: 521, column: 390, scope: !688)
!4962 = !DILocation(line: 521, column: 555, scope: !4963)
!4963 = !DILexicalBlockFile(scope: !4964, file: !373, discriminator: 15)
!4964 = !DILexicalBlockFile(scope: !4965, file: !373, discriminator: 13)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !373, line: 521, column: 520)
!4966 = distinct !DILexicalBlock(scope: !4953, file: !373, line: 521, column: 514)
!4967 = !DILocation(line: 521, column: 536, scope: !4965)
!4968 = !DILocation(line: 521, column: 521, scope: !4965)
!4969 = !DILocation(line: 521, column: 520, scope: !4966)
!4970 = !DILocation(line: 521, column: 559, scope: !4971)
!4971 = !DILexicalBlockFile(scope: !4965, file: !373, discriminator: 18)
!4972 = !DILocation(line: 521, column: 618, scope: !4973)
!4973 = !DILexicalBlockFile(scope: !4966, file: !373, discriminator: 17)
!4974 = !DILocation(line: 521, column: 598, scope: !4966)
!4975 = !DILocation(line: 521, column: 623, scope: !4966)
!4976 = !DILocation(line: 521, column: 636, scope: !4966)
!4977 = !DILocation(line: 521, column: 647, scope: !4966)
!4978 = !DILocation(line: 521, column: 583, scope: !4966)
!4979 = !DILocation(line: 521, column: 674, scope: !4980)
!4980 = !DILexicalBlockFile(scope: !4966, file: !373, discriminator: 20)
!4981 = !DILocation(line: 521, column: 654, scope: !4966)
!4982 = !DILocation(line: 521, column: 679, scope: !4966)
!4983 = !DILocation(line: 521, column: 583, scope: !4984)
!4984 = !DILexicalBlockFile(scope: !4966, file: !373, discriminator: 21)
!4985 = !DILocation(line: 521, column: 580, scope: !4986)
!4986 = !DILexicalBlockFile(scope: !4987, file: !373, discriminator: 23)
!4987 = !DILexicalBlockFile(scope: !4966, file: !373, discriminator: 22)
!4988 = !DILocation(line: 521, column: 711, scope: !4966)
!4989 = !DILocation(line: 521, column: 741, scope: !4990)
!4990 = !DILexicalBlockFile(scope: !4991, file: !373, discriminator: 24)
!4991 = !DILexicalBlockFile(scope: !688, file: !373, discriminator: 16)
!4992 = !DILocation(line: 521, column: 744, scope: !688)
!4993 = !DILocation(line: 521, column: 721, scope: !688)
!4994 = !DILocation(line: 521, column: 714, scope: !688)
!4995 = !DILocation(line: 521, column: 748, scope: !4996)
!4996 = !DILexicalBlockFile(scope: !4997, file: !373, discriminator: 25)
!4997 = !DILexicalBlockFile(scope: !4998, file: !373, discriminator: 19)
!4998 = !DILexicalBlockFile(scope: !688, file: !373, discriminator: 7)
!4999 = !DILocation(line: 522, column: 39, scope: !692)
!5000 = !DILocation(line: 522, column: 52, scope: !692)
!5001 = !DILocation(line: 522, column: 77, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !692, file: !373, line: 522, column: 61)
!5003 = !DILocation(line: 522, column: 82, scope: !5002)
!5004 = !DILocation(line: 522, column: 91, scope: !5002)
!5005 = !DILocation(line: 522, column: 117, scope: !5002)
!5006 = !DILocation(line: 522, column: 135, scope: !5007)
!5007 = !DILexicalBlockFile(scope: !5002, file: !373, discriminator: 2)
!5008 = !DILocation(line: 522, column: 140, scope: !5002)
!5009 = !DILocation(line: 522, column: 149, scope: !5002)
!5010 = !DILocation(line: 522, column: 61, scope: !692)
!5011 = !DILocation(line: 522, column: 226, scope: !5012)
!5012 = !DILexicalBlockFile(scope: !5013, file: !373, discriminator: 3)
!5013 = !DILexicalBlockFile(scope: !5014, file: !373, discriminator: 1)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !373, line: 522, column: 191)
!5015 = distinct !DILexicalBlock(scope: !5002, file: !373, line: 522, column: 185)
!5016 = !DILocation(line: 522, column: 207, scope: !5014)
!5017 = !DILocation(line: 522, column: 192, scope: !5014)
!5018 = !DILocation(line: 522, column: 191, scope: !5015)
!5019 = !DILocation(line: 522, column: 230, scope: !5020)
!5020 = !DILexicalBlockFile(scope: !5014, file: !373, discriminator: 6)
!5021 = !DILocation(line: 522, column: 289, scope: !5022)
!5022 = !DILexicalBlockFile(scope: !5015, file: !373, discriminator: 5)
!5023 = !DILocation(line: 522, column: 269, scope: !5015)
!5024 = !DILocation(line: 522, column: 294, scope: !5015)
!5025 = !DILocation(line: 522, column: 307, scope: !5015)
!5026 = !DILocation(line: 522, column: 318, scope: !5015)
!5027 = !DILocation(line: 522, column: 254, scope: !5015)
!5028 = !DILocation(line: 522, column: 345, scope: !5029)
!5029 = !DILexicalBlockFile(scope: !5015, file: !373, discriminator: 8)
!5030 = !DILocation(line: 522, column: 325, scope: !5015)
!5031 = !DILocation(line: 522, column: 350, scope: !5015)
!5032 = !DILocation(line: 522, column: 254, scope: !5033)
!5033 = !DILexicalBlockFile(scope: !5015, file: !373, discriminator: 9)
!5034 = !DILocation(line: 522, column: 251, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !5036, file: !373, discriminator: 11)
!5036 = !DILexicalBlockFile(scope: !5015, file: !373, discriminator: 10)
!5037 = !DILocation(line: 522, column: 382, scope: !5015)
!5038 = !DILocation(line: 522, column: 405, scope: !5039)
!5039 = !DILexicalBlockFile(scope: !5040, file: !373, discriminator: 12)
!5040 = !DILexicalBlockFile(scope: !5041, file: !373, discriminator: 4)
!5041 = distinct !DILexicalBlock(scope: !692, file: !373, line: 522, column: 389)
!5042 = !DILocation(line: 522, column: 410, scope: !5041)
!5043 = !DILocation(line: 522, column: 419, scope: !5041)
!5044 = !DILocation(line: 522, column: 445, scope: !5041)
!5045 = !DILocation(line: 522, column: 463, scope: !5046)
!5046 = !DILexicalBlockFile(scope: !5041, file: !373, discriminator: 14)
!5047 = !DILocation(line: 522, column: 468, scope: !5041)
!5048 = !DILocation(line: 522, column: 477, scope: !5041)
!5049 = !DILocation(line: 522, column: 389, scope: !692)
!5050 = !DILocation(line: 522, column: 554, scope: !5051)
!5051 = !DILexicalBlockFile(scope: !5052, file: !373, discriminator: 15)
!5052 = !DILexicalBlockFile(scope: !5053, file: !373, discriminator: 13)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !373, line: 522, column: 519)
!5054 = distinct !DILexicalBlock(scope: !5041, file: !373, line: 522, column: 513)
!5055 = !DILocation(line: 522, column: 535, scope: !5053)
!5056 = !DILocation(line: 522, column: 520, scope: !5053)
!5057 = !DILocation(line: 522, column: 519, scope: !5054)
!5058 = !DILocation(line: 522, column: 558, scope: !5059)
!5059 = !DILexicalBlockFile(scope: !5053, file: !373, discriminator: 18)
!5060 = !DILocation(line: 522, column: 617, scope: !5061)
!5061 = !DILexicalBlockFile(scope: !5054, file: !373, discriminator: 17)
!5062 = !DILocation(line: 522, column: 597, scope: !5054)
!5063 = !DILocation(line: 522, column: 622, scope: !5054)
!5064 = !DILocation(line: 522, column: 635, scope: !5054)
!5065 = !DILocation(line: 522, column: 646, scope: !5054)
!5066 = !DILocation(line: 522, column: 582, scope: !5054)
!5067 = !DILocation(line: 522, column: 673, scope: !5068)
!5068 = !DILexicalBlockFile(scope: !5054, file: !373, discriminator: 20)
!5069 = !DILocation(line: 522, column: 653, scope: !5054)
!5070 = !DILocation(line: 522, column: 678, scope: !5054)
!5071 = !DILocation(line: 522, column: 582, scope: !5072)
!5072 = !DILexicalBlockFile(scope: !5054, file: !373, discriminator: 21)
!5073 = !DILocation(line: 522, column: 579, scope: !5074)
!5074 = !DILexicalBlockFile(scope: !5075, file: !373, discriminator: 23)
!5075 = !DILexicalBlockFile(scope: !5054, file: !373, discriminator: 22)
!5076 = !DILocation(line: 522, column: 710, scope: !5054)
!5077 = !DILocation(line: 522, column: 739, scope: !5078)
!5078 = !DILexicalBlockFile(scope: !5079, file: !373, discriminator: 24)
!5079 = !DILexicalBlockFile(scope: !692, file: !373, discriminator: 16)
!5080 = !DILocation(line: 522, column: 742, scope: !692)
!5081 = !DILocation(line: 522, column: 720, scope: !692)
!5082 = !DILocation(line: 522, column: 713, scope: !692)
!5083 = !DILocation(line: 522, column: 746, scope: !5084)
!5084 = !DILexicalBlockFile(scope: !5085, file: !373, discriminator: 25)
!5085 = !DILexicalBlockFile(scope: !5086, file: !373, discriminator: 19)
!5086 = !DILexicalBlockFile(scope: !692, file: !373, discriminator: 7)
!5087 = !DILocation(line: 495, column: 45, scope: !696)
!5088 = !DILocation(line: 495, column: 58, scope: !696)
!5089 = !DILocation(line: 495, column: 83, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !696, file: !373, line: 495, column: 67)
!5091 = !DILocation(line: 495, column: 88, scope: !5090)
!5092 = !DILocation(line: 495, column: 97, scope: !5090)
!5093 = !DILocation(line: 495, column: 123, scope: !5090)
!5094 = !DILocation(line: 495, column: 141, scope: !5095)
!5095 = !DILexicalBlockFile(scope: !5090, file: !373, discriminator: 2)
!5096 = !DILocation(line: 495, column: 146, scope: !5090)
!5097 = !DILocation(line: 495, column: 155, scope: !5090)
!5098 = !DILocation(line: 495, column: 67, scope: !696)
!5099 = !DILocation(line: 495, column: 232, scope: !5100)
!5100 = !DILexicalBlockFile(scope: !5101, file: !373, discriminator: 3)
!5101 = !DILexicalBlockFile(scope: !5102, file: !373, discriminator: 1)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !373, line: 495, column: 197)
!5103 = distinct !DILexicalBlock(scope: !5090, file: !373, line: 495, column: 191)
!5104 = !DILocation(line: 495, column: 213, scope: !5102)
!5105 = !DILocation(line: 495, column: 198, scope: !5102)
!5106 = !DILocation(line: 495, column: 197, scope: !5103)
!5107 = !DILocation(line: 495, column: 236, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !5102, file: !373, discriminator: 6)
!5109 = !DILocation(line: 495, column: 295, scope: !5110)
!5110 = !DILexicalBlockFile(scope: !5103, file: !373, discriminator: 5)
!5111 = !DILocation(line: 495, column: 275, scope: !5103)
!5112 = !DILocation(line: 495, column: 300, scope: !5103)
!5113 = !DILocation(line: 495, column: 313, scope: !5103)
!5114 = !DILocation(line: 495, column: 324, scope: !5103)
!5115 = !DILocation(line: 495, column: 260, scope: !5103)
!5116 = !DILocation(line: 495, column: 351, scope: !5117)
!5117 = !DILexicalBlockFile(scope: !5103, file: !373, discriminator: 8)
!5118 = !DILocation(line: 495, column: 331, scope: !5103)
!5119 = !DILocation(line: 495, column: 356, scope: !5103)
!5120 = !DILocation(line: 495, column: 260, scope: !5121)
!5121 = !DILexicalBlockFile(scope: !5103, file: !373, discriminator: 9)
!5122 = !DILocation(line: 495, column: 257, scope: !5123)
!5123 = !DILexicalBlockFile(scope: !5124, file: !373, discriminator: 11)
!5124 = !DILexicalBlockFile(scope: !5103, file: !373, discriminator: 10)
!5125 = !DILocation(line: 495, column: 388, scope: !5103)
!5126 = !DILocation(line: 495, column: 411, scope: !5127)
!5127 = !DILexicalBlockFile(scope: !5128, file: !373, discriminator: 12)
!5128 = !DILexicalBlockFile(scope: !5129, file: !373, discriminator: 4)
!5129 = distinct !DILexicalBlock(scope: !696, file: !373, line: 495, column: 395)
!5130 = !DILocation(line: 495, column: 416, scope: !5129)
!5131 = !DILocation(line: 495, column: 425, scope: !5129)
!5132 = !DILocation(line: 495, column: 451, scope: !5129)
!5133 = !DILocation(line: 495, column: 469, scope: !5134)
!5134 = !DILexicalBlockFile(scope: !5129, file: !373, discriminator: 14)
!5135 = !DILocation(line: 495, column: 474, scope: !5129)
!5136 = !DILocation(line: 495, column: 483, scope: !5129)
!5137 = !DILocation(line: 495, column: 395, scope: !696)
!5138 = !DILocation(line: 495, column: 560, scope: !5139)
!5139 = !DILexicalBlockFile(scope: !5140, file: !373, discriminator: 15)
!5140 = !DILexicalBlockFile(scope: !5141, file: !373, discriminator: 13)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !373, line: 495, column: 525)
!5142 = distinct !DILexicalBlock(scope: !5129, file: !373, line: 495, column: 519)
!5143 = !DILocation(line: 495, column: 541, scope: !5141)
!5144 = !DILocation(line: 495, column: 526, scope: !5141)
!5145 = !DILocation(line: 495, column: 525, scope: !5142)
!5146 = !DILocation(line: 495, column: 564, scope: !5147)
!5147 = !DILexicalBlockFile(scope: !5141, file: !373, discriminator: 18)
!5148 = !DILocation(line: 495, column: 623, scope: !5149)
!5149 = !DILexicalBlockFile(scope: !5142, file: !373, discriminator: 17)
!5150 = !DILocation(line: 495, column: 603, scope: !5142)
!5151 = !DILocation(line: 495, column: 628, scope: !5142)
!5152 = !DILocation(line: 495, column: 641, scope: !5142)
!5153 = !DILocation(line: 495, column: 652, scope: !5142)
!5154 = !DILocation(line: 495, column: 588, scope: !5142)
!5155 = !DILocation(line: 495, column: 679, scope: !5156)
!5156 = !DILexicalBlockFile(scope: !5142, file: !373, discriminator: 20)
!5157 = !DILocation(line: 495, column: 659, scope: !5142)
!5158 = !DILocation(line: 495, column: 684, scope: !5142)
!5159 = !DILocation(line: 495, column: 588, scope: !5160)
!5160 = !DILexicalBlockFile(scope: !5142, file: !373, discriminator: 21)
!5161 = !DILocation(line: 495, column: 585, scope: !5162)
!5162 = !DILexicalBlockFile(scope: !5163, file: !373, discriminator: 23)
!5163 = !DILexicalBlockFile(scope: !5142, file: !373, discriminator: 22)
!5164 = !DILocation(line: 495, column: 716, scope: !5142)
!5165 = !DILocation(line: 495, column: 747, scope: !5166)
!5166 = !DILexicalBlockFile(scope: !5167, file: !373, discriminator: 24)
!5167 = !DILexicalBlockFile(scope: !696, file: !373, discriminator: 16)
!5168 = !DILocation(line: 495, column: 750, scope: !696)
!5169 = !DILocation(line: 495, column: 726, scope: !696)
!5170 = !DILocation(line: 495, column: 719, scope: !696)
!5171 = !DILocation(line: 495, column: 754, scope: !5172)
!5172 = !DILexicalBlockFile(scope: !5173, file: !373, discriminator: 25)
!5173 = !DILexicalBlockFile(scope: !5174, file: !373, discriminator: 19)
!5174 = !DILexicalBlockFile(scope: !696, file: !373, discriminator: 7)
!5175 = !DILocation(line: 496, column: 44, scope: !700)
!5176 = !DILocation(line: 496, column: 57, scope: !700)
!5177 = !DILocation(line: 496, column: 82, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !700, file: !373, line: 496, column: 66)
!5179 = !DILocation(line: 496, column: 87, scope: !5178)
!5180 = !DILocation(line: 496, column: 96, scope: !5178)
!5181 = !DILocation(line: 496, column: 122, scope: !5178)
!5182 = !DILocation(line: 496, column: 140, scope: !5183)
!5183 = !DILexicalBlockFile(scope: !5178, file: !373, discriminator: 2)
!5184 = !DILocation(line: 496, column: 145, scope: !5178)
!5185 = !DILocation(line: 496, column: 154, scope: !5178)
!5186 = !DILocation(line: 496, column: 66, scope: !700)
!5187 = !DILocation(line: 496, column: 231, scope: !5188)
!5188 = !DILexicalBlockFile(scope: !5189, file: !373, discriminator: 3)
!5189 = !DILexicalBlockFile(scope: !5190, file: !373, discriminator: 1)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !373, line: 496, column: 196)
!5191 = distinct !DILexicalBlock(scope: !5178, file: !373, line: 496, column: 190)
!5192 = !DILocation(line: 496, column: 212, scope: !5190)
!5193 = !DILocation(line: 496, column: 197, scope: !5190)
!5194 = !DILocation(line: 496, column: 196, scope: !5191)
!5195 = !DILocation(line: 496, column: 235, scope: !5196)
!5196 = !DILexicalBlockFile(scope: !5190, file: !373, discriminator: 6)
!5197 = !DILocation(line: 496, column: 294, scope: !5198)
!5198 = !DILexicalBlockFile(scope: !5191, file: !373, discriminator: 5)
!5199 = !DILocation(line: 496, column: 274, scope: !5191)
!5200 = !DILocation(line: 496, column: 299, scope: !5191)
!5201 = !DILocation(line: 496, column: 312, scope: !5191)
!5202 = !DILocation(line: 496, column: 323, scope: !5191)
!5203 = !DILocation(line: 496, column: 259, scope: !5191)
!5204 = !DILocation(line: 496, column: 350, scope: !5205)
!5205 = !DILexicalBlockFile(scope: !5191, file: !373, discriminator: 8)
!5206 = !DILocation(line: 496, column: 330, scope: !5191)
!5207 = !DILocation(line: 496, column: 355, scope: !5191)
!5208 = !DILocation(line: 496, column: 259, scope: !5209)
!5209 = !DILexicalBlockFile(scope: !5191, file: !373, discriminator: 9)
!5210 = !DILocation(line: 496, column: 256, scope: !5211)
!5211 = !DILexicalBlockFile(scope: !5212, file: !373, discriminator: 11)
!5212 = !DILexicalBlockFile(scope: !5191, file: !373, discriminator: 10)
!5213 = !DILocation(line: 496, column: 387, scope: !5191)
!5214 = !DILocation(line: 496, column: 410, scope: !5215)
!5215 = !DILexicalBlockFile(scope: !5216, file: !373, discriminator: 12)
!5216 = !DILexicalBlockFile(scope: !5217, file: !373, discriminator: 4)
!5217 = distinct !DILexicalBlock(scope: !700, file: !373, line: 496, column: 394)
!5218 = !DILocation(line: 496, column: 415, scope: !5217)
!5219 = !DILocation(line: 496, column: 424, scope: !5217)
!5220 = !DILocation(line: 496, column: 450, scope: !5217)
!5221 = !DILocation(line: 496, column: 468, scope: !5222)
!5222 = !DILexicalBlockFile(scope: !5217, file: !373, discriminator: 14)
!5223 = !DILocation(line: 496, column: 473, scope: !5217)
!5224 = !DILocation(line: 496, column: 482, scope: !5217)
!5225 = !DILocation(line: 496, column: 394, scope: !700)
!5226 = !DILocation(line: 496, column: 559, scope: !5227)
!5227 = !DILexicalBlockFile(scope: !5228, file: !373, discriminator: 15)
!5228 = !DILexicalBlockFile(scope: !5229, file: !373, discriminator: 13)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !373, line: 496, column: 524)
!5230 = distinct !DILexicalBlock(scope: !5217, file: !373, line: 496, column: 518)
!5231 = !DILocation(line: 496, column: 540, scope: !5229)
!5232 = !DILocation(line: 496, column: 525, scope: !5229)
!5233 = !DILocation(line: 496, column: 524, scope: !5230)
!5234 = !DILocation(line: 496, column: 563, scope: !5235)
!5235 = !DILexicalBlockFile(scope: !5229, file: !373, discriminator: 18)
!5236 = !DILocation(line: 496, column: 622, scope: !5237)
!5237 = !DILexicalBlockFile(scope: !5230, file: !373, discriminator: 17)
!5238 = !DILocation(line: 496, column: 602, scope: !5230)
!5239 = !DILocation(line: 496, column: 627, scope: !5230)
!5240 = !DILocation(line: 496, column: 640, scope: !5230)
!5241 = !DILocation(line: 496, column: 651, scope: !5230)
!5242 = !DILocation(line: 496, column: 587, scope: !5230)
!5243 = !DILocation(line: 496, column: 678, scope: !5244)
!5244 = !DILexicalBlockFile(scope: !5230, file: !373, discriminator: 20)
!5245 = !DILocation(line: 496, column: 658, scope: !5230)
!5246 = !DILocation(line: 496, column: 683, scope: !5230)
!5247 = !DILocation(line: 496, column: 587, scope: !5248)
!5248 = !DILexicalBlockFile(scope: !5230, file: !373, discriminator: 21)
!5249 = !DILocation(line: 496, column: 584, scope: !5250)
!5250 = !DILexicalBlockFile(scope: !5251, file: !373, discriminator: 23)
!5251 = !DILexicalBlockFile(scope: !5230, file: !373, discriminator: 22)
!5252 = !DILocation(line: 496, column: 715, scope: !5230)
!5253 = !DILocation(line: 496, column: 745, scope: !5254)
!5254 = !DILexicalBlockFile(scope: !5255, file: !373, discriminator: 24)
!5255 = !DILexicalBlockFile(scope: !700, file: !373, discriminator: 16)
!5256 = !DILocation(line: 496, column: 748, scope: !700)
!5257 = !DILocation(line: 496, column: 725, scope: !700)
!5258 = !DILocation(line: 496, column: 718, scope: !700)
!5259 = !DILocation(line: 496, column: 752, scope: !5260)
!5260 = !DILexicalBlockFile(scope: !5261, file: !373, discriminator: 25)
!5261 = !DILexicalBlockFile(scope: !5262, file: !373, discriminator: 19)
!5262 = !DILexicalBlockFile(scope: !700, file: !373, discriminator: 7)
!5263 = !DILocation(line: 514, column: 46, scope: !704)
!5264 = !DILocation(line: 514, column: 59, scope: !704)
!5265 = !DILocation(line: 514, column: 84, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !704, file: !373, line: 514, column: 68)
!5267 = !DILocation(line: 514, column: 89, scope: !5266)
!5268 = !DILocation(line: 514, column: 98, scope: !5266)
!5269 = !DILocation(line: 514, column: 124, scope: !5266)
!5270 = !DILocation(line: 514, column: 142, scope: !5271)
!5271 = !DILexicalBlockFile(scope: !5266, file: !373, discriminator: 2)
!5272 = !DILocation(line: 514, column: 147, scope: !5266)
!5273 = !DILocation(line: 514, column: 156, scope: !5266)
!5274 = !DILocation(line: 514, column: 68, scope: !704)
!5275 = !DILocation(line: 514, column: 233, scope: !5276)
!5276 = !DILexicalBlockFile(scope: !5277, file: !373, discriminator: 3)
!5277 = !DILexicalBlockFile(scope: !5278, file: !373, discriminator: 1)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !373, line: 514, column: 198)
!5279 = distinct !DILexicalBlock(scope: !5266, file: !373, line: 514, column: 192)
!5280 = !DILocation(line: 514, column: 214, scope: !5278)
!5281 = !DILocation(line: 514, column: 199, scope: !5278)
!5282 = !DILocation(line: 514, column: 198, scope: !5279)
!5283 = !DILocation(line: 514, column: 237, scope: !5284)
!5284 = !DILexicalBlockFile(scope: !5278, file: !373, discriminator: 6)
!5285 = !DILocation(line: 514, column: 296, scope: !5286)
!5286 = !DILexicalBlockFile(scope: !5279, file: !373, discriminator: 5)
!5287 = !DILocation(line: 514, column: 276, scope: !5279)
!5288 = !DILocation(line: 514, column: 301, scope: !5279)
!5289 = !DILocation(line: 514, column: 314, scope: !5279)
!5290 = !DILocation(line: 514, column: 325, scope: !5279)
!5291 = !DILocation(line: 514, column: 261, scope: !5279)
!5292 = !DILocation(line: 514, column: 352, scope: !5293)
!5293 = !DILexicalBlockFile(scope: !5279, file: !373, discriminator: 8)
!5294 = !DILocation(line: 514, column: 332, scope: !5279)
!5295 = !DILocation(line: 514, column: 357, scope: !5279)
!5296 = !DILocation(line: 514, column: 261, scope: !5297)
!5297 = !DILexicalBlockFile(scope: !5279, file: !373, discriminator: 9)
!5298 = !DILocation(line: 514, column: 258, scope: !5299)
!5299 = !DILexicalBlockFile(scope: !5300, file: !373, discriminator: 11)
!5300 = !DILexicalBlockFile(scope: !5279, file: !373, discriminator: 10)
!5301 = !DILocation(line: 514, column: 389, scope: !5279)
!5302 = !DILocation(line: 514, column: 412, scope: !5303)
!5303 = !DILexicalBlockFile(scope: !5304, file: !373, discriminator: 12)
!5304 = !DILexicalBlockFile(scope: !5305, file: !373, discriminator: 4)
!5305 = distinct !DILexicalBlock(scope: !704, file: !373, line: 514, column: 396)
!5306 = !DILocation(line: 514, column: 417, scope: !5305)
!5307 = !DILocation(line: 514, column: 426, scope: !5305)
!5308 = !DILocation(line: 514, column: 452, scope: !5305)
!5309 = !DILocation(line: 514, column: 470, scope: !5310)
!5310 = !DILexicalBlockFile(scope: !5305, file: !373, discriminator: 14)
!5311 = !DILocation(line: 514, column: 475, scope: !5305)
!5312 = !DILocation(line: 514, column: 484, scope: !5305)
!5313 = !DILocation(line: 514, column: 396, scope: !704)
!5314 = !DILocation(line: 514, column: 561, scope: !5315)
!5315 = !DILexicalBlockFile(scope: !5316, file: !373, discriminator: 15)
!5316 = !DILexicalBlockFile(scope: !5317, file: !373, discriminator: 13)
!5317 = distinct !DILexicalBlock(scope: !5318, file: !373, line: 514, column: 526)
!5318 = distinct !DILexicalBlock(scope: !5305, file: !373, line: 514, column: 520)
!5319 = !DILocation(line: 514, column: 542, scope: !5317)
!5320 = !DILocation(line: 514, column: 527, scope: !5317)
!5321 = !DILocation(line: 514, column: 526, scope: !5318)
!5322 = !DILocation(line: 514, column: 565, scope: !5323)
!5323 = !DILexicalBlockFile(scope: !5317, file: !373, discriminator: 18)
!5324 = !DILocation(line: 514, column: 624, scope: !5325)
!5325 = !DILexicalBlockFile(scope: !5318, file: !373, discriminator: 17)
!5326 = !DILocation(line: 514, column: 604, scope: !5318)
!5327 = !DILocation(line: 514, column: 629, scope: !5318)
!5328 = !DILocation(line: 514, column: 642, scope: !5318)
!5329 = !DILocation(line: 514, column: 653, scope: !5318)
!5330 = !DILocation(line: 514, column: 589, scope: !5318)
!5331 = !DILocation(line: 514, column: 680, scope: !5332)
!5332 = !DILexicalBlockFile(scope: !5318, file: !373, discriminator: 20)
!5333 = !DILocation(line: 514, column: 660, scope: !5318)
!5334 = !DILocation(line: 514, column: 685, scope: !5318)
!5335 = !DILocation(line: 514, column: 589, scope: !5336)
!5336 = !DILexicalBlockFile(scope: !5318, file: !373, discriminator: 21)
!5337 = !DILocation(line: 514, column: 586, scope: !5338)
!5338 = !DILexicalBlockFile(scope: !5339, file: !373, discriminator: 23)
!5339 = !DILexicalBlockFile(scope: !5318, file: !373, discriminator: 22)
!5340 = !DILocation(line: 514, column: 717, scope: !5318)
!5341 = !DILocation(line: 514, column: 755, scope: !5342)
!5342 = !DILexicalBlockFile(scope: !5343, file: !373, discriminator: 24)
!5343 = !DILexicalBlockFile(scope: !704, file: !373, discriminator: 16)
!5344 = !DILocation(line: 514, column: 758, scope: !704)
!5345 = !DILocation(line: 514, column: 727, scope: !704)
!5346 = !DILocation(line: 514, column: 720, scope: !704)
!5347 = !DILocation(line: 514, column: 762, scope: !5348)
!5348 = !DILexicalBlockFile(scope: !5349, file: !373, discriminator: 25)
!5349 = !DILexicalBlockFile(scope: !5350, file: !373, discriminator: 19)
!5350 = !DILexicalBlockFile(scope: !704, file: !373, discriminator: 7)
!5351 = !DILocation(line: 515, column: 45, scope: !708)
!5352 = !DILocation(line: 515, column: 58, scope: !708)
!5353 = !DILocation(line: 515, column: 83, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !708, file: !373, line: 515, column: 67)
!5355 = !DILocation(line: 515, column: 88, scope: !5354)
!5356 = !DILocation(line: 515, column: 97, scope: !5354)
!5357 = !DILocation(line: 515, column: 123, scope: !5354)
!5358 = !DILocation(line: 515, column: 141, scope: !5359)
!5359 = !DILexicalBlockFile(scope: !5354, file: !373, discriminator: 2)
!5360 = !DILocation(line: 515, column: 146, scope: !5354)
!5361 = !DILocation(line: 515, column: 155, scope: !5354)
!5362 = !DILocation(line: 515, column: 67, scope: !708)
!5363 = !DILocation(line: 515, column: 232, scope: !5364)
!5364 = !DILexicalBlockFile(scope: !5365, file: !373, discriminator: 3)
!5365 = !DILexicalBlockFile(scope: !5366, file: !373, discriminator: 1)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !373, line: 515, column: 197)
!5367 = distinct !DILexicalBlock(scope: !5354, file: !373, line: 515, column: 191)
!5368 = !DILocation(line: 515, column: 213, scope: !5366)
!5369 = !DILocation(line: 515, column: 198, scope: !5366)
!5370 = !DILocation(line: 515, column: 197, scope: !5367)
!5371 = !DILocation(line: 515, column: 236, scope: !5372)
!5372 = !DILexicalBlockFile(scope: !5366, file: !373, discriminator: 6)
!5373 = !DILocation(line: 515, column: 295, scope: !5374)
!5374 = !DILexicalBlockFile(scope: !5367, file: !373, discriminator: 5)
!5375 = !DILocation(line: 515, column: 275, scope: !5367)
!5376 = !DILocation(line: 515, column: 300, scope: !5367)
!5377 = !DILocation(line: 515, column: 313, scope: !5367)
!5378 = !DILocation(line: 515, column: 324, scope: !5367)
!5379 = !DILocation(line: 515, column: 260, scope: !5367)
!5380 = !DILocation(line: 515, column: 351, scope: !5381)
!5381 = !DILexicalBlockFile(scope: !5367, file: !373, discriminator: 8)
!5382 = !DILocation(line: 515, column: 331, scope: !5367)
!5383 = !DILocation(line: 515, column: 356, scope: !5367)
!5384 = !DILocation(line: 515, column: 260, scope: !5385)
!5385 = !DILexicalBlockFile(scope: !5367, file: !373, discriminator: 9)
!5386 = !DILocation(line: 515, column: 257, scope: !5387)
!5387 = !DILexicalBlockFile(scope: !5388, file: !373, discriminator: 11)
!5388 = !DILexicalBlockFile(scope: !5367, file: !373, discriminator: 10)
!5389 = !DILocation(line: 515, column: 388, scope: !5367)
!5390 = !DILocation(line: 515, column: 411, scope: !5391)
!5391 = !DILexicalBlockFile(scope: !5392, file: !373, discriminator: 12)
!5392 = !DILexicalBlockFile(scope: !5393, file: !373, discriminator: 4)
!5393 = distinct !DILexicalBlock(scope: !708, file: !373, line: 515, column: 395)
!5394 = !DILocation(line: 515, column: 416, scope: !5393)
!5395 = !DILocation(line: 515, column: 425, scope: !5393)
!5396 = !DILocation(line: 515, column: 451, scope: !5393)
!5397 = !DILocation(line: 515, column: 469, scope: !5398)
!5398 = !DILexicalBlockFile(scope: !5393, file: !373, discriminator: 14)
!5399 = !DILocation(line: 515, column: 474, scope: !5393)
!5400 = !DILocation(line: 515, column: 483, scope: !5393)
!5401 = !DILocation(line: 515, column: 395, scope: !708)
!5402 = !DILocation(line: 515, column: 560, scope: !5403)
!5403 = !DILexicalBlockFile(scope: !5404, file: !373, discriminator: 15)
!5404 = !DILexicalBlockFile(scope: !5405, file: !373, discriminator: 13)
!5405 = distinct !DILexicalBlock(scope: !5406, file: !373, line: 515, column: 525)
!5406 = distinct !DILexicalBlock(scope: !5393, file: !373, line: 515, column: 519)
!5407 = !DILocation(line: 515, column: 541, scope: !5405)
!5408 = !DILocation(line: 515, column: 526, scope: !5405)
!5409 = !DILocation(line: 515, column: 525, scope: !5406)
!5410 = !DILocation(line: 515, column: 564, scope: !5411)
!5411 = !DILexicalBlockFile(scope: !5405, file: !373, discriminator: 18)
!5412 = !DILocation(line: 515, column: 623, scope: !5413)
!5413 = !DILexicalBlockFile(scope: !5406, file: !373, discriminator: 17)
!5414 = !DILocation(line: 515, column: 603, scope: !5406)
!5415 = !DILocation(line: 515, column: 628, scope: !5406)
!5416 = !DILocation(line: 515, column: 641, scope: !5406)
!5417 = !DILocation(line: 515, column: 652, scope: !5406)
!5418 = !DILocation(line: 515, column: 588, scope: !5406)
!5419 = !DILocation(line: 515, column: 679, scope: !5420)
!5420 = !DILexicalBlockFile(scope: !5406, file: !373, discriminator: 20)
!5421 = !DILocation(line: 515, column: 659, scope: !5406)
!5422 = !DILocation(line: 515, column: 684, scope: !5406)
!5423 = !DILocation(line: 515, column: 588, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !5406, file: !373, discriminator: 21)
!5425 = !DILocation(line: 515, column: 585, scope: !5426)
!5426 = !DILexicalBlockFile(scope: !5427, file: !373, discriminator: 23)
!5427 = !DILexicalBlockFile(scope: !5406, file: !373, discriminator: 22)
!5428 = !DILocation(line: 515, column: 716, scope: !5406)
!5429 = !DILocation(line: 515, column: 753, scope: !5430)
!5430 = !DILexicalBlockFile(scope: !5431, file: !373, discriminator: 24)
!5431 = !DILexicalBlockFile(scope: !708, file: !373, discriminator: 16)
!5432 = !DILocation(line: 515, column: 756, scope: !708)
!5433 = !DILocation(line: 515, column: 726, scope: !708)
!5434 = !DILocation(line: 515, column: 719, scope: !708)
!5435 = !DILocation(line: 515, column: 760, scope: !5436)
!5436 = !DILexicalBlockFile(scope: !5437, file: !373, discriminator: 25)
!5437 = !DILexicalBlockFile(scope: !5438, file: !373, discriminator: 19)
!5438 = !DILexicalBlockFile(scope: !708, file: !373, discriminator: 7)
!5439 = !DILocation(line: 523, column: 41, scope: !712)
!5440 = !DILocation(line: 523, column: 70, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !712, file: !373, line: 523, column: 54)
!5442 = !DILocation(line: 523, column: 79, scope: !5441)
!5443 = !DILocation(line: 523, column: 88, scope: !5441)
!5444 = !DILocation(line: 523, column: 114, scope: !5441)
!5445 = !DILocation(line: 523, column: 132, scope: !5446)
!5446 = !DILexicalBlockFile(scope: !5441, file: !373, discriminator: 2)
!5447 = !DILocation(line: 523, column: 141, scope: !5441)
!5448 = !DILocation(line: 523, column: 150, scope: !5441)
!5449 = !DILocation(line: 523, column: 54, scope: !712)
!5450 = !DILocation(line: 523, column: 227, scope: !5451)
!5451 = !DILexicalBlockFile(scope: !5452, file: !373, discriminator: 3)
!5452 = !DILexicalBlockFile(scope: !5453, file: !373, discriminator: 1)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !373, line: 523, column: 192)
!5454 = distinct !DILexicalBlock(scope: !5441, file: !373, line: 523, column: 186)
!5455 = !DILocation(line: 523, column: 208, scope: !5453)
!5456 = !DILocation(line: 523, column: 193, scope: !5453)
!5457 = !DILocation(line: 523, column: 192, scope: !5454)
!5458 = !DILocation(line: 523, column: 235, scope: !5459)
!5459 = !DILexicalBlockFile(scope: !5453, file: !373, discriminator: 6)
!5460 = !DILocation(line: 523, column: 298, scope: !5461)
!5461 = !DILexicalBlockFile(scope: !5454, file: !373, discriminator: 5)
!5462 = !DILocation(line: 523, column: 278, scope: !5454)
!5463 = !DILocation(line: 523, column: 307, scope: !5454)
!5464 = !DILocation(line: 523, column: 320, scope: !5454)
!5465 = !DILocation(line: 523, column: 331, scope: !5454)
!5466 = !DILocation(line: 523, column: 263, scope: !5454)
!5467 = !DILocation(line: 523, column: 358, scope: !5468)
!5468 = !DILexicalBlockFile(scope: !5454, file: !373, discriminator: 8)
!5469 = !DILocation(line: 523, column: 338, scope: !5454)
!5470 = !DILocation(line: 523, column: 367, scope: !5454)
!5471 = !DILocation(line: 523, column: 263, scope: !5472)
!5472 = !DILexicalBlockFile(scope: !5454, file: !373, discriminator: 9)
!5473 = !DILocation(line: 523, column: 260, scope: !5474)
!5474 = !DILexicalBlockFile(scope: !5475, file: !373, discriminator: 11)
!5475 = !DILexicalBlockFile(scope: !5454, file: !373, discriminator: 10)
!5476 = !DILocation(line: 523, column: 399, scope: !5454)
!5477 = !DILocation(line: 523, column: 424, scope: !5478)
!5478 = !DILexicalBlockFile(scope: !5479, file: !373, discriminator: 12)
!5479 = !DILexicalBlockFile(scope: !712, file: !373, discriminator: 4)
!5480 = !DILocation(line: 523, column: 409, scope: !712)
!5481 = !DILocation(line: 523, column: 402, scope: !712)
!5482 = !DILocation(line: 523, column: 432, scope: !5483)
!5483 = !DILexicalBlockFile(scope: !5484, file: !373, discriminator: 13)
!5484 = !DILexicalBlockFile(scope: !712, file: !373, discriminator: 7)
!5485 = !DILocation(line: 392, column: 33, scope: !589)
!5486 = !DILocation(line: 394, column: 45, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !589, file: !373, line: 394, column: 9)
!5488 = !DILocation(line: 394, column: 54, scope: !5487)
!5489 = !DILocation(line: 394, column: 67, scope: !5487)
!5490 = !DILocation(line: 394, column: 78, scope: !5487)
!5491 = !DILocation(line: 394, column: 10, scope: !5487)
!5492 = !DILocation(line: 394, column: 105, scope: !5493)
!5493 = !DILexicalBlockFile(scope: !5487, file: !373, discriminator: 1)
!5494 = !DILocation(line: 394, column: 114, scope: !5487)
!5495 = !DILocation(line: 394, column: 10, scope: !5496)
!5496 = !DILexicalBlockFile(scope: !5487, file: !373, discriminator: 2)
!5497 = !DILocation(line: 394, column: 145, scope: !5498)
!5498 = !DILexicalBlockFile(scope: !5499, file: !373, discriminator: 4)
!5499 = !DILexicalBlockFile(scope: !5487, file: !373, discriminator: 3)
!5500 = !DILocation(line: 394, column: 9, scope: !589)
!5501 = !DILocation(line: 395, column: 25, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5487, file: !373, line: 394, column: 167)
!5503 = !DILocation(line: 395, column: 9, scope: !5502)
!5504 = !DILocation(line: 397, column: 9, scope: !5502)
!5505 = !DILocation(line: 399, column: 5, scope: !589)
!5506 = !DILocation(line: 400, column: 1, scope: !589)
!5507 = !DILocation(line: 557, column: 31, scope: !715)
!5508 = !DILocation(line: 559, column: 25, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !715, file: !373, line: 559, column: 9)
!5510 = !DILocation(line: 559, column: 10, scope: !5509)
!5511 = !DILocation(line: 559, column: 9, scope: !715)
!5512 = !DILocation(line: 560, column: 9, scope: !5509)
!5513 = !DILocation(line: 561, column: 62, scope: !715)
!5514 = !DILocation(line: 561, column: 71, scope: !715)
!5515 = !DILocation(line: 561, column: 84, scope: !715)
!5516 = !DILocation(line: 561, column: 95, scope: !715)
!5517 = !DILocation(line: 561, column: 27, scope: !715)
!5518 = !DILocation(line: 561, column: 122, scope: !5519)
!5519 = !DILexicalBlockFile(scope: !715, file: !373, discriminator: 1)
!5520 = !DILocation(line: 561, column: 131, scope: !715)
!5521 = !DILocation(line: 561, column: 27, scope: !5522)
!5522 = !DILexicalBlockFile(scope: !715, file: !373, discriminator: 2)
!5523 = !DILocation(line: 561, column: 12, scope: !5524)
!5524 = !DILexicalBlockFile(scope: !5525, file: !373, discriminator: 4)
!5525 = !DILexicalBlockFile(scope: !715, file: !373, discriminator: 3)
!5526 = !DILocation(line: 561, column: 5, scope: !715)
!5527 = !DILocation(line: 562, column: 1, scope: !715)
!5528 = !DILocation(line: 546, column: 33, scope: !718)
!5529 = !DILocation(line: 546, column: 50, scope: !718)
!5530 = !DILocation(line: 548, column: 25, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !718, file: !373, line: 548, column: 9)
!5532 = !DILocation(line: 548, column: 10, scope: !5531)
!5533 = !DILocation(line: 548, column: 9, scope: !718)
!5534 = !DILocation(line: 549, column: 9, scope: !5531)
!5535 = !DILocation(line: 550, column: 68, scope: !718)
!5536 = !DILocation(line: 550, column: 77, scope: !718)
!5537 = !DILocation(line: 550, column: 90, scope: !718)
!5538 = !DILocation(line: 550, column: 101, scope: !718)
!5539 = !DILocation(line: 550, column: 33, scope: !718)
!5540 = !DILocation(line: 550, column: 128, scope: !5541)
!5541 = !DILexicalBlockFile(scope: !718, file: !373, discriminator: 1)
!5542 = !DILocation(line: 550, column: 137, scope: !718)
!5543 = !DILocation(line: 550, column: 33, scope: !5544)
!5544 = !DILexicalBlockFile(scope: !718, file: !373, discriminator: 2)
!5545 = !DILocation(line: 550, column: 169, scope: !5546)
!5546 = !DILexicalBlockFile(scope: !5547, file: !373, discriminator: 4)
!5547 = !DILexicalBlockFile(scope: !718, file: !373, discriminator: 3)
!5548 = !DILocation(line: 550, column: 12, scope: !718)
!5549 = !DILocation(line: 550, column: 5, scope: !718)
!5550 = !DILocation(line: 551, column: 1, scope: !718)
!5551 = !DILocation(line: 564, column: 43, scope: !724)
!5552 = !DILocation(line: 564, column: 56, scope: !724)
!5553 = !DILocation(line: 564, column: 81, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !724, file: !373, line: 564, column: 65)
!5555 = !DILocation(line: 564, column: 86, scope: !5554)
!5556 = !DILocation(line: 564, column: 95, scope: !5554)
!5557 = !DILocation(line: 564, column: 121, scope: !5554)
!5558 = !DILocation(line: 564, column: 139, scope: !5559)
!5559 = !DILexicalBlockFile(scope: !5554, file: !373, discriminator: 2)
!5560 = !DILocation(line: 564, column: 144, scope: !5554)
!5561 = !DILocation(line: 564, column: 153, scope: !5554)
!5562 = !DILocation(line: 564, column: 65, scope: !724)
!5563 = !DILocation(line: 564, column: 230, scope: !5564)
!5564 = !DILexicalBlockFile(scope: !5565, file: !373, discriminator: 3)
!5565 = !DILexicalBlockFile(scope: !5566, file: !373, discriminator: 1)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !373, line: 564, column: 195)
!5567 = distinct !DILexicalBlock(scope: !5554, file: !373, line: 564, column: 189)
!5568 = !DILocation(line: 564, column: 211, scope: !5566)
!5569 = !DILocation(line: 564, column: 196, scope: !5566)
!5570 = !DILocation(line: 564, column: 195, scope: !5567)
!5571 = !DILocation(line: 564, column: 234, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5566, file: !373, discriminator: 6)
!5573 = !DILocation(line: 564, column: 293, scope: !5574)
!5574 = !DILexicalBlockFile(scope: !5567, file: !373, discriminator: 5)
!5575 = !DILocation(line: 564, column: 273, scope: !5567)
!5576 = !DILocation(line: 564, column: 298, scope: !5567)
!5577 = !DILocation(line: 564, column: 311, scope: !5567)
!5578 = !DILocation(line: 564, column: 322, scope: !5567)
!5579 = !DILocation(line: 564, column: 258, scope: !5567)
!5580 = !DILocation(line: 564, column: 349, scope: !5581)
!5581 = !DILexicalBlockFile(scope: !5567, file: !373, discriminator: 8)
!5582 = !DILocation(line: 564, column: 329, scope: !5567)
!5583 = !DILocation(line: 564, column: 354, scope: !5567)
!5584 = !DILocation(line: 564, column: 258, scope: !5585)
!5585 = !DILexicalBlockFile(scope: !5567, file: !373, discriminator: 9)
!5586 = !DILocation(line: 564, column: 255, scope: !5587)
!5587 = !DILexicalBlockFile(scope: !5588, file: !373, discriminator: 11)
!5588 = !DILexicalBlockFile(scope: !5567, file: !373, discriminator: 10)
!5589 = !DILocation(line: 564, column: 386, scope: !5567)
!5590 = !DILocation(line: 564, column: 409, scope: !5591)
!5591 = !DILexicalBlockFile(scope: !5592, file: !373, discriminator: 12)
!5592 = !DILexicalBlockFile(scope: !5593, file: !373, discriminator: 4)
!5593 = distinct !DILexicalBlock(scope: !724, file: !373, line: 564, column: 393)
!5594 = !DILocation(line: 564, column: 414, scope: !5593)
!5595 = !DILocation(line: 564, column: 423, scope: !5593)
!5596 = !DILocation(line: 564, column: 449, scope: !5593)
!5597 = !DILocation(line: 564, column: 467, scope: !5598)
!5598 = !DILexicalBlockFile(scope: !5593, file: !373, discriminator: 14)
!5599 = !DILocation(line: 564, column: 472, scope: !5593)
!5600 = !DILocation(line: 564, column: 481, scope: !5593)
!5601 = !DILocation(line: 564, column: 393, scope: !724)
!5602 = !DILocation(line: 564, column: 558, scope: !5603)
!5603 = !DILexicalBlockFile(scope: !5604, file: !373, discriminator: 15)
!5604 = !DILexicalBlockFile(scope: !5605, file: !373, discriminator: 13)
!5605 = distinct !DILexicalBlock(scope: !5606, file: !373, line: 564, column: 523)
!5606 = distinct !DILexicalBlock(scope: !5593, file: !373, line: 564, column: 517)
!5607 = !DILocation(line: 564, column: 539, scope: !5605)
!5608 = !DILocation(line: 564, column: 524, scope: !5605)
!5609 = !DILocation(line: 564, column: 523, scope: !5606)
!5610 = !DILocation(line: 564, column: 562, scope: !5611)
!5611 = !DILexicalBlockFile(scope: !5605, file: !373, discriminator: 18)
!5612 = !DILocation(line: 564, column: 621, scope: !5613)
!5613 = !DILexicalBlockFile(scope: !5606, file: !373, discriminator: 17)
!5614 = !DILocation(line: 564, column: 601, scope: !5606)
!5615 = !DILocation(line: 564, column: 626, scope: !5606)
!5616 = !DILocation(line: 564, column: 639, scope: !5606)
!5617 = !DILocation(line: 564, column: 650, scope: !5606)
!5618 = !DILocation(line: 564, column: 586, scope: !5606)
!5619 = !DILocation(line: 564, column: 677, scope: !5620)
!5620 = !DILexicalBlockFile(scope: !5606, file: !373, discriminator: 20)
!5621 = !DILocation(line: 564, column: 657, scope: !5606)
!5622 = !DILocation(line: 564, column: 682, scope: !5606)
!5623 = !DILocation(line: 564, column: 586, scope: !5624)
!5624 = !DILexicalBlockFile(scope: !5606, file: !373, discriminator: 21)
!5625 = !DILocation(line: 564, column: 583, scope: !5626)
!5626 = !DILexicalBlockFile(scope: !5627, file: !373, discriminator: 23)
!5627 = !DILexicalBlockFile(scope: !5606, file: !373, discriminator: 22)
!5628 = !DILocation(line: 564, column: 714, scope: !5606)
!5629 = !DILocation(line: 564, column: 741, scope: !5630)
!5630 = !DILexicalBlockFile(scope: !5631, file: !373, discriminator: 24)
!5631 = !DILexicalBlockFile(scope: !724, file: !373, discriminator: 16)
!5632 = !DILocation(line: 564, column: 744, scope: !724)
!5633 = !DILocation(line: 564, column: 724, scope: !724)
!5634 = !DILocation(line: 564, column: 717, scope: !724)
!5635 = !DILocation(line: 564, column: 748, scope: !5636)
!5636 = !DILexicalBlockFile(scope: !5637, file: !373, discriminator: 25)
!5637 = !DILexicalBlockFile(scope: !5638, file: !373, discriminator: 19)
!5638 = !DILexicalBlockFile(scope: !724, file: !373, discriminator: 7)
!5639 = !DILocation(line: 567, column: 32, scope: !728)
!5640 = !DILocation(line: 567, column: 49, scope: !728)
!5641 = !DILocation(line: 567, column: 64, scope: !728)
!5642 = !DILocation(line: 569, column: 25, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !728, file: !373, line: 569, column: 9)
!5644 = !DILocation(line: 569, column: 10, scope: !5643)
!5645 = !DILocation(line: 569, column: 9, scope: !728)
!5646 = !DILocation(line: 570, column: 9, scope: !5643)
!5647 = !DILocation(line: 572, column: 9, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !728, file: !373, line: 572, column: 9)
!5649 = !DILocation(line: 572, column: 15, scope: !5648)
!5650 = !DILocation(line: 572, column: 9, scope: !728)
!5651 = !DILocation(line: 573, column: 69, scope: !5648)
!5652 = !DILocation(line: 573, column: 78, scope: !5648)
!5653 = !DILocation(line: 573, column: 91, scope: !5648)
!5654 = !DILocation(line: 573, column: 102, scope: !5648)
!5655 = !DILocation(line: 573, column: 34, scope: !5648)
!5656 = !DILocation(line: 573, column: 129, scope: !5657)
!5657 = !DILexicalBlockFile(scope: !5648, file: !373, discriminator: 1)
!5658 = !DILocation(line: 573, column: 138, scope: !5648)
!5659 = !DILocation(line: 573, column: 34, scope: !5660)
!5660 = !DILexicalBlockFile(scope: !5648, file: !373, discriminator: 2)
!5661 = !DILocation(line: 573, column: 170, scope: !5662)
!5662 = !DILexicalBlockFile(scope: !5663, file: !373, discriminator: 4)
!5663 = !DILexicalBlockFile(scope: !5648, file: !373, discriminator: 3)
!5664 = !DILocation(line: 573, column: 16, scope: !5648)
!5665 = !DILocation(line: 573, column: 9, scope: !5648)
!5666 = !DILocation(line: 575, column: 69, scope: !5648)
!5667 = !DILocation(line: 575, column: 78, scope: !5648)
!5668 = !DILocation(line: 575, column: 91, scope: !5648)
!5669 = !DILocation(line: 575, column: 102, scope: !5648)
!5670 = !DILocation(line: 575, column: 34, scope: !5648)
!5671 = !DILocation(line: 575, column: 129, scope: !5657)
!5672 = !DILocation(line: 575, column: 138, scope: !5648)
!5673 = !DILocation(line: 575, column: 34, scope: !5660)
!5674 = !DILocation(line: 575, column: 170, scope: !5662)
!5675 = !DILocation(line: 575, column: 175, scope: !5648)
!5676 = !DILocation(line: 575, column: 16, scope: !5648)
!5677 = !DILocation(line: 575, column: 9, scope: !5648)
!5678 = !DILocation(line: 576, column: 1, scope: !728)
!5679 = !DILocation(line: 597, column: 41, scope: !758)
!5680 = !DILocation(line: 597, column: 132, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !758, file: !373, line: 597, column: 116)
!5682 = !DILocation(line: 597, column: 141, scope: !5681)
!5683 = !DILocation(line: 597, column: 150, scope: !5681)
!5684 = !DILocation(line: 597, column: 176, scope: !5681)
!5685 = !DILocation(line: 597, column: 194, scope: !5686)
!5686 = !DILexicalBlockFile(scope: !5681, file: !373, discriminator: 2)
!5687 = !DILocation(line: 597, column: 203, scope: !5681)
!5688 = !DILocation(line: 597, column: 212, scope: !5681)
!5689 = !DILocation(line: 597, column: 116, scope: !758)
!5690 = !DILocation(line: 597, column: 289, scope: !5691)
!5691 = !DILexicalBlockFile(scope: !5692, file: !373, discriminator: 3)
!5692 = !DILexicalBlockFile(scope: !5693, file: !373, discriminator: 1)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !373, line: 597, column: 254)
!5694 = distinct !DILexicalBlock(scope: !5681, file: !373, line: 597, column: 248)
!5695 = !DILocation(line: 597, column: 270, scope: !5693)
!5696 = !DILocation(line: 597, column: 255, scope: !5693)
!5697 = !DILocation(line: 597, column: 254, scope: !5694)
!5698 = !DILocation(line: 597, column: 297, scope: !5699)
!5699 = !DILexicalBlockFile(scope: !5693, file: !373, discriminator: 6)
!5700 = !DILocation(line: 597, column: 360, scope: !5701)
!5701 = !DILexicalBlockFile(scope: !5694, file: !373, discriminator: 5)
!5702 = !DILocation(line: 597, column: 340, scope: !5694)
!5703 = !DILocation(line: 597, column: 369, scope: !5694)
!5704 = !DILocation(line: 597, column: 382, scope: !5694)
!5705 = !DILocation(line: 597, column: 393, scope: !5694)
!5706 = !DILocation(line: 597, column: 325, scope: !5694)
!5707 = !DILocation(line: 597, column: 420, scope: !5708)
!5708 = !DILexicalBlockFile(scope: !5694, file: !373, discriminator: 8)
!5709 = !DILocation(line: 597, column: 400, scope: !5694)
!5710 = !DILocation(line: 597, column: 429, scope: !5694)
!5711 = !DILocation(line: 597, column: 325, scope: !5712)
!5712 = !DILexicalBlockFile(scope: !5694, file: !373, discriminator: 9)
!5713 = !DILocation(line: 597, column: 322, scope: !5714)
!5714 = !DILexicalBlockFile(scope: !5715, file: !373, discriminator: 11)
!5715 = !DILexicalBlockFile(scope: !5694, file: !373, discriminator: 10)
!5716 = !DILocation(line: 597, column: 461, scope: !5694)
!5717 = !DILocation(line: 597, column: 494, scope: !5718)
!5718 = !DILexicalBlockFile(scope: !5719, file: !373, discriminator: 12)
!5719 = !DILexicalBlockFile(scope: !758, file: !373, discriminator: 4)
!5720 = !DILocation(line: 597, column: 471, scope: !758)
!5721 = !DILocation(line: 597, column: 464, scope: !758)
!5722 = !DILocation(line: 597, column: 523, scope: !5723)
!5723 = !DILexicalBlockFile(scope: !5724, file: !373, discriminator: 13)
!5724 = !DILexicalBlockFile(scope: !758, file: !373, discriminator: 7)
