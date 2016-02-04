; ModuleID = '_weakref.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }

@weakrefmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @weakref_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@_PyWeakref_RefType = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ReferenceType\00", align 1
@_PyWeakref_ProxyType = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@_PyWeakref_CallableProxyType = external global %struct._typeobject, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"CallableProxyType\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"_weakref\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Weak-reference support module.\00", align 1
@weakref_functions = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_weakref_getweakrefcount to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @_weakref_getweakrefcount__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @weakref_getweakrefs, i32 8, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @weakref_getweakrefs__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @weakref_proxy, i32 1, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @weakref_proxy__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"getweakrefcount\00", align 1
@_weakref_getweakrefcount__doc__ = internal global [90 x i8] c"getweakrefcount($module, object, /)\0A--\0A\0AReturn the number of weak references to 'object'.\00", align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"getweakrefs\00", align 1
@weakref_getweakrefs__doc__ = internal global [91 x i8] c"getweakrefs(object) -- return a list of all weak reference objects\0Athat point to 'object'.\00", align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@weakref_proxy__doc__ = internal global [187 x i8] c"proxy(object[, callback]) -- create a proxy object that weakly\0Areferences 'object'.  'callback', if given, is called with a\0Areference to the proxy when 'object' is about to be finalized.\00", align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__weakref() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @weakrefmodule, i32 1013) #1, !dbg !450
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !369, metadata !451), !dbg !452
  %cmp = icmp eq %struct._object* %call, null, !dbg !453
  br i1 %cmp, label %if.end, label %if.then, !dbg !455

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !456, !tbaa !458
  %inc = add i64 %0, 1, !dbg !456
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !456, !tbaa !458
  %call1 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i64 0, i32 0, i32 0)) #1, !dbg !464
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !465, !tbaa !458
  %inc2 = add i64 %1, 1, !dbg !465
  store i64 %inc2, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !465, !tbaa !458
  %call3 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i64 0, i32 0, i32 0)) #1, !dbg !466
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_ProxyType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !467, !tbaa !458
  %inc4 = add i64 %2, 1, !dbg !467
  store i64 %inc4, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_ProxyType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !467, !tbaa !458
  %call5 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_ProxyType, i64 0, i32 0, i32 0)) #1, !dbg !468
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_CallableProxyType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !469, !tbaa !458
  %inc6 = add i64 %3, 1, !dbg !469
  store i64 %inc6, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_CallableProxyType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !469, !tbaa !458
  %call7 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_CallableProxyType, i64 0, i32 0, i32 0)) #1, !dbg !470
  br label %if.end, !dbg !471

if.end:                                           ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !472
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_weakref_getweakrefcount(%struct.PyModuleDef* nocapture readnone %module, %struct._object* nocapture readonly %object) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !398, metadata !451), !dbg !473
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !399, metadata !451), !dbg !474
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !400, metadata !451), !dbg !475
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !406, metadata !451) #1, !dbg !476
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %object, i64 0, i32 1, !dbg !478
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !478, !tbaa !480
  %tp_weaklistoffset.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 24, !dbg !478
  %1 = load i64, i64* %tp_weaklistoffset.i, align 8, !dbg !478, !tbaa !481
  %cmp.i = icmp sgt i64 %1, 0, !dbg !478
  br i1 %cmp.i, label %_weakref_getweakrefcount_impl.exit, label %if.end, !dbg !485

_weakref_getweakrefcount_impl.exit:               ; preds = %entry
  %2 = bitcast %struct._object* %object to i8*, !dbg !486
  %add.ptr.i = getelementptr i8, i8* %2, i64 %1, !dbg !486
  %3 = bitcast i8* %add.ptr.i to %struct._PyWeakReference**, !dbg !486
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %3, i64 0, metadata !408, metadata !451) #1, !dbg !487
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %3, align 8, !dbg !488, !tbaa !489
  %call.i = tail call i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %4) #1, !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !401, metadata !451), !dbg !491
  %cmp = icmp eq i64 %call.i, -1, !dbg !492
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !494

land.lhs.true:                                    ; preds = %_weakref_getweakrefcount_impl.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !495
  %tobool = icmp eq %struct._object* %call1, null, !dbg !495
  br i1 %tobool, label %if.end, label %exit, !dbg !497

if.end:                                           ; preds = %entry, %land.lhs.true, %_weakref_getweakrefcount_impl.exit
  %retval.0.i7 = phi i64 [ -1, %land.lhs.true ], [ %call.i, %_weakref_getweakrefcount_impl.exit ], [ 0, %entry ]
  %call2 = tail call %struct._object* @PyLong_FromSsize_t(i64 %retval.0.i7) #1, !dbg !498
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !400, metadata !451), !dbg !475
  br label %exit, !dbg !499

exit:                                             ; preds = %land.lhs.true, %if.end
  %return_value.0 = phi %struct._object* [ null, %land.lhs.true ], [ %call2, %if.end ]
  ret %struct._object* %return_value.0, !dbg !500
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_getweakrefs(%struct._object* nocapture readnone %self, %struct._object* nocapture readonly %object) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !411, metadata !451), !dbg !501
  tail call void @llvm.dbg.value(metadata %struct._object* %object, i64 0, metadata !412, metadata !451), !dbg !502
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !413, metadata !451), !dbg !503
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %object, i64 0, i32 1, !dbg !504
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !504, !tbaa !480
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 24, !dbg !504
  %1 = load i64, i64* %tp_weaklistoffset, align 8, !dbg !504, !tbaa !481
  %cmp = icmp sgt i64 %1, 0, !dbg !504
  br i1 %cmp, label %if.then, label %if.else, !dbg !505

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object* %object to i8*, !dbg !506
  %add.ptr = getelementptr i8, i8* %2, i64 %1, !dbg !506
  %3 = bitcast i8* %add.ptr to %struct._PyWeakReference**, !dbg !506
  tail call void @llvm.dbg.value(metadata %struct._PyWeakReference** %3, i64 0, metadata !414, metadata !451), !dbg !507
  %4 = load %struct._PyWeakReference*, %struct._PyWeakReference** %3, align 8, !dbg !508, !tbaa !489
  %call = tail call i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %4) #1, !dbg !509
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !417, metadata !451), !dbg !510
  %call3 = tail call %struct._object* @PyList_New(i64 %call) #1, !dbg !511
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !413, metadata !451), !dbg !503
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !512
  br i1 %cmp4, label %if.end.9, label %for.cond.preheader, !dbg !513

for.cond.preheader:                               ; preds = %if.then
  %cmp6.26 = icmp sgt i64 %call, 0, !dbg !514
  br i1 %cmp6.26, label %for.body.lr.ph, label %if.end.9, !dbg !517

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call3, i64 1, i32 1, !dbg !518
  %5 = bitcast %struct._typeobject** %ob_item to %struct._object***, !dbg !518
  %xtraiter = and i64 %call, 1, !dbg !517
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !517
  br i1 %lcmp.mod, label %for.body.lr.ph.split, label %for.body.prol, !dbg !517

for.body.prol:                                    ; preds = %for.body.lr.ph
  %current.028.prol = load %struct._PyWeakReference*, %struct._PyWeakReference** %3, align 8, !dbg !520
  %6 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028.prol, i64 0, i32 0, !dbg !518
  %7 = load %struct._object**, %struct._object*** %5, align 8, !dbg !518, !tbaa !521
  store %struct._object* %6, %struct._object** %7, align 8, !dbg !518, !tbaa !489
  %ob_refcnt.prol = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028.prol, i64 0, i32 0, i32 0, !dbg !523
  %8 = load i64, i64* %ob_refcnt.prol, align 8, !dbg !523, !tbaa !458
  %inc.prol = add i64 %8, 1, !dbg !523
  store i64 %inc.prol, i64* %ob_refcnt.prol, align 8, !dbg !523, !tbaa !458
  %wr_next.prol = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028.prol, i64 0, i32 5, !dbg !524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !421, metadata !451), !dbg !525
  br label %for.body.lr.ph.split, !dbg !517

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph, %for.body.prol
  %current.028.in.unr = phi %struct._PyWeakReference** [ %3, %for.body.lr.ph ], [ %wr_next.prol, %for.body.prol ]
  %i.027.unr = phi i64 [ 0, %for.body.lr.ph ], [ 1, %for.body.prol ]
  %9 = icmp eq i64 %call, 1, !dbg !517
  br i1 %9, label %if.end.9.loopexit, label %for.body.lr.ph.split.split, !dbg !517

for.body.lr.ph.split.split:                       ; preds = %for.body.lr.ph.split
  br label %for.body, !dbg !517

for.body:                                         ; preds = %for.body, %for.body.lr.ph.split.split
  %current.028.in = phi %struct._PyWeakReference** [ %current.028.in.unr, %for.body.lr.ph.split.split ], [ %wr_next.1, %for.body ]
  %i.027 = phi i64 [ %i.027.unr, %for.body.lr.ph.split.split ], [ %inc7.1, %for.body ]
  %current.028 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current.028.in, align 8, !dbg !520
  %10 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028, i64 0, i32 0, !dbg !518
  %11 = load %struct._object**, %struct._object*** %5, align 8, !dbg !518, !tbaa !521
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %i.027, !dbg !518
  store %struct._object* %10, %struct._object** %arrayidx, align 8, !dbg !518, !tbaa !489
  %ob_refcnt = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028, i64 0, i32 0, i32 0, !dbg !523
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !523, !tbaa !458
  %inc = add i64 %12, 1, !dbg !523
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !523, !tbaa !458
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028, i64 0, i32 5, !dbg !524
  %inc7 = add nuw nsw i64 %i.027, 1, !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %inc7, i64 0, metadata !421, metadata !451), !dbg !525
  %current.028.1 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8, !dbg !520
  %13 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028.1, i64 0, i32 0, !dbg !518
  %14 = load %struct._object**, %struct._object*** %5, align 8, !dbg !518, !tbaa !521
  %arrayidx.1 = getelementptr %struct._object*, %struct._object** %14, i64 %inc7, !dbg !518
  store %struct._object* %13, %struct._object** %arrayidx.1, align 8, !dbg !518, !tbaa !489
  %ob_refcnt.1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028.1, i64 0, i32 0, i32 0, !dbg !523
  %15 = load i64, i64* %ob_refcnt.1, align 8, !dbg !523, !tbaa !458
  %inc.1 = add i64 %15, 1, !dbg !523
  store i64 %inc.1, i64* %ob_refcnt.1, align 8, !dbg !523, !tbaa !458
  %wr_next.1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %current.028.1, i64 0, i32 5, !dbg !524
  %inc7.1 = add nsw i64 %i.027, 2, !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %inc7, i64 0, metadata !421, metadata !451), !dbg !525
  %exitcond.1 = icmp eq i64 %inc7.1, %call, !dbg !517
  br i1 %exitcond.1, label %if.end.9.loopexit.unr-lcssa, label %for.body, !dbg !517

if.else:                                          ; preds = %entry
  %call8 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !527
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !413, metadata !451), !dbg !503
  br label %if.end.9

if.end.9.loopexit.unr-lcssa:                      ; preds = %for.body
  br label %if.end.9.loopexit, !dbg !529

if.end.9.loopexit:                                ; preds = %for.body.lr.ph.split, %if.end.9.loopexit.unr-lcssa
  br label %if.end.9, !dbg !529

if.end.9:                                         ; preds = %if.end.9.loopexit, %for.cond.preheader, %if.then, %if.else
  %result.0 = phi %struct._object* [ %call8, %if.else ], [ null, %if.then ], [ %call3, %for.cond.preheader ], [ %call3, %if.end.9.loopexit ]
  ret %struct._object* %result.0, !dbg !529
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_proxy(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %object = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !424, metadata !451), !dbg !530
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !425, metadata !451), !dbg !531
  %0 = bitcast %struct._object** %object to i8*, !dbg !532
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !532
  %1 = bitcast %struct._object** %callback to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !533
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !427, metadata !451), !dbg !534
  store %struct._object* null, %struct._object** %callback, align 8, !dbg !534, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !428, metadata !451), !dbg !535
  tail call void @llvm.dbg.value(metadata %struct._object** %object, i64 0, metadata !426, metadata !451), !dbg !536
  tail call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !427, metadata !451), !dbg !534
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 2, %struct._object** nonnull %object, %struct._object** nonnull %callback) #1, !dbg !537
  %tobool = icmp eq i32 %call, 0, !dbg !537
  br i1 %tobool, label %if.end, label %if.then, !dbg !539

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %object, i64 0, metadata !426, metadata !451), !dbg !536
  %2 = load %struct._object*, %struct._object** %object, align 8, !dbg !540, !tbaa !489
  call void @llvm.dbg.value(metadata %struct._object** %callback, i64 0, metadata !427, metadata !451), !dbg !534
  %3 = load %struct._object*, %struct._object** %callback, align 8, !dbg !542, !tbaa !489
  %call1 = call %struct._object* @PyWeakref_NewProxy(%struct._object* %2, %struct._object* %3) #1, !dbg !543
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !428, metadata !451), !dbg !535
  br label %if.end, !dbg !544

if.end:                                           ; preds = %entry, %if.then
  %result.0 = phi %struct._object* [ %call1, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !545
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !545
  ret %struct._object* %result.0, !dbg !546
}

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference*) #2

declare %struct._object* @PyList_New(i64) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare %struct._object* @PyWeakref_NewProxy(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!447, !448}
!llvm.ident = !{!449}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !364, globals: !429)
!1 = !DIFile(filename: "./Modules/_weakref.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !355, !52, !356}
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
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
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
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !7, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !5, !5, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !19, !11}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !19, !5, !5}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !346, line: 10, baseType: !347)
!346 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !346, line: 16, size: 448, align: 64, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !347, file: !346, line: 17, baseType: !6, size: 128, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !347, file: !346, line: 23, baseType: !5, size: 64, align: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !347, file: !346, line: 26, baseType: !5, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !347, file: !346, line: 31, baseType: !218, size: 64, align: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !347, file: !346, line: 38, baseType: !344, size: 64, align: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !347, file: !346, line: 39, baseType: !344, size: 64, align: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !358, line: 40, baseType: !359)
!358 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!359 = !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 23, size: 320, align: 64, elements: !360)
!360 = !{!361, !362, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !359, file: !358, line: 24, baseType: !23, size: 192, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !359, file: !358, line: 26, baseType: !355, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !359, file: !358, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!364 = !{!365, !370, !402, !409, !422}
!365 = !DISubprogram(name: "PyInit__weakref", scope: !1, file: !1, line: 137, type: !366, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__weakref, variables: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!5}
!368 = !{!369}
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !365, file: !1, line: 139, type: !5)
!370 = !DISubprogram(name: "_weakref_getweakrefcount", scope: !1, file: !1, line: 35, type: !371, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_weakref_getweakrefcount, variables: !397)
!371 = !DISubroutineType(types: !372)
!372 = !{!5, !373, !5}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !375, line: 57, baseType: !376)
!375 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !375, line: 47, size: 832, align: 64, elements: !377)
!377 = !{!378, !387, !388, !389, !390, !393, !394, !395, !396}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !376, file: !375, line: 48, baseType: !379, size: 320, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !375, line: 38, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !375, line: 33, size: 320, align: 64, elements: !381)
!381 = !{!382, !383, !385, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !380, file: !375, line: 34, baseType: !6, size: 128, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !380, file: !375, line: 35, baseType: !384, size: 64, align: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !380, file: !375, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !380, file: !375, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !376, file: !375, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !376, file: !375, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !376, file: !375, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !376, file: !375, line: 52, baseType: !391, size: 64, align: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !376, file: !375, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !376, file: !375, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !376, file: !375, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !376, file: !375, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!397 = !{!398, !399, !400, !401}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !370, file: !1, line: 35, type: !373)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 2, scope: !370, file: !1, line: 35, type: !5)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !370, file: !1, line: 37, type: !5)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_return_value", scope: !370, file: !1, line: 38, type: !11)
!402 = !DISubprogram(name: "_weakref_getweakrefcount_impl", scope: !1, file: !1, line: 50, type: !403, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!11, !373, !5}
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !402, file: !1, line: 50, type: !373)
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 2, scope: !402, file: !1, line: 50, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !402, file: !1, line: 53, type: !343)
!409 = !DISubprogram(name: "weakref_getweakrefs", scope: !1, file: !1, line: 68, type: !126, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @weakref_getweakrefs, variables: !410)
!410 = !{!411, !412, !413, !414, !417, !418, !421}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !1, line: 68, type: !5)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 2, scope: !409, file: !1, line: 68, type: !5)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !409, file: !1, line: 70, type: !5)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !415, file: !1, line: 73, type: !343)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 72, column: 52)
!416 = distinct !DILexicalBlock(scope: !409, file: !1, line: 72, column: 9)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !415, file: !1, line: 74, type: !11)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !419, file: !1, line: 78, type: !344)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 77, column: 29)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 77, column: 13)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !419, file: !1, line: 79, type: !11)
!422 = !DISubprogram(name: "weakref_proxy", scope: !1, file: !1, line: 100, type: !126, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @weakref_proxy, variables: !423)
!423 = !{!424, !425, !426, !427, !428}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !422, file: !1, line: 100, type: !5)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !422, file: !1, line: 100, type: !5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !422, file: !1, line: 102, type: !5)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !422, file: !1, line: 103, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !422, file: !1, line: 104, type: !5)
!429 = !{!430, !431, !435, !439, !443}
!430 = !DIGlobalVariable(name: "weakrefmodule", scope: !0, file: !1, line: 124, type: !376, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @weakrefmodule)
!431 = !DIGlobalVariable(name: "weakref_functions", scope: !0, file: !1, line: 114, type: !432, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @weakref_functions)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1024, align: 64, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 4)
!435 = !DIGlobalVariable(name: "_weakref_getweakrefcount__doc__", scope: !0, file: !1, line: 22, type: !436, isLocal: true, isDefinition: true, variable: [90 x i8]* @_weakref_getweakrefcount__doc__)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 720, align: 8, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 90)
!439 = !DIGlobalVariable(name: "weakref_getweakrefs__doc__", scope: !0, file: !1, line: 63, type: !440, isLocal: true, isDefinition: true, variable: [91 x i8]* @weakref_getweakrefs__doc__)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 728, align: 8, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 91)
!443 = !DIGlobalVariable(name: "weakref_proxy__doc__", scope: !0, file: !1, line: 94, type: !444, isLocal: true, isDefinition: true, variable: [187 x i8]* @weakref_proxy__doc__)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1496, align: 8, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 187)
!447 = !{i32 2, !"Dwarf Version", i32 4}
!448 = !{i32 2, !"Debug Info Version", i32 3}
!449 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!450 = !DILocation(line: 141, column: 9, scope: !365)
!451 = !DIExpression()
!452 = !DILocation(line: 139, column: 15, scope: !365)
!453 = !DILocation(line: 143, column: 11, scope: !454)
!454 = distinct !DILexicalBlock(scope: !365, file: !1, line: 143, column: 9)
!455 = !DILocation(line: 143, column: 9, scope: !365)
!456 = !DILocation(line: 144, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 143, column: 20)
!458 = !{!459, !460, i64 0}
!459 = !{!"_object", !460, i64 0, !463, i64 8}
!460 = !{!"long", !461, i64 0}
!461 = !{!"omnipotent char", !462, i64 0}
!462 = !{!"Simple C/C++ TBAA"}
!463 = !{!"any pointer", !461, i64 0}
!464 = !DILocation(line: 145, column: 9, scope: !457)
!465 = !DILocation(line: 147, column: 9, scope: !457)
!466 = !DILocation(line: 148, column: 9, scope: !457)
!467 = !DILocation(line: 150, column: 9, scope: !457)
!468 = !DILocation(line: 151, column: 9, scope: !457)
!469 = !DILocation(line: 153, column: 9, scope: !457)
!470 = !DILocation(line: 154, column: 9, scope: !457)
!471 = !DILocation(line: 156, column: 5, scope: !457)
!472 = !DILocation(line: 157, column: 5, scope: !365)
!473 = !DILocation(line: 35, column: 39, scope: !370)
!474 = !DILocation(line: 35, column: 57, scope: !370)
!475 = !DILocation(line: 37, column: 15, scope: !370)
!476 = !DILocation(line: 50, column: 44, scope: !402, inlinedAt: !477)
!477 = distinct !DILocation(line: 40, column: 21, scope: !370)
!478 = !DILocation(line: 55, column: 10, scope: !479, inlinedAt: !477)
!479 = distinct !DILexicalBlock(scope: !402, file: !1, line: 55, column: 9)
!480 = !{!459, !463, i64 8}
!481 = !{!482, !460, i64 208}
!482 = !{!"_typeobject", !483, i64 0, !463, i64 24, !460, i64 32, !460, i64 40, !463, i64 48, !463, i64 56, !463, i64 64, !463, i64 72, !463, i64 80, !463, i64 88, !463, i64 96, !463, i64 104, !463, i64 112, !463, i64 120, !463, i64 128, !463, i64 136, !463, i64 144, !463, i64 152, !463, i64 160, !460, i64 168, !463, i64 176, !463, i64 184, !463, i64 192, !463, i64 200, !460, i64 208, !463, i64 216, !463, i64 224, !463, i64 232, !463, i64 240, !463, i64 248, !463, i64 256, !463, i64 264, !463, i64 272, !463, i64 280, !460, i64 288, !463, i64 296, !463, i64 304, !463, i64 312, !463, i64 320, !463, i64 328, !463, i64 336, !463, i64 344, !463, i64 352, !463, i64 360, !463, i64 368, !463, i64 376, !484, i64 384, !463, i64 392}
!483 = !{!"", !459, i64 0, !460, i64 16}
!484 = !{!"int", !461, i64 0}
!485 = !DILocation(line: 55, column: 9, scope: !402, inlinedAt: !477)
!486 = !DILocation(line: 58, column: 12, scope: !402, inlinedAt: !477)
!487 = !DILocation(line: 53, column: 23, scope: !402, inlinedAt: !477)
!488 = !DILocation(line: 59, column: 39, scope: !402, inlinedAt: !477)
!489 = !{!463, !463, i64 0}
!490 = !DILocation(line: 59, column: 12, scope: !402, inlinedAt: !477)
!491 = !DILocation(line: 38, column: 16, scope: !370)
!492 = !DILocation(line: 41, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !370, file: !1, line: 41, column: 9)
!494 = !DILocation(line: 41, column: 31, scope: !493)
!495 = !DILocation(line: 41, column: 34, scope: !496)
!496 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 1)
!497 = !DILocation(line: 41, column: 9, scope: !370)
!498 = !DILocation(line: 43, column: 20, scope: !370)
!499 = !DILocation(line: 43, column: 5, scope: !370)
!500 = !DILocation(line: 46, column: 5, scope: !370)
!501 = !DILocation(line: 68, column: 31, scope: !409)
!502 = !DILocation(line: 68, column: 47, scope: !409)
!503 = !DILocation(line: 70, column: 15, scope: !409)
!504 = !DILocation(line: 72, column: 9, scope: !416)
!505 = !DILocation(line: 72, column: 9, scope: !409)
!506 = !DILocation(line: 73, column: 34, scope: !415)
!507 = !DILocation(line: 73, column: 27, scope: !415)
!508 = !DILocation(line: 74, column: 55, scope: !415)
!509 = !DILocation(line: 74, column: 28, scope: !415)
!510 = !DILocation(line: 74, column: 20, scope: !415)
!511 = !DILocation(line: 76, column: 18, scope: !415)
!512 = !DILocation(line: 77, column: 20, scope: !420)
!513 = !DILocation(line: 77, column: 13, scope: !415)
!514 = !DILocation(line: 80, column: 27, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 80, column: 13)
!516 = distinct !DILexicalBlock(scope: !419, file: !1, line: 80, column: 13)
!517 = !DILocation(line: 80, column: 13, scope: !516)
!518 = !DILocation(line: 81, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !1, line: 80, column: 41)
!520 = !DILocation(line: 78, column: 40, scope: !419)
!521 = !{!522, !463, i64 24}
!522 = !{!"", !483, i64 0, !463, i64 24, !460, i64 32}
!523 = !DILocation(line: 82, column: 17, scope: !519)
!524 = !DILocation(line: 83, column: 36, scope: !519)
!525 = !DILocation(line: 79, column: 24, scope: !419)
!526 = !DILocation(line: 80, column: 36, scope: !515)
!527 = !DILocation(line: 88, column: 18, scope: !528)
!528 = distinct !DILexicalBlock(scope: !416, file: !1, line: 87, column: 10)
!529 = !DILocation(line: 90, column: 5, scope: !409)
!530 = !DILocation(line: 100, column: 25, scope: !422)
!531 = !DILocation(line: 100, column: 41, scope: !422)
!532 = !DILocation(line: 102, column: 5, scope: !422)
!533 = !DILocation(line: 103, column: 5, scope: !422)
!534 = !DILocation(line: 103, column: 15, scope: !422)
!535 = !DILocation(line: 104, column: 15, scope: !422)
!536 = !DILocation(line: 102, column: 15, scope: !422)
!537 = !DILocation(line: 106, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !422, file: !1, line: 106, column: 9)
!539 = !DILocation(line: 106, column: 9, scope: !422)
!540 = !DILocation(line: 107, column: 37, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !1, line: 106, column: 69)
!542 = !DILocation(line: 107, column: 45, scope: !541)
!543 = !DILocation(line: 107, column: 18, scope: !541)
!544 = !DILocation(line: 108, column: 5, scope: !541)
!545 = !DILocation(line: 110, column: 1, scope: !422)
!546 = !DILocation(line: 109, column: 5, scope: !422)
