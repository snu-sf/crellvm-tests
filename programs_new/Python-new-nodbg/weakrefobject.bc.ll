; ModuleID = './weakrefobject.bc'
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
  store %struct._PyWeakReference* %head, %struct._PyWeakReference** %head.addr, align 8
  store i64 0, i64* %count, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %cmp = icmp ne %struct._PyWeakReference* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %count, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %count, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 5
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8
  store %struct._PyWeakReference* %3, %struct._PyWeakReference** %head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %count, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @_PyWeakref_ClearRef(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %callback = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %wr_callback, align 8
  store %struct._object* %1, %struct._object** %callback, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 2
  store %struct._object* null, %struct._object** %wr_callback1, align 8
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  call void @clear_weakref(%struct._PyWeakReference* %3)
  %4 = load %struct._object*, %struct._object** %callback, align 8
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 2
  store %struct._object* %4, %struct._object** %wr_callback2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_weakref(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %callback = alloca %struct._object*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %wr_callback, align 8
  store %struct._object* %1, %struct._object** %callback, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %wr_object, align 8
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  %6 = bitcast %struct._object* %5 to i8*
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object2, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 24
  %10 = load i64, i64* %tp_weaklistoffset, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 %10
  %11 = bitcast i8* %add.ptr to %struct._object**
  %12 = bitcast %struct._object** %11 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %12, %struct._PyWeakReference*** %list, align 8
  %13 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %14 = load %struct._PyWeakReference*, %struct._PyWeakReference** %13, align 8
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %cmp3 = icmp eq %struct._PyWeakReference* %14, %15
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i32 0, i32 5
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8
  %18 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  store %struct._PyWeakReference* %17, %struct._PyWeakReference** %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %19, i32 0, i32 1
  store %struct._object* @_Py_NoneStruct, %struct._object** %wr_object5, align 8
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_prev = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 4
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev, align 8
  %cmp6 = icmp ne %struct._PyWeakReference* %21, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_next8 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %22, i32 0, i32 5
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next8, align 8
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_prev9 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 4
  %25 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev9, align 8
  %wr_next10 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %25, i32 0, i32 5
  store %struct._PyWeakReference* %23, %struct._PyWeakReference** %wr_next10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %26 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_next12 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %26, i32 0, i32 5
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next12, align 8
  %cmp13 = icmp ne %struct._PyWeakReference* %27, null
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.11
  %28 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_prev15 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %28, i32 0, i32 4
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_prev15, align 8
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_next16 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %30, i32 0, i32 5
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next16, align 8
  %wr_prev17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %31, i32 0, i32 4
  store %struct._PyWeakReference* %29, %struct._PyWeakReference** %wr_prev17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end.11
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_prev19 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %32, i32 0, i32 4
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %wr_prev19, align 8
  %33 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_next20 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %33, i32 0, i32 5
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %wr_next20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %entry
  %34 = load %struct._object*, %struct._object** %callback, align 8
  %cmp22 = icmp ne %struct._object* %34, null
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.21
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %35 = load %struct._object*, %struct._object** %callback, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %42 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %42, i32 0, i32 2
  store %struct._object* null, %struct._object** %wr_callback28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @weakref_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._PyWeakReference*
  call void @clear_weakref(%struct._PyWeakReference* %3)
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 38
  %6 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to i8*
  call void %6(i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_repr(%struct._PyWeakReference* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %name = alloca %struct._object*, align 8
  %repr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %4, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %cmp2 = icmp eq %struct._object* %cond, @_Py_NoneStruct
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._PyWeakReference* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %wr_object3, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt4, align 8
  %cmp5 = icmp sgt i64 %8, 0
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %if.end
  %9 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object7 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %wr_object7, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi %struct._object* [ %10, %cond.true.6 ], [ @_Py_NoneStruct, %cond.false.8 ]
  %call11 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %cond10, %struct._Py_Identifier* @weakref_repr.PyId___name__)
  store %struct._object* %call11, %struct._object** %name, align 8
  %11 = load %struct._object*, %struct._object** %name, align 8
  %cmp12 = icmp eq %struct._object* %11, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.9
  %12 = load %struct._object*, %struct._object** %name, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 268435456
  %cmp13 = icmp ne i64 %and, 0
  br i1 %cmp13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false, %cond.end.9
  %15 = load %struct._object*, %struct._object** %name, align 8
  %cmp15 = icmp eq %struct._object* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  call void @PyErr_Clear()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object18 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %wr_object18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt19, align 8
  %cmp20 = icmp sgt i64 %19, 0
  br i1 %cmp20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %if.end.17
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object22 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object22, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.end.17
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi %struct._object* [ %21, %cond.true.21 ], [ @_Py_NoneStruct, %cond.false.23 ]
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %cond25, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 1
  %23 = load i8*, i8** %tp_name, align 8
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object27 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt28, align 8
  %cmp29 = icmp sgt i64 %26, 0
  br i1 %cmp29, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %cond.end.24
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object31 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i32 0, i32 1
  %28 = load %struct._object*, %struct._object** %wr_object31, align 8
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end.24
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi %struct._object* [ %28, %cond.true.30 ], [ @_Py_NoneStruct, %cond.false.32 ]
  %call35 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), %struct._PyWeakReference* %16, i8* %23, %struct._object* %cond34)
  store %struct._object* %call35, %struct._object** %repr, align 8
  br label %if.end.55

if.else:                                          ; preds = %lor.lhs.false
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object36 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %30, i32 0, i32 1
  %31 = load %struct._object*, %struct._object** %wr_object36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt37, align 8
  %cmp38 = icmp sgt i64 %32, 0
  br i1 %cmp38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %if.else
  %33 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object40 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %33, i32 0, i32 1
  %34 = load %struct._object*, %struct._object** %wr_object40, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.else
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi %struct._object* [ %34, %cond.true.39 ], [ @_Py_NoneStruct, %cond.false.41 ]
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %cond43, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_name45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 1
  %36 = load i8*, i8** %tp_name45, align 8
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object46 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %37, i32 0, i32 1
  %38 = load %struct._object*, %struct._object** %wr_object46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt47, align 8
  %cmp48 = icmp sgt i64 %39, 0
  br i1 %cmp48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.end.42
  %40 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object50 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %40, i32 0, i32 1
  %41 = load %struct._object*, %struct._object** %wr_object50, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.42
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi %struct._object* [ %41, %cond.true.49 ], [ @_Py_NoneStruct, %cond.false.51 ]
  %42 = load %struct._object*, %struct._object** %name, align 8
  %call54 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), %struct._PyWeakReference* %29, i8* %36, %struct._object* %cond53, %struct._object* %42)
  store %struct._object* %call54, %struct._object** %repr, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.52, %cond.end.33
  br label %do.body

do.body:                                          ; preds = %if.end.55
  %43 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp56 = icmp ne %struct._object* %44, null
  br i1 %cmp56, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %do.body
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt59, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %ob_refcnt59, align 8
  %cmp60 = icmp ne i64 %dec, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.58
  br label %if.end.64

if.else.62:                                       ; preds = %do.body.58
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %50(%struct._object* %51)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end

do.end:                                           ; preds = %if.end.64
  br label %if.end.65

if.end.65:                                        ; preds = %do.end, %do.body
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %52 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.66, %if.then
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

; Function Attrs: nounwind uwtable
define internal i64 @weakref_hash(%struct._PyWeakReference* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %hash = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 3
  %1 = load i64, i64* %hash, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %hash1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 3
  %3 = load i64, i64* %hash1, align 8
  store i64 %3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %cmp2 = icmp sgt i64 %6, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %8, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %cmp4 = icmp eq %struct._object* %cond, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.6:                                         ; preds = %cond.end
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object7 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %wr_object7, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt8, align 8
  %cmp9 = icmp sgt i64 %12, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %if.end.6
  %13 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %wr_object11, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.end.6
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi %struct._object* [ %14, %cond.true.10 ], [ @_Py_NoneStruct, %cond.false.12 ]
  %call = call i64 @PyObject_Hash(%struct._object* %cond14)
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %hash15 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %15, i32 0, i32 3
  store i64 %call, i64* %hash15, align 8
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %hash16 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i32 0, i32 3
  %17 = load i64, i64* %hash16, align 8
  store i64 %17, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.13, %if.then.5, %if.then
  %18 = load i64, i64* %retval
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_call(%struct._PyWeakReference* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @weakref_call.kwlist, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %6, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %object, align 8
  %7 = load %struct._object*, %struct._object** %object, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt2, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt2, align 8
  %9 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_traverse(%struct._PyWeakReference* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %wr_callback, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %wr_callback1, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gc_clear(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  call void @clear_weakref(%struct._PyWeakReference* %0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_richcompare(%struct._PyWeakReference* %self, %struct._PyWeakReference* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %other.addr = alloca %struct._PyWeakReference*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  store %struct._PyWeakReference* %other, %struct._PyWeakReference** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %3 = bitcast %struct._PyWeakReference* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @_PyWeakref_RefType
  br i1 %cmp2, label %lor.lhs.false.11, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %6 = bitcast %struct._PyWeakReference* %5 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @_PyWeakref_RefType)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %9 = bitcast %struct._PyWeakReference* %8 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %10, @_PyWeakref_ProxyType
  br i1 %cmp7, label %lor.lhs.false.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %12 = bitcast %struct._PyWeakReference* %11 to %struct._object*
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %13, @_PyWeakref_CallableProxyType
  br i1 %cmp10, label %lor.lhs.false.11, label %if.then

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false
  %14 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %15 = bitcast %struct._PyWeakReference* %14 to %struct._object*
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %16, @_PyWeakref_RefType
  br i1 %cmp13, label %if.end, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %17 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %18 = bitcast %struct._PyWeakReference* %17 to %struct._object*
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %call16 = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* @_PyWeakref_RefType)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %21 = bitcast %struct._PyWeakReference* %20 to %struct._object*
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %cmp20 = icmp eq %struct._typeobject* %22, @_PyWeakref_ProxyType
  br i1 %cmp20, label %if.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %24 = bitcast %struct._PyWeakReference* %23 to %struct._object*
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %cmp23 = icmp eq %struct._typeobject* %25, @_PyWeakref_CallableProxyType
  br i1 %cmp23, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.8, %land.lhs.true
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false.11
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i32 0, i32 1
  %28 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %cmp24 = icmp sgt i64 %29, 0
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object25 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %30, i32 0, i32 1
  %31 = load %struct._object*, %struct._object** %wr_object25, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %31, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %cmp26 = icmp eq %struct._object* %cond, @_Py_NoneStruct
  br i1 %cmp26, label %if.then.37, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %cond.end
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %wr_object28 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %32, i32 0, i32 1
  %33 = load %struct._object*, %struct._object** %wr_object28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt29, align 8
  %cmp30 = icmp sgt i64 %34, 0
  br i1 %cmp30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %lor.lhs.false.27
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %wr_object32 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %35, i32 0, i32 1
  %36 = load %struct._object*, %struct._object** %wr_object32, align 8
  br label %cond.end.34

cond.false.33:                                    ; preds = %lor.lhs.false.27
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi %struct._object* [ %36, %cond.true.31 ], [ @_Py_NoneStruct, %cond.false.33 ]
  %cmp36 = icmp eq %struct._object* %cond35, @_Py_NoneStruct
  br i1 %cmp36, label %if.then.37, label %if.end.48

if.then.37:                                       ; preds = %cond.end.34, %cond.end
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %38 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %cmp38 = icmp eq %struct._PyWeakReference* %37, %38
  %conv = zext i1 %cmp38 to i32
  store i32 %conv, i32* %res, align 4
  %39 = load i32, i32* %op.addr, align 4
  %cmp39 = icmp eq i32 %39, 3
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.37
  %40 = load i32, i32* %res, align 4
  %tobool42 = icmp ne i32 %40, 0
  %lnot = xor i1 %tobool42, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %res, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.37
  %41 = load i32, i32* %res, align 4
  %tobool44 = icmp ne i32 %41, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.43
  %42 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc46 = add i64 %42, 1
  store i64 %inc46, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.43
  %43 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc47 = add i64 %43, 1
  store i64 %inc47, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %cond.end.34
  %44 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object49 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %44, i32 0, i32 1
  %45 = load %struct._object*, %struct._object** %wr_object49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt50, align 8
  %cmp51 = icmp sgt i64 %46, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %if.end.48
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object54 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %47, i32 0, i32 1
  %48 = load %struct._object*, %struct._object** %wr_object54, align 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %if.end.48
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi %struct._object* [ %48, %cond.true.53 ], [ @_Py_NoneStruct, %cond.false.55 ]
  %49 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %wr_object58 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %49, i32 0, i32 1
  %50 = load %struct._object*, %struct._object** %wr_object58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt59, align 8
  %cmp60 = icmp sgt i64 %51, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.end.56
  %52 = load %struct._PyWeakReference*, %struct._PyWeakReference** %other.addr, align 8
  %wr_object63 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %52, i32 0, i32 1
  %53 = load %struct._object*, %struct._object** %wr_object63, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end.56
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi %struct._object* [ %53, %cond.true.62 ], [ @_Py_NoneStruct, %cond.false.64 ]
  %54 = load i32, i32* %op.addr, align 4
  %call67 = call %struct._object* @PyObject_RichCompare(%struct._object* %cond57, %struct._object* %cond66, i32 %54)
  store %struct._object* %call67, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.65, %if.else, %if.then.45, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal i32 @weakref___init__(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 @parse_weakref_init_args(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._object* %0, %struct._object* %1, %struct._object** %tmp, %struct._object** %tmp)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

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
  %prev = alloca %struct._PyWeakReference*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %self, align 8
  store %struct._object* null, %struct._object** %callback, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 @parse_weakref_init_args(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* %0, %struct._object* %1, %struct._object** %ob, %struct._object** %callback)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 24
  %4 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %ob, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %callback, align 8
  %cmp4 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %callback, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct._object*, %struct._object** %ob, align 8
  %11 = bitcast %struct._object* %10 to i8*
  %12 = load %struct._object*, %struct._object** %ob, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_weaklistoffset8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 24
  %14 = load i64, i64* %tp_weaklistoffset8, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %14
  %15 = bitcast i8* %add.ptr to %struct._object**
  %16 = bitcast %struct._object** %15 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %16, %struct._PyWeakReference*** %list, align 8
  %17 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %17, align 8
  call void @get_basic_refs(%struct._PyWeakReference* %18, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy)
  %19 = load %struct._object*, %struct._object** %callback, align 8
  %cmp9 = icmp eq %struct._object* %19, null
  br i1 %cmp9, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.6
  %20 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp10 = icmp eq %struct._typeobject* %20, @_PyWeakref_RefType
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %land.lhs.true
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  %cmp12 = icmp ne %struct._PyWeakReference* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  %22 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  %23 = bitcast %struct._PyWeakReference* %22 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %25 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  %26 = bitcast %struct._PyWeakReference* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end.6
  %27 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 36
  %28 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %29 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call16 = call %struct._object* %28(%struct._typeobject* %29, i64 0)
  %30 = bitcast %struct._object* %call16 to %struct._PyWeakReference*
  store %struct._PyWeakReference* %30, %struct._PyWeakReference** %self, align 8
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8
  %cmp17 = icmp ne %struct._PyWeakReference* %31, null
  br i1 %cmp17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %if.end.15
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8
  %33 = load %struct._object*, %struct._object** %ob, align 8
  %34 = load %struct._object*, %struct._object** %callback, align 8
  call void @init_weakref(%struct._PyWeakReference* %32, %struct._object* %33, %struct._object* %34)
  %35 = load %struct._object*, %struct._object** %callback, align 8
  %cmp19 = icmp eq %struct._object* %35, null
  br i1 %cmp19, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %if.then.18
  %36 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp21 = icmp eq %struct._typeobject* %36, @_PyWeakref_RefType
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true.20
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8
  %38 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  call void @insert_head(%struct._PyWeakReference* %37, %struct._PyWeakReference** %38)
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true.20, %if.then.18
  %39 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %40 = load %struct._PyWeakReference*, %struct._PyWeakReference** %39, align 8
  call void @get_basic_refs(%struct._PyWeakReference* %40, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy)
  %41 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  %cmp23 = icmp eq %struct._PyWeakReference* %41, null
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %42 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PyWeakReference* [ %42, %cond.true ], [ %43, %cond.false ]
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %prev, align 8
  %44 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8
  %cmp24 = icmp eq %struct._PyWeakReference* %44, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %cond.end
  %45 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8
  %46 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  call void @insert_head(%struct._PyWeakReference* %45, %struct._PyWeakReference** %46)
  br label %if.end.27

if.else.26:                                       ; preds = %cond.end
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8
  %48 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8
  call void @insert_after(%struct._PyWeakReference* %47, %struct._PyWeakReference* %48)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.15
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  %49 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self, align 8
  %50 = bitcast %struct._PyWeakReference* %49 to %struct._object*
  store %struct._object* %50, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.13, %if.then.1
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @proxy_dealloc(%struct._PyWeakReference* %self) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %wr_callback, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %3 = bitcast %struct._PyWeakReference* %2 to %struct._object*
  %4 = bitcast %struct._object* %3 to i8*
  call void @PyObject_GC_UnTrack(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  call void @clear_weakref(%struct._PyWeakReference* %5)
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %7 = bitcast %struct._PyWeakReference* %6 to i8*
  call void @PyObject_GC_Del(i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_repr(%struct._PyWeakReference* %proxy) #0 {
entry:
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %cond, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %wr_object2, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt3, align 8
  %cmp4 = icmp sgt i64 %10, 0
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object6 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi %struct._object* [ %12, %cond.true.5 ], [ @_Py_NoneStruct, %cond.false.7 ]
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), %struct._PyWeakReference* %0, i8* %7, %struct._object* %cond9)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_str(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyObject_Str(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_getattr(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyObject_GetAttr(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_setattr(%struct._PyWeakReference* %proxy, %struct._object* %name, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %name.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %7 = load %struct._object*, %struct._object** %value.addr, align 8
  %call2 = call i32 @PyObject_SetAttr(%struct._object* %cond, %struct._object* %6, %struct._object* %7)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_richcompare(%struct._object* %proxy, %struct._object* %v, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %v.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %27 = load %struct._object*, %struct._object** %v.addr, align 8
  %28 = load i32, i32* %op.addr, align 4
  %call26 = call %struct._object* @PyObject_RichCompare(%struct._object* %26, %struct._object* %27, i32 %28)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iter(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %call2 = call %struct._object* @PyObject_GetIter(%struct._object* %cond)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iternext(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %call2 = call %struct._object* @PyIter_Next(%struct._object* %cond)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_call(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %v.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp26 = icmp ne %struct._object* %26, null
  br i1 %cmp26, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %cmp29 = icmp eq %struct._typeobject* %28, @_PyWeakref_ProxyType
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %cmp32 = icmp eq %struct._typeobject* %30, @_PyWeakref_CallableProxyType
  br i1 %cmp32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %31 = load %struct._object*, %struct._object** %w.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct._PyWeakReference*
  %call34 = call i32 @proxy_checkref(%struct._PyWeakReference* %32)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.33
  %33 = load %struct._object*, %struct._object** %w.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct._PyWeakReference*
  %wr_object38 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %wr_object38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt39, align 8
  %cmp40 = icmp sgt i64 %36, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %w.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct._PyWeakReference*
  %wr_object42 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %38, i32 0, i32 1
  %39 = load %struct._object*, %struct._object** %wr_object42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.end.37
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._object* [ %39, %cond.true.41 ], [ @_Py_NoneStruct, %cond.false.43 ]
  store %struct._object* %cond45, %struct._object** %w.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.44, %lor.lhs.false.30
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.25
  %40 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %41 = load %struct._object*, %struct._object** %v.addr, align 8
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  %call48 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %40, %struct._object* %41, %struct._object* %42)
  store %struct._object* %call48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.36, %if.then.15, %if.then.3
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %prev = alloca %struct._PyWeakReference*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %result, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 24
  %2 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %ob.addr, align 8
  %8 = bitcast %struct._object* %7 to i8*
  %9 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_weaklistoffset3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 24
  %11 = load i64, i64* %tp_weaklistoffset3, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %11
  %12 = bitcast i8* %add.ptr to %struct._object**
  %13 = bitcast %struct._object** %12 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %13, %struct._PyWeakReference*** %list, align 8
  %14 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %14, align 8
  call void @get_basic_refs(%struct._PyWeakReference* %15, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy)
  %16 = load %struct._object*, %struct._object** %callback.addr, align 8
  %cmp4 = icmp eq %struct._object* %16, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %callback.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %17 = load %struct._object*, %struct._object** %callback.addr, align 8
  %cmp7 = icmp eq %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  store %struct._PyWeakReference* %18, %struct._PyWeakReference** %result, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %cmp10 = icmp ne %struct._PyWeakReference* %19, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %21 = bitcast %struct._PyWeakReference* %20 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.end.9
  %23 = load %struct._object*, %struct._object** %ob.addr, align 8
  %24 = load %struct._object*, %struct._object** %callback.addr, align 8
  %call12 = call %struct._PyWeakReference* @new_weakref(%struct._object* %23, %struct._object* %24)
  store %struct._PyWeakReference* %call12, %struct._PyWeakReference** %result, align 8
  %25 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %cmp13 = icmp ne %struct._PyWeakReference* %25, null
  br i1 %cmp13, label %if.then.14, label %if.end.36

if.then.14:                                       ; preds = %if.else
  %26 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %26, align 8
  call void @get_basic_refs(%struct._PyWeakReference* %27, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy)
  %28 = load %struct._object*, %struct._object** %callback.addr, align 8
  %cmp15 = icmp eq %struct._object* %28, null
  br i1 %cmp15, label %if.then.16, label %if.else.29

if.then.16:                                       ; preds = %if.then.14
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  %cmp17 = icmp eq %struct._PyWeakReference* %29, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.then.16
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %31 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  call void @insert_head(%struct._PyWeakReference* %30, %struct._PyWeakReference** %31)
  br label %if.end.28

if.else.19:                                       ; preds = %if.then.16
  br label %do.body

do.body:                                          ; preds = %if.else.19
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %33 = bitcast %struct._PyWeakReference* %32 to %struct._object*
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt20, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt20, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  br label %if.end.25

if.else.23:                                       ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %40 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  %41 = bitcast %struct._PyWeakReference* %40 to %struct._object*
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt26, align 8
  %inc27 = add i64 %42, 1
  store i64 %inc27, i64* %ob_refcnt26, align 8
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  store %struct._PyWeakReference* %43, %struct._PyWeakReference** %result, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %if.then.18
  br label %if.end.35

if.else.29:                                       ; preds = %if.then.14
  %44 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  %cmp30 = icmp eq %struct._PyWeakReference* %44, null
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.29
  %45 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.29
  %46 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PyWeakReference* [ %45, %cond.true ], [ %46, %cond.false ]
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %prev, align 8
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8
  %cmp31 = icmp eq %struct._PyWeakReference* %47, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %cond.end
  %48 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %49 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  call void @insert_head(%struct._PyWeakReference* %48, %struct._PyWeakReference** %49)
  br label %if.end.34

if.else.33:                                       ; preds = %cond.end
  %50 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %51 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8
  call void @insert_after(%struct._PyWeakReference* %50, %struct._PyWeakReference* %51)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.11
  %52 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %53 = bitcast %struct._PyWeakReference* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @get_basic_refs(%struct._PyWeakReference* %head, %struct._PyWeakReference** %refp, %struct._PyWeakReference** %proxyp) #0 {
entry:
  %head.addr = alloca %struct._PyWeakReference*, align 8
  %refp.addr = alloca %struct._PyWeakReference**, align 8
  %proxyp.addr = alloca %struct._PyWeakReference**, align 8
  store %struct._PyWeakReference* %head, %struct._PyWeakReference** %head.addr, align 8
  store %struct._PyWeakReference** %refp, %struct._PyWeakReference*** %refp.addr, align 8
  store %struct._PyWeakReference** %proxyp, %struct._PyWeakReference*** %proxyp.addr, align 8
  %0 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %refp.addr, align 8
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %0, align 8
  %1 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %proxyp.addr, align 8
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %1, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %cmp = icmp ne %struct._PyWeakReference* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %wr_callback, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %6 = bitcast %struct._PyWeakReference* %5 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %7, @_PyWeakref_RefType
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %9 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %refp.addr, align 8
  store %struct._PyWeakReference* %8, %struct._PyWeakReference** %9, align 8
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 5
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8
  store %struct._PyWeakReference* %11, %struct._PyWeakReference** %head.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %cmp4 = icmp ne %struct._PyWeakReference* %12, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.14

land.lhs.true.5:                                  ; preds = %if.end
  %13 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %wr_callback6 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %wr_callback6, align 8
  %cmp7 = icmp eq %struct._object* %14, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.14

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %16 = bitcast %struct._PyWeakReference* %15 to %struct._object*
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %17, @_PyWeakref_ProxyType
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %19 = bitcast %struct._PyWeakReference* %18 to %struct._object*
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %cmp12 = icmp eq %struct._typeobject* %20, @_PyWeakref_CallableProxyType
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true.8
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %head.addr, align 8
  %22 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %proxyp.addr, align 8
  store %struct._PyWeakReference* %21, %struct._PyWeakReference** %22, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false, %land.lhs.true.5, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._PyWeakReference* @new_weakref(%struct._object* %ob, %struct._object* %callback) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %result = alloca %struct._PyWeakReference*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @_PyWeakref_RefType)
  %0 = bitcast %struct._object* %call to %struct._PyWeakReference*
  store %struct._PyWeakReference* %0, %struct._PyWeakReference** %result, align 8
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %tobool = icmp ne %struct._PyWeakReference* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %3 = load %struct._object*, %struct._object** %ob.addr, align 8
  %4 = load %struct._object*, %struct._object** %callback.addr, align 8
  call void @init_weakref(%struct._PyWeakReference* %2, %struct._object* %3, %struct._object* %4)
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %6 = bitcast %struct._PyWeakReference* %5 to i8*
  call void @PyObject_GC_Track(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  ret %struct._PyWeakReference* %7
}

; Function Attrs: nounwind uwtable
define internal void @insert_head(%struct._PyWeakReference* %newref, %struct._PyWeakReference** %list) #0 {
entry:
  %newref.addr = alloca %struct._PyWeakReference*, align 8
  %list.addr = alloca %struct._PyWeakReference**, align 8
  %next = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %newref, %struct._PyWeakReference** %newref.addr, align 8
  store %struct._PyWeakReference** %list, %struct._PyWeakReference*** %list.addr, align 8
  %0 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list.addr, align 8
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %0, align 8
  store %struct._PyWeakReference* %1, %struct._PyWeakReference** %next, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %wr_prev = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 4
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %wr_prev, align 8
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 5
  store %struct._PyWeakReference* %3, %struct._PyWeakReference** %wr_next, align 8
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8
  %cmp = icmp ne %struct._PyWeakReference* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8
  %wr_prev1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 4
  store %struct._PyWeakReference* %6, %struct._PyWeakReference** %wr_prev1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %9 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list.addr, align 8
  store %struct._PyWeakReference* %8, %struct._PyWeakReference** %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insert_after(%struct._PyWeakReference* %newref, %struct._PyWeakReference* %prev) #0 {
entry:
  %newref.addr = alloca %struct._PyWeakReference*, align 8
  %prev.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %newref, %struct._PyWeakReference** %newref.addr, align 8
  store %struct._PyWeakReference* %prev, %struct._PyWeakReference** %prev.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %wr_prev = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 4
  store %struct._PyWeakReference* %0, %struct._PyWeakReference** %wr_prev, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 5
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %wr_next1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 5
  store %struct._PyWeakReference* %3, %struct._PyWeakReference** %wr_next1, align 8
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8
  %wr_next2 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 5
  %6 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next2, align 8
  %cmp = icmp ne %struct._PyWeakReference* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8
  %wr_next3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 5
  %9 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next3, align 8
  %wr_prev4 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %9, i32 0, i32 4
  store %struct._PyWeakReference* %7, %struct._PyWeakReference** %wr_prev4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._PyWeakReference*, %struct._PyWeakReference** %newref.addr, align 8
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev.addr, align 8
  %wr_next5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 5
  store %struct._PyWeakReference* %10, %struct._PyWeakReference** %wr_next5, align 8
  ret void
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
  %prev = alloca %struct._PyWeakReference*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  store %struct._PyWeakReference* null, %struct._PyWeakReference** %result, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 24
  %2 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %ob.addr, align 8
  %8 = bitcast %struct._object* %7 to i8*
  %9 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_weaklistoffset3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 24
  %11 = load i64, i64* %tp_weaklistoffset3, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %11
  %12 = bitcast i8* %add.ptr to %struct._object**
  %13 = bitcast %struct._object** %12 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %13, %struct._PyWeakReference*** %list, align 8
  %14 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %14, align 8
  call void @get_basic_refs(%struct._PyWeakReference* %15, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy)
  %16 = load %struct._object*, %struct._object** %callback.addr, align 8
  %cmp4 = icmp eq %struct._object* %16, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %callback.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %17 = load %struct._object*, %struct._object** %callback.addr, align 8
  %cmp7 = icmp eq %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  store %struct._PyWeakReference* %18, %struct._PyWeakReference** %result, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %cmp10 = icmp ne %struct._PyWeakReference* %19, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %20 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %21 = bitcast %struct._PyWeakReference* %20 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.end.9
  %23 = load %struct._object*, %struct._object** %ob.addr, align 8
  %24 = load %struct._object*, %struct._object** %callback.addr, align 8
  %call12 = call %struct._PyWeakReference* @new_weakref(%struct._object* %23, %struct._object* %24)
  store %struct._PyWeakReference* %call12, %struct._PyWeakReference** %result, align 8
  %25 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %cmp13 = icmp ne %struct._PyWeakReference* %25, null
  br i1 %cmp13, label %if.then.14, label %if.end.41

if.then.14:                                       ; preds = %if.else
  %26 = load %struct._object*, %struct._object** %ob.addr, align 8
  %call15 = call i32 @PyCallable_Check(%struct._object* %26)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.14
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %28 = bitcast %struct._PyWeakReference* %27 to %struct._object*
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  store %struct._typeobject* @_PyWeakref_CallableProxyType, %struct._typeobject** %ob_type17, align 8
  br label %if.end.20

if.else.18:                                       ; preds = %if.then.14
  %29 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %30 = bitcast %struct._PyWeakReference* %29 to %struct._object*
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  store %struct._typeobject* @_PyWeakref_ProxyType, %struct._typeobject** %ob_type19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.16
  %31 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %32 = load %struct._PyWeakReference*, %struct._PyWeakReference** %31, align 8
  call void @get_basic_refs(%struct._PyWeakReference* %32, %struct._PyWeakReference** %ref, %struct._PyWeakReference** %proxy)
  %33 = load %struct._object*, %struct._object** %callback.addr, align 8
  %cmp21 = icmp eq %struct._object* %33, null
  br i1 %cmp21, label %if.then.22, label %if.else.34

if.then.22:                                       ; preds = %if.end.20
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  %cmp23 = icmp ne %struct._PyWeakReference* %34, null
  br i1 %cmp23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %if.then.22
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %35 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %36 = bitcast %struct._PyWeakReference* %35 to %struct._object*
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt25, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt25, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body
  br label %if.end.30

if.else.28:                                       ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.30
  %43 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  store %struct._PyWeakReference* %43, %struct._PyWeakReference** %result, align 8
  %44 = bitcast %struct._PyWeakReference* %43 to %struct._object*
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt31, align 8
  %inc32 = add i64 %45, 1
  store i64 %inc32, i64* %ob_refcnt31, align 8
  br label %skip_insert

if.end.33:                                        ; preds = %if.then.22
  %46 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  store %struct._PyWeakReference* %46, %struct._PyWeakReference** %prev, align 8
  br label %if.end.36

if.else.34:                                       ; preds = %if.end.20
  %47 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  %cmp35 = icmp eq %struct._PyWeakReference* %47, null
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.34
  %48 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.34
  %49 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PyWeakReference* [ %48, %cond.true ], [ %49, %cond.false ]
  store %struct._PyWeakReference* %cond, %struct._PyWeakReference** %prev, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end, %if.end.33
  %50 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8
  %cmp37 = icmp eq %struct._PyWeakReference* %50, null
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.36
  %51 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %52 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  call void @insert_head(%struct._PyWeakReference* %51, %struct._PyWeakReference** %52)
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.36
  %53 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %54 = load %struct._PyWeakReference*, %struct._PyWeakReference** %prev, align 8
  call void @insert_after(%struct._PyWeakReference* %53, %struct._PyWeakReference* %54)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %skip_insert

skip_insert:                                      ; preds = %if.end.40, %do.end
  br label %if.end.41

if.end.41:                                        ; preds = %skip_insert, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.11
  %55 = load %struct._PyWeakReference*, %struct._PyWeakReference** %result, align 8
  %56 = bitcast %struct._PyWeakReference* %55 to %struct._object*
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

declare i32 @PyCallable_Check(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyWeakref_GetObject(%struct._object* %ref) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ref.addr = alloca %struct._object*, align 8
  store %struct._object* %ref, %struct._object** %ref.addr, align 8
  %0 = load %struct._object*, %struct._object** %ref.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %ref.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @_PyWeakref_RefType
  br i1 %cmp1, label %if.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %ref.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @_PyWeakref_RefType)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %5 = load %struct._object*, %struct._object** %ref.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %cmp6 = icmp eq %struct._typeobject* %6, @_PyWeakref_ProxyType
  br i1 %cmp6, label %if.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %7 = load %struct._object*, %struct._object** %ref.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %cmp9 = icmp eq %struct._typeobject* %8, @_PyWeakref_CallableProxyType
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.7, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 856)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %ref.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %cmp10 = icmp sgt i64 %12, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %ref.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct._PyWeakReference*
  %wr_object11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %wr_object11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %15, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @PyObject_ClearWeakRefs(%struct._object* %object) #0 {
entry:
  %object.addr = alloca %struct._object*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
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
  %callback75 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 24
  %3 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp1 = icmp sgt i64 %3, 0
  br i1 %cmp1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 890)
  br label %if.end.104

if.end:                                           ; preds = %lor.lhs.false.2
  %6 = load %struct._object*, %struct._object** %object.addr, align 8
  %7 = bitcast %struct._object* %6 to i8*
  %8 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_weaklistoffset5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 24
  %10 = load i64, i64* %tp_weaklistoffset5, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 %10
  %11 = bitcast i8* %add.ptr to %struct._object**
  %12 = bitcast %struct._object** %11 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %12, %struct._PyWeakReference*** %list, align 8
  %13 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %14 = load %struct._PyWeakReference*, %struct._PyWeakReference** %13, align 8
  %cmp6 = icmp ne %struct._PyWeakReference* %14, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %16 = load %struct._PyWeakReference*, %struct._PyWeakReference** %15, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %16, i32 0, i32 2
  %17 = load %struct._object*, %struct._object** %wr_callback, align 8
  %cmp7 = icmp eq %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %land.lhs.true
  %18 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %19 = load %struct._PyWeakReference*, %struct._PyWeakReference** %18, align 8
  call void @clear_weakref(%struct._PyWeakReference* %19)
  %20 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %21 = load %struct._PyWeakReference*, %struct._PyWeakReference** %20, align 8
  %cmp9 = icmp ne %struct._PyWeakReference* %21, null
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %if.then.8
  %22 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %23 = load %struct._PyWeakReference*, %struct._PyWeakReference** %22, align 8
  %wr_callback11 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %23, i32 0, i32 2
  %24 = load %struct._object*, %struct._object** %wr_callback11, align 8
  %cmp12 = icmp eq %struct._object* %24, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.10
  %25 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %26 = load %struct._PyWeakReference*, %struct._PyWeakReference** %25, align 8
  call void @clear_weakref(%struct._PyWeakReference* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.10, %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end
  %27 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %28 = load %struct._PyWeakReference*, %struct._PyWeakReference** %27, align 8
  %cmp16 = icmp ne %struct._PyWeakReference* %28, null
  br i1 %cmp16, label %if.then.17, label %if.end.104

if.then.17:                                       ; preds = %if.end.15
  %29 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %30 = load %struct._PyWeakReference*, %struct._PyWeakReference** %29, align 8
  store %struct._PyWeakReference* %30, %struct._PyWeakReference** %current, align 8
  %31 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %call = call i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %31)
  store i64 %call, i64* %count, align 8
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call18, null
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %restore_error, align 4
  %32 = load i32, i32* %restore_error, align 4
  %tobool19 = icmp ne i32 %32, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  call void @PyErr_Fetch(%struct._object** %err_type, %struct._object** %err_value, %struct._object** %err_tb)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  %33 = load i64, i64* %count, align 8
  %cmp22 = icmp eq i64 %33, 1
  br i1 %cmp22, label %if.then.23, label %if.else.38

if.then.23:                                       ; preds = %if.end.21
  %34 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_callback24 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 2
  %35 = load %struct._object*, %struct._object** %wr_callback24, align 8
  store %struct._object* %35, %struct._object** %callback, align 8
  %36 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_callback25 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %36, i32 0, i32 2
  store %struct._object* null, %struct._object** %wr_callback25, align 8
  %37 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  call void @clear_weakref(%struct._PyWeakReference* %37)
  %38 = load %struct._object*, %struct._object** %callback, align 8
  %cmp26 = icmp ne %struct._object* %38, null
  br i1 %cmp26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.then.23
  %39 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %40 = bitcast %struct._PyWeakReference* %39 to %struct._object*
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt28, align 8
  %cmp29 = icmp sgt i64 %41, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  %42 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %43 = load %struct._object*, %struct._object** %callback, align 8
  call void @handle_callback(%struct._PyWeakReference* %42, %struct._object* %43)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.27
  br label %do.body

do.body:                                          ; preds = %if.end.31
  %44 = load %struct._object*, %struct._object** %callback, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt32, align 8
  %dec = add i64 %46, -1
  store i64 %dec, i64* %ob_refcnt32, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.body
  br label %if.end.36

if.else:                                          ; preds = %do.body
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %if.then.23
  br label %if.end.100

if.else.38:                                       ; preds = %if.end.21
  store i64 0, i64* %i, align 8
  %51 = load i64, i64* %count, align 8
  %mul = mul i64 %51, 2
  %call39 = call %struct._object* @PyTuple_New(i64 %mul)
  store %struct._object* %call39, %struct._object** %tuple, align 8
  %52 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp40 = icmp eq %struct._object* %52, null
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.else.38
  %53 = load i32, i32* %restore_error, align 4
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.41
  call void @PyErr_Fetch(%struct._object** %err_type, %struct._object** %err_value, %struct._object** %err_tb)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.41
  br label %if.end.104

if.end.45:                                        ; preds = %if.else.38
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.45
  %54 = load i64, i64* %i, align 8
  %55 = load i64, i64* %count, align 8
  %cmp46 = icmp slt i64 %54, %55
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %56, i32 0, i32 5
  %57 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8
  store %struct._PyWeakReference* %57, %struct._PyWeakReference** %next, align 8
  %58 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %59 = bitcast %struct._PyWeakReference* %58 to %struct._object*
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt47, align 8
  %cmp48 = icmp sgt i64 %60, 0
  br i1 %cmp48, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %for.body
  %61 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %62 = bitcast %struct._PyWeakReference* %61 to %struct._object*
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt50, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %ob_refcnt50, align 8
  %64 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %65 = bitcast %struct._PyWeakReference* %64 to %struct._object*
  %66 = load i64, i64* %i, align 8
  %mul51 = mul i64 %66, 2
  %67 = load %struct._object*, %struct._object** %tuple, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %68, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %mul51
  store %struct._object* %65, %struct._object** %arrayidx, align 8
  %69 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_callback52 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %69, i32 0, i32 2
  %70 = load %struct._object*, %struct._object** %wr_callback52, align 8
  %71 = load i64, i64* %i, align 8
  %mul53 = mul i64 %71, 2
  %add = add i64 %mul53, 1
  %72 = load %struct._object*, %struct._object** %tuple, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyTupleObject*
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %73, i32 0, i32 1
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 %add
  store %struct._object* %70, %struct._object** %arrayidx55, align 8
  br label %if.end.69

if.else.56:                                       ; preds = %for.body
  br label %do.body.57

do.body.57:                                       ; preds = %if.else.56
  %74 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_callback59 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %74, i32 0, i32 2
  %75 = load %struct._object*, %struct._object** %wr_callback59, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp58, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %77, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.57
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %80(%struct._object* %81)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %if.then.49
  %82 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_callback70 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %82, i32 0, i32 2
  store %struct._object* null, %struct._object** %wr_callback70, align 8
  %83 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  call void @clear_weakref(%struct._PyWeakReference* %83)
  %84 = load %struct._PyWeakReference*, %struct._PyWeakReference** %next, align 8
  store %struct._PyWeakReference* %84, %struct._PyWeakReference** %current, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %85 = load i64, i64* %i, align 8
  %inc71 = add i64 %85, 1
  store i64 %inc71, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.86, %for.end
  %86 = load i64, i64* %i, align 8
  %87 = load i64, i64* %count, align 8
  %cmp73 = icmp slt i64 %86, %87
  br i1 %cmp73, label %for.body.74, label %for.end.88

for.body.74:                                      ; preds = %for.cond.72
  %88 = load i64, i64* %i, align 8
  %mul76 = mul i64 %88, 2
  %add77 = add i64 %mul76, 1
  %89 = load %struct._object*, %struct._object** %tuple, align 8
  %90 = bitcast %struct._object* %89 to %struct.PyTupleObject*
  %ob_item78 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %90, i32 0, i32 1
  %arrayidx79 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item78, i32 0, i64 %add77
  %91 = load %struct._object*, %struct._object** %arrayidx79, align 8
  store %struct._object* %91, %struct._object** %callback75, align 8
  %92 = load %struct._object*, %struct._object** %callback75, align 8
  %cmp80 = icmp ne %struct._object* %92, null
  br i1 %cmp80, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %for.body.74
  %93 = load i64, i64* %i, align 8
  %mul82 = mul i64 %93, 2
  %94 = load %struct._object*, %struct._object** %tuple, align 8
  %95 = bitcast %struct._object* %94 to %struct.PyTupleObject*
  %ob_item83 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %95, i32 0, i32 1
  %arrayidx84 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item83, i32 0, i64 %mul82
  %96 = load %struct._object*, %struct._object** %arrayidx84, align 8
  store %struct._object* %96, %struct._object** %item, align 8
  %97 = load %struct._object*, %struct._object** %item, align 8
  %98 = bitcast %struct._object* %97 to %struct._PyWeakReference*
  %99 = load %struct._object*, %struct._object** %callback75, align 8
  call void @handle_callback(%struct._PyWeakReference* %98, %struct._object* %99)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %for.body.74
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %100 = load i64, i64* %i, align 8
  %inc87 = add i64 %100, 1
  store i64 %inc87, i64* %i, align 8
  br label %for.cond.72

for.end.88:                                       ; preds = %for.cond.72
  br label %do.body.89

do.body.89:                                       ; preds = %for.end.88
  %101 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp90, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %103, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98

if.else.95:                                       ; preds = %do.body.89
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %106(%struct._object* %107)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %if.end.37
  %108 = load i32, i32* %restore_error, align 4
  %tobool101 = icmp ne i32 %108, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.100
  %109 = load %struct._object*, %struct._object** %err_type, align 8
  %110 = load %struct._object*, %struct._object** %err_value, align 8
  %111 = load %struct._object*, %struct._object** %err_tb, align 8
  call void @PyErr_Restore(%struct._object* %109, %struct._object* %110, %struct._object* %111)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.then, %if.end.44, %if.end.103, %if.end.15
  ret void
}

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal void @handle_callback(%struct._PyWeakReference* %ref, %struct._object* %callback) #0 {
entry:
  %ref.addr = alloca %struct._PyWeakReference*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %cbresult = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %ref, %struct._PyWeakReference** %ref.addr, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  %0 = load %struct._object*, %struct._object** %callback.addr, align 8
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %ref.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %0, %struct._PyWeakReference* %1, i8* null)
  store %struct._object* %call, %struct._object** %cbresult, align 8
  %2 = load %struct._object*, %struct._object** %cbresult, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %callback.addr, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %3)
  br label %if.end.4

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %cbresult, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else.3:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %if.then
  ret void
}

declare %struct._object* @PyTuple_New(i64) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare void @PyErr_Clear() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_weakref_init_args(i8* %funcname, %struct._object* %args, %struct._object* %kwargs, %struct._object** %obp, %struct._object** %callbackp) #0 {
entry:
  %funcname.addr = alloca i8*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %obp.addr = alloca %struct._object**, align 8
  %callbackp.addr = alloca %struct._object**, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object** %obp, %struct._object*** %obp.addr, align 8
  store %struct._object** %callbackp, %struct._object*** %callbackp.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8*, i8** %funcname.addr, align 8
  %2 = load %struct._object**, %struct._object*** %obp.addr, align 8
  %3 = load %struct._object**, %struct._object*** %callbackp.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* %1, i64 1, i64 2, %struct._object** %2, %struct._object** %3)
  ret i32 %call
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal void @init_weakref(%struct._PyWeakReference* %self, %struct._object* %ob, %struct._object* %callback) #0 {
entry:
  %self.addr = alloca %struct._PyWeakReference*, align 8
  %ob.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %self, %struct._PyWeakReference** %self.addr, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %hash = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 3
  store i64 -1, i64* %hash, align 8
  %1 = load %struct._object*, %struct._object** %ob.addr, align 8
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1
  store %struct._object* %1, %struct._object** %wr_object, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %callback.addr, align 8
  store %struct._object* %3, %struct._object** %_py_xincref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %callback.addr, align 8
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 2
  store %struct._object* %7, %struct._object** %wr_callback, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_add(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Add(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_sub(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Subtract(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_mul(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Multiply(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_mod(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Remainder(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_divmod(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Divmod(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_pow(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %v.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp26 = icmp ne %struct._object* %26, null
  br i1 %cmp26, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %cmp29 = icmp eq %struct._typeobject* %28, @_PyWeakref_ProxyType
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %cmp32 = icmp eq %struct._typeobject* %30, @_PyWeakref_CallableProxyType
  br i1 %cmp32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %31 = load %struct._object*, %struct._object** %w.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct._PyWeakReference*
  %call34 = call i32 @proxy_checkref(%struct._PyWeakReference* %32)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.33
  %33 = load %struct._object*, %struct._object** %w.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct._PyWeakReference*
  %wr_object38 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %wr_object38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt39, align 8
  %cmp40 = icmp sgt i64 %36, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %w.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct._PyWeakReference*
  %wr_object42 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %38, i32 0, i32 1
  %39 = load %struct._object*, %struct._object** %wr_object42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.end.37
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._object* [ %39, %cond.true.41 ], [ @_Py_NoneStruct, %cond.false.43 ]
  store %struct._object* %cond45, %struct._object** %w.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.44, %lor.lhs.false.30
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.25
  %40 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %41 = load %struct._object*, %struct._object** %v.addr, align 8
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  %call48 = call %struct._object* @PyNumber_Power(%struct._object* %40, %struct._object* %41, %struct._object* %42)
  store %struct._object* %call48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.36, %if.then.15, %if.then.3
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_neg(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Negative(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_pos(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Positive(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_abs(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Absolute(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_bool(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %o = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %4, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %o, align 8
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load %struct._object*, %struct._object** %o, align 8
  %call2 = call i32 @PyObject_IsTrue(%struct._object* %6)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_invert(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Invert(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_lshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Lshift(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_rshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Rshift(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_and(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_And(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_xor(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Xor(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_or(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_Or(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_int(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Long(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_float(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Float(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iadd(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceAdd(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_isub(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_imul(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_imod(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ipow(%struct._object* %proxy, %struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %v.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %v.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %v.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %v.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp26 = icmp ne %struct._object* %26, null
  br i1 %cmp26, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %cmp29 = icmp eq %struct._typeobject* %28, @_PyWeakref_ProxyType
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.then.27
  %29 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %cmp32 = icmp eq %struct._typeobject* %30, @_PyWeakref_CallableProxyType
  br i1 %cmp32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %31 = load %struct._object*, %struct._object** %w.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct._PyWeakReference*
  %call34 = call i32 @proxy_checkref(%struct._PyWeakReference* %32)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.33
  %33 = load %struct._object*, %struct._object** %w.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct._PyWeakReference*
  %wr_object38 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %wr_object38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt39, align 8
  %cmp40 = icmp sgt i64 %36, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %w.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct._PyWeakReference*
  %wr_object42 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %38, i32 0, i32 1
  %39 = load %struct._object*, %struct._object** %wr_object42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.end.37
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._object* [ %39, %cond.true.41 ], [ @_Py_NoneStruct, %cond.false.43 ]
  store %struct._object* %cond45, %struct._object** %w.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.44, %lor.lhs.false.30
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.25
  %40 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %41 = load %struct._object*, %struct._object** %v.addr, align 8
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  %call48 = call %struct._object* @PyNumber_InPlacePower(%struct._object* %40, %struct._object* %41, %struct._object* %42)
  store %struct._object* %call48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.36, %if.then.15, %if.then.3
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ilshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceLshift(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_irshift(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceRshift(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_iand(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceAnd(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ixor(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceXor(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ior(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_floor_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_true_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_ifloor_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_itrue_div(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_index(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* @PyNumber_Index(%struct._object* %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_checkref(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %4, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %cmp2 = icmp eq %struct._object* %cond, @_Py_NoneStruct
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Divmod(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare %struct._object* @PyNumber_Positive(%struct._object*) #1

declare %struct._object* @PyNumber_Absolute(%struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @PyNumber_Invert(%struct._object*) #1

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_And(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Xor(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Long(%struct._object*) #1

declare %struct._object* @PyNumber_Float(%struct._object*) #1

declare %struct._object* @PyNumber_InPlaceAdd(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceSubtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceMultiply(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceRemainder(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlacePower(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceLshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceRshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceAnd(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceXor(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceOr(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @proxy_length(%struct._PyWeakReference* %proxy) #0 {
entry:
  %retval = alloca i64, align 8
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %call2 = call i64 @PyObject_Size(%struct._object* %cond)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_contains(%struct._PyWeakReference* %proxy, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %5, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %call2 = call i32 @PySequence_Contains(%struct._object* %cond, %struct._object* %6)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i64 @PyObject_Size(%struct._object*) #1

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_getitem(%struct._object* %x, %struct._object* %y) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %y.addr = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._object* %y, %struct._object** %y.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %x.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %x.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @_PyWeakref_ProxyType
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %y.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %16, @_PyWeakref_CallableProxyType
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** %y.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct._PyWeakReference*
  %call13 = call i32 @proxy_checkref(%struct._PyWeakReference* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %y.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct._PyWeakReference*
  %wr_object17 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %wr_object17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt18, align 8
  %cmp19 = icmp sgt i64 %22, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %y.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._PyWeakReference*
  %wr_object21 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %wr_object21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._object* [ %25, %cond.true.20 ], [ @_Py_NoneStruct, %cond.false.22 ]
  store %struct._object* %cond24, %struct._object** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %lor.lhs.false.9
  %26 = load %struct._object*, %struct._object** %x.addr, align 8
  %27 = load %struct._object*, %struct._object** %y.addr, align 8
  %call26 = call %struct._object* @PyObject_GetItem(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.then.3
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal i32 @proxy_setitem(%struct._PyWeakReference* %proxy, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct._PyWeakReference*, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  store %struct._PyWeakReference* %proxy, %struct._PyWeakReference** %proxy.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %cmp2 = icmp sgt i64 %4, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %5 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object3 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %wr_object3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %6, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %call4 = call i32 @PyObject_DelItem(%struct._object* %cond, %struct._object* %7)
  store i32 %call4, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %wr_object5, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt6, align 8
  %cmp7 = icmp sgt i64 %10, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %if.else
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %proxy.addr, align 8
  %wr_object9 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object9, align 8
  br label %cond.end.11

cond.false.10:                                    ; preds = %if.else
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.8
  %cond12 = phi %struct._object* [ %12, %cond.true.8 ], [ @_Py_NoneStruct, %cond.false.10 ]
  %13 = load %struct._object*, %struct._object** %key.addr, align 8
  %14 = load %struct._object*, %struct._object** %value.addr, align 8
  %call13 = call i32 @PyObject_SetItem(%struct._object* %cond12, %struct._object* %13, %struct._object* %14)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.11, %cond.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyObject_DelItem(%struct._object*, %struct._object*) #1

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_SetAttr(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @proxy_bytes(%struct._object* %proxy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %proxy.addr = alloca %struct._object*, align 8
  store %struct._object* %proxy, %struct._object** %proxy.addr, align 8
  %0 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyWeakref_ProxyType
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @_PyWeakref_CallableProxyType
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %call = call i32 @proxy_checkref(%struct._PyWeakReference* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyWeakReference*
  %wr_object5 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %wr_object5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %proxy.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %cond.end, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %proxy.addr, align 8
  %call7 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %13, %struct._Py_Identifier* @proxy_bytes.PyId___bytes__, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare void @PyObject_GC_Track(i8*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
