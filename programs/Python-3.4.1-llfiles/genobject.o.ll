; ModuleID = 'genobject.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, {}*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, {}*, i32, {}* }
%struct.PyVarObject = type { %struct._object, i64 }
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
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyGenObject = type { %struct._object, %struct._frame*, i8, %struct._object*, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@PyExc_StopIteration = external global %struct._object*, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@gen_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*, %struct._object*)* @_PyGen_Send to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @send_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*, %struct._object*)* @gen_throw to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @throw_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*, %struct._object*)* @gen_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @close_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@gen_memberlist = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 14, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@gen_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyGenObject*)* @gen_get_name to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @gen__name__doc__, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyGen_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PyGenObject*)* @gen_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*)* @gen_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278529, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyGenObject*, i32 (%struct._object*, i8*)*, i8*)* @gen_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*)* @gen_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @gen_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @gen_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @gen_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* @_PyGen_Finalize }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"generator already executing\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"can't send non-None value to a just-started generator\00", align 1
@PyExc_GeneratorExit = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"generator ignored GeneratorExit\00", align 1
@gen_close_iter.PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* null }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"<generator object %S at %p>\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@send_doc = internal global [90 x i8] c"send(arg) -> send 'arg' into generator,\0Areturn next yielded value or raise StopIteration.\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@throw_doc = internal global [105 x i8] c"throw(typ[,val[,tb]]) -> raise exception in generator,\0Areturn next yielded value or raise StopIteration.\00", align 16
@close_doc = internal global [49 x i8] c"close() -> raise GeneratorExit inside generator.\00", align 16
@gen_throw.PyId_throw = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* null }, align 8
@PyTraceBack_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"throw() third argument must be a traceback object\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"instance exception may not have a separate value\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"exceptions must be classes or instances deriving from BaseException, not %s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gi_frame\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"gi_running\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"gi_code\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@gen__name__doc__ = internal global [59 x i8] c"Return the name of the generator's associated code object.\00", align 16

; Function Attrs: nounwind uwtable
define void @_PyGen_Finalize(%struct._object* %self) #0 {
entry:
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !522, metadata !875), !dbg !876
  %0 = bitcast %struct._object* %self to %struct.PyGenObject*, !dbg !877
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %0, i64 0, metadata !523, metadata !875), !dbg !878
  %1 = bitcast %struct._object** %error_type to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !879
  %2 = bitcast %struct._object** %error_value to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !879
  %3 = bitcast %struct._object** %error_traceback to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !879
  %gi_frame = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !880
  %4 = bitcast %struct._object* %gi_frame to %struct._frame**, !dbg !880
  %5 = load %struct._frame*, %struct._frame** %4, align 8, !dbg !880, !tbaa !882
  %cmp = icmp eq %struct._frame* %5, null, !dbg !889
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !890

lor.lhs.false:                                    ; preds = %entry
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %5, i64 0, i32 7, !dbg !891
  %6 = load %struct._object**, %struct._object*** %f_stacktop, align 8, !dbg !891, !tbaa !892
  %cmp2 = icmp eq %struct._object** %6, null, !dbg !896
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !897

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct._object** %error_type, i64 0, metadata !525, metadata !875), !dbg !898
  tail call void @llvm.dbg.value(metadata %struct._object** %error_value, i64 0, metadata !526, metadata !875), !dbg !899
  tail call void @llvm.dbg.value(metadata %struct._object** %error_traceback, i64 0, metadata !527, metadata !875), !dbg !900
  call void @PyErr_Fetch(%struct._object** nonnull %error_type, %struct._object** nonnull %error_value, %struct._object** nonnull %error_traceback) #1, !dbg !901
  %call = call %struct._object* @gen_close(%struct.PyGenObject* %0, %struct._object* null), !dbg !902
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !524, metadata !875), !dbg !903
  %cmp3 = icmp eq %struct._object* %call, null, !dbg !904
  br i1 %cmp3, label %if.then.4, label %do.body, !dbg !905

if.then.4:                                        ; preds = %if.end
  call void @PyErr_WriteUnraisable(%struct._object* %self) #1, !dbg !906
  br label %if.end.10, !dbg !906

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !528, metadata !875), !dbg !907
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !909
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !909, !tbaa !911
  %dec = add i64 %7, -1, !dbg !909
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !909, !tbaa !911
  %cmp5 = icmp eq i64 %dec, 0, !dbg !909
  br i1 %cmp5, label %if.else.7, label %if.end.10, !dbg !912

if.else.7:                                        ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !913
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !913, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !913
  %tp_dealloc8 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !913
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc8, align 8, !dbg !913, !tbaa !916
  call void %9(%struct._object* %call) #1, !dbg !913
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %do.body, %if.then.4
  call void @llvm.dbg.value(metadata %struct._object** %error_type, i64 0, metadata !525, metadata !875), !dbg !898
  %10 = load %struct._object*, %struct._object** %error_type, align 8, !dbg !918, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object** %error_value, i64 0, metadata !526, metadata !875), !dbg !899
  %11 = load %struct._object*, %struct._object** %error_value, align 8, !dbg !920, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object** %error_traceback, i64 0, metadata !527, metadata !875), !dbg !900
  %12 = load %struct._object*, %struct._object** %error_traceback, align 8, !dbg !921, !tbaa !919
  call void @PyErr_Restore(%struct._object* %10, %struct._object* %11, %struct._object* %12) #1, !dbg !922
  br label %cleanup, !dbg !923

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end.10
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !924
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !924
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !924
  ret void, !dbg !923
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_close(%struct.PyGenObject* nocapture %gen, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !670, metadata !875), !dbg !926
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !671, metadata !875), !dbg !927
  %gen.idx = getelementptr %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 1
  %gen.idx.val = load %struct._frame*, %struct._frame** %gen.idx, align 8, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !688, metadata !875), !dbg !928
  tail call void @llvm.dbg.value(metadata %struct._frame* %gen.idx.val, i64 0, metadata !689, metadata !875), !dbg !930
  %tobool.i = icmp eq %struct._frame* %gen.idx.val, null, !dbg !931
  br i1 %tobool.i, label %if.then.8, label %land.lhs.true.i, !dbg !932

land.lhs.true.i:                                  ; preds = %entry
  %f_stacktop.i = getelementptr inbounds %struct._frame, %struct._frame* %gen.idx.val, i64 0, i32 7, !dbg !933
  %0 = load %struct._object**, %struct._object*** %f_stacktop.i, align 8, !dbg !933, !tbaa !892
  %tobool1.i = icmp eq %struct._object** %0, null, !dbg !934
  br i1 %tobool1.i, label %if.then.8, label %if.then.i, !dbg !935

if.then.i:                                        ; preds = %land.lhs.true.i
  %f_code.i = getelementptr inbounds %struct._frame, %struct._frame* %gen.idx.val, i64 0, i32 2, !dbg !936
  %1 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code.i, align 8, !dbg !936, !tbaa !937
  %co_code.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %1, i64 0, i32 6, !dbg !938
  %2 = bitcast %struct._object** %co_code.i to %struct.PyBytesObject**, !dbg !938
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %2, align 8, !dbg !938, !tbaa !939
  %f_lasti.i = getelementptr inbounds %struct._frame, %struct._frame* %gen.idx.val, i64 0, i32 13, !dbg !941
  %4 = load i32, i32* %f_lasti.i, align 4, !dbg !941, !tbaa !943
  %add.i = add i32 %4, 1, !dbg !944
  %idxprom.i = sext i32 %add.i to i64, !dbg !945
  %arrayidx.i = getelementptr %struct.PyBytesObject, %struct.PyBytesObject* %3, i64 0, i32 2, i64 %idxprom.i, !dbg !945
  %5 = load i8, i8* %arrayidx.i, align 1, !dbg !945, !tbaa !946
  %cmp.i = icmp eq i8 %5, 72, !dbg !947
  br i1 %cmp.i, label %gen_yf.exit, label %if.then.8, !dbg !948

gen_yf.exit:                                      ; preds = %if.then.i
  %arrayidx5.i = getelementptr %struct._object*, %struct._object** %0, i64 -1, !dbg !949
  %6 = load %struct._object*, %struct._object** %arrayidx5.i, align 8, !dbg !949, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !688, metadata !875), !dbg !928
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !950
  %7 = load i64, i64* %ob_refcnt.i, align 8, !dbg !950, !tbaa !911
  %inc.i = add i64 %7, 1, !dbg !950
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !950, !tbaa !911
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !673, metadata !875), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !674, metadata !875), !dbg !952
  %tobool = icmp eq %struct._object* %6, null, !dbg !953
  br i1 %tobool, label %if.then.8, label %if.then, !dbg !954

if.then:                                          ; preds = %gen_yf.exit
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 2, !dbg !955
  store i8 1, i8* %gi_running, align 1, !dbg !956, !tbaa !957
  %call2 = tail call fastcc i32 @gen_close_iter(%struct._object* %6), !dbg !958
  tail call void @llvm.dbg.value(metadata i32 %call2, i64 0, metadata !674, metadata !875), !dbg !952
  store i8 0, i8* %gi_running, align 1, !dbg !959, !tbaa !957
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !675, metadata !875), !dbg !960
  %8 = load i64, i64* %ob_refcnt.i, align 8, !dbg !962, !tbaa !911
  %dec = add i64 %8, -1, !dbg !962
  store i64 %dec, i64* %ob_refcnt.i, align 8, !dbg !962, !tbaa !911
  %cmp = icmp eq i64 %dec, 0, !dbg !962
  br i1 %cmp, label %if.else, label %if.end, !dbg !964

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !965
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !965, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !965
  %tp_dealloc5 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !965
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc5, align 8, !dbg !965, !tbaa !916
  tail call void %10(%struct._object* %6) #1, !dbg !965
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %phitmp = icmp eq i32 %call2, 0, !dbg !967
  br i1 %phitmp, label %if.then.8, label %if.end.9, !dbg !968

if.then.8:                                        ; preds = %entry, %land.lhs.true.i, %if.then.i, %gen_yf.exit, %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8, !dbg !969, !tbaa !919
  tail call void @PyErr_SetNone(%struct._object* %11) #1, !dbg !971
  br label %if.end.9, !dbg !971

if.end.9:                                         ; preds = %if.then.8, %if.end
  %call10 = tail call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* nonnull @_Py_NoneStruct, i32 1), !dbg !972
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !672, metadata !875), !dbg !973
  %tobool11 = icmp eq %struct._object* %call10, null, !dbg !974
  br i1 %tobool11, label %if.end.26, label %do.body.13, !dbg !975

do.body.13:                                       ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !679, metadata !875), !dbg !976
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !978
  %12 = load i64, i64* %ob_refcnt15, align 8, !dbg !978, !tbaa !911
  %dec16 = add i64 %12, -1, !dbg !978
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !978, !tbaa !911
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !978
  br i1 %cmp17, label %if.else.19, label %if.end.23, !dbg !980

if.else.19:                                       ; preds = %do.body.13
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !981
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !981, !tbaa !915
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !981
  %tp_dealloc22 = bitcast {}** %tp_dealloc21 to void (%struct._object*)**, !dbg !981
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !981, !tbaa !916
  tail call void %14(%struct._object* %call10) #1, !dbg !981
  br label %if.end.23

if.end.23:                                        ; preds = %do.body.13, %if.else.19
  %15 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !983, !tbaa !919
  tail call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #1, !dbg !984
  br label %cleanup, !dbg !985

if.end.26:                                        ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !986, !tbaa !919
  %call27 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %16) #1, !dbg !988
  %tobool28 = icmp eq i32 %call27, 0, !dbg !988
  br i1 %tobool28, label %lor.lhs.false, label %if.then.31, !dbg !989

lor.lhs.false:                                    ; preds = %if.end.26
  %17 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8, !dbg !990, !tbaa !919
  %call29 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %17) #1, !dbg !992
  %tobool30 = icmp eq i32 %call29, 0, !dbg !992
  br i1 %tobool30, label %cleanup, label %if.then.31, !dbg !993

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.26
  tail call void @PyErr_Clear() #1, !dbg !994
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !996, !tbaa !911
  %inc = add i64 %18, 1, !dbg !996
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !996, !tbaa !911
  br label %cleanup, !dbg !997

cleanup:                                          ; preds = %lor.lhs.false, %if.then.31, %if.end.23
  %retval.0 = phi %struct._object* [ null, %if.end.23 ], [ @_Py_NoneStruct, %if.then.31 ], [ null, %lor.lhs.false ]
  ret %struct._object* %retval.0, !dbg !998
}

declare void @PyErr_WriteUnraisable(%struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_PyGen_Send(%struct.PyGenObject* nocapture %gen, %struct._object* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !535, metadata !875), !dbg !999
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !536, metadata !875), !dbg !1000
  %call = tail call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* %arg, i32 0), !dbg !1001
  ret %struct._object* %call, !dbg !1002
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* nocapture %gen, %struct._object* %arg, i32 %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !587, metadata !875), !dbg !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !588, metadata !875), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %exc, i64 0, metadata !589, metadata !875), !dbg !1005
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !591, metadata !875), !dbg !1006
  tail call void @llvm.dbg.value(metadata !1007, i64 0, metadata !599, metadata !875), !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !602, metadata !875), !dbg !1006
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1008, !tbaa !919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !598, metadata !875), !dbg !1006
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 1, !dbg !1011
  %1 = load %struct._frame*, %struct._frame** %gi_frame, align 8, !dbg !1011, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._frame* %1, i64 0, metadata !604, metadata !875), !dbg !1012
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 2, !dbg !1013
  %2 = load i8, i8* %gi_running, align 1, !dbg !1013, !tbaa !957
  %tobool = icmp eq i8 %2, 0, !dbg !1015
  br i1 %tobool, label %if.end, label %if.then, !dbg !1016

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1017, !tbaa !919
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)) #1, !dbg !1019
  br label %cleanup, !dbg !1020

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct._frame* %1, null, !dbg !1021
  br i1 %cmp, label %if.then.8, label %lor.lhs.false, !dbg !1023

lor.lhs.false:                                    ; preds = %if.end
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 7, !dbg !1024
  %4 = load %struct._object**, %struct._object*** %f_stacktop, align 8, !dbg !1025, !tbaa !892
  %cmp7 = icmp eq %struct._object** %4, null, !dbg !1028
  br i1 %cmp7, label %if.then.8, label %if.end.13, !dbg !1029

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %tobool9 = icmp eq %struct._object* %arg, null, !dbg !1030
  %tobool10 = icmp ne i32 %exc, 0, !dbg !1033
  %or.cond = or i1 %tobool9, %tobool10, !dbg !1035
  br i1 %or.cond, label %cleanup, label %if.then.11, !dbg !1035

if.then.11:                                       ; preds = %if.then.8
  %5 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !1036, !tbaa !919
  tail call void @PyErr_SetNone(%struct._object* %5) #1, !dbg !1037
  br label %cleanup, !dbg !1037

if.end.13:                                        ; preds = %lor.lhs.false
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 13, !dbg !1038
  %6 = load i32, i32* %f_lasti, align 4, !dbg !1038, !tbaa !943
  %cmp14 = icmp eq i32 %6, -1, !dbg !1039
  %tobool16 = icmp ne %struct._object* %arg, null, !dbg !1040
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !1043

if.then.15:                                       ; preds = %if.end.13
  %cmp18 = icmp ne %struct._object* %arg, @_Py_NoneStruct, !dbg !1044
  %or.cond198 = and i1 %tobool16, %cmp18, !dbg !1045
  br i1 %or.cond198, label %if.then.19, label %do.body, !dbg !1045

if.then.19:                                       ; preds = %if.then.15
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1046, !tbaa !919
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0)) #1, !dbg !1048
  br label %cleanup, !dbg !1049

if.else:                                          ; preds = %if.end.13
  %cond = select i1 %tobool16, %struct._object* %arg, %struct._object* @_Py_NoneStruct, !dbg !1050
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !605, metadata !875), !dbg !1051
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %cond, i64 0, i32 0, !dbg !1052
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1052, !tbaa !911
  %inc = add i64 %8, 1, !dbg !1052
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1052, !tbaa !911
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %4, i64 1, !dbg !1025
  store %struct._object** %incdec.ptr, %struct._object*** %f_stacktop, align 8, !dbg !1025, !tbaa !892
  store %struct._object* %cond, %struct._object** %4, align 8, !dbg !1053, !tbaa !919
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then.15
  %frame = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1054
  %9 = bitcast i8* %frame to %struct._object**, !dbg !1054
  %10 = load %struct._object*, %struct._object** %9, align 8, !dbg !1054, !tbaa !1056
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !606, metadata !875), !dbg !1054
  %cmp25 = icmp eq %struct._object* %10, null, !dbg !1058
  %11 = ptrtoint %struct._object* %10 to i64, !dbg !1060
  br i1 %cmp25, label %if.end.29, label %if.then.26, !dbg !1061

if.then.26:                                       ; preds = %do.body
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1062
  %12 = load i64, i64* %ob_refcnt27, align 8, !dbg !1062, !tbaa !911
  %inc28 = add i64 %12, 1, !dbg !1062
  store i64 %inc28, i64* %ob_refcnt27, align 8, !dbg !1062, !tbaa !911
  br label %if.end.29, !dbg !1062

if.end.29:                                        ; preds = %do.body, %if.then.26
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 1, !dbg !1064
  %13 = bitcast %struct._frame** %f_back to i64*, !dbg !1065
  store i64 %11, i64* %13, align 8, !dbg !1065, !tbaa !1066
  store i8 1, i8* %gi_running, align 1, !dbg !1067, !tbaa !957
  %call = tail call %struct._object* @PyEval_EvalFrameEx(%struct._frame* %1, i32 %exc) #1, !dbg !1068
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !605, metadata !875), !dbg !1051
  store i8 0, i8* %gi_running, align 1, !dbg !1069, !tbaa !957
  %14 = bitcast %struct._frame** %f_back to %struct._object**, !dbg !1070
  %15 = load %struct._object*, %struct._object** %14, align 8, !dbg !1070, !tbaa !1066
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !608, metadata !875), !dbg !1070
  %cmp36 = icmp eq %struct._object* %15, null, !dbg !1072
  br i1 %cmp36, label %if.end.49, label %if.then.37, !dbg !1073

if.then.37:                                       ; preds = %if.end.29
  store %struct._frame* null, %struct._frame** %f_back, align 8, !dbg !1074, !tbaa !1066
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !610, metadata !875), !dbg !1076
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1078
  %16 = load i64, i64* %ob_refcnt41, align 8, !dbg !1078, !tbaa !911
  %dec = add i64 %16, -1, !dbg !1078
  store i64 %dec, i64* %ob_refcnt41, align 8, !dbg !1078, !tbaa !911
  %cmp42 = icmp eq i64 %dec, 0, !dbg !1078
  br i1 %cmp42, label %if.else.44, label %if.end.49, !dbg !1080

if.else.44:                                       ; preds = %if.then.37
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1081
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1081, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1081
  %tp_dealloc45 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !1081
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1081, !tbaa !916
  tail call void %18(%struct._object* %15) #1, !dbg !1081
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.44, %if.then.37, %if.end.29
  %tobool52 = icmp eq %struct._object* %call, null, !dbg !1083
  br i1 %tobool52, label %if.then.107, label %land.lhs.true.53, !dbg !1084

land.lhs.true.53:                                 ; preds = %if.end.49
  %19 = load %struct._object**, %struct._object*** %f_stacktop, align 8, !dbg !1085, !tbaa !892
  %cmp55 = icmp eq %struct._object** %19, null, !dbg !1086
  br i1 %cmp55, label %if.then.56, label %cleanup, !dbg !1087

if.then.56:                                       ; preds = %land.lhs.true.53
  %cmp57 = icmp eq %struct._object* %call, @_Py_NoneStruct, !dbg !1088
  %20 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !1089, !tbaa !919
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !1091

if.then.58:                                       ; preds = %if.then.56
  tail call void @PyErr_SetNone(%struct._object* %20) #1, !dbg !1092
  br label %if.then.84, !dbg !1093

if.else.59:                                       ; preds = %if.then.56
  %call61 = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %20, %struct._object* %call, i8* null) #1, !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct._object* %call61, i64 0, metadata !614, metadata !875), !dbg !1095
  %cmp62 = icmp eq %struct._object* %call61, null, !dbg !1096
  br i1 %cmp62, label %if.then.84, label %if.then.63, !dbg !1097

if.then.63:                                       ; preds = %if.else.59
  %21 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !1098, !tbaa !919
  tail call void @PyErr_SetObject(%struct._object* %21, %struct._object* %call61) #1, !dbg !1099
  tail call void @llvm.dbg.value(metadata %struct._object* %call61, i64 0, metadata !619, metadata !875), !dbg !1100
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %call61, i64 0, i32 0, !dbg !1102
  %22 = load i64, i64* %ob_refcnt67, align 8, !dbg !1102, !tbaa !911
  %dec68 = add i64 %22, -1, !dbg !1102
  store i64 %dec68, i64* %ob_refcnt67, align 8, !dbg !1102, !tbaa !911
  %cmp69 = icmp eq i64 %dec68, 0, !dbg !1102
  br i1 %cmp69, label %if.else.71, label %if.then.84, !dbg !1104

if.else.71:                                       ; preds = %if.then.63
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %call61, i64 0, i32 1, !dbg !1105
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !1105, !tbaa !915
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1105
  %tp_dealloc74 = bitcast {}** %tp_dealloc73 to void (%struct._object*)**, !dbg !1105
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8, !dbg !1105, !tbaa !916
  tail call void %24(%struct._object* %call61) #1, !dbg !1105
  br label %if.then.84

if.then.84:                                       ; preds = %if.then.58, %if.else.71, %if.then.63, %if.else.59
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !623, metadata !875), !dbg !1107
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !605, metadata !875), !dbg !1051
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !625, metadata !875), !dbg !1109
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1111
  %25 = load i64, i64* %ob_refcnt88, align 8, !dbg !1111, !tbaa !911
  %dec89 = add i64 %25, -1, !dbg !1111
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1111, !tbaa !911
  %cmp90 = icmp eq i64 %dec89, 0, !dbg !1111
  br i1 %cmp90, label %if.else.92, label %if.then.107, !dbg !1113

if.else.92:                                       ; preds = %if.then.84
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1114
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1114, !tbaa !915
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1114
  %tp_dealloc95 = bitcast {}** %tp_dealloc94 to void (%struct._object*)**, !dbg !1114
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8, !dbg !1114, !tbaa !916
  tail call void %27(%struct._object* %call) #1, !dbg !1114
  br label %if.then.107

if.then.107:                                      ; preds = %if.then.84, %if.else.92, %if.end.49
  %f_exc_type = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 9, !dbg !1116
  %28 = load %struct._object*, %struct._object** %f_exc_type, align 8, !dbg !1116, !tbaa !1117
  tail call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !629, metadata !875), !dbg !1118
  %f_exc_value = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 10, !dbg !1119
  %29 = load %struct._object*, %struct._object** %f_exc_value, align 8, !dbg !1119, !tbaa !1120
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !632, metadata !875), !dbg !1121
  %f_exc_traceback = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 11, !dbg !1122
  %30 = load %struct._object*, %struct._object** %f_exc_traceback, align 8, !dbg !1122, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct._object* %30, i64 0, metadata !633, metadata !875), !dbg !1124
  tail call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !634, metadata !875), !dbg !1125
  %cmp116 = icmp eq %struct._object* %28, null, !dbg !1127
  %31 = bitcast %struct._object** %f_exc_type to i8*, !dbg !1128
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 24, i32 8, i1 false), !dbg !1129
  br i1 %cmp116, label %if.end.132, label %do.body.118, !dbg !1128

do.body.118:                                      ; preds = %if.then.107
  tail call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !636, metadata !875), !dbg !1130
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !1132
  %32 = load i64, i64* %ob_refcnt121, align 8, !dbg !1132, !tbaa !911
  %dec122 = add i64 %32, -1, !dbg !1132
  store i64 %dec122, i64* %ob_refcnt121, align 8, !dbg !1132, !tbaa !911
  %cmp123 = icmp eq i64 %dec122, 0, !dbg !1132
  br i1 %cmp123, label %if.else.125, label %if.end.132, !dbg !1134

if.else.125:                                      ; preds = %do.body.118
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 1, !dbg !1135
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8, !dbg !1135, !tbaa !915
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1135
  %tp_dealloc128 = bitcast {}** %tp_dealloc127 to void (%struct._object*)**, !dbg !1135
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8, !dbg !1135, !tbaa !916
  tail call void %34(%struct._object* %28) #1, !dbg !1135
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.125, %do.body.118, %if.then.107
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !639, metadata !875), !dbg !1137
  %cmp138 = icmp eq %struct._object* %29, null, !dbg !1139
  br i1 %cmp138, label %if.end.154, label %do.body.140, !dbg !1140

do.body.140:                                      ; preds = %if.end.132
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !641, metadata !875), !dbg !1141
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1143
  %35 = load i64, i64* %ob_refcnt143, align 8, !dbg !1143, !tbaa !911
  %dec144 = add i64 %35, -1, !dbg !1143
  store i64 %dec144, i64* %ob_refcnt143, align 8, !dbg !1143, !tbaa !911
  %cmp145 = icmp eq i64 %dec144, 0, !dbg !1143
  br i1 %cmp145, label %if.else.147, label %if.end.154, !dbg !1145

if.else.147:                                      ; preds = %do.body.140
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1146
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !1146, !tbaa !915
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !1146
  %tp_dealloc150 = bitcast {}** %tp_dealloc149 to void (%struct._object*)**, !dbg !1146
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8, !dbg !1146, !tbaa !916
  tail call void %37(%struct._object* %29) #1, !dbg !1146
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.147, %do.body.140, %if.end.132
  tail call void @llvm.dbg.value(metadata %struct._object* %30, i64 0, metadata !644, metadata !875), !dbg !1148
  %cmp160 = icmp eq %struct._object* %30, null, !dbg !1150
  br i1 %cmp160, label %if.end.176, label %do.body.162, !dbg !1151

do.body.162:                                      ; preds = %if.end.154
  tail call void @llvm.dbg.value(metadata %struct._object* %30, i64 0, metadata !646, metadata !875), !dbg !1152
  %ob_refcnt165 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 0, !dbg !1154
  %38 = load i64, i64* %ob_refcnt165, align 8, !dbg !1154, !tbaa !911
  %dec166 = add i64 %38, -1, !dbg !1154
  store i64 %dec166, i64* %ob_refcnt165, align 8, !dbg !1154, !tbaa !911
  %cmp167 = icmp eq i64 %dec166, 0, !dbg !1154
  br i1 %cmp167, label %if.else.169, label %if.end.176, !dbg !1156

if.else.169:                                      ; preds = %do.body.162
  %ob_type170 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 1, !dbg !1157
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type170, align 8, !dbg !1157, !tbaa !915
  %tp_dealloc171 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !1157
  %tp_dealloc172 = bitcast {}** %tp_dealloc171 to void (%struct._object*)**, !dbg !1157
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8, !dbg !1157, !tbaa !916
  tail call void %40(%struct._object* %30) #1, !dbg !1157
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.169, %do.body.162, %if.end.154
  %41 = load %struct._frame*, %struct._frame** %gi_frame, align 8, !dbg !1159, !tbaa !882
  %f_gen = getelementptr inbounds %struct._frame, %struct._frame* %41, i64 0, i32 12, !dbg !1160
  store %struct._object* null, %struct._object** %f_gen, align 8, !dbg !1161, !tbaa !1162
  store %struct._frame* null, %struct._frame** %gi_frame, align 8, !dbg !1163, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !649, metadata !875), !dbg !1164
  %ob_refcnt184 = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 0, i32 0, i32 0, !dbg !1166
  %42 = load i64, i64* %ob_refcnt184, align 8, !dbg !1166, !tbaa !911
  %dec185 = add i64 %42, -1, !dbg !1166
  store i64 %dec185, i64* %ob_refcnt184, align 8, !dbg !1166, !tbaa !911
  %cmp186 = icmp eq i64 %dec185, 0, !dbg !1166
  br i1 %cmp186, label %if.else.188, label %cleanup, !dbg !1168

if.else.188:                                      ; preds = %if.end.176
  %43 = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 0, i32 0, !dbg !1164
  %ob_type189 = getelementptr inbounds %struct._frame, %struct._frame* %1, i64 0, i32 0, i32 0, i32 1, !dbg !1169
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type189, align 8, !dbg !1169, !tbaa !915
  %tp_dealloc190 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i64 0, i32 4, !dbg !1169
  %tp_dealloc191 = bitcast {}** %tp_dealloc190 to void (%struct._object*)**, !dbg !1169
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191, align 8, !dbg !1169, !tbaa !916
  tail call void %45(%struct._object* %43) #1, !dbg !1169
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.53, %if.end.176, %if.else.188, %if.then.11, %if.then.8, %if.then.19, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.19 ], [ null, %if.then.8 ], [ null, %if.then.11 ], [ null, %if.else.188 ], [ null, %if.end.176 ], [ %call, %land.lhs.true.53 ]
  ret %struct._object* %retval.0, !dbg !1171
}

; Function Attrs: nounwind uwtable
define i32 @_PyGen_FetchStopIterationValue(%struct._object** nocapture %pvalue) #0 {
entry:
  %et = alloca %struct._object*, align 8
  %ev = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object** %pvalue, i64 0, metadata !541, metadata !875), !dbg !1172
  %0 = bitcast %struct._object** %et to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1173
  %1 = bitcast %struct._object** %ev to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1173
  %2 = bitcast %struct._object** %tb to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !545, metadata !875), !dbg !1174
  %3 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !1175, !tbaa !919
  %call = tail call i32 @PyErr_ExceptionMatches(%struct._object* %3) #1, !dbg !1176
  %tobool = icmp eq i32 %call, 0, !dbg !1176
  br i1 %tobool, label %if.else.47, label %if.then, !dbg !1177

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %et, i64 0, metadata !542, metadata !875), !dbg !1178
  tail call void @llvm.dbg.value(metadata %struct._object** %ev, i64 0, metadata !543, metadata !875), !dbg !1179
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !544, metadata !875), !dbg !1180
  call void @PyErr_Fetch(%struct._object** nonnull %et, %struct._object** nonnull %ev, %struct._object** nonnull %tb) #1, !dbg !1181
  call void @llvm.dbg.value(metadata %struct._object** %et, i64 0, metadata !542, metadata !875), !dbg !1178
  %4 = load %struct._object*, %struct._object** %et, align 8, !dbg !1182, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !546, metadata !875), !dbg !1182
  %cmp = icmp eq %struct._object* %4, null, !dbg !1184
  br i1 %cmp, label %if.end.6, label %do.body.2, !dbg !1185

do.body.2:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !550, metadata !875), !dbg !1186
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1188
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1188, !tbaa !911
  %dec = add i64 %5, -1, !dbg !1188
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1188, !tbaa !911
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1188
  br i1 %cmp3, label %if.else, label %if.end.6, !dbg !1190

if.else:                                          ; preds = %do.body.2
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1191
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1191, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1191
  %tp_dealloc5 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !1191
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc5, align 8, !dbg !1191, !tbaa !916
  call void %7(%struct._object* %4) #1, !dbg !1191
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %do.body.2, %if.then
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !544, metadata !875), !dbg !1180
  %8 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1193, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !553, metadata !875), !dbg !1193
  %cmp11 = icmp eq %struct._object* %8, null, !dbg !1195
  br i1 %cmp11, label %if.end.26, label %do.body.13, !dbg !1196

do.body.13:                                       ; preds = %if.end.6
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !555, metadata !875), !dbg !1197
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1199
  %9 = load i64, i64* %ob_refcnt15, align 8, !dbg !1199, !tbaa !911
  %dec16 = add i64 %9, -1, !dbg !1199
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1199, !tbaa !911
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !1199
  br i1 %cmp17, label %if.else.19, label %if.end.26, !dbg !1201

if.else.19:                                       ; preds = %do.body.13
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1202
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1202, !tbaa !915
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1202
  %tp_dealloc22 = bitcast {}** %tp_dealloc21 to void (%struct._object*)**, !dbg !1202
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1202, !tbaa !916
  call void %11(%struct._object* %8) #1, !dbg !1202
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.19, %do.body.13, %if.end.6
  call void @llvm.dbg.value(metadata %struct._object** %ev, i64 0, metadata !543, metadata !875), !dbg !1179
  %12 = load %struct._object*, %struct._object** %ev, align 8, !dbg !1204, !tbaa !919
  %tobool29 = icmp eq %struct._object* %12, null, !dbg !1206
  br i1 %tobool29, label %if.then.54, label %if.then.30, !dbg !1207

if.then.30:                                       ; preds = %if.end.26
  %value31 = getelementptr inbounds %struct._object, %struct._object* %12, i64 4, !dbg !1208
  %13 = bitcast %struct._object* %value31 to %struct._object**, !dbg !1208
  %14 = load %struct._object*, %struct._object** %13, align 8, !dbg !1208, !tbaa !1209
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !545, metadata !875), !dbg !1174
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1211
  %15 = load i64, i64* %ob_refcnt32, align 8, !dbg !1211, !tbaa !911
  %inc = add i64 %15, 1, !dbg !1211
  store i64 %inc, i64* %ob_refcnt32, align 8, !dbg !1211, !tbaa !911
  call void @llvm.dbg.value(metadata %struct._object** %ev, i64 0, metadata !543, metadata !875), !dbg !1179
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !558, metadata !875), !dbg !1204
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1212
  %16 = load i64, i64* %ob_refcnt35, align 8, !dbg !1212, !tbaa !911
  %dec36 = add i64 %16, -1, !dbg !1212
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1212, !tbaa !911
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !1212
  br i1 %cmp37, label %if.else.39, label %if.end.52, !dbg !1214

if.else.39:                                       ; preds = %if.then.30
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1215
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1215, !tbaa !915
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1215
  %tp_dealloc42 = bitcast {}** %tp_dealloc41 to void (%struct._object*)**, !dbg !1215
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1215, !tbaa !916
  call void %18(%struct._object* %12) #1, !dbg !1215
  br label %if.end.52

if.else.47:                                       ; preds = %entry
  %call48 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1217
  %tobool49 = icmp eq %struct._object* %call48, null, !dbg !1217
  br i1 %tobool49, label %if.then.54, label %cleanup, !dbg !1219

if.end.52:                                        ; preds = %if.else.39, %if.then.30
  %cmp53 = icmp eq %struct._object* %14, null, !dbg !1220
  br i1 %cmp53, label %if.then.54, label %if.end.57, !dbg !1222

if.then.54:                                       ; preds = %if.else.47, %if.end.26, %if.end.52
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !545, metadata !875), !dbg !1174
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1223, !tbaa !911
  %inc56 = add i64 %19, 1, !dbg !1223
  store i64 %inc56, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1223, !tbaa !911
  br label %if.end.57, !dbg !1225

if.end.57:                                        ; preds = %if.then.54, %if.end.52
  %value.1 = phi %struct._object* [ @_Py_NoneStruct, %if.then.54 ], [ %14, %if.end.52 ]
  store %struct._object* %value.1, %struct._object** %pvalue, align 8, !dbg !1226, !tbaa !919
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %if.else.47, %if.end.57
  %retval.0 = phi i32 [ 0, %if.end.57 ], [ -1, %if.else.47 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1228
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1228
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1228
  ret i32 %retval.0, !dbg !1228
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind uwtable
define internal void @gen_dealloc(%struct.PyGenObject* %gen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !714, metadata !875), !dbg !1229
  %0 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 0, !dbg !1230
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !715, metadata !875), !dbg !1231
  %add.ptr = getelementptr %struct.PyGenObject, %struct.PyGenObject* %gen, i64 -1, i32 2, !dbg !1232
  %gc_refs = getelementptr inbounds i8, i8* %add.ptr, i64 16, !dbg !1234
  %1 = bitcast i8* %gc_refs to i64*, !dbg !1234
  %2 = load i64, i64* %1, align 8, !dbg !1234, !tbaa !1237
  %and = and i64 %2, 1, !dbg !1234
  %or = or i64 %and, -4, !dbg !1234
  store i64 %or, i64* %1, align 8, !dbg !1234, !tbaa !1237
  %gc_next = bitcast i8* %add.ptr to %union._gc_head**, !dbg !1239
  %3 = bitcast i8* %add.ptr to i64*, !dbg !1239
  %4 = load i64, i64* %3, align 8, !dbg !1239, !tbaa !1241
  %gc_prev = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !1239
  %5 = bitcast i8* %gc_prev to i64**, !dbg !1239
  %6 = load i64*, i64** %5, align 8, !dbg !1239, !tbaa !1242
  store i64 %4, i64* %6, align 8, !dbg !1239, !tbaa !1241
  %7 = ptrtoint i64* %6 to i64, !dbg !1239
  %8 = bitcast i8* %add.ptr to %struct.anon**, !dbg !1239
  %9 = load %struct.anon*, %struct.anon** %8, align 8, !dbg !1239, !tbaa !1241
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %9, i64 0, i32 1, !dbg !1239
  %10 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1239
  store i64 %7, i64* %10, align 8, !dbg !1239, !tbaa !1242
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1239, !tbaa !1241
  %gi_weakreflist = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 4, !dbg !1243
  %11 = load %struct._object*, %struct._object** %gi_weakreflist, align 8, !dbg !1243, !tbaa !1245
  %cmp = icmp eq %struct._object* %11, null, !dbg !1246
  br i1 %cmp, label %do.body.18, label %if.then, !dbg !1247

if.then:                                          ; preds = %entry
  tail call void @PyObject_ClearWeakRefs(%struct._object* %0) #1, !dbg !1248
  %.pre = load i64, i64* %1, align 8, !dbg !1249, !tbaa !1237
  br label %do.body.18, !dbg !1248

do.body.18:                                       ; preds = %entry, %if.then
  %12 = phi i64 [ %or, %entry ], [ %.pre, %if.then ], !dbg !1249
  %shr.mask = and i64 %12, -2, !dbg !1249
  %cmp23 = icmp eq i64 %shr.mask, -4, !dbg !1249
  br i1 %cmp23, label %do.body.26, label %if.then.24, !dbg !1251

if.then.24:                                       ; preds = %do.body.18
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1252
  unreachable, !dbg !1252

do.body.26:                                       ; preds = %do.body.18
  %and29 = and i64 %12, 1, !dbg !1254
  %or30 = or i64 %and29, -6, !dbg !1254
  store i64 %or30, i64* %1, align 8, !dbg !1254, !tbaa !1237
  %13 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1257, !tbaa !919
  store i64 %13, i64* %3, align 8, !dbg !1257, !tbaa !1241
  %14 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1257, !tbaa !919
  %gc_prev38 = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 0, i32 1, !dbg !1257
  %15 = load %union._gc_head*, %union._gc_head** %gc_prev38, align 8, !dbg !1257, !tbaa !1242
  %16 = bitcast i8* %gc_prev to %union._gc_head**, !dbg !1257
  store %union._gc_head* %15, %union._gc_head** %16, align 8, !dbg !1257, !tbaa !1242
  %17 = bitcast %union._gc_head* %15 to i8**, !dbg !1257
  store i8* %add.ptr, i8** %17, align 8, !dbg !1257, !tbaa !1241
  %18 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1257, !tbaa !919
  %gc_prev46 = getelementptr inbounds %struct.anon, %struct.anon* %18, i64 0, i32 1, !dbg !1257
  %19 = bitcast %union._gc_head** %gc_prev46 to i8**, !dbg !1257
  store i8* %add.ptr, i8** %19, align 8, !dbg !1257, !tbaa !1242
  %call = tail call i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %0) #1, !dbg !1259
  %tobool = icmp eq i32 %call, 0, !dbg !1259
  br i1 %tobool, label %do.body.51, label %cleanup, !dbg !1261

do.body.51:                                       ; preds = %do.body.26
  %20 = load i64, i64* %1, align 8, !dbg !1262, !tbaa !1237
  %and57 = and i64 %20, 1, !dbg !1262
  %or58 = or i64 %and57, -4, !dbg !1262
  store i64 %or58, i64* %1, align 8, !dbg !1262, !tbaa !1237
  %21 = load i64, i64* %3, align 8, !dbg !1265, !tbaa !1241
  %22 = load i64*, i64** %5, align 8, !dbg !1265, !tbaa !1242
  store i64 %21, i64* %22, align 8, !dbg !1265, !tbaa !1241
  %23 = ptrtoint i64* %22 to i64, !dbg !1265
  %24 = load %struct.anon*, %struct.anon** %8, align 8, !dbg !1265, !tbaa !1241
  %gc_prev74 = getelementptr inbounds %struct.anon, %struct.anon* %24, i64 0, i32 1, !dbg !1265
  %25 = bitcast %union._gc_head** %gc_prev74 to i64*, !dbg !1265
  store i64 %23, i64* %25, align 8, !dbg !1265, !tbaa !1242
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1265, !tbaa !1241
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 1, !dbg !1267
  %26 = bitcast %struct._frame** %gi_frame to %struct._object**, !dbg !1267
  %27 = load %struct._object*, %struct._object** %26, align 8, !dbg !1267, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !722, metadata !875), !dbg !1267
  %cmp80 = icmp eq %struct._object* %27, null, !dbg !1269
  br i1 %cmp80, label %if.end.90, label %if.then.81, !dbg !1270

if.then.81:                                       ; preds = %do.body.51
  store %struct._frame* null, %struct._frame** %gi_frame, align 8, !dbg !1271, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !724, metadata !875), !dbg !1273
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1275
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !1275, !tbaa !911
  %dec = add i64 %28, -1, !dbg !1275
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1275, !tbaa !911
  %cmp84 = icmp eq i64 %dec, 0, !dbg !1275
  br i1 %cmp84, label %if.else, label %if.end.90, !dbg !1277

if.else:                                          ; preds = %if.then.81
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1278
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1278, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1278
  %tp_dealloc86 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !1278
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !1278, !tbaa !916
  tail call void %30(%struct._object* %27) #1, !dbg !1278
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.81, %do.body.51
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 3, !dbg !1280
  %31 = load %struct._object*, %struct._object** %gi_code, align 8, !dbg !1280, !tbaa !1282
  tail call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !728, metadata !875), !dbg !1280
  %cmp95 = icmp eq %struct._object* %31, null, !dbg !1283
  br i1 %cmp95, label %if.end.111, label %if.then.96, !dbg !1284

if.then.96:                                       ; preds = %if.end.90
  store %struct._object* null, %struct._object** %gi_code, align 8, !dbg !1285, !tbaa !1282
  tail call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !730, metadata !875), !dbg !1287
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1289
  %32 = load i64, i64* %ob_refcnt100, align 8, !dbg !1289, !tbaa !911
  %dec101 = add i64 %32, -1, !dbg !1289
  store i64 %dec101, i64* %ob_refcnt100, align 8, !dbg !1289, !tbaa !911
  %cmp102 = icmp eq i64 %dec101, 0, !dbg !1289
  br i1 %cmp102, label %if.else.104, label %if.end.111, !dbg !1291

if.else.104:                                      ; preds = %if.then.96
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 1, !dbg !1292
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8, !dbg !1292, !tbaa !915
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1292
  %tp_dealloc107 = bitcast {}** %tp_dealloc106 to void (%struct._object*)**, !dbg !1292
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8, !dbg !1292, !tbaa !916
  tail call void %34(%struct._object* %31) #1, !dbg !1292
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.104, %if.then.96, %if.end.90
  %35 = bitcast %struct.PyGenObject* %gen to i8*, !dbg !1294
  tail call void @PyObject_GC_Del(i8* %35) #1, !dbg !1295
  br label %cleanup, !dbg !1296

cleanup:                                          ; preds = %do.body.26, %if.end.111
  ret void, !dbg !1296
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_repr(%struct.PyGenObject* %gen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !736, metadata !875), !dbg !1297
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 3, !dbg !1298
  %0 = bitcast %struct._object** %gi_code to %struct.PyCodeObject**, !dbg !1298
  %1 = load %struct.PyCodeObject*, %struct.PyCodeObject** %0, align 8, !dbg !1298, !tbaa !1282
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %1, i64 0, i32 14, !dbg !1299
  %2 = load %struct._object*, %struct._object** %co_name, align 8, !dbg !1299, !tbaa !1300
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %struct._object* %2, %struct.PyGenObject* %gen) #1, !dbg !1301
  ret %struct._object* %call, !dbg !1302
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gen_traverse(%struct.PyGenObject* nocapture readonly %gen, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !741, metadata !875), !dbg !1303
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !742, metadata !875), !dbg !1304
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !743, metadata !875), !dbg !1305
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 1, !dbg !1306
  %0 = bitcast %struct._frame** %gi_frame to %struct._object**, !dbg !1306
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1306, !tbaa !882
  %tobool = icmp eq %struct._object* %1, null, !dbg !1306
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !1308

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !744, metadata !875), !dbg !1309
  %tobool2 = icmp eq i32 %call, 0, !dbg !1311
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 3, !dbg !1313
  %2 = load %struct._object*, %struct._object** %gi_code, align 8, !dbg !1313, !tbaa !1282
  %tobool6 = icmp eq %struct._object* %2, null, !dbg !1313
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !1315

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %2, i8* %arg) #1, !dbg !1316
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !748, metadata !875), !dbg !1316
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1318
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !1320

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !1321
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_iternext(%struct.PyGenObject* nocapture %gen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !754, metadata !875), !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !755, metadata !875), !dbg !1323
  %call = tail call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* null, i32 0), !dbg !1324
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !756, metadata !875), !dbg !1325
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !757, metadata !875), !dbg !1326
  ret %struct._object* %call, !dbg !1328
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyGen_New(%struct._frame* %f) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._frame* %f, i64 0, metadata !568, metadata !875), !dbg !1329
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type to %struct._typeobject*)) #1, !dbg !1330
  %cmp = icmp eq %struct._object* %call, null, !dbg !1331
  br i1 %cmp, label %do.body, label %if.end.4, !dbg !1332

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !570, metadata !875), !dbg !1333
  %ob_refcnt = getelementptr inbounds %struct._frame, %struct._frame* %f, i64 0, i32 0, i32 0, i32 0, !dbg !1335
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1335, !tbaa !911
  %dec = add i64 %0, -1, !dbg !1335
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1335, !tbaa !911
  %cmp1 = icmp eq i64 %dec, 0, !dbg !1335
  br i1 %cmp1, label %if.else, label %cleanup, !dbg !1337

if.else:                                          ; preds = %do.body
  %1 = getelementptr inbounds %struct._frame, %struct._frame* %f, i64 0, i32 0, i32 0, !dbg !1333
  %ob_type = getelementptr inbounds %struct._frame, %struct._frame* %f, i64 0, i32 0, i32 0, i32 1, !dbg !1338
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1338, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1338
  %tp_dealloc3 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !1338
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc3, align 8, !dbg !1338, !tbaa !916
  tail call void %3(%struct._object* %1) #1, !dbg !1338
  br label %cleanup

if.end.4:                                         ; preds = %entry
  %gi_frame = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1340
  %4 = bitcast %struct._object* %gi_frame to %struct._frame**, !dbg !1340
  store %struct._frame* %f, %struct._frame** %4, align 8, !dbg !1341, !tbaa !882
  %f_gen = getelementptr inbounds %struct._frame, %struct._frame* %f, i64 0, i32 12, !dbg !1342
  store %struct._object* %call, %struct._object** %f_gen, align 8, !dbg !1343, !tbaa !1162
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %f, i64 0, i32 2, !dbg !1344
  %5 = bitcast %struct.PyCodeObject** %f_code to %struct._object**, !dbg !1344
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1344, !tbaa !937
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1344
  %7 = load i64, i64* %ob_refcnt5, align 8, !dbg !1344, !tbaa !911
  %inc = add i64 %7, 1, !dbg !1344
  store i64 %inc, i64* %ob_refcnt5, align 8, !dbg !1344, !tbaa !911
  %8 = ptrtoint %struct._object* %6 to i64, !dbg !1345
  %9 = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, i32 0, !dbg !1346
  store i64 %8, i64* %9, align 8, !dbg !1346, !tbaa !1282
  %gi_running = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1347
  %10 = bitcast %struct._typeobject** %gi_running to i8*, !dbg !1347
  store i8 0, i8* %10, align 1, !dbg !1348, !tbaa !957
  %gi_weakreflist = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, i32 1, !dbg !1349
  %11 = bitcast %struct._typeobject** %gi_weakreflist to %struct._object**, !dbg !1349
  store %struct._object* null, %struct._object** %11, align 8, !dbg !1350, !tbaa !1245
  %add.ptr = getelementptr %struct._object, %struct._object* %call, i64 -2, i32 1, !dbg !1351
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1353
  %12 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1353
  %13 = load i64, i64* %12, align 8, !dbg !1353, !tbaa !1237
  %shr.mask = and i64 %13, -2, !dbg !1353
  %cmp8 = icmp eq i64 %shr.mask, -4, !dbg !1353
  br i1 %cmp8, label %do.body.11, label %if.then.9, !dbg !1355

if.then.9:                                        ; preds = %if.end.4
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1356
  unreachable, !dbg !1356

do.body.11:                                       ; preds = %if.end.4
  %and = and i64 %13, 1, !dbg !1358
  %or = or i64 %and, -6, !dbg !1358
  store i64 %or, i64* %12, align 8, !dbg !1358, !tbaa !1237
  %14 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1361, !tbaa !919
  %15 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1361
  store i64 %14, i64* %15, align 8, !dbg !1361, !tbaa !1241
  %16 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1361, !tbaa !919
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 0, i32 1, !dbg !1361
  %17 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1361, !tbaa !1242
  %gc_prev21 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1361
  %18 = bitcast %struct._typeobject** %gc_prev21 to %union._gc_head**, !dbg !1361
  store %union._gc_head* %17, %union._gc_head** %18, align 8, !dbg !1361, !tbaa !1242
  %19 = bitcast %union._gc_head* %17 to %struct._typeobject***, !dbg !1361
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %19, align 8, !dbg !1361, !tbaa !1241
  %20 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1361, !tbaa !919
  %gc_prev27 = getelementptr inbounds %struct.anon, %struct.anon* %20, i64 0, i32 1, !dbg !1361
  %21 = bitcast %union._gc_head** %gc_prev27 to %struct._typeobject***, !dbg !1361
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %21, align 8, !dbg !1361, !tbaa !1242
  br label %cleanup, !dbg !1363

cleanup:                                          ; preds = %if.else, %do.body, %do.body.11
  %retval.0 = phi %struct._object* [ %call, %do.body.11 ], [ null, %do.body ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !1364
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind readonly uwtable
define i32 @PyGen_NeedsFinalizing(%struct.PyGenObject* nocapture readonly %gen) #4 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !580, metadata !875), !dbg !1365
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 1, !dbg !1366
  %0 = load %struct._frame*, %struct._frame** %gi_frame, align 8, !dbg !1366, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._frame* %0, i64 0, metadata !582, metadata !875), !dbg !1367
  %cmp = icmp eq %struct._frame* %0, null, !dbg !1368
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1370

lor.lhs.false:                                    ; preds = %entry
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %0, i64 0, i32 7, !dbg !1371
  %1 = load %struct._object**, %struct._object*** %f_stacktop, align 8, !dbg !1371, !tbaa !892
  %cmp1 = icmp eq %struct._object** %1, null, !dbg !1372
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !1373

for.cond.preheader:                               ; preds = %lor.lhs.false
  %f_iblock = getelementptr inbounds %struct._frame, %struct._frame* %0, i64 0, i32 15, !dbg !1374
  %2 = load i32, i32* %f_iblock, align 4, !dbg !1374, !tbaa !1377
  %cmp2.14 = icmp sgt i32 %2, 0, !dbg !1378
  br i1 %cmp2.14, label %for.body.preheader, label %cleanup, !dbg !1379

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !1380

for.cond:                                         ; preds = %for.body
  %cmp2 = icmp slt i32 %inc, %2, !dbg !1378
  br i1 %cmp2, label %for.body, label %cleanup.loopexit, !dbg !1379

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.015 = phi i32 [ %inc, %for.cond ], [ 0, %for.body.preheader ]
  %idxprom = sext i32 %i.015 to i64, !dbg !1380
  %b_type = getelementptr %struct._frame, %struct._frame* %0, i64 0, i32 17, i64 %idxprom, i32 0, !dbg !1382
  %3 = load i32, i32* %b_type, align 4, !dbg !1382, !tbaa !1383
  %cmp3 = icmp eq i32 %3, 120, !dbg !1385
  %inc = add i32 %i.015, 1, !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !581, metadata !875), !dbg !1387
  br i1 %cmp3, label %for.cond, label %cleanup.loopexit, !dbg !1388

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !1389

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond.preheader, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %for.cond.preheader ], [ %retval.0.ph, %cleanup.loopexit ]
  ret i32 %retval.0, !dbg !1389
}

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare void @PyErr_SetNone(%struct._object*) #2

declare %struct._object* @PyEval_EvalFrameEx(%struct._frame*, i32) #2

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #2

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gen_close_iter(%struct._object* %yf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %yf, i64 0, metadata !696, metadata !875), !dbg !1390
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !697, metadata !875), !dbg !1391
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %yf, i64 0, i32 1, !dbg !1392
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1392, !tbaa !915
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type to %struct._typeobject*), !dbg !1392
  br i1 %cmp, label %if.then, label %if.else, !dbg !1393

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._object* %yf to %struct.PyGenObject*, !dbg !1394
  %call = tail call %struct._object* @gen_close(%struct.PyGenObject* %1, %struct._object* null), !dbg !1396
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !697, metadata !875), !dbg !1391
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !1397
  br i1 %cmp2, label %cleanup.42, label %do.body.26, !dbg !1399

if.else:                                          ; preds = %entry
  %call4 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %yf, %struct._Py_Identifier* nonnull @gen_close_iter.PyId_close) #1, !dbg !1400
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !698, metadata !875), !dbg !1401
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1402
  br i1 %cmp5, label %if.then.6, label %if.else.10, !dbg !1403

if.then.6:                                        ; preds = %if.else
  %2 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1404, !tbaa !919
  %call7 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %2) #1, !dbg !1407
  %tobool = icmp eq i32 %call7, 0, !dbg !1407
  br i1 %tobool, label %if.then.8, label %do.body.23.thread62, !dbg !1408

if.then.8:                                        ; preds = %if.then.6
  tail call void @PyErr_WriteUnraisable(%struct._object* %yf) #1, !dbg !1409
  br label %do.body.23.thread62, !dbg !1409

do.body.23.thread62:                              ; preds = %if.then.8, %if.then.6
  tail call void @PyErr_Clear() #1, !dbg !1410
  br label %cleanup.42, !dbg !1411

if.else.10:                                       ; preds = %if.else
  %call11 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %call4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !1412
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !697, metadata !875), !dbg !1391
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !701, metadata !875), !dbg !1413
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1415
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1415, !tbaa !911
  %dec = add i64 %3, -1, !dbg !1415
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1415, !tbaa !911
  %cmp12 = icmp eq i64 %dec, 0, !dbg !1415
  br i1 %cmp12, label %if.else.14, label %if.end.17, !dbg !1417

if.else.14:                                       ; preds = %if.else.10
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1418
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1418, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1418
  %tp_dealloc16 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !1418
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8, !dbg !1418, !tbaa !916
  tail call void %5(%struct._object* %call4) #1, !dbg !1418
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.10, %if.else.14
  %cmp18 = icmp eq %struct._object* %call11, null, !dbg !1420
  br i1 %cmp18, label %cleanup.42, label %do.body.26, !dbg !1422

do.body.26:                                       ; preds = %if.end.17, %if.then
  %retval1.261 = phi %struct._object* [ %call, %if.then ], [ %call11, %if.end.17 ]
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %retval1.261, i64 0, i32 0, !dbg !1423
  %6 = load i64, i64* %ob_refcnt28, align 8, !dbg !1423, !tbaa !911
  %dec29 = add i64 %6, -1, !dbg !1423
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !1423, !tbaa !911
  %cmp30 = icmp eq i64 %dec29, 0, !dbg !1423
  br i1 %cmp30, label %if.else.32, label %cleanup.42, !dbg !1425

if.else.32:                                       ; preds = %do.body.26
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %retval1.261, i64 0, i32 1, !dbg !1426
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !1426, !tbaa !915
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1426
  %tp_dealloc35 = bitcast {}** %tp_dealloc34 to void (%struct._object*)**, !dbg !1426
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !1426, !tbaa !916
  tail call void %8(%struct._object* %retval1.261) #1, !dbg !1426
  br label %cleanup.42

cleanup.42:                                       ; preds = %do.body.23.thread62, %if.end.17, %do.body.26, %if.else.32, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ 0, %if.else.32 ], [ 0, %do.body.26 ], [ -1, %if.end.17 ], [ 0, %do.body.23.thread62 ]
  ret i32 %retval.1, !dbg !1428
}

declare void @PyErr_Clear() #2

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #2

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare i32 @PyObject_CallFinalizerFromDealloc(%struct._object*) #2

declare void @PyObject_GC_Del(i8*) #2

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_throw(%struct.PyGenObject* nocapture %gen, %struct._object* %args) #0 {
entry:
  %typ = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %val90 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !764, metadata !875), !dbg !1429
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !765, metadata !875), !dbg !1430
  %0 = bitcast %struct._object** %typ to i8*, !dbg !1431
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1431
  %1 = bitcast %struct._object** %tb to i8*, !dbg !1432
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1432
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !767, metadata !875), !dbg !1433
  store %struct._object* null, %struct._object** %tb, align 8, !dbg !1433, !tbaa !919
  %2 = bitcast %struct._object** %val to i8*, !dbg !1434
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1434
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !768, metadata !875), !dbg !1435
  store %struct._object* null, %struct._object** %val, align 8, !dbg !1435, !tbaa !919
  %gen.idx = getelementptr %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 1
  %gen.idx.val = load %struct._frame*, %struct._frame** %gen.idx, align 8, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !688, metadata !875), !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct._frame* %gen.idx.val, i64 0, metadata !689, metadata !875), !dbg !1438
  %tobool.i = icmp eq %struct._frame* %gen.idx.val, null, !dbg !1439
  br i1 %tobool.i, label %gen_yf.exit, label %land.lhs.true.i, !dbg !1440

land.lhs.true.i:                                  ; preds = %entry
  %f_stacktop.i = getelementptr inbounds %struct._frame, %struct._frame* %gen.idx.val, i64 0, i32 7, !dbg !1441
  %3 = load %struct._object**, %struct._object*** %f_stacktop.i, align 8, !dbg !1441, !tbaa !892
  %tobool1.i = icmp eq %struct._object** %3, null, !dbg !1442
  br i1 %tobool1.i, label %gen_yf.exit, label %if.then.i, !dbg !1443

if.then.i:                                        ; preds = %land.lhs.true.i
  %f_code.i = getelementptr inbounds %struct._frame, %struct._frame* %gen.idx.val, i64 0, i32 2, !dbg !1444
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code.i, align 8, !dbg !1444, !tbaa !937
  %co_code.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %4, i64 0, i32 6, !dbg !1445
  %5 = bitcast %struct._object** %co_code.i to %struct.PyBytesObject**, !dbg !1445
  %6 = load %struct.PyBytesObject*, %struct.PyBytesObject** %5, align 8, !dbg !1445, !tbaa !939
  %f_lasti.i = getelementptr inbounds %struct._frame, %struct._frame* %gen.idx.val, i64 0, i32 13, !dbg !1446
  %7 = load i32, i32* %f_lasti.i, align 4, !dbg !1446, !tbaa !943
  %add.i = add i32 %7, 1, !dbg !1447
  %idxprom.i = sext i32 %add.i to i64, !dbg !1448
  %arrayidx.i = getelementptr %struct.PyBytesObject, %struct.PyBytesObject* %6, i64 0, i32 2, i64 %idxprom.i, !dbg !1448
  %8 = load i8, i8* %arrayidx.i, align 1, !dbg !1448, !tbaa !946
  %cmp.i = icmp eq i8 %8, 72, !dbg !1449
  br i1 %cmp.i, label %cleanup.thread.i, label %gen_yf.exit, !dbg !1450

cleanup.thread.i:                                 ; preds = %if.then.i
  %arrayidx5.i = getelementptr %struct._object*, %struct._object** %3, i64 -1, !dbg !1451
  %9 = load %struct._object*, %struct._object** %arrayidx5.i, align 8, !dbg !1451, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !688, metadata !875), !dbg !1436
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1452
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1452, !tbaa !911
  %inc.i = add i64 %10, 1, !dbg !1452
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1452, !tbaa !911
  br label %gen_yf.exit, !dbg !1453

gen_yf.exit:                                      ; preds = %entry, %land.lhs.true.i, %if.then.i, %cleanup.thread.i
  %retval.1.i = phi %struct._object* [ null, %if.then.i ], [ null, %land.lhs.true.i ], [ null, %entry ], [ %9, %cleanup.thread.i ], !dbg !1453
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.1.i, i64 0, metadata !769, metadata !875), !dbg !1454
  tail call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  tail call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 1, i64 3, %struct._object** nonnull %typ, %struct._object** nonnull %val, %struct._object** nonnull %tb) #1, !dbg !1456
  %tobool = icmp eq i32 %call1, 0, !dbg !1456
  br i1 %tobool, label %cleanup.262, label %if.end, !dbg !1458

if.end:                                           ; preds = %gen_yf.exit
  %tobool2 = icmp eq %struct._object* %retval.1.i, null, !dbg !1459
  br i1 %tobool2, label %throw_here, label %if.then.3, !dbg !1460

if.then.3:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %11 = load %struct._object*, %struct._object** %typ, align 8, !dbg !1461, !tbaa !919
  %12 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8, !dbg !1462, !tbaa !919
  %call4 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %11, %struct._object* %12) #1, !dbg !1463
  %tobool5 = icmp eq i32 %call4, 0, !dbg !1463
  br i1 %tobool5, label %if.end.16, label %if.then.6, !dbg !1464

if.then.6:                                        ; preds = %if.then.3
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 2, !dbg !1465
  store i8 1, i8* %gi_running, align 1, !dbg !1466, !tbaa !957
  %call7 = call fastcc i32 @gen_close_iter(%struct._object* %retval.1.i), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %call7, i64 0, metadata !773, metadata !875), !dbg !1468
  store i8 0, i8* %gi_running, align 1, !dbg !1469, !tbaa !957
  call void @llvm.dbg.value(metadata %struct._object* %retval.1.i, i64 0, metadata !774, metadata !875), !dbg !1470
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.1.i, i64 0, i32 0, !dbg !1472
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1472, !tbaa !911
  %dec = add i64 %13, -1, !dbg !1472
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1472, !tbaa !911
  %cmp = icmp eq i64 %dec, 0, !dbg !1472
  br i1 %cmp, label %if.else, label %if.end.11, !dbg !1474

if.else:                                          ; preds = %if.then.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.1.i, i64 0, i32 1, !dbg !1475
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1475, !tbaa !915
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1475
  %tp_dealloc10 = bitcast {}** %tp_dealloc to void (%struct._object*)**, !dbg !1475
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc10, align 8, !dbg !1475, !tbaa !916
  call void %15(%struct._object* %retval.1.i) #1, !dbg !1475
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.else
  %cmp12 = icmp slt i32 %call7, 0, !dbg !1477
  br i1 %cmp12, label %if.then.13, label %throw_here, !dbg !1479

if.then.13:                                       ; preds = %if.end.11
  %call14 = call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* nonnull @_Py_NoneStruct, i32 1), !dbg !1480
  br label %cleanup.262, !dbg !1481

if.end.16:                                        ; preds = %if.then.3
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %retval.1.i, i64 0, i32 1, !dbg !1482
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1482, !tbaa !915
  %cmp18 = icmp eq %struct._typeobject* %16, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type to %struct._typeobject*), !dbg !1482
  br i1 %cmp18, label %if.then.19, label %if.else.23, !dbg !1483

if.then.19:                                       ; preds = %if.end.16
  %gi_running20 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 2, !dbg !1484
  store i8 1, i8* %gi_running20, align 1, !dbg !1486, !tbaa !957
  %17 = bitcast %struct._object* %retval.1.i to %struct.PyGenObject*, !dbg !1487
  %call21 = call %struct._object* @gen_throw(%struct.PyGenObject* %17, %struct._object* %args), !dbg !1488
  call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !770, metadata !875), !dbg !1489
  store i8 0, i8* %gi_running20, align 1, !dbg !1490, !tbaa !957
  br label %do.body.75, !dbg !1491

if.else.23:                                       ; preds = %if.end.16
  %call24 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %retval.1.i, %struct._Py_Identifier* nonnull @gen_throw.PyId_throw) #1, !dbg !1492
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !778, metadata !875), !dbg !1493
  %cmp25 = icmp eq %struct._object* %call24, null, !dbg !1494
  br i1 %cmp25, label %if.then.26, label %if.end.57, !dbg !1495

if.then.26:                                       ; preds = %if.else.23
  %18 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1496, !tbaa !919
  %call27 = call i32 @PyErr_ExceptionMatches(%struct._object* %18) #1, !dbg !1497
  %tobool28 = icmp eq i32 %call27, 0, !dbg !1497
  br i1 %tobool28, label %do.body.30, label %if.end.43, !dbg !1498

do.body.30:                                       ; preds = %if.then.26
  call void @llvm.dbg.value(metadata %struct._object* %retval.1.i, i64 0, metadata !781, metadata !875), !dbg !1499
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %retval.1.i, i64 0, i32 0, !dbg !1501
  %19 = load i64, i64* %ob_refcnt32, align 8, !dbg !1501, !tbaa !911
  %dec33 = add i64 %19, -1, !dbg !1501
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1501, !tbaa !911
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !1501
  br i1 %cmp34, label %if.else.36, label %cleanup.262, !dbg !1503

if.else.36:                                       ; preds = %do.body.30
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1504, !tbaa !915
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1504
  %tp_dealloc39 = bitcast {}** %tp_dealloc38 to void (%struct._object*)**, !dbg !1504
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1504, !tbaa !916
  call void %21(%struct._object* %retval.1.i) #1, !dbg !1504
  br label %cleanup.262

if.end.43:                                        ; preds = %if.then.26
  call void @PyErr_Clear() #1, !dbg !1506
  call void @llvm.dbg.value(metadata %struct._object* %retval.1.i, i64 0, metadata !787, metadata !875), !dbg !1507
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %retval.1.i, i64 0, i32 0, !dbg !1509
  %22 = load i64, i64* %ob_refcnt46, align 8, !dbg !1509, !tbaa !911
  %dec47 = add i64 %22, -1, !dbg !1509
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !1509, !tbaa !911
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !1509
  br i1 %cmp48, label %if.else.50, label %throw_here, !dbg !1511

if.else.50:                                       ; preds = %if.end.43
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1512, !tbaa !915
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1512
  %tp_dealloc53 = bitcast {}** %tp_dealloc52 to void (%struct._object*)**, !dbg !1512
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !1512, !tbaa !916
  call void %24(%struct._object* %retval.1.i) #1, !dbg !1512
  br label %throw_here

if.end.57:                                        ; preds = %if.else.23
  %gi_running58 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 2, !dbg !1514
  store i8 1, i8* %gi_running58, align 1, !dbg !1515, !tbaa !957
  %call59 = call %struct._object* @PyObject_CallObject(%struct._object* %call24, %struct._object* %args) #1, !dbg !1516
  call void @llvm.dbg.value(metadata %struct._object* %call59, i64 0, metadata !770, metadata !875), !dbg !1489
  store i8 0, i8* %gi_running58, align 1, !dbg !1517, !tbaa !957
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !789, metadata !875), !dbg !1518
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %call24, i64 0, i32 0, !dbg !1520
  %25 = load i64, i64* %ob_refcnt63, align 8, !dbg !1520, !tbaa !911
  %dec64 = add i64 %25, -1, !dbg !1520
  store i64 %dec64, i64* %ob_refcnt63, align 8, !dbg !1520, !tbaa !911
  %cmp65 = icmp eq i64 %dec64, 0, !dbg !1520
  br i1 %cmp65, label %if.else.67, label %do.body.75, !dbg !1522

if.else.67:                                       ; preds = %if.end.57
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %call24, i64 0, i32 1, !dbg !1523
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !1523, !tbaa !915
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1523
  %tp_dealloc70 = bitcast {}** %tp_dealloc69 to void (%struct._object*)**, !dbg !1523
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8, !dbg !1523, !tbaa !916
  call void %27(%struct._object* %call24) #1, !dbg !1523
  br label %do.body.75

do.body.75:                                       ; preds = %if.else.67, %if.end.57, %if.then.19
  %ret.1 = phi %struct._object* [ %call21, %if.then.19 ], [ %call59, %if.end.57 ], [ %call59, %if.else.67 ]
  call void @llvm.dbg.value(metadata %struct._object* %retval.1.i, i64 0, metadata !791, metadata !875), !dbg !1525
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %retval.1.i, i64 0, i32 0, !dbg !1527
  %28 = load i64, i64* %ob_refcnt77, align 8, !dbg !1527, !tbaa !911
  %dec78 = add i64 %28, -1, !dbg !1527
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !1527, !tbaa !911
  %cmp79 = icmp eq i64 %dec78, 0, !dbg !1527
  br i1 %cmp79, label %if.else.81, label %if.end.85, !dbg !1529

if.else.81:                                       ; preds = %do.body.75
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1530, !tbaa !915
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1530
  %tp_dealloc84 = bitcast {}** %tp_dealloc83 to void (%struct._object*)**, !dbg !1530
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !1530, !tbaa !916
  call void %30(%struct._object* %retval.1.i) #1, !dbg !1530
  br label %if.end.85

if.end.85:                                        ; preds = %do.body.75, %if.else.81
  %tobool88 = icmp eq %struct._object* %ret.1, null, !dbg !1532
  br i1 %tobool88, label %if.then.89, label %cleanup.262, !dbg !1533

if.then.89:                                       ; preds = %if.end.85
  %31 = bitcast %struct._object** %val90 to i8*, !dbg !1534
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !1534
  %32 = load %struct._frame*, %struct._frame** %gen.idx, align 8, !dbg !1535, !tbaa !882
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %32, i64 0, i32 7, !dbg !1536
  %33 = load %struct._object**, %struct._object*** %f_stacktop, align 8, !dbg !1537, !tbaa !892
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %33, i64 -1, !dbg !1537
  store %struct._object** %incdec.ptr, %struct._object*** %f_stacktop, align 8, !dbg !1537, !tbaa !892
  %34 = load %struct._object*, %struct._object** %incdec.ptr, align 8, !dbg !1538, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %34, i64 0, metadata !770, metadata !875), !dbg !1489
  call void @llvm.dbg.value(metadata %struct._object* %34, i64 0, metadata !796, metadata !875), !dbg !1539
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 0, !dbg !1541
  %35 = load i64, i64* %ob_refcnt93, align 8, !dbg !1541, !tbaa !911
  %dec94 = add i64 %35, -1, !dbg !1541
  store i64 %dec94, i64* %ob_refcnt93, align 8, !dbg !1541, !tbaa !911
  %cmp95 = icmp eq i64 %dec94, 0, !dbg !1541
  br i1 %cmp95, label %if.else.97, label %if.end.101, !dbg !1543

if.else.97:                                       ; preds = %if.then.89
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 1, !dbg !1544
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8, !dbg !1544, !tbaa !915
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !1544
  %tp_dealloc100 = bitcast {}** %tp_dealloc99 to void (%struct._object*)**, !dbg !1544
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1544, !tbaa !916
  call void %37(%struct._object* %34) #1, !dbg !1544
  %.pre = load %struct._frame*, %struct._frame** %gen.idx, align 8, !dbg !1546, !tbaa !882
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.89, %if.else.97
  %38 = phi %struct._frame* [ %32, %if.then.89 ], [ %.pre, %if.else.97 ], !dbg !1546
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %38, i64 0, i32 13, !dbg !1547
  %39 = load i32, i32* %f_lasti, align 4, !dbg !1548, !tbaa !943
  %inc = add i32 %39, 1, !dbg !1548
  store i32 %inc, i32* %f_lasti, align 4, !dbg !1548, !tbaa !943
  call void @llvm.dbg.value(metadata %struct._object** %val90, i64 0, metadata !793, metadata !875), !dbg !1549
  %call105 = call i32 @_PyGen_FetchStopIterationValue(%struct._object** nonnull %val90), !dbg !1550
  %cmp106 = icmp eq i32 %call105, 0, !dbg !1551
  br i1 %cmp106, label %if.then.107, label %if.else.122, !dbg !1552

if.then.107:                                      ; preds = %if.end.101
  call void @llvm.dbg.value(metadata %struct._object** %val90, i64 0, metadata !793, metadata !875), !dbg !1549
  %40 = load %struct._object*, %struct._object** %val90, align 8, !dbg !1553, !tbaa !919
  %call108 = call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* %40, i32 0), !dbg !1554
  call void @llvm.dbg.value(metadata %struct._object* %call108, i64 0, metadata !770, metadata !875), !dbg !1489
  call void @llvm.dbg.value(metadata %struct._object** %val90, i64 0, metadata !793, metadata !875), !dbg !1549
  call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !798, metadata !875), !dbg !1555
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 0, !dbg !1557
  %41 = load i64, i64* %ob_refcnt111, align 8, !dbg !1557, !tbaa !911
  %dec112 = add i64 %41, -1, !dbg !1557
  store i64 %dec112, i64* %ob_refcnt111, align 8, !dbg !1557, !tbaa !911
  %cmp113 = icmp eq i64 %dec112, 0, !dbg !1557
  br i1 %cmp113, label %if.else.115, label %if.end.124, !dbg !1559

if.else.115:                                      ; preds = %if.then.107
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 1, !dbg !1560
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8, !dbg !1560, !tbaa !915
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !1560
  %tp_dealloc118 = bitcast {}** %tp_dealloc117 to void (%struct._object*)**, !dbg !1560
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8, !dbg !1560, !tbaa !916
  call void %43(%struct._object* %40) #1, !dbg !1560
  br label %if.end.124

if.else.122:                                      ; preds = %if.end.101
  %call123 = call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* nonnull @_Py_NoneStruct, i32 1), !dbg !1562
  call void @llvm.dbg.value(metadata %struct._object* %call123, i64 0, metadata !770, metadata !875), !dbg !1489
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.115, %if.then.107, %if.else.122
  %ret.2 = phi %struct._object* [ %call123, %if.else.122 ], [ %call108, %if.then.107 ], [ %call108, %if.else.115 ]
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1564
  br label %cleanup.262, !dbg !1565

throw_here:                                       ; preds = %if.end.43, %if.else.50, %if.end.11, %if.end
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  %44 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1566, !tbaa !919
  %cmp130 = icmp eq %struct._object* %44, @_Py_NoneStruct, !dbg !1568
  br i1 %cmp130, label %if.then.131, label %if.else.132, !dbg !1569

if.then.131:                                      ; preds = %throw_here
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !767, metadata !875), !dbg !1433
  store %struct._object* null, %struct._object** %tb, align 8, !dbg !1570, !tbaa !919
  br label %if.end.138, !dbg !1572

if.else.132:                                      ; preds = %throw_here
  %cmp133 = icmp eq %struct._object* %44, null, !dbg !1573
  br i1 %cmp133, label %if.end.138, label %land.lhs.true, !dbg !1575

land.lhs.true:                                    ; preds = %if.else.132
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %44, i64 0, i32 1, !dbg !1576
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8, !dbg !1576, !tbaa !915
  %cmp135 = icmp eq %struct._typeobject* %45, @PyTraceBack_Type, !dbg !1576
  br i1 %cmp135, label %if.end.138, label %if.then.136, !dbg !1578

if.then.136:                                      ; preds = %land.lhs.true
  %46 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1579, !tbaa !919
  call void @PyErr_SetString(%struct._object* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1581
  br label %cleanup.262, !dbg !1582

if.end.138:                                       ; preds = %if.else.132, %land.lhs.true, %if.then.131
  %47 = phi %struct._object* [ null, %if.else.132 ], [ %44, %land.lhs.true ], [ null, %if.then.131 ], !dbg !1583
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %48 = load %struct._object*, %struct._object** %typ, align 8, !dbg !1585, !tbaa !919
  %ob_refcnt139 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 0, !dbg !1586
  %49 = load i64, i64* %ob_refcnt139, align 8, !dbg !1586, !tbaa !911
  %inc140 = add i64 %49, 1, !dbg !1586
  store i64 %inc140, i64* %ob_refcnt139, align 8, !dbg !1586, !tbaa !911
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  %50 = load %struct._object*, %struct._object** %val, align 8, !dbg !1587, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %50, i64 0, metadata !802, metadata !875), !dbg !1588
  %cmp142 = icmp eq %struct._object* %50, null, !dbg !1590
  %51 = ptrtoint %struct._object* %48 to i64, !dbg !1592
  br i1 %cmp142, label %if.end.146, label %if.then.143, !dbg !1592

if.then.143:                                      ; preds = %if.end.138
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %50, i64 0, i32 0, !dbg !1593
  %52 = load i64, i64* %ob_refcnt144, align 8, !dbg !1593, !tbaa !911
  %inc145 = add i64 %52, 1, !dbg !1593
  store i64 %inc145, i64* %ob_refcnt144, align 8, !dbg !1593, !tbaa !911
  br label %if.end.146, !dbg !1593

if.end.146:                                       ; preds = %if.end.138, %if.then.143
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !804, metadata !875), !dbg !1583
  %cmp151 = icmp eq %struct._object* %47, null, !dbg !1595
  br i1 %cmp151, label %if.end.155, label %if.then.152, !dbg !1597

if.then.152:                                      ; preds = %if.end.146
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 0, !dbg !1598
  %53 = load i64, i64* %ob_refcnt153, align 8, !dbg !1598, !tbaa !911
  %inc154 = add i64 %53, 1, !dbg !1598
  store i64 %inc154, i64* %ob_refcnt153, align 8, !dbg !1598, !tbaa !911
  br label %if.end.155, !dbg !1598

if.end.155:                                       ; preds = %if.end.146, %if.then.152
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 1, !dbg !1600
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8, !dbg !1585, !tbaa !915
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 19, !dbg !1600
  %55 = load i64, i64* %tp_flags, align 8, !dbg !1585, !tbaa !1601
  %and = and i64 %55, 2147483648, !dbg !1600
  %cmp159 = icmp eq i64 %and, 0, !dbg !1600
  br i1 %cmp159, label %if.else.165, label %land.lhs.true.160, !dbg !1600

land.lhs.true.160:                                ; preds = %if.end.155
  %tp_flags161 = getelementptr inbounds %struct._object, %struct._object* %48, i64 10, i32 1, !dbg !1602
  %56 = bitcast %struct._typeobject** %tp_flags161 to i64*, !dbg !1602
  %57 = load i64, i64* %56, align 8, !dbg !1602, !tbaa !1601
  %and162 = and i64 %57, 1073741824, !dbg !1602
  %cmp163 = icmp eq i64 %and162, 0, !dbg !1602
  br i1 %cmp163, label %if.else.165, label %if.then.164, !dbg !1604

if.then.164:                                      ; preds = %land.lhs.true.160
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  call void @PyErr_NormalizeException(%struct._object** nonnull %typ, %struct._object** nonnull %val, %struct._object** nonnull %tb) #1, !dbg !1605
  %.pre355 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1606, !tbaa !919
  br label %if.end.207, !dbg !1605

if.else.165:                                      ; preds = %land.lhs.true.160, %if.end.155
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %and168 = and i64 %55, 1073741824, !dbg !1585
  %cmp169 = icmp eq i64 %and168, 0, !dbg !1585
  br i1 %cmp169, label %if.else.203, label %if.then.170, !dbg !1607

if.then.170:                                      ; preds = %if.else.165
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  %tobool171 = icmp ne %struct._object* %50, null, !dbg !1587
  %cmp173 = icmp ne %struct._object* %50, @_Py_NoneStruct, !dbg !1608
  %or.cond = and i1 %tobool171, %cmp173, !dbg !1609
  br i1 %or.cond, label %if.then.174, label %do.body.176, !dbg !1609

if.then.174:                                      ; preds = %if.then.170
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1610, !tbaa !919
  call void @PyErr_SetString(%struct._object* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #1, !dbg !1612
  br label %do.body.209, !dbg !1613

do.body.176:                                      ; preds = %if.then.170
  call void @llvm.dbg.value(metadata %struct._object* %50, i64 0, metadata !806, metadata !875), !dbg !1614
  br i1 %tobool171, label %do.body.179, label %if.end.192, !dbg !1616

do.body.179:                                      ; preds = %do.body.176
  call void @llvm.dbg.value(metadata %struct._object* %50, i64 0, metadata !813, metadata !875), !dbg !1617
  %ob_refcnt181 = getelementptr inbounds %struct._object, %struct._object* %50, i64 0, i32 0, !dbg !1619
  %59 = load i64, i64* %ob_refcnt181, align 8, !dbg !1619, !tbaa !911
  %dec182 = add i64 %59, -1, !dbg !1619
  store i64 %dec182, i64* %ob_refcnt181, align 8, !dbg !1619, !tbaa !911
  %cmp183 = icmp eq i64 %dec182, 0, !dbg !1619
  br i1 %cmp183, label %if.else.185, label %if.end.192, !dbg !1621

if.else.185:                                      ; preds = %do.body.179
  %ob_type186 = getelementptr inbounds %struct._object, %struct._object* %50, i64 0, i32 1, !dbg !1622
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type186, align 8, !dbg !1622, !tbaa !915
  %tp_dealloc187 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !1622
  %tp_dealloc188 = bitcast {}** %tp_dealloc187 to void (%struct._object*)**, !dbg !1622
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc188, align 8, !dbg !1622, !tbaa !916
  call void %61(%struct._object* %50) #1, !dbg !1622
  %.phi.trans.insert = bitcast %struct._object** %typ to i64*, !dbg !1624
  %.pre353 = load i64, i64* %.phi.trans.insert, align 8, !dbg !1624, !tbaa !919
  %.pre354 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1625, !tbaa !919
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.185, %do.body.179, %do.body.176
  %62 = phi %struct._object* [ %.pre354, %if.else.185 ], [ %47, %do.body.179 ], [ %47, %do.body.176 ], !dbg !1625
  %63 = phi i64 [ %.pre353, %if.else.185 ], [ %51, %do.body.179 ], [ %51, %do.body.176 ], !dbg !1624
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %64 = bitcast %struct._object** %val to i64*, !dbg !1627
  store i64 %63, i64* %64, align 8, !dbg !1627, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %.cast = inttoptr i64 %63 to %struct._object*, !dbg !1628
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %.cast, i64 0, i32 1, !dbg !1628
  %65 = bitcast %struct._typeobject** %ob_type195 to %struct._object**, !dbg !1628
  %66 = load %struct._object*, %struct._object** %65, align 8, !dbg !1628, !tbaa !915
  call void @llvm.dbg.value(metadata %struct._object* %66, i64 0, metadata !766, metadata !875), !dbg !1455
  store %struct._object* %66, %struct._object** %typ, align 8, !dbg !1629, !tbaa !919
  %ob_refcnt196 = getelementptr inbounds %struct._object, %struct._object* %66, i64 0, i32 0, !dbg !1630
  %67 = load i64, i64* %ob_refcnt196, align 8, !dbg !1630, !tbaa !911
  %inc197 = add i64 %67, 1, !dbg !1630
  store i64 %inc197, i64* %ob_refcnt196, align 8, !dbg !1630, !tbaa !911
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  %cmp198 = icmp eq %struct._object* %62, null, !dbg !1631
  br i1 %cmp198, label %if.then.199, label %if.end.207, !dbg !1632

if.then.199:                                      ; preds = %if.end.192
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  %call200 = call %struct._object* @PyException_GetTraceback(%struct._object* %.cast) #1, !dbg !1633
  call void @llvm.dbg.value(metadata %struct._object* %call200, i64 0, metadata !767, metadata !875), !dbg !1433
  store %struct._object* %call200, %struct._object** %tb, align 8, !dbg !1634, !tbaa !919
  br label %if.end.207, !dbg !1635

if.else.203:                                      ; preds = %if.else.165
  %68 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1636, !tbaa !919
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 1, !dbg !1638
  %69 = load i8*, i8** %tp_name, align 8, !dbg !1638, !tbaa !1639
  %call205 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %68, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0), i8* %69) #1, !dbg !1640
  br label %do.body.209, !dbg !1641

if.end.207:                                       ; preds = %if.end.192, %if.then.199, %if.then.164
  %70 = phi %struct._object* [ %62, %if.end.192 ], [ %call200, %if.then.199 ], [ %.pre355, %if.then.164 ], !dbg !1606
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %71 = load %struct._object*, %struct._object** %typ, align 8, !dbg !1642, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  %72 = load %struct._object*, %struct._object** %val, align 8, !dbg !1643, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  call void @PyErr_Restore(%struct._object* %71, %struct._object* %72, %struct._object* %70) #1, !dbg !1644
  %call208 = call fastcc %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* nonnull @_Py_NoneStruct, i32 1), !dbg !1645
  br label %cleanup.262, !dbg !1646

do.body.209:                                      ; preds = %if.then.174, %if.else.203
  call void @llvm.dbg.value(metadata %struct._object** %typ, i64 0, metadata !766, metadata !875), !dbg !1455
  %73 = load %struct._object*, %struct._object** %typ, align 8, !dbg !1647, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %73, i64 0, metadata !816, metadata !875), !dbg !1647
  %ob_refcnt211 = getelementptr inbounds %struct._object, %struct._object* %73, i64 0, i32 0, !dbg !1649
  %74 = load i64, i64* %ob_refcnt211, align 8, !dbg !1649, !tbaa !911
  %dec212 = add i64 %74, -1, !dbg !1649
  store i64 %dec212, i64* %ob_refcnt211, align 8, !dbg !1649, !tbaa !911
  %cmp213 = icmp eq i64 %dec212, 0, !dbg !1649
  br i1 %cmp213, label %if.else.215, label %if.end.219, !dbg !1651

if.else.215:                                      ; preds = %do.body.209
  %ob_type216 = getelementptr inbounds %struct._object, %struct._object* %73, i64 0, i32 1, !dbg !1652
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type216, align 8, !dbg !1652, !tbaa !915
  %tp_dealloc217 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i64 0, i32 4, !dbg !1652
  %tp_dealloc218 = bitcast {}** %tp_dealloc217 to void (%struct._object*)**, !dbg !1652
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc218, align 8, !dbg !1652, !tbaa !916
  call void %76(%struct._object* %73) #1, !dbg !1652
  br label %if.end.219

if.end.219:                                       ; preds = %do.body.209, %if.else.215
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !768, metadata !875), !dbg !1435
  %77 = load %struct._object*, %struct._object** %val, align 8, !dbg !1654, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %77, i64 0, metadata !818, metadata !875), !dbg !1654
  %cmp224 = icmp eq %struct._object* %77, null, !dbg !1656
  br i1 %cmp224, label %if.end.239, label %do.body.226, !dbg !1657

do.body.226:                                      ; preds = %if.end.219
  call void @llvm.dbg.value(metadata %struct._object* %77, i64 0, metadata !820, metadata !875), !dbg !1658
  %ob_refcnt228 = getelementptr inbounds %struct._object, %struct._object* %77, i64 0, i32 0, !dbg !1660
  %78 = load i64, i64* %ob_refcnt228, align 8, !dbg !1660, !tbaa !911
  %dec229 = add i64 %78, -1, !dbg !1660
  store i64 %dec229, i64* %ob_refcnt228, align 8, !dbg !1660, !tbaa !911
  %cmp230 = icmp eq i64 %dec229, 0, !dbg !1660
  br i1 %cmp230, label %if.else.232, label %if.end.239, !dbg !1662

if.else.232:                                      ; preds = %do.body.226
  %ob_type233 = getelementptr inbounds %struct._object, %struct._object* %77, i64 0, i32 1, !dbg !1663
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type233, align 8, !dbg !1663, !tbaa !915
  %tp_dealloc234 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i64 0, i32 4, !dbg !1663
  %tp_dealloc235 = bitcast {}** %tp_dealloc234 to void (%struct._object*)**, !dbg !1663
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8, !dbg !1663, !tbaa !916
  call void %80(%struct._object* %77) #1, !dbg !1663
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.232, %do.body.226, %if.end.219
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !767, metadata !875), !dbg !1433
  %81 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1665, !tbaa !919
  call void @llvm.dbg.value(metadata %struct._object* %81, i64 0, metadata !823, metadata !875), !dbg !1665
  %cmp244 = icmp eq %struct._object* %81, null, !dbg !1667
  br i1 %cmp244, label %cleanup.262, label %do.body.246, !dbg !1668

do.body.246:                                      ; preds = %if.end.239
  call void @llvm.dbg.value(metadata %struct._object* %81, i64 0, metadata !825, metadata !875), !dbg !1669
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %81, i64 0, i32 0, !dbg !1671
  %82 = load i64, i64* %ob_refcnt248, align 8, !dbg !1671, !tbaa !911
  %dec249 = add i64 %82, -1, !dbg !1671
  store i64 %dec249, i64* %ob_refcnt248, align 8, !dbg !1671, !tbaa !911
  %cmp250 = icmp eq i64 %dec249, 0, !dbg !1671
  br i1 %cmp250, label %if.else.252, label %cleanup.262, !dbg !1673

if.else.252:                                      ; preds = %do.body.246
  %ob_type253 = getelementptr inbounds %struct._object, %struct._object* %81, i64 0, i32 1, !dbg !1674
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type253, align 8, !dbg !1674, !tbaa !915
  %tp_dealloc254 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i64 0, i32 4, !dbg !1674
  %tp_dealloc255 = bitcast {}** %tp_dealloc254 to void (%struct._object*)**, !dbg !1674
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc255, align 8, !dbg !1674, !tbaa !916
  call void %84(%struct._object* %81) #1, !dbg !1674
  br label %cleanup.262

cleanup.262:                                      ; preds = %do.body.30, %if.else.36, %if.end.124, %if.end.85, %if.then.13, %if.end.239, %do.body.246, %if.else.252, %gen_yf.exit, %if.end.207, %if.then.136
  %retval.2 = phi %struct._object* [ %call208, %if.end.207 ], [ null, %if.then.136 ], [ null, %gen_yf.exit ], [ null, %if.else.252 ], [ null, %do.body.246 ], [ null, %if.end.239 ], [ %ret.2, %if.end.124 ], [ %ret.1, %if.end.85 ], [ %call14, %if.then.13 ], [ null, %if.else.36 ], [ null, %do.body.30 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1676
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1676
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1676
  ret %struct._object* %retval.2, !dbg !1676
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #2

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #2

declare %struct._object* @PyException_GetTraceback(%struct._object*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_get_name(%struct.PyGenObject* nocapture readonly %gen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyGenObject* %gen, i64 0, metadata !830, metadata !875), !dbg !1677
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %gen, i64 0, i32 3, !dbg !1678
  %0 = bitcast %struct._object** %gi_code to %struct.PyCodeObject**, !dbg !1678
  %1 = load %struct.PyCodeObject*, %struct.PyCodeObject** %0, align 8, !dbg !1678, !tbaa !1282
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %1, i64 0, i32 14, !dbg !1679
  %2 = load %struct._object*, %struct._object** %co_name, align 8, !dbg !1679, !tbaa !1300
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !831, metadata !875), !dbg !1680
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1681
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1681, !tbaa !911
  %inc = add i64 %3, 1, !dbg !1681
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1681, !tbaa !911
  ret %struct._object* %2, !dbg !1682
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!872, !873}
!llvm.ident = !{!874}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !519, globals: !832)
!1 = !DIFile(filename: "Objects/genobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !103, !51, !426, !439, !108, !453, !390, !509, !372, !517}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGenObject", file: !14, line: 28, baseType: !15)
!14 = !DIFile(filename: "Include/genobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 13, size: 384, align: 64, elements: !16)
!16 = !{!17, !364, !423, !424, !425}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !15, file: !14, line: 14, baseType: !18, size: 128, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !19, line: 109, baseType: !20)
!19 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !19, line: 105, size: 128, align: 64, elements: !21)
!21 = !{!22, !30}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !20, file: !19, line: 107, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !24, line: 177, baseType: !25)
!24 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 181, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !20, file: !19, line: 108, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !19, line: 334, size: 3200, align: 64, elements: !33)
!33 = !{!34, !40, !44, !45, !46, !52, !116, !121, !126, !127, !132, !184, !215, !227, !233, !234, !235, !237, !239, !270, !271, !272, !281, !282, !287, !288, !290, !292, !302, !312, !330, !331, !332, !334, !336, !337, !339, !344, !349, !354, !355, !356, !357, !358, !359, !360, !361, !363}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !32, file: !19, line: 335, baseType: !35, size: 192, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !19, line: 114, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 111, size: 192, align: 64, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !36, file: !19, line: 112, baseType: !18, size: 128, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !36, file: !19, line: 113, baseType: !23, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !32, file: !19, line: 336, baseType: !41, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !32, file: !19, line: 337, baseType: !23, size: 64, align: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !32, file: !19, line: 337, baseType: !23, size: 64, align: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !32, file: !19, line: 341, baseType: !47, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !19, line: 308, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !32, file: !19, line: 342, baseType: !53, size: 64, align: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !19, line: 314, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !51, !58, !57}
!57 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 246, size: 1728, align: 64, elements: !62)
!61 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!62 = !{!63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !84, !85, !86, !87, !89, !91, !93, !97, !100, !102, !104, !105, !106, !107, !111, !112}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !60, file: !61, line: 247, baseType: !57, size: 32, align: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !60, file: !61, line: 252, baseType: !65, size: 64, align: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !60, file: !61, line: 253, baseType: !65, size: 64, align: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !60, file: !61, line: 254, baseType: !65, size: 64, align: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !60, file: !61, line: 255, baseType: !65, size: 64, align: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !60, file: !61, line: 256, baseType: !65, size: 64, align: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !60, file: !61, line: 257, baseType: !65, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !60, file: !61, line: 258, baseType: !65, size: 64, align: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !60, file: !61, line: 259, baseType: !65, size: 64, align: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !60, file: !61, line: 261, baseType: !65, size: 64, align: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !60, file: !61, line: 262, baseType: !65, size: 64, align: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !60, file: !61, line: 263, baseType: !65, size: 64, align: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !60, file: !61, line: 265, baseType: !77, size: 64, align: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !61, line: 161, size: 192, align: 64, elements: !79)
!79 = !{!80, !81, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !78, file: !61, line: 162, baseType: !77, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !78, file: !61, line: 163, baseType: !82, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !78, file: !61, line: 167, baseType: !57, size: 32, align: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !60, file: !61, line: 267, baseType: !82, size: 64, align: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !60, file: !61, line: 269, baseType: !57, size: 32, align: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !60, file: !61, line: 273, baseType: !57, size: 32, align: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !60, file: !61, line: 275, baseType: !88, size: 64, align: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 140, baseType: !29)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !60, file: !61, line: 279, baseType: !90, size: 16, align: 16, offset: 1024)
!90 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !60, file: !61, line: 280, baseType: !92, size: 8, align: 8, offset: 1040)
!92 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !60, file: !61, line: 281, baseType: !94, size: 8, align: 8, offset: 1048)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !60, file: !61, line: 285, baseType: !98, size: 64, align: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !61, line: 155, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !60, file: !61, line: 294, baseType: !101, size: 64, align: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 141, baseType: !29)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !60, file: !61, line: 303, baseType: !103, size: 64, align: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !60, file: !61, line: 304, baseType: !103, size: 64, align: 64, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !60, file: !61, line: 305, baseType: !103, size: 64, align: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !60, file: !61, line: 306, baseType: !103, size: 64, align: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !60, file: !61, line: 307, baseType: !108, size: 64, align: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 62, baseType: !110)
!109 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !60, file: !61, line: 309, baseType: !57, size: 32, align: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !60, file: !61, line: 311, baseType: !113, size: 160, align: 8, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !32, file: !19, line: 343, baseType: !117, size: 64, align: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !19, line: 316, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!51, !51, !65}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !32, file: !19, line: 344, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !19, line: 318, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!57, !51, !65, !51}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !32, file: !19, line: 345, baseType: !103, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !32, file: !19, line: 346, baseType: !128, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !19, line: 320, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!51, !51}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !32, file: !19, line: 350, baseType: !133, size: 64, align: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !19, line: 278, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 236, size: 2176, align: 64, elements: !136)
!136 = !{!137, !142, !143, !144, !145, !146, !151, !153, !154, !155, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !135, file: !19, line: 241, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !19, line: 166, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!51, !51, !51}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !135, file: !19, line: 242, baseType: !138, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !135, file: !19, line: 243, baseType: !138, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !135, file: !19, line: 244, baseType: !138, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !135, file: !19, line: 245, baseType: !138, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !135, file: !19, line: 246, baseType: !147, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !19, line: 167, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!51, !51, !51, !51}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !135, file: !19, line: 247, baseType: !152, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !19, line: 165, baseType: !129)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !135, file: !19, line: 248, baseType: !152, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !135, file: !19, line: 249, baseType: !152, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !135, file: !19, line: 250, baseType: !156, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !19, line: 168, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!57, !51}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !135, file: !19, line: 251, baseType: !152, size: 64, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !135, file: !19, line: 252, baseType: !138, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !135, file: !19, line: 253, baseType: !138, size: 64, align: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !135, file: !19, line: 254, baseType: !138, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !135, file: !19, line: 255, baseType: !138, size: 64, align: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !135, file: !19, line: 256, baseType: !138, size: 64, align: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !135, file: !19, line: 257, baseType: !152, size: 64, align: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !135, file: !19, line: 258, baseType: !103, size: 64, align: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !135, file: !19, line: 259, baseType: !152, size: 64, align: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !135, file: !19, line: 261, baseType: !138, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !135, file: !19, line: 262, baseType: !138, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !135, file: !19, line: 263, baseType: !138, size: 64, align: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !135, file: !19, line: 264, baseType: !138, size: 64, align: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !135, file: !19, line: 265, baseType: !147, size: 64, align: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !135, file: !19, line: 266, baseType: !138, size: 64, align: 64, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !135, file: !19, line: 267, baseType: !138, size: 64, align: 64, offset: 1600)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !135, file: !19, line: 268, baseType: !138, size: 64, align: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !135, file: !19, line: 269, baseType: !138, size: 64, align: 64, offset: 1728)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !135, file: !19, line: 270, baseType: !138, size: 64, align: 64, offset: 1792)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !135, file: !19, line: 272, baseType: !138, size: 64, align: 64, offset: 1856)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !135, file: !19, line: 273, baseType: !138, size: 64, align: 64, offset: 1920)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !135, file: !19, line: 274, baseType: !138, size: 64, align: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !135, file: !19, line: 275, baseType: !138, size: 64, align: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !135, file: !19, line: 277, baseType: !152, size: 64, align: 64, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !32, file: !19, line: 351, baseType: !185, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !19, line: 292, baseType: !187)
!187 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 280, size: 640, align: 64, elements: !188)
!188 = !{!189, !194, !195, !200, !201, !202, !207, !208, !213, !214}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !187, file: !19, line: 281, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !19, line: 169, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!23, !51}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !187, file: !19, line: 282, baseType: !138, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !187, file: !19, line: 283, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !19, line: 170, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!51, !51, !23}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !187, file: !19, line: 284, baseType: !196, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !187, file: !19, line: 285, baseType: !103, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !187, file: !19, line: 286, baseType: !203, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !19, line: 172, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!57, !51, !23, !51}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !187, file: !19, line: 287, baseType: !103, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !187, file: !19, line: 288, baseType: !209, size: 64, align: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !19, line: 231, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!57, !51, !51}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !187, file: !19, line: 290, baseType: !138, size: 64, align: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !187, file: !19, line: 291, baseType: !196, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !32, file: !19, line: 352, baseType: !216, size: 64, align: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !19, line: 298, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 294, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !218, file: !19, line: 295, baseType: !190, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !218, file: !19, line: 296, baseType: !138, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !218, file: !19, line: 297, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !19, line: 174, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!57, !51, !51, !51}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !32, file: !19, line: 356, baseType: !228, size: 64, align: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !19, line: 321, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !51}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !24, line: 186, baseType: !23)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !32, file: !19, line: 357, baseType: !147, size: 64, align: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !32, file: !19, line: 358, baseType: !128, size: 64, align: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !32, file: !19, line: 359, baseType: !236, size: 64, align: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !19, line: 317, baseType: !139)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !32, file: !19, line: 360, baseType: !238, size: 64, align: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !19, line: 319, baseType: !224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !32, file: !19, line: 363, baseType: !240, size: 64, align: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !19, line: 304, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 301, size: 128, align: 64, elements: !243)
!243 = !{!244, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !242, file: !19, line: 302, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !19, line: 193, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!57, !51, !249, !57}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !19, line: 191, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !19, line: 178, size: 640, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !251, file: !19, line: 179, baseType: !103, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !251, file: !19, line: 180, baseType: !51, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !251, file: !19, line: 181, baseType: !23, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !251, file: !19, line: 182, baseType: !23, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !251, file: !19, line: 184, baseType: !57, size: 32, align: 32, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !251, file: !19, line: 185, baseType: !57, size: 32, align: 32, offset: 288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !251, file: !19, line: 186, baseType: !65, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !251, file: !19, line: 187, baseType: !261, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !251, file: !19, line: 188, baseType: !261, size: 64, align: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !251, file: !19, line: 189, baseType: !261, size: 64, align: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !251, file: !19, line: 190, baseType: !103, size: 64, align: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !242, file: !19, line: 303, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !19, line: 194, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !51, !249}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !32, file: !19, line: 366, baseType: !110, size: 64, align: 64, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !32, file: !19, line: 368, baseType: !41, size: 64, align: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !32, file: !19, line: 372, baseType: !273, size: 64, align: 64, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !19, line: 233, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!57, !51, !277, !103}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !19, line: 232, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!57, !51, !103}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !32, file: !19, line: 375, baseType: !156, size: 64, align: 64, offset: 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !32, file: !19, line: 379, baseType: !283, size: 64, align: 64, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !19, line: 322, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!51, !51, !51, !57}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !32, file: !19, line: 382, baseType: !23, size: 64, align: 64, offset: 1664)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !32, file: !19, line: 385, baseType: !289, size: 64, align: 64, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !19, line: 323, baseType: !129)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !32, file: !19, line: 386, baseType: !291, size: 64, align: 64, offset: 1792)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !19, line: 324, baseType: !129)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !32, file: !19, line: 389, baseType: !293, size: 64, align: 64, offset: 1856)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !295, line: 40, size: 256, align: 64, elements: !296)
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !41, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !57, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !41, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !32, file: !19, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !305, line: 18, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 19, baseType: !65, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 20, baseType: !57, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !305, line: 21, baseType: !23, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 22, baseType: !57, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 23, baseType: !65, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !32, file: !19, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!316 = !{!317, !318, !323, !328, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 12, baseType: !65, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !315, line: 13, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !315, line: 8, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!51, !51, !103}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !315, line: 14, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !315, line: 9, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!57, !51, !51, !103}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !314, file: !315, line: 15, baseType: !65, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !314, file: !315, line: 16, baseType: !103, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !32, file: !19, line: 392, baseType: !31, size: 64, align: 64, offset: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !32, file: !19, line: 393, baseType: !51, size: 64, align: 64, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !32, file: !19, line: 394, baseType: !333, size: 64, align: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !19, line: 325, baseType: !148)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !32, file: !19, line: 395, baseType: !335, size: 64, align: 64, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !19, line: 326, baseType: !224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !32, file: !19, line: 396, baseType: !23, size: 64, align: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !32, file: !19, line: 397, baseType: !338, size: 64, align: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !19, line: 327, baseType: !224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !32, file: !19, line: 398, baseType: !340, size: 64, align: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !19, line: 329, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!51, !31, !23}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !32, file: !19, line: 399, baseType: !345, size: 64, align: 64, offset: 2496)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !19, line: 328, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!51, !31, !51, !51}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !32, file: !19, line: 400, baseType: !350, size: 64, align: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !19, line: 307, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !103}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !32, file: !19, line: 401, baseType: !156, size: 64, align: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !32, file: !19, line: 402, baseType: !51, size: 64, align: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !32, file: !19, line: 403, baseType: !51, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !32, file: !19, line: 404, baseType: !51, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !32, file: !19, line: 405, baseType: !51, size: 64, align: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !32, file: !19, line: 406, baseType: !51, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !32, file: !19, line: 407, baseType: !47, size: 64, align: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !32, file: !19, line: 410, baseType: !362, size: 32, align: 32, offset: 3072)
!362 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !32, file: !19, line: 412, baseType: !47, size: 64, align: 64, offset: 3136)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "gi_frame", scope: !15, file: !14, line: 18, baseType: !365, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !367, line: 17, size: 3072, align: 64, elements: !368)
!367 = !DIFile(filename: "Include/frameobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!368 = !{!369, !370, !371, !398, !399, !400, !401, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !421}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !367, line: 18, baseType: !35, size: 192, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !366, file: !367, line: 19, baseType: !365, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !366, file: !367, line: 20, baseType: !372, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !374, line: 33, baseType: !375)
!374 = !DIFile(filename: "Include/code.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 11, size: 1152, align: 64, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !392, !393, !394, !395, !396, !397}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !375, file: !374, line: 12, baseType: !18, size: 128, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !375, file: !374, line: 13, baseType: !57, size: 32, align: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !375, file: !374, line: 14, baseType: !57, size: 32, align: 32, offset: 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !375, file: !374, line: 15, baseType: !57, size: 32, align: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !375, file: !374, line: 16, baseType: !57, size: 32, align: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !375, file: !374, line: 17, baseType: !57, size: 32, align: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !375, file: !374, line: 18, baseType: !51, size: 64, align: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !375, file: !374, line: 19, baseType: !51, size: 64, align: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !375, file: !374, line: 20, baseType: !51, size: 64, align: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !375, file: !374, line: 21, baseType: !51, size: 64, align: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !375, file: !374, line: 22, baseType: !51, size: 64, align: 64, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !375, file: !374, line: 23, baseType: !51, size: 64, align: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !375, file: !374, line: 25, baseType: !390, size: 64, align: 64, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !375, file: !374, line: 26, baseType: !51, size: 64, align: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !375, file: !374, line: 27, baseType: !51, size: 64, align: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !375, file: !374, line: 28, baseType: !57, size: 32, align: 32, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !375, file: !374, line: 29, baseType: !51, size: 64, align: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !375, file: !374, line: 31, baseType: !103, size: 64, align: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !375, file: !374, line: 32, baseType: !51, size: 64, align: 64, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !366, file: !367, line: 21, baseType: !51, size: 64, align: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !366, file: !367, line: 22, baseType: !51, size: 64, align: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !366, file: !367, line: 23, baseType: !51, size: 64, align: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !366, file: !367, line: 24, baseType: !402, size: 64, align: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !366, file: !367, line: 28, baseType: !402, size: 64, align: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !366, file: !367, line: 29, baseType: !51, size: 64, align: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !366, file: !367, line: 38, baseType: !51, size: 64, align: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !366, file: !367, line: 38, baseType: !51, size: 64, align: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !366, file: !367, line: 38, baseType: !51, size: 64, align: 64, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !366, file: !367, line: 40, baseType: !51, size: 64, align: 64, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !366, file: !367, line: 42, baseType: !57, size: 32, align: 32, offset: 960)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !366, file: !367, line: 48, baseType: !57, size: 32, align: 32, offset: 992)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !366, file: !367, line: 49, baseType: !57, size: 32, align: 32, offset: 1024)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !366, file: !367, line: 50, baseType: !43, size: 8, align: 8, offset: 1056)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !366, file: !367, line: 51, baseType: !414, size: 1920, align: 32, offset: 1088)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1920, align: 32, elements: !114)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !367, line: 15, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 11, size: 96, align: 32, elements: !417)
!417 = !{!418, !419, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !416, file: !367, line: 12, baseType: !57, size: 32, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !416, file: !367, line: 13, baseType: !57, size: 32, align: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !416, file: !367, line: 14, baseType: !57, size: 32, align: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !366, file: !367, line: 52, baseType: !422, size: 64, align: 64, offset: 3008)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, align: 64, elements: !95)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gi_running", scope: !15, file: !14, line: 21, baseType: !43, size: 8, align: 8, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "gi_code", scope: !15, file: !14, line: 24, baseType: !51, size: 64, align: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gi_weakreflist", scope: !15, file: !14, line: 27, baseType: !51, size: 64, align: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStopIterationObject", file: !428, line: 66, baseType: !429)
!428 = !DIFile(filename: "Include/pyerrors.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!429 = !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 63, size: 576, align: 64, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !429, file: !428, line: 64, baseType: !18, size: 128, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !429, file: !428, line: 64, baseType: !51, size: 64, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !429, file: !428, line: 64, baseType: !51, size: 64, align: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "traceback", scope: !429, file: !428, line: 64, baseType: !51, size: 64, align: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !429, file: !428, line: 64, baseType: !51, size: 64, align: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cause", scope: !429, file: !428, line: 64, baseType: !51, size: 64, align: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_context", scope: !429, file: !428, line: 64, baseType: !43, size: 8, align: 8, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !429, file: !428, line: 65, baseType: !51, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !441, line: 253, baseType: !442)
!441 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!442 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !441, line: 246, size: 192, align: 64, elements: !443)
!443 = !{!444, !451}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !442, file: !441, line: 251, baseType: !445, size: 192, align: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !441, line: 247, size: 192, align: 64, elements: !446)
!446 = !{!447, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !445, file: !441, line: 248, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !445, file: !441, line: 249, baseType: !448, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !445, file: !441, line: 250, baseType: !23, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !442, file: !441, line: 252, baseType: !452, size: 64, align: 64)
!452 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !455, line: 139, baseType: !456)
!455 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !455, line: 69, size: 1536, align: 64, elements: !457)
!457 = !{!458, !460, !461, !481, !482, !483, !484, !485, !486, !487, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !456, file: !455, line: 72, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !455, line: 73, baseType: !459, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !456, file: !455, line: 74, baseType: !462, size: 64, align: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !455, line: 44, baseType: !464)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !455, line: 19, size: 832, align: 64, elements: !465)
!465 = !{!466, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !455, line: 21, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !464, file: !455, line: 22, baseType: !459, size: 64, align: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !464, file: !455, line: 24, baseType: !51, size: 64, align: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !464, file: !455, line: 25, baseType: !51, size: 64, align: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !464, file: !455, line: 26, baseType: !51, size: 64, align: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !464, file: !455, line: 27, baseType: !51, size: 64, align: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !464, file: !455, line: 28, baseType: !51, size: 64, align: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !464, file: !455, line: 30, baseType: !51, size: 64, align: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !464, file: !455, line: 31, baseType: !51, size: 64, align: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !464, file: !455, line: 32, baseType: !51, size: 64, align: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !464, file: !455, line: 33, baseType: !57, size: 32, align: 32, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !464, file: !455, line: 34, baseType: !57, size: 32, align: 32, offset: 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !464, file: !455, line: 37, baseType: !57, size: 32, align: 32, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !464, file: !455, line: 43, baseType: !51, size: 64, align: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !456, file: !455, line: 76, baseType: !365, size: 64, align: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !456, file: !455, line: 77, baseType: !57, size: 32, align: 32, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !456, file: !455, line: 78, baseType: !43, size: 8, align: 8, offset: 288)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !456, file: !455, line: 80, baseType: !43, size: 8, align: 8, offset: 296)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !456, file: !455, line: 85, baseType: !57, size: 32, align: 32, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !456, file: !455, line: 86, baseType: !57, size: 32, align: 32, offset: 352)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !456, file: !455, line: 88, baseType: !488, size: 64, align: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !455, line: 54, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!57, !51, !365, !57, !51}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !456, file: !455, line: 89, baseType: !488, size: 64, align: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !456, file: !455, line: 90, baseType: !51, size: 64, align: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !456, file: !455, line: 91, baseType: !51, size: 64, align: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !456, file: !455, line: 93, baseType: !51, size: 64, align: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !456, file: !455, line: 94, baseType: !51, size: 64, align: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !456, file: !455, line: 95, baseType: !51, size: 64, align: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !456, file: !455, line: 97, baseType: !51, size: 64, align: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !456, file: !455, line: 98, baseType: !51, size: 64, align: 64, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !456, file: !455, line: 99, baseType: !51, size: 64, align: 64, offset: 960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !456, file: !455, line: 101, baseType: !51, size: 64, align: 64, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !456, file: !455, line: 103, baseType: !57, size: 32, align: 32, offset: 1088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !456, file: !455, line: 105, baseType: !51, size: 64, align: 64, offset: 1152)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !456, file: !455, line: 106, baseType: !29, size: 64, align: 64, offset: 1216)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !456, file: !455, line: 108, baseType: !57, size: 32, align: 32, offset: 1280)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !456, file: !455, line: 109, baseType: !51, size: 64, align: 64, offset: 1344)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !456, file: !455, line: 134, baseType: !351, size: 64, align: 64, offset: 1408)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !456, file: !455, line: 135, baseType: !103, size: 64, align: 64, offset: 1472)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !511, line: 41, baseType: !512)
!511 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!512 = !DICompositeType(tag: DW_TAG_structure_type, file: !511, line: 31, size: 320, align: 64, elements: !513)
!513 = !{!514, !515, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !512, file: !511, line: 32, baseType: !35, size: 192, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !512, file: !511, line: 33, baseType: !232, size: 64, align: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !512, file: !511, line: 34, baseType: !94, size: 8, align: 8, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !19, line: 422, baseType: !32)
!519 = !{!520, !531, !537, !562, !576, !583, !651, !660, !665, !668, !683, !694, !710, !734, !737, !752, !762, !828}
!520 = !DISubprogram(name: "_PyGen_Finalize", scope: !1, file: !1, line: 19, type: !49, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyGen_Finalize, variables: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !1, line: 19, type: !51)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gen", scope: !520, file: !1, line: 21, type: !12)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !520, file: !1, line: 22, type: !51)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_type", scope: !520, file: !1, line: 23, type: !51)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_value", scope: !520, file: !1, line: 23, type: !51)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_traceback", scope: !520, file: !1, line: 23, type: !51)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !529, file: !1, line: 37, type: !51)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 37, column: 9)
!530 = distinct !DILexicalBlock(scope: !520, file: !1, line: 34, column: 9)
!531 = !DISubprogram(name: "_PyGen_Send", scope: !1, file: !1, line: 156, type: !532, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*, %struct._object*)* @_PyGen_Send, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!51, !12, !51}
!534 = !{!535, !536}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !531, file: !1, line: 156, type: !12)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !531, file: !1, line: 156, type: !51)
!537 = !DISubprogram(name: "_PyGen_FetchStopIterationValue", scope: !1, file: !1, line: 393, type: !538, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object**)* @_PyGen_FetchStopIterationValue, variables: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!57, !402}
!540 = !{!541, !542, !543, !544, !545, !546, !550, !553, !555, !558}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pvalue", arg: 1, scope: !537, file: !1, line: 393, type: !402)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "et", scope: !537, file: !1, line: 394, type: !51)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ev", scope: !537, file: !1, line: 394, type: !51)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !537, file: !1, line: 394, type: !51)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !537, file: !1, line: 395, type: !51)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !547, file: !1, line: 399, type: !51)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 399, column: 9)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 397, column: 54)
!549 = distinct !DILexicalBlock(scope: !537, file: !1, line: 397, column: 9)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !551, file: !1, line: 399, type: !51)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 399, column: 9)
!552 = distinct !DILexicalBlock(scope: !547, file: !1, line: 399, column: 9)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !554, file: !1, line: 400, type: !51)
!554 = distinct !DILexicalBlock(scope: !548, file: !1, line: 400, column: 9)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !556, file: !1, line: 400, type: !51)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 400, column: 9)
!557 = distinct !DILexicalBlock(scope: !554, file: !1, line: 400, column: 9)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !559, file: !1, line: 404, type: !51)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 404, column: 13)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 401, column: 17)
!561 = distinct !DILexicalBlock(scope: !548, file: !1, line: 401, column: 13)
!562 = !DISubprogram(name: "PyGen_New", scope: !1, file: !1, line: 513, type: !563, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._frame*)* @PyGen_New, variables: !567)
!563 = !DISubroutineType(types: !564)
!564 = !{!51, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !367, line: 53, baseType: !366)
!567 = !{!568, !569, !570, !574}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !562, file: !1, line: 513, type: !565)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gen", scope: !562, file: !1, line: 515, type: !12)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !571, file: !1, line: 517, type: !51)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 517, column: 9)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 516, column: 22)
!573 = distinct !DILexicalBlock(scope: !562, file: !1, line: 516, column: 9)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !575, file: !1, line: 526, type: !439)
!575 = distinct !DILexicalBlock(scope: !562, file: !1, line: 526, column: 5)
!576 = !DISubprogram(name: "PyGen_NeedsFinalizing", scope: !1, file: !1, line: 531, type: !577, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyGenObject*)* @PyGen_NeedsFinalizing, variables: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!57, !12}
!579 = !{!580, !581, !582}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !576, file: !1, line: 531, type: !12)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !576, file: !1, line: 533, type: !57)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !576, file: !1, line: 534, type: !565)
!583 = !DISubprogram(name: "gen_send_ex", scope: !1, file: !1, line: 65, type: !584, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*, %struct._object*, i32)* @gen_send_ex, variables: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!51, !12, !51, !57}
!586 = !{!587, !588, !589, !590, !591, !598, !599, !602, !604, !605, !606, !608, !610, !614, !619, !623, !625, !629, !632, !633, !634, !636, !639, !641, !644, !646, !649}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !583, file: !1, line: 65, type: !12)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !583, file: !1, line: 65, type: !51)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 3, scope: !583, file: !1, line: 65, type: !57)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !583, file: !1, line: 67, type: !453)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !592, file: !1, line: 67, type: !593)
!592 = distinct !DILexicalBlock(scope: !583, file: !1, line: 67, column: 29)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !595, file: !4, line: 32, baseType: !103, size: 64, align: 64)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !592, file: !1, line: 67, type: !103)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !592, file: !1, line: 67, type: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !592, file: !1, line: 67, type: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !583, file: !1, line: 68, type: !565)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !583, file: !1, line: 69, type: !51)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !607, file: !1, line: 99, type: !51)
!607 = distinct !DILexicalBlock(scope: !583, file: !1, line: 99, column: 5)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !609, file: !1, line: 111, type: !51)
!609 = distinct !DILexicalBlock(scope: !583, file: !1, line: 111, column: 5)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !611, file: !1, line: 111, type: !51)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 111, column: 5)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 111, column: 5)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 111, column: 5)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !615, file: !1, line: 120, type: !51)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 119, column: 16)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 116, column: 13)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 115, column: 42)
!618 = distinct !DILexicalBlock(scope: !583, file: !1, line: 115, column: 9)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !1, line: 124, type: !51)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 124, column: 17)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 122, column: 28)
!622 = distinct !DILexicalBlock(scope: !615, file: !1, line: 122, column: 17)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !624, file: !1, line: 127, type: !51)
!624 = distinct !DILexicalBlock(scope: !617, file: !1, line: 127, column: 9)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !626, file: !1, line: 127, type: !51)
!626 = distinct !DILexicalBlock(scope: !627, file: !1, line: 127, column: 9)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 127, column: 9)
!628 = distinct !DILexicalBlock(scope: !624, file: !1, line: 127, column: 9)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !630, file: !1, line: 133, type: !51)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 130, column: 43)
!631 = distinct !DILexicalBlock(scope: !583, file: !1, line: 130, column: 9)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !630, file: !1, line: 133, type: !51)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !630, file: !1, line: 133, type: !51)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !635, file: !1, line: 140, type: !51)
!635 = distinct !DILexicalBlock(scope: !630, file: !1, line: 140, column: 9)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !1, line: 140, type: !51)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 140, column: 9)
!638 = distinct !DILexicalBlock(scope: !635, file: !1, line: 140, column: 9)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !640, file: !1, line: 141, type: !51)
!640 = distinct !DILexicalBlock(scope: !630, file: !1, line: 141, column: 9)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !642, file: !1, line: 141, type: !51)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 141, column: 9)
!643 = distinct !DILexicalBlock(scope: !640, file: !1, line: 141, column: 9)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !645, file: !1, line: 142, type: !51)
!645 = distinct !DILexicalBlock(scope: !630, file: !1, line: 142, column: 9)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !647, file: !1, line: 142, type: !51)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 142, column: 9)
!648 = distinct !DILexicalBlock(scope: !645, file: !1, line: 142, column: 9)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !650, file: !1, line: 145, type: !51)
!650 = distinct !DILexicalBlock(scope: !630, file: !1, line: 145, column: 9)
!651 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !652, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !657)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !654, !603}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!657 = !{!658, !659}
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !651, file: !4, line: 59, type: !654)
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !651, file: !4, line: 59, type: !603)
!660 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !661, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !603}
!663 = !{!664}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !660, file: !4, line: 51, type: !603)
!665 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !661, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !666)
!666 = !{!667}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !665, file: !4, line: 44, type: !603)
!668 = !DISubprogram(name: "gen_close", scope: !1, file: !1, line: 216, type: !532, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*, %struct._object*)* @gen_close, variables: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !679}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !668, file: !1, line: 216, type: !12)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !668, file: !1, line: 216, type: !51)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !668, file: !1, line: 218, type: !51)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yf", scope: !668, file: !1, line: 219, type: !51)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !668, file: !1, line: 220, type: !57)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !1, line: 226, type: !51)
!676 = distinct !DILexicalBlock(scope: !677, file: !1, line: 226, column: 9)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 222, column: 13)
!678 = distinct !DILexicalBlock(scope: !668, file: !1, line: 222, column: 9)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !680, file: !1, line: 232, type: !51)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 232, column: 9)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 231, column: 17)
!682 = distinct !DILexicalBlock(scope: !668, file: !1, line: 231, column: 9)
!683 = !DISubprogram(name: "gen_yf", scope: !1, file: !1, line: 197, type: !684, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!51, !12}
!686 = !{!687, !688, !689, !690, !693}
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !683, file: !1, line: 197, type: !12)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yf", scope: !683, file: !1, line: 199, type: !51)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !683, file: !1, line: 200, type: !565)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytecode", scope: !691, file: !1, line: 203, type: !51)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 202, column: 29)
!692 = distinct !DILexicalBlock(scope: !683, file: !1, line: 202, column: 9)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !691, file: !1, line: 204, type: !390)
!694 = !DISubprogram(name: "gen_close_iter", scope: !1, file: !1, line: 170, type: !158, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @gen_close_iter, variables: !695)
!695 = !{!696, !697, !698, !701, !705, !707}
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "yf", arg: 1, scope: !694, file: !1, line: 170, type: !51)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !694, file: !1, line: 172, type: !51)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !699, file: !1, line: 180, type: !51)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 179, column: 12)
!700 = distinct !DILexicalBlock(scope: !694, file: !1, line: 175, column: 9)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !702, file: !1, line: 187, type: !51)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 187, column: 13)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 185, column: 16)
!704 = distinct !DILexicalBlock(scope: !699, file: !1, line: 181, column: 13)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !706, file: !1, line: 192, type: !51)
!706 = distinct !DILexicalBlock(scope: !694, file: !1, line: 192, column: 5)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !1, line: 192, type: !51)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 192, column: 5)
!709 = distinct !DILexicalBlock(scope: !706, file: !1, line: 192, column: 5)
!710 = !DISubprogram(name: "gen_dealloc", scope: !1, file: !1, line: 44, type: !711, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyGenObject*)* @gen_dealloc, variables: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !12}
!713 = !{!714, !715, !716, !718, !720, !722, !724, !728, !730}
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !710, file: !1, line: 44, type: !12)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !710, file: !1, line: 46, type: !51)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !717, file: !1, line: 48, type: !439)
!717 = distinct !DILexicalBlock(scope: !710, file: !1, line: 48, column: 5)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !719, file: !1, line: 53, type: !439)
!719 = distinct !DILexicalBlock(scope: !710, file: !1, line: 53, column: 5)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !721, file: !1, line: 58, type: !439)
!721 = distinct !DILexicalBlock(scope: !710, file: !1, line: 58, column: 5)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !723, file: !1, line: 59, type: !51)
!723 = distinct !DILexicalBlock(scope: !710, file: !1, line: 59, column: 5)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !725, file: !1, line: 59, type: !51)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 59, column: 5)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 59, column: 5)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 59, column: 5)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !729, file: !1, line: 60, type: !51)
!729 = distinct !DILexicalBlock(scope: !710, file: !1, line: 60, column: 5)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !731, file: !1, line: 60, type: !51)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 60, column: 5)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 60, column: 5)
!733 = distinct !DILexicalBlock(scope: !729, file: !1, line: 60, column: 5)
!734 = !DISubprogram(name: "gen_repr", scope: !1, file: !1, line: 418, type: !684, isLocal: true, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*)* @gen_repr, variables: !735)
!735 = !{!736}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !734, file: !1, line: 418, type: !12)
!737 = !DISubprogram(name: "gen_traverse", scope: !1, file: !1, line: 11, type: !738, isLocal: true, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyGenObject*, i32 (%struct._object*, i8*)*, i8*)* @gen_traverse, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!57, !12, !277, !103}
!740 = !{!741, !742, !743, !744, !748}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !737, file: !1, line: 11, type: !12)
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !737, file: !1, line: 11, type: !277)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !737, file: !1, line: 11, type: !103)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !745, file: !1, line: 13, type: !57)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 13, column: 5)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 13, column: 5)
!747 = distinct !DILexicalBlock(scope: !737, file: !1, line: 13, column: 5)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !749, file: !1, line: 14, type: !57)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 14, column: 5)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 14, column: 5)
!751 = distinct !DILexicalBlock(scope: !737, file: !1, line: 14, column: 5)
!752 = !DISubprogram(name: "gen_iternext", scope: !1, file: !1, line: 374, type: !684, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*)* @gen_iternext, variables: !753)
!753 = !{!754, !755, !756, !757, !759}
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !752, file: !1, line: 374, type: !12)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !752, file: !1, line: 376, type: !51)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !752, file: !1, line: 377, type: !51)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !758, file: !1, line: 379, type: !51)
!758 = distinct !DILexicalBlock(scope: !752, file: !1, line: 379, column: 5)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !760, file: !1, line: 379, type: !51)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 379, column: 5)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 379, column: 5)
!762 = !DISubprogram(name: "gen_throw", scope: !1, file: !1, line: 252, type: !532, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*, %struct._object*)* @gen_throw, variables: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !773, !774, !778, !781, !787, !789, !791, !793, !796, !798, !802, !804, !806, !813, !816, !818, !820, !823, !825}
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !762, file: !1, line: 252, type: !12)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !762, file: !1, line: 252, type: !51)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typ", scope: !762, file: !1, line: 254, type: !51)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !762, file: !1, line: 255, type: !51)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !762, file: !1, line: 256, type: !51)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yf", scope: !762, file: !1, line: 257, type: !51)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !771, file: !1, line: 264, type: !51)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 263, column: 13)
!772 = distinct !DILexicalBlock(scope: !762, file: !1, line: 263, column: 9)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !771, file: !1, line: 265, type: !57)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !775, file: !1, line: 270, type: !51)
!775 = distinct !DILexicalBlock(scope: !776, file: !1, line: 270, column: 13)
!776 = distinct !DILexicalBlock(scope: !777, file: !1, line: 266, column: 68)
!777 = distinct !DILexicalBlock(scope: !771, file: !1, line: 266, column: 13)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !779, file: !1, line: 280, type: !51)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 279, column: 16)
!780 = distinct !DILexicalBlock(scope: !771, file: !1, line: 275, column: 13)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !782, file: !1, line: 283, type: !51)
!782 = distinct !DILexicalBlock(scope: !783, file: !1, line: 283, column: 21)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 282, column: 68)
!784 = distinct !DILexicalBlock(scope: !785, file: !1, line: 282, column: 21)
!785 = distinct !DILexicalBlock(scope: !786, file: !1, line: 281, column: 31)
!786 = distinct !DILexicalBlock(scope: !779, file: !1, line: 281, column: 17)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !788, file: !1, line: 287, type: !51)
!788 = distinct !DILexicalBlock(scope: !785, file: !1, line: 287, column: 17)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !790, file: !1, line: 293, type: !51)
!790 = distinct !DILexicalBlock(scope: !779, file: !1, line: 293, column: 13)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !792, file: !1, line: 295, type: !51)
!792 = distinct !DILexicalBlock(scope: !771, file: !1, line: 295, column: 9)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !794, file: !1, line: 297, type: !51)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 296, column: 19)
!795 = distinct !DILexicalBlock(scope: !771, file: !1, line: 296, column: 13)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !797, file: !1, line: 301, type: !51)
!797 = distinct !DILexicalBlock(scope: !794, file: !1, line: 301, column: 13)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !799, file: !1, line: 306, type: !51)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 306, column: 17)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 304, column: 60)
!801 = distinct !DILexicalBlock(scope: !794, file: !1, line: 304, column: 17)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !803, file: !1, line: 327, type: !51)
!803 = distinct !DILexicalBlock(scope: !762, file: !1, line: 327, column: 5)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !805, file: !1, line: 328, type: !51)
!805 = distinct !DILexicalBlock(scope: !762, file: !1, line: 328, column: 5)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !807, file: !1, line: 342, type: !51)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 342, column: 13)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 340, column: 14)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 335, column: 13)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 333, column: 46)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 333, column: 14)
!812 = distinct !DILexicalBlock(scope: !762, file: !1, line: 330, column: 9)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !814, file: !1, line: 342, type: !51)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 342, column: 13)
!815 = distinct !DILexicalBlock(scope: !807, file: !1, line: 342, column: 13)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !817, file: !1, line: 366, type: !51)
!817 = distinct !DILexicalBlock(scope: !762, file: !1, line: 366, column: 5)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !819, file: !1, line: 367, type: !51)
!819 = distinct !DILexicalBlock(scope: !762, file: !1, line: 367, column: 5)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !821, file: !1, line: 367, type: !51)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 367, column: 5)
!822 = distinct !DILexicalBlock(scope: !819, file: !1, line: 367, column: 5)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !824, file: !1, line: 368, type: !51)
!824 = distinct !DILexicalBlock(scope: !762, file: !1, line: 368, column: 5)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !826, file: !1, line: 368, type: !51)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 368, column: 5)
!827 = distinct !DILexicalBlock(scope: !824, file: !1, line: 368, column: 5)
!828 = !DISubprogram(name: "gen_get_name", scope: !1, file: !1, line: 427, type: !684, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyGenObject*)* @gen_get_name, variables: !829)
!829 = !{!830, !831}
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gen", arg: 1, scope: !828, file: !1, line: 427, type: !12)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !828, file: !1, line: 429, type: !51)
!832 = !{!833, !834, !842, !847, !851, !852, !856, !860, !863, !868}
!833 = !DIGlobalVariable(name: "PyGen_Type", scope: !0, file: !1, line: 458, type: !518, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type)
!834 = !DIGlobalVariable(name: "PyId_close", scope: !694, file: !1, line: 173, type: !835, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @gen_close_iter.PyId_close)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !19, line: 144, baseType: !836)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !19, line: 140, size: 192, align: 64, elements: !837)
!837 = !{!838, !840, !841}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !19, line: 141, baseType: !839, size: 64, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !836, file: !19, line: 142, baseType: !41, size: 64, align: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !836, file: !19, line: 143, baseType: !51, size: 64, align: 64, offset: 128)
!842 = !DIGlobalVariable(name: "gen_methods", scope: !0, file: !1, line: 451, type: !843, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @gen_methods)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 1024, align: 64, elements: !845)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !295, line: 47, baseType: !294)
!845 = !{!846}
!846 = !DISubrange(count: 4)
!847 = !DIGlobalVariable(name: "send_doc", scope: !0, file: !1, line: 151, type: !848, isLocal: true, isDefinition: true, variable: [90 x i8]* @send_doc)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 720, align: 8, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 90)
!851 = !DIGlobalVariable(name: "PyId_throw", scope: !762, file: !1, line: 258, type: !835, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @gen_throw.PyId_throw)
!852 = !DIGlobalVariable(name: "throw_doc", scope: !0, file: !1, line: 247, type: !853, isLocal: true, isDefinition: true, variable: [105 x i8]* @throw_doc)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 840, align: 8, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 105)
!856 = !DIGlobalVariable(name: "close_doc", scope: !0, file: !1, line: 161, type: !857, isLocal: true, isDefinition: true, variable: [49 x i8]* @close_doc)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 392, align: 8, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 49)
!860 = !DIGlobalVariable(name: "gen_memberlist", scope: !0, file: !1, line: 444, type: !861, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @gen_memberlist)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 1280, align: 64, elements: !845)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !305, line: 24, baseType: !304)
!863 = !DIGlobalVariable(name: "gen_getsetlist", scope: !0, file: !1, line: 438, type: !864, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @gen_getsetlist)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 640, align: 64, elements: !866)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !315, line: 17, baseType: !314)
!866 = !{!867}
!867 = !DISubrange(count: 2)
!868 = !DIGlobalVariable(name: "gen__name__doc__", scope: !0, file: !1, line: 435, type: !869, isLocal: true, isDefinition: true, variable: [59 x i8]* @gen__name__doc__)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 472, align: 8, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 59)
!872 = !{i32 2, !"Dwarf Version", i32 4}
!873 = !{i32 2, !"Debug Info Version", i32 3}
!874 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!875 = !DIExpression()
!876 = !DILocation(line: 19, column: 27, scope: !520)
!877 = !DILocation(line: 21, column: 24, scope: !520)
!878 = !DILocation(line: 21, column: 18, scope: !520)
!879 = !DILocation(line: 23, column: 5, scope: !520)
!880 = !DILocation(line: 25, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !520, file: !1, line: 25, column: 9)
!882 = !{!883, !888, i64 16}
!883 = !{!"", !884, i64 0, !888, i64 16, !886, i64 24, !888, i64 32, !888, i64 40}
!884 = !{!"_object", !885, i64 0, !888, i64 8}
!885 = !{!"long", !886, i64 0}
!886 = !{!"omnipotent char", !887, i64 0}
!887 = !{!"Simple C/C++ TBAA"}
!888 = !{!"any pointer", !886, i64 0}
!889 = !DILocation(line: 25, column: 23, scope: !881)
!890 = !DILocation(line: 25, column: 31, scope: !881)
!891 = !DILocation(line: 25, column: 49, scope: !881)
!892 = !{!893, !888, i64 72}
!893 = !{!"_frame", !894, i64 0, !888, i64 24, !888, i64 32, !888, i64 40, !888, i64 48, !888, i64 56, !888, i64 64, !888, i64 72, !888, i64 80, !888, i64 88, !888, i64 96, !888, i64 104, !888, i64 112, !895, i64 120, !895, i64 124, !895, i64 128, !886, i64 132, !886, i64 136, !886, i64 376}
!894 = !{!"", !884, i64 0, !885, i64 16}
!895 = !{!"int", !886, i64 0}
!896 = !DILocation(line: 25, column: 60, scope: !881)
!897 = !DILocation(line: 25, column: 9, scope: !520)
!898 = !DILocation(line: 23, column: 15, scope: !520)
!899 = !DILocation(line: 23, column: 28, scope: !520)
!900 = !DILocation(line: 23, column: 42, scope: !520)
!901 = !DILocation(line: 30, column: 5, scope: !520)
!902 = !DILocation(line: 32, column: 11, scope: !520)
!903 = !DILocation(line: 22, column: 15, scope: !520)
!904 = !DILocation(line: 34, column: 13, scope: !530)
!905 = !DILocation(line: 34, column: 9, scope: !520)
!906 = !DILocation(line: 35, column: 9, scope: !530)
!907 = !DILocation(line: 37, column: 9, scope: !908)
!908 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!909 = !DILocation(line: 37, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !529, file: !1, line: 37, column: 9)
!911 = !{!884, !885, i64 0}
!912 = !DILocation(line: 37, column: 9, scope: !529)
!913 = !DILocation(line: 37, column: 9, scope: !914)
!914 = !DILexicalBlockFile(scope: !910, file: !1, discriminator: 3)
!915 = !{!884, !888, i64 8}
!916 = !{!917, !888, i64 48}
!917 = !{!"_typeobject", !894, i64 0, !888, i64 24, !885, i64 32, !885, i64 40, !888, i64 48, !888, i64 56, !888, i64 64, !888, i64 72, !888, i64 80, !888, i64 88, !888, i64 96, !888, i64 104, !888, i64 112, !888, i64 120, !888, i64 128, !888, i64 136, !888, i64 144, !888, i64 152, !888, i64 160, !885, i64 168, !888, i64 176, !888, i64 184, !888, i64 192, !888, i64 200, !885, i64 208, !888, i64 216, !888, i64 224, !888, i64 232, !888, i64 240, !888, i64 248, !888, i64 256, !888, i64 264, !888, i64 272, !888, i64 280, !885, i64 288, !888, i64 296, !888, i64 304, !888, i64 312, !888, i64 320, !888, i64 328, !888, i64 336, !888, i64 344, !888, i64 352, !888, i64 360, !888, i64 368, !888, i64 376, !895, i64 384, !888, i64 392}
!918 = !DILocation(line: 40, column: 19, scope: !520)
!919 = !{!888, !888, i64 0}
!920 = !DILocation(line: 40, column: 31, scope: !520)
!921 = !DILocation(line: 40, column: 44, scope: !520)
!922 = !DILocation(line: 40, column: 5, scope: !520)
!923 = !DILocation(line: 41, column: 1, scope: !520)
!924 = !DILocation(line: 41, column: 1, scope: !925)
!925 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 1)
!926 = !DILocation(line: 216, column: 24, scope: !668)
!927 = !DILocation(line: 216, column: 39, scope: !668)
!928 = !DILocation(line: 199, column: 15, scope: !683, inlinedAt: !929)
!929 = distinct !DILocation(line: 219, column: 20, scope: !668)
!930 = !DILocation(line: 200, column: 20, scope: !683, inlinedAt: !929)
!931 = !DILocation(line: 202, column: 9, scope: !692, inlinedAt: !929)
!932 = !DILocation(line: 202, column: 11, scope: !692, inlinedAt: !929)
!933 = !DILocation(line: 202, column: 17, scope: !692, inlinedAt: !929)
!934 = !DILocation(line: 202, column: 14, scope: !692, inlinedAt: !929)
!935 = !DILocation(line: 202, column: 9, scope: !683, inlinedAt: !929)
!936 = !DILocation(line: 203, column: 33, scope: !691, inlinedAt: !929)
!937 = !{!893, !888, i64 32}
!938 = !DILocation(line: 203, column: 41, scope: !691, inlinedAt: !929)
!939 = !{!940, !888, i64 40}
!940 = !{!"", !884, i64 0, !895, i64 16, !895, i64 20, !895, i64 24, !895, i64 28, !895, i64 32, !888, i64 40, !888, i64 48, !888, i64 56, !888, i64 64, !888, i64 72, !888, i64 80, !888, i64 88, !888, i64 96, !888, i64 104, !895, i64 112, !888, i64 120, !888, i64 128, !888, i64 136}
!941 = !DILocation(line: 206, column: 21, scope: !942, inlinedAt: !929)
!942 = distinct !DILexicalBlock(scope: !691, file: !1, line: 206, column: 13)
!943 = !{!893, !895, i64 120}
!944 = !DILocation(line: 206, column: 29, scope: !942, inlinedAt: !929)
!945 = !DILocation(line: 206, column: 13, scope: !942, inlinedAt: !929)
!946 = !{!886, !886, i64 0}
!947 = !DILocation(line: 206, column: 34, scope: !942, inlinedAt: !929)
!948 = !DILocation(line: 206, column: 13, scope: !691, inlinedAt: !929)
!949 = !DILocation(line: 208, column: 14, scope: !691, inlinedAt: !929)
!950 = !DILocation(line: 209, column: 9, scope: !691, inlinedAt: !929)
!951 = !DILocation(line: 219, column: 15, scope: !668)
!952 = !DILocation(line: 220, column: 9, scope: !668)
!953 = !DILocation(line: 222, column: 9, scope: !678)
!954 = !DILocation(line: 222, column: 9, scope: !668)
!955 = !DILocation(line: 223, column: 14, scope: !677)
!956 = !DILocation(line: 223, column: 25, scope: !677)
!957 = !{!883, !886, i64 24}
!958 = !DILocation(line: 224, column: 15, scope: !677)
!959 = !DILocation(line: 225, column: 25, scope: !677)
!960 = !DILocation(line: 226, column: 9, scope: !961)
!961 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!962 = !DILocation(line: 226, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !676, file: !1, line: 226, column: 9)
!964 = !DILocation(line: 226, column: 9, scope: !676)
!965 = !DILocation(line: 226, column: 9, scope: !966)
!966 = !DILexicalBlockFile(scope: !963, file: !1, discriminator: 3)
!967 = !DILocation(line: 227, column: 5, scope: !677)
!968 = !DILocation(line: 228, column: 9, scope: !668)
!969 = !DILocation(line: 229, column: 23, scope: !970)
!970 = distinct !DILexicalBlock(scope: !668, file: !1, line: 228, column: 9)
!971 = !DILocation(line: 229, column: 9, scope: !970)
!972 = !DILocation(line: 230, column: 14, scope: !668)
!973 = !DILocation(line: 218, column: 15, scope: !668)
!974 = !DILocation(line: 231, column: 9, scope: !682)
!975 = !DILocation(line: 231, column: 9, scope: !668)
!976 = !DILocation(line: 232, column: 9, scope: !977)
!977 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 1)
!978 = !DILocation(line: 232, column: 9, scope: !979)
!979 = distinct !DILexicalBlock(scope: !680, file: !1, line: 232, column: 9)
!980 = !DILocation(line: 232, column: 9, scope: !680)
!981 = !DILocation(line: 232, column: 9, scope: !982)
!982 = !DILexicalBlockFile(scope: !979, file: !1, discriminator: 3)
!983 = !DILocation(line: 233, column: 25, scope: !681)
!984 = !DILocation(line: 233, column: 9, scope: !681)
!985 = !DILocation(line: 235, column: 9, scope: !681)
!986 = !DILocation(line: 237, column: 32, scope: !987)
!987 = distinct !DILexicalBlock(scope: !668, file: !1, line: 237, column: 9)
!988 = !DILocation(line: 237, column: 9, scope: !987)
!989 = !DILocation(line: 238, column: 9, scope: !987)
!990 = !DILocation(line: 238, column: 35, scope: !991)
!991 = !DILexicalBlockFile(scope: !987, file: !1, discriminator: 1)
!992 = !DILocation(line: 238, column: 12, scope: !987)
!993 = !DILocation(line: 237, column: 9, scope: !668)
!994 = !DILocation(line: 239, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !987, file: !1, line: 238, column: 57)
!996 = !DILocation(line: 240, column: 9, scope: !995)
!997 = !DILocation(line: 241, column: 9, scope: !995)
!998 = !DILocation(line: 244, column: 1, scope: !668)
!999 = !DILocation(line: 156, column: 26, scope: !531)
!1000 = !DILocation(line: 156, column: 41, scope: !531)
!1001 = !DILocation(line: 158, column: 12, scope: !531)
!1002 = !DILocation(line: 158, column: 5, scope: !531)
!1003 = !DILocation(line: 65, column: 26, scope: !583)
!1004 = !DILocation(line: 65, column: 41, scope: !583)
!1005 = !DILocation(line: 65, column: 50, scope: !583)
!1006 = !DILocation(line: 67, column: 29, scope: !592)
!1007 = !{}
!1008 = !DILocation(line: 67, column: 29, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1010, file: !1, discriminator: 6)
!1010 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 5)
!1011 = !DILocation(line: 68, column: 29, scope: !583)
!1012 = !DILocation(line: 68, column: 20, scope: !583)
!1013 = !DILocation(line: 71, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !583, file: !1, line: 71, column: 9)
!1015 = !DILocation(line: 71, column: 9, scope: !1014)
!1016 = !DILocation(line: 71, column: 9, scope: !583)
!1017 = !DILocation(line: 72, column: 25, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 71, column: 26)
!1019 = !DILocation(line: 72, column: 9, scope: !1018)
!1020 = !DILocation(line: 74, column: 9, scope: !1018)
!1021 = !DILocation(line: 76, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !583, file: !1, line: 76, column: 9)
!1023 = !DILocation(line: 76, column: 19, scope: !1022)
!1024 = !DILocation(line: 76, column: 25, scope: !1022)
!1025 = !DILocation(line: 94, column: 24, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 90, column: 12)
!1027 = distinct !DILexicalBlock(scope: !583, file: !1, line: 83, column: 9)
!1028 = !DILocation(line: 76, column: 36, scope: !1022)
!1029 = !DILocation(line: 76, column: 9, scope: !583)
!1030 = !DILocation(line: 78, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 78, column: 13)
!1032 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 76, column: 45)
!1033 = !DILocation(line: 78, column: 21, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1031, file: !1, discriminator: 1)
!1035 = !DILocation(line: 78, column: 17, scope: !1031)
!1036 = !DILocation(line: 79, column: 27, scope: !1031)
!1037 = !DILocation(line: 79, column: 13, scope: !1031)
!1038 = !DILocation(line: 83, column: 12, scope: !1027)
!1039 = !DILocation(line: 83, column: 20, scope: !1027)
!1040 = !DILocation(line: 84, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 84, column: 13)
!1042 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 83, column: 27)
!1043 = !DILocation(line: 83, column: 9, scope: !583)
!1044 = !DILocation(line: 84, column: 24, scope: !1041)
!1045 = !DILocation(line: 84, column: 17, scope: !1041)
!1046 = !DILocation(line: 85, column: 29, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 84, column: 36)
!1048 = !DILocation(line: 85, column: 13, scope: !1047)
!1049 = !DILocation(line: 88, column: 13, scope: !1047)
!1050 = !DILocation(line: 92, column: 18, scope: !1026)
!1051 = !DILocation(line: 69, column: 15, scope: !583)
!1052 = !DILocation(line: 93, column: 9, scope: !1026)
!1053 = !DILocation(line: 94, column: 28, scope: !1026)
!1054 = !DILocation(line: 99, column: 5, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !607, file: !1, discriminator: 1)
!1056 = !{!1057, !888, i64 24}
!1057 = !{!"_ts", !888, i64 0, !888, i64 8, !888, i64 16, !888, i64 24, !895, i64 32, !886, i64 36, !886, i64 37, !895, i64 40, !895, i64 44, !888, i64 48, !888, i64 56, !888, i64 64, !888, i64 72, !888, i64 80, !888, i64 88, !888, i64 96, !888, i64 104, !888, i64 112, !888, i64 120, !888, i64 128, !895, i64 136, !888, i64 144, !885, i64 152, !895, i64 160, !888, i64 168, !888, i64 176, !888, i64 184}
!1058 = !DILocation(line: 99, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !607, file: !1, line: 99, column: 5)
!1060 = !DILocation(line: 101, column: 25, scope: !583)
!1061 = !DILocation(line: 99, column: 5, scope: !607)
!1062 = !DILocation(line: 99, column: 5, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1059, file: !1, discriminator: 2)
!1064 = !DILocation(line: 101, column: 8, scope: !583)
!1065 = !DILocation(line: 101, column: 15, scope: !583)
!1066 = !{!893, !888, i64 24}
!1067 = !DILocation(line: 103, column: 21, scope: !583)
!1068 = !DILocation(line: 104, column: 14, scope: !583)
!1069 = !DILocation(line: 105, column: 21, scope: !583)
!1070 = !DILocation(line: 111, column: 5, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 1)
!1072 = !DILocation(line: 111, column: 5, scope: !613)
!1073 = !DILocation(line: 111, column: 5, scope: !609)
!1074 = !DILocation(line: 111, column: 5, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 2)
!1076 = !DILocation(line: 111, column: 5, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 4)
!1078 = !DILocation(line: 111, column: 5, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !611, file: !1, line: 111, column: 5)
!1080 = !DILocation(line: 111, column: 5, scope: !611)
!1081 = !DILocation(line: 111, column: 5, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1079, file: !1, discriminator: 6)
!1083 = !DILocation(line: 115, column: 9, scope: !618)
!1084 = !DILocation(line: 115, column: 16, scope: !618)
!1085 = !DILocation(line: 130, column: 23, scope: !631)
!1086 = !DILocation(line: 115, column: 33, scope: !618)
!1087 = !DILocation(line: 115, column: 9, scope: !583)
!1088 = !DILocation(line: 116, column: 20, scope: !616)
!1089 = !DILocation(line: 118, column: 27, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !616, file: !1, line: 116, column: 32)
!1091 = !DILocation(line: 116, column: 13, scope: !617)
!1092 = !DILocation(line: 118, column: 13, scope: !1090)
!1093 = !DILocation(line: 119, column: 9, scope: !1090)
!1094 = !DILocation(line: 120, column: 27, scope: !615)
!1095 = !DILocation(line: 120, column: 23, scope: !615)
!1096 = !DILocation(line: 122, column: 19, scope: !622)
!1097 = !DILocation(line: 122, column: 17, scope: !615)
!1098 = !DILocation(line: 123, column: 33, scope: !621)
!1099 = !DILocation(line: 123, column: 17, scope: !621)
!1100 = !DILocation(line: 124, column: 17, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 1)
!1102 = !DILocation(line: 124, column: 17, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !620, file: !1, line: 124, column: 17)
!1104 = !DILocation(line: 124, column: 17, scope: !620)
!1105 = !DILocation(line: 124, column: 17, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1103, file: !1, discriminator: 3)
!1107 = !DILocation(line: 127, column: 9, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 1)
!1109 = !DILocation(line: 127, column: 9, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 4)
!1111 = !DILocation(line: 127, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !626, file: !1, line: 127, column: 9)
!1113 = !DILocation(line: 127, column: 9, scope: !626)
!1114 = !DILocation(line: 127, column: 9, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1112, file: !1, discriminator: 6)
!1116 = !DILocation(line: 134, column: 16, scope: !630)
!1117 = !{!893, !888, i64 88}
!1118 = !DILocation(line: 133, column: 19, scope: !630)
!1119 = !DILocation(line: 135, column: 16, scope: !630)
!1120 = !{!893, !888, i64 96}
!1121 = !DILocation(line: 133, column: 23, scope: !630)
!1122 = !DILocation(line: 136, column: 17, scope: !630)
!1123 = !{!893, !888, i64 104}
!1124 = !DILocation(line: 133, column: 27, scope: !630)
!1125 = !DILocation(line: 140, column: 9, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 1)
!1127 = !DILocation(line: 140, column: 9, scope: !638)
!1128 = !DILocation(line: 140, column: 9, scope: !635)
!1129 = !DILocation(line: 138, column: 24, scope: !630)
!1130 = !DILocation(line: 140, column: 9, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 4)
!1132 = !DILocation(line: 140, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !637, file: !1, line: 140, column: 9)
!1134 = !DILocation(line: 140, column: 9, scope: !637)
!1135 = !DILocation(line: 140, column: 9, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1133, file: !1, discriminator: 6)
!1137 = !DILocation(line: 141, column: 9, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 1)
!1139 = !DILocation(line: 141, column: 9, scope: !643)
!1140 = !DILocation(line: 141, column: 9, scope: !640)
!1141 = !DILocation(line: 141, column: 9, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !642, file: !1, discriminator: 4)
!1143 = !DILocation(line: 141, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !642, file: !1, line: 141, column: 9)
!1145 = !DILocation(line: 141, column: 9, scope: !642)
!1146 = !DILocation(line: 141, column: 9, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1144, file: !1, discriminator: 6)
!1148 = !DILocation(line: 142, column: 9, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 1)
!1150 = !DILocation(line: 142, column: 9, scope: !648)
!1151 = !DILocation(line: 142, column: 9, scope: !645)
!1152 = !DILocation(line: 142, column: 9, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 4)
!1154 = !DILocation(line: 142, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !647, file: !1, line: 142, column: 9)
!1156 = !DILocation(line: 142, column: 9, scope: !647)
!1157 = !DILocation(line: 142, column: 9, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1155, file: !1, discriminator: 6)
!1159 = !DILocation(line: 143, column: 14, scope: !630)
!1160 = !DILocation(line: 143, column: 24, scope: !630)
!1161 = !DILocation(line: 143, column: 30, scope: !630)
!1162 = !{!893, !888, i64 112}
!1163 = !DILocation(line: 144, column: 23, scope: !630)
!1164 = !DILocation(line: 145, column: 9, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 1)
!1166 = !DILocation(line: 145, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !650, file: !1, line: 145, column: 9)
!1168 = !DILocation(line: 145, column: 9, scope: !650)
!1169 = !DILocation(line: 145, column: 9, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1167, file: !1, discriminator: 3)
!1171 = !DILocation(line: 149, column: 1, scope: !583)
!1172 = !DILocation(line: 393, column: 43, scope: !537)
!1173 = !DILocation(line: 394, column: 5, scope: !537)
!1174 = !DILocation(line: 395, column: 15, scope: !537)
!1175 = !DILocation(line: 397, column: 32, scope: !549)
!1176 = !DILocation(line: 397, column: 9, scope: !549)
!1177 = !DILocation(line: 397, column: 9, scope: !537)
!1178 = !DILocation(line: 394, column: 15, scope: !537)
!1179 = !DILocation(line: 394, column: 20, scope: !537)
!1180 = !DILocation(line: 394, column: 25, scope: !537)
!1181 = !DILocation(line: 398, column: 9, scope: !548)
!1182 = !DILocation(line: 399, column: 9, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !547, file: !1, discriminator: 1)
!1184 = !DILocation(line: 399, column: 9, scope: !552)
!1185 = !DILocation(line: 399, column: 9, scope: !547)
!1186 = !DILocation(line: 399, column: 9, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 4)
!1188 = !DILocation(line: 399, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !551, file: !1, line: 399, column: 9)
!1190 = !DILocation(line: 399, column: 9, scope: !551)
!1191 = !DILocation(line: 399, column: 9, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1189, file: !1, discriminator: 6)
!1193 = !DILocation(line: 400, column: 9, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !554, file: !1, discriminator: 1)
!1195 = !DILocation(line: 400, column: 9, scope: !557)
!1196 = !DILocation(line: 400, column: 9, scope: !554)
!1197 = !DILocation(line: 400, column: 9, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 4)
!1199 = !DILocation(line: 400, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !556, file: !1, line: 400, column: 9)
!1201 = !DILocation(line: 400, column: 9, scope: !556)
!1202 = !DILocation(line: 400, column: 9, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1200, file: !1, discriminator: 6)
!1204 = !DILocation(line: 404, column: 13, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !559, file: !1, discriminator: 1)
!1206 = !DILocation(line: 401, column: 13, scope: !561)
!1207 = !DILocation(line: 401, column: 13, scope: !548)
!1208 = !DILocation(line: 402, column: 52, scope: !560)
!1209 = !{!1210, !888, i64 64}
!1210 = !{!"", !884, i64 0, !888, i64 16, !888, i64 24, !888, i64 32, !888, i64 40, !888, i64 48, !886, i64 56, !888, i64 64}
!1211 = !DILocation(line: 403, column: 13, scope: !560)
!1212 = !DILocation(line: 404, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !559, file: !1, line: 404, column: 13)
!1214 = !DILocation(line: 404, column: 13, scope: !559)
!1215 = !DILocation(line: 404, column: 13, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1213, file: !1, discriminator: 3)
!1217 = !DILocation(line: 406, column: 16, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !549, file: !1, line: 406, column: 16)
!1219 = !DILocation(line: 406, column: 16, scope: !549)
!1220 = !DILocation(line: 409, column: 15, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !537, file: !1, line: 409, column: 9)
!1222 = !DILocation(line: 409, column: 9, scope: !537)
!1223 = !DILocation(line: 411, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 409, column: 24)
!1225 = !DILocation(line: 412, column: 5, scope: !1224)
!1226 = !DILocation(line: 413, column: 13, scope: !537)
!1227 = !DILocation(line: 414, column: 5, scope: !537)
!1228 = !DILocation(line: 415, column: 1, scope: !537)
!1229 = !DILocation(line: 44, column: 26, scope: !710)
!1230 = !DILocation(line: 46, column: 22, scope: !710)
!1231 = !DILocation(line: 46, column: 15, scope: !710)
!1232 = !DILocation(line: 48, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !717, file: !1, discriminator: 1)
!1234 = !DILocation(line: 48, column: 5, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1236, file: !1, discriminator: 2)
!1236 = distinct !DILexicalBlock(scope: !717, file: !1, line: 48, column: 5)
!1237 = !{!1238, !885, i64 16}
!1238 = !{!"", !888, i64 0, !888, i64 8, !885, i64 16}
!1239 = !DILocation(line: 48, column: 5, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !717, file: !1, discriminator: 4)
!1241 = !{!1238, !888, i64 0}
!1242 = !{!1238, !888, i64 8}
!1243 = !DILocation(line: 50, column: 14, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !710, file: !1, line: 50, column: 9)
!1245 = !{!883, !888, i64 40}
!1246 = !DILocation(line: 50, column: 29, scope: !1244)
!1247 = !DILocation(line: 50, column: 9, scope: !710)
!1248 = !DILocation(line: 51, column: 9, scope: !1244)
!1249 = !DILocation(line: 53, column: 5, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !719, file: !1, line: 53, column: 5)
!1251 = !DILocation(line: 53, column: 5, scope: !719)
!1252 = !DILocation(line: 53, column: 5, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1250, file: !1, discriminator: 2)
!1254 = !DILocation(line: 53, column: 5, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !1, discriminator: 4)
!1256 = distinct !DILexicalBlock(scope: !719, file: !1, line: 53, column: 5)
!1257 = !DILocation(line: 53, column: 5, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !719, file: !1, discriminator: 6)
!1259 = !DILocation(line: 55, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !710, file: !1, line: 55, column: 9)
!1261 = !DILocation(line: 55, column: 9, scope: !710)
!1262 = !DILocation(line: 58, column: 5, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !1, discriminator: 2)
!1264 = distinct !DILexicalBlock(scope: !721, file: !1, line: 58, column: 5)
!1265 = !DILocation(line: 58, column: 5, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !721, file: !1, discriminator: 4)
!1267 = !DILocation(line: 59, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !723, file: !1, discriminator: 1)
!1269 = !DILocation(line: 59, column: 5, scope: !727)
!1270 = !DILocation(line: 59, column: 5, scope: !723)
!1271 = !DILocation(line: 59, column: 5, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 2)
!1273 = !DILocation(line: 59, column: 5, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !725, file: !1, discriminator: 4)
!1275 = !DILocation(line: 59, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !725, file: !1, line: 59, column: 5)
!1277 = !DILocation(line: 59, column: 5, scope: !725)
!1278 = !DILocation(line: 59, column: 5, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1276, file: !1, discriminator: 6)
!1280 = !DILocation(line: 60, column: 5, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!1282 = !{!883, !888, i64 32}
!1283 = !DILocation(line: 60, column: 5, scope: !733)
!1284 = !DILocation(line: 60, column: 5, scope: !729)
!1285 = !DILocation(line: 60, column: 5, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !732, file: !1, discriminator: 2)
!1287 = !DILocation(line: 60, column: 5, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 4)
!1289 = !DILocation(line: 60, column: 5, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !731, file: !1, line: 60, column: 5)
!1291 = !DILocation(line: 60, column: 5, scope: !731)
!1292 = !DILocation(line: 60, column: 5, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1290, file: !1, discriminator: 6)
!1294 = !DILocation(line: 61, column: 21, scope: !710)
!1295 = !DILocation(line: 61, column: 5, scope: !710)
!1296 = !DILocation(line: 62, column: 1, scope: !710)
!1297 = !DILocation(line: 418, column: 23, scope: !734)
!1298 = !DILocation(line: 421, column: 55, scope: !734)
!1299 = !DILocation(line: 421, column: 65, scope: !734)
!1300 = !{!940, !888, i64 104}
!1301 = !DILocation(line: 420, column: 12, scope: !734)
!1302 = !DILocation(line: 420, column: 5, scope: !734)
!1303 = !DILocation(line: 11, column: 27, scope: !737)
!1304 = !DILocation(line: 11, column: 42, scope: !737)
!1305 = !DILocation(line: 11, column: 55, scope: !737)
!1306 = !DILocation(line: 13, column: 5, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!1308 = !DILocation(line: 13, column: 5, scope: !747)
!1309 = !DILocation(line: 13, column: 5, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 2)
!1311 = !DILocation(line: 13, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !745, file: !1, line: 13, column: 5)
!1313 = !DILocation(line: 14, column: 5, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !750, file: !1, discriminator: 1)
!1315 = !DILocation(line: 14, column: 5, scope: !751)
!1316 = !DILocation(line: 14, column: 5, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 2)
!1318 = !DILocation(line: 14, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !749, file: !1, line: 14, column: 5)
!1320 = !DILocation(line: 15, column: 5, scope: !737)
!1321 = !DILocation(line: 16, column: 1, scope: !737)
!1322 = !DILocation(line: 374, column: 27, scope: !752)
!1323 = !DILocation(line: 376, column: 15, scope: !752)
!1324 = !DILocation(line: 378, column: 11, scope: !752)
!1325 = !DILocation(line: 377, column: 15, scope: !752)
!1326 = !DILocation(line: 379, column: 5, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!1328 = !DILocation(line: 380, column: 5, scope: !752)
!1329 = !DILocation(line: 513, column: 26, scope: !562)
!1330 = !DILocation(line: 515, column: 24, scope: !562)
!1331 = !DILocation(line: 516, column: 13, scope: !573)
!1332 = !DILocation(line: 516, column: 9, scope: !562)
!1333 = !DILocation(line: 517, column: 9, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 1)
!1335 = !DILocation(line: 517, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !571, file: !1, line: 517, column: 9)
!1337 = !DILocation(line: 517, column: 9, scope: !571)
!1338 = !DILocation(line: 517, column: 9, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1336, file: !1, discriminator: 3)
!1340 = !DILocation(line: 520, column: 10, scope: !562)
!1341 = !DILocation(line: 520, column: 19, scope: !562)
!1342 = !DILocation(line: 521, column: 8, scope: !562)
!1343 = !DILocation(line: 521, column: 14, scope: !562)
!1344 = !DILocation(line: 522, column: 5, scope: !562)
!1345 = !DILocation(line: 523, column: 36, scope: !562)
!1346 = !DILocation(line: 523, column: 18, scope: !562)
!1347 = !DILocation(line: 524, column: 10, scope: !562)
!1348 = !DILocation(line: 524, column: 21, scope: !562)
!1349 = !DILocation(line: 525, column: 10, scope: !562)
!1350 = !DILocation(line: 525, column: 25, scope: !562)
!1351 = !DILocation(line: 526, column: 5, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !575, file: !1, discriminator: 1)
!1353 = !DILocation(line: 526, column: 5, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !575, file: !1, line: 526, column: 5)
!1355 = !DILocation(line: 526, column: 5, scope: !575)
!1356 = !DILocation(line: 526, column: 5, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 2)
!1358 = !DILocation(line: 526, column: 5, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !1, discriminator: 4)
!1360 = distinct !DILexicalBlock(scope: !575, file: !1, line: 526, column: 5)
!1361 = !DILocation(line: 526, column: 5, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !575, file: !1, discriminator: 6)
!1363 = !DILocation(line: 527, column: 5, scope: !562)
!1364 = !DILocation(line: 528, column: 1, scope: !562)
!1365 = !DILocation(line: 531, column: 36, scope: !576)
!1366 = !DILocation(line: 534, column: 29, scope: !576)
!1367 = !DILocation(line: 534, column: 20, scope: !576)
!1368 = !DILocation(line: 536, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !576, file: !1, line: 536, column: 9)
!1370 = !DILocation(line: 536, column: 19, scope: !1369)
!1371 = !DILocation(line: 536, column: 25, scope: !1369)
!1372 = !DILocation(line: 536, column: 36, scope: !1369)
!1373 = !DILocation(line: 536, column: 9, scope: !576)
!1374 = !DILocation(line: 540, column: 24, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 540, column: 5)
!1376 = distinct !DILexicalBlock(scope: !576, file: !1, line: 540, column: 5)
!1377 = !{!893, !895, i64 128}
!1378 = !DILocation(line: 540, column: 19, scope: !1375)
!1379 = !DILocation(line: 540, column: 5, scope: !1376)
!1380 = !DILocation(line: 541, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 541, column: 13)
!1382 = !DILocation(line: 541, column: 32, scope: !1381)
!1383 = !{!1384, !895, i64 0}
!1384 = !{!"", !895, i64 0, !895, i64 4, !895, i64 8}
!1385 = !DILocation(line: 541, column: 39, scope: !1381)
!1386 = !DILocation(line: 540, column: 35, scope: !1375)
!1387 = !DILocation(line: 533, column: 9, scope: !576)
!1388 = !DILocation(line: 541, column: 13, scope: !1375)
!1389 = !DILocation(line: 546, column: 1, scope: !576)
!1390 = !DILocation(line: 170, column: 26, scope: !694)
!1391 = !DILocation(line: 172, column: 15, scope: !694)
!1392 = !DILocation(line: 175, column: 9, scope: !700)
!1393 = !DILocation(line: 175, column: 9, scope: !694)
!1394 = !DILocation(line: 176, column: 28, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !700, file: !1, line: 175, column: 31)
!1396 = !DILocation(line: 176, column: 18, scope: !1395)
!1397 = !DILocation(line: 177, column: 20, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 177, column: 13)
!1399 = !DILocation(line: 177, column: 13, scope: !1395)
!1400 = !DILocation(line: 180, column: 26, scope: !699)
!1401 = !DILocation(line: 180, column: 19, scope: !699)
!1402 = !DILocation(line: 181, column: 18, scope: !704)
!1403 = !DILocation(line: 181, column: 13, scope: !699)
!1404 = !DILocation(line: 182, column: 41, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 182, column: 17)
!1406 = distinct !DILexicalBlock(scope: !704, file: !1, line: 181, column: 27)
!1407 = !DILocation(line: 182, column: 18, scope: !1405)
!1408 = !DILocation(line: 182, column: 17, scope: !1406)
!1409 = !DILocation(line: 183, column: 17, scope: !1405)
!1410 = !DILocation(line: 184, column: 13, scope: !1406)
!1411 = !DILocation(line: 192, column: 5, scope: !706)
!1412 = !DILocation(line: 186, column: 22, scope: !703)
!1413 = !DILocation(line: 187, column: 13, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !702, file: !1, discriminator: 1)
!1415 = !DILocation(line: 187, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !702, file: !1, line: 187, column: 13)
!1417 = !DILocation(line: 187, column: 13, scope: !702)
!1418 = !DILocation(line: 187, column: 13, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1416, file: !1, discriminator: 3)
!1420 = !DILocation(line: 188, column: 24, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !703, file: !1, line: 188, column: 17)
!1422 = !DILocation(line: 188, column: 17, scope: !703)
!1423 = !DILocation(line: 192, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !708, file: !1, line: 192, column: 5)
!1425 = !DILocation(line: 192, column: 5, scope: !708)
!1426 = !DILocation(line: 192, column: 5, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1424, file: !1, discriminator: 6)
!1428 = !DILocation(line: 194, column: 1, scope: !694)
!1429 = !DILocation(line: 252, column: 24, scope: !762)
!1430 = !DILocation(line: 252, column: 39, scope: !762)
!1431 = !DILocation(line: 254, column: 5, scope: !762)
!1432 = !DILocation(line: 255, column: 5, scope: !762)
!1433 = !DILocation(line: 255, column: 15, scope: !762)
!1434 = !DILocation(line: 256, column: 5, scope: !762)
!1435 = !DILocation(line: 256, column: 15, scope: !762)
!1436 = !DILocation(line: 199, column: 15, scope: !683, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 257, column: 20, scope: !762)
!1438 = !DILocation(line: 200, column: 20, scope: !683, inlinedAt: !1437)
!1439 = !DILocation(line: 202, column: 9, scope: !692, inlinedAt: !1437)
!1440 = !DILocation(line: 202, column: 11, scope: !692, inlinedAt: !1437)
!1441 = !DILocation(line: 202, column: 17, scope: !692, inlinedAt: !1437)
!1442 = !DILocation(line: 202, column: 14, scope: !692, inlinedAt: !1437)
!1443 = !DILocation(line: 202, column: 9, scope: !683, inlinedAt: !1437)
!1444 = !DILocation(line: 203, column: 33, scope: !691, inlinedAt: !1437)
!1445 = !DILocation(line: 203, column: 41, scope: !691, inlinedAt: !1437)
!1446 = !DILocation(line: 206, column: 21, scope: !942, inlinedAt: !1437)
!1447 = !DILocation(line: 206, column: 29, scope: !942, inlinedAt: !1437)
!1448 = !DILocation(line: 206, column: 13, scope: !942, inlinedAt: !1437)
!1449 = !DILocation(line: 206, column: 34, scope: !942, inlinedAt: !1437)
!1450 = !DILocation(line: 206, column: 13, scope: !691, inlinedAt: !1437)
!1451 = !DILocation(line: 208, column: 14, scope: !691, inlinedAt: !1437)
!1452 = !DILocation(line: 209, column: 9, scope: !691, inlinedAt: !1437)
!1453 = !DILocation(line: 257, column: 20, scope: !762)
!1454 = !DILocation(line: 257, column: 15, scope: !762)
!1455 = !DILocation(line: 254, column: 15, scope: !762)
!1456 = !DILocation(line: 260, column: 10, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !762, file: !1, line: 260, column: 9)
!1458 = !DILocation(line: 260, column: 9, scope: !762)
!1459 = !DILocation(line: 263, column: 9, scope: !772)
!1460 = !DILocation(line: 263, column: 9, scope: !762)
!1461 = !DILocation(line: 266, column: 41, scope: !777)
!1462 = !DILocation(line: 266, column: 46, scope: !777)
!1463 = !DILocation(line: 266, column: 13, scope: !777)
!1464 = !DILocation(line: 266, column: 13, scope: !771)
!1465 = !DILocation(line: 267, column: 18, scope: !776)
!1466 = !DILocation(line: 267, column: 29, scope: !776)
!1467 = !DILocation(line: 268, column: 19, scope: !776)
!1468 = !DILocation(line: 265, column: 13, scope: !771)
!1469 = !DILocation(line: 269, column: 29, scope: !776)
!1470 = !DILocation(line: 270, column: 13, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !775, file: !1, discriminator: 1)
!1472 = !DILocation(line: 270, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !775, file: !1, line: 270, column: 13)
!1474 = !DILocation(line: 270, column: 13, scope: !775)
!1475 = !DILocation(line: 270, column: 13, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 3)
!1477 = !DILocation(line: 271, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !776, file: !1, line: 271, column: 17)
!1479 = !DILocation(line: 271, column: 17, scope: !776)
!1480 = !DILocation(line: 272, column: 24, scope: !1478)
!1481 = !DILocation(line: 272, column: 17, scope: !1478)
!1482 = !DILocation(line: 275, column: 13, scope: !780)
!1483 = !DILocation(line: 275, column: 13, scope: !771)
!1484 = !DILocation(line: 276, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !780, file: !1, line: 275, column: 35)
!1486 = !DILocation(line: 276, column: 29, scope: !1485)
!1487 = !DILocation(line: 277, column: 29, scope: !1485)
!1488 = !DILocation(line: 277, column: 19, scope: !1485)
!1489 = !DILocation(line: 264, column: 19, scope: !771)
!1490 = !DILocation(line: 278, column: 29, scope: !1485)
!1491 = !DILocation(line: 279, column: 9, scope: !1485)
!1492 = !DILocation(line: 280, column: 30, scope: !779)
!1493 = !DILocation(line: 280, column: 23, scope: !779)
!1494 = !DILocation(line: 281, column: 22, scope: !786)
!1495 = !DILocation(line: 281, column: 17, scope: !779)
!1496 = !DILocation(line: 282, column: 45, scope: !784)
!1497 = !DILocation(line: 282, column: 22, scope: !784)
!1498 = !DILocation(line: 282, column: 21, scope: !785)
!1499 = !DILocation(line: 283, column: 21, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 1)
!1501 = !DILocation(line: 283, column: 21, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !782, file: !1, line: 283, column: 21)
!1503 = !DILocation(line: 283, column: 21, scope: !782)
!1504 = !DILocation(line: 283, column: 21, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1502, file: !1, discriminator: 3)
!1506 = !DILocation(line: 286, column: 17, scope: !785)
!1507 = !DILocation(line: 287, column: 17, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !788, file: !1, discriminator: 1)
!1509 = !DILocation(line: 287, column: 17, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !788, file: !1, line: 287, column: 17)
!1511 = !DILocation(line: 287, column: 17, scope: !788)
!1512 = !DILocation(line: 287, column: 17, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1510, file: !1, discriminator: 3)
!1514 = !DILocation(line: 290, column: 18, scope: !779)
!1515 = !DILocation(line: 290, column: 29, scope: !779)
!1516 = !DILocation(line: 291, column: 19, scope: !779)
!1517 = !DILocation(line: 292, column: 29, scope: !779)
!1518 = !DILocation(line: 293, column: 13, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 1)
!1520 = !DILocation(line: 293, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !790, file: !1, line: 293, column: 13)
!1522 = !DILocation(line: 293, column: 13, scope: !790)
!1523 = !DILocation(line: 293, column: 13, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 3)
!1525 = !DILocation(line: 295, column: 9, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 1)
!1527 = !DILocation(line: 295, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !792, file: !1, line: 295, column: 9)
!1529 = !DILocation(line: 295, column: 9, scope: !792)
!1530 = !DILocation(line: 295, column: 9, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1528, file: !1, discriminator: 3)
!1532 = !DILocation(line: 296, column: 14, scope: !795)
!1533 = !DILocation(line: 296, column: 13, scope: !771)
!1534 = !DILocation(line: 297, column: 13, scope: !794)
!1535 = !DILocation(line: 299, column: 28, scope: !794)
!1536 = !DILocation(line: 299, column: 38, scope: !794)
!1537 = !DILocation(line: 299, column: 21, scope: !794)
!1538 = !DILocation(line: 299, column: 19, scope: !794)
!1539 = !DILocation(line: 301, column: 13, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !797, file: !1, discriminator: 1)
!1541 = !DILocation(line: 301, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !797, file: !1, line: 301, column: 13)
!1543 = !DILocation(line: 301, column: 13, scope: !797)
!1544 = !DILocation(line: 301, column: 13, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1542, file: !1, discriminator: 3)
!1546 = !DILocation(line: 303, column: 18, scope: !794)
!1547 = !DILocation(line: 303, column: 28, scope: !794)
!1548 = !DILocation(line: 303, column: 35, scope: !794)
!1549 = !DILocation(line: 297, column: 23, scope: !794)
!1550 = !DILocation(line: 304, column: 17, scope: !801)
!1551 = !DILocation(line: 304, column: 54, scope: !801)
!1552 = !DILocation(line: 304, column: 17, scope: !794)
!1553 = !DILocation(line: 305, column: 40, scope: !800)
!1554 = !DILocation(line: 305, column: 23, scope: !800)
!1555 = !DILocation(line: 306, column: 17, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 1)
!1557 = !DILocation(line: 306, column: 17, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !799, file: !1, line: 306, column: 17)
!1559 = !DILocation(line: 306, column: 17, scope: !799)
!1560 = !DILocation(line: 306, column: 17, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1558, file: !1, discriminator: 3)
!1562 = !DILocation(line: 308, column: 23, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !801, file: !1, line: 307, column: 20)
!1564 = !DILocation(line: 310, column: 9, scope: !795)
!1565 = !DILocation(line: 310, column: 9, scope: !794)
!1566 = !DILocation(line: 317, column: 9, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !762, file: !1, line: 317, column: 9)
!1568 = !DILocation(line: 317, column: 12, scope: !1567)
!1569 = !DILocation(line: 317, column: 9, scope: !762)
!1570 = !DILocation(line: 318, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 317, column: 24)
!1572 = !DILocation(line: 319, column: 5, scope: !1571)
!1573 = !DILocation(line: 320, column: 17, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 320, column: 14)
!1575 = !DILocation(line: 320, column: 25, scope: !1574)
!1576 = !DILocation(line: 320, column: 29, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 1)
!1578 = !DILocation(line: 320, column: 14, scope: !1567)
!1579 = !DILocation(line: 321, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 320, column: 52)
!1581 = !DILocation(line: 321, column: 9, scope: !1580)
!1582 = !DILocation(line: 323, column: 9, scope: !1580)
!1583 = !DILocation(line: 328, column: 5, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !805, file: !1, discriminator: 1)
!1585 = !DILocation(line: 333, column: 14, scope: !811)
!1586 = !DILocation(line: 326, column: 5, scope: !762)
!1587 = !DILocation(line: 335, column: 13, scope: !809)
!1588 = !DILocation(line: 327, column: 5, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !803, file: !1, discriminator: 1)
!1590 = !DILocation(line: 327, column: 5, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !803, file: !1, line: 327, column: 5)
!1592 = !DILocation(line: 327, column: 5, scope: !803)
!1593 = !DILocation(line: 327, column: 5, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 2)
!1595 = !DILocation(line: 328, column: 5, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !805, file: !1, line: 328, column: 5)
!1597 = !DILocation(line: 328, column: 5, scope: !805)
!1598 = !DILocation(line: 328, column: 5, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1596, file: !1, discriminator: 2)
!1600 = !DILocation(line: 330, column: 9, scope: !812)
!1601 = !{!917, !885, i64 168}
!1602 = !DILocation(line: 330, column: 9, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!1604 = !DILocation(line: 330, column: 9, scope: !762)
!1605 = !DILocation(line: 331, column: 9, scope: !812)
!1606 = !DILocation(line: 361, column: 29, scope: !762)
!1607 = !DILocation(line: 333, column: 14, scope: !812)
!1608 = !DILocation(line: 335, column: 24, scope: !809)
!1609 = !DILocation(line: 335, column: 17, scope: !809)
!1610 = !DILocation(line: 336, column: 29, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !809, file: !1, line: 335, column: 36)
!1612 = !DILocation(line: 336, column: 13, scope: !1611)
!1613 = !DILocation(line: 338, column: 13, scope: !1611)
!1614 = !DILocation(line: 342, column: 13, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 1)
!1616 = !DILocation(line: 342, column: 13, scope: !807)
!1617 = !DILocation(line: 342, column: 13, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 4)
!1619 = !DILocation(line: 342, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !814, file: !1, line: 342, column: 13)
!1621 = !DILocation(line: 342, column: 13, scope: !814)
!1622 = !DILocation(line: 342, column: 13, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1620, file: !1, discriminator: 6)
!1624 = !DILocation(line: 343, column: 19, scope: !808)
!1625 = !DILocation(line: 347, column: 17, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !808, file: !1, line: 347, column: 17)
!1627 = !DILocation(line: 343, column: 17, scope: !808)
!1628 = !DILocation(line: 344, column: 19, scope: !808)
!1629 = !DILocation(line: 344, column: 17, scope: !808)
!1630 = !DILocation(line: 345, column: 13, scope: !808)
!1631 = !DILocation(line: 347, column: 20, scope: !1626)
!1632 = !DILocation(line: 347, column: 17, scope: !808)
!1633 = !DILocation(line: 349, column: 22, scope: !1626)
!1634 = !DILocation(line: 349, column: 20, scope: !1626)
!1635 = !DILocation(line: 349, column: 17, scope: !1626)
!1636 = !DILocation(line: 354, column: 22, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !811, file: !1, line: 352, column: 10)
!1638 = !DILocation(line: 357, column: 36, scope: !1637)
!1639 = !{!917, !888, i64 24}
!1640 = !DILocation(line: 354, column: 9, scope: !1637)
!1641 = !DILocation(line: 358, column: 13, scope: !1637)
!1642 = !DILocation(line: 361, column: 19, scope: !762)
!1643 = !DILocation(line: 361, column: 24, scope: !762)
!1644 = !DILocation(line: 361, column: 5, scope: !762)
!1645 = !DILocation(line: 362, column: 12, scope: !762)
!1646 = !DILocation(line: 362, column: 5, scope: !762)
!1647 = !DILocation(line: 366, column: 5, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 1)
!1649 = !DILocation(line: 366, column: 5, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !817, file: !1, line: 366, column: 5)
!1651 = !DILocation(line: 366, column: 5, scope: !817)
!1652 = !DILocation(line: 366, column: 5, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1650, file: !1, discriminator: 3)
!1654 = !DILocation(line: 367, column: 5, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !819, file: !1, discriminator: 1)
!1656 = !DILocation(line: 367, column: 5, scope: !822)
!1657 = !DILocation(line: 367, column: 5, scope: !819)
!1658 = !DILocation(line: 367, column: 5, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !821, file: !1, discriminator: 4)
!1660 = !DILocation(line: 367, column: 5, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !821, file: !1, line: 367, column: 5)
!1662 = !DILocation(line: 367, column: 5, scope: !821)
!1663 = !DILocation(line: 367, column: 5, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1661, file: !1, discriminator: 6)
!1665 = !DILocation(line: 368, column: 5, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !824, file: !1, discriminator: 1)
!1667 = !DILocation(line: 368, column: 5, scope: !827)
!1668 = !DILocation(line: 368, column: 5, scope: !824)
!1669 = !DILocation(line: 368, column: 5, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !826, file: !1, discriminator: 4)
!1671 = !DILocation(line: 368, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !826, file: !1, line: 368, column: 5)
!1673 = !DILocation(line: 368, column: 5, scope: !826)
!1674 = !DILocation(line: 368, column: 5, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 6)
!1676 = !DILocation(line: 370, column: 1, scope: !762)
!1677 = !DILocation(line: 427, column: 27, scope: !828)
!1678 = !DILocation(line: 429, column: 44, scope: !828)
!1679 = !DILocation(line: 429, column: 54, scope: !828)
!1680 = !DILocation(line: 429, column: 15, scope: !828)
!1681 = !DILocation(line: 430, column: 5, scope: !828)
!1682 = !DILocation(line: 431, column: 5, scope: !828)
